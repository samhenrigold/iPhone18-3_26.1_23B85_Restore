uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.appStoreIdentifier.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.industryCategory.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.industryCategory.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.industryCode.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

__n128 RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.location.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *(a1 + 32) = *(v1 + 80);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 112);
  result = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = result;
  return result;
}

__n128 RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.location.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 80) = *(a1 + 32);
  *(v1 + 96) = v2;
  *(v1 + 112) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = result;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantAdditionalData.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantAdditionalData.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantCity.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantCity.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantCleanConfidenceLevel.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantCountryCode.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantCountryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantIdentifier.getter()
{
  v1 = *(v0 + 184);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantName.getter()
{
  v1 = *(v0 + 200);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawCanl.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawCanl.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawCity.getter()
{
  v1 = *(v0 + 232);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawCity.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawName.getter()
{
  v1 = *(v0 + 248);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawState.getter()
{
  v1 = *(v0 + 264);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawState.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 264) = a1;
  *(v2 + 272) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantState.getter()
{
  v1 = *(v0 + 280);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantState.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantType.getter()
{
  v1 = *(v0 + 296);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 296) = a1;
  *(v2 + 304) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantZip.getter()
{
  v1 = *(v0 + 312);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantZip.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 312) = a1;
  *(v2 + 320) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.paymentNetwork.getter()
{
  v1 = *(v0 + 328);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.paymentNetwork.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 328) = a1;
  *(v2 + 336) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.terminalIdentifier.getter()
{
  v1 = *(v0 + 344);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.terminalIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.webMerchantIdentifier.getter()
{
  v1 = *(v0 + 360);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.webMerchantIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 360) = a1;
  *(v2 + 368) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.webMerchantName.getter()
{
  v1 = *(v0 + 376);

  return v1;
}

void RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.webMerchantName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 376) = a1;
  *(v2 + 384) = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.init(appStoreIdentifier:industryCategory:industryCode:isCoarseLocation:location:merchantAdditionalData:merchantCity:merchantCleanConfidenceLevel:merchantCountryCode:merchantIdentifier:merchantName:merchantRawCanl:merchantRawCity:merchantRawName:merchantRawState:merchantState:merchantType:merchantZip:paymentNetwork:terminalIdentifier:webMerchantIdentifier:webMerchantName:webUrl:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  v37 = (a9 + 264);
  *(a9 + 112) = 256;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  v32 = *(type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0) + 104);
  v33 = sub_1B77FF4F8();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 41) = a7;
  v34 = *(a8 + 48);
  *(a9 + 80) = *(a8 + 32);
  *(a9 + 96) = v34;
  *(a9 + 112) = *(a8 + 64);
  v35 = *(a8 + 16);
  *(a9 + 48) = *a8;
  *(a9 + 64) = v35;
  *(a9 + 120) = a10;
  *(a9 + 136) = a11;
  *(a9 + 152) = a12;
  *(a9 + 160) = a13 & 1;
  *(a9 + 168) = a14;
  *(a9 + 184) = a15;
  *(a9 + 200) = a16;
  *(a9 + 216) = a17;
  *(a9 + 232) = a18;
  *(a9 + 248) = a19;
  *v37 = a20;
  *(a9 + 280) = a21;
  *(a9 + 296) = a22;
  *(a9 + 312) = a23;
  *(a9 + 328) = a24;
  *(a9 + 344) = a25;
  *(a9 + 360) = a26;
  *(a9 + 376) = a27;
  *(a9 + 384) = a28;
  return sub_1B7213740(a29, a9 + v32, &unk_1EB994C70, &qword_1B7809800);
}

unint64_t sub_1B757A9A8(char a1)
{
  result = 0x7972747375646E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 16:
    case 17:
      result = 0x746E61686372656DLL;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x4E746E656D796170;
      break;
    case 20:
      result = 0xD000000000000015;
      break;
    case 21:
      result = 0x686372654D626577;
      break;
    case 22:
      result = 0x6C7255626577;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1B757AC00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B758B1F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B757AC34(uint64_t a1)
{
  v2 = sub_1B7586670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B757AC70(uint64_t a1)
{
  v2 = sub_1B7586670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997830, &qword_1B783D7F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7586670();
  sub_1B78023F8();
  LOBYTE(v13) = 0;
  sub_1B7801F28();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1B7801EF8();
    LOBYTE(v13) = 2;
    sub_1B7801F28();
    v18 = 3;
    sub_1B7801F08();
    v9 = *(v3 + 96);
    v15 = *(v3 + 80);
    v16 = v9;
    v17 = *(v3 + 112);
    v10 = *(v3 + 64);
    v13 = *(v3 + 48);
    v14 = v10;
    v12[15] = 4;
    sub_1B75866C4();
    sub_1B7801F38();
    LOBYTE(v13) = 5;
    sub_1B7801EF8();
    LOBYTE(v13) = 6;
    sub_1B7801EF8();
    LOBYTE(v13) = 7;
    sub_1B7801F28();
    LOBYTE(v13) = 8;
    sub_1B7801EF8();
    LOBYTE(v13) = 9;
    sub_1B7801EF8();
    LOBYTE(v13) = 10;
    sub_1B7801EF8();
    LOBYTE(v13) = 11;
    sub_1B7801EF8();
    LOBYTE(v13) = 12;
    sub_1B7801EF8();
    LOBYTE(v13) = 13;
    sub_1B7801EF8();
    LOBYTE(v13) = 14;
    sub_1B7801EF8();
    LOBYTE(v13) = 15;
    sub_1B7801EF8();
    LOBYTE(v13) = 16;
    sub_1B7801EF8();
    LOBYTE(v13) = 17;
    sub_1B7801EF8();
    LOBYTE(v13) = 18;
    sub_1B7801EF8();
    LOBYTE(v13) = 19;
    sub_1B7801EF8();
    LOBYTE(v13) = 20;
    sub_1B7801EF8();
    LOBYTE(v13) = 21;
    sub_1B7801EF8();
    type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
    LOBYTE(v13) = 22;
    sub_1B77FF4F8();
    sub_1B71A6A8C(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.hash(into:)(uint64_t a1)
{
  v2 = sub_1B77FF4F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - v7;
  if (*(v1 + 8) == 1)
  {
    sub_1B7802318();
    if (v1[3])
    {
LABEL_3:
      sub_1B7802318();
      sub_1B7800798();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *v1;
    sub_1B7802318();
    MEMORY[0x1B8CA6620](v9);
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  sub_1B7802318();
LABEL_6:
  if (*(v1 + 40) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    v10 = v1[4];
    sub_1B7802318();
    MEMORY[0x1B8CA6620](v10);
  }

  if (*(v1 + 41) != 2)
  {
    sub_1B7802318();
  }

  sub_1B7802318();
  v11 = *(v1 + 6);
  v16[2] = *(v1 + 5);
  v16[3] = v11;
  v17 = *(v1 + 56);
  v12 = *(v1 + 4);
  v16[0] = *(v1 + 3);
  v16[1] = v12;
  sub_1B757D0EC();
  if (v1[16])
  {
    sub_1B7802318();
    sub_1B7800798();
    if (v1[18])
    {
LABEL_13:
      sub_1B7802318();
      sub_1B7800798();
      goto LABEL_16;
    }
  }

  else
  {
    sub_1B7802318();
    if (v1[18])
    {
      goto LABEL_13;
    }
  }

  sub_1B7802318();
LABEL_16:
  if (*(v1 + 160) == 1)
  {
    sub_1B7802318();
    if (v1[22])
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = v1[19];
    sub_1B7802318();
    MEMORY[0x1B8CA6620](v13);
    if (v1[22])
    {
LABEL_18:
      sub_1B7802318();
      sub_1B7800798();
      if (v1[24])
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  sub_1B7802318();
  if (v1[24])
  {
LABEL_19:
    sub_1B7802318();
    sub_1B7800798();
    if (v1[26])
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_1B7802318();
  if (v1[26])
  {
LABEL_20:
    sub_1B7802318();
    sub_1B7800798();
    if (v1[28])
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  sub_1B7802318();
  if (v1[28])
  {
LABEL_21:
    sub_1B7802318();
    sub_1B7800798();
    if (v1[30])
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  sub_1B7802318();
  if (v1[30])
  {
LABEL_22:
    sub_1B7802318();
    sub_1B7800798();
    if (v1[32])
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  sub_1B7802318();
  if (v1[32])
  {
LABEL_23:
    sub_1B7802318();
    sub_1B7800798();
    if (v1[34])
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

LABEL_38:
  sub_1B7802318();
  if (v1[34])
  {
LABEL_24:
    sub_1B7802318();
    sub_1B7800798();
    if (v1[36])
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

LABEL_39:
  sub_1B7802318();
  if (v1[36])
  {
LABEL_25:
    sub_1B7802318();
    sub_1B7800798();
    if (v1[38])
    {
      goto LABEL_26;
    }

    goto LABEL_41;
  }

LABEL_40:
  sub_1B7802318();
  if (v1[38])
  {
LABEL_26:
    sub_1B7802318();
    sub_1B7800798();
    if (v1[40])
    {
      goto LABEL_27;
    }

    goto LABEL_42;
  }

LABEL_41:
  sub_1B7802318();
  if (v1[40])
  {
LABEL_27:
    sub_1B7802318();
    sub_1B7800798();
    if (v1[42])
    {
      goto LABEL_28;
    }

    goto LABEL_43;
  }

LABEL_42:
  sub_1B7802318();
  if (v1[42])
  {
LABEL_28:
    sub_1B7802318();
    sub_1B7800798();
    if (v1[44])
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

LABEL_43:
  sub_1B7802318();
  if (v1[44])
  {
LABEL_29:
    sub_1B7802318();
    sub_1B7800798();
    if (v1[46])
    {
      goto LABEL_30;
    }

LABEL_45:
    sub_1B7802318();
    if (v1[48])
    {
      goto LABEL_31;
    }

    goto LABEL_46;
  }

LABEL_44:
  sub_1B7802318();
  if (!v1[46])
  {
    goto LABEL_45;
  }

LABEL_30:
  sub_1B7802318();
  sub_1B7800798();
  if (v1[48])
  {
LABEL_31:
    sub_1B7802318();
    sub_1B7800798();
    goto LABEL_47;
  }

LABEL_46:
  sub_1B7802318();
LABEL_47:
  v14 = type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
  sub_1B7205588(v1 + *(v14 + 104), v8, &unk_1EB994C70, &qword_1B7809800);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1B7802318();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1B7802318();
  sub_1B71A6A8C(&qword_1EB98FF98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1B7800768();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B757B8BC(uint64_t (*a1)(void *))
{
  sub_1B78022F8();
  a1(v3);
  return sub_1B7802368();
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997848, &qword_1B783D7F8);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v42 - v6;
  v8 = type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 0;
  v11[8] = 1;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 2) = 0;
  *(v11 + 20) = 513;
  *(v11 + 3) = 0u;
  v56 = 1;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 6) = 0u;
  *(v11 + 56) = 256;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 19) = 0;
  v11[160] = 1;
  *(v11 + 248) = 0u;
  *(v11 + 232) = 0u;
  *(v11 + 216) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 184) = 0u;
  *(v11 + 168) = 0u;
  *(v11 + 360) = 0u;
  *(v11 + 376) = 0u;
  *(v11 + 328) = 0u;
  *(v11 + 344) = 0u;
  *(v11 + 296) = 0u;
  *(v11 + 312) = 0u;
  *(v11 + 264) = 0u;
  *(v11 + 280) = 0u;
  v12 = *(v9 + 112);
  v13 = sub_1B77FF4F8();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B7586670();
  v45 = v7;
  v15 = v47;
  sub_1B78023C8();
  if (!v15)
  {
    v47 = v5;
    v16 = v44;
    LOBYTE(v49) = 0;
    *v11 = sub_1B7801DA8();
    v11[8] = v17 & 1;
    LOBYTE(v49) = 1;
    *(v11 + 2) = sub_1B7801D78();
    *(v11 + 3) = v18;
    LOBYTE(v49) = 2;
    *(v11 + 4) = sub_1B7801DA8();
    v11[40] = v20 & 1;
    LOBYTE(v49) = 3;
    v11[41] = sub_1B7801D88();
    v55 = 4;
    sub_1B7586718();
    sub_1B7801DB8();
    v21 = v52;
    *(v11 + 5) = v51;
    *(v11 + 6) = v21;
    *(v11 + 56) = v53;
    v22 = v50;
    *(v11 + 3) = v49;
    *(v11 + 4) = v22;
    v54 = 5;
    *(v11 + 15) = sub_1B7801D78();
    *(v11 + 16) = v23;
    v54 = 6;
    *(v11 + 17) = sub_1B7801D78();
    *(v11 + 18) = v24;
    v54 = 7;
    *(v11 + 19) = sub_1B7801DA8();
    v11[160] = v25 & 1;
    v54 = 8;
    *(v11 + 21) = sub_1B7801D78();
    *(v11 + 22) = v26;
    v54 = 9;
    *(v11 + 23) = sub_1B7801D78();
    *(v11 + 24) = v27;
    v54 = 10;
    *(v11 + 25) = sub_1B7801D78();
    *(v11 + 26) = v28;
    v54 = 11;
    *(v11 + 27) = sub_1B7801D78();
    *(v11 + 28) = v29;
    v54 = 12;
    *(v11 + 29) = sub_1B7801D78();
    *(v11 + 30) = v30;
    v54 = 13;
    *(v11 + 31) = sub_1B7801D78();
    *(v11 + 32) = v31;
    v54 = 14;
    *(v11 + 33) = sub_1B7801D78();
    *(v11 + 34) = v32;
    v54 = 15;
    *(v11 + 35) = sub_1B7801D78();
    *(v11 + 36) = v33;
    v54 = 16;
    *(v11 + 37) = sub_1B7801D78();
    *(v11 + 38) = v34;
    v54 = 17;
    *(v11 + 39) = sub_1B7801D78();
    *(v11 + 40) = v35;
    v54 = 18;
    *(v11 + 41) = sub_1B7801D78();
    *(v11 + 42) = v36;
    v54 = 19;
    *(v11 + 43) = sub_1B7801D78();
    *(v11 + 44) = v37;
    v54 = 20;
    *(v11 + 45) = sub_1B7801D78();
    *(v11 + 46) = v38;
    v54 = 21;
    *(v11 + 47) = sub_1B7801D78();
    *(v11 + 48) = v39;
    v54 = 22;
    sub_1B71A6A8C(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v40 = v46;
    v41 = v45;
    sub_1B7801DB8();
    (*(v16 + 8))(v41, v40);
    sub_1B7213740(v47, &v11[v12], &unk_1EB994C70, &qword_1B7809800);
    sub_1B75655B0(v11, v43, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  }

  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_1B757E3BC(v11, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
}

uint64_t sub_1B757C030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1B78022F8();
  a3(v5);
  return sub_1B7802368();
}

uint64_t sub_1B757C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1B78022F8();
  a4(v6);
  return sub_1B7802368();
}

uint64_t RawBankConnectData.DeviceLocation.altitude.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 RawBankConnectData.DeviceLocation.geographicCoordinates.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 RawBankConnectData.DeviceLocation.geographicCoordinates.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

uint64_t RawBankConnectData.DeviceLocation.horizontalAccuracy.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t RawBankConnectData.DeviceLocation.verticalAccuracy.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

__n128 RawBankConnectData.DeviceLocation.init(altitude:geographicCoordinates:horizontalAccuracy:verticalAccuracy:)@<Q0>(unint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, char a7@<W6>, __n128 *a8@<X8>)
{
  v9 = a3[1].n128_u8[0];
  a8->n128_u64[0] = a1;
  a8->n128_u8[8] = a2 & 1;
  result = *a3;
  a8[1] = *a3;
  a8[2].n128_u8[0] = v9;
  a8[2].n128_u64[1] = a4;
  a8[3].n128_u8[0] = a5 & 1;
  a8[3].n128_u64[1] = a6;
  a8[4].n128_u8[0] = a7 & 1;
  return result;
}

unint64_t sub_1B757C228()
{
  v1 = 0x6564757469746C61;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_1B757C2B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B758B9A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B757C2DC(uint64_t a1)
{
  v2 = sub_1B758676C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B757C318(uint64_t a1)
{
  v2 = sub_1B758676C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.DeviceLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997858, &qword_1B783D800);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  v20 = *(v1 + 32);
  v13 = *(v1 + 40);
  v12 = *(v1 + 48);
  v11 = *(v1 + 56);
  v10[1] = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758676C();
  sub_1B78023F8();
  LOBYTE(v17) = 0;
  v8 = v16;
  sub_1B7801F18();
  if (!v8)
  {
    v17 = v15;
    v18 = v14;
    v19 = v20;
    v21 = 1;
    sub_1B7584410();
    sub_1B7801F38();
    LOBYTE(v17) = 2;
    sub_1B7801F18();
    LOBYTE(v17) = 3;
    sub_1B7801F18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.DeviceLocation.hash(into:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0 + 32);
  v4 = v0[5];
  v5 = *(v0 + 48);
  v6 = v0[7];
  v7 = *(v0 + 64);
  if (*(v0 + 8) == 1)
  {
    sub_1B7802318();
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    sub_1B7802318();
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  v13 = *v0;
  sub_1B7802318();
  if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1B8CA6660](v14);
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  sub_1B7802318();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1B8CA6660](v8);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1B8CA6660](v9);
  if (!v5)
  {
LABEL_10:
    sub_1B7802318();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1B8CA6660](v10);
    if (!v7)
    {
      goto LABEL_14;
    }

    return sub_1B7802318();
  }

LABEL_23:
  sub_1B7802318();
  if (v7)
  {
    return sub_1B7802318();
  }

LABEL_14:
  sub_1B7802318();
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x1B8CA6660](v11);
}

uint64_t RawBankConnectData.DeviceLocation.hashValue.getter()
{
  sub_1B78022F8();
  RawBankConnectData.DeviceLocation.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.DeviceLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997868, &qword_1B783D808);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758676C();
  sub_1B78023C8();
  if (!v2)
  {
    LOBYTE(v25) = 0;
    v24 = sub_1B7801D98();
    v31 = v9 & 1;
    v32 = 1;
    sub_1B75844B8();
    sub_1B7801DB8();
    v11 = v25;
    v10 = v26;
    v30 = v27;
    LOBYTE(v25) = 2;
    v12 = sub_1B7801D98();
    v21 = v11;
    v22 = v10;
    v23 = v12;
    v29 = v13 & 1;
    LOBYTE(v25) = 3;
    v15 = sub_1B7801D98();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v28 = v17 & 1;
    v18 = v31;
    v19 = v30;
    v20 = v29;
    *a2 = v24;
    *(a2 + 8) = v18;
    *(a2 + 16) = v21;
    *(a2 + 24) = v22;
    *(a2 + 32) = v19;
    *(a2 + 40) = v23;
    *(a2 + 48) = v20;
    *(a2 + 56) = v15;
    *(a2 + 64) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B757C968()
{
  sub_1B78022F8();
  RawBankConnectData.DeviceLocation.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B757C9AC(uint64_t a1)
{
  sub_1B78022F8();
  RawBankConnectData.DeviceLocation.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B757CA7C()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

void sub_1B757CABC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

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
}

uint64_t sub_1B757CBA0(uint64_t a1)
{
  v2 = sub_1B75867C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B757CBDC(uint64_t a1)
{
  v2 = sub_1B75867C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.GeographicCoordinates.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997870, &qword_1B783D810);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75867C0();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801F98();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B7801F98();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.GeographicCoordinates.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1B8CA6660](*&v3);
}

uint64_t RawBankConnectData.GeographicCoordinates.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B78022F8();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1B8CA6660](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1B8CA6660](*&v4);
  return sub_1B7802368();
}

uint64_t RawBankConnectData.GeographicCoordinates.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997880, &qword_1B783D818);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75867C0();
  sub_1B78023C8();
  if (!v2)
  {
    v16 = 0;
    sub_1B7801E18();
    v10 = v9;
    v15 = 1;
    sub_1B7801E18();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B757D078(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B78022F8();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1B8CA6660](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1B8CA6660](*&v5);
  return sub_1B7802368();
}

uint64_t sub_1B757D0EC()
{
  if (*(v0 + 65))
  {
    return sub_1B7802318();
  }

  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v5 = v0[7];
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 8);
  sub_1B7802318();
  if (v9)
  {
    sub_1B7802318();
    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_23:
    sub_1B7802318();
    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  sub_1B7802318();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v1;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x1B8CA6660](v15);
  if (v8)
  {
    goto LABEL_23;
  }

LABEL_4:
  sub_1B7802318();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1B8CA6660](v10);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1B8CA6660](v11);
  if ((v7 & 1) == 0)
  {
LABEL_11:
    sub_1B7802318();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v4;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1B8CA6660](v12);
    if ((v6 & 1) == 0)
    {
      goto LABEL_15;
    }

    return sub_1B7802318();
  }

LABEL_24:
  sub_1B7802318();
  if (v6)
  {
    return sub_1B7802318();
  }

LABEL_15:
  sub_1B7802318();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  return MEMORY[0x1B8CA6660](v13);
}

uint64_t _s10FinanceKit18RawBankConnectDataO14DeviceLocationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 32) & 1) != 0 || v3 != *(a2 + 16) || v2 != *(a2 + 24))
    {
      return result;
    }
  }

  if (v5)
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 40))
    {
      v10 = *(a2 + 48);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (v7)
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 56))
    {
      v11 = *(a2 + 64);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31ClassificationBAAIdentificationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v13 = a1[6];
  v14 = a1[5];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((sub_1B731D168(*a1, *a2) & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1B78020F8() & 1) == 0 || (v3 != v8 || v5 != v10) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v14 == v9 && v13 == v11)
  {
    return 1;
  }

  return sub_1B78020F8();
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV06WalletG8CategoryV2eeoiySbAG_AGtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 1397768525;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v4)
  {
    v6 = 0x80000001B7874540;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (*a2)
  {
    v7 = 1397768525;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0x80000001B7874540;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_1B78020F8();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = RawBankConnectData.TransactionClassificationResult.WalletCategory.rawValue.getter(v2);
  v14 = v13;
  if (v12 == RawBankConnectData.TransactionClassificationResult.WalletCategory.rawValue.getter(v3) && v14 == v15)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV13FailedOutcomeV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E98, &qword_1B7841B30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(0) + 20);
  v15 = *(v11 + 48);
  sub_1B75655B0(a1 + v14, v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  sub_1B75655B0(a2 + v14, &v13[v15], type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958, &qword_1B7824460);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v13, 1, v16) == 1)
  {
    if (v17(&v13[v15], 1, v16) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  sub_1B75655B0(v13, v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  if (v17(&v13[v15], 1, v16) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1B7205418(v13, &qword_1EB997E98, &qword_1B7841B30);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  v19 = sub_1B77FF918();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  if ((v19 & 1) == 0)
  {
    sub_1B757E3BC(v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    return 0;
  }

LABEL_10:
  sub_1B757E3BC(v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  return 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17MapsSystemDetailsV15StyleAttributesV2eeoiySbAI_AItFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if (*(result + 16))
    {
      if ((*(a2 + 16) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(result + 8) == *(a2 + 8))
      {
        v9 = *(a2 + 16);
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  v6 = v2 + 2;
  v7 = v3 + 2;
  while (v4)
  {
    v8 = vmovn_s64(vceqq_s64(*v6, *v7));
    if ((v8.i32[0] & v8.i32[1] & 1) == 0)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17MapsSystemDetailsV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a1 + 3);
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v8)
    {
      v18 = *(a1 + 3);
      v14 = sub_1B78020F8();
      v6 = v18;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v9)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v6)
  {
    v21 = v6;
    v22 = v7;
    if (v11)
    {
      v19[0] = v11;
      v19[1] = v12;
      v20 = v13 & 1;
      v16 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17MapsSystemDetailsV15StyleAttributesV2eeoiySbAI_AItFZ_0(&v21, v19);
      swift_bridgeObjectRetain_n();

      return (v16 & 1) != 0;
    }

    goto LABEL_20;
  }

  if (v11)
  {
LABEL_20:

    return 0;
  }

  return 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17RetryInstructionsO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E98, &qword_1B7841B30);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1B75655B0(a1, &v21 - v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  sub_1B75655B0(a2, &v14[v15], type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958, &qword_1B7824460);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v14, 1, v16) != 1)
  {
    sub_1B75655B0(v14, v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    if (v17(&v14[v15], 1, v16) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_1B77FF918();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B757E3BC(v14, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v15], 1, v16) != 1)
  {
LABEL_6:
    sub_1B7205418(v14, &qword_1EB997E98, &qword_1B7841B30);
    v18 = 0;
    return v18 & 1;
  }

  sub_1B757E3BC(v14, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v18 = 1;
  return v18 & 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV19EntityPostalAddressV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v103 = a1[12];
  v107 = a1[13];
  v14 = a1[14];
  v106 = a1[15];
  v15 = a2[1];
  v16 = a2[2];
  v18 = a2[3];
  v17 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v24 = a2[9];
  v23 = a2[10];
  v25 = a2[11];
  v104 = a2[12];
  v26 = a2[13];
  v102 = a2[14];
  v105 = a2[15];
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v15)
    {
      v95 = a2[7];
      v98 = a2[8];
      v79 = a1[11];
      v80 = a2[13];
      v77 = a2[2];
      v78 = a1[2];
      v27 = a1[14];
      v84 = a2[5];
      v86 = a1[4];
      v28 = a1[10];
      v90 = a1[6];
      v92 = a2[6];
      v29 = a2[11];
      v30 = a2[10];
      v88 = a1[5];
      v31 = a1[8];
      v32 = a1[9];
      v82 = a2[4];
      v33 = a2[9];
      v34 = a1[7];
      v35 = sub_1B78020F8();
      v22 = v95;
      v21 = v98;
      v9 = v34;
      v24 = v33;
      v12 = v32;
      v5 = v86;
      v10 = v31;
      v8 = v88;
      v7 = v90;
      v23 = v30;
      v4 = v78;
      v13 = v79;
      v25 = v29;
      v19 = v92;
      v11 = v28;
      v17 = v82;
      v20 = v84;
      v14 = v27;
      v16 = v77;
      v26 = v80;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v6)
  {
    if (!v18)
    {
      return 0;
    }

    if (v4 != v16 || v6 != v18)
    {
      v96 = v22;
      v99 = v21;
      v36 = v14;
      v83 = v17;
      v85 = v20;
      v37 = v11;
      v38 = v13;
      v39 = v25;
      v40 = v23;
      v87 = v5;
      v89 = v8;
      v41 = v10;
      v42 = v12;
      v43 = v24;
      v91 = v7;
      v93 = v19;
      v44 = v9;
      v45 = sub_1B78020F8();
      v9 = v44;
      v19 = v93;
      v22 = v96;
      v21 = v99;
      v24 = v43;
      v12 = v42;
      v20 = v85;
      v5 = v87;
      v10 = v41;
      v8 = v89;
      v7 = v91;
      v23 = v40;
      v25 = v39;
      v13 = v38;
      v11 = v37;
      v17 = v83;
      v14 = v36;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }

    if (v5 != v17 || v8 != v20)
    {
      v97 = v22;
      v100 = v21;
      v81 = v26;
      v94 = v19;
      v46 = v14;
      v47 = v11;
      v48 = v13;
      v49 = v25;
      v50 = v23;
      v51 = v10;
      v52 = v12;
      v53 = v24;
      v54 = v7;
      v55 = v9;
      v56 = sub_1B78020F8();
      v22 = v97;
      v21 = v100;
      v9 = v55;
      v7 = v54;
      v24 = v53;
      v12 = v52;
      v10 = v51;
      v23 = v50;
      v25 = v49;
      v13 = v48;
      v11 = v47;
      v14 = v46;
      v19 = v94;
      v26 = v81;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v7 != v19 || v9 != v22)
    {
      v101 = v21;
      v57 = v14;
      v58 = v11;
      v59 = v13;
      v60 = v25;
      v61 = v23;
      v62 = v10;
      v63 = v12;
      v64 = v24;
      v65 = sub_1B78020F8();
      v21 = v101;
      v24 = v64;
      v12 = v63;
      v10 = v62;
      v23 = v61;
      v25 = v60;
      v13 = v59;
      v11 = v58;
      v14 = v57;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v12)
  {
    if (!v24)
    {
      return 0;
    }

    if (v10 != v21 || v12 != v24)
    {
      v66 = v14;
      v67 = v11;
      v68 = v13;
      v69 = v25;
      v70 = v23;
      v71 = sub_1B78020F8();
      v23 = v70;
      v25 = v69;
      v13 = v68;
      v11 = v67;
      v14 = v66;
      if ((v71 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v13)
  {
    if (!v25)
    {
      return 0;
    }

    if (v11 != v23 || v13 != v25)
    {
      v72 = v14;
      v73 = sub_1B78020F8();
      v14 = v72;
      if ((v73 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v107)
  {
    if (!v26)
    {
      return 0;
    }

    if (v103 != v104 || v107 != v26)
    {
      v74 = v14;
      v75 = sub_1B78020F8();
      v14 = v74;
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v106)
  {
    if (v105 && (v14 == v102 && v106 == v105 || (sub_1B78020F8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v105)
  {
    return 1;
  }

  return 0;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV20VendorCategorisationV2eeoiySbAG_AGtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 1397768525;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v4)
  {
    v6 = 0x80000001B7874540;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (*a2)
  {
    v7 = 1397768525;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0x80000001B7874540;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_1B78020F8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1B72C18A8(v2, v3);
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      if (*v6 == *v8 && v7 == v9)
      {
        goto LABEL_9;
      }

      v11 = v4;
      v12 = sub_1B78020F8();
      v4 = v11;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_9:
  v13 = *(v4 + 24);

  return _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV7OutcomeO2eeoiySbAG_AGtFZ_0(a1 + v13, a2 + v13);
}

unint64_t sub_1B757E368()
{
  result = qword_1EB997310;
  if (!qword_1EB997310)
  {
    result = swift_getWitnessTable(asc_1B7841A90, &_s31TransactionClassificationResultV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997310);
  }

  return result;
}

uint64_t sub_1B757E3BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B757E47C()
{
  result = qword_1EB997330;
  if (!qword_1EB997330)
  {
    result = swift_getWitnessTable("!ue7hW\a", &_s31TransactionClassificationResultV7OutcomeO13DiscriminatorVN, v0, v1);
    atomic_store(result, &qword_1EB997330);
  }

  return result;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV8MerchantV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF4F8();
  v131 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v127 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v128 = &v124 - v7;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  MEMORY[0x1EEE9AC00](v129);
  v130 = &v124 - v8;
  v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v135 = *(v9 - 8);
  v136 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v132 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498, &qword_1B78587F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v133 = &v124 - v12;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EA8, &qword_1B7841B40);
  MEMORY[0x1EEE9AC00](v134);
  v137 = &v124 - v13;
  v14 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490, &qword_1B783D680);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v124 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EB0, &qword_1B7841B48);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v124 - v22;
  v24 = *a1;
  v25 = a1[1];
  v138 = a1;
  v139 = a2;
  if ((v24 != *a2 || v25 != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_27;
  }

  v26 = v138[3];
  v27 = v139[3];
  if (v26)
  {
    if (!v27 || (v138[2] != v139[2] || v26 != v27) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v27)
  {
LABEL_27:
    v36 = 0;
    return v36 & 1;
  }

  v28 = v138[5];
  v29 = v139[5];
  if (!v28)
  {
    if (!v29)
    {

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!v29)
  {
LABEL_18:

    goto LABEL_27;
  }

  if ((v138[4] != v139[4] || v28 != v29) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  v125 = v4;
  v126 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v30 = v126[7];
  v31 = *(v21 + 48);
  sub_1B7205588(v138 + v30, v23, &qword_1EB997490, &qword_1B783D680);
  sub_1B7205588(v139 + v30, &v23[v31], &qword_1EB997490, &qword_1B783D680);
  v32 = *(v15 + 48);
  if (v32(v23, 1, v14) == 1)
  {
    if (v32(&v23[v31], 1, v14) == 1)
    {
      sub_1B7205418(v23, &qword_1EB997490, &qword_1B783D680);
      goto LABEL_30;
    }

LABEL_25:
    v33 = &qword_1EB997EB0;
    v34 = &qword_1B7841B48;
    v35 = v23;
    goto LABEL_26;
  }

  sub_1B7205588(v23, v20, &qword_1EB997490, &qword_1B783D680);
  if (v32(&v23[v31], 1, v14) == 1)
  {
    sub_1B757E3BC(v20, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
    goto LABEL_25;
  }

  sub_1B7565394(&v23[v31], v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  v38 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV20EntityContactDetailsV2eeoiySbAG_AGtFZ_0(v20, v17);
  sub_1B757E3BC(v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  sub_1B757E3BC(v20, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  sub_1B7205418(v23, &qword_1EB997490, &qword_1B783D680);
  if ((v38 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  v39 = v126[8];
  v40 = (v138 + v39);
  v41 = *(v138 + v39 + 16);
  v42 = (v139 + v39);
  if (v41)
  {
    if (!*(v42 + 16))
    {
      goto LABEL_27;
    }

LABEL_36:
    v43 = v126[9];
    v44 = *(v134 + 48);
    v45 = v137;
    sub_1B7205588(v138 + v43, v137, &qword_1EB997498, &qword_1B78587F0);
    v46 = v139 + v43;
    v47 = v45;
    sub_1B7205588(v46, v45 + v44, &qword_1EB997498, &qword_1B78587F0);
    v48 = v136;
    v49 = *(v135 + 48);
    if (v49(v45, 1, v136) == 1)
    {
      if (v49(v45 + v44, 1, v48) == 1)
      {
        sub_1B7205418(v45, &qword_1EB997498, &qword_1B78587F0);
        goto LABEL_43;
      }
    }

    else
    {
      v50 = v133;
      sub_1B7205588(v47, v133, &qword_1EB997498, &qword_1B78587F0);
      if (v49(v47 + v44, 1, v48) != 1)
      {
        v51 = v132;
        sub_1B7565394(v47 + v44, v132, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
        v52 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV13EntityImageryV2eeoiySbAG_AGtFZ_0(v50, v51);
        sub_1B757E3BC(v51, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
        sub_1B757E3BC(v50, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
        sub_1B7205418(v47, &qword_1EB997498, &qword_1B78587F0);
        if (!v52)
        {
          goto LABEL_27;
        }

LABEL_43:
        v53 = v126[10];
        v55 = *(v138 + v53);
        v54 = *(v138 + v53 + 8);
        v57 = *(v138 + v53 + 16);
        v56 = *(v138 + v53 + 24);
        v58 = *(v138 + v53 + 32);
        v59 = *(v138 + v53 + 40);
        v60 = v139 + v53;
        v61 = *v60;
        v62 = *(v60 + 1);
        v63 = *(v60 + 2);
        v64 = *(v60 + 3);
        v65 = *(v60 + 4);
        v66 = v60[40];
        if (v54 == 1)
        {
          v135 = *v60;
          v136 = v64;
          v137 = v65;
          v67 = v56;
          sub_1B75840E8(v55, 1, v57, v56);
          if (v62 == 1)
          {
            sub_1B75840E8(v135, 1, v63, v136);
            sub_1B7531560(v55, 1, v57, v67);
LABEL_51:
            v75 = v126;
            v76 = (v138 + v126[11]);
            v77 = v76[3];
            v78 = v76[5];
            v201 = v76[4];
            v202 = v78;
            v79 = v76[5];
            v80 = v76[7];
            v203 = v76[6];
            v204 = v80;
            v81 = v76[1];
            v82 = v76[3];
            v199 = v76[2];
            v200 = v82;
            v83 = v76[1];
            v198[0] = *v76;
            v198[1] = v83;
            v84 = (v139 + v126[11]);
            v86 = v84[1];
            v85 = v84[2];
            v87 = v85;
            v205[3] = v84[3];
            v205[2] = v85;
            v89 = v84[5];
            v88 = v84[6];
            v90 = v88;
            v205[7] = v84[7];
            v205[6] = v88;
            v92 = v84[3];
            v91 = v84[4];
            v93 = v91;
            v205[5] = v84[5];
            v205[4] = v91;
            v94 = *v84;
            v95 = *v84;
            v205[1] = v84[1];
            v205[0] = v94;
            v96 = v76[5];
            v186 = v76[4];
            v187 = v96;
            v97 = v76[7];
            v188 = v76[6];
            v189 = v97;
            v98 = v76[1];
            v182 = *v76;
            v183 = v98;
            v99 = v76[3];
            v184 = v76[2];
            v185 = v99;
            v193 = v92;
            v192 = v87;
            v191 = v86;
            v190 = v95;
            v197 = v84[7];
            v196 = v90;
            v195 = v89;
            v194 = v93;
            v206[2] = v199;
            v206[3] = v77;
            v206[0] = v198[0];
            v206[1] = v81;
            v100 = v76[7];
            v206[6] = v203;
            v206[7] = v100;
            v206[4] = v201;
            v206[5] = v79;
            if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v206) == 1)
            {
              v162 = v194;
              v163 = v195;
              v164 = v196;
              v165 = v197;
              v158 = v190;
              v159 = v191;
              v160 = v192;
              v161 = v193;
              enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0 = get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v158);
              v102 = v125;
              if (enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0 == 1)
              {
                v178 = v186;
                v179 = v187;
                v180 = v188;
                v181 = v189;
                v174 = v182;
                v175 = v183;
                v176 = v184;
                v177 = v185;
                sub_1B7205588(v198, &v150, &qword_1EB997508, &qword_1B783D698);
                sub_1B7205588(v205, &v150, &qword_1EB997508, &qword_1B783D698);
                sub_1B7205418(&v174, &qword_1EB997508, &qword_1B783D698);
LABEL_59:
                v105 = v75[12];
                v106 = *(v138 + v105);
                v107 = *(v138 + v105 + 1);
                v108 = v139 + v105;
                v109 = v108[1];
                if (v106)
                {
                  v110 = 1397768525;
                }

                else
                {
                  v110 = 0xD000000000000019;
                }

                if (v106)
                {
                  v111 = 0xE400000000000000;
                }

                else
                {
                  v111 = 0x80000001B7874540;
                }

                if (*v108)
                {
                  v112 = 1397768525;
                }

                else
                {
                  v112 = 0xD000000000000019;
                }

                if (*v108)
                {
                  v113 = 0xE400000000000000;
                }

                else
                {
                  v113 = 0x80000001B7874540;
                }

                if (v110 == v112 && v111 == v113)
                {
                }

                else
                {
                  v114 = sub_1B78020F8();

                  if ((v114 & 1) == 0)
                  {
                    goto LABEL_27;
                  }
                }

                if ((sub_1B72C18A8(v107, v109) & 1) == 0)
                {
                  goto LABEL_27;
                }

                v115 = v126[13];
                v116 = v130;
                v117 = *(v129 + 48);
                sub_1B7205588(v138 + v115, v130, &unk_1EB994C70, &qword_1B7809800);
                sub_1B7205588(v139 + v115, v116 + v117, &unk_1EB994C70, &qword_1B7809800);
                v118 = *(v131 + 48);
                if (v118(v116, 1, v102) == 1)
                {
                  if (v118(v116 + v117, 1, v102) == 1)
                  {
                    sub_1B7205418(v116, &unk_1EB994C70, &qword_1B7809800);
                    v36 = 1;
                    return v36 & 1;
                  }
                }

                else
                {
                  v119 = v128;
                  sub_1B7205588(v116, v128, &unk_1EB994C70, &qword_1B7809800);
                  if (v118(v116 + v117, 1, v102) != 1)
                  {
                    v120 = v131;
                    v121 = v116 + v117;
                    v122 = v127;
                    (*(v131 + 32))(v127, v121, v102);
                    sub_1B71A6A8C(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
                    v36 = sub_1B7800828();
                    v123 = *(v120 + 8);
                    v123(v122, v102);
                    v123(v119, v102);
                    sub_1B7205418(v116, &unk_1EB994C70, &qword_1B7809800);
                    return v36 & 1;
                  }

                  (*(v131 + 8))(v119, v102);
                }

                v33 = &qword_1EB991C30;
                v34 = &unk_1B7816E10;
                v35 = v116;
                goto LABEL_26;
              }

              sub_1B7205588(v198, &v174, &qword_1EB997508, &qword_1B783D698);
              sub_1B7205588(v205, &v174, &qword_1EB997508, &qword_1B783D698);
            }

            else
            {
              v178 = v186;
              v179 = v187;
              v180 = v188;
              v181 = v189;
              v174 = v182;
              v175 = v183;
              v176 = v184;
              v177 = v185;
              v152 = v184;
              v153 = v185;
              v150 = v182;
              v151 = v183;
              v156 = v188;
              v157 = v189;
              v154 = v186;
              v155 = v187;
              v160 = v192;
              v161 = v193;
              v158 = v190;
              v159 = v191;
              v164 = v196;
              v165 = v197;
              v162 = v194;
              v163 = v195;
              v103 = get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v158);
              v102 = v125;
              if (v103 != 1)
              {
                v146 = v194;
                v147 = v195;
                v148 = v196;
                v149 = v197;
                v142 = v190;
                v143 = v191;
                v144 = v192;
                v145 = v193;
                v104 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV19EntityPostalAddressV2eeoiySbAG_AGtFZ_0(&v150, &v142);
                v140[4] = v146;
                v140[5] = v147;
                v140[6] = v148;
                v140[7] = v149;
                v140[0] = v142;
                v140[1] = v143;
                v140[2] = v144;
                v140[3] = v145;
                sub_1B7205588(v198, v141, &qword_1EB997508, &qword_1B783D698);
                sub_1B7205588(v205, v141, &qword_1EB997508, &qword_1B783D698);
                sub_1B7205588(&v174, v141, &qword_1EB997508, &qword_1B783D698);
                sub_1B745E86C(v140);
                v141[4] = v154;
                v141[5] = v155;
                v141[6] = v156;
                v141[7] = v157;
                v141[0] = v150;
                v141[1] = v151;
                v141[2] = v152;
                v141[3] = v153;
                sub_1B745E86C(v141);
                v146 = v186;
                v147 = v187;
                v148 = v188;
                v149 = v189;
                v142 = v182;
                v143 = v183;
                v144 = v184;
                v145 = v185;
                v75 = v126;
                sub_1B7205418(&v142, &qword_1EB997508, &qword_1B783D698);
                if ((v104 & 1) == 0)
                {
                  goto LABEL_27;
                }

                goto LABEL_59;
              }

              v146 = v186;
              v147 = v187;
              v148 = v188;
              v149 = v189;
              v142 = v182;
              v143 = v183;
              v144 = v184;
              v145 = v185;
              sub_1B7205588(v198, v141, &qword_1EB997508, &qword_1B783D698);
              sub_1B7205588(v205, v141, &qword_1EB997508, &qword_1B783D698);
              sub_1B7205588(&v174, v141, &qword_1EB997508, &qword_1B783D698);
              sub_1B745E86C(&v142);
            }

            v170 = v194;
            v171 = v195;
            v172 = v196;
            v173 = v197;
            v166 = v190;
            v167 = v191;
            v168 = v192;
            v169 = v193;
            v162 = v186;
            v163 = v187;
            v164 = v188;
            v165 = v189;
            v158 = v182;
            v159 = v183;
            v160 = v184;
            v161 = v185;
            v33 = &unk_1EB997EB8;
            v34 = &unk_1B7841B50;
            v35 = &v158;
LABEL_26:
            sub_1B7205418(v35, v33, v34);
            goto LABEL_27;
          }

          sub_1B75840E8(v135, v62, v63, v136);
        }

        else
        {
          *&v182 = v55;
          *(&v182 + 1) = v54;
          *&v183 = v57;
          *(&v183 + 1) = v56;
          *&v184 = v58;
          BYTE8(v184) = v59;
          if (v62 != 1)
          {
            *&v158 = v61;
            *(&v158 + 1) = v62;
            LODWORD(v159) = v63;
            BYTE4(v159) = BYTE4(v63) & 1;
            *(&v159 + 1) = v64;
            *&v160 = v65;
            BYTE8(v160) = v66;
            v68 = v55;
            v132 = v55;
            v133 = v58;
            v69 = v61;
            v134 = v57;
            v70 = v57;
            v71 = v56;
            sub_1B75840E8(v68, v54, v70, v56);
            sub_1B75840E8(v69, v62, v63, v64);
            v72 = v132;
            v73 = v134;
            sub_1B75840E8(v132, v54, v134, v71);
            v74 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17MapsSystemDetailsV2eeoiySbAG_AGtFZ_0(&v182, &v158);

            sub_1B7531560(v72, v54, v73, v71);
            if (!v74)
            {
              goto LABEL_27;
            }

            goto LABEL_51;
          }

          v135 = v61;
          v136 = v64;
          v67 = v56;
          v137 = v65;
          sub_1B75840E8(v55, v54, v57, v56);
          sub_1B75840E8(v135, 1, v63, v136);
          sub_1B75840E8(v55, v54, v57, v67);
        }

        sub_1B7531560(v55, v54, v57, v67);
        sub_1B7531560(v135, v62, v63, v136);
        goto LABEL_27;
      }

      sub_1B757E3BC(v50, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    }

    v33 = &qword_1EB997EA8;
    v34 = &qword_1B7841B40;
    v35 = v47;
    goto LABEL_26;
  }

  v36 = 0;
  if ((v42[2] & 1) == 0 && *v40 == *v42 && v40[1] == v42[1])
  {
    goto LABEL_36;
  }

  return v36 & 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV6EntityO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F0, &unk_1B7819BB0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1B75655B0(a1, &v27 - v18, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
  sub_1B75655B0(a2, &v19[v20], type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75655B0(v19, v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B7565394(&v19[v20], v6, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
      v21 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV8MerchantV2eeoiySbAG_AGtFZ_0(v13, v6);
      sub_1B757E3BC(v6, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
      v22 = v13;
      v23 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant;
LABEL_9:
      sub_1B757E3BC(v22, v23);
      sub_1B757E3BC(v19, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
      return v21 & 1;
    }

    v24 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant;
    v25 = v13;
  }

  else
  {
    sub_1B75655B0(v19, v15, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B7565394(&v19[v20], v9, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
      v21 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV5BrandV2eeoiySbAG_AGtFZ_0(v15, v9);
      sub_1B757E3BC(v9, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
      v22 = v15;
      v23 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand;
      goto LABEL_9;
    }

    v24 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand;
    v25 = v15;
  }

  sub_1B757E3BC(v25, v24);
  sub_1B7205418(v19, &qword_1EB9923F0, &unk_1B7819BB0);
  v21 = 0;
  return v21 & 1;
}

BOOL _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV13EntityImageryV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v40 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v40 - v8;
  v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975B8, &qword_1B783D6F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v40 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EA0, &qword_1B7841B38);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v40 - v18;
  v20 = *(v17 + 56);
  v44 = a1;
  sub_1B7205588(a1, &v40 - v18, &qword_1EB9975B8, &qword_1B783D6F0);
  v45 = a2;
  sub_1B7205588(a2, &v19[v20], &qword_1EB9975B8, &qword_1B783D6F0);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) == 1)
  {
    if (v21(&v19[v20], 1, v9) == 1)
    {
      sub_1B7205418(v19, &qword_1EB9975B8, &qword_1B783D6F0);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1B7205588(v19, v15, &qword_1EB9975B8, &qword_1B783D6F0);
  if (v21(&v19[v20], 1, v9) == 1)
  {
    sub_1B757E3BC(v15, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
LABEL_9:
    v28 = &qword_1EB997EA0;
    v29 = &qword_1B7841B38;
LABEL_22:
    v34 = v19;
    goto LABEL_23;
  }

  sub_1B7565394(&v19[v20], v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  v30 = v15[1];
  v31 = v12[1];
  if (!v30)
  {
    if (!v31)
    {
      goto LABEL_15;
    }

LABEL_21:
    sub_1B757E3BC(v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
    sub_1B757E3BC(v15, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
    v28 = &qword_1EB9975B8;
    v29 = &qword_1B783D6F0;
    goto LABEL_22;
  }

  if (!v31 || (*v15 != *v12 || v30 != v31) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v32 = sub_1B77FF458();
  sub_1B757E3BC(v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  sub_1B757E3BC(v15, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  sub_1B7205418(v19, &qword_1EB9975B8, &qword_1B783D6F0);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  v22 = *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0) + 20);
  v23 = v43;
  v24 = *(v42 + 48);
  sub_1B7205588(v44 + v22, v43, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7205588(v45 + v22, v23 + v24, &unk_1EB994C70, &qword_1B7809800);
  v26 = v46;
  v25 = v47;
  v27 = *(v46 + 48);
  if (v27(v23, 1, v47) == 1)
  {
    if (v27(v23 + v24, 1, v25) == 1)
    {
      sub_1B7205418(v23, &unk_1EB994C70, &qword_1B7809800);
      return 1;
    }

    goto LABEL_19;
  }

  v33 = v41;
  sub_1B7205588(v23, v41, &unk_1EB994C70, &qword_1B7809800);
  if (v27(v23 + v24, 1, v25) == 1)
  {
    (*(v26 + 8))(v33, v25);
LABEL_19:
    v28 = &qword_1EB991C30;
    v29 = &unk_1B7816E10;
    v34 = v23;
LABEL_23:
    sub_1B7205418(v34, v28, v29);
    return 0;
  }

  v36 = v23 + v24;
  v37 = v40;
  (*(v26 + 32))(v40, v36, v25);
  sub_1B71A6A8C(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v38 = sub_1B7800828();
  v39 = *(v26 + 8);
  v39(v37, v25);
  v39(v33, v25);
  sub_1B7205418(v23, &unk_1EB994C70, &qword_1B7809800);
  return (v38 & 1) != 0;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV20EntityContactDetailsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  v15 = *(v12 + 56);
  sub_1B7205588(a1, &v25 - v13, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7205588(a2, &v14[v15], &unk_1EB994C70, &qword_1B7809800);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1B7205588(v14, v10, &unk_1EB994C70, &qword_1B7809800);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1B71A6A8C(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v18 = sub_1B7800828();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B7205418(v14, &unk_1EB994C70, &qword_1B7809800);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1B7205418(v14, &qword_1EB991C30, &unk_1B7816E10);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1B7205418(v14, &unk_1EB994C70, &qword_1B7809800);
LABEL_10:
  v20 = *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0) + 20);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (v24 && (*v21 == *v23 && v22 == v24 || (sub_1B78020F8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v24)
  {
    return 1;
  }

  return 0;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV5BrandV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF4F8();
  v99 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = &v93 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v93 - v9;
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v103 = *(v10 - 8);
  v104 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498, &qword_1B78587F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v101 = &v93 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EA8, &qword_1B7841B40);
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v93 - v14;
  v15 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490, &qword_1B783D680);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v93 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EB0, &qword_1B7841B48);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v93 - v23;
  v25 = *a1;
  v26 = a1[1];
  v106 = a1;
  v107 = a2;
  if ((v25 != *a2 || v26 != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_25;
  }

  v27 = v106[3];
  v28 = v107[3];
  if (v27)
  {
    if (!v28 || (v106[2] != v107[2] || v27 != v28) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v28)
  {
    goto LABEL_25;
  }

  v94 = v6;
  v95 = v4;
  v29 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  v30 = *(v29 + 24);
  v31 = *(v22 + 48);
  sub_1B7205588(v106 + v30, v24, &qword_1EB997490, &qword_1B783D680);
  sub_1B7205588(v107 + v30, &v24[v31], &qword_1EB997490, &qword_1B783D680);
  v32 = *(v16 + 48);
  if (v32(v24, 1, v15) == 1)
  {
    if (v32(&v24[v31], 1, v15) == 1)
    {
      sub_1B7205418(v24, &qword_1EB997490, &qword_1B783D680);
LABEL_18:
      v93 = v29;
      v37 = *(v29 + 28);
      v38 = *(v102 + 48);
      v39 = v105;
      sub_1B7205588(v106 + v37, v105, &qword_1EB997498, &qword_1B78587F0);
      sub_1B7205588(v107 + v37, v39 + v38, &qword_1EB997498, &qword_1B78587F0);
      v40 = v104;
      v41 = *(v103 + 48);
      if (v41(v39, 1, v104) == 1)
      {
        if (v41(v39 + v38, 1, v40) == 1)
        {
          sub_1B7205418(v39, &qword_1EB997498, &qword_1B78587F0);
          goto LABEL_28;
        }
      }

      else
      {
        v42 = v101;
        sub_1B7205588(v39, v101, &qword_1EB997498, &qword_1B78587F0);
        if (v41(v39 + v38, 1, v40) != 1)
        {
          v45 = v39 + v38;
          v46 = v100;
          sub_1B7565394(v45, v100, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
          v47 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV13EntityImageryV2eeoiySbAG_AGtFZ_0(v42, v46);
          sub_1B757E3BC(v46, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
          sub_1B757E3BC(v42, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
          sub_1B7205418(v39, &qword_1EB997498, &qword_1B78587F0);
          if (!v47)
          {
            goto LABEL_25;
          }

LABEL_28:
          v48 = v93[8];
          v50 = *(v106 + v48);
          v49 = *(v106 + v48 + 8);
          v52 = *(v106 + v48 + 16);
          v51 = *(v106 + v48 + 24);
          v53 = *(v106 + v48 + 32);
          v54 = *(v106 + v48 + 40);
          v55 = v107 + v48;
          v56 = *v55;
          v57 = *(v55 + 1);
          v58 = *(v55 + 2);
          v59 = *(v55 + 3);
          v60 = *(v55 + 4);
          v61 = v55[40];
          if (v49 == 1)
          {
            v105 = *(v55 + 2);
            LODWORD(v104) = v61;
            v62 = v59;
            v63 = v51;
            sub_1B75840E8(v50, 1, v52, v51);
            if (v57 == 1)
            {
              sub_1B75840E8(v56, 1, v105, v62);
              sub_1B7531560(v50, 1, v52, v63);
LABEL_36:
              v74 = v93[9];
              v75 = *(v106 + v74);
              v76 = *(v106 + v74 + 1);
              v77 = v107 + v74;
              v78 = v77[1];
              if (v75)
              {
                v79 = 1397768525;
              }

              else
              {
                v79 = 0xD000000000000019;
              }

              if (v75)
              {
                v80 = 0xE400000000000000;
              }

              else
              {
                v80 = 0x80000001B7874540;
              }

              if (*v77)
              {
                v81 = 1397768525;
              }

              else
              {
                v81 = 0xD000000000000019;
              }

              if (*v77)
              {
                v82 = 0xE400000000000000;
              }

              else
              {
                v82 = 0x80000001B7874540;
              }

              if (v79 == v81 && v80 == v82)
              {

                v83 = v95;
                v84 = v99;
                v85 = v94;
              }

              else
              {
                v86 = sub_1B78020F8();

                v83 = v95;
                v84 = v99;
                v85 = v94;
                if ((v86 & 1) == 0)
                {
                  goto LABEL_25;
                }
              }

              if ((sub_1B72C18A8(v76, v78) & 1) == 0)
              {
                goto LABEL_25;
              }

              v87 = v93[10];
              v88 = *(v97 + 48);
              v89 = v98;
              sub_1B7205588(v106 + v87, v98, &unk_1EB994C70, &qword_1B7809800);
              sub_1B7205588(v107 + v87, v89 + v88, &unk_1EB994C70, &qword_1B7809800);
              v90 = *(v84 + 48);
              if (v90(v89, 1, v83) == 1)
              {
                if (v90(v89 + v88, 1, v83) == 1)
                {
                  sub_1B7205418(v89, &unk_1EB994C70, &qword_1B7809800);
                  v43 = 1;
                  return v43 & 1;
                }
              }

              else
              {
                v91 = v96;
                sub_1B7205588(v89, v96, &unk_1EB994C70, &qword_1B7809800);
                if (v90(v89 + v88, 1, v83) != 1)
                {
                  (*(v84 + 32))(v85, v89 + v88, v83);
                  sub_1B71A6A8C(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
                  v43 = sub_1B7800828();
                  v92 = *(v84 + 8);
                  v92(v85, v83);
                  v92(v91, v83);
                  sub_1B7205418(v89, &unk_1EB994C70, &qword_1B7809800);
                  return v43 & 1;
                }

                (*(v84 + 8))(v91, v83);
              }

              v33 = &qword_1EB991C30;
              v34 = &unk_1B7816E10;
              v35 = v89;
              goto LABEL_24;
            }

            v106 = v56;
            v107 = v62;
            v66 = v56;
            v65 = v105;
            sub_1B75840E8(v66, v57, v105, v62);
          }

          else
          {
            v114[0] = v50;
            v114[1] = v49;
            v114[2] = v52;
            v114[3] = v51;
            v114[4] = v53;
            v115 = v54;
            if (v57 != 1)
            {
              v108[0] = v56;
              v108[1] = v57;
              v109 = v58;
              v110 = BYTE4(v58) & 1;
              v111 = v59;
              v112 = v60;
              v113 = v61;
              v102 = v50;
              v103 = v52;
              v67 = v50;
              v68 = v58;
              v69 = v52;
              v70 = v51;
              sub_1B75840E8(v67, v49, v69, v51);
              sub_1B75840E8(v56, v57, v68, v59);
              v72 = v102;
              v71 = v103;
              sub_1B75840E8(v102, v49, v103, v70);
              v73 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17MapsSystemDetailsV2eeoiySbAG_AGtFZ_0(v114, v108);

              sub_1B7531560(v72, v49, v71, v70);
              if (!v73)
              {
                goto LABEL_25;
              }

              goto LABEL_36;
            }

            v105 = v58;
            v107 = v59;
            v63 = v51;
            sub_1B75840E8(v50, v49, v52, v51);
            v106 = v56;
            v64 = v56;
            v65 = v105;
            sub_1B75840E8(v64, 1, v105, v107);
            sub_1B75840E8(v50, v49, v52, v63);
          }

          sub_1B7531560(v50, v49, v52, v63);
          sub_1B7531560(v106, v57, v65, v107);
          goto LABEL_25;
        }

        sub_1B757E3BC(v42, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
      }

      v33 = &qword_1EB997EA8;
      v34 = &qword_1B7841B40;
      v35 = v39;
LABEL_24:
      sub_1B7205418(v35, v33, v34);
      goto LABEL_25;
    }

LABEL_16:
    v33 = &qword_1EB997EB0;
    v34 = &qword_1B7841B48;
    v35 = v24;
    goto LABEL_24;
  }

  sub_1B7205588(v24, v21, &qword_1EB997490, &qword_1B783D680);
  if (v32(&v24[v31], 1, v15) == 1)
  {
    sub_1B757E3BC(v21, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
    goto LABEL_16;
  }

  sub_1B7565394(&v24[v31], v18, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  v36 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV20EntityContactDetailsV2eeoiySbAG_AGtFZ_0(v21, v18);
  sub_1B757E3BC(v18, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  sub_1B757E3BC(v21, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  sub_1B7205418(v24, &qword_1EB997490, &qword_1B783D680);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_25:
  v43 = 0;
  return v43 & 1;
}

BOOL sub_1B75810E4(void *a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E98, &qword_1B7841B30);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  if (*a1 != *a2)
  {
    return 0;
  }

  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    v43 = v7;
    v19 = v14;

    v20 = sub_1B731E3EC(v17, v18);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v43 = v7;
    v19 = v14;
    if (v18)
    {
      return 0;
    }
  }

  v42 = (a3)(0);
  v21 = *(v42 + 24);
  v22 = *(v19 + 48);
  sub_1B75655B0(a1 + v21, v16, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  sub_1B75655B0(a2 + v21, &v16[v22], type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958, &qword_1B7824460);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v16, 1, v23) == 1)
  {
    if (v24(&v16[v22], 1, v23) == 1)
    {
      goto LABEL_15;
    }

LABEL_12:
    sub_1B7205418(v16, &qword_1EB997E98, &qword_1B7841B30);
    return 0;
  }

  sub_1B75655B0(v16, v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  if (v24(&v16[v22], 1, v23) == 1)
  {
    (*(v43 + 8))(v12, v6);
    goto LABEL_12;
  }

  v26 = v43;
  (*(v43 + 32))(v9, &v16[v22], v6);
  v27 = sub_1B77FF918();
  v28 = *(v26 + 8);
  v28(v9, v6);
  v28(v12, v6);
  if ((v27 & 1) == 0)
  {
    sub_1B757E3BC(v16, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    return 0;
  }

LABEL_15:
  sub_1B757E3BC(v16, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v29 = *(v42 + 28);
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 2)
  {
    return *(a2 + v29) == 2;
  }

  if (*(a2 + v29) == 2)
  {
    return 0;
  }

  if (v30)
  {
    v32 = 1397768525;
  }

  else
  {
    v32 = 0xD000000000000019;
  }

  if (v30)
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0x80000001B7874540;
  }

  if (v31)
  {
    v34 = 1397768525;
  }

  else
  {
    v34 = 0xD000000000000019;
  }

  if (v31)
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0x80000001B7874540;
  }

  if (v32 == v34 && v33 == v35)
  {
  }

  else
  {
    v36 = sub_1B78020F8();

    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = RawBankConnectData.TransactionClassificationResult.WalletCategory.rawValue.getter(HIBYTE(v30));
  v39 = v38;
  if (v37 == RawBankConnectData.TransactionClassificationResult.WalletCategory.rawValue.getter(HIBYTE(v31)) && v39 == v40)
  {
  }

  else
  {
    v41 = sub_1B78020F8();

    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV7OutcomeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v33 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v33 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EC0, &qword_1B7841B60);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_1B75655B0(a1, &v33 - v22, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
  sub_1B75655B0(v34, &v23[v24], type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B75655B0(v23, v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B7565394(&v23[v24], v7, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
        v26 = sub_1B75810E4(v17, v7, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
        v27 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome;
        sub_1B757E3BC(v7, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
        v28 = v17;
LABEL_13:
        sub_1B757E3BC(v28, v27);
        sub_1B757E3BC(v23, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
        return v26 & 1;
      }

      v29 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome;
      v30 = v17;
    }

    else
    {
      sub_1B75655B0(v23, v14, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        sub_1B7565394(&v23[v24], v33, type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome);
        v26 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV13FailedOutcomeV2eeoiySbAG_AGtFZ_0(v14, v31);
        v27 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome;
        sub_1B757E3BC(v31, type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome);
        v28 = v14;
        goto LABEL_13;
      }

      v29 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome;
      v30 = v14;
    }
  }

  else
  {
    sub_1B75655B0(v23, v19, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B7565394(&v23[v24], v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
      v26 = sub_1B75810E4(v19, v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
      v27 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome;
      sub_1B757E3BC(v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome;
    v30 = v19;
  }

  sub_1B757E3BC(v30, v29);
  sub_1B7205418(v23, &qword_1EB997EC0, &qword_1B7841B60);
  v26 = 0;
  return v26 & 1;
}

unint64_t sub_1B7581A5C()
{
  result = qword_1EB997370;
  if (!qword_1EB997370)
  {
    result = swift_getWitnessTable(byte_1B7841A18, &_s31TransactionClassificationResultV7OutcomeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997370);
  }

  return result;
}

unint64_t sub_1B7581AB0()
{
  result = qword_1EB997378;
  if (!qword_1EB997378)
  {
    result = swift_getWitnessTable(byte_1B78419C8, &_s31TransactionClassificationResultV7OutcomeO16FailedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997378);
  }

  return result;
}

unint64_t sub_1B7581B04()
{
  result = qword_1EB997388;
  if (!qword_1EB997388)
  {
    result = swift_getWitnessTable(aA_21, &_s31TransactionClassificationResultV7OutcomeO24PartialSuccessCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997388);
  }

  return result;
}

unint64_t sub_1B7581B58()
{
  result = qword_1EB997398;
  if (!qword_1EB997398)
  {
    result = swift_getWitnessTable(byte_1B7841928, &_s31TransactionClassificationResultV7OutcomeO17SuccessCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997398);
  }

  return result;
}

uint64_t _s10FinanceKit18RawBankConnectDataO22TransactionForInsightsV08ApplePayG7DetailsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v78 - v13;
  v15 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v15;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a1 + 24);
  v17 = *(a2 + 24);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v16 != v17)
    {
      v18 = v12;
      v19 = sub_1B78020F8();
      v12 = v18;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v15 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return v15;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v20 = *(a1 + 41);
  v21 = *(a2 + 41);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }

    goto LABEL_25;
  }

  v15 = 0;
  if (v21 != 2 && ((v21 ^ v20) & 1) == 0)
  {
LABEL_25:
    v22 = *(a1 + 113);
    v23 = *(a2 + 113);
    if ((v22 & 1) == 0)
    {
      v24 = *(a1 + 96);
      v82[2] = *(a1 + 80);
      v82[3] = v24;
      v83 = *(a1 + 112);
      v25 = *(a1 + 64);
      v82[0] = *(a1 + 48);
      v82[1] = v25;
      v84 = v22;
      if (v23)
      {
        return 0;
      }

      v26 = *(a2 + 96);
      v80[2] = *(a2 + 80);
      v80[3] = v26;
      v81 = *(a2 + 112);
      v27 = *(a2 + 64);
      v80[0] = *(a2 + 48);
      v80[1] = v27;
      v28 = v12;
      v23 = _s10FinanceKit18RawBankConnectDataO14DeviceLocationV2eeoiySbAE_AEtFZ_0(v82, v80);
      v12 = v28;
    }

    if (v23)
    {
      v29 = *(a1 + 128);
      v30 = *(a2 + 128);
      if (v29)
      {
        if (!v30)
        {
          return 0;
        }

        if (*(a1 + 120) != *(a2 + 120) || v29 != v30)
        {
          v31 = v12;
          v32 = sub_1B78020F8();
          v12 = v31;
          if ((v32 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v30)
      {
        return 0;
      }

      v33 = *(a1 + 144);
      v34 = *(a2 + 144);
      if (v33)
      {
        if (!v34)
        {
          return 0;
        }

        if (*(a1 + 136) != *(a2 + 136) || v33 != v34)
        {
          v35 = v12;
          v36 = sub_1B78020F8();
          v12 = v35;
          if ((v36 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v34)
      {
        return 0;
      }

      v15 = *(a2 + 160);
      if (*(a1 + 160))
      {
        if (!*(a2 + 160))
        {
          return v15;
        }
      }

      else
      {
        if (*(a1 + 152) != *(a2 + 152))
        {
          LOBYTE(v15) = 1;
        }

        if (v15)
        {
          return 0;
        }
      }

      v37 = *(a1 + 176);
      v38 = *(a2 + 176);
      if (v37)
      {
        if (!v38)
        {
          return 0;
        }

        if (*(a1 + 168) != *(a2 + 168) || v37 != v38)
        {
          v39 = v12;
          v40 = sub_1B78020F8();
          v12 = v39;
          if ((v40 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v38)
      {
        return 0;
      }

      v41 = *(a1 + 192);
      v42 = *(a2 + 192);
      if (v41)
      {
        if (!v42)
        {
          return 0;
        }

        if (*(a1 + 184) != *(a2 + 184) || v41 != v42)
        {
          v43 = v12;
          v44 = sub_1B78020F8();
          v12 = v43;
          if ((v44 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v42)
      {
        return 0;
      }

      v45 = *(a1 + 208);
      v46 = *(a2 + 208);
      if (v45)
      {
        if (!v46)
        {
          return 0;
        }

        if (*(a1 + 200) != *(a2 + 200) || v45 != v46)
        {
          v47 = v12;
          v48 = sub_1B78020F8();
          v12 = v47;
          if ((v48 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v46)
      {
        return 0;
      }

      v49 = *(a1 + 224);
      v50 = *(a2 + 224);
      if (v49)
      {
        if (!v50)
        {
          return 0;
        }

        v51 = v12;
        if ((*(a1 + 216) != *(a2 + 216) || v49 != v50) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v51 = v12;
        if (v50)
        {
          return 0;
        }
      }

      v52 = *(a1 + 240);
      v53 = *(a2 + 240);
      if (v52)
      {
        if (!v53 || (*(a1 + 232) != *(a2 + 232) || v52 != v53) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v53)
      {
        return 0;
      }

      v54 = *(a1 + 256);
      v55 = *(a2 + 256);
      if (v54)
      {
        if (!v55 || (*(a1 + 248) != *(a2 + 248) || v54 != v55) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v55)
      {
        return 0;
      }

      v56 = *(a1 + 272);
      v57 = *(a2 + 272);
      if (v56)
      {
        if (!v57 || (*(a1 + 264) != *(a2 + 264) || v56 != v57) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v57)
      {
        return 0;
      }

      v58 = *(a1 + 288);
      v59 = *(a2 + 288);
      if (v58)
      {
        if (!v59 || (*(a1 + 280) != *(a2 + 280) || v58 != v59) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v59)
      {
        return 0;
      }

      v60 = *(a1 + 304);
      v61 = *(a2 + 304);
      if (v60)
      {
        if (!v61 || (*(a1 + 296) != *(a2 + 296) || v60 != v61) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v61)
      {
        return 0;
      }

      v62 = *(a1 + 320);
      v63 = *(a2 + 320);
      if (v62)
      {
        if (!v63 || (*(a1 + 312) != *(a2 + 312) || v62 != v63) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v63)
      {
        return 0;
      }

      v64 = *(a1 + 336);
      v65 = *(a2 + 336);
      if (v64)
      {
        if (!v65 || (*(a1 + 328) != *(a2 + 328) || v64 != v65) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v65)
      {
        return 0;
      }

      v66 = *(a1 + 352);
      v67 = *(a2 + 352);
      if (v66)
      {
        if (!v67 || (*(a1 + 344) != *(a2 + 344) || v66 != v67) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v67)
      {
        return 0;
      }

      v68 = *(a1 + 368);
      v69 = *(a2 + 368);
      if (v68)
      {
        if (!v69 || (*(a1 + 360) != *(a2 + 360) || v68 != v69) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v69)
      {
        return 0;
      }

      v70 = *(a1 + 384);
      v71 = *(a2 + 384);
      if (v70)
      {
        if (!v71 || (*(a1 + 376) != *(a2 + 376) || v70 != v71) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v71)
      {
        return 0;
      }

      v72 = *(type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0) + 104);
      v73 = *(v51 + 48);
      sub_1B7205588(a1 + v72, v14, &unk_1EB994C70, &qword_1B7809800);
      v79 = v73;
      sub_1B7205588(a2 + v72, &v14[v73], &unk_1EB994C70, &qword_1B7809800);
      v74 = *(v5 + 48);
      if (v74(v14, 1, v4) == 1)
      {
        if (v74(&v14[v79], 1, v4) == 1)
        {
          sub_1B7205418(v14, &unk_1EB994C70, &qword_1B7809800);
          return 1;
        }

        goto LABEL_152;
      }

      sub_1B7205588(v14, v10, &unk_1EB994C70, &qword_1B7809800);
      if (v74(&v14[v79], 1, v4) == 1)
      {
        (*(v5 + 8))(v10, v4);
LABEL_152:
        sub_1B7205418(v14, &qword_1EB991C30, &unk_1B7816E10);
        return 0;
      }

      (*(v5 + 32))(v7, &v14[v79], v4);
      sub_1B71A6A8C(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v75 = sub_1B7800828();
      v76 = *(v5 + 8);
      v76(v7, v4);
      v76(v10, v4);
      sub_1B7205418(v14, &unk_1EB994C70, &qword_1B7809800);
      if (v75)
      {
        return 1;
      }
    }

    return 0;
  }

  return v15;
}

BOOL _s10FinanceKit18RawBankConnectDataO22TransactionForInsightsV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v158 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v154 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v155 = &v146 - v7;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  MEMORY[0x1EEE9AC00](v156);
  v157 = &v146 - v8;
  v9 = type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9977A8, &qword_1B783D7D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v146 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E88, &qword_1B7841B20);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v146 - v17;
  if (*a1 != *a2)
  {
    return 0;
  }

  v151 = v4;
  v19 = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
  v159 = a2;
  v20 = *(v19 + 20);
  v21 = *(v16 + 48);
  v152 = v19;
  v153 = a1;
  sub_1B7205588(a1 + v20, v18, &qword_1EB9977A8, &qword_1B783D7D0);
  v22 = v159 + v20;
  v23 = v159;
  sub_1B7205588(v22, &v18[v21], &qword_1EB9977A8, &qword_1B783D7D0);
  v24 = *(v10 + 48);
  if (v24(v18, 1, v9) == 1)
  {
    if (v24(&v18[v21], 1, v9) == 1)
    {
      sub_1B7205418(v18, &qword_1EB9977A8, &qword_1B783D7D0);
      goto LABEL_11;
    }

LABEL_7:
    v25 = &qword_1EB997E88;
    v26 = &qword_1B7841B20;
    v27 = v18;
LABEL_8:
    sub_1B7205418(v27, v25, v26);
    return 0;
  }

  sub_1B7205588(v18, v15, &qword_1EB9977A8, &qword_1B783D7D0);
  if (v24(&v18[v21], 1, v9) == 1)
  {
    sub_1B757E3BC(v15, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
    goto LABEL_7;
  }

  sub_1B7565394(&v18[v21], v12, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  v29 = _s10FinanceKit18RawBankConnectDataO22TransactionForInsightsV08ApplePayG7DetailsV2eeoiySbAG_AGtFZ_0(v15, v12);
  sub_1B757E3BC(v12, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  sub_1B757E3BC(v15, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  sub_1B7205418(v18, &qword_1EB9977A8, &qword_1B783D7D0);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v30 = v152;
  v31 = v153;
  v32 = v152[6];
  v33 = *(v153 + v32);
  v34 = *(v23 + v32);
  if (v33)
  {
    v35 = 0x544944455243;
  }

  else
  {
    v35 = 0x5449424544;
  }

  if (v33)
  {
    v36 = 0xE600000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  if (v34)
  {
    v37 = 0x544944455243;
  }

  else
  {
    v37 = 0x5449424544;
  }

  if (v34)
  {
    v38 = 0xE600000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  if (v35 == v37 && v36 == v38)
  {
  }

  else
  {
    v39 = sub_1B78020F8();

    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  v40 = v30[7];
  v41 = *(v31 + v40);
  v42 = *(v31 + v40 + 8);
  v43 = (v23 + v40);
  if ((v41 != *v43 || v42 != v43[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v44 = v30[8];
  v45 = *(v31 + v44);
  v46 = *(v31 + v44 + 8);
  v47 = (v23 + v44);
  if ((v45 != *v47 || v46 != v47[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v48 = v30[9];
  v49 = *(v31 + v48);
  v50 = *(v31 + v48 + 8);
  v51 = (v23 + v48);
  if ((v49 != *v51 || v50 != v51[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (*(v31 + v30[10]) != *(v23 + v30[10]))
  {
    return 0;
  }

  v52 = (v31 + v30[11]);
  v53 = v52[3];
  v54 = v52[4];
  v55 = v54;
  v194[5] = v52[5];
  v194[4] = v54;
  v56 = v52[2];
  v57 = v52[1];
  v194[3] = v52[3];
  v194[2] = v56;
  v58 = v52[7];
  v59 = v52[8];
  v60 = v59;
  v194[9] = v52[9];
  v194[8] = v59;
  v61 = v52[6];
  v62 = v52[5];
  v194[7] = v52[7];
  v194[6] = v61;
  v63 = v52[1];
  v194[0] = *v52;
  v194[1] = v63;
  v64 = (v23 + v30[11]);
  v65 = v64[7];
  v66 = v64[5];
  v200 = v64[6];
  v201 = v65;
  v67 = v64[7];
  v68 = v64[9];
  v202 = v64[8];
  v203 = v68;
  v69 = v64[3];
  v70 = v64[1];
  v196 = v64[2];
  v197 = v69;
  v71 = v64[3];
  v72 = v64[5];
  v198 = v64[4];
  v199 = v72;
  v73 = v64[1];
  v195[0] = *v64;
  v195[1] = v73;
  v74 = v52[7];
  v193[6] = v52[6];
  v193[7] = v74;
  v75 = v52[9];
  v193[8] = v52[8];
  v193[9] = v75;
  v76 = v52[3];
  v193[2] = v52[2];
  v193[3] = v76;
  v77 = v52[5];
  v193[4] = v52[4];
  v193[5] = v77;
  v78 = v52[1];
  v193[0] = *v52;
  v193[1] = v78;
  v193[16] = v200;
  v193[17] = v67;
  v79 = v64[9];
  v193[18] = v202;
  v193[19] = v79;
  v193[12] = v196;
  v193[13] = v71;
  v193[14] = v198;
  v193[15] = v66;
  v193[10] = v195[0];
  v193[11] = v70;
  v204[6] = v61;
  v204[7] = v58;
  v80 = v52[9];
  v204[8] = v60;
  v204[9] = v80;
  v204[2] = v56;
  v204[3] = v53;
  v204[4] = v55;
  v204[5] = v62;
  v204[0] = v194[0];
  v204[1] = v57;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v204) == 1)
  {
    v182[6] = v193[16];
    v182[7] = v193[17];
    v182[8] = v193[18];
    v182[9] = v193[19];
    v182[2] = v193[12];
    v182[3] = v193[13];
    v182[4] = v193[14];
    v182[5] = v193[15];
    v182[0] = v193[10];
    v182[1] = v193[11];
    if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v182) == 1)
    {
      v189 = v193[6];
      v190 = v193[7];
      v191 = v193[8];
      v192 = v193[9];
      v185 = v193[2];
      v186 = v193[3];
      v187 = v193[4];
      v188 = v193[5];
      v183 = v193[0];
      v184 = v193[1];
      sub_1B7205588(v194, &v172, &qword_1EB995668, &unk_1B785BD10);
      sub_1B7205588(v195, &v172, &qword_1EB995668, &unk_1B785BD10);
      sub_1B7205418(&v183, &qword_1EB995668, &unk_1B785BD10);
      goto LABEL_45;
    }

    sub_1B7205588(v194, &v183, &qword_1EB995668, &unk_1B785BD10);
    sub_1B7205588(v195, &v183, &qword_1EB995668, &unk_1B785BD10);
    goto LABEL_43;
  }

  v189 = v193[6];
  v190 = v193[7];
  v191 = v193[8];
  v192 = v193[9];
  v185 = v193[2];
  v186 = v193[3];
  v187 = v193[4];
  v188 = v193[5];
  v183 = v193[0];
  v184 = v193[1];
  v178 = v193[6];
  v179 = v193[7];
  v180 = v193[8];
  v181 = v193[9];
  v174 = v193[2];
  v175 = v193[3];
  v176 = v193[4];
  v177 = v193[5];
  v172 = v193[0];
  v173 = v193[1];
  v182[6] = v193[16];
  v182[7] = v193[17];
  v182[8] = v193[18];
  v182[9] = v193[19];
  v182[2] = v193[12];
  v182[3] = v193[13];
  v182[4] = v193[14];
  v182[5] = v193[15];
  v182[0] = v193[10];
  v182[1] = v193[11];
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v182) == 1)
  {
    v168 = v193[6];
    v169 = v193[7];
    v170 = v193[8];
    v171 = v193[9];
    v164 = v193[2];
    v165 = v193[3];
    v166 = v193[4];
    v167 = v193[5];
    v162 = v193[0];
    v163 = v193[1];
    sub_1B7205588(v194, v161, &qword_1EB995668, &unk_1B785BD10);
    sub_1B7205588(v195, v161, &qword_1EB995668, &unk_1B785BD10);
    sub_1B7205588(&v183, v161, &qword_1EB995668, &unk_1B785BD10);
    sub_1B7586478(&v162);
LABEL_43:
    memcpy(v182, v193, sizeof(v182));
    v25 = &qword_1EB997E90;
    v26 = &qword_1B7841B28;
    v27 = v182;
    goto LABEL_8;
  }

  v168 = v193[16];
  v169 = v193[17];
  v170 = v193[18];
  v171 = v193[19];
  v164 = v193[12];
  v165 = v193[13];
  v166 = v193[14];
  v167 = v193[15];
  v162 = v193[10];
  v163 = v193[11];
  sub_1B7205588(v194, v161, &qword_1EB995668, &unk_1B785BD10);
  sub_1B7205588(v195, v161, &qword_1EB995668, &unk_1B785BD10);
  sub_1B7205588(&v183, v161, &qword_1EB995668, &unk_1B785BD10);
  v81 = _s10FinanceKit18RawBankConnectDataO19MerchantInformationV2eeoiySbAE_AEtFZ_0(&v172, &v162);
  v160[6] = v168;
  v160[7] = v169;
  v160[8] = v170;
  v160[9] = v171;
  v160[2] = v164;
  v160[3] = v165;
  v160[4] = v166;
  v160[5] = v167;
  v160[0] = v162;
  v160[1] = v163;
  sub_1B7586478(v160);
  v161[6] = v178;
  v161[7] = v179;
  v161[8] = v180;
  v161[9] = v181;
  v161[2] = v174;
  v161[3] = v175;
  v161[4] = v176;
  v161[5] = v177;
  v161[0] = v172;
  v161[1] = v173;
  sub_1B7586478(v161);
  v168 = v193[6];
  v169 = v193[7];
  v170 = v193[8];
  v171 = v193[9];
  v164 = v193[2];
  v165 = v193[3];
  v166 = v193[4];
  v167 = v193[5];
  v162 = v193[0];
  v163 = v193[1];
  sub_1B7205418(&v162, &qword_1EB995668, &unk_1B785BD10);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  v82 = v30[12];
  v83 = *(v31 + v82);
  v84 = *(v31 + v82 + 8);
  v85 = (v23 + v82);
  if ((v83 != *v85 || v84 != v85[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v86 = v30[13];
  v87 = *(v31 + v86);
  v88 = *(v23 + v86);
  if (v87)
  {
    if (!v88 || (sub_1B731F734(v87, v88) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v88)
  {
    return 0;
  }

  v89 = v30[14];
  v90 = *(v31 + v89);
  v91 = *(v31 + v89 + 8);
  v92 = *(v31 + v89 + 16);
  v93 = *(v31 + v89 + 24);
  v94 = (v23 + v89);
  v96 = *v94;
  v95 = v94[1];
  v97 = v94[2];
  v150 = v94[3];
  if (!v91)
  {
    v148 = v90;
    v107 = v90;
    v108 = v92;
    sub_1B7586148(v107, 0, v92, v93);
    if (!v95)
    {
      sub_1B7586148(v96, 0, v97, v150);
      v91 = 0;
      goto LABEL_78;
    }

    v109 = v96;
    v110 = v150;
    sub_1B7586148(v96, v95, v97, v150);
    v111 = v148;
LABEL_66:
    sub_1B74204FC(v111, v91, v108, v93);
    sub_1B74204FC(v109, v95, v97, v110);
    return 0;
  }

  if (!v95)
  {
    v112 = v90;
    v109 = v96;
    v111 = v90;
    v108 = v92;
    sub_1B7586148(v112, v91, v92, v93);
    v110 = v150;
    sub_1B7586148(v109, 0, v97, v150);
    sub_1B7586148(v111, v91, v108, v93);

    goto LABEL_66;
  }

  v149 = v92;
  if (v90 != v96 || v91 != v95)
  {
    v148 = v93;
    v98 = v96;
    v99 = v90;
    v100 = v92;
    v101 = sub_1B78020F8();
    v92 = v100;
    v90 = v99;
    v96 = v98;
    v93 = v148;
    if ((v101 & 1) == 0)
    {
      v147 = v95;
LABEL_73:
      sub_1B7586148(v90, v91, v92, v93);
      v113 = v93;
LABEL_74:
      v115 = v147;
      v116 = v150;
      sub_1B7586148(v96, v147, v97, v150);
      sub_1B7586148(v90, v91, v149, v113);
      sub_1B74204FC(v96, v115, v97, v116);
      goto LABEL_75;
    }
  }

  if (!v93)
  {
    v147 = v95;
    sub_1B7586148(v90, v91, v92, 0);
    v113 = 0;
    if (!v150)
    {
      v114 = v147;
      sub_1B7586148(v96, v147, v97, 0);
      sub_1B7586148(v90, v91, v149, 0);
      v103 = v96;
      v104 = v114;
      v105 = v97;
      v106 = 0;
      goto LABEL_70;
    }

    goto LABEL_74;
  }

  if (!v150)
  {
    v147 = v95;
    v150 = 0;
    goto LABEL_73;
  }

  if (v92 != v97 || v93 != v150)
  {
    v146 = v97;
    v117 = v92;
    v118 = sub_1B78020F8();
    v147 = v95;
    LODWORD(v148) = v118;
    sub_1B7586148(v90, v91, v117, v93);
    v119 = v95;
    v120 = v146;
    sub_1B7586148(v96, v119, v146, v150);
    sub_1B7586148(v90, v91, v117, v93);
    sub_1B74204FC(v96, v147, v120, v150);
    if (v148)
    {
      goto LABEL_77;
    }

LABEL_75:

    sub_1B74204FC(v90, v91, v149, v93);
    return 0;
  }

  v102 = v92;
  sub_1B7586148(v90, v91, v92, v93);
  sub_1B7586148(v96, v95, v102, v93);
  sub_1B7586148(v90, v91, v102, v93);
  v103 = v96;
  v104 = v95;
  v105 = v102;
  v106 = v93;
LABEL_70:
  sub_1B74204FC(v103, v104, v105, v106);
LABEL_77:
  v148 = v90;
  v108 = v149;

LABEL_78:
  sub_1B74204FC(v148, v91, v108, v93);
  v121 = v30[15];
  v122 = *(v31 + v121);
  v123 = *(v23 + v121);
  if (v122 == 5)
  {
    if (v123 != 5)
    {
      return 0;
    }
  }

  else if (v123 == 5 || (sub_1B72C1B00(v122, v123) & 1) == 0)
  {
    return 0;
  }

  v124 = v30[16];
  v125 = *(v31 + v124);
  v126 = *(v31 + v124 + 8);
  v127 = (v23 + v124);
  if ((v125 != *v127 || v126 != v127[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v128 = v30[17];
  v129 = *(v156 + 48);
  v130 = v31 + v128;
  v131 = v157;
  sub_1B7205588(v130, v157, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(v159 + v128, v131 + v129, &qword_1EB98EBD0, &unk_1B7809780);
  v132 = v158;
  v133 = *(v158 + 48);
  v134 = v151;
  if (v133(v131, 1, v151) == 1)
  {
    if (v133(v131 + v129, 1, v134) == 1)
    {
      sub_1B7205418(v131, &qword_1EB98EBD0, &unk_1B7809780);
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  v135 = v155;
  sub_1B7205588(v131, v155, &qword_1EB98EBD0, &unk_1B7809780);
  if (v133(v131 + v129, 1, v134) == 1)
  {
    (*(v132 + 8))(v135, v134);
LABEL_91:
    v25 = &qword_1EB98FCE0;
    v26 = &qword_1B7813550;
    v27 = v131;
    goto LABEL_8;
  }

  v136 = v154;
  (*(v132 + 32))(v154, v131 + v129, v134);
  sub_1B71A6A8C(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v137 = sub_1B7800828();
  v138 = *(v132 + 8);
  v138(v136, v134);
  v138(v135, v134);
  sub_1B7205418(v131, &qword_1EB98EBD0, &unk_1B7809780);
  if ((v137 & 1) == 0)
  {
    return 0;
  }

LABEL_93:
  v139 = v152[18];
  v140 = *(v153 + v139);
  LOBYTE(v139) = *(v159 + v139);
  LOBYTE(v193[0]) = v140;
  LOBYTE(v182[0]) = v139;
  v141 = RawBankConnectData.Transaction.TransactionType.rawValue.getter();
  v143 = v142;
  if (v141 == RawBankConnectData.Transaction.TransactionType.rawValue.getter() && v143 == v144)
  {

    return 1;
  }

  v145 = sub_1B78020F8();

  return (v145 & 1) != 0;
}

uint64_t _s10FinanceKit18RawBankConnectDataO19InsightsRequestBodyV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v11 = *a2;
  v10 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v15 = a2[4];
  v14 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v42 = v14;
  v43 = v16;
  v40 = v12;
  v41 = v15;
  if (*a1)
  {
    v45[0] = *a1;
    v45[1] = v2;
    v45[2] = v5;
    v45[3] = v4;
    v45[4] = v7;
    v45[5] = v6;
    v45[6] = v9;
    if (v11)
    {
      v36 = v17;
      v38 = v8;
      v44[0] = v11;
      v44[1] = v10;
      v44[2] = v13;
      v44[3] = v12;
      v44[4] = v15;
      v44[5] = v14;
      v44[6] = v16;
      v18 = v6;
      v34 = _s10FinanceKit18RawBankConnectDataO31ClassificationBAAIdentificationV2eeoiySbAE_AEtFZ_0(v45, v44);
      sub_1B7585D78(v3, v2, v5, v4, v7, v18, v9);
      sub_1B7585D78(v11, v10, v13, v40, v41, v42, v43);
      sub_1B7585D78(v3, v2, v5, v4, v7, v18, v9);

      sub_1B72DE64C(v3, v2, v5, v4, v7, v18, v9);
      if (v34)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v21 = v2;
    v22 = v4;
    v37 = v2;
    v39 = v9;
    v23 = v15;
    v24 = v7;
    v25 = v14;
    v33 = v4;
    v35 = v7;
    v26 = v6;
    v27 = v16;
    sub_1B7585D78(v3, v21, v5, v22, v24, v6, v39);
    v28 = v12;
    v29 = v23;
    v30 = v25;
    v2 = v37;
    v9 = v39;
    v31 = v27;
    v20 = v26;
    v19 = v33;
    v7 = v35;
    sub_1B7585D78(0, v10, v13, v28, v29, v30, v31);
    sub_1B7585D78(v3, v37, v5, v33, v35, v20, v39);

LABEL_8:
    sub_1B72DE64C(v3, v2, v5, v19, v7, v20, v9);
    sub_1B72DE64C(v11, v10, v13, v40, v41, v42, v43);
    return 0;
  }

  v36 = a2[7];
  v38 = a1[7];
  v19 = a1[3];
  v20 = a1[5];
  sub_1B7585D78(0, v2, v5, v19, v7, v6, v9);
  if (v11)
  {
    sub_1B7585D78(v11, v10, v13, v40, v41, v42, v43);
    goto LABEL_8;
  }

  sub_1B7585D78(0, v10, v13, v40, v41, v42, v43);
  sub_1B72DE64C(0, v2, v5, v19, v7, v20, v9);
LABEL_11:

  return sub_1B731F924(v38, v36);
}

uint64_t sub_1B75838CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B7884F60 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7884F80 == a2)
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

void *sub_1B75839F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997DC0, &qword_1B7841AE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758A9A8();
  sub_1B78023C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1B758A9FC();
    sub_1B7801E48();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1B7583B68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536C616974726170 && a2 == 0xEE00737365636375 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
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

unint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV16OutcomeIndicatorO8rawValueAGSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7801D18();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7583CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7583D58()
{
  result = qword_1EB9973B0;
  if (!qword_1EB9973B0)
  {
    result = swift_getWitnessTable(byte_1B78418D8, &_s31TransactionClassificationResultV14SuccessOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9973B0);
  }

  return result;
}

unint64_t sub_1B7583DAC()
{
  result = qword_1EB9973D8;
  if (!qword_1EB9973D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.WalletTransactionCategory, &type metadata for RawBankConnectData.TransactionClassificationResult.WalletTransactionCategory, v0, v1);
    atomic_store(result, &qword_1EB9973D8);
  }

  return result;
}

uint64_t sub_1B7583E00(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9973B8, &qword_1B783D638);
    v10 = sub_1B71A6A8C(a2, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7583E9C()
{
  result = qword_1EB997400;
  if (!qword_1EB997400)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.WalletTransactionCategory, &type metadata for RawBankConnectData.TransactionClassificationResult.WalletTransactionCategory, v0, v1);
    atomic_store(result, &qword_1EB997400);
  }

  return result;
}

unint64_t sub_1B7583EF0()
{
  result = qword_1EB997410;
  if (!qword_1EB997410)
  {
    result = swift_getWitnessTable(a1_15, &_s31TransactionClassificationResultV21PartialSuccessOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997410);
  }

  return result;
}

unint64_t sub_1B7583F44()
{
  result = qword_1EB997428;
  if (!qword_1EB997428)
  {
    result = swift_getWitnessTable(byte_1B7841838, &_s31TransactionClassificationResultV13FailedOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997428);
  }

  return result;
}

unint64_t sub_1B7583F98()
{
  result = qword_1EB997438;
  if (!qword_1EB997438)
  {
    result = swift_getWitnessTable(aYwe7, &_s31TransactionClassificationResultV6EntityO13DiscriminatorVN, v0, v1);
    atomic_store(result, &qword_1EB997438);
  }

  return result;
}

unint64_t sub_1B7583FEC()
{
  result = qword_1EB997468;
  if (!qword_1EB997468)
  {
    result = swift_getWitnessTable(byte_1B78417C0, &_s31TransactionClassificationResultV6EntityO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997468);
  }

  return result;
}

unint64_t sub_1B7584040()
{
  result = qword_1EB997470;
  if (!qword_1EB997470)
  {
    result = swift_getWitnessTable(aI_26, &_s31TransactionClassificationResultV6EntityO18MerchantCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997470);
  }

  return result;
}

unint64_t sub_1B7584094()
{
  result = qword_1EB997480;
  if (!qword_1EB997480)
  {
    result = swift_getWitnessTable(byte_1B7841720, &_s31TransactionClassificationResultV6EntityO15BrandCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997480);
  }

  return result;
}

double sub_1B75840E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1B7584170()
{
  result = qword_1EB9974A8;
  if (!qword_1EB9974A8)
  {
    result = swift_getWitnessTable(byte_1B78416D0, &_s31TransactionClassificationResultV5BrandV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9974A8);
  }

  return result;
}

unint64_t sub_1B75841C4()
{
  result = qword_1EB9974B0;
  if (!qword_1EB9974B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityIdentifier, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIdentifier, v0, v1);
    atomic_store(result, &qword_1EB9974B0);
  }

  return result;
}

unint64_t sub_1B7584218()
{
  result = qword_1EB9974C8;
  if (!qword_1EB9974C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails, &type metadata for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails, v0, v1);
    atomic_store(result, &qword_1EB9974C8);
  }

  return result;
}

unint64_t sub_1B758426C()
{
  result = qword_1EB9974D0;
  if (!qword_1EB9974D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.VendorCategorisation, &type metadata for RawBankConnectData.TransactionClassificationResult.VendorCategorisation, v0, v1);
    atomic_store(result, &qword_1EB9974D0);
  }

  return result;
}

unint64_t sub_1B75842C0()
{
  result = qword_1EB9974E0;
  if (!qword_1EB9974E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityIdentifier, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIdentifier, v0, v1);
    atomic_store(result, &qword_1EB9974E0);
  }

  return result;
}

unint64_t sub_1B7584314()
{
  result = qword_1EB9974F8;
  if (!qword_1EB9974F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails, &type metadata for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails, v0, v1);
    atomic_store(result, &qword_1EB9974F8);
  }

  return result;
}

unint64_t sub_1B7584368()
{
  result = qword_1EB997500;
  if (!qword_1EB997500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.VendorCategorisation, &type metadata for RawBankConnectData.TransactionClassificationResult.VendorCategorisation, v0, v1);
    atomic_store(result, &qword_1EB997500);
  }

  return result;
}

unint64_t sub_1B75843BC()
{
  result = qword_1EB997518;
  if (!qword_1EB997518)
  {
    result = swift_getWitnessTable(a9_11, &_s31TransactionClassificationResultV8MerchantV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997518);
  }

  return result;
}

unint64_t sub_1B7584410()
{
  result = qword_1EB997520;
  if (!qword_1EB997520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.GeographicCoordinates, &type metadata for RawBankConnectData.GeographicCoordinates, v0, v1);
    atomic_store(result, &qword_1EB997520);
  }

  return result;
}

unint64_t sub_1B7584464()
{
  result = qword_1EB997528;
  if (!qword_1EB997528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityPostalAddress, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityPostalAddress, v0, v1);
    atomic_store(result, &qword_1EB997528);
  }

  return result;
}

unint64_t sub_1B75844B8()
{
  result = qword_1EB997538;
  if (!qword_1EB997538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.GeographicCoordinates, &type metadata for RawBankConnectData.GeographicCoordinates, v0, v1);
    atomic_store(result, &qword_1EB997538);
  }

  return result;
}

unint64_t sub_1B758450C()
{
  result = qword_1EB997540;
  if (!qword_1EB997540)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityPostalAddress, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityPostalAddress, v0, v1);
    atomic_store(result, &qword_1EB997540);
  }

  return result;
}

unint64_t sub_1B7584560()
{
  result = qword_1EB997550;
  if (!qword_1EB997550)
  {
    result = swift_getWitnessTable(byte_1B7841630, &_s31TransactionClassificationResultV16EntityIdentifierV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997550);
  }

  return result;
}

unint64_t sub_1B75845B4()
{
  result = qword_1EB997558;
  if (!qword_1EB997558)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityIdentifier.IdentifierType, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIdentifier.IdentifierType, v0, v1);
    atomic_store(result, &qword_1EB997558);
  }

  return result;
}

unint64_t sub_1B7584608()
{
  result = qword_1EB997568;
  if (!qword_1EB997568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityIdentifier.IdentifierType, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIdentifier.IdentifierType, v0, v1);
    atomic_store(result, &qword_1EB997568);
  }

  return result;
}

unint64_t sub_1B758465C()
{
  result = qword_1EB997578;
  if (!qword_1EB997578)
  {
    result = swift_getWitnessTable(aE7_0, &_s31TransactionClassificationResultV20EntityIdentifierTypeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997578);
  }

  return result;
}

unint64_t sub_1B75846B0()
{
  result = qword_1EB997590;
  if (!qword_1EB997590)
  {
    result = swift_getWitnessTable(asc_1B7841590, &_s31TransactionClassificationResultV20EntityContactDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997590);
  }

  return result;
}

unint64_t sub_1B7584724()
{
  result = qword_1EB9975A8;
  if (!qword_1EB9975A8)
  {
    result = swift_getWitnessTable(aY_18, &_s31TransactionClassificationResultV13EntityImageryV9HeroImageV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9975A8);
  }

  return result;
}

unint64_t sub_1B7584778()
{
  result = qword_1EB9975C8;
  if (!qword_1EB9975C8)
  {
    result = swift_getWitnessTable("Ɍe7XZ\a", &_s31TransactionClassificationResultV13EntityImageryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9975C8);
  }

  return result;
}

unint64_t sub_1B75847CC()
{
  result = qword_1EB9975F0;
  if (!qword_1EB9975F0)
  {
    result = swift_getWitnessTable(byte_1B78414A0, &_s31TransactionClassificationResultV17MapsSystemDetailsV14StyleAttributeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9975F0);
  }

  return result;
}

unint64_t sub_1B7584820()
{
  result = qword_1EB997608;
  if (!qword_1EB997608)
  {
    result = swift_getWitnessTable(aI_27, &_s31TransactionClassificationResultV17MapsSystemDetailsV15StyleAttributesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997608);
  }

  return result;
}

unint64_t sub_1B7584874()
{
  result = qword_1EB997620;
  if (!qword_1EB997620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttribute, &type metadata for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttribute, v0, v1);
    atomic_store(result, &qword_1EB997620);
  }

  return result;
}

uint64_t sub_1B75848C8(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB997610, &qword_1B783D720);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7584940()
{
  result = qword_1EB997638;
  if (!qword_1EB997638)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttribute, &type metadata for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttribute, v0, v1);
    atomic_store(result, &qword_1EB997638);
  }

  return result;
}

unint64_t sub_1B7584994()
{
  result = qword_1EB997648;
  if (!qword_1EB997648)
  {
    result = swift_getWitnessTable(byte_1B7841400, &_s31TransactionClassificationResultV17MapsSystemDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997648);
  }

  return result;
}

unint64_t sub_1B75849E8()
{
  result = qword_1EB997650;
  if (!qword_1EB997650)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttributes, &type metadata for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttributes, v0, v1);
    atomic_store(result, &qword_1EB997650);
  }

  return result;
}

unint64_t sub_1B7584A3C()
{
  result = qword_1EB997660;
  if (!qword_1EB997660)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttributes, &type metadata for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttributes, v0, v1);
    atomic_store(result, &qword_1EB997660);
  }

  return result;
}

unint64_t sub_1B7584A90()
{
  result = qword_1EB997670;
  if (!qword_1EB997670)
  {
    result = swift_getWitnessTable(asc_1B78413B0, &_s31TransactionClassificationResultV19EntityPostalAddressV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997670);
  }

  return result;
}

unint64_t sub_1B7584B04()
{
  result = qword_1EB997680;
  if (!qword_1EB997680)
  {
    result = swift_getWitnessTable(byte_1B7841388, &_s31TransactionClassificationResultV17RetryInstructionsO13DiscriminatorVN, v0, v1);
    atomic_store(result, &qword_1EB997680);
  }

  return result;
}

unint64_t sub_1B7584B58()
{
  result = qword_1EB9976A8;
  if (!qword_1EB9976A8)
  {
    result = swift_getWitnessTable(byte_1B7841310, &_s31TransactionClassificationResultV17RetryInstructionsO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9976A8);
  }

  return result;
}

unint64_t sub_1B7584BAC()
{
  result = qword_1EB9976B0;
  if (!qword_1EB9976B0)
  {
    result = swift_getWitnessTable(byte_1B78412C0, &_s31TransactionClassificationResultV17RetryInstructionsO20DoNotRetryCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9976B0);
  }

  return result;
}

unint64_t sub_1B7584C00()
{
  result = qword_1EB9976B8;
  if (!qword_1EB9976B8)
  {
    result = swift_getWitnessTable(aI_28, &_s31TransactionClassificationResultV17RetryInstructionsO15RetryCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9976B8);
  }

  return result;
}

unint64_t sub_1B7584C54()
{
  result = qword_1EB9976C8;
  if (!qword_1EB9976C8)
  {
    result = swift_getWitnessTable(byte_1B7841220, &_s31TransactionClassificationResultV25WalletTransactionCategoryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9976C8);
  }

  return result;
}

unint64_t sub_1B7584CA8()
{
  result = qword_1EB9976D0;
  if (!qword_1EB9976D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.ClassificationSource, &type metadata for RawBankConnectData.TransactionClassificationResult.ClassificationSource, v0, v1);
    atomic_store(result, &qword_1EB9976D0);
  }

  return result;
}

unint64_t sub_1B7584CFC()
{
  result = qword_1EB9976D8;
  if (!qword_1EB9976D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.WalletCategory, &type metadata for RawBankConnectData.TransactionClassificationResult.WalletCategory, v0, v1);
    atomic_store(result, &qword_1EB9976D8);
  }

  return result;
}

unint64_t sub_1B7584D50()
{
  result = qword_1EB9976E8;
  if (!qword_1EB9976E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.ClassificationSource, &type metadata for RawBankConnectData.TransactionClassificationResult.ClassificationSource, v0, v1);
    atomic_store(result, &qword_1EB9976E8);
  }

  return result;
}

unint64_t sub_1B7584DA4()
{
  result = qword_1EB9976F0;
  if (!qword_1EB9976F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.WalletCategory, &type metadata for RawBankConnectData.TransactionClassificationResult.WalletCategory, v0, v1);
    atomic_store(result, &qword_1EB9976F0);
  }

  return result;
}

unint64_t sub_1B7584DF8()
{
  result = qword_1EB997700;
  if (!qword_1EB997700)
  {
    result = swift_getWitnessTable(byte_1B78411D0, &_s31TransactionClassificationResultV20VendorCategorisationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997700);
  }

  return result;
}

unint64_t sub_1B7584E4C()
{
  result = qword_1EB997708;
  if (!qword_1EB997708)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.VendorCategory, &type metadata for RawBankConnectData.TransactionClassificationResult.VendorCategory, v0, v1);
    atomic_store(result, &qword_1EB997708);
  }

  return result;
}

unint64_t sub_1B7584EA0()
{
  result = qword_1EB997718;
  if (!qword_1EB997718)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.VendorCategory, &type metadata for RawBankConnectData.TransactionClassificationResult.VendorCategory, v0, v1);
    atomic_store(result, &qword_1EB997718);
  }

  return result;
}

uint64_t sub_1B7584EF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6574744177656ELL && a2 == 0xEF746E756F437470;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7884FA0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7884FC0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1B758506C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997DD8, &qword_1B7841AE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758AA50();
  sub_1B78023C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1B758AAA4();
    sub_1B7801E48();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1B75851DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44746361746E6F63 && a2 == 0xEE00736C69617465 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79726567616D69 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7884FE0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7885000 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1B7585440(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEF646E6172426465 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44746361746E6F63 && a2 == 0xEE00736C69617465 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7885020 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x79726567616D69 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7884FE0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64416C6174736F70 && a2 == 0xED00007373657264 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7885000 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1B7585798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001B78824E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7885060 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747441656C797473 && a2 == 0xEF73657475626972)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B75858C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2037672291 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746565727473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7885080 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void *sub_1B7585B70(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997DF0, &qword_1B7841AF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758AAF8();
  sub_1B78023C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1B758AB4C();
    sub_1B7801E48();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV14VendorCategoryO8rawValueAGSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7801D18();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV14WalletCategoryO8rawValueAGSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7801D18();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

double sub_1B7585D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1B7585DD8()
{
  result = qword_1EB997728;
  if (!qword_1EB997728)
  {
    result = swift_getWitnessTable(a9_12, &_s19InsightsRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997728);
  }

  return result;
}

unint64_t sub_1B7585E2C()
{
  result = qword_1EB997730;
  if (!qword_1EB997730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.ClassificationBAAIdentification, &type metadata for RawBankConnectData.ClassificationBAAIdentification, v0, v1);
    atomic_store(result, &qword_1EB997730);
  }

  return result;
}

uint64_t sub_1B7585E80(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB99A690, &qword_1B78548C0);
    v10 = sub_1B71A6A8C(a2, type metadata accessor for RawBankConnectData.TransactionForInsights, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7585F3C()
{
  result = qword_1EB997750;
  if (!qword_1EB997750)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.ClassificationBAAIdentification, &type metadata for RawBankConnectData.ClassificationBAAIdentification, v0, v1);
    atomic_store(result, &qword_1EB997750);
  }

  return result;
}

unint64_t sub_1B7585FF8()
{
  result = qword_1EB997770;
  if (!qword_1EB997770)
  {
    result = swift_getWitnessTable(byte_1B7841130, &_s31ClassificationBAAIdentificationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997770);
  }

  return result;
}

unint64_t sub_1B758604C()
{
  result = qword_1EB997778;
  if (!qword_1EB997778)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.BAAIdentification, &type metadata for RawBankConnectData.BAAIdentification, v0, v1);
    atomic_store(result, &qword_1EB997778);
  }

  return result;
}

unint64_t sub_1B75860A0()
{
  result = qword_1EB997788;
  if (!qword_1EB997788)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.BAAIdentification, &type metadata for RawBankConnectData.BAAIdentification, v0, v1);
    atomic_store(result, &qword_1EB997788);
  }

  return result;
}

unint64_t sub_1B75860F4()
{
  result = qword_1EB997798;
  if (!qword_1EB997798)
  {
    result = swift_getWitnessTable("ِe7d\\\a", &_s17BAAIdentificationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997798);
  }

  return result;
}

double sub_1B7586148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B75861AC()
{
  result = qword_1EB9977B8;
  if (!qword_1EB9977B8)
  {
    result = swift_getWitnessTable(asc_1B7841090, &_s22TransactionForInsightsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9977B8);
  }

  return result;
}

unint64_t sub_1B7586200()
{
  result = qword_1EB9977C8;
  if (!qword_1EB9977C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.CreditDebitIndicator, &type metadata for RawBankConnectData.CreditDebitIndicator, v0, v1);
    atomic_store(result, &qword_1EB9977C8);
  }

  return result;
}

unint64_t sub_1B7586254()
{
  result = qword_1EB9977D0;
  if (!qword_1EB9977D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.MerchantInformation, &type metadata for RawBankConnectData.MerchantInformation, v0, v1);
    atomic_store(result, &qword_1EB9977D0);
  }

  return result;
}

uint64_t sub_1B75862A8(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9977D8, &qword_1B783D7E0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7586320()
{
  result = qword_1EB99DA70;
  if (!qword_1EB99DA70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProprietaryBankTransactionCode, &type metadata for ProprietaryBankTransactionCode, v0, v1);
    atomic_store(result, &qword_1EB99DA70);
  }

  return result;
}

unint64_t sub_1B7586374()
{
  result = qword_1EB9977E8;
  if (!qword_1EB9977E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.Transaction.Status, &type metadata for RawBankConnectData.Transaction.Status, v0, v1);
    atomic_store(result, &qword_1EB9977E8);
  }

  return result;
}

unint64_t sub_1B75863C8()
{
  result = qword_1EB9977F0;
  if (!qword_1EB9977F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.Transaction.TransactionType, &type metadata for RawBankConnectData.Transaction.TransactionType, v0, v1);
    atomic_store(result, &qword_1EB9977F0);
  }

  return result;
}

unint64_t sub_1B75864CC()
{
  result = qword_1EB997808;
  if (!qword_1EB997808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.CreditDebitIndicator, &type metadata for RawBankConnectData.CreditDebitIndicator, v0, v1);
    atomic_store(result, &qword_1EB997808);
  }

  return result;
}

unint64_t sub_1B7586520()
{
  result = qword_1EB997810;
  if (!qword_1EB997810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.MerchantInformation, &type metadata for RawBankConnectData.MerchantInformation, v0, v1);
    atomic_store(result, &qword_1EB997810);
  }

  return result;
}

unint64_t sub_1B7586574()
{
  result = qword_1EB99DAE0;
  if (!qword_1EB99DAE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProprietaryBankTransactionCode, &type metadata for ProprietaryBankTransactionCode, v0, v1);
    atomic_store(result, &qword_1EB99DAE0);
  }

  return result;
}

unint64_t sub_1B75865C8()
{
  result = qword_1EB997820;
  if (!qword_1EB997820)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.Transaction.Status, &type metadata for RawBankConnectData.Transaction.Status, v0, v1);
    atomic_store(result, &qword_1EB997820);
  }

  return result;
}

unint64_t sub_1B758661C()
{
  result = qword_1EB997828;
  if (!qword_1EB997828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.Transaction.TransactionType, &type metadata for RawBankConnectData.Transaction.TransactionType, v0, v1);
    atomic_store(result, &qword_1EB997828);
  }

  return result;
}

unint64_t sub_1B7586670()
{
  result = qword_1EB997838;
  if (!qword_1EB997838)
  {
    result = swift_getWitnessTable(aY_19, &_s22TransactionForInsightsV26ApplePayTransactionDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997838);
  }

  return result;
}

unint64_t sub_1B75866C4()
{
  result = qword_1EB997840;
  if (!qword_1EB997840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.DeviceLocation, &type metadata for RawBankConnectData.DeviceLocation, v0, v1);
    atomic_store(result, &qword_1EB997840);
  }

  return result;
}

unint64_t sub_1B7586718()
{
  result = qword_1EB997850;
  if (!qword_1EB997850)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.DeviceLocation, &type metadata for RawBankConnectData.DeviceLocation, v0, v1);
    atomic_store(result, &qword_1EB997850);
  }

  return result;
}

unint64_t sub_1B758676C()
{
  result = qword_1EB997860;
  if (!qword_1EB997860)
  {
    result = swift_getWitnessTable(aAe7_1, &_s14DeviceLocationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997860);
  }

  return result;
}

unint64_t sub_1B75867C0()
{
  result = qword_1EB997878;
  if (!qword_1EB997878)
  {
    result = swift_getWitnessTable(byte_1B7840FA0, &_s21GeographicCoordinatesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997878);
  }

  return result;
}

unint64_t sub_1B7586818()
{
  result = qword_1EB997888;
  if (!qword_1EB997888)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.OutcomeIndicator, &type metadata for RawBankConnectData.TransactionClassificationResult.OutcomeIndicator, v0, v1);
    atomic_store(result, &qword_1EB997888);
  }

  return result;
}

unint64_t sub_1B7586870()
{
  result = qword_1EB997890;
  if (!qword_1EB997890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityIndicator, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIndicator, v0, v1);
    atomic_store(result, &qword_1EB997890);
  }

  return result;
}

unint64_t sub_1B75868C8()
{
  result = qword_1EB997898;
  if (!qword_1EB997898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityIdentifier.IdentifierType, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIdentifier.IdentifierType, v0, v1);
    atomic_store(result, &qword_1EB997898);
  }

  return result;
}

unint64_t sub_1B7586920()
{
  result = qword_1EB9978A0;
  if (!qword_1EB9978A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityIdentifier, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIdentifier, v0, v1);
    atomic_store(result, &qword_1EB9978A0);
  }

  return result;
}

unint64_t sub_1B7586978()
{
  result = qword_1EB9978A8;
  if (!qword_1EB9978A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.RetryStatusIndicator, &type metadata for RawBankConnectData.TransactionClassificationResult.RetryStatusIndicator, v0, v1);
    atomic_store(result, &qword_1EB9978A8);
  }

  return result;
}

unint64_t sub_1B75869D0()
{
  result = qword_1EB9978B0;
  if (!qword_1EB9978B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.VendorCategory, &type metadata for RawBankConnectData.TransactionClassificationResult.VendorCategory, v0, v1);
    atomic_store(result, &qword_1EB9978B0);
  }

  return result;
}

unint64_t sub_1B7586A58()
{
  result = qword_1EB9978C8;
  if (!qword_1EB9978C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.ClassificationSource, &type metadata for RawBankConnectData.TransactionClassificationResult.ClassificationSource, v0, v1);
    atomic_store(result, &qword_1EB9978C8);
  }

  return result;
}

unint64_t sub_1B7586AE0()
{
  result = qword_1EB9978E0;
  if (!qword_1EB9978E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.WalletCategory, &type metadata for RawBankConnectData.TransactionClassificationResult.WalletCategory, v0, v1);
    atomic_store(result, &qword_1EB9978E0);
  }

  return result;
}

unint64_t sub_1B7586B68()
{
  result = qword_1EB9978F8;
  if (!qword_1EB9978F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.InsightsRequestBody, &type metadata for RawBankConnectData.InsightsRequestBody, v0, v1);
    atomic_store(result, &qword_1EB9978F8);
  }

  return result;
}

unint64_t sub_1B7586BC0()
{
  result = qword_1EB997900;
  if (!qword_1EB997900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.ClassificationBAAIdentification, &type metadata for RawBankConnectData.ClassificationBAAIdentification, v0, v1);
    atomic_store(result, &qword_1EB997900);
  }

  return result;
}

unint64_t sub_1B7586C18()
{
  result = qword_1EB997908;
  if (!qword_1EB997908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.BAAIdentification, &type metadata for RawBankConnectData.BAAIdentification, v0, v1);
    atomic_store(result, &qword_1EB997908);
  }

  return result;
}

unint64_t sub_1B7586D00()
{
  result = qword_1EB997920;
  if (!qword_1EB997920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.DeviceLocation, &type metadata for RawBankConnectData.DeviceLocation, v0, v1);
    atomic_store(result, &qword_1EB997920);
  }

  return result;
}

unint64_t sub_1B7586D58()
{
  result = qword_1EB997928;
  if (!qword_1EB997928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.GeographicCoordinates, &type metadata for RawBankConnectData.GeographicCoordinates, v0, v1);
    atomic_store(result, &qword_1EB997928);
  }

  return result;
}

void sub_1B7586DD4(uint64_t a1)
{
  sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B7586E80(uint64_t a1)
{
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_59Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_60Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B75870C4(uint64_t a1)
{
  sub_1B7588060(319, &qword_1EB997960, &qword_1EB9973B8, &qword_1B783D638);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(319);
    if (v2 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EB997968, &type metadata for RawBankConnectData.TransactionClassificationResult.WalletTransactionCategory);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B75871C0(uint64_t a1)
{
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B758723C(uint64_t a1)
{
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B75872E8(uint64_t a1)
{
  sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1B7587440(319, &qword_1EB9979B0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
    if (v2 <= 0x3F)
    {
      sub_1B7587440(319, &qword_1EB9979B8, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
      if (v3 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB9979C0, &type metadata for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails);
        if (v4 <= 0x3F)
        {
          sub_1B7587440(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B7587440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1B75874BC(uint64_t a1)
{
  sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EB9979D8, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIdentifier);
    if (v2 <= 0x3F)
    {
      sub_1B7587440(319, &qword_1EB9979B0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
      if (v3 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB9979E0, &type metadata for RawBankConnectData.GeographicCoordinates);
        if (v4 <= 0x3F)
        {
          sub_1B7587440(319, &qword_1EB9979B8, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
          if (v5 <= 0x3F)
          {
            sub_1B72F2CB8(319, &qword_1EB9979C0, &type metadata for RawBankConnectData.TransactionClassificationResult.MapsSystemDetails);
            if (v6 <= 0x3F)
            {
              sub_1B72F2CB8(319, &qword_1EB9979E8, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityPostalAddress);
              if (v7 <= 0x3F)
              {
                sub_1B7587440(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
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

void sub_1B75876E4(uint64_t a1)
{
  sub_1B7587440(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B75877BC(uint64_t a1)
{
  sub_1B7587440(319, &qword_1EB997A10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  if (v1 <= 0x3F)
  {
    sub_1B7587440(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B75878A0(uint64_t a1)
{
  sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1B77FF4F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B7587934(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7587990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7587A10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7587A58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7587AE0(uint64_t a1)
{
  sub_1B7587B38();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1B7587B38()
{
  if (!qword_1EB997A38)
  {
    v0 = sub_1B77FF988();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB997A38);
    }
  }
}

uint64_t sub_1B7587BA0(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for BankConnectOfflineLab.SharingPreference(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit18RawBankConnectDataO31ClassificationBAAIdentificationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7587D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7587D84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7587DE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7587E2C(uint64_t result, int a2, int a3)
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

void sub_1B7587EC0(uint64_t a1)
{
  sub_1B7587440(319, &qword_1EB997A50, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EB997A58, &type metadata for RawBankConnectData.MerchantInformation);
    if (v2 <= 0x3F)
    {
      sub_1B7588060(319, &qword_1EB997A60, &qword_1EB9977D8, &qword_1B783D7E0);
      if (v3 <= 0x3F)
      {
        sub_1B72F2CB8(319, qword_1EDAFC8E0, &type metadata for ProprietaryBankTransactionCode);
        if (v4 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EB997A68, &type metadata for RawBankConnectData.Transaction.Status);
          if (v5 <= 0x3F)
          {
            sub_1B7587440(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B7588060(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1B7801768();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B75880DC(uint64_t a1)
{
  sub_1B72F2CB8(319, &qword_1EDAF6488, MEMORY[0x1E69E6530]);
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EDAFC578, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB997A80, &type metadata for RawBankConnectData.DeviceLocation);
        if (v4 <= 0x3F)
        {
          sub_1B7587440(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B758824C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B758826C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = (a2 - 1);
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

  *(result + 65) = v3;
  return result;
}

uint64_t _s22TransactionForInsightsV26ApplePayTransactionDetailsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s22TransactionForInsightsV26ApplePayTransactionDetailsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B7588504(uint64_t a1)
{
  result = sub_1B77FF988();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B75886F4()
{
  result = qword_1EB997A98;
  if (!qword_1EB997A98)
  {
    result = swift_getWitnessTable(byte_1B783F760, &_s31TransactionClassificationResultV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997A98);
  }

  return result;
}

unint64_t sub_1B758874C()
{
  result = qword_1EB997AA0;
  if (!qword_1EB997AA0)
  {
    result = swift_getWitnessTable(asc_1B783F840, &_s31TransactionClassificationResultV7OutcomeO16FailedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AA0);
  }

  return result;
}

unint64_t sub_1B75887A4()
{
  result = qword_1EB997AA8;
  if (!qword_1EB997AA8)
  {
    result = swift_getWitnessTable(aQ_24, &_s31TransactionClassificationResultV7OutcomeO24PartialSuccessCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AA8);
  }

  return result;
}

unint64_t sub_1B75887FC()
{
  result = qword_1EB997AB0;
  if (!qword_1EB997AB0)
  {
    result = swift_getWitnessTable(byte_1B783F9B0, &_s31TransactionClassificationResultV7OutcomeO17SuccessCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AB0);
  }

  return result;
}

unint64_t sub_1B7588854()
{
  result = qword_1EB997AB8;
  if (!qword_1EB997AB8)
  {
    result = swift_getWitnessTable(byte_1B783FA68, &_s31TransactionClassificationResultV7OutcomeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AB8);
  }

  return result;
}

unint64_t sub_1B75888AC()
{
  result = qword_1EB997AC0;
  if (!qword_1EB997AC0)
  {
    result = swift_getWitnessTable(asc_1B783FB20, &_s31TransactionClassificationResultV14SuccessOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AC0);
  }

  return result;
}

unint64_t sub_1B7588904()
{
  result = qword_1EB997AC8;
  if (!qword_1EB997AC8)
  {
    result = swift_getWitnessTable(aQ_25, &_s31TransactionClassificationResultV21PartialSuccessOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AC8);
  }

  return result;
}

unint64_t sub_1B758895C()
{
  result = qword_1EB997AD0;
  if (!qword_1EB997AD0)
  {
    result = swift_getWitnessTable(byte_1B783FC90, &_s31TransactionClassificationResultV13FailedOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AD0);
  }

  return result;
}

unint64_t sub_1B75889B4()
{
  result = qword_1EB997AD8;
  if (!qword_1EB997AD8)
  {
    result = swift_getWitnessTable(aIe7, &_s31TransactionClassificationResultV6EntityO18MerchantCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AD8);
  }

  return result;
}

unint64_t sub_1B7588A0C()
{
  result = qword_1EB997AE0;
  if (!qword_1EB997AE0)
  {
    result = swift_getWitnessTable(asc_1B783FE28, &_s31TransactionClassificationResultV6EntityO15BrandCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AE0);
  }

  return result;
}

unint64_t sub_1B7588A64()
{
  result = qword_1EB997AE8;
  if (!qword_1EB997AE8)
  {
    result = swift_getWitnessTable(aI_29, &_s31TransactionClassificationResultV6EntityO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AE8);
  }

  return result;
}

unint64_t sub_1B7588ABC()
{
  result = qword_1EB997AF0;
  if (!qword_1EB997AF0)
  {
    result = swift_getWitnessTable(byte_1B783FF98, &_s31TransactionClassificationResultV5BrandV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AF0);
  }

  return result;
}

unint64_t sub_1B7588B14()
{
  result = qword_1EB997AF8;
  if (!qword_1EB997AF8)
  {
    result = swift_getWitnessTable(byte_1B7840050, &_s31TransactionClassificationResultV8MerchantV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997AF8);
  }

  return result;
}

unint64_t sub_1B7588B6C()
{
  result = qword_1EB997B00;
  if (!qword_1EB997B00)
  {
    result = swift_getWitnessTable(aA_22, &_s31TransactionClassificationResultV16EntityIdentifierV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B00);
  }

  return result;
}

unint64_t sub_1B7588BC4()
{
  result = qword_1EB997B08;
  if (!qword_1EB997B08)
  {
    result = swift_getWitnessTable(byte_1B78401C0, &_s31TransactionClassificationResultV20EntityIdentifierTypeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B08);
  }

  return result;
}

unint64_t sub_1B7588C1C()
{
  result = qword_1EB997B10;
  if (!qword_1EB997B10)
  {
    result = swift_getWitnessTable(aYe7, &_s31TransactionClassificationResultV20EntityContactDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B10);
  }

  return result;
}

unint64_t sub_1B7588C74()
{
  result = qword_1EB997B18;
  if (!qword_1EB997B18)
  {
    result = swift_getWitnessTable(byte_1B7840330, &_s31TransactionClassificationResultV13EntityImageryV9HeroImageV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B18);
  }

  return result;
}

unint64_t sub_1B7588CCC()
{
  result = qword_1EB997B20;
  if (!qword_1EB997B20)
  {
    result = swift_getWitnessTable(aA_23, &_s31TransactionClassificationResultV13EntityImageryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B20);
  }

  return result;
}

unint64_t sub_1B7588D24()
{
  result = qword_1EB997B28;
  if (!qword_1EB997B28)
  {
    result = swift_getWitnessTable(byte_1B78404A0, &_s31TransactionClassificationResultV17MapsSystemDetailsV14StyleAttributeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B28);
  }

  return result;
}

unint64_t sub_1B7588D7C()
{
  result = qword_1EB997B30;
  if (!qword_1EB997B30)
  {
    result = swift_getWitnessTable(byte_1B7840558, &_s31TransactionClassificationResultV17MapsSystemDetailsV15StyleAttributesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B30);
  }

  return result;
}

unint64_t sub_1B7588DD4()
{
  result = qword_1EB997B38;
  if (!qword_1EB997B38)
  {
    result = swift_getWitnessTable(a9_13, &_s31TransactionClassificationResultV17MapsSystemDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B38);
  }

  return result;
}

unint64_t sub_1B7588E2C()
{
  result = qword_1EB997B40;
  if (!qword_1EB997B40)
  {
    result = swift_getWitnessTable(byte_1B78406C8, &_s31TransactionClassificationResultV19EntityPostalAddressV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B40);
  }

  return result;
}

unint64_t sub_1B7588E84()
{
  result = qword_1EB997B48;
  if (!qword_1EB997B48)
  {
    result = swift_getWitnessTable(byte_1B7840848, &_s31TransactionClassificationResultV17RetryInstructionsO15RetryCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B48);
  }

  return result;
}

unint64_t sub_1B7588EDC()
{
  result = qword_1EB997B50;
  if (!qword_1EB997B50)
  {
    result = swift_getWitnessTable(aI_30, &_s31TransactionClassificationResultV17RetryInstructionsO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B50);
  }

  return result;
}

unint64_t sub_1B7588F34()
{
  result = qword_1EB997B58;
  if (!qword_1EB997B58)
  {
    result = swift_getWitnessTable(byte_1B78409B8, &_s31TransactionClassificationResultV25WalletTransactionCategoryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B58);
  }

  return result;
}

unint64_t sub_1B7588F8C()
{
  result = qword_1EB997B60;
  if (!qword_1EB997B60)
  {
    result = swift_getWitnessTable("كe7@c\a", &_s31TransactionClassificationResultV20VendorCategorisationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B60);
  }

  return result;
}

unint64_t sub_1B7588FE4()
{
  result = qword_1EB997B68;
  if (!qword_1EB997B68)
  {
    result = swift_getWitnessTable(asc_1B7840B28, &_s19InsightsRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B68);
  }

  return result;
}

unint64_t sub_1B758903C()
{
  result = qword_1EB997B70;
  if (!qword_1EB997B70)
  {
    result = swift_getWitnessTable(aI_31, &_s31ClassificationBAAIdentificationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B70);
  }

  return result;
}

unint64_t sub_1B7589094()
{
  result = qword_1EB997B78;
  if (!qword_1EB997B78)
  {
    result = swift_getWitnessTable(byte_1B7840C98, &_s17BAAIdentificationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B78);
  }

  return result;
}

unint64_t sub_1B75890EC()
{
  result = qword_1EB997B80;
  if (!qword_1EB997B80)
  {
    result = swift_getWitnessTable(byte_1B7840D50, &_s22TransactionForInsightsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B80);
  }

  return result;
}

unint64_t sub_1B7589144()
{
  result = qword_1EB997B88;
  if (!qword_1EB997B88)
  {
    result = swift_getWitnessTable(aA_24, &_s22TransactionForInsightsV26ApplePayTransactionDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B88);
  }

  return result;
}

unint64_t sub_1B758919C()
{
  result = qword_1EB997B90;
  if (!qword_1EB997B90)
  {
    result = swift_getWitnessTable(byte_1B7840EC0, &_s14DeviceLocationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B90);
  }

  return result;
}

unint64_t sub_1B75891F4()
{
  result = qword_1EB997B98;
  if (!qword_1EB997B98)
  {
    result = swift_getWitnessTable(byte_1B7840F78, &_s21GeographicCoordinatesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997B98);
  }

  return result;
}

unint64_t sub_1B758924C()
{
  result = qword_1EB997BA0;
  if (!qword_1EB997BA0)
  {
    result = swift_getWitnessTable(asc_1B7840EE8, &_s21GeographicCoordinatesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BA0);
  }

  return result;
}

unint64_t sub_1B75892A4()
{
  result = qword_1EB997BA8;
  if (!qword_1EB997BA8)
  {
    result = swift_getWitnessTable(asc_1B7840F10, &_s21GeographicCoordinatesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BA8);
  }

  return result;
}

unint64_t sub_1B75892FC()
{
  result = qword_1EB997BB0;
  if (!qword_1EB997BB0)
  {
    result = swift_getWitnessTable(byte_1B7840E30, &_s14DeviceLocationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BB0);
  }

  return result;
}

unint64_t sub_1B7589354()
{
  result = qword_1EB997BB8;
  if (!qword_1EB997BB8)
  {
    result = swift_getWitnessTable(aWe7, &_s14DeviceLocationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BB8);
  }

  return result;
}

unint64_t sub_1B75893AC()
{
  result = qword_1EB997BC0;
  if (!qword_1EB997BC0)
  {
    result = swift_getWitnessTable(aY_20, &_s22TransactionForInsightsV26ApplePayTransactionDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BC0);
  }

  return result;
}

unint64_t sub_1B7589404()
{
  result = qword_1EB997BC8;
  if (!qword_1EB997BC8)
  {
    result = swift_getWitnessTable(byte_1B7840DA0, &_s22TransactionForInsightsV26ApplePayTransactionDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BC8);
  }

  return result;
}

unint64_t sub_1B758945C()
{
  result = qword_1EB997BD0;
  if (!qword_1EB997BD0)
  {
    result = swift_getWitnessTable(a1_16, &_s22TransactionForInsightsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BD0);
  }

  return result;
}

unint64_t sub_1B75894B4()
{
  result = qword_1EB997BD8;
  if (!qword_1EB997BD8)
  {
    result = swift_getWitnessTable(aI_32, &_s22TransactionForInsightsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BD8);
  }

  return result;
}

unint64_t sub_1B758950C()
{
  result = qword_1EB997BE0;
  if (!qword_1EB997BE0)
  {
    result = swift_getWitnessTable(byte_1B7840C08, &_s17BAAIdentificationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BE0);
  }

  return result;
}

unint64_t sub_1B7589564()
{
  result = qword_1EB997BE8;
  if (!qword_1EB997BE8)
  {
    result = swift_getWitnessTable(byte_1B7840C30, &_s17BAAIdentificationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BE8);
  }

  return result;
}

unint64_t sub_1B75895BC()
{
  result = qword_1EB997BF0;
  if (!qword_1EB997BF0)
  {
    result = swift_getWitnessTable(byte_1B7840B50, &_s31ClassificationBAAIdentificationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BF0);
  }

  return result;
}

unint64_t sub_1B7589614()
{
  result = qword_1EB997BF8;
  if (!qword_1EB997BF8)
  {
    result = swift_getWitnessTable(byte_1B7840B78, &_s31ClassificationBAAIdentificationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997BF8);
  }

  return result;
}

unint64_t sub_1B758966C()
{
  result = qword_1EB997C00;
  if (!qword_1EB997C00)
  {
    result = swift_getWitnessTable(aY_21, &_s19InsightsRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C00);
  }

  return result;
}

unint64_t sub_1B75896C4()
{
  result = qword_1EB997C08;
  if (!qword_1EB997C08)
  {
    result = swift_getWitnessTable(aQ_26, &_s19InsightsRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C08);
  }

  return result;
}

unint64_t sub_1B758971C()
{
  result = qword_1EB997C10;
  if (!qword_1EB997C10)
  {
    result = swift_getWitnessTable(byte_1B78409E0, &_s31TransactionClassificationResultV20VendorCategorisationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C10);
  }

  return result;
}

unint64_t sub_1B7589774()
{
  result = qword_1EB997C18;
  if (!qword_1EB997C18)
  {
    result = swift_getWitnessTable(asc_1B7840A08, &_s31TransactionClassificationResultV20VendorCategorisationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C18);
  }

  return result;
}

unint64_t sub_1B75897CC()
{
  result = qword_1EB997C20;
  if (!qword_1EB997C20)
  {
    result = swift_getWitnessTable(aAe7_2, &_s31TransactionClassificationResultV25WalletTransactionCategoryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C20);
  }

  return result;
}

unint64_t sub_1B7589824()
{
  result = qword_1EB997C28;
  if (!qword_1EB997C28)
  {
    result = swift_getWitnessTable(byte_1B7840950, &_s31TransactionClassificationResultV25WalletTransactionCategoryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C28);
  }

  return result;
}

unint64_t sub_1B758987C()
{
  result = qword_1EB997C30;
  if (!qword_1EB997C30)
  {
    result = swift_getWitnessTable(a9_14, &_s31TransactionClassificationResultV17RetryInstructionsO15RetryCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C30);
  }

  return result;
}

unint64_t sub_1B75898D4()
{
  result = qword_1EB997C38;
  if (!qword_1EB997C38)
  {
    result = swift_getWitnessTable(aQ_27, &_s31TransactionClassificationResultV17RetryInstructionsO15RetryCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C38);
  }

  return result;
}

unint64_t sub_1B758992C()
{
  result = qword_1EB997C40;
  if (!qword_1EB997C40)
  {
    result = swift_getWitnessTable(byte_1B7840768, &_s31TransactionClassificationResultV17RetryInstructionsO20DoNotRetryCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C40);
  }

  return result;
}

unint64_t sub_1B7589984()
{
  result = qword_1EB997C48;
  if (!qword_1EB997C48)
  {
    result = swift_getWitnessTable(byte_1B7840790, &_s31TransactionClassificationResultV17RetryInstructionsO20DoNotRetryCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C48);
  }

  return result;
}

unint64_t sub_1B75899DC()
{
  result = qword_1EB997C50;
  if (!qword_1EB997C50)
  {
    result = swift_getWitnessTable(byte_1B7840870, &_s31TransactionClassificationResultV17RetryInstructionsO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C50);
  }

  return result;
}

unint64_t sub_1B7589A34()
{
  result = qword_1EB997C58;
  if (!qword_1EB997C58)
  {
    result = swift_getWitnessTable(byte_1B7840898, &_s31TransactionClassificationResultV17RetryInstructionsO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C58);
  }

  return result;
}

unint64_t sub_1B7589A8C()
{
  result = qword_1EB997C60;
  if (!qword_1EB997C60)
  {
    result = swift_getWitnessTable(byte_1B7840638, &_s31TransactionClassificationResultV19EntityPostalAddressV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C60);
  }

  return result;
}

unint64_t sub_1B7589AE4()
{
  result = qword_1EB997C68;
  if (!qword_1EB997C68)
  {
    result = swift_getWitnessTable("ѐe7Xh\a", &_s31TransactionClassificationResultV19EntityPostalAddressV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C68);
  }

  return result;
}

unint64_t sub_1B7589B3C()
{
  result = qword_1EB997C70;
  if (!qword_1EB997C70)
  {
    result = swift_getWitnessTable(aQ_28, &_s31TransactionClassificationResultV17MapsSystemDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C70);
  }

  return result;
}

unint64_t sub_1B7589B94()
{
  result = qword_1EB997C78;
  if (!qword_1EB997C78)
  {
    result = swift_getWitnessTable(byte_1B78405A8, &_s31TransactionClassificationResultV17MapsSystemDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C78);
  }

  return result;
}

unint64_t sub_1B7589BEC()
{
  result = qword_1EB997C80;
  if (!qword_1EB997C80)
  {
    result = swift_getWitnessTable(asc_1B78404C8, &_s31TransactionClassificationResultV17MapsSystemDetailsV15StyleAttributesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C80);
  }

  return result;
}

unint64_t sub_1B7589C44()
{
  result = qword_1EB997C88;
  if (!qword_1EB997C88)
  {
    result = swift_getWitnessTable(aA_25, &_s31TransactionClassificationResultV17MapsSystemDetailsV15StyleAttributesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C88);
  }

  return result;
}

unint64_t sub_1B7589C9C()
{
  result = qword_1EB997C90;
  if (!qword_1EB997C90)
  {
    result = swift_getWitnessTable(byte_1B7840410, &_s31TransactionClassificationResultV17MapsSystemDetailsV14StyleAttributeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C90);
  }

  return result;
}

unint64_t sub_1B7589CF4()
{
  result = qword_1EB997C98;
  if (!qword_1EB997C98)
  {
    result = swift_getWitnessTable(byte_1B7840438, &_s31TransactionClassificationResultV17MapsSystemDetailsV14StyleAttributeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997C98);
  }

  return result;
}

unint64_t sub_1B7589D4C()
{
  result = qword_1EB997CA0;
  if (!qword_1EB997CA0)
  {
    result = swift_getWitnessTable(byte_1B7840358, &_s31TransactionClassificationResultV13EntityImageryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CA0);
  }

  return result;
}

unint64_t sub_1B7589DA4()
{
  result = qword_1EB997CA8;
  if (!qword_1EB997CA8)
  {
    result = swift_getWitnessTable(byte_1B7840380, &_s31TransactionClassificationResultV13EntityImageryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CA8);
  }

  return result;
}

unint64_t sub_1B7589DFC()
{
  result = qword_1EB997CB0;
  if (!qword_1EB997CB0)
  {
    result = swift_getWitnessTable(aQ_29, &_s31TransactionClassificationResultV13EntityImageryV9HeroImageV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CB0);
  }

  return result;
}

unint64_t sub_1B7589E54()
{
  result = qword_1EB997CB8;
  if (!qword_1EB997CB8)
  {
    result = swift_getWitnessTable(aI_33, &_s31TransactionClassificationResultV13EntityImageryV9HeroImageV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CB8);
  }

  return result;
}

unint64_t sub_1B7589EAC()
{
  result = qword_1EB997CC0;
  if (!qword_1EB997CC0)
  {
    result = swift_getWitnessTable(asc_1B78401E8, &_s31TransactionClassificationResultV20EntityContactDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CC0);
  }

  return result;
}

unint64_t sub_1B7589F04()
{
  result = qword_1EB997CC8;
  if (!qword_1EB997CC8)
  {
    result = swift_getWitnessTable(asc_1B7840210, &_s31TransactionClassificationResultV20EntityContactDetailsV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CC8);
  }

  return result;
}

unint64_t sub_1B7589F5C()
{
  result = qword_1EB997CD0;
  if (!qword_1EB997CD0)
  {
    result = swift_getWitnessTable(byte_1B7840130, &_s31TransactionClassificationResultV20EntityIdentifierTypeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CD0);
  }

  return result;
}

unint64_t sub_1B7589FB4()
{
  result = qword_1EB997CD8;
  if (!qword_1EB997CD8)
  {
    result = swift_getWitnessTable("ٕe7\\n\a", &_s31TransactionClassificationResultV20EntityIdentifierTypeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CD8);
  }

  return result;
}

unint64_t sub_1B758A00C()
{
  result = qword_1EB997CE0;
  if (!qword_1EB997CE0)
  {
    result = swift_getWitnessTable(aY_22, &_s31TransactionClassificationResultV16EntityIdentifierV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CE0);
  }

  return result;
}

unint64_t sub_1B758A064()
{
  result = qword_1EB997CE8;
  if (!qword_1EB997CE8)
  {
    result = swift_getWitnessTable(byte_1B78400A0, &_s31TransactionClassificationResultV16EntityIdentifierV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CE8);
  }

  return result;
}

unint64_t sub_1B758A0BC()
{
  result = qword_1EB997CF0;
  if (!qword_1EB997CF0)
  {
    result = swift_getWitnessTable(a1_17, &_s31TransactionClassificationResultV8MerchantV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CF0);
  }

  return result;
}

unint64_t sub_1B758A114()
{
  result = qword_1EB997CF8;
  if (!qword_1EB997CF8)
  {
    result = swift_getWitnessTable(aI_34, &_s31TransactionClassificationResultV8MerchantV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997CF8);
  }

  return result;
}

unint64_t sub_1B758A16C()
{
  result = qword_1EB997D00;
  if (!qword_1EB997D00)
  {
    result = swift_getWitnessTable(byte_1B783FF08, &_s31TransactionClassificationResultV5BrandV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D00);
  }

  return result;
}

unint64_t sub_1B758A1C4()
{
  result = qword_1EB997D08;
  if (!qword_1EB997D08)
  {
    result = swift_getWitnessTable(byte_1B783FF30, &_s31TransactionClassificationResultV5BrandV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D08);
  }

  return result;
}

unint64_t sub_1B758A21C()
{
  result = qword_1EB997D10;
  if (!qword_1EB997D10)
  {
    result = swift_getWitnessTable(aY_23, &_s31TransactionClassificationResultV6EntityO15BrandCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D10);
  }

  return result;
}

unint64_t sub_1B758A274()
{
  result = qword_1EB997D18;
  if (!qword_1EB997D18)
  {
    result = swift_getWitnessTable(aQ_30, &_s31TransactionClassificationResultV6EntityO15BrandCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D18);
  }

  return result;
}

unint64_t sub_1B758A2CC()
{
  result = qword_1EB997D20;
  if (!qword_1EB997D20)
  {
    result = swift_getWitnessTable(byte_1B783FCE0, &_s31TransactionClassificationResultV6EntityO18MerchantCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D20);
  }

  return result;
}

unint64_t sub_1B758A324()
{
  result = qword_1EB997D28;
  if (!qword_1EB997D28)
  {
    result = swift_getWitnessTable(asc_1B783FD08, &_s31TransactionClassificationResultV6EntityO18MerchantCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D28);
  }

  return result;
}

unint64_t sub_1B758A37C()
{
  result = qword_1EB997D30;
  if (!qword_1EB997D30)
  {
    result = swift_getWitnessTable(byte_1B783FE50, &_s31TransactionClassificationResultV6EntityO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D30);
  }

  return result;
}

unint64_t sub_1B758A3D4()
{
  result = qword_1EB997D38;
  if (!qword_1EB997D38)
  {
    result = swift_getWitnessTable(byte_1B783FE78, &_s31TransactionClassificationResultV6EntityO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D38);
  }

  return result;
}

unint64_t sub_1B758A42C()
{
  result = qword_1EB997D40;
  if (!qword_1EB997D40)
  {
    result = swift_getWitnessTable(byte_1B783FC00, &_s31TransactionClassificationResultV13FailedOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D40);
  }

  return result;
}

unint64_t sub_1B758A484()
{
  result = qword_1EB997D48;
  if (!qword_1EB997D48)
  {
    result = swift_getWitnessTable(asc_1B783FC28, &_s31TransactionClassificationResultV13FailedOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D48);
  }

  return result;
}

unint64_t sub_1B758A4DC()
{
  result = qword_1EB997D50;
  if (!qword_1EB997D50)
  {
    result = swift_getWitnessTable(byte_1B783FB48, &_s31TransactionClassificationResultV21PartialSuccessOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D50);
  }

  return result;
}

unint64_t sub_1B758A534()
{
  result = qword_1EB997D58;
  if (!qword_1EB997D58)
  {
    result = swift_getWitnessTable(byte_1B783FB70, &_s31TransactionClassificationResultV21PartialSuccessOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D58);
  }

  return result;
}

unint64_t sub_1B758A58C()
{
  result = qword_1EB997D60;
  if (!qword_1EB997D60)
  {
    result = swift_getWitnessTable(aA_26, &_s31TransactionClassificationResultV14SuccessOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D60);
  }

  return result;
}

unint64_t sub_1B758A5E4()
{
  result = qword_1EB997D68;
  if (!qword_1EB997D68)
  {
    result = swift_getWitnessTable(aY_24, &_s31TransactionClassificationResultV14SuccessOutcomeV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D68);
  }

  return result;
}

unint64_t sub_1B758A63C()
{
  result = qword_1EB997D70;
  if (!qword_1EB997D70)
  {
    result = swift_getWitnessTable("ѡe7Dx\a", &_s31TransactionClassificationResultV7OutcomeO17SuccessCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D70);
  }

  return result;
}

unint64_t sub_1B758A694()
{
  result = qword_1EB997D78;
  if (!qword_1EB997D78)
  {
    result = swift_getWitnessTable(byte_1B783F948, &_s31TransactionClassificationResultV7OutcomeO17SuccessCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D78);
  }

  return result;
}

unint64_t sub_1B758A6EC()
{
  result = qword_1EB997D80;
  if (!qword_1EB997D80)
  {
    result = swift_getWitnessTable(byte_1B783F868, &_s31TransactionClassificationResultV7OutcomeO24PartialSuccessCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D80);
  }

  return result;
}

unint64_t sub_1B758A744()
{
  result = qword_1EB997D88;
  if (!qword_1EB997D88)
  {
    result = swift_getWitnessTable(byte_1B783F890, &_s31TransactionClassificationResultV7OutcomeO24PartialSuccessCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D88);
  }

  return result;
}

unint64_t sub_1B758A79C()
{
  result = qword_1EB997D90;
  if (!qword_1EB997D90)
  {
    result = swift_getWitnessTable(aA_27, &_s31TransactionClassificationResultV7OutcomeO16FailedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D90);
  }

  return result;
}

unint64_t sub_1B758A7F4()
{
  result = qword_1EB997D98;
  if (!qword_1EB997D98)
  {
    result = swift_getWitnessTable(aY_25, &_s31TransactionClassificationResultV7OutcomeO16FailedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997D98);
  }

  return result;
}

unint64_t sub_1B758A84C()
{
  result = qword_1EB997DA0;
  if (!qword_1EB997DA0)
  {
    result = swift_getWitnessTable(byte_1B783F9D8, &_s31TransactionClassificationResultV7OutcomeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997DA0);
  }

  return result;
}

unint64_t sub_1B758A8A4()
{
  result = qword_1EB997DA8;
  if (!qword_1EB997DA8)
  {
    result = swift_getWitnessTable(a1_18, &_s31TransactionClassificationResultV7OutcomeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997DA8);
  }

  return result;
}

unint64_t sub_1B758A8FC()
{
  result = qword_1EB997DB0;
  if (!qword_1EB997DB0)
  {
    result = swift_getWitnessTable(asc_1B783F6D0, &_s31TransactionClassificationResultV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997DB0);
  }

  return result;
}

unint64_t sub_1B758A954()
{
  result = qword_1EB997DB8;
  if (!qword_1EB997DB8)
  {
    result = swift_getWitnessTable(a9_15, &_s31TransactionClassificationResultV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997DB8);
  }

  return result;
}

unint64_t sub_1B758A9A8()
{
  result = qword_1EB997DC8;
  if (!qword_1EB997DC8)
  {
    result = swift_getWitnessTable(byte_1B7841F38, &_s31TransactionClassificationResultV7OutcomeO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997DC8);
  }

  return result;
}

unint64_t sub_1B758A9FC()
{
  result = qword_1EB997DD0;
  if (!qword_1EB997DD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.OutcomeIndicator, &type metadata for RawBankConnectData.TransactionClassificationResult.OutcomeIndicator, v0, v1);
    atomic_store(result, &qword_1EB997DD0);
  }

  return result;
}

unint64_t sub_1B758AA50()
{
  result = qword_1EB997DE0;
  if (!qword_1EB997DE0)
  {
    atomic_store(result, &qword_1EB997DE0);
  }

  return result;
}

unint64_t sub_1B758AAA4()
{
  result = qword_1EB997DE8;
  if (!qword_1EB997DE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityIndicator, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIndicator, v0, v1);
    atomic_store(result, &qword_1EB997DE8);
  }

  return result;
}

unint64_t sub_1B758AAF8()
{
  result = qword_1EB997DF8;
  if (!qword_1EB997DF8)
  {
    result = swift_getWitnessTable(asc_1B7841E98, &_s31TransactionClassificationResultV17RetryInstructionsO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997DF8);
  }

  return result;
}

unint64_t sub_1B758AB4C()
{
  result = qword_1EB997E00;
  if (!qword_1EB997E00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.RetryStatusIndicator, &type metadata for RawBankConnectData.TransactionClassificationResult.RetryStatusIndicator, v0, v1);
    atomic_store(result, &qword_1EB997E00);
  }

  return result;
}

unint64_t sub_1B758ABA0()
{
  result = qword_1EB997E10;
  if (!qword_1EB997E10)
  {
    result = swift_getWitnessTable(aQ_31, &_s31TransactionClassificationResultV17RetryInstructionsO7DoRetryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997E10);
  }

  return result;
}

uint64_t sub_1B758ABF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001B78850C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C6153616162 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736568736168 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B758AD14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4374706D65747461 && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796150656C707061 && a2 == 0xEF736C6961746544 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875C70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7475746974736E69 && a2 == 0xED000064496E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6465526969507369 && a2 == 0xED00006465746361 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B78850E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7885100 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B7885120 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B7885140 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7885160 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69)
  {

    return 14;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1B758B1F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001B7885180 == a2;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7880A40 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972747375646E69 && a2 == 0xEC00000065646F43 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B78851A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7880AC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC00000079746943 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B78851C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7880A80 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7876A70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC000000656D614ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEF6C6E6143776152 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEF79746943776152 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEF656D614E776152 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7880BC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xED00006574617453 || (sub_1B78020F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC00000065707954 || (sub_1B78020F8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEB0000000070695ALL || (sub_1B78020F8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4E746E656D796170 && a2 == 0xEE006B726F777465 || (sub_1B78020F8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7880AA0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7880CB0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x686372654D626577 && a2 == 0xEF656D614E746E61 || (sub_1B78020F8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6C7255626577 && a2 == 0xE600000000000000)
  {

    return 22;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_1B758B9A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564757469746C61 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7885020 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B78851E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7885200 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1B758BB14()
{
  result = qword_1EB997E20;
  if (!qword_1EB997E20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.RetryStatusIndicator, &type metadata for RawBankConnectData.TransactionClassificationResult.RetryStatusIndicator, v0, v1);
    atomic_store(result, &qword_1EB997E20);
  }

  return result;
}

unint64_t sub_1B758BB68()
{
  result = qword_1EB997E38;
  if (!qword_1EB997E38)
  {
    result = swift_getWitnessTable("ٮe7،\a", &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIndicator, v0, v1);
    atomic_store(result, &qword_1EB997E38);
  }

  return result;
}

unint64_t sub_1B758BBBC()
{
  result = qword_1EB997E48;
  if (!qword_1EB997E48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.OutcomeIndicator, &type metadata for RawBankConnectData.TransactionClassificationResult.OutcomeIndicator, v0, v1);
    atomic_store(result, &qword_1EB997E48);
  }

  return result;
}

unint64_t sub_1B758BC10()
{
  result = qword_1EB997E50;
  if (!qword_1EB997E50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.WalletCategory, &type metadata for RawBankConnectData.TransactionClassificationResult.WalletCategory, v0, v1);
    atomic_store(result, &qword_1EB997E50);
  }

  return result;
}

unint64_t sub_1B758BC64()
{
  result = qword_1EB997E58;
  if (!qword_1EB997E58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.ClassificationSource, &type metadata for RawBankConnectData.TransactionClassificationResult.ClassificationSource, v0, v1);
    atomic_store(result, &qword_1EB997E58);
  }

  return result;
}

unint64_t sub_1B758BCB8()
{
  result = qword_1EB997E60;
  if (!qword_1EB997E60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.VendorCategory, &type metadata for RawBankConnectData.TransactionClassificationResult.VendorCategory, v0, v1);
    atomic_store(result, &qword_1EB997E60);
  }

  return result;
}

unint64_t sub_1B758BD0C()
{
  result = qword_1EB997E68;
  if (!qword_1EB997E68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.RetryStatusIndicator, &type metadata for RawBankConnectData.TransactionClassificationResult.RetryStatusIndicator, v0, v1);
    atomic_store(result, &qword_1EB997E68);
  }

  return result;
}

unint64_t sub_1B758BD60()
{
  result = qword_1EB997E70;
  if (!qword_1EB997E70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityIdentifier.IdentifierType, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIdentifier.IdentifierType, v0, v1);
    atomic_store(result, &qword_1EB997E70);
  }

  return result;
}

unint64_t sub_1B758BDB4()
{
  result = qword_1EB997E78;
  if (!qword_1EB997E78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityIndicator, &type metadata for RawBankConnectData.TransactionClassificationResult.EntityIndicator, v0, v1);
    atomic_store(result, &qword_1EB997E78);
  }

  return result;
}

unint64_t sub_1B758BE08()
{
  result = qword_1EB997E80;
  if (!qword_1EB997E80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.OutcomeIndicator, &type metadata for RawBankConnectData.TransactionClassificationResult.OutcomeIndicator, v0, v1);
    atomic_store(result, &qword_1EB997E80);
  }

  return result;
}

unint64_t sub_1B758BEA0()
{
  result = qword_1EB997EC8;
  if (!qword_1EB997EC8)
  {
    result = swift_getWitnessTable("Qre7lV\a", &_s31TransactionClassificationResultV7OutcomeO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997EC8);
  }

  return result;
}

unint64_t sub_1B758BEF8()
{
  result = qword_1EB997ED0;
  if (!qword_1EB997ED0)
  {
    result = swift_getWitnessTable(byte_1B7841CB0, &_s31TransactionClassificationResultV6EntityO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997ED0);
  }

  return result;
}

unint64_t sub_1B758BF50()
{
  result = qword_1EB997ED8;
  if (!qword_1EB997ED8)
  {
    result = swift_getWitnessTable(byte_1B7841D68, &_s31TransactionClassificationResultV17RetryInstructionsO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997ED8);
  }

  return result;
}

unint64_t sub_1B758BFA8()
{
  result = qword_1EB997EE0;
  if (!qword_1EB997EE0)
  {
    result = swift_getWitnessTable(aPe7, &_s31TransactionClassificationResultV17RetryInstructionsO7DoRetryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997EE0);
  }

  return result;
}

unint64_t sub_1B758C000()
{
  result = qword_1EB997EE8;
  if (!qword_1EB997EE8)
  {
    result = swift_getWitnessTable(aAE7, &_s31TransactionClassificationResultV17RetryInstructionsO7DoRetryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997EE8);
  }

  return result;
}

unint64_t sub_1B758C058()
{
  result = qword_1EB997EF0;
  if (!qword_1EB997EF0)
  {
    result = swift_getWitnessTable("yye7XT\a", &_s31TransactionClassificationResultV17RetryInstructionsO7DoRetryV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997EF0);
  }

  return result;
}

unint64_t sub_1B758C0B0()
{
  result = qword_1EB997EF8;
  if (!qword_1EB997EF8)
  {
    result = swift_getWitnessTable(byte_1B7841CD8, &_s31TransactionClassificationResultV17RetryInstructionsO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997EF8);
  }

  return result;
}

unint64_t sub_1B758C108()
{
  result = qword_1EB997F00;
  if (!qword_1EB997F00)
  {
    result = swift_getWitnessTable("1ze7,U\a", &_s31TransactionClassificationResultV17RetryInstructionsO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997F00);
  }

  return result;
}

unint64_t sub_1B758C160()
{
  result = qword_1EB997F08;
  if (!qword_1EB997F08)
  {
    result = swift_getWitnessTable(byte_1B7841C20, &_s31TransactionClassificationResultV6EntityO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997F08);
  }

  return result;
}

unint64_t sub_1B758C1B8()
{
  result = qword_1EB997F10;
  if (!qword_1EB997F10)
  {
    result = swift_getWitnessTable(byte_1B7841C48, &_s31TransactionClassificationResultV6EntityO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997F10);
  }

  return result;
}

unint64_t sub_1B758C210()
{
  result = qword_1EB997F18;
  if (!qword_1EB997F18)
  {
    result = swift_getWitnessTable(byte_1B7841B68, &_s31TransactionClassificationResultV7OutcomeO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997F18);
  }

  return result;
}

unint64_t sub_1B758C268()
{
  result = qword_1EB997F20;
  if (!qword_1EB997F20)
  {
    result = swift_getWitnessTable(byte_1B7841B90, &_s31TransactionClassificationResultV7OutcomeO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB997F20);
  }

  return result;
}

uint64_t MapsInsightsService.__allocating_init(connection:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  [*(a1 + 16) resume];
  return v2;
}

uint64_t MapsInsightsService.init(connection:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  [*(a1 + 16) resume];
  return v1;
}

uint64_t MapsInsightsService.__allocating_init(extensionFinder:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B758C3CC, 0, 0);
}

uint64_t sub_1B758C3CC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v5 = type metadata accessor for XPCEntitlementChecker();
  v6 = swift_allocObject();
  v0[5] = v6;
  v7 = sub_1B7202D08(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992510, &qword_1B783D560);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  *(v6 + 16) = v8;
  v0[2] = v6;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1B758C520;

  return static ExtensionServiceConfiguration.makeConnection<A, B>(extensionFinder:withBundleIdentifiers:entitlementChecker:)(v4, 0, (v0 + 2), &type metadata for MapsInsightsServiceConfiguration, v2, v5, &protocol witness table for MapsInsightsServiceConfiguration, v3);
}

uint64_t sub_1B758C520(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1B758C708;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1B758C66C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}