void sub_1B1D52A9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x363532616873;
  if (v2 != 1)
  {
    v4 = 0x323135616873;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 828467315;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1B1D52B9C()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D52C30(uint64_t a1)
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D52CB0(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.TOTP.secret.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableCredential.TOTP.secret.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASImportableCredential.TOTP.userName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ASImportableCredential.TOTP.userName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ASImportableCredential.TOTP.issuer.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ASImportableCredential.TOTP.issuer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_1B1D52F88(uint64_t a1)
{
  sub_1B1D7BE7C();
}

unint64_t sub_1B1D53070@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1D6D14C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B1D530A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x746572636573;
  v5 = 0xE800000000000000;
  v6 = 0x656D616E72657375;
  v7 = 0xE90000000000006DLL;
  v8 = 0x687469726F676C61;
  if (v2 != 4)
  {
    v8 = 0x726575737369;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x646F69726570;
  if (v2 != 1)
  {
    v9 = 0x737469676964;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1B1D53150()
{
  v1 = *v0;
  v2 = 0x746572636573;
  v3 = 0x656D616E72657375;
  v4 = 0x687469726F676C61;
  if (v1 != 4)
  {
    v4 = 0x726575737369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x646F69726570;
  if (v1 != 1)
  {
    v5 = 0x737469676964;
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

unint64_t sub_1B1D531FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6D14C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D53224(uint64_t a1)
{
  v2 = sub_1B1D66D64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D53260(uint64_t a1)
{
  v2 = sub_1B1D66D64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.TOTP.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775B28, &qword_1B1D88F38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66D64();
  sub_1B1D7C62C();
  if (!v2)
  {
    v34 = 0;
    sub_1B1D7C40C();
    v9 = objc_opt_self();
    v10 = sub_1B1D7BE1C();

    v11 = [v9 _keyDataForBase32EncodedString_];

    v12 = sub_1B1D7B4EC();
    v14 = v13;

    v33 = 1;
    v27 = sub_1B1D7C44C();
    v32 = 2;
    v26 = sub_1B1D7C44C();
    v31 = 3;
    v24 = sub_1B1D7C3DC();
    v25 = v16;
    v29 = 4;
    sub_1B1D66DB8();
    sub_1B1D7C43C();
    HIDWORD(v23) = v30;
    v28 = 5;
    v17 = sub_1B1D7C3DC();
    v18 = v8;
    v20 = v19;
    (*(v6 + 8))(v18, v5);
    *a2 = v12;
    *(a2 + 8) = v14;
    v21 = v26;
    *(a2 + 16) = v27;
    *(a2 + 18) = v21;
    v22 = v25;
    *(a2 + 24) = v24;
    *(a2 + 32) = v22;
    *(a2 + 40) = BYTE4(v23);
    *(a2 + 48) = v17;
    *(a2 + 56) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableCredential.TOTP.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775B40, &qword_1B1D88F40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 16);
  v19 = *(v1 + 18);
  v20 = v7;
  v8 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = v8;
  v16 = *(v1 + 40);
  v9 = *(v1 + 56);
  v15[1] = *(v1 + 48);
  v15[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66D64();
  sub_1B1D7C63C();
  v10 = objc_opt_self();
  v11 = sub_1B1D7B4DC();
  v12 = [v10 _base32EncodedStringForKeyData_];

  sub_1B1D7BE4C();
  v28 = 0;
  v13 = v21;
  sub_1B1D7C49C();
  if (v13)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    v27 = 1;
    sub_1B1D7C4DC();
    v26 = 2;
    sub_1B1D7C4DC();
    v25 = 3;
    sub_1B1D7C47C();
    v24 = v16;
    v23 = 4;
    sub_1B1D66E0C();
    sub_1B1D7C4CC();
    v22 = 5;
    sub_1B1D7C47C();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ASImportableCredential.TOTP.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 56);
  sub_1B1D7B4FC();
  sub_1B1D7C5FC();
  sub_1B1D7C5FC();
  sub_1B1D7C5EC();
  if (v2)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D7BE7C();

  if (!v3)
  {
    return sub_1B1D7C5EC();
  }

  sub_1B1D7C5EC();

  return sub_1B1D7BE7C();
}

uint64_t ASImportableCredential.TOTP.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.TOTP.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D53A74()
{
  sub_1B1D7C5CC();
  ASImportableCredential.TOTP.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D53AB8(uint64_t a1)
{
  sub_1B1D7C5CC();
  ASImportableCredential.TOTP.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.WiFi.ssid.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.WiFi.ssid.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = v6;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  return result;
}

uint64_t ASImportableCredential.WiFi.networkSecurityType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.WiFi.networkSecurityType.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  v4 = *a1;
  *(v1 + 72) = a1[1];
  *(v1 + 56) = v4;
  result = v6;
  *(v1 + 88) = v6;
  *(v1 + 104) = v3;
  return result;
}

uint64_t ASImportableCredential.WiFi.passphrase.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.WiFi.passphrase.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160));
  v4 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v4;
  result = v6;
  *(v1 + 144) = v6;
  *(v1 + 160) = v3;
  return result;
}

uint64_t ASImportableCredential.WiFi.hidden.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.WiFi.hidden.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216));
  v4 = *a1;
  *(v1 + 184) = a1[1];
  *(v1 + 168) = v4;
  result = v6;
  *(v1 + 200) = v6;
  *(v1 + 216) = v3;
  return result;
}

__n128 ASImportableCredential.WiFi.init(ssid:networkSecurityType:passphrase:hidden:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 48);
  v15 = a2[1];
  v16 = *a2;
  v13 = *(a1 + 32);
  v14 = a2[2];
  v8 = *(a2 + 6);
  v18 = a3[1];
  v19 = *a3;
  v17 = a3[2];
  v9 = *(a3 + 6);
  v21 = a4[1];
  v22 = *a4;
  v20 = a4[2];
  v10 = *(a4 + 6);
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0u;
  *(a5 + 168) = 0u;
  *(a5 + 184) = 0u;
  *(a5 + 200) = 0u;
  *(a5 + 216) = 0;
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  v11 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v11;
  *(a5 + 32) = v13;
  *(a5 + 48) = v7;
  sub_1B1D0D630(*(a5 + 56), *(a5 + 64), *(a5 + 72), *(a5 + 80), *(a5 + 88), *(a5 + 96), *(a5 + 104));
  *(a5 + 56) = v16;
  *(a5 + 72) = v15;
  *(a5 + 88) = v14;
  *(a5 + 104) = v8;
  sub_1B1D0D630(*(a5 + 112), *(a5 + 120), *(a5 + 128), *(a5 + 136), *(a5 + 144), *(a5 + 152), *(a5 + 160));
  *(a5 + 112) = v19;
  *(a5 + 128) = v18;
  *(a5 + 144) = v17;
  *(a5 + 160) = v9;
  sub_1B1D0D630(*(a5 + 168), *(a5 + 176), *(a5 + 184), *(a5 + 192), *(a5 + 200), *(a5 + 208), *(a5 + 216));
  *(a5 + 168) = v22;
  *(a5 + 184) = v21;
  result = v20;
  *(a5 + 200) = v20;
  *(a5 + 216) = v10;
  return result;
}

unint64_t sub_1B1D53F08()
{
  v1 = 1684632435;
  v2 = 0x6172687073736170;
  if (*v0 != 2)
  {
    v2 = 0x6E6564646968;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1B1D53F80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B1D6D198(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B1D53FA8(uint64_t a1)
{
  v2 = sub_1B1D66E60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D53FE4(uint64_t a1)
{
  v2 = sub_1B1D66E60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.WiFi.encode(to:)(void *a1)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775B50, &qword_1B1D88F48);
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v34 - v3;
  v4 = v1[1];
  v57 = *v1;
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v54 = v1[7];
  v55 = v7;
  v10 = v1[8];
  v52 = v1[9];
  v53 = v10;
  v11 = v1[10];
  v50 = v1[11];
  v51 = v11;
  v12 = v1[12];
  v48 = v1[13];
  v49 = v12;
  v13 = v1[15];
  v47 = v1[14];
  v46 = v13;
  v14 = v1[17];
  v45 = v1[16];
  v44 = v14;
  v15 = v1[19];
  v43 = v1[18];
  v42 = v15;
  v16 = v1[21];
  v41 = v1[20];
  v34 = v16;
  v17 = v1[23];
  v35 = v1[22];
  v36 = v17;
  v18 = v1[25];
  v37 = v1[24];
  v40 = v18;
  v19 = v1[27];
  v39 = v1[26];
  v38 = v19;
  v20 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v21 = v57;
  sub_1B1D66328(v57, v4, v5, v6, v8, v7, v9);
  sub_1B1D66E60();
  v22 = v58;
  v23 = v59;
  sub_1B1D7C63C();
  v62 = v21;
  v63 = v4;
  v24 = v22;
  v64 = v5;
  v65 = v6;
  v66 = v8;
  v67 = v55;
  v68 = v9;
  v69 = 0;
  sub_1B1D663C8();
  v25 = v23;
  v26 = v60;
  sub_1B1D7C48C();
  if (v26)
  {
    sub_1B1D0D630(v62, v63, v64, v65, v66, v67, v68);
    return (*(v61 + 8))(v24, v23);
  }

  else
  {
    v28 = v43;
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v32 = v47;
    sub_1B1D0D630(v62, v63, v64, v65, v66, v67, v68);
    v62 = v54;
    v63 = v53;
    v64 = v52;
    v65 = v51;
    v66 = v50;
    v67 = v49;
    v68 = v48;
    v69 = 1;
    sub_1B1D66328(v54, v53, v52, v51, v50, v49, v48);
    sub_1B1D7C48C();
    sub_1B1D0D630(v62, v63, v64, v65, v66, v67, v68);
    v62 = v32;
    v63 = v31;
    v64 = v30;
    v65 = v29;
    v66 = v28;
    v67 = v42;
    v68 = v41;
    v69 = 2;
    sub_1B1D66328(v32, v31, v30, v29, v28, v42, v41);
    sub_1B1D7C48C();
    sub_1B1D0D630(v62, v63, v64, v65, v66, v67, v68);
    v33 = v61;
    v62 = v34;
    v63 = v35;
    v64 = v36;
    v65 = v37;
    v66 = v40;
    v67 = v39;
    v68 = v38;
    v69 = 3;
    sub_1B1D66328(v34, v35, v36, v37, v40, v39, v38);
    sub_1B1D7C48C();
    sub_1B1D0D630(v62, v63, v64, v65, v66, v67, v68);
    return (*(v33 + 8))(v24, v25);
  }
}

uint64_t ASImportableCredential.WiFi.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[4];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  v8 = v2[11];
  v9 = v2[13];
  v50 = v2[10];
  v51 = v2[14];
  v11 = v2[15];
  v10 = v2[16];
  v48 = v2[18];
  v44 = v2[17];
  v45 = v2[19];
  v42 = v2[12];
  v43 = v2[20];
  v53 = v2[23];
  v54 = v2[24];
  v55 = v2[25];
  v46 = v2[22];
  v47 = v2[26];
  v49 = v2[27];
  v52 = v2[21];
  if (!v4)
  {
    sub_1B1D7C5EC();
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_1B1D7C5EC();
    v19 = v48;
    if (!v48)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v37 = v2[8];
  v38 = v2[7];
  v12 = v2[13];
  v39 = v2[9];
  v40 = v2[15];
  v41 = v2[16];
  v14 = *v2;
  v13 = v2[1];
  v15 = v2[2];
  v16 = v2[3];
  v18 = v2[5];
  v17 = v2[6];
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v14, v13);

  if (v13 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v15);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v17)
  {
    sub_1B1D7BE7C();
    v22 = v14;
    v23 = v13;
    v24 = v15;
    v25 = v16;
    v26 = v4;
    v27 = v18;
    v28 = v17;
  }

  else
  {
    v22 = v14;
    v23 = v13;
    v24 = v15;
    v25 = v16;
    v26 = v4;
    v27 = v18;
    v28 = 0;
  }

  sub_1B1D0D630(v22, v23, v24, v25, v26, v27, v28);
  v11 = v40;
  v10 = v41;
  v5 = v38;
  v7 = v39;
  v9 = v12;
  v6 = v37;
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_13:
  sub_1B1D7C5EC();
  v19 = v48;
  sub_1B1D7C5EC();
  sub_1B1C91B94(v5, v6);

  if (v6 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v7);
  sub_1B1D7BE7C();
  if (!v9)
  {
    sub_1B1D7C5EC();
    sub_1B1D0D630(v5, v6, v7, v50, v8, v42, 0);
    if (!v48)
    {
      goto LABEL_6;
    }

LABEL_19:
    sub_1B1D7C5EC();
    v20 = v49;
    sub_1B1D7C5EC();
    sub_1B1C91B94(v51, v11);
    if (v11 >> 60 == 15)
    {
      v29 = v43;
    }

    else
    {

      v29 = v43;
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888(a1, v10);
    sub_1B1D7BE7C();
    if (v29)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v51, v11, v10, v44, v19, v45, v29);
      if (!v55)
      {
        return sub_1B1D7C5EC();
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v51, v11, v10, v44, v19, v45, 0);
      if (!v55)
      {
        return sub_1B1D7C5EC();
      }
    }

    goto LABEL_24;
  }

  sub_1B1D7C5EC();
  sub_1B1D7BE7C();
  sub_1B1D0D630(v5, v6, v7, v50, v8, v42, v9);
  if (v48)
  {
    goto LABEL_19;
  }

LABEL_6:
  sub_1B1D7C5EC();
  v20 = v49;
  if (!v55)
  {
    return sub_1B1D7C5EC();
  }

LABEL_24:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v52, v46);

  if (v46 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v53);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v20)
  {
    sub_1B1D7BE7C();
    v30 = v52;
    v31 = v46;
    v32 = v53;
    v33 = v54;
    v34 = v55;
    v35 = v47;
    v36 = v20;
  }

  else
  {
    v30 = v52;
    v31 = v46;
    v32 = v53;
    v33 = v54;
    v34 = v55;
    v35 = v47;
    v36 = 0;
  }

  return sub_1B1D0D630(v30, v31, v32, v33, v34, v35, v36);
}

uint64_t ASImportableCredential.WiFi.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.WiFi.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.WiFi.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775B60, &qword_1B1D88F50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  v9 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B1D66E60();
  sub_1B1D7C62C();
  if (v2)
  {
    v53 = v2;
    v58 = 0uLL;
    v56 = 0;
    v54 = 0;
    v55 = 0uLL;
    v97 = 0;
    v59 = 0uLL;
    v57 = 0u;
    v51 = 0u;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    memset(v81, 0, sizeof(v81));
    v82 = 0;
    v83 = 0uLL;
    v84 = 0;
    v85 = v59;
    v86 = v97;
    v87 = v54;
    v89 = v51;
    v88 = v57;
    v90 = v55;
    v91 = v56;
    v92 = v58;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0;
  }

  else
  {
    LOBYTE(v60) = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v11 = *(&v81[0] + 1);
    v48 = v81[1];
    v49 = *&v81[0];
    *v50 = v82;
    *&v50[8] = v83;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v60) = 1;
    sub_1B1D7C3FC();
    *&v51 = a2;
    v46 = v11;
    v47 = *&v81[0];
    v59 = *(v81 + 8);
    v12 = *(&v81[1] + 1);
    v13 = v82;
    v57 = v83;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v60) = 2;
    sub_1B1D7C3FC();
    v97 = v12;
    v54 = v13;
    v15 = *(&v81[0] + 1);
    v14 = *&v81[0];
    v55 = v81[1];
    v56 = v82;
    v58 = v83;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v73 = 3;
    sub_1B1D7C3FC();
    v53 = 0;
    (*(v6 + 8))(v8, v5);
    v16 = v74;
    v17 = v76;
    v43 = v76;
    v44 = v74;
    v40 = v77;
    v41 = v75;
    v18 = v78;
    v42 = v78;
    v39 = v79;
    v19 = v80;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v20 = *(&v48 + 1);
    v21 = v15;
    v45 = v15;
    v22 = v46;
    *&v60 = v49;
    *(&v60 + 1) = v46;
    v23 = v48;
    v61 = v48;
    v62 = *v50;
    *&v63 = *&v50[16];
    *(&v63 + 1) = v47;
    v64 = v59;
    *&v65 = v97;
    *(&v65 + 1) = v54;
    v66 = v57;
    v67 = __PAIR128__(v21, v14);
    v68 = v55;
    *v69 = v56;
    *&v69[8] = v58;
    *&v69[24] = v16;
    v24 = v41;
    *&v70 = v41;
    *(&v70 + 1) = v17;
    v25 = v40;
    *&v71 = v40;
    *(&v71 + 1) = v18;
    v26 = v39;
    *&v72 = v39;
    *(&v72 + 1) = v19;
    v27 = v57;
    v28 = __PAIR128__(v21, v14);
    v29 = *v69;
    v30 = v51;
    *(v51 + 128) = v55;
    v30[9] = v29;
    v30[6] = v27;
    v30[7] = v28;
    v31 = v61;
    *v30 = v60;
    v30[1] = v31;
    v32 = v62;
    v33 = v63;
    v34 = v65;
    v30[4] = v64;
    v30[5] = v34;
    v30[2] = v32;
    v30[3] = v33;
    v35 = *&v69[16];
    v36 = v70;
    v37 = v72;
    v30[12] = v71;
    v30[13] = v37;
    v30[10] = v35;
    v30[11] = v36;
    sub_1B1D66EE4(&v60, v81);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    *&v81[0] = v49;
    *(&v81[0] + 1) = v22;
    *&v81[1] = v23;
    *(&v81[1] + 1) = v20;
    v82 = *v50;
    v83 = *&v50[8];
    v84 = v47;
    v85 = v59;
    v86 = v97;
    v87 = v54;
    v88 = v57;
    *&v89 = v14;
    *(&v89 + 1) = v45;
    v90 = v55;
    v91 = v56;
    v92 = v58;
    *&v93 = v44;
    *(&v93 + 1) = v24;
    *&v94 = v43;
    *(&v94 + 1) = v25;
    *&v95 = v42;
    *(&v95 + 1) = v26;
    v96 = v19;
  }

  return sub_1B1D66EB4(v81);
}

uint64_t sub_1B1D550FC()
{
  sub_1B1D7C5CC();
  ASImportableCredential.WiFi.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D55140(uint64_t a1)
{
  sub_1B1D7C5CC();
  ASImportableCredential.WiFi.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AC0, &qword_1B1D88EF0);
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v40 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A78, &qword_1B1D88EC0);
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AA8, &qword_1B1D88EE0);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775B68, &qword_1B1D88F58);
  *&v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B1D66F1C();
  v15 = v48;
  sub_1B1D7C62C();
  if (!v15)
  {
    v16 = v10;
    *&v48 = v8;
    v17 = v7;
    v18 = v44;
    v19 = v45;
    v20 = v47;
    sub_1B1D66F70();
    sub_1B1D7C43C();
    v21 = v11;
    v22 = v13;
    v23 = v21;
    switch(v53[679])
    {
      case 1:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.APIKey.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        memcpy(v52, v49, 0x150uLL);
        sub_1B1D6707C(v52);
        goto LABEL_19;
      case 2:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.BasicAuthentication.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        *&v52[64] = v49[4];
        *&v52[80] = v49[5];
        *&v52[96] = v49[6];
        *v52 = v49[0];
        *&v52[16] = v49[1];
        *&v52[32] = v49[2];
        *&v52[48] = v49[3];
        sub_1B1D0D67C(v52);
        goto LABEL_19;
      case 3:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.CreditCard.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        memcpy(v52, v49, 0x188uLL);
        sub_1B1D670A8(v52);
        goto LABEL_19;
      case 4:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.CustomFields.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        *v52 = v49[0];
        *&v52[16] = v49[1];
        *&v52[32] = *&v49[2];
        sub_1B1D67034(v52);
        goto LABEL_19;
      case 5:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.DriversLicense.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        memcpy(v52, v49, 0x1F8uLL);
        sub_1B1D67090(v52);
        goto LABEL_19;
      case 6:
        sub_1B1D66FC4(v54, v49);
        __swift_project_boxed_opaque_existential_1(v49, *(&v49[1] + 1));
        sub_1B1D66924();
        sub_1B1D7C62C();
        v25 = sub_1B1D7C40C();
        v26 = v46;
        v37 = v25;
        v39 = v38;
        (*(v41 + 8))(v17, v18);
        (*(v26 + 8))(v22, v23);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        *v52 = v37;
        *&v52[8] = v39;
        sub_1B1D67040(v52);
        memcpy(v53, v52, 0x2A1uLL);
        v36 = v47;
        goto LABEL_20;
      case 7:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.IdentityDocument.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        memcpy(v52, v49, 0x268uLL);
        sub_1B1D67064(v52);
        goto LABEL_19;
      case 8:
        sub_1B1D66FC4(v54, v49);
        __swift_project_boxed_opaque_existential_1(v49, *(&v49[1] + 1));
        sub_1B1D66A88();
        sub_1B1D7C62C();
        sub_1B1D64F70();
        v30 = v42;
        sub_1B1D7C43C();
        v31 = (v46 + 8);
        (*(v43 + 8))(v19, v30);
        (*v31)(v22, v23);
        v48 = v50;
        v46 = v51;
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        *v52 = v48;
        *&v52[16] = v46;
        sub_1B1D67028(v52);
        memcpy(v53, v52, 0x2A1uLL);
        v36 = v20;
        goto LABEL_20;
      case 9:
        sub_1B1D66FC4(v54, &v50);
        __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        sub_1B1D66A34();
        sub_1B1D7C62C();
        sub_1B1D6644C();
        v27 = v48;
        sub_1B1D7C43C();
        v28 = (v46 + 8);
        (*(v40 + 8))(v16, v27);
        (*v28)(v22, v23);
        v32 = v49[0];
        v33 = v49[1];
        v48 = *(&v49[1] + 8);
        v34 = *(&v49[2] + 1);
        v35 = *&v49[3];
        __swift_destroy_boxed_opaque_existential_1Tm(&v50);
        *v52 = v32;
        v52[16] = v33;
        *&v52[24] = v48;
        *&v52[40] = v34;
        *&v52[48] = v35;
        sub_1B1D0D624(v52);
        memcpy(v53, v52, 0x2A1uLL);
        v36 = v20;
        goto LABEL_20;
      case 0xA:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.Passkey.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        *&v52[32] = v49[2];
        *&v52[48] = v49[3];
        *&v52[64] = v49[4];
        *&v52[80] = v49[5];
        *v52 = v49[0];
        *&v52[16] = v49[1];
        sub_1B1D0D618(v52);
        goto LABEL_19;
      case 0xB:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.Passport.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        memcpy(v52, v49, 0x2A0uLL);
        sub_1B1D67058(v52);
        goto LABEL_19;
      case 0xC:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.PersonName.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        memcpy(v52, v49, 0x1F8uLL);
        sub_1B1D6704C(v52);
        goto LABEL_19;
      case 0xD:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.SSHKey.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        *&v52[160] = v49[10];
        *&v52[176] = v49[11];
        *&v52[192] = v49[12];
        *&v52[208] = *&v49[13];
        *&v52[96] = v49[6];
        *&v52[112] = v49[7];
        *&v52[128] = v49[8];
        *&v52[144] = v49[9];
        *&v52[32] = v49[2];
        *&v52[48] = v49[3];
        *&v52[64] = v49[4];
        *&v52[80] = v49[5];
        *v52 = v49[0];
        *&v52[16] = v49[1];
        sub_1B1D67070(v52);
        goto LABEL_19;
      case 0xE:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.TOTP.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        *v52 = v49[0];
        *&v52[16] = v49[1];
        *&v52[32] = v49[2];
        *&v52[48] = v49[3];
        sub_1B1D0CC00(v52);
        goto LABEL_19;
      case 0xF:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.WiFi.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        *&v52[160] = v49[10];
        *&v52[176] = v49[11];
        *&v52[192] = v49[12];
        *&v52[208] = v49[13];
        *&v52[96] = v49[6];
        *&v52[112] = v49[7];
        *&v52[128] = v49[8];
        *&v52[144] = v49[9];
        *&v52[32] = v49[2];
        *&v52[48] = v49[3];
        *&v52[64] = v49[4];
        *&v52[80] = v49[5];
        *v52 = v49[0];
        *&v52[16] = v49[1];
        sub_1B1D6709C(v52);
        goto LABEL_19;
      default:
        v24 = v20;
        sub_1B1D66FC4(v54, &v50);
        ASImportableCredential.Address.init(from:)(&v50, v49);
        (*(v46 + 8))(v22, v23);
        memcpy(v52, v49, 0x150uLL);
        sub_1B1D67088(v52);
LABEL_19:
        memcpy(v53, v52, 0x2A1uLL);
        v36 = v24;
LABEL_20:
        memcpy(v36, v53, 0x2A1uLL);
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

uint64_t ASImportableCredential.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A98, &qword_1B1D88ED8);
  v3 = *(v2 - 8);
  v68 = v2;
  v69 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AB0, &qword_1B1D88EE8);
  v6 = *(v5 - 8);
  v66 = v5;
  v67 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v62 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A68, &qword_1B1D88EB8);
  v65 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775B80, &qword_1B1D88F60);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66F1C();
  v14 = v10;
  sub_1B1D7C63C();
  v15 = v72;
  v75[703] = sub_1B1D3C910();
  sub_1B1D670B4();
  v16 = v73;
  sub_1B1D7C4CC();
  v73 = v16;
  if (!v16)
  {
    v18 = v70;
    v17 = v71;
    v63 = v11;
    memcpy(v75, v15, 0x2A1uLL);
    v19 = sub_1B1D67108(v75);
    v11 = v63;
    switch(v19)
    {
      case 1:
        nullsub_1();
        memcpy(v74, v44, 0x150uLL);
        v21 = v73;
        ASImportableCredential.APIKey.encode(to:)(a1);
        goto LABEL_14;
      case 2:
        nullsub_1();
        v74[3] = v40[3];
        v74[4] = v40[4];
        v74[5] = v40[5];
        v74[6] = v40[6];
        v74[0] = *v40;
        v74[1] = v40[1];
        v74[2] = v40[2];
        v23 = v73;
        ASImportableCredential.BasicAuthentication.encode(to:)(a1);
        goto LABEL_19;
      case 3:
        nullsub_1();
        memcpy(v74, v42, 0x188uLL);
        v23 = v73;
        ASImportableCredential.CreditCard.encode(to:)(a1);
        goto LABEL_19;
      case 4:
        nullsub_1();
        v26 = *(v25 + 32);
        v27 = *(v25 + 16);
        v74[0] = *v25;
        v74[1] = v27;
        *&v74[2] = v26;
        v23 = v73;
        ASImportableCredential.CustomFields.encode(to:)(a1);
        goto LABEL_19;
      case 5:
        nullsub_1();
        memcpy(v74, v46, 0x1F8uLL);
        v23 = v73;
        ASImportableCredential.DriversLicense.encode(to:)(a1);
        goto LABEL_19;
      case 6:
        v72 = v14;
        nullsub_1();
        v49 = v48[1];
        v71 = *v48;
        v69 = v49;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_1B1D66924();
        sub_1B1D7C63C();
        v50 = v73;
        sub_1B1D7C49C();
        v73 = v50;
        (*(v65 + 8))(v9, v18);
        return (*(v63 + 8))(v13, v72);
      case 7:
        nullsub_1();
        memcpy(v74, v43, 0x268uLL);
        v23 = v73;
        ASImportableCredential.IdentityDocument.encode(to:)(a1);
        goto LABEL_19;
      case 8:
        v70 = v13;
        v72 = v14;
        nullsub_1();
        v54 = *v52;
        v53 = v52[1];
        v55 = v52[2];
        v56 = v52[3];
        v57 = a1;
        v58 = a1[3];
        v69 = v57[4];
        __swift_project_boxed_opaque_existential_1(v57, v58);
        sub_1B1CE111C(v54, v53);
        sub_1B1C91B94(v55, v56);
        sub_1B1D66A88();
        sub_1B1D7C63C();
        *&v74[0] = v54;
        *(&v74[0] + 1) = v53;
        *&v74[1] = v55;
        *(&v74[1] + 1) = v56;
        sub_1B1D65048();
        v59 = v66;
        v60 = v73;
        sub_1B1D7C4CC();
        v73 = v60;
        v61 = v74[1];
        sub_1B1CDEFDC(*&v74[0], *(&v74[0] + 1));
        sub_1B1C91AE4(v61, *(&v61 + 1));
        (*(v67 + 8))(v17, v59);
        return (*(v63 + 8))(v70, v72);
      case 9:
        v70 = v13;
        v72 = v14;
        nullsub_1();
        v31 = *v29;
        v30 = *(v29 + 8);
        LODWORD(v71) = *(v29 + 16);
        v32 = *(v29 + 32);
        v33 = *(v29 + 40);
        v34 = *(v29 + 48);
        v66 = *(v29 + 24);
        v67 = v33;
        v35 = a1;
        v36 = a1[3];
        v65 = v35[4];
        __swift_project_boxed_opaque_existential_1(v35, v36);
        sub_1B1C91B94(v31, v30);
        sub_1B1D66A34();

        v37 = v64;
        sub_1B1D7C63C();
        *&v74[0] = v31;
        *(&v74[0] + 1) = v30;
        LOBYTE(v74[1]) = v71;
        *(&v74[1] + 1) = v66;
        *&v74[2] = v32;
        *(&v74[2] + 1) = v67;
        *&v74[3] = v34;
        sub_1B1D663C8();
        v38 = v68;
        v39 = v73;
        sub_1B1D7C4CC();
        v73 = v39;
        sub_1B1C91AE4(*&v74[0], *(&v74[0] + 1));

        (*(v69 + 1))(v37, v38);
        return (*(v63 + 8))(v70, v72);
      case 10:
        nullsub_1();
        v74[2] = v51[2];
        v74[3] = v51[3];
        v74[4] = v51[4];
        v74[5] = v51[5];
        v74[0] = *v51;
        v74[1] = v51[1];
        v23 = v73;
        ASImportableCredential.Passkey.encode(to:)(a1);
        goto LABEL_19;
      case 11:
        nullsub_1();
        memcpy(v74, v24, sizeof(v74));
        v23 = v73;
        ASImportableCredential.Passport.encode(to:)(a1);
        goto LABEL_19;
      case 12:
        nullsub_1();
        memcpy(v74, v28, 0x1F8uLL);
        v23 = v73;
        ASImportableCredential.PersonName.encode(to:)(a1);
        goto LABEL_19;
      case 13:
        nullsub_1();
        v74[10] = *(v47 + 160);
        v74[11] = *(v47 + 176);
        v74[12] = *(v47 + 192);
        *&v74[13] = *(v47 + 208);
        v74[6] = *(v47 + 96);
        v74[7] = *(v47 + 112);
        v74[8] = *(v47 + 128);
        v74[9] = *(v47 + 144);
        v74[2] = *(v47 + 32);
        v74[3] = *(v47 + 48);
        v74[4] = *(v47 + 64);
        v74[5] = *(v47 + 80);
        v74[0] = *v47;
        v74[1] = *(v47 + 16);
        v23 = v73;
        ASImportableCredential.SSHKey.encode(to:)(a1);
        goto LABEL_19;
      case 14:
        nullsub_1();
        v74[0] = *v22;
        v74[1] = v22[1];
        v74[2] = v22[2];
        v74[3] = v22[3];
        v23 = v73;
        ASImportableCredential.TOTP.encode(to:)(a1);
        goto LABEL_19;
      case 15:
        nullsub_1();
        v74[10] = v41[10];
        v74[11] = v41[11];
        v74[12] = v41[12];
        v74[13] = v41[13];
        v74[6] = v41[6];
        v74[7] = v41[7];
        v74[8] = v41[8];
        v74[9] = v41[9];
        v74[2] = v41[2];
        v74[3] = v41[3];
        v74[4] = v41[4];
        v74[5] = v41[5];
        v74[0] = *v41;
        v74[1] = v41[1];
        v23 = v73;
        ASImportableCredential.WiFi.encode(to:)(a1);
LABEL_19:
        v73 = v23;
        return (*(v11 + 8))(v13, v14);
      default:
        nullsub_1();
        memcpy(v74, v20, 0x150uLL);
        v21 = v73;
        ASImportableCredential.Address.encode(to:)(a1);
LABEL_14:
        result = (*(v11 + 8))(v13, v14);
        v73 = v21;
        return result;
    }
  }

  return (*(v11 + 8))(v13, v14);
}

uint64_t ASImportableCredential.hash(into:)(uint64_t a1)
{
  memcpy(__dst, v1, 0x2A1uLL);
  switch(sub_1B1D67108(__dst))
  {
    case 1u:
      nullsub_1();
      v4 = v46;
      v5 = 1;
      goto LABEL_18;
    case 2u:
      nullsub_1();
      v26 = *v24;
      v25 = v24[1];
      v28 = v24[2];
      v27 = v24[3];
      v29 = v24[4];
      v30 = v24[5];
      v31 = v24[6];
      v74 = v24[7];
      v75 = v24[8];
      v32 = v24[11];
      v76 = v24[9];
      v77 = v24[10];
      v72 = v24[12];
      v73 = v24[13];
      MEMORY[0x1B273B630](2);
      if (v29)
      {
        sub_1B1D7C5EC();
        sub_1B1D7C5EC();
        sub_1B1C91B94(v26, v25);

        if (v25 >> 60 != 15)
        {
          sub_1B1D7B4FC();
        }

        sub_1B1D2E888(a1, v28);
        sub_1B1D7BE7C();
        sub_1B1D7C5EC();
        if (v31)
        {
          sub_1B1D7BE7C();
          v58 = v26;
          v59 = v25;
          v60 = v28;
          v61 = v27;
          v62 = v29;
          v63 = v30;
          v64 = v31;
        }

        else
        {
          v58 = v26;
          v59 = v25;
          v60 = v28;
          v61 = v27;
          v62 = v29;
          v63 = v30;
          v64 = 0;
        }

        sub_1B1D0D630(v58, v59, v60, v61, v62, v63, v64);
      }

      else
      {
        sub_1B1D7C5EC();
      }

      if (!v32)
      {
        return sub_1B1D7C5EC();
      }

      sub_1B1D7C5EC();
      sub_1B1D7C5EC();
      sub_1B1C91B94(v74, v75);

      if (v75 >> 60 != 15)
      {
        sub_1B1D7B4FC();
      }

      sub_1B1D2E888(a1, v76);
      sub_1B1D7BE7C();
      sub_1B1D7C5EC();
      if (v73)
      {
        sub_1B1D7BE7C();
        v65 = v74;
        v66 = v75;
        v67 = v76;
        v68 = v77;
        v69 = v32;
        v70 = v72;
        v71 = v73;
      }

      else
      {
        v65 = v74;
        v66 = v75;
        v67 = v76;
        v68 = v77;
        v69 = v32;
        v70 = v72;
        v71 = 0;
      }

      return sub_1B1D0D630(v65, v66, v67, v68, v69, v70, v71);
    case 3u:
      nullsub_1();
      v43 = v42;
      MEMORY[0x1B273B630](3);
      memcpy(v78, v43, 0x188uLL);
      return ASImportableCredential.CreditCard.hash(into:)(a1);
    case 4u:
      nullsub_1();
      v14 = v13[1];
      v15 = v13[3];
      v16 = v13[4];
      MEMORY[0x1B273B630](4);
      if (v14 >> 60 == 15)
      {
        sub_1B1D7C5EC();
        if (v15)
        {
LABEL_7:
          sub_1B1D7C5EC();
          sub_1B1D7BE7C();
          return sub_1B1D58148(a1, v16);
        }
      }

      else
      {
        sub_1B1D7C5EC();
        sub_1B1D7B4FC();
        if (v15)
        {
          goto LABEL_7;
        }
      }

      sub_1B1D7C5EC();
      return sub_1B1D58148(a1, v16);
    case 5u:
      nullsub_1();
      v18 = v47;
      v19 = 5;
      goto LABEL_20;
    case 6u:
      nullsub_1();
      MEMORY[0x1B273B630](6);
      return sub_1B1D7BE7C();
    case 7u:
      nullsub_1();
      v45 = v44;
      MEMORY[0x1B273B630](7);
      memcpy(v78, v45, 0x268uLL);
      return ASImportableCredential.IdentityDocument.hash(into:)(a1);
    case 8u:
      nullsub_1();
      v57 = *(v56 + 24);
      MEMORY[0x1B273B630](8);
      sub_1B1D7B4FC();
      if (v57 >> 60 == 15)
      {
        return sub_1B1D7C5EC();
      }

      sub_1B1D7C5EC();
      return sub_1B1D7B4FC();
    case 9u:
      nullsub_1();
      v21 = *(v20 + 8);
      v22 = *(v20 + 16);
      v23 = *(v20 + 48);
      MEMORY[0x1B273B630](9);
      sub_1B1D7C5EC();
      if (v21 >> 60 != 15)
      {
        sub_1B1D7B4FC();
      }

      sub_1B1D2E888(a1, v22);
      sub_1B1D7BE7C();
      if (!v23)
      {
        return sub_1B1D7C5EC();
      }

      sub_1B1D7C5EC();
      return sub_1B1D7BE7C();
    case 0xAu:
      nullsub_1();
      MEMORY[0x1B273B630](10);
      sub_1B1D7B4FC();
      sub_1B1D7BE7C();
      sub_1B1D7BE7C();
      sub_1B1D7BE7C();
      sub_1B1D7B4FC();
      return sub_1B1D7B4FC();
    case 0xBu:
      nullsub_1();
      v12 = v11;
      MEMORY[0x1B273B630](11);
      memcpy(v78, v12, sizeof(v78));
      return ASImportableCredential.Passport.hash(into:)(a1);
    case 0xCu:
      nullsub_1();
      v18 = v17;
      v19 = 12;
LABEL_20:
      MEMORY[0x1B273B630](v19);
      memcpy(v78, v18, 0x1F8uLL);
      return ASImportableCredential.PersonName.hash(into:)(a1);
    case 0xDu:
      nullsub_1();
      v49 = v48;
      MEMORY[0x1B273B630](13);
      v50 = *(v49 + 176);
      v78[10] = *(v49 + 160);
      v78[11] = v50;
      v78[12] = *(v49 + 192);
      *&v78[13] = *(v49 + 208);
      v51 = *(v49 + 112);
      v78[6] = *(v49 + 96);
      v78[7] = v51;
      v52 = *(v49 + 144);
      v78[8] = *(v49 + 128);
      v78[9] = v52;
      v53 = *(v49 + 48);
      v78[2] = *(v49 + 32);
      v78[3] = v53;
      v54 = *(v49 + 80);
      v78[4] = *(v49 + 64);
      v78[5] = v54;
      v55 = *(v49 + 16);
      v78[0] = *v49;
      v78[1] = v55;
      return ASImportableCredential.SSHKey.hash(into:)(a1);
    case 0xEu:
      nullsub_1();
      v7 = v6;
      MEMORY[0x1B273B630](14);
      v8 = v7[1];
      v78[0] = *v7;
      v78[1] = v8;
      v9 = v7[3];
      v78[2] = v7[2];
      v78[3] = v9;
      return ASImportableCredential.TOTP.hash(into:)(a1);
    case 0xFu:
      nullsub_1();
      v34 = v33;
      MEMORY[0x1B273B630](15);
      v35 = v34[11];
      v78[10] = v34[10];
      v78[11] = v35;
      v36 = v34[13];
      v78[12] = v34[12];
      v78[13] = v36;
      v37 = v34[7];
      v78[6] = v34[6];
      v78[7] = v37;
      v38 = v34[9];
      v78[8] = v34[8];
      v78[9] = v38;
      v39 = v34[3];
      v78[2] = v34[2];
      v78[3] = v39;
      v40 = v34[5];
      v78[4] = v34[4];
      v78[5] = v40;
      v41 = v34[1];
      v78[0] = *v34;
      v78[1] = v41;
      return ASImportableCredential.WiFi.hash(into:)(a1);
    default:
      nullsub_1();
      v4 = v3;
      v5 = 0;
LABEL_18:
      MEMORY[0x1B273B630](v5);
      memcpy(v78, v4, 0x150uLL);
      return ASImportableCredential.APIKey.hash(into:)(a1);
  }
}

uint64_t ASImportableCredential.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D56F8C()
{
  sub_1B1D7C5CC();
  ASImportableCredential.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D56FD0(uint64_t a1)
{
  sub_1B1D7C5CC();
  ASImportableCredential.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D57010(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B273B630](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = v5[3];
      v10 = v5[5];

      sub_1B1D65FF4(v6, v7, v8, v9);

      sub_1B1D7BE7C();
      if (v9)
      {
        sub_1B1D7C5EC();
        sub_1B1D7B4FC();
        sub_1B1D7BE7C();
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1B1D7C5EC();
        if (!v10)
        {
LABEL_9:
          sub_1B1D7C5EC();
          goto LABEL_4;
        }
      }

      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
LABEL_4:

      sub_1B1D66034(v6, v7, v8, v9);

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B1D57150(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B273B630](v4);
  if (v4)
  {
    v6 = (a2 + 104);
    do
    {
      v7 = *(v6 - 9);
      v8 = *(v6 - 8);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      sub_1B1CE111C(v7, v8);

      sub_1B1D7B4FC();
      sub_1B1D7BE7C();
      sub_1B1D7BE7C();
      sub_1B1D7C5EC();
      if (v9)
      {
        sub_1B1D7BE7C();
      }

      v6 += 10;
      sub_1B1D57B28(a1, v10);
      sub_1B1D572B4(a1, v11);
      sub_1B1CDEFDC(v7, v8);

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1B1D572B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1D7B49C();
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v78 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B1D7B53C();
  v83 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v77 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = v56 - v11;
  v12 = type metadata accessor for ASImportableItem(0);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  v17 = *(a2 + 16);
  result = MEMORY[0x1B273B630](v17);
  v74 = v17;
  if (v17)
  {
    v19 = 0;
    v20 = v12[5];
    v72 = v12[6];
    v73 = v20;
    v21 = v12[8];
    v71 = &v15[v12[7]];
    v70 = &v15[v21];
    v22 = v12[9];
    v68 = &v15[v12[10]];
    v69 = v22;
    v23 = v12[11];
    v66 = v12[12];
    v67 = v23;
    v65 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v24 = (v83 + 48);
    v25 = *(v13 + 72);
    v62 = (v83 + 32);
    v63 = v25;
    v60 = v6;
    v61 = (v83 + 8);
    v56[0] = v58 + 8;
    v56[1] = v58 + 16;
    v84 = a1;
    v57 = v4;
    v59 = v15;
    v64 = (v83 + 48);
    do
    {
      v81 = v19;
      sub_1B1D6D404(v65 + v63 * v19, v15, type metadata accessor for ASImportableItem);
      sub_1B1D7B4FC();
      v26 = v75;
      sub_1B1D64DB8(&v15[v73], v75);
      v27 = *v24;
      if ((*v24)(v26, 1, v6) == 1)
      {
        sub_1B1D7C5EC();
      }

      else
      {
        v28 = v77;
        (*v62)(v77, v26, v6);
        sub_1B1D7C5EC();
        sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1B1D7BDEC();
        (*v61)(v28, v6);
      }

      v29 = v78;
      v30 = v76;
      sub_1B1D64DB8(&v15[v72], v76);
      if (v27(v30, 1, v6) == 1)
      {
        sub_1B1D7C5EC();
      }

      else
      {
        v31 = v77;
        (*v62)(v77, v30, v6);
        sub_1B1D7C5EC();
        sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1B1D7BDEC();
        (*v61)(v31, v6);
      }

      v32 = v70;
      v33 = v68;
      sub_1B1D7BE7C();
      if (*(v32 + 1))
      {
        sub_1B1D7C5EC();
        sub_1B1D7BE7C();
      }

      else
      {
        sub_1B1D7C5EC();
      }

      sub_1B1D7C5EC();
      v34 = *v33;
      if (*v33)
      {
        v35 = v33[1];
        sub_1B1D7C5EC();
        v36 = a1;
        MEMORY[0x1B273B630](*(v34 + 16));
        v37 = *(v34 + 16);
        v79 = v34;
        v80 = v35;
        if (v37)
        {
          v38 = v34 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
          v83 = *(v58 + 72);
          v39 = *(v58 + 16);

          v40 = v56[0];
          v41 = v57;
          do
          {
            v39(v29, v38, v41);
            sub_1B1D641B4(&qword_1EB775940, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
            sub_1B1D7BDEC();
            (*v40)(v29, v41);
            v38 += v83;
            --v37;
          }

          while (v37);
        }

        else
        {
        }

        v42 = v80;
        MEMORY[0x1B273B630](*(v80 + 16));
        v43 = *(v42 + 16);
        if (v43)
        {
          v44 = (v42 + 48);
          while (1)
          {
            v83 = v43;
            v45 = *v44;
            v46 = v44[1];
            v47 = v44[2];
            v48 = v44[3];
            v49 = v44[5];
            v82 = v44[4];

            sub_1B1D65FF4(v45, v46, v47, v48);

            sub_1B1D7BE7C();
            if (v48)
            {
              sub_1B1D7C5EC();
              sub_1B1D7B4FC();
              sub_1B1D7BE7C();
              if (!v49)
              {
                goto LABEL_28;
              }
            }

            else
            {
              sub_1B1D7C5EC();
              if (!v49)
              {
LABEL_28:
                sub_1B1D7C5EC();
                goto LABEL_23;
              }
            }

            sub_1B1D7C5EC();
            sub_1B1D7BE7C();
LABEL_23:

            sub_1B1D66034(v45, v46, v47, v48);

            v44 += 8;
            v43 = v83 - 1;
            if (v83 == 1)
            {
              sub_1B1D0C93C(v79, v80);
              a1 = v84;
              goto LABEL_31;
            }
          }
        }

        a1 = v36;
        sub_1B1D0C93C(v79, v42);
LABEL_31:
        v15 = v59;
        v6 = v60;
      }

      else
      {
        sub_1B1D7C5EC();
      }

      v50 = *&v15[v67];
      MEMORY[0x1B273B630](*(v50 + 16));
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = v50 + 40;
        do
        {

          sub_1B1D7BE7C();

          v52 += 16;
          --v51;
        }

        while (v51);
      }

      v53 = *&v15[v66];
      MEMORY[0x1B273B630](*(v53 + 16));
      v54 = *(v53 + 16);
      if (v54)
      {
        v55 = (v53 + 32);
        do
        {
          memcpy(v85, v55, 0x2A1uLL);
          memcpy(v87, v55, sizeof(v87));
          sub_1B1D65C20(v85, v86);
          ASImportableCredential.hash(into:)(a1);
          memcpy(v86, v87, 0x2A1uLL);
          sub_1B1D65C58(v86);
          v55 += 680;
          --v54;
        }

        while (v54);
      }

      v19 = v81 + 1;
      result = sub_1B1D6D46C(v15, type metadata accessor for ASImportableItem);
      v24 = v64;
    }

    while (v19 != v74);
  }

  return result;
}

uint64_t sub_1B1D57B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1D7B53C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v36 - v10;
  v11 = type metadata accessor for ASImportableCollection(0);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  result = MEMORY[0x1B273B630](v15);
  v48 = v15;
  if (v15)
  {
    v17 = 0;
    v18 = v11[5];
    v45 = v11[6];
    v46 = v18;
    v19 = v11[8];
    v44 = &v14[v11[7]];
    v43 = &v14[v19];
    v20 = v11[9];
    v41 = v11[10];
    v42 = v20;
    v40 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v21 = *(v12 + 72);
    v22 = (v5 + 48);
    v36 = (v5 + 8);
    v37 = (v5 + 32);
    v47 = v4;
    v38 = (v5 + 48);
    v39 = v21;
    do
    {
      sub_1B1D6D404(v40 + v39 * v17, v14, type metadata accessor for ASImportableCollection);
      sub_1B1D7B4FC();
      v23 = v49;
      sub_1B1D64DB8(&v14[v46], v49);
      v24 = *v22;
      if ((*v22)(v23, 1, v4) == 1)
      {
        sub_1B1D7C5EC();
      }

      else
      {
        v25 = v51;
        (*v37)(v51, v23, v4);
        sub_1B1D7C5EC();
        sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1B1D7BDEC();
        (*v36)(v25, v4);
      }

      v26 = v50;
      sub_1B1D64DB8(&v14[v45], v50);
      if (v24(v26, 1, v4) == 1)
      {
        sub_1B1D7C5EC();
      }

      else
      {
        v27 = v51;
        (*v37)(v51, v26, v4);
        sub_1B1D7C5EC();
        sub_1B1D641B4(&qword_1EB775778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1B1D7BDEC();
        (*v36)(v27, v4);
      }

      v28 = v43;
      sub_1B1D7BE7C();
      if (*(v28 + 1))
      {
        sub_1B1D7C5EC();
        sub_1B1D7BE7C();
      }

      else
      {
        sub_1B1D7C5EC();
      }

      v29 = *&v14[v42];
      MEMORY[0x1B273B630](*(v29 + 16));
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = (v29 + 56);
        do
        {
          v33 = *(v31 - 3);
          v32 = *(v31 - 2);
          v35 = *(v31 - 1);
          v34 = *v31;
          sub_1B1CE111C(v33, v32);
          sub_1B1C91B94(v35, v34);
          sub_1B1D7B4FC();
          sub_1B1D7C5EC();
          if (v34 >> 60 != 15)
          {
            sub_1B1D7B4FC();
          }

          v31 += 4;
          sub_1B1CDEFDC(v33, v32);
          sub_1B1C91AE4(v35, v34);
          --v30;
        }

        while (v30);
      }

      ++v17;
      sub_1B1D57B28(a1, *&v14[v41]);
      result = sub_1B1D6D46C(v14, type metadata accessor for ASImportableCollection);
      v4 = v47;
      v22 = v38;
    }

    while (v17 != v48);
  }

  return result;
}

uint64_t sub_1B1D58070(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B273B630](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      sub_1B1CE111C(v6, v7);
      sub_1B1C91B94(v8, v9);
      sub_1B1D7B4FC();
      sub_1B1D7C5EC();
      if (v9 >> 60 != 15)
      {
        sub_1B1D7B4FC();
      }

      v5 += 4;
      sub_1B1CDEFDC(v6, v7);
      result = sub_1B1C91AE4(v8, v9);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B1D58148(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B273B630](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = v5[5];
      if (*v5 >> 60 == 15)
      {
        sub_1B1D7C5EC();
        sub_1B1C91B94(v6, v7);
      }

      else
      {
        sub_1B1D7C5EC();
        sub_1B1C91B94(v6, v7);

        sub_1B1D7B4FC();
      }

      v5 += 7;
      sub_1B1D7BE7C();

      sub_1B1D7BE7C();
      sub_1B1D7C5EC();
      if (v8)
      {
        sub_1B1D7BE7C();
      }

      sub_1B1C91AE4(v6, v7);

      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1B1D583E4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1B1CE111C(a3, a4);
          return sub_1B1D038D8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v2 >> 60 != 15)
  {
    if (v6 >> 60 != 15)
    {
      v16 = *(a1 + 48);
      v17 = *(a1 + 32);
      v13 = *(a2 + 40);
      v14 = *(a1 + 40);
      v15 = *(a2 + 48);
      sub_1B1C91B94(v3, v2);
      sub_1B1C91B94(v7, v6);
      v11 = sub_1B1D583E4(v3, v2, v7, v6);
      sub_1B1C91AE4(v7, v6);
      sub_1B1C91AE4(v3, v2);
      if (!v11)
      {
        return 0;
      }

      goto LABEL_7;
    }

LABEL_5:
    sub_1B1C91B94(*a1, v2);
    sub_1B1C91B94(v7, v6);
    sub_1B1C91AE4(v3, v2);
    sub_1B1C91AE4(v7, v6);
    return 0;
  }

  if (v6 >> 60 != 15)
  {
    goto LABEL_5;
  }

  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v13 = *(a2 + 40);
  v14 = *(a1 + 40);
  v15 = *(a2 + 48);
  sub_1B1C91B94(v3, v2);
  sub_1B1C91B94(v7, v6);
  sub_1B1C91AE4(v3, v2);
LABEL_7:
  if (sub_1B1D2CCBC(v4, v8) & 1) != 0 && (v5 == v9 && v17 == v10 || (sub_1B1D7C50C()))
  {
    if (v16)
    {
      if (v15 && (v14 == v13 && v16 == v15 || (sub_1B1D7C50C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v15)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s22AuthenticationServices22ASImportableCredentialO05BasicA0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v47 = a1[7];
  v48 = a1[8];
  v55 = a1[9];
  v57 = a1[10];
  v46 = a1[11];
  v49 = a1[13];
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = a2[6];
  v51 = a2[8];
  v52 = a1[12];
  v16 = a2[9];
  v43 = a2[7];
  v44 = a2[10];
  v45 = a2[12];
  v53 = a2[11];
  v54 = a2[13];
  v59 = v13;
  v60 = v15;
  if (!v7)
  {
    v50 = a2[2];
    v56 = a2[3];
    v42 = a2[9];
    v34 = a1[6];
    v35 = a1[1];
    sub_1B1D66328(v3, v2, v4, v5, 0, v6, v8);
    if (!v14)
    {
      sub_1B1D66328(v9, v10, v50, v56, 0, v59, v60);
      sub_1B1D0D630(v3, v35, v4, v5, 0, v6, v34);
      v24 = v46;
      if (v46)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    sub_1B1D66328(v9, v10, v50, v56, v14, v59, v60);
LABEL_11:
    v68 = v3;
    v69 = v35;
    v70 = v4;
    v71 = v5;
    v72 = v7;
    v73 = v6;
    v74 = v34;
    v75 = v9;
    v76 = v10;
    v77 = v50;
    v78 = v56;
    v79 = v14;
    v37 = v60;
    v80 = v59;
LABEL_17:
    v81 = v37;
    sub_1B1CDEC18(&v68, &qword_1EB775FA8, &qword_1B1D93648);
    return 0;
  }

  v68 = *a1;
  v69 = v2;
  v70 = v4;
  v71 = v5;
  v72 = v7;
  v73 = v6;
  v74 = v8;
  if (!v14)
  {
    v56 = v11;
    v58 = v2;
    v34 = v8;
    sub_1B1D66328(v3, v2, v4, v5, v7, v6, v8);
    v50 = v12;
    v36 = v12;
    v35 = v58;
    sub_1B1D66328(v9, v10, v36, v56, 0, v59, v60);
    sub_1B1D66328(v3, v58, v4, v5, v7, v6, v34);
    sub_1B1C91AE4(v3, v58);

    goto LABEL_11;
  }

  v41 = v6;
  v42 = v16;
  v61 = v9;
  v62 = v10;
  v63 = v12;
  v64 = v11;
  v65 = v14;
  v66 = v13;
  v67 = v15;
  v40 = v4;
  v17 = v4;
  v18 = v5;
  v19 = v5;
  v20 = v6;
  v21 = v8;
  v22 = v2;
  sub_1B1D66328(v3, v2, v17, v19, v7, v20, v8);
  sub_1B1D66328(v9, v10, v12, v11, v14, v59, v60);
  sub_1B1D66328(v3, v22, v40, v18, v7, v41, v21);
  v23 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v68, &v61);
  sub_1B1C91AE4(v61, v62);

  sub_1B1C91AE4(v68, v69);

  sub_1B1D0D630(v3, v22, v40, v18, v7, v41, v21);
  if (v23)
  {
    v24 = v46;
    if (v46)
    {
LABEL_5:
      v26 = v47;
      v25 = v48;
      v68 = v47;
      v69 = v48;
      v70 = v55;
      v71 = v57;
      v27 = v51;
      v28 = v52;
      v72 = v24;
      v73 = v52;
      v29 = v49;
      v74 = v49;
      v31 = v44;
      v30 = v45;
      if (v53)
      {
        v61 = v43;
        v62 = v51;
        v63 = v42;
        v64 = v44;
        v65 = v53;
        v66 = v45;
        v67 = v54;
        sub_1B1D66328(v47, v48, v55, v57, v24, v52, v49);
        sub_1B1D66328(v43, v51, v42, v44, v53, v45, v54);
        sub_1B1D66328(v47, v48, v55, v57, v24, v52, v49);
        v32 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v68, &v61);
        sub_1B1C91AE4(v61, v62);

        sub_1B1C91AE4(v68, v69);

        sub_1B1D0D630(v47, v48, v55, v57, v24, v52, v49);
        return (v32 & 1) != 0;
      }

      sub_1B1D66328(v47, v48, v55, v57, v24, v52, v49);
      v39 = v43;
      sub_1B1D66328(v43, v51, v42, v44, 0, v45, v54);
      v38 = v55;
      sub_1B1D66328(v47, v48, v55, v57, v24, v52, v49);
      sub_1B1C91AE4(v47, v48);

      goto LABEL_16;
    }

LABEL_13:
    v26 = v47;
    v25 = v48;
    v38 = v55;
    v28 = v52;
    v29 = v49;
    sub_1B1D66328(v47, v48, v55, v57, 0, v52, v49);
    v31 = v44;
    v30 = v45;
    v27 = v51;
    if (!v53)
    {
      sub_1B1D66328(v43, v51, v42, v44, 0, v45, v54);
      sub_1B1D0D630(v47, v48, v55, v57, 0, v52, v49);
      return 1;
    }

    v39 = v43;
    sub_1B1D66328(v43, v51, v42, v44, v53, v45, v54);
LABEL_16:
    v68 = v26;
    v69 = v25;
    v70 = v38;
    v71 = v57;
    v72 = v24;
    v73 = v28;
    v74 = v29;
    v75 = v39;
    v76 = v27;
    v77 = v42;
    v37 = v54;
    v78 = v31;
    v79 = v53;
    v80 = v30;
    goto LABEL_17;
  }

  return 0;
}

BOOL _s22AuthenticationServices22ASImportableCredentialO10CreditCardV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v187 = a1[1];
  v3 = a1[2];
  v188 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v189 = a1[6];
  v184 = a1[7];
  v174 = a1[8];
  v176 = a1[9];
  v175 = a1[10];
  v173 = a1[11];
  v178 = a1[12];
  v179 = a1[13];
  v164 = a1[14];
  v165 = a1[15];
  v160 = a1[16];
  v161 = a1[17];
  v168 = a1[18];
  v162 = a1[19];
  v163 = a1[20];
  v150 = a1[21];
  v151 = a1[22];
  v143 = a1[23];
  v144 = a1[24];
  v148 = a1[25];
  v145 = a1[26];
  v152 = a1[27];
  v131 = a1[29];
  v132 = a1[30];
  v140 = a1[31];
  v133 = a1[32];
  v141 = a1[33];
  v136 = a1[28];
  v137 = a1[34];
  v6 = a1[37];
  v124 = a1[35];
  v125 = a1[36];
  v7 = a1[38];
  v123 = a1[39];
  v9 = a1[40];
  v8 = a1[41];
  v11 = a1[42];
  v10 = a1[43];
  v13 = a1[44];
  v12 = a1[45];
  v15 = a1[46];
  v14 = a1[47];
  v16 = a1[48];
  v17 = *a2;
  v18 = a2[1];
  v20 = a2[2];
  v19 = a2[3];
  v21 = a2[4];
  v186 = a2[5];
  v22 = a2[6];
  v180 = a2[7];
  v177 = a2[8];
  v181 = a2[9];
  v182 = a2[10];
  v171 = a2[11];
  v172 = a2[12];
  v183 = a2[13];
  v166 = a2[14];
  v169 = a2[15];
  v170 = a2[16];
  v157 = a2[17];
  v167 = a2[18];
  v158 = a2[19];
  v159 = a2[20];
  v153 = a2[21];
  v154 = a2[22];
  v155 = a2[23];
  v156 = a2[24];
  v149 = a2[25];
  v146 = a2[26];
  v147 = a2[27];
  v142 = a2[28];
  v134 = a2[29];
  v139 = a2[30];
  v135 = a2[31];
  v138 = a2[32];
  v129 = a2[33];
  v130 = a2[34];
  v126 = a2[35];
  v127 = a2[36];
  v122 = a2[37];
  v119 = a2[38];
  v128 = a2[39];
  v120 = a2[40];
  v23 = a2[42];
  v121 = a2[41];
  v25 = a2[43];
  v24 = a2[44];
  v27 = a2[45];
  v26 = a2[46];
  v29 = a2[47];
  v28 = a2[48];
  if (!v5)
  {
    v114 = v6;
    v115 = v7;
    v116 = v8;
    v117 = v9;
    v109 = a2[42];
    v110 = a2[46];
    v106 = a2[43];
    v107 = a2[44];
    v100 = a2[45];
    v101 = a2[47];
    v102 = a2[48];
    v103 = v11;
    v108 = v15;
    v104 = v10;
    v105 = v14;
    v111 = v13;
    v112 = v12;
    v113 = v16;
    sub_1B1D66328(v2, v187, v3, v188, 0, v4, v189);
    if (!v21)
    {
      sub_1B1D66328(v17, v18, v20, v19, 0, v186, v22);
      sub_1B1D0D630(v2, v187, v3, v188, 0, v4, v189);
      v32 = v173;
      if (v173)
      {
        goto LABEL_5;
      }

LABEL_16:
      v46 = v184;
      v33 = v174;
      v47 = v176;
      v48 = v175;
      v49 = v178;
      v34 = v179;
      sub_1B1D66328(v184, v174, v176, v175, 0, v178, v179);
      v50 = v172;
      v35 = v177;
      v36 = v171;
      if (!v171)
      {
        sub_1B1D66328(v180, v177, v181, v182, 0, v172, v183);
        sub_1B1D0D630(v184, v174, v176, v175, 0, v178, v179);
        v38 = v168;
        if (v168)
        {
          goto LABEL_8;
        }

LABEL_21:
        v51 = v164;
        v52 = v165;
        v53 = v160;
        v54 = v161;
        v39 = v162;
        v40 = v163;
        sub_1B1D66328(v164, v165, v160, v161, 0, v162, v163);
        if (!v167)
        {
          sub_1B1D66328(v166, v169, v170, v157, 0, v158, v159);
          sub_1B1D0D630(v164, v165, v160, v161, 0, v162, v163);
          goto LABEL_26;
        }

        v56 = v157;
        v55 = v158;
        v57 = v159;
        sub_1B1D66328(v166, v169, v170, v157, v167, v158, v159);
        v38 = v168;
        goto LABEL_24;
      }

      sub_1B1D66328(v180, v177, v181, v182, v171, v172, v183);
      goto LABEL_19;
    }

    v42 = v19;
    v185 = v19;
    v43 = v2;
    v44 = v186;
    sub_1B1D66328(v17, v18, v20, v42, v21, v186, v22);
LABEL_14:
    v197 = v43;
    v198 = v187;
    v199 = v3;
    v200 = v188;
    v201 = v5;
    v202 = v4;
    v203 = v189;
    v204 = v17;
    v205 = v18;
    v206 = v20;
    v207 = v185;
    v208 = v21;
    v209 = v44;
    v210 = v22;
LABEL_44:
    sub_1B1CDEC18(&v197, &qword_1EB775FA8, &qword_1B1D93648);
    return 0;
  }

  v197 = v2;
  v198 = v187;
  v199 = v3;
  v200 = v188;
  v201 = v5;
  v202 = v4;
  v203 = v189;
  v185 = v19;
  if (!v21)
  {
    sub_1B1D66328(v2, v187, v3, v188, v5, v4, v189);
    v45 = v19;
    v43 = v2;
    v44 = v186;
    sub_1B1D66328(v17, v18, v20, v45, 0, v186, v22);
    sub_1B1D66328(v43, v187, v3, v188, v5, v4, v189);
    sub_1B1C91AE4(v43, v187);

    goto LABEL_14;
  }

  v114 = v6;
  v115 = v7;
  v116 = v8;
  v117 = v9;
  v109 = v23;
  v110 = v26;
  v106 = v25;
  v107 = v24;
  v100 = v27;
  v101 = v29;
  v102 = v28;
  v103 = v11;
  v108 = v15;
  v104 = v10;
  v105 = v14;
  v111 = v13;
  v112 = v12;
  v113 = v16;
  v190 = v17;
  v191 = v18;
  v192 = v20;
  v193 = v19;
  v194 = v21;
  v195 = v186;
  v196 = v22;
  v118 = v21;
  v30 = v2;
  sub_1B1D66328(v2, v187, v3, v188, v5, v4, v189);
  sub_1B1D66328(v17, v18, v20, v19, v118, v186, v22);
  sub_1B1D66328(v2, v187, v3, v188, v5, v4, v189);
  v31 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v197, &v190);
  sub_1B1C91AE4(v190, v191);

  sub_1B1C91AE4(v197, v198);

  sub_1B1D0D630(v30, v187, v3, v188, v5, v4, v189);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  v32 = v173;
  if (!v173)
  {
    goto LABEL_16;
  }

LABEL_5:
  v33 = v174;
  v197 = v184;
  v198 = v174;
  v199 = v176;
  v200 = v175;
  v201 = v32;
  v202 = v178;
  v34 = v179;
  v203 = v179;
  v35 = v177;
  v36 = v171;
  if (!v171)
  {
    sub_1B1D66328(v184, v174, v176, v175, v32, v178, v179);
    v50 = v172;
    sub_1B1D66328(v180, v177, v181, v182, 0, v172, v183);
    v47 = v176;
    sub_1B1D66328(v184, v174, v176, v175, v32, v178, v179);
    sub_1B1C91AE4(v184, v174);

    v48 = v175;
    v49 = v178;
    v46 = v184;
LABEL_19:
    v197 = v46;
    v198 = v33;
    v199 = v47;
    v200 = v48;
    v201 = v32;
    v202 = v49;
    v203 = v34;
    v204 = v180;
    v205 = v35;
    v206 = v181;
    v207 = v182;
    v208 = v36;
    v209 = v50;
    v210 = v183;
    goto LABEL_44;
  }

  v190 = v180;
  v191 = v177;
  v192 = v181;
  v193 = v182;
  v194 = v171;
  v195 = v172;
  v196 = v183;
  sub_1B1D66328(v184, v174, v176, v175, v32, v178, v179);
  sub_1B1D66328(v180, v177, v181, v182, v171, v172, v183);
  sub_1B1D66328(v184, v174, v176, v175, v32, v178, v179);
  v37 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v197, &v190);
  sub_1B1C91AE4(v190, v191);

  sub_1B1C91AE4(v197, v198);

  sub_1B1D0D630(v184, v174, v176, v175, v32, v178, v179);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

  v38 = v168;
  if (!v168)
  {
    goto LABEL_21;
  }

LABEL_8:
  v197 = v164;
  v198 = v165;
  v199 = v160;
  v200 = v161;
  v39 = v162;
  v201 = v38;
  v202 = v162;
  v40 = v163;
  v203 = v163;
  if (!v167)
  {
    v51 = v164;
    v52 = v165;
    v53 = v160;
    v54 = v161;
    sub_1B1D66328(v164, v165, v160, v161, v38, v162, v163);
    v56 = v157;
    v55 = v158;
    v57 = v159;
    sub_1B1D66328(v166, v169, v170, v157, 0, v158, v159);
    sub_1B1D66328(v164, v165, v160, v161, v38, v162, v163);
    sub_1B1C91AE4(v164, v165);

LABEL_24:
    v197 = v51;
    v198 = v52;
    v199 = v53;
    v200 = v54;
    v201 = v38;
    v202 = v39;
    v203 = v40;
    v204 = v166;
    v205 = v169;
    v206 = v170;
    v207 = v56;
    v208 = v167;
    v209 = v55;
    v210 = v57;
    goto LABEL_44;
  }

  v190 = v166;
  v191 = v169;
  v192 = v170;
  v193 = v157;
  v194 = v167;
  v195 = v158;
  v196 = v159;
  sub_1B1D66328(v164, v165, v160, v161, v38, v162, v163);
  sub_1B1D66328(v166, v169, v170, v157, v167, v158, v159);
  sub_1B1D66328(v164, v165, v160, v161, v38, v162, v163);
  v41 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v197, &v190);
  sub_1B1C91AE4(v190, v191);

  sub_1B1C91AE4(v197, v198);

  sub_1B1D0D630(v164, v165, v160, v161, v168, v162, v163);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  if (!v148)
  {
    v59 = v150;
    v58 = v151;
    v60 = v143;
    v61 = v144;
    v65 = v145;
    v62 = v152;
    sub_1B1D66328(v150, v151, v143, v144, 0, v145, v152);
    v63 = v149;
    if (!v149)
    {
      sub_1B1D66328(v153, v154, v155, v156, 0, v146, v147);
      sub_1B1D0D630(v150, v151, v143, v144, 0, v145, v152);
      goto LABEL_36;
    }

    v67 = v146;
    v66 = v147;
    sub_1B1D66328(v153, v154, v155, v156, v149, v146, v147);
    v68 = 0;
LABEL_33:
    v197 = v59;
    v198 = v58;
    v199 = v60;
    v200 = v61;
    v201 = v68;
    v202 = v65;
    v203 = v62;
    v204 = v153;
    v205 = v154;
    v206 = v155;
    v207 = v156;
    v208 = v63;
LABEL_34:
    v209 = v67;
    v210 = v66;
    goto LABEL_44;
  }

  v59 = v150;
  v58 = v151;
  v197 = v150;
  v198 = v151;
  v60 = v143;
  v61 = v144;
  v199 = v143;
  v200 = v144;
  v201 = v148;
  v202 = v145;
  v62 = v152;
  v203 = v152;
  v63 = v149;
  if (!v149)
  {
    v68 = v148;
    v65 = v145;
    sub_1B1D66328(v150, v151, v143, v144, v148, v145, v152);
    v67 = v146;
    v66 = v147;
    sub_1B1D66328(v153, v154, v155, v156, 0, v146, v147);
    sub_1B1D66328(v150, v151, v143, v144, v148, v145, v152);
    sub_1B1C91AE4(v150, v151);

    goto LABEL_33;
  }

  v190 = v153;
  v191 = v154;
  v192 = v155;
  v193 = v156;
  v194 = v149;
  v195 = v146;
  v196 = v147;
  sub_1B1D66328(v150, v151, v143, v144, v148, v145, v152);
  sub_1B1D66328(v153, v154, v155, v156, v149, v146, v147);
  sub_1B1D66328(v150, v151, v143, v144, v148, v145, v152);
  v64 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v197, &v190);
  sub_1B1C91AE4(v190, v191);

  sub_1B1C91AE4(v197, v198);

  sub_1B1D0D630(v150, v151, v143, v144, v148, v145, v152);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  if (!v133)
  {
    v73 = v136;
    v69 = v137;
    v75 = v131;
    v74 = v132;
    sub_1B1D66328(v136, v131, v132, v140, 0, v141, v137);
    v70 = v134;
    v71 = v135;
    if (!v138)
    {
      sub_1B1D66328(v142, v134, v139, v135, 0, v129, v130);
      sub_1B1D0D630(v136, v131, v132, v140, 0, v141, v137);
      goto LABEL_48;
    }

    v76 = v129;
    v77 = v130;
    sub_1B1D66328(v142, v134, v139, v135, v138, v129, v130);
    v78 = v140;
    v79 = 0;
LABEL_43:
    v197 = v73;
    v198 = v75;
    v199 = v74;
    v200 = v78;
    v201 = v79;
    v202 = v141;
    v203 = v69;
    v204 = v142;
    v205 = v70;
    v206 = v139;
    v207 = v71;
    v208 = v138;
    v209 = v76;
    v210 = v77;
    goto LABEL_44;
  }

  v69 = v137;
  v197 = v136;
  v198 = v131;
  v199 = v132;
  v200 = v140;
  v201 = v133;
  v202 = v141;
  v203 = v137;
  v70 = v134;
  v71 = v135;
  if (!v138)
  {
    v73 = v136;
    v75 = v131;
    v74 = v132;
    v79 = v133;
    sub_1B1D66328(v136, v131, v132, v140, v133, v141, v137);
    v76 = v129;
    v77 = v130;
    sub_1B1D66328(v142, v134, v139, v135, 0, v129, v130);
    sub_1B1D66328(v136, v131, v132, v140, v133, v141, v137);
    sub_1B1C91AE4(v136, v131);

    v78 = v140;
    goto LABEL_43;
  }

  v190 = v142;
  v191 = v134;
  v192 = v139;
  v193 = v135;
  v194 = v138;
  v195 = v129;
  v196 = v130;
  sub_1B1D66328(v136, v131, v132, v140, v133, v141, v137);
  sub_1B1D66328(v142, v134, v139, v135, v138, v129, v130);
  sub_1B1D66328(v136, v131, v132, v140, v133, v141, v137);
  v72 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v197, &v190);
  sub_1B1C91AE4(v190, v191);

  sub_1B1C91AE4(v197, v198);

  sub_1B1D0D630(v136, v131, v132, v140, v133, v141, v137);
  if (v72)
  {
LABEL_48:
    if (v123)
    {
      v197 = v124;
      v198 = v125;
      v199 = v114;
      v200 = v115;
      v201 = v123;
      v202 = v117;
      v203 = v116;
      if (v128)
      {
        v190 = v126;
        v191 = v127;
        v192 = v122;
        v193 = v119;
        v194 = v128;
        v195 = v120;
        v196 = v121;
        sub_1B1D66328(v124, v125, v114, v115, v123, v117, v116);
        sub_1B1D66328(v126, v127, v122, v119, v128, v120, v121);
        sub_1B1D66328(v124, v125, v114, v115, v123, v117, v116);
        v81 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v197, &v190);
        sub_1B1C91AE4(v190, v191);

        sub_1B1C91AE4(v197, v198);

        sub_1B1D0D630(v124, v125, v114, v115, v123, v117, v116);
        if ((v81 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_57;
      }

      v83 = v124;
      v82 = v125;
      v89 = v123;
      v85 = v116;
      v86 = v117;
      v84 = v115;
      sub_1B1D66328(v124, v125, v114, v115, v123, v117, v116);
      v66 = v121;
      v87 = v119;
      v67 = v120;
      sub_1B1D66328(v126, v127, v122, v119, 0, v120, v121);
      sub_1B1D66328(v124, v125, v114, v115, v123, v117, v116);
      sub_1B1C91AE4(v124, v125);

      v88 = v122;
    }

    else
    {
      v83 = v124;
      v82 = v125;
      v84 = v115;
      v85 = v116;
      v86 = v117;
      sub_1B1D66328(v124, v125, v114, v115, 0, v117, v116);
      if (!v128)
      {
        sub_1B1D66328(v126, v127, v122, v119, 0, v120, v121);
        sub_1B1D0D630(v124, v125, v114, v115, 0, v117, v116);
LABEL_57:
        if (v108)
        {
          v197 = v103;
          v198 = v104;
          v91 = v111;
          v199 = v111;
          v200 = v112;
          v201 = v108;
          v202 = v105;
          v203 = v113;
          if (v110)
          {
            v190 = v109;
            v191 = v106;
            v192 = v107;
            v193 = v100;
            v194 = v110;
            v195 = v101;
            v196 = v102;
            sub_1B1D66328(v103, v104, v111, v112, v108, v105, v113);
            sub_1B1D66328(v109, v106, v107, v100, v110, v101, v102);
            sub_1B1D66328(v103, v104, v111, v112, v108, v105, v113);
            v92 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v197, &v190);
            sub_1B1C91AE4(v190, v191);

            sub_1B1C91AE4(v197, v198);

            sub_1B1D0D630(v103, v104, v111, v112, v108, v105, v113);
            return (v92 & 1) != 0;
          }

          v96 = v112;
          v93 = v108;
          v110 = 0;
          v97 = v105;
          v95 = v113;
          v98 = v104;
          v99 = v103;
          sub_1B1D66328(v103, v104, v111, v112, v108, v105, v113);
          v94 = v100;
          v67 = v101;
          v66 = v102;
          sub_1B1D66328(v109, v106, v107, v100, 0, v101, v102);
          sub_1B1D66328(v103, v104, v111, v112, v108, v105, v113);
          sub_1B1C91AE4(v103, v104);
        }

        else
        {
          v93 = 0;
          sub_1B1D66328(v103, v104, v111, v112, 0, v105, v113);
          if (!v110)
          {
            sub_1B1D66328(v109, v106, v107, v100, 0, v101, v102);
            sub_1B1D0D630(v103, v104, v111, v112, 0, v105, v113);
            return 1;
          }

          v94 = v100;
          v67 = v101;
          v66 = v102;
          sub_1B1D66328(v109, v106, v107, v100, v110, v101, v102);
          v96 = v112;
          v95 = v113;
          v98 = v104;
          v97 = v105;
          v91 = v111;
          v99 = v103;
        }

        v197 = v99;
        v198 = v98;
        v199 = v91;
        v200 = v96;
        v201 = v93;
        v202 = v97;
        v203 = v95;
        v204 = v109;
        v205 = v106;
        v206 = v107;
        v207 = v94;
        v90 = v110;
        goto LABEL_65;
      }

      v66 = v121;
      v87 = v119;
      v67 = v120;
      sub_1B1D66328(v126, v127, v122, v119, v128, v120, v121);
      v88 = v122;
      v89 = 0;
    }

    v197 = v83;
    v198 = v82;
    v199 = v114;
    v200 = v84;
    v201 = v89;
    v202 = v86;
    v203 = v85;
    v204 = v126;
    v205 = v127;
    v206 = v88;
    v207 = v87;
    v90 = v128;
LABEL_65:
    v208 = v90;
    goto LABEL_34;
  }

  return 0;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO12CustomFieldsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  if (v2 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      v13 = a1[4];
      sub_1B1C91B94(v3, v2);
      sub_1B1C91B94(v7, v6);
      sub_1B1C91AE4(v3, v2);
      goto LABEL_8;
    }

LABEL_5:
    sub_1B1C91B94(*a1, v2);
    sub_1B1C91B94(v7, v6);
    sub_1B1C91AE4(v3, v2);
    sub_1B1C91AE4(v7, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v13 = a1[4];
  sub_1B1C91B94(v3, v2);
  sub_1B1C91B94(v7, v6);
  v12 = sub_1B1D583E4(v3, v2, v7, v6);
  sub_1B1C91AE4(v7, v6);
  sub_1B1C91AE4(v3, v2);
  if (!v12)
  {
    return 0;
  }

LABEL_8:
  if (v5)
  {
    if (v8 && (v4 == v9 && v5 == v8 || (sub_1B1D7C50C() & 1) != 0))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_15:

  return sub_1B1D322CC(v13, v10);
}

BOOL _s22AuthenticationServices22ASImportableLinkedItemV2eeoiySbAC_ACtFZ_0(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (!sub_1B1D583E4(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      sub_1B1C91B94(v3, v2);
      sub_1B1C91B94(v5, v4);
      sub_1B1C91AE4(v3, v2);
      return 1;
    }

    goto LABEL_6;
  }

  if (v4 >> 60 == 15)
  {
LABEL_6:
    sub_1B1C91B94(v3, v2);
    sub_1B1C91B94(v5, v4);
    sub_1B1C91AE4(v3, v2);
    sub_1B1C91AE4(v5, v4);
    return 0;
  }

  sub_1B1C91B94(v3, v2);
  sub_1B1C91B94(v5, v4);
  v7 = sub_1B1D583E4(v3, v2, v5, v4);
  sub_1B1C91AE4(v5, v4);
  sub_1B1C91AE4(v3, v2);
  return v7;
}

BOOL sub_1B1D5A478(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v231 = a1[2];
  v232 = a1[3];
  v4 = a1[4];
  v233 = a1[5];
  v230 = a1[6];
  v218 = a1[7];
  v220 = a1[8];
  v219 = a1[9];
  v224 = a1[10];
  v217 = a1[11];
  v221 = a1[12];
  v222 = a1[13];
  v204 = a1[14];
  v209 = a1[15];
  v210 = a1[16];
  v205 = a1[17];
  v208 = a1[18];
  v206 = a1[19];
  v207 = a1[20];
  v193 = a1[21];
  v194 = a1[22];
  v195 = a1[23];
  v187 = a1[24];
  v200 = a1[25];
  v188 = a1[26];
  v189 = a1[27];
  v176 = a1[28];
  v177 = a1[29];
  v178 = a1[30];
  v182 = a1[31];
  v175 = a1[32];
  v183 = a1[33];
  v179 = a1[34];
  v159 = a1[35];
  v160 = a1[36];
  v161 = a1[37];
  v162 = a1[39];
  v168 = a1[38];
  v169 = a1[40];
  v166 = a1[41];
  v147 = a1[42];
  v148 = a1[43];
  v143 = a1[45];
  v146 = a1[46];
  v154 = a1[47];
  v149 = a1[44];
  v150 = a1[48];
  v5 = a1[51];
  v139 = a1[49];
  v140 = a1[50];
  v6 = a1[52];
  v141 = a1[53];
  v8 = a1[54];
  v7 = a1[55];
  v10 = a1[56];
  v9 = a1[57];
  v12 = a1[58];
  v11 = a1[59];
  v14 = a1[60];
  v13 = a1[61];
  v15 = a1[62];
  v16 = *a2;
  v226 = a2[1];
  v17 = a2[3];
  v227 = a2[2];
  v18 = a2[4];
  v228 = a2[5];
  v19 = a2[7];
  v229 = a2[6];
  v21 = a2[8];
  v20 = a2[9];
  v225 = a2[10];
  v215 = a2[11];
  v216 = a2[12];
  v223 = a2[13];
  v211 = a2[14];
  v213 = a2[15];
  v214 = a2[16];
  v201 = a2[17];
  v212 = a2[18];
  v202 = a2[19];
  v203 = a2[20];
  v197 = a2[21];
  v192 = a2[22];
  v198 = a2[23];
  v199 = a2[24];
  v196 = a2[25];
  v190 = a2[26];
  v191 = a2[27];
  v184 = a2[28];
  v181 = a2[29];
  v171 = a2[30];
  v172 = a2[31];
  v180 = a2[32];
  v173 = a2[33];
  v174 = a2[34];
  v170 = a2[35];
  v163 = a2[36];
  v164 = a2[37];
  v165 = a2[38];
  v167 = a2[39];
  v157 = a2[40];
  v158 = a2[41];
  v155 = a2[42];
  v156 = a2[43];
  v151 = a2[44];
  v152 = a2[45];
  v153 = a2[46];
  v144 = a2[47];
  v145 = a2[48];
  v142 = a2[49];
  v133 = a2[50];
  v134 = a2[51];
  v135 = a2[52];
  v136 = a2[53];
  v137 = a2[54];
  v22 = a2[56];
  v138 = a2[55];
  v24 = a2[57];
  v23 = a2[58];
  v26 = a2[59];
  v25 = a2[60];
  v28 = a2[61];
  v27 = a2[62];
  if (!v4)
  {
    v128 = v5;
    v129 = v6;
    v119 = a2[56];
    v120 = a2[57];
    v121 = a2[58];
    v122 = a2[60];
    v130 = v8;
    v131 = v7;
    v116 = a2[59];
    v117 = a2[61];
    v118 = a2[62];
    v123 = v14;
    v124 = v10;
    v114 = v9;
    v115 = v15;
    v125 = v12;
    v126 = v11;
    v127 = v13;
    sub_1B1D66328(v2, v3, v231, v232, 0, v233, v230);
    if (!v18)
    {
      v185 = v19;
      v132 = v21;
      v186 = v20;
      sub_1B1D66328(v16, v226, v227, v17, 0, v228, v229);
      sub_1B1D0D630(v2, v3, v231, v232, 0, v233, v230);
      v30 = v217;
      if (v217)
      {
        goto LABEL_5;
      }

LABEL_16:
      v31 = v218;
      v32 = v220;
      v44 = v219;
      v45 = v224;
      v46 = v221;
      v33 = v222;
      sub_1B1D66328(v218, v220, v219, v224, 0, v221, v222);
      v47 = v216;
      v34 = v215;
      if (!v215)
      {
        sub_1B1D66328(v185, v132, v186, v225, 0, v216, v223);
        sub_1B1D0D630(v218, v220, v219, v224, 0, v221, v222);
        v36 = v208;
        if (v208)
        {
          goto LABEL_8;
        }

LABEL_21:
        v49 = v204;
        v50 = v209;
        v51 = v210;
        v37 = v205;
        v38 = v206;
        v39 = v207;
        sub_1B1D66328(v204, v209, v210, v205, 0, v206, v207);
        if (!v212)
        {
          sub_1B1D66328(v211, v213, v214, v201, 0, v202, v203);
          sub_1B1D0D630(v204, v209, v210, v205, 0, v206, v207);
          goto LABEL_26;
        }

        v52 = v201;
        v53 = v202;
        v54 = v203;
        sub_1B1D66328(v211, v213, v214, v201, v212, v202, v203);
        v55 = v208;
LABEL_24:
        v242 = v49;
        v243 = v50;
        v244 = v51;
        v245 = v37;
        v246 = v55;
        v247 = v38;
        v248 = v39;
        v249 = v211;
        v250 = v213;
        v251 = v214;
        v252 = v52;
        v56 = v212;
LABEL_34:
        v253 = v56;
        v254 = v53;
        v255 = v54;
        goto LABEL_35;
      }

      v48 = v132;
      sub_1B1D66328(v185, v132, v186, v225, v215, v216, v223);
LABEL_19:
      v242 = v31;
      v243 = v32;
      v244 = v44;
      v245 = v45;
      v246 = v30;
      v247 = v46;
      v248 = v33;
      v249 = v185;
      v250 = v48;
      v251 = v186;
      v252 = v225;
      v253 = v34;
      v254 = v47;
      v255 = v223;
      goto LABEL_35;
    }

    v42 = v226;
    v43 = v227;
    sub_1B1D66328(v16, v226, v227, v17, v18, v228, v229);
LABEL_14:
    v242 = v2;
    v243 = v3;
    v244 = v231;
    v245 = v232;
    v246 = v4;
    v247 = v233;
    v248 = v230;
    v249 = v16;
    v250 = v42;
    v251 = v43;
    v252 = v17;
    v253 = v18;
    v254 = v228;
    v255 = v229;
    goto LABEL_35;
  }

  v242 = v2;
  v243 = v3;
  v244 = v231;
  v245 = v232;
  v246 = v4;
  v247 = v233;
  v248 = v230;
  if (!v18)
  {
    sub_1B1D66328(v2, v3, v231, v232, v4, v233, v230);
    v42 = v226;
    sub_1B1D66328(v16, v226, v227, v17, 0, v228, v229);
    sub_1B1D66328(v2, v3, v231, v232, v4, v233, v230);
    sub_1B1C91AE4(v2, v3);

    v43 = v227;

    goto LABEL_14;
  }

  v185 = v19;
  v131 = v7;
  v132 = v21;
  v186 = v20;
  v128 = v5;
  v129 = v6;
  v119 = v22;
  v120 = v24;
  v121 = v23;
  v122 = v25;
  v130 = v8;
  v116 = v26;
  v117 = v28;
  v118 = v27;
  v123 = v14;
  v124 = v10;
  v114 = v9;
  v115 = v15;
  v125 = v12;
  v126 = v11;
  v127 = v13;
  v235 = v16;
  v236 = v226;
  v237 = v227;
  v238 = v17;
  v239 = v18;
  v240 = v228;
  v241 = v229;
  sub_1B1D66328(v2, v3, v231, v232, v4, v233, v230);
  sub_1B1D66328(v16, v226, v227, v17, v18, v228, v229);
  sub_1B1D66328(v2, v3, v231, v232, v4, v233, v230);
  v29 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v242, &v235);
  sub_1B1C91AE4(v235, v236);

  sub_1B1C91AE4(v242, v243);

  sub_1B1D0D630(v2, v3, v231, v232, v4, v233, v230);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = v217;
  if (!v217)
  {
    goto LABEL_16;
  }

LABEL_5:
  v31 = v218;
  v32 = v220;
  v242 = v218;
  v243 = v220;
  v244 = v219;
  v245 = v224;
  v246 = v30;
  v247 = v221;
  v33 = v222;
  v248 = v222;
  v34 = v215;
  if (!v215)
  {
    v46 = v221;
    sub_1B1D66328(v218, v220, v219, v224, v30, v221, v222);
    v48 = v132;
    v47 = v216;
    sub_1B1D66328(v185, v132, v186, v225, 0, v216, v223);
    v44 = v219;
    v45 = v224;
    sub_1B1D66328(v218, v220, v219, v224, v30, v221, v222);
    sub_1B1C91AE4(v218, v220);

    goto LABEL_19;
  }

  v235 = v185;
  v236 = v132;
  v237 = v186;
  v238 = v225;
  v239 = v215;
  v240 = v216;
  v241 = v223;
  sub_1B1D66328(v218, v220, v219, v224, v30, v221, v222);
  sub_1B1D66328(v185, v132, v186, v225, v215, v216, v223);
  sub_1B1D66328(v218, v220, v219, v224, v30, v221, v222);
  v35 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v242, &v235);
  sub_1B1C91AE4(v235, v236);

  sub_1B1C91AE4(v242, v243);

  sub_1B1D0D630(v218, v220, v219, v224, v30, v221, v222);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

  v36 = v208;
  if (!v208)
  {
    goto LABEL_21;
  }

LABEL_8:
  v242 = v204;
  v243 = v209;
  v37 = v205;
  v244 = v210;
  v245 = v205;
  v38 = v206;
  v246 = v36;
  v247 = v206;
  v39 = v207;
  v248 = v207;
  if (!v212)
  {
    v49 = v204;
    v50 = v209;
    v51 = v210;
    v55 = v36;
    sub_1B1D66328(v204, v209, v210, v205, v36, v206, v207);
    v52 = v201;
    v53 = v202;
    v54 = v203;
    sub_1B1D66328(v211, v213, v214, v201, 0, v202, v203);
    sub_1B1D66328(v204, v209, v210, v205, v55, v206, v207);
    sub_1B1C91AE4(v204, v209);

    goto LABEL_24;
  }

  v235 = v211;
  v236 = v213;
  v237 = v214;
  v238 = v201;
  v239 = v212;
  v240 = v202;
  v241 = v203;
  v40 = v36;
  sub_1B1D66328(v204, v209, v210, v205, v36, v206, v207);
  sub_1B1D66328(v211, v213, v214, v201, v212, v202, v203);
  sub_1B1D66328(v204, v209, v210, v205, v40, v206, v207);
  v41 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v242, &v235);
  sub_1B1C91AE4(v235, v236);

  sub_1B1C91AE4(v242, v243);

  sub_1B1D0D630(v204, v209, v210, v205, v40, v206, v207);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  if (!v200)
  {
    v57 = v193;
    v58 = v194;
    v61 = v195;
    v62 = v187;
    v63 = v188;
    v59 = v189;
    sub_1B1D66328(v193, v194, v195, v187, 0, v188, v189);
    v60 = v192;
    if (!v196)
    {
      sub_1B1D66328(v197, v192, v198, v199, 0, v190, v191);
      sub_1B1D0D630(v193, v194, v195, v187, 0, v188, v189);
      goto LABEL_39;
    }

    v53 = v190;
    v54 = v191;
    sub_1B1D66328(v197, v192, v198, v199, v196, v190, v191);
    v64 = 0;
    goto LABEL_33;
  }

  v57 = v193;
  v58 = v194;
  v242 = v193;
  v243 = v194;
  v244 = v195;
  v245 = v187;
  v246 = v200;
  v247 = v188;
  v59 = v189;
  v248 = v189;
  v60 = v192;
  if (!v196)
  {
    v61 = v195;
    v62 = v187;
    v64 = v200;
    v63 = v188;
    sub_1B1D66328(v193, v194, v195, v187, v200, v188, v189);
    v53 = v190;
    v54 = v191;
    sub_1B1D66328(v197, v192, v198, v199, 0, v190, v191);
    sub_1B1D66328(v193, v194, v195, v187, v200, v188, v189);
    sub_1B1C91AE4(v193, v194);

LABEL_33:
    v242 = v57;
    v243 = v58;
    v244 = v61;
    v245 = v62;
    v246 = v64;
    v247 = v63;
    v248 = v59;
    v249 = v197;
    v250 = v60;
    v251 = v198;
    v252 = v199;
    v56 = v196;
    goto LABEL_34;
  }

  v235 = v197;
  v236 = v192;
  v237 = v198;
  v238 = v199;
  v239 = v196;
  v240 = v190;
  v241 = v191;
  sub_1B1D66328(v193, v194, v195, v187, v200, v188, v189);
  sub_1B1D66328(v197, v192, v198, v199, v196, v190, v191);
  sub_1B1D66328(v193, v194, v195, v187, v200, v188, v189);
  v234 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v242, &v235);
  sub_1B1C91AE4(v235, v236);

  sub_1B1C91AE4(v242, v243);

  sub_1B1D0D630(v193, v194, v195, v187, v200, v188, v189);
  if (v234)
  {
LABEL_39:
    if (v175)
    {
      v66 = v177;
      v242 = v176;
      v243 = v177;
      v67 = v178;
      v244 = v178;
      v245 = v182;
      v246 = v175;
      v247 = v183;
      v68 = v179;
      v248 = v179;
      if (v180)
      {
        v235 = v184;
        v236 = v181;
        v237 = v171;
        v238 = v172;
        v239 = v180;
        v240 = v173;
        v241 = v174;
        sub_1B1D66328(v176, v177, v178, v182, v175, v183, v179);
        sub_1B1D66328(v184, v181, v171, v172, v180, v173, v174);
        sub_1B1D66328(v176, v177, v178, v182, v175, v183, v179);
        v69 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v242, &v235);
        sub_1B1C91AE4(v235, v236);

        sub_1B1C91AE4(v242, v243);

        sub_1B1D0D630(v176, v177, v178, v182, v175, v183, v179);
        if ((v69 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_48;
      }

      v70 = v176;
      v76 = v175;
      sub_1B1D66328(v176, v177, v178, v182, v175, v183, v179);
      v72 = v171;
      v73 = v172;
      v74 = v173;
      v75 = v174;
      sub_1B1D66328(v184, v181, v171, v172, 0, v173, v174);
      sub_1B1D66328(v176, v177, v178, v182, v175, v183, v179);
      sub_1B1C91AE4(v176, v177);

      v71 = v182;
    }

    else
    {
      v70 = v176;
      v67 = v178;
      v71 = v182;
      v68 = v179;
      sub_1B1D66328(v176, v177, v178, v182, 0, v183, v179);
      if (!v180)
      {
        sub_1B1D66328(v184, v181, v171, v172, 0, v173, v174);
        sub_1B1D0D630(v176, v177, v178, v182, 0, v183, v179);
LABEL_48:
        if (v162)
        {
          v78 = v159;
          v242 = v159;
          v243 = v160;
          v244 = v161;
          v245 = v168;
          v246 = v162;
          v247 = v169;
          v79 = v166;
          v248 = v166;
          if (v167)
          {
            v235 = v170;
            v236 = v163;
            v237 = v164;
            v238 = v165;
            v239 = v167;
            v240 = v157;
            v241 = v158;
            sub_1B1D66328(v159, v160, v161, v168, v162, v169, v166);
            sub_1B1D66328(v170, v163, v164, v165, v167, v157, v158);
            sub_1B1D66328(v159, v160, v161, v168, v162, v169, v166);
            v80 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v242, &v235);
            sub_1B1C91AE4(v235, v236);

            sub_1B1C91AE4(v242, v243);

            sub_1B1D0D630(v159, v160, v161, v168, v162, v169, v166);
            if ((v80 & 1) == 0)
            {
              return 0;
            }

LABEL_58:
            if (v146)
            {
              v87 = v148;
              v242 = v147;
              v243 = v148;
              v89 = v149;
              v88 = v150;
              v244 = v149;
              v245 = v143;
              v246 = v146;
              v247 = v154;
              v248 = v150;
              if (v153)
              {
                v235 = v155;
                v236 = v156;
                v237 = v151;
                v238 = v152;
                v239 = v153;
                v240 = v144;
                v241 = v145;
                sub_1B1D66328(v147, v148, v149, v143, v146, v154, v150);
                sub_1B1D66328(v155, v156, v151, v152, v153, v144, v145);
                sub_1B1D66328(v147, v148, v149, v143, v146, v154, v150);
                v90 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v242, &v235);
                sub_1B1C91AE4(v235, v236);

                sub_1B1C91AE4(v242, v243);

                v91 = v142;
                sub_1B1D0D630(v147, v148, v149, v143, v146, v154, v150);
                if ((v90 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_67;
              }

              v97 = v147;
              v98 = v146;
              sub_1B1D66328(v147, v148, v149, v143, v146, v154, v150);
              v94 = v151;
              v93 = v152;
              v95 = v144;
              v92 = v143;
              v96 = v145;
              sub_1B1D66328(v155, v156, v151, v152, 0, v144, v145);
              sub_1B1D66328(v147, v148, v149, v143, v146, v154, v150);
              sub_1B1C91AE4(v147, v148);
            }

            else
            {
              v88 = v150;
              v92 = v143;
              sub_1B1D66328(v147, v148, v149, v143, 0, v154, v150);
              if (!v153)
              {
                sub_1B1D66328(v155, v156, v151, v152, 0, v144, v145);
                sub_1B1D0D630(v147, v148, v149, v143, 0, v154, v150);
                v91 = v142;
LABEL_67:
                v99 = v141;
                if (v141)
                {
                  v242 = v139;
                  v243 = v140;
                  v244 = v128;
                  v245 = v129;
                  v246 = v141;
                  v247 = v130;
                  v248 = v131;
                  if (v136)
                  {
                    v235 = v142;
                    v236 = v133;
                    v237 = v134;
                    v238 = v135;
                    v239 = v136;
                    v240 = v137;
                    v241 = v138;
                    sub_1B1D66328(v139, v140, v128, v129, v141, v130, v131);
                    sub_1B1D66328(v142, v133, v134, v135, v136, v137, v138);
                    sub_1B1D66328(v139, v140, v128, v129, v141, v130, v131);
                    v100 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v242, &v235);
                    sub_1B1C91AE4(v235, v236);

                    sub_1B1C91AE4(v242, v243);

                    sub_1B1D0D630(v139, v140, v128, v129, v141, v130, v131);
                    if ((v100 & 1) == 0)
                    {
                      return 0;
                    }

                    goto LABEL_76;
                  }

                  sub_1B1D66328(v139, v140, v128, v129, v141, v130, v131);
                  v91 = v142;
                  v104 = v134;
                  v105 = v133;
                  v106 = v135;
                  sub_1B1D66328(v142, v133, v134, v135, 0, v137, v138);
                  v102 = v139;
                  v101 = v140;
                  sub_1B1D66328(v139, v140, v128, v129, v141, v130, v131);
                  sub_1B1C91AE4(v139, v140);

                  v99 = v141;

                  v103 = 0;
                }

                else
                {
                  v102 = v139;
                  v101 = v140;
                  sub_1B1D66328(v139, v140, v128, v129, 0, v130, v131);
                  v103 = v136;
                  if (!v136)
                  {
                    sub_1B1D66328(v91, v133, v134, v135, 0, v137, v138);
                    sub_1B1D0D630(v139, v140, v128, v129, 0, v130, v131);
LABEL_76:
                    if (v123)
                    {
                      v242 = v124;
                      v243 = v114;
                      v244 = v125;
                      v245 = v126;
                      v246 = v123;
                      v247 = v127;
                      v248 = v115;
                      if (v122)
                      {
                        v235 = v119;
                        v236 = v120;
                        v237 = v121;
                        v238 = v116;
                        v239 = v122;
                        v240 = v117;
                        v241 = v118;
                        sub_1B1D66328(v124, v114, v125, v126, v123, v127, v115);
                        sub_1B1D66328(v119, v120, v121, v116, v122, v117, v118);
                        sub_1B1D66328(v124, v114, v125, v126, v123, v127, v115);
                        v107 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v242, &v235);
                        sub_1B1C91AE4(v235, v236);

                        sub_1B1C91AE4(v242, v243);

                        sub_1B1D0D630(v124, v114, v125, v126, v123, v127, v115);
                        return (v107 & 1) != 0;
                      }

                      sub_1B1D66328(v124, v114, v125, v126, v123, v127, v115);
                      v111 = v116;
                      v112 = v117;
                      v113 = v118;
                      sub_1B1D66328(v119, v120, v121, v116, 0, v117, v118);
                      sub_1B1D66328(v124, v114, v125, v126, v123, v127, v115);
                      v109 = v114;
                      sub_1B1C91AE4(v124, v114);
                      v108 = v123;

                      v110 = v115;
                    }

                    else
                    {
                      v108 = 0;
                      v109 = v114;
                      v110 = v115;
                      sub_1B1D66328(v124, v114, v125, v126, 0, v127, v115);
                      if (!v122)
                      {
                        sub_1B1D66328(v119, v120, v121, v116, 0, v117, v118);
                        sub_1B1D0D630(v124, v114, v125, v126, 0, v127, v115);
                        return 1;
                      }

                      v111 = v116;
                      v112 = v117;
                      v113 = v118;
                      sub_1B1D66328(v119, v120, v121, v116, v122, v117, v118);
                    }

                    v242 = v124;
                    v243 = v109;
                    v244 = v125;
                    v245 = v126;
                    v246 = v108;
                    v247 = v127;
                    v248 = v110;
                    v249 = v119;
                    v250 = v120;
                    v251 = v121;
                    v252 = v111;
                    v253 = v122;
                    v254 = v112;
                    v255 = v113;
                    goto LABEL_35;
                  }

                  v104 = v134;
                  v105 = v133;
                  v106 = v135;
                  sub_1B1D66328(v91, v133, v134, v135, v136, v137, v138);
                }

                v242 = v102;
                v243 = v101;
                v244 = v128;
                v245 = v129;
                v246 = v99;
                v247 = v130;
                v248 = v131;
                v249 = v91;
                v250 = v105;
                v251 = v104;
                v252 = v106;
                v253 = v103;
                v254 = v137;
                v255 = v138;
LABEL_35:
                sub_1B1CDEC18(&v242, &qword_1EB775FA8, &qword_1B1D93648);
                return 0;
              }

              v94 = v151;
              v93 = v152;
              v95 = v144;
              v96 = v145;
              sub_1B1D66328(v155, v156, v151, v152, v153, v144, v145);
              v87 = v148;
              v89 = v149;
              v98 = 0;
              v97 = v147;
            }

            v242 = v97;
            v243 = v87;
            v244 = v89;
            v245 = v92;
            v246 = v98;
            v247 = v154;
            v248 = v88;
            v249 = v155;
            v250 = v156;
            v251 = v94;
            v252 = v93;
            v253 = v153;
            v254 = v95;
            v255 = v96;
            goto LABEL_35;
          }

          v81 = v160;
          v82 = v161;
          v86 = v162;
          sub_1B1D66328(v159, v160, v161, v168, v162, v169, v166);
          v83 = v163;
          v84 = v164;
          v85 = v165;
          v74 = v157;
          v75 = v158;
          sub_1B1D66328(v170, v163, v164, v165, 0, v157, v158);
          sub_1B1D66328(v159, v160, v161, v168, v162, v169, v166);
          sub_1B1C91AE4(v159, v160);
        }

        else
        {
          v78 = v159;
          v81 = v160;
          v82 = v161;
          v79 = v166;
          sub_1B1D66328(v159, v160, v161, v168, 0, v169, v166);
          if (!v167)
          {
            sub_1B1D66328(v170, v163, v164, v165, 0, v157, v158);
            sub_1B1D0D630(v159, v160, v161, v168, 0, v169, v166);
            goto LABEL_58;
          }

          v83 = v163;
          v84 = v164;
          v85 = v165;
          v74 = v157;
          v75 = v158;
          sub_1B1D66328(v170, v163, v164, v165, v167, v157, v158);
          v86 = 0;
        }

        v242 = v78;
        v243 = v81;
        v244 = v82;
        v245 = v168;
        v246 = v86;
        v247 = v169;
        v248 = v79;
        v249 = v170;
        v250 = v83;
        v251 = v84;
        v252 = v85;
        v77 = v167;
LABEL_56:
        v253 = v77;
        v254 = v74;
        v255 = v75;
        goto LABEL_35;
      }

      v72 = v171;
      v66 = v177;
      v73 = v172;
      v74 = v173;
      v75 = v174;
      sub_1B1D66328(v184, v181, v171, v172, v180, v173, v174);
      v76 = 0;
    }

    v242 = v70;
    v243 = v66;
    v244 = v67;
    v245 = v71;
    v246 = v76;
    v247 = v183;
    v248 = v68;
    v249 = v184;
    v250 = v181;
    v251 = v72;
    v252 = v73;
    v77 = v180;
    goto LABEL_56;
  }

  return 0;
}

BOOL _s22AuthenticationServices22ASImportableCredentialO16IdentityDocumentV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v278 = *a1;
  v279 = a1[1];
  v2 = a1[2];
  v281 = a1[3];
  v3 = a1[4];
  v282 = a1[5];
  v280 = a1[6];
  v268 = a1[7];
  v269 = a1[8];
  v270 = a1[9];
  v276 = a1[10];
  v267 = a1[11];
  v272 = a1[12];
  v271 = a1[13];
  v257 = a1[14];
  v258 = a1[15];
  v259 = a1[16];
  v260 = a1[17];
  v255 = a1[18];
  v253 = a1[19];
  v254 = a1[20];
  v238 = a1[21];
  v245 = a1[22];
  v246 = a1[23];
  v239 = a1[24];
  v244 = a1[25];
  v240 = a1[26];
  v241 = a1[27];
  v231 = a1[28];
  v232 = a1[29];
  v226 = a1[30];
  v227 = a1[31];
  v230 = a1[32];
  v228 = a1[33];
  v229 = a1[34];
  v211 = a1[35];
  v215 = a1[36];
  v212 = a1[37];
  v219 = a1[38];
  v221 = a1[39];
  v220 = a1[40];
  v216 = a1[41];
  v206 = a1[42];
  v200 = a1[43];
  v207 = a1[44];
  v202 = a1[45];
  v199 = a1[46];
  v195 = a1[47];
  v196 = a1[48];
  v190 = a1[49];
  v191 = a1[51];
  v187 = a1[50];
  v188 = a1[52];
  v189 = a1[53];
  v184 = a1[54];
  v185 = a1[55];
  v173 = a1[56];
  v174 = a1[57];
  v177 = a1[60];
  v175 = a1[59];
  v176 = a1[61];
  v4 = a1[63];
  v178 = a1[62];
  v179 = a1[58];
  v5 = a1[64];
  v6 = a1[65];
  v7 = a1[66];
  v166 = a1[67];
  v8 = a1[68];
  v9 = a1[69];
  v10 = a1[70];
  v11 = a1[71];
  v12 = a1[72];
  v13 = a1[73];
  v14 = a1[74];
  v15 = a1[75];
  v16 = a1[76];
  v18 = *a2;
  v17 = a2[1];
  v19 = a2[2];
  v20 = a2[3];
  v22 = a2[4];
  v21 = a2[5];
  v277 = a2[6];
  v265 = a2[7];
  v274 = a2[8];
  v275 = a2[9];
  v23 = a2[10];
  v273 = a2[11];
  v24 = a2[12];
  v266 = a2[13];
  v261 = a2[14];
  v256 = a2[15];
  v263 = a2[16];
  v264 = a2[17];
  v262 = a2[18];
  v251 = a2[19];
  v252 = a2[20];
  v250 = a2[21];
  v248 = a2[22];
  v249 = a2[23];
  v237 = a2[24];
  v247 = a2[25];
  v242 = a2[26];
  v243 = a2[27];
  v235 = a2[28];
  v236 = a2[29];
  v234 = a2[30];
  v223 = a2[31];
  v233 = a2[32];
  v224 = a2[33];
  v225 = a2[34];
  v217 = a2[35];
  v213 = a2[36];
  v222 = a2[37];
  v214 = a2[38];
  v218 = a2[39];
  v209 = a2[40];
  v210 = a2[41];
  v203 = a2[42];
  v204 = a2[43];
  v208 = a2[44];
  v205 = a2[45];
  v201 = a2[46];
  v197 = a2[47];
  v198 = a2[48];
  v192 = a2[49];
  v193 = a2[50];
  v194 = a2[51];
  v186 = a2[53];
  v181 = a2[52];
  v182 = a2[54];
  v183 = a2[55];
  v170 = a2[56];
  v171 = a2[57];
  v167 = a2[58];
  v168 = a2[59];
  v180 = a2[60];
  v169 = a2[61];
  v172 = a2[62];
  v159 = a2[63];
  v160 = a2[64];
  v161 = a2[65];
  v162 = a2[66];
  v163 = a2[68];
  v164 = a2[69];
  v165 = a2[67];
  v25 = a2[71];
  v26 = a2[72];
  v27 = a2[73];
  v157 = a2[70];
  v158 = a2[74];
  v28 = a2[75];
  v29 = a2[76];
  if (!v3)
  {
    v137 = a2[71];
    v138 = a2[72];
    v139 = a2[73];
    v140 = a2[75];
    v149 = v4;
    v150 = v9;
    v151 = v5;
    v152 = v6;
    v141 = a2[76];
    v142 = v10;
    v153 = v7;
    v154 = v8;
    v147 = v15;
    v148 = v14;
    v144 = v11;
    v145 = v12;
    v146 = v13;
    v143 = v16;
    sub_1B1D66328(v278, v279, v2, v281, 0, v282, v280);
    if (!v22)
    {
      v155 = v23;
      v156 = v24;
      sub_1B1D66328(v18, v17, v19, v20, 0, v21, v277);
      sub_1B1D0D630(v278, v279, v2, v281, 0, v282, v280);
      v31 = v267;
      if (v267)
      {
        goto LABEL_5;
      }

LABEL_16:
      v32 = v268;
      v33 = v269;
      v34 = v270;
      v35 = v272;
      v36 = v271;
      sub_1B1D66328(v268, v269, v270, v276, 0, v272, v271);
      v37 = v266;
      if (!v273)
      {
        sub_1B1D66328(v265, v274, v275, v155, 0, v156, v266);
        sub_1B1D0D630(v268, v269, v270, v276, 0, v272, v271);
        v39 = v255;
        if (v255)
        {
          goto LABEL_8;
        }

LABEL_21:
        v51 = v257;
        v52 = v258;
        v53 = v259;
        v40 = v260;
        v54 = v253;
        v41 = v254;
        sub_1B1D66328(v257, v258, v259, v260, 0, v253, v254);
        v42 = v256;
        if (!v262)
        {
          sub_1B1D66328(v261, v256, v263, v264, 0, v251, v252);
          sub_1B1D0D630(v257, v258, v259, v260, 0, v253, v254);
          v44 = v249;
          v45 = v248;
          v46 = v250;
          goto LABEL_26;
        }

        v55 = v251;
        v56 = v252;
        sub_1B1D66328(v261, v256, v263, v264, v262, v251, v252);
        v57 = v255;
LABEL_24:
        v290 = v51;
        v291 = v52;
        v292 = v53;
        v293 = v40;
        v294 = v57;
        v295 = v54;
        v296 = v41;
        v297 = v261;
        v298 = v42;
        v299 = v263;
        v300 = v264;
        v59 = v262;
LABEL_34:
        v301 = v59;
        v302 = v55;
        v303 = v56;
        goto LABEL_35;
      }

      v48 = v265;
      v50 = v155;
      v49 = v156;
      sub_1B1D66328(v265, v274, v275, v155, v273, v156, v266);
LABEL_19:
      v290 = v32;
      v291 = v33;
      v292 = v34;
      v293 = v276;
      v294 = v31;
      v295 = v35;
      v296 = v36;
      v297 = v48;
      v298 = v274;
      v299 = v275;
      v300 = v50;
      v301 = v273;
      v302 = v49;
      v303 = v37;
      goto LABEL_35;
    }

    v47 = v277;
    sub_1B1D66328(v18, v17, v19, v20, v22, v21, v277);
LABEL_14:
    v290 = v278;
    v291 = v279;
    v292 = v2;
    v293 = v281;
    v294 = v3;
    v295 = v282;
    v296 = v280;
    v297 = v18;
    v298 = v17;
    v299 = v19;
    v300 = v20;
    v301 = v22;
    v302 = v21;
    v303 = v47;
    goto LABEL_35;
  }

  v290 = v278;
  v291 = v279;
  v292 = v2;
  v293 = v281;
  v294 = v3;
  v295 = v282;
  v296 = v280;
  if (!v22)
  {
    sub_1B1D66328(v278, v279, v2, v281, v3, v282, v280);
    sub_1B1D66328(v18, v17, v19, v20, 0, v21, v277);
    sub_1B1D66328(v278, v279, v2, v281, v3, v282, v280);
    v47 = v277;
    sub_1B1C91AE4(v278, v279);

    goto LABEL_14;
  }

  v155 = v23;
  v156 = v24;
  v137 = v25;
  v138 = v26;
  v139 = v27;
  v140 = v28;
  v149 = v4;
  v150 = v9;
  v151 = v5;
  v152 = v6;
  v141 = v29;
  v142 = v10;
  v153 = v7;
  v154 = v8;
  v147 = v15;
  v148 = v14;
  v144 = v11;
  v145 = v12;
  v146 = v13;
  v143 = v16;
  v283 = v18;
  v284 = v17;
  v285 = v19;
  v286 = v20;
  v287 = v22;
  v288 = v21;
  v289 = v277;
  sub_1B1D66328(v278, v279, v2, v281, v3, v282, v280);
  sub_1B1D66328(v18, v17, v19, v20, v22, v21, v277);
  sub_1B1D66328(v278, v279, v2, v281, v3, v282, v280);
  v30 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v290, &v283);
  sub_1B1C91AE4(v283, v284);

  sub_1B1C91AE4(v290, v291);

  sub_1B1D0D630(v278, v279, v2, v281, v3, v282, v280);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  v31 = v267;
  if (!v267)
  {
    goto LABEL_16;
  }

LABEL_5:
  v32 = v268;
  v33 = v269;
  v290 = v268;
  v291 = v269;
  v34 = v270;
  v292 = v270;
  v293 = v276;
  v35 = v272;
  v294 = v31;
  v295 = v272;
  v36 = v271;
  v296 = v271;
  v37 = v266;
  if (!v273)
  {
    sub_1B1D66328(v268, v269, v270, v276, v31, v272, v271);
    v48 = v265;
    v50 = v155;
    v49 = v156;
    sub_1B1D66328(v265, v274, v275, v155, 0, v156, v266);
    sub_1B1D66328(v268, v269, v270, v276, v31, v272, v271);
    sub_1B1C91AE4(v268, v269);

    goto LABEL_19;
  }

  v283 = v265;
  v284 = v274;
  v285 = v275;
  v286 = v155;
  v287 = v273;
  v288 = v156;
  v289 = v266;
  sub_1B1D66328(v268, v269, v270, v276, v31, v272, v271);
  sub_1B1D66328(v265, v274, v275, v155, v273, v156, v266);
  sub_1B1D66328(v268, v269, v270, v276, v31, v272, v271);
  v38 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v290, &v283);
  sub_1B1C91AE4(v283, v284);

  sub_1B1C91AE4(v290, v291);

  sub_1B1D0D630(v268, v269, v270, v276, v31, v272, v271);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

  v39 = v255;
  if (!v255)
  {
    goto LABEL_21;
  }

LABEL_8:
  v290 = v257;
  v291 = v258;
  v40 = v260;
  v292 = v259;
  v293 = v260;
  v294 = v39;
  v295 = v253;
  v41 = v254;
  v296 = v254;
  v42 = v256;
  if (!v262)
  {
    v51 = v257;
    v52 = v258;
    v53 = v259;
    v57 = v39;
    v58 = v39;
    v54 = v253;
    sub_1B1D66328(v257, v258, v259, v260, v58, v253, v254);
    v55 = v251;
    v56 = v252;
    sub_1B1D66328(v261, v256, v263, v264, 0, v251, v252);
    sub_1B1D66328(v257, v258, v259, v260, v57, v253, v254);
    sub_1B1C91AE4(v257, v258);

    goto LABEL_24;
  }

  v283 = v261;
  v284 = v256;
  v285 = v263;
  v286 = v264;
  v287 = v262;
  v288 = v251;
  v289 = v252;
  sub_1B1D66328(v257, v258, v259, v260, v39, v253, v254);
  sub_1B1D66328(v261, v256, v263, v264, v262, v251, v252);
  sub_1B1D66328(v257, v258, v259, v260, v39, v253, v254);
  v43 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v290, &v283);
  sub_1B1C91AE4(v283, v284);

  sub_1B1C91AE4(v290, v291);

  sub_1B1D0D630(v257, v258, v259, v260, v39, v253, v254);
  v44 = v249;
  v45 = v248;
  v46 = v250;
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  if (!v244)
  {
    v68 = v44;
    v60 = v238;
    v69 = v245;
    v61 = v239;
    v62 = v240;
    v63 = v241;
    sub_1B1D66328(v238, v245, v246, v239, 0, v240, v241);
    v64 = v237;
    if (!v247)
    {
      sub_1B1D66328(v250, v45, v68, v237, 0, v242, v243);
      sub_1B1D0D630(v238, v245, v246, v239, 0, v240, v241);
      v66 = v236;
      v67 = v235;
      goto LABEL_39;
    }

    v55 = v242;
    v56 = v243;
    sub_1B1D66328(v250, v45, v68, v237, v247, v242, v243);
    v70 = v45;
    v71 = v246;
    v72 = 0;
    goto LABEL_33;
  }

  v60 = v238;
  v290 = v238;
  v291 = v245;
  v61 = v239;
  v292 = v246;
  v293 = v239;
  v62 = v240;
  v294 = v244;
  v295 = v240;
  v63 = v241;
  v296 = v241;
  v64 = v237;
  if (!v247)
  {
    v69 = v245;
    v72 = v244;
    v73 = v44;
    sub_1B1D66328(v238, v245, v246, v239, v244, v240, v241);
    v74 = v46;
    v75 = v73;
    v71 = v246;
    v55 = v242;
    v56 = v243;
    sub_1B1D66328(v74, v248, v75, v237, 0, v242, v243);
    sub_1B1D66328(v238, v245, v246, v239, v244, v240, v241);
    sub_1B1C91AE4(v238, v245);

    v70 = v248;
LABEL_33:
    v290 = v60;
    v291 = v69;
    v292 = v71;
    v293 = v61;
    v294 = v72;
    v295 = v62;
    v296 = v63;
    v297 = v250;
    v298 = v70;
    v299 = v249;
    v300 = v64;
    v59 = v247;
    goto LABEL_34;
  }

  v283 = v46;
  v284 = v248;
  v285 = v44;
  v286 = v237;
  v287 = v247;
  v288 = v242;
  v289 = v243;
  sub_1B1D66328(v238, v245, v246, v239, v244, v240, v241);
  sub_1B1D66328(v250, v248, v249, v237, v247, v242, v243);
  sub_1B1D66328(v238, v245, v246, v239, v244, v240, v241);
  v65 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v290, &v283);
  sub_1B1C91AE4(v283, v284);

  sub_1B1C91AE4(v290, v291);

  sub_1B1D0D630(v238, v245, v246, v239, v244, v240, v241);
  v66 = v236;
  v67 = v235;
  if (v65)
  {
LABEL_39:
    if (v230)
    {
      v290 = v231;
      v291 = v232;
      v77 = v227;
      v292 = v226;
      v293 = v227;
      v78 = v228;
      v294 = v230;
      v295 = v228;
      v79 = v229;
      v296 = v229;
      if (v233)
      {
        v283 = v67;
        v284 = v66;
        v285 = v234;
        v286 = v223;
        v287 = v233;
        v288 = v224;
        v289 = v225;
        sub_1B1D66328(v231, v232, v226, v227, v230, v228, v229);
        sub_1B1D66328(v235, v236, v234, v223, v233, v224, v225);
        sub_1B1D66328(v231, v232, v226, v227, v230, v228, v229);
        v80 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v290, &v283);
        sub_1B1C91AE4(v283, v284);

        sub_1B1C91AE4(v290, v291);

        sub_1B1D0D630(v231, v232, v226, v227, v230, v228, v229);
        v81 = v222;
        if ((v80 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_48;
      }

      v82 = v231;
      v83 = v232;
      v84 = v226;
      v91 = v67;
      v90 = v230;
      sub_1B1D66328(v231, v232, v226, v227, v230, v228, v229);
      v92 = v91;
      v93 = v66;
      v86 = v223;
      v87 = v224;
      v88 = v225;
      sub_1B1D66328(v92, v93, v234, v223, 0, v224, v225);
      sub_1B1D66328(v231, v232, v226, v227, v230, v228, v229);
      sub_1B1C91AE4(v231, v232);

      v89 = v235;
    }

    else
    {
      v82 = v231;
      v83 = v232;
      v84 = v226;
      v77 = v227;
      v78 = v228;
      v79 = v229;
      sub_1B1D66328(v231, v232, v226, v227, 0, v228, v229);
      if (!v233)
      {
        sub_1B1D66328(v67, v66, v234, v223, 0, v224, v225);
        sub_1B1D0D630(v231, v232, v226, v227, 0, v228, v229);
        v81 = v222;
LABEL_48:
        if (v221)
        {
          v290 = v211;
          v291 = v215;
          v292 = v212;
          v293 = v219;
          v294 = v221;
          v295 = v220;
          v94 = v216;
          v296 = v216;
          v95 = v214;
          v96 = v213;
          if (v218)
          {
            v283 = v217;
            v284 = v213;
            v285 = v222;
            v286 = v214;
            v287 = v218;
            v288 = v209;
            v289 = v210;
            sub_1B1D66328(v211, v215, v212, v219, v221, v220, v216);
            sub_1B1D66328(v217, v213, v222, v214, v218, v209, v210);
            sub_1B1D66328(v211, v215, v212, v219, v221, v220, v216);
            v97 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v290, &v283);
            sub_1B1C91AE4(v283, v284);

            sub_1B1C91AE4(v290, v291);

            sub_1B1D0D630(v211, v215, v212, v219, v221, v220, v216);
            if ((v97 & 1) == 0)
            {
              return 0;
            }

LABEL_57:
            if (v199)
            {
              v290 = v206;
              v291 = v200;
              v105 = v202;
              v292 = v207;
              v293 = v202;
              v106 = v196;
              v294 = v199;
              v295 = v195;
              v296 = v196;
              v107 = v201;
              if (v201)
              {
                v283 = v203;
                v284 = v204;
                v285 = v208;
                v286 = v205;
                v287 = v201;
                v288 = v197;
                v289 = v198;
                sub_1B1D66328(v206, v200, v207, v202, v199, v195, v196);
                sub_1B1D66328(v203, v204, v208, v205, v201, v197, v198);
                sub_1B1D66328(v206, v200, v207, v202, v199, v195, v196);
                v108 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v290, &v283);
                sub_1B1C91AE4(v283, v284);

                sub_1B1C91AE4(v290, v291);

                v110 = v193;
                v109 = v194;
                sub_1B1D0D630(v206, v200, v207, v202, v199, v195, v196);
                v111 = v192;
                if ((v108 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_66;
              }

              v118 = v206;
              v116 = v200;
              v115 = v207;
              v119 = v199;
              v112 = v195;
              sub_1B1D66328(v206, v200, v207, v202, v199, v195, v196);
              v113 = v197;
              v114 = v198;
              sub_1B1D66328(v203, v204, v208, v205, 0, v197, v198);
              sub_1B1D66328(v206, v200, v207, v202, v199, v195, v196);
              sub_1B1C91AE4(v206, v200);

              v117 = v208;
            }

            else
            {
              v105 = v202;
              v106 = v196;
              v112 = v195;
              sub_1B1D66328(v206, v200, v207, v202, 0, v195, v196);
              v107 = v201;
              if (!v201)
              {
                sub_1B1D66328(v203, v204, v208, v205, 0, v197, v198);
                sub_1B1D0D630(v206, v200, v207, v202, 0, v195, v196);
                v110 = v193;
                v109 = v194;
                v111 = v192;
LABEL_66:
                if (v189)
                {
                  v290 = v190;
                  v291 = v187;
                  v292 = v191;
                  v293 = v188;
                  v121 = v184;
                  v120 = v185;
                  v294 = v189;
                  v295 = v184;
                  v296 = v185;
                  if (v186)
                  {
                    v283 = v192;
                    v284 = v110;
                    v285 = v109;
                    v286 = v181;
                    v287 = v186;
                    v288 = v182;
                    v289 = v183;
                    sub_1B1D66328(v190, v187, v191, v188, v189, v184, v185);
                    sub_1B1D66328(v192, v193, v194, v181, v186, v182, v183);
                    sub_1B1D66328(v190, v187, v191, v188, v189, v184, v185);
                    v122 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v290, &v283);
                    sub_1B1C91AE4(v283, v284);

                    sub_1B1C91AE4(v290, v291);

                    sub_1B1D0D630(v190, v187, v191, v188, v189, v184, v185);
                    if ((v122 & 1) == 0)
                    {
                      return 0;
                    }

                    goto LABEL_75;
                  }

                  sub_1B1D66328(v190, v187, v191, v188, v189, v184, v185);
                  v125 = v181;
                  v113 = v182;
                  v114 = v183;
                  sub_1B1D66328(v192, v193, v194, v181, 0, v182, v183);
                  v127 = v194;
                  sub_1B1D66328(v190, v187, v191, v188, v189, v184, v185);
                  v110 = v193;
                  sub_1B1C91AE4(v190, v187);
                  v126 = v192;

                  v123 = 0;
                }

                else
                {
                  v121 = v184;
                  v120 = v185;
                  sub_1B1D66328(v190, v187, v191, v188, 0, v184, v185);
                  v123 = v186;
                  if (!v186)
                  {
                    sub_1B1D66328(v111, v110, v109, v181, 0, v182, v183);
                    sub_1B1D0D630(v190, v187, v191, v188, 0, v184, v185);
LABEL_75:
                    if (v177)
                    {
                      v290 = v173;
                      v291 = v174;
                      v292 = v179;
                      v293 = v175;
                      v294 = v177;
                      v295 = v176;
                      v296 = v178;
                      if (v180)
                      {
                        v283 = v170;
                        v284 = v171;
                        v285 = v167;
                        v286 = v168;
                        v287 = v180;
                        v288 = v169;
                        v289 = v172;
                        sub_1B1D66328(v173, v174, v179, v175, v177, v176, v178);
                        sub_1B1D66328(v170, v171, v167, v168, v180, v169, v172);
                        sub_1B1D66328(v173, v174, v179, v175, v177, v176, v178);
                        v128 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v290, &v283);
                        sub_1B1C91AE4(v283, v284);

                        sub_1B1C91AE4(v290, v291);

                        sub_1B1D0D630(v173, v174, v179, v175, v177, v176, v178);
                        if ((v128 & 1) == 0)
                        {
                          return 0;
                        }

LABEL_85:
                        if (v166)
                        {
                          v290 = v149;
                          v291 = v151;
                          v292 = v152;
                          v293 = v153;
                          v294 = v166;
                          v295 = v154;
                          v296 = v150;
                          if (v165)
                          {
                            v283 = v159;
                            v284 = v160;
                            v285 = v161;
                            v286 = v162;
                            v287 = v165;
                            v288 = v163;
                            v289 = v164;
                            sub_1B1D66328(v149, v151, v152, v153, v166, v154, v150);
                            sub_1B1D66328(v159, v160, v161, v162, v165, v163, v164);
                            sub_1B1D66328(v149, v151, v152, v153, v166, v154, v150);
                            v133 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v290, &v283);
                            sub_1B1C91AE4(v283, v284);

                            sub_1B1C91AE4(v290, v291);

                            sub_1B1D0D630(v149, v151, v152, v153, v166, v154, v150);
                            if ((v133 & 1) == 0)
                            {
                              return 0;
                            }

                            goto LABEL_94;
                          }

                          sub_1B1D66328(v149, v151, v152, v153, v166, v154, v150);
                          sub_1B1D66328(v159, v160, v161, v162, 0, v163, v164);
                          sub_1B1D66328(v149, v151, v152, v153, v166, v154, v150);
                          sub_1B1C91AE4(v149, v151);
                        }

                        else
                        {
                          sub_1B1D66328(v149, v151, v152, v153, 0, v154, v150);
                          if (!v165)
                          {
                            sub_1B1D66328(v159, v160, v161, v162, 0, v163, v164);
                            sub_1B1D0D630(v149, v151, v152, v153, 0, v154, v150);
LABEL_94:
                            if (v148)
                            {
                              v290 = v142;
                              v291 = v144;
                              v292 = v145;
                              v293 = v146;
                              v294 = v148;
                              v295 = v147;
                              v296 = v143;
                              if (v158)
                              {
                                v283 = v157;
                                v284 = v137;
                                v285 = v138;
                                v286 = v139;
                                v287 = v158;
                                v288 = v140;
                                v289 = v141;
                                sub_1B1D66328(v142, v144, v145, v146, v148, v147, v143);
                                sub_1B1D66328(v157, v137, v138, v139, v158, v140, v141);
                                sub_1B1D66328(v142, v144, v145, v146, v148, v147, v143);
                                v136 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v290, &v283);
                                sub_1B1C91AE4(v283, v284);

                                sub_1B1C91AE4(v290, v291);

                                sub_1B1D0D630(v142, v144, v145, v146, v148, v147, v143);
                                return (v136 & 1) != 0;
                              }

                              sub_1B1D66328(v142, v144, v145, v146, v148, v147, v143);
                              sub_1B1D66328(v157, v137, v138, v139, 0, v140, v141);
                              sub_1B1D66328(v142, v144, v145, v146, v148, v147, v143);
                              sub_1B1C91AE4(v142, v144);
                            }

                            else
                            {
                              sub_1B1D66328(v142, v144, v145, v146, 0, v147, v143);
                              if (!v158)
                              {
                                sub_1B1D66328(v157, v137, v138, v139, 0, v140, v141);
                                sub_1B1D0D630(v142, v144, v145, v146, 0, v147, v143);
                                return 1;
                              }

                              sub_1B1D66328(v157, v137, v138, v139, v158, v140, v141);
                            }

                            v290 = v142;
                            v291 = v144;
                            v292 = v145;
                            v293 = v146;
                            v294 = v148;
                            v295 = v147;
                            v296 = v143;
                            v297 = v157;
                            v298 = v137;
                            v299 = v138;
                            v300 = v139;
                            v301 = v158;
                            v135 = v140;
                            v134 = v141;
                            goto LABEL_102;
                          }

                          sub_1B1D66328(v159, v160, v161, v162, v165, v163, v164);
                        }

                        v290 = v149;
                        v291 = v151;
                        v292 = v152;
                        v293 = v153;
                        v294 = v166;
                        v295 = v154;
                        v296 = v150;
                        v297 = v159;
                        v298 = v160;
                        v299 = v161;
                        v300 = v162;
                        v301 = v165;
                        v135 = v163;
                        v134 = v164;
LABEL_102:
                        v302 = v135;
                        v303 = v134;
                        goto LABEL_35;
                      }

                      sub_1B1D66328(v173, v174, v179, v175, v177, v176, v178);
                      v130 = v170;
                      v129 = v171;
                      v131 = v167;
                      v132 = v168;
                      v113 = v169;
                      v114 = v172;
                      sub_1B1D66328(v170, v171, v167, v168, 0, v169, v172);
                      sub_1B1D66328(v173, v174, v179, v175, v177, v176, v178);
                      sub_1B1C91AE4(v173, v174);
                    }

                    else
                    {
                      sub_1B1D66328(v173, v174, v179, v175, 0, v176, v178);
                      if (!v180)
                      {
                        sub_1B1D66328(v170, v171, v167, v168, 0, v169, v172);
                        sub_1B1D0D630(v173, v174, v179, v175, 0, v176, v178);
                        goto LABEL_85;
                      }

                      v130 = v170;
                      v129 = v171;
                      v131 = v167;
                      v132 = v168;
                      v113 = v169;
                      v114 = v172;
                      sub_1B1D66328(v170, v171, v167, v168, v180, v169, v172);
                    }

                    v290 = v173;
                    v291 = v174;
                    v292 = v179;
                    v293 = v175;
                    v294 = v177;
                    v295 = v176;
                    v296 = v178;
                    v297 = v130;
                    v298 = v129;
                    v299 = v131;
                    v300 = v132;
                    v301 = v180;
                    goto LABEL_83;
                  }

                  v124 = v111;
                  v125 = v181;
                  v113 = v182;
                  v126 = v111;
                  v127 = v109;
                  v114 = v183;
                  sub_1B1D66328(v124, v110, v109, v181, v186, v182, v183);
                }

                v290 = v190;
                v291 = v187;
                v292 = v191;
                v293 = v188;
                v294 = v189;
                v295 = v121;
                v296 = v120;
                v297 = v126;
                v298 = v110;
                v299 = v127;
                v300 = v125;
                v301 = v123;
LABEL_83:
                v302 = v113;
                v303 = v114;
                goto LABEL_35;
              }

              v113 = v197;
              v114 = v198;
              sub_1B1D66328(v203, v204, v208, v205, v201, v197, v198);
              v115 = v207;
              v116 = v200;
              v117 = v208;
              v118 = v206;
              v119 = 0;
            }

            v290 = v118;
            v291 = v116;
            v292 = v115;
            v293 = v105;
            v294 = v119;
            v295 = v112;
            v296 = v106;
            v297 = v203;
            v298 = v204;
            v299 = v117;
            v300 = v205;
            v301 = v107;
            goto LABEL_83;
          }

          v98 = v211;
          v99 = v215;
          v104 = v221;
          sub_1B1D66328(v211, v215, v212, v219, v221, v220, v216);
          v81 = v222;
          v100 = v209;
          v102 = v210;
          sub_1B1D66328(v217, v213, v222, v214, 0, v209, v210);
          v101 = v212;
          sub_1B1D66328(v211, v215, v212, v219, v221, v220, v216);
          sub_1B1C91AE4(v211, v215);

          v103 = v219;
        }

        else
        {
          v98 = v211;
          v99 = v215;
          v94 = v216;
          sub_1B1D66328(v211, v215, v212, v219, 0, v220, v216);
          v95 = v214;
          v96 = v213;
          if (!v218)
          {
            sub_1B1D66328(v217, v213, v81, v214, 0, v209, v210);
            sub_1B1D0D630(v211, v215, v212, v219, 0, v220, v216);
            goto LABEL_57;
          }

          v100 = v209;
          v101 = v212;
          v102 = v210;
          sub_1B1D66328(v217, v213, v81, v214, v218, v209, v210);
          v103 = v219;
          v104 = 0;
        }

        v290 = v98;
        v291 = v99;
        v292 = v101;
        v293 = v103;
        v294 = v104;
        v295 = v220;
        v296 = v94;
        v297 = v217;
        v298 = v96;
        v299 = v81;
        v300 = v95;
        v301 = v218;
        v302 = v100;
        v303 = v102;
LABEL_35:
        sub_1B1CDEC18(&v290, &qword_1EB775FA8, &qword_1B1D93648);
        return 0;
      }

      v85 = v66;
      v86 = v223;
      v87 = v224;
      v88 = v225;
      sub_1B1D66328(v67, v85, v234, v223, v233, v224, v225);
      v89 = v67;
      v90 = 0;
    }

    v290 = v82;
    v291 = v83;
    v292 = v84;
    v293 = v77;
    v294 = v90;
    v295 = v78;
    v296 = v79;
    v297 = v89;
    v298 = v236;
    v299 = v234;
    v300 = v86;
    v301 = v233;
    v302 = v87;
    v303 = v88;
    goto LABEL_35;
  }

  return 0;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO4TOTPV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 18);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v24 = *(a1 + 56);
  v7 = *(a2 + 16);
  v8 = *(a2 + 18);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v21 = *(a2 + 48);
  v22 = *(a1 + 48);
  v23 = *(a2 + 56);
  v12 = sub_1B1D583E4(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if (v12 && v2 == v7 && v3 == v8)
  {
    if (v5)
    {
      if (!v9 || (v4 != v10 || v5 != v9) && (sub_1B1D7C50C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    v14 = 0x363532616873;
    if (v6 != 1)
    {
      v14 = 0x323135616873;
    }

    if (v6)
    {
      v15 = v14;
    }

    else
    {
      v15 = 828467315;
    }

    if (v6)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    v17 = 0x363532616873;
    if (v11 != 1)
    {
      v17 = 0x323135616873;
    }

    if (v11)
    {
      v18 = v17;
    }

    else
    {
      v18 = 828467315;
    }

    if (v11)
    {
      v19 = 0xE600000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    if (v15 == v18 && v16 == v19)
    {
    }

    else
    {
      v20 = sub_1B1D7C50C();

      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    if (v24)
    {
      if (v23 && (v22 == v21 && v24 == v23 || (sub_1B1D7C50C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v23)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s22AuthenticationServices22ASImportableCredentialO4WiFiV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v112 = a1[2];
  v4 = a1[4];
  v113 = a1[5];
  v114 = *a1;
  v5 = a1[6];
  v101 = a1[7];
  v102 = a1[8];
  v110 = a1[9];
  v108 = a1[10];
  v100 = a1[11];
  v105 = a1[12];
  v103 = a1[13];
  v91 = a1[14];
  v92 = a1[15];
  v7 = a1[16];
  v6 = a1[17];
  v8 = a1[19];
  v90 = a1[18];
  v9 = a1[20];
  v10 = a1[21];
  v12 = a1[22];
  v11 = a1[23];
  v13 = a1[24];
  v14 = a1[25];
  v16 = a1[26];
  v15 = a1[27];
  v17 = *a2;
  v18 = a2[1];
  v20 = a2[2];
  v19 = a2[3];
  v21 = a2[4];
  v111 = a2[5];
  v22 = a2[6];
  v96 = a2[7];
  v104 = a2[8];
  v107 = a2[9];
  v97 = a2[10];
  v106 = a2[11];
  v98 = a2[12];
  v99 = a2[13];
  v93 = a2[14];
  v94 = a2[15];
  v89 = a2[16];
  v86 = a2[17];
  v95 = a2[18];
  v87 = a2[19];
  v23 = a2[21];
  v88 = a2[20];
  v25 = a2[22];
  v24 = a2[23];
  v27 = a2[24];
  v26 = a2[25];
  v29 = a2[26];
  v28 = a2[27];
  if (!v4)
  {
    v82 = v7;
    v83 = v6;
    v84 = v9;
    v85 = v8;
    v80 = a2[21];
    v81 = a2[25];
    v74 = a2[22];
    v75 = a2[23];
    v68 = a2[24];
    v69 = a2[26];
    v70 = a2[27];
    v71 = v10;
    v76 = v14;
    v77 = v11;
    v72 = v12;
    v73 = v16;
    v78 = v13;
    v79 = v15;
    sub_1B1D66328(v114, v2, v112, v3, 0, v113, v5);
    if (!v21)
    {
      sub_1B1D66328(v17, v18, v20, v19, 0, v111, v22);
      sub_1B1D0D630(v114, v2, v112, v3, 0, v113, v5);
      v31 = v100;
      if (v100)
      {
        goto LABEL_5;
      }

LABEL_16:
      v33 = v101;
      v32 = v102;
      v35 = v105;
      v36 = v103;
      sub_1B1D66328(v101, v102, v110, v108, 0, v105, v103);
      v38 = v98;
      v37 = v99;
      v39 = v97;
      v34 = v104;
      if (!v106)
      {
        sub_1B1D66328(v96, v104, v107, v97, 0, v98, v99);
        sub_1B1D0D630(v101, v102, v110, v108, 0, v105, v103);
        v41 = v90;
        if (v90)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }

      v46 = v96;
      sub_1B1D66328(v96, v104, v107, v97, v106, v98, v99);
      goto LABEL_19;
    }

    v43 = v19;
    v109 = v19;
    v44 = v111;
    sub_1B1D66328(v17, v18, v20, v43, v21, v111, v22);
LABEL_14:
    v122 = v114;
    v123 = v2;
    v124 = v112;
    v125 = v3;
    v126 = v4;
    v127 = v113;
    v128 = v5;
    v129 = v17;
    v130 = v18;
    v131 = v20;
    v132 = v109;
    v133 = v21;
    v134 = v44;
    v135 = v22;
LABEL_35:
    sub_1B1CDEC18(&v122, &qword_1EB775FA8, &qword_1B1D93648);
    return 0;
  }

  v122 = v114;
  v123 = v2;
  v124 = v112;
  v125 = v3;
  v126 = v4;
  v127 = v113;
  v128 = v5;
  v109 = v19;
  if (!v21)
  {
    sub_1B1D66328(v114, v2, v112, v3, v4, v113, v5);
    v45 = v19;
    v44 = v111;
    sub_1B1D66328(v17, v18, v20, v45, 0, v111, v22);
    sub_1B1D66328(v114, v2, v112, v3, v4, v113, v5);
    sub_1B1C91AE4(v114, v2);

    goto LABEL_14;
  }

  v82 = v7;
  v83 = v6;
  v84 = v9;
  v85 = v8;
  v80 = v23;
  v81 = v26;
  v74 = v25;
  v75 = v24;
  v68 = v27;
  v69 = v29;
  v70 = v28;
  v71 = v10;
  v76 = v14;
  v77 = v11;
  v72 = v12;
  v73 = v16;
  v78 = v13;
  v79 = v15;
  v115 = v17;
  v116 = v18;
  v117 = v20;
  v118 = v19;
  v119 = v21;
  v120 = v111;
  v121 = v22;
  sub_1B1D66328(v114, v2, v112, v3, v4, v113, v5);
  sub_1B1D66328(v17, v18, v20, v19, v21, v111, v22);
  sub_1B1D66328(v114, v2, v112, v3, v4, v113, v5);
  v30 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v122, &v115);
  sub_1B1C91AE4(v115, v116);

  sub_1B1C91AE4(v122, v123);

  sub_1B1D0D630(v114, v2, v112, v3, v4, v113, v5);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  v31 = v100;
  if (!v100)
  {
    goto LABEL_16;
  }

LABEL_5:
  v33 = v101;
  v32 = v102;
  v122 = v101;
  v123 = v102;
  v124 = v110;
  v125 = v108;
  v34 = v104;
  v35 = v105;
  v126 = v31;
  v127 = v105;
  v36 = v103;
  v128 = v103;
  v38 = v98;
  v37 = v99;
  v39 = v97;
  if (!v106)
  {
    sub_1B1D66328(v101, v102, v110, v108, v31, v105, v103);
    v46 = v96;
    sub_1B1D66328(v96, v104, v107, v97, 0, v98, v99);
    sub_1B1D66328(v101, v102, v110, v108, v31, v105, v103);
    sub_1B1C91AE4(v101, v102);

LABEL_19:
    v122 = v33;
    v123 = v32;
    v124 = v110;
    v125 = v108;
    v126 = v31;
    v127 = v35;
    v128 = v36;
    v129 = v46;
    v130 = v34;
    v131 = v107;
    v132 = v39;
    v133 = v106;
    v134 = v38;
    v135 = v37;
    goto LABEL_35;
  }

  v115 = v96;
  v116 = v104;
  v117 = v107;
  v118 = v97;
  v119 = v106;
  v120 = v98;
  v121 = v99;
  sub_1B1D66328(v101, v102, v110, v108, v31, v105, v103);
  sub_1B1D66328(v96, v104, v107, v97, v106, v98, v99);
  sub_1B1D66328(v101, v102, v110, v108, v31, v105, v103);
  v40 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v122, &v115);
  sub_1B1C91AE4(v115, v116);

  sub_1B1C91AE4(v122, v123);

  sub_1B1D0D630(v101, v102, v110, v108, v31, v105, v103);
  if (v40)
  {
    v41 = v90;
    if (v90)
    {
LABEL_8:
      v122 = v91;
      v123 = v92;
      v124 = v82;
      v125 = v83;
      v126 = v41;
      v127 = v85;
      v128 = v84;
      if (v95)
      {
        v115 = v93;
        v116 = v94;
        v117 = v89;
        v118 = v86;
        v119 = v95;
        v120 = v87;
        v121 = v88;
        sub_1B1D66328(v91, v92, v82, v83, v41, v85, v84);
        sub_1B1D66328(v93, v94, v89, v86, v95, v87, v88);
        sub_1B1D66328(v91, v92, v82, v83, v41, v85, v84);
        v42 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v122, &v115);
        sub_1B1C91AE4(v115, v116);

        sub_1B1C91AE4(v122, v123);

        sub_1B1D0D630(v91, v92, v82, v83, v41, v85, v84);
        if ((v42 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_26;
      }

      v48 = v91;
      v47 = v92;
      v56 = v41;
      v50 = v84;
      v51 = v85;
      v49 = v83;
      sub_1B1D66328(v91, v92, v82, v83, v41, v85, v84);
      v52 = v88;
      v54 = v86;
      v53 = v87;
      sub_1B1D66328(v93, v94, v89, v86, 0, v87, v88);
      sub_1B1D66328(v91, v92, v82, v83, v56, v85, v84);
      sub_1B1C91AE4(v91, v92);

      v55 = v89;
      goto LABEL_24;
    }

LABEL_21:
    v48 = v91;
    v47 = v92;
    v49 = v83;
    v50 = v84;
    v51 = v85;
    sub_1B1D66328(v91, v92, v82, v83, 0, v85, v84);
    if (!v95)
    {
      sub_1B1D66328(v93, v94, v89, v86, 0, v87, v88);
      sub_1B1D0D630(v91, v92, v82, v83, 0, v85, v84);
LABEL_26:
      if (v76)
      {
        v122 = v71;
        v123 = v72;
        v58 = v77;
        v124 = v77;
        v125 = v78;
        v126 = v76;
        v127 = v73;
        v128 = v79;
        if (v81)
        {
          v115 = v80;
          v116 = v74;
          v117 = v75;
          v118 = v68;
          v119 = v81;
          v120 = v69;
          v121 = v70;
          sub_1B1D66328(v71, v72, v77, v78, v76, v73, v79);
          sub_1B1D66328(v80, v74, v75, v68, v81, v69, v70);
          sub_1B1D66328(v71, v72, v77, v78, v76, v73, v79);
          v59 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v122, &v115);
          sub_1B1C91AE4(v115, v116);

          sub_1B1C91AE4(v122, v123);

          sub_1B1D0D630(v71, v72, v77, v78, v76, v73, v79);
          return (v59 & 1) != 0;
        }

        v64 = v78;
        v61 = v76;
        v81 = 0;
        v65 = v73;
        v66 = v79;
        v62 = v72;
        v63 = v71;
        sub_1B1D66328(v71, v72, v77, v78, v76, v73, v79);
        v67 = v68;
        v53 = v69;
        v52 = v70;
        sub_1B1D66328(v80, v74, v75, v68, 0, v69, v70);
        sub_1B1D66328(v71, v72, v77, v78, v76, v73, v79);
        sub_1B1C91AE4(v71, v72);
      }

      else
      {
        v61 = 0;
        v63 = v71;
        v62 = v72;
        v58 = v77;
        v64 = v78;
        v65 = v73;
        v66 = v79;
        sub_1B1D66328(v71, v72, v77, v78, 0, v73, v79);
        if (!v81)
        {
          sub_1B1D66328(v80, v74, v75, v68, 0, v69, v70);
          sub_1B1D0D630(v71, v72, v77, v78, 0, v73, v79);
          return 1;
        }

        v67 = v68;
        v53 = v69;
        v52 = v70;
        sub_1B1D66328(v80, v74, v75, v68, v81, v69, v70);
      }

      v122 = v63;
      v123 = v62;
      v124 = v58;
      v125 = v64;
      v126 = v61;
      v127 = v65;
      v128 = v66;
      v129 = v80;
      v130 = v74;
      v131 = v75;
      v132 = v67;
      v57 = v81;
      goto LABEL_34;
    }

    v52 = v88;
    v54 = v86;
    v53 = v87;
    sub_1B1D66328(v93, v94, v89, v86, v95, v87, v88);
    v55 = v89;
    v56 = v90;
LABEL_24:
    v122 = v48;
    v123 = v47;
    v124 = v82;
    v125 = v49;
    v126 = v56;
    v127 = v51;
    v128 = v50;
    v129 = v93;
    v130 = v94;
    v131 = v55;
    v132 = v54;
    v57 = v95;
LABEL_34:
    v133 = v57;
    v134 = v53;
    v135 = v52;
    goto LABEL_35;
  }

  return 0;
}

BOOL _s22AuthenticationServices22ASImportableCredentialO6SSHKeyV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v84 = a1[4];
  v4 = a1[5];
  v86 = a1[6];
  v87 = a1[7];
  v88 = a1[8];
  v89 = a1[9];
  v5 = a1[10];
  v90 = a1[12];
  v91 = a1[11];
  v74 = a1[13];
  v75 = a1[14];
  v76 = a1[15];
  v77 = a1[16];
  v83 = a1[17];
  v80 = a1[18];
  v78 = a1[19];
  v66 = a1[20];
  v67 = a1[21];
  v68 = a1[22];
  v64 = a1[24];
  v60 = a1[23];
  v61 = a1[25];
  v62 = a1[26];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v85 = a2[8];
  v97 = a2[7];
  v98 = a2[9];
  v92 = a2[11];
  v93 = a2[12];
  v94 = a2[10];
  v81 = a2[13];
  v79 = a2[14];
  v95 = a2[15];
  v11 = a2[16];
  v82 = a2[17];
  v72 = a2[18];
  v73 = a2[19];
  v65 = a2[21];
  v63 = a2[22];
  v70 = a2[23];
  v71 = a2[20];
  v69 = a2[24];
  v58 = a2[25];
  v59 = a2[26];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B1D7C50C() & 1) == 0 || !sub_1B1D583E4(v2, v3, v7, v6))
  {
    return 0;
  }

  v57 = v11;
  if (v4)
  {
    v12 = v95;
    v13 = v97;
    v14 = v98;
    if (!v9)
    {
      return 0;
    }

    v15 = v5;
    if (v84 != v8 || (v16 = v10, v4 != v9))
    {
      v17 = sub_1B1D7C50C();
      v16 = v10;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v12 = v95;
    v13 = v97;
    v15 = v5;
    v14 = v98;
    v16 = v10;
    if (v9)
    {
      return 0;
    }
  }

  if (!v15)
  {
    v19 = v87;
    v20 = v88;
    v21 = v89;
    v22 = v90;
    v23 = v91;
    sub_1B1D66328(v86, v87, v88, v89, 0, v91, v90);
    if (!v94)
    {
      sub_1B1D66328(v10, v13, v85, v98, 0, v92, v93);
      sub_1B1D0D630(v86, v87, v88, v89, 0, v91, v90);
      v26 = v83;
      if (v83)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    v96 = v10;
    sub_1B1D66328(v10, v13, v85, v98, v94, v92, v93);
    v18 = v86;
    v14 = v98;
    v34 = v85;
    v13 = v97;
LABEL_22:
    v106 = v18;
    v107 = v19;
    v108 = v20;
    v109 = v21;
    v110 = v15;
    v111 = v23;
    v112 = v22;
    v113 = v96;
    v114 = v13;
    v115 = v34;
    v116 = v14;
    v117 = v94;
    v118 = v92;
    v119 = v93;
LABEL_37:
    sub_1B1CDEC18(&v106, &qword_1EB775FA8, &qword_1B1D93648);
    return 0;
  }

  v18 = v86;
  v19 = v87;
  v106 = v86;
  v107 = v87;
  v20 = v88;
  v21 = v89;
  v108 = v88;
  v109 = v89;
  v22 = v90;
  v23 = v91;
  v110 = v15;
  v111 = v91;
  v112 = v90;
  if (!v94)
  {
    v35 = v16;
    sub_1B1D66328(v86, v87, v88, v89, v15, v91, v90);
    v96 = v35;
    v36 = v35;
    v34 = v85;
    sub_1B1D66328(v36, v13, v85, v14, 0, v92, v93);
    sub_1B1D66328(v86, v87, v88, v89, v15, v91, v90);
    sub_1B1C91AE4(v86, v87);

    goto LABEL_22;
  }

  v99 = v16;
  v100 = v13;
  v101 = v85;
  v102 = v14;
  v103 = v94;
  v104 = v92;
  v105 = v93;
  v24 = v16;
  sub_1B1D66328(v86, v87, v88, v89, v15, v91, v90);
  sub_1B1D66328(v24, v97, v85, v98, v94, v92, v93);
  sub_1B1D66328(v86, v87, v88, v89, v15, v91, v90);
  v25 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v106, &v99);
  sub_1B1C91AE4(v99, v100);

  sub_1B1C91AE4(v106, v107);
  v12 = v95;

  sub_1B1D0D630(v86, v87, v88, v89, v15, v91, v90);
  if (v25)
  {
    v26 = v83;
    if (v83)
    {
LABEL_16:
      v28 = v74;
      v27 = v75;
      v106 = v74;
      v107 = v75;
      v30 = v76;
      v29 = v77;
      v108 = v76;
      v109 = v77;
      v31 = v80;
      v110 = v26;
      v111 = v80;
      v32 = v78;
      v112 = v78;
      if (v82)
      {
        v99 = v81;
        v100 = v79;
        v101 = v12;
        v102 = v57;
        v103 = v82;
        v104 = v72;
        v105 = v73;
        sub_1B1D66328(v74, v75, v76, v77, v26, v80, v78);
        sub_1B1D66328(v81, v79, v95, v57, v82, v72, v73);
        sub_1B1D66328(v74, v75, v76, v77, v83, v80, v78);
        v33 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v106, &v99);
        sub_1B1C91AE4(v99, v100);

        sub_1B1C91AE4(v106, v107);

        sub_1B1D0D630(v74, v75, v76, v77, v83, v80, v78);
        if ((v33 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_29;
      }

      v42 = v12;
      v41 = v26;
      sub_1B1D66328(v74, v75, v76, v77, v26, v80, v78);
      v37 = v79;
      v43 = v42;
      v39 = v72;
      v38 = v73;
      sub_1B1D66328(v81, v79, v43, v57, 0, v72, v73);
      sub_1B1D66328(v74, v75, v76, v77, v41, v80, v78);
      sub_1B1C91AE4(v74, v75);

      v40 = v95;
LABEL_27:
      v106 = v28;
      v107 = v27;
      v108 = v30;
      v109 = v29;
      v110 = v41;
      v111 = v31;
      v112 = v32;
      v113 = v81;
      v114 = v37;
      v115 = v40;
      v116 = v57;
      v117 = v82;
      v118 = v39;
      v119 = v38;
      goto LABEL_37;
    }

LABEL_24:
    v28 = v74;
    v27 = v75;
    v30 = v76;
    v29 = v77;
    v31 = v80;
    v32 = v78;
    sub_1B1D66328(v74, v75, v76, v77, 0, v80, v78);
    if (!v82)
    {
      sub_1B1D66328(v81, v79, v12, v57, 0, v72, v73);
      sub_1B1D0D630(v74, v75, v76, v77, 0, v80, v78);
LABEL_29:
      if (v64)
      {
        v44 = v66;
        v106 = v66;
        v107 = v67;
        v108 = v68;
        v109 = v60;
        v110 = v64;
        v111 = v61;
        v45 = v62;
        v112 = v62;
        v46 = v65;
        if (v69)
        {
          v99 = v71;
          v100 = v65;
          v101 = v63;
          v102 = v70;
          v103 = v69;
          v104 = v58;
          v105 = v59;
          sub_1B1D66328(v66, v67, v68, v60, v64, v61, v62);
          sub_1B1D66328(v71, v65, v63, v70, v69, v58, v59);
          sub_1B1D66328(v66, v67, v68, v60, v64, v61, v62);
          v47 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v106, &v99);
          sub_1B1C91AE4(v99, v100);

          sub_1B1C91AE4(v106, v107);

          sub_1B1D0D630(v66, v67, v68, v60, v64, v61, v62);
          return (v47 & 1) != 0;
        }

        v49 = v67;
        v50 = v68;
        v51 = v60;
        v56 = v64;
        v52 = v61;
        sub_1B1D66328(v66, v67, v68, v60, v64, v61, v62);
        v54 = v58;
        v53 = v59;
        sub_1B1D66328(v71, v65, v63, v70, 0, v58, v59);
        sub_1B1D66328(v66, v67, v68, v60, v64, v61, v62);
        sub_1B1C91AE4(v66, v67);

        v55 = v63;
      }

      else
      {
        v44 = v66;
        v49 = v67;
        v50 = v68;
        v51 = v60;
        v52 = v61;
        v45 = v62;
        sub_1B1D66328(v66, v67, v68, v60, 0, v61, v62);
        v46 = v65;
        if (!v69)
        {
          sub_1B1D66328(v71, v65, v63, v70, 0, v58, v59);
          sub_1B1D0D630(v66, v67, v68, v60, 0, v61, v62);
          return 1;
        }

        v54 = v58;
        v53 = v59;
        sub_1B1D66328(v71, v65, v63, v70, v69, v58, v59);
        v55 = v63;
        v56 = 0;
      }

      v106 = v44;
      v107 = v49;
      v108 = v50;
      v109 = v51;
      v110 = v56;
      v111 = v52;
      v112 = v45;
      v113 = v71;
      v114 = v46;
      v115 = v55;
      v116 = v70;
      v117 = v69;
      v118 = v54;
      v119 = v53;
      goto LABEL_37;
    }

    v37 = v79;
    v39 = v72;
    v38 = v73;
    sub_1B1D66328(v81, v79, v12, v57, v82, v72, v73);
    v40 = v12;
    v41 = v83;
    goto LABEL_27;
  }

  return 0;
}

BOOL sub_1B1D5F8B0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v167 = *a1;
  v3 = a1[3];
  v168 = a1[2];
  v4 = a1[4];
  v169 = a1[5];
  v5 = a1[6];
  v152 = a1[7];
  v153 = a1[8];
  v160 = a1[10];
  v151 = a1[11];
  v154 = a1[12];
  v155 = a1[9];
  v157 = a1[13];
  v144 = a1[14];
  v145 = a1[15];
  v137 = a1[16];
  v138 = a1[17];
  v142 = a1[18];
  v139 = a1[19];
  v140 = a1[20];
  v129 = a1[21];
  v130 = a1[22];
  v121 = a1[23];
  v122 = a1[24];
  v128 = a1[25];
  v123 = a1[26];
  v124 = a1[27];
  v116 = a1[28];
  v117 = a1[29];
  v7 = a1[30];
  v6 = a1[31];
  v8 = a1[33];
  v115 = a1[32];
  v9 = a1[34];
  v10 = a1[35];
  v12 = a1[36];
  v11 = a1[37];
  v13 = a1[38];
  v14 = a1[39];
  v16 = a1[40];
  v15 = a1[41];
  v17 = *a2;
  v165 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v21 = a2[4];
  v20 = a2[5];
  v166 = a2[6];
  v149 = a2[7];
  v156 = a2[8];
  v158 = a2[9];
  v162 = a2[10];
  v161 = a2[11];
  v150 = a2[12];
  v159 = a2[13];
  v146 = a2[14];
  v143 = a2[15];
  v141 = a2[16];
  v147 = a2[17];
  v148 = a2[18];
  v135 = a2[19];
  v136 = a2[20];
  v132 = a2[21];
  v133 = a2[22];
  v134 = a2[23];
  v125 = a2[24];
  v131 = a2[25];
  v126 = a2[26];
  v127 = a2[27];
  v118 = a2[28];
  v119 = a2[29];
  v114 = a2[30];
  v111 = a2[31];
  v120 = a2[32];
  v112 = a2[33];
  v22 = a2[35];
  v113 = a2[34];
  v24 = a2[36];
  v23 = a2[37];
  v26 = a2[38];
  v25 = a2[39];
  v28 = a2[40];
  v27 = a2[41];
  if (!v4)
  {
    v107 = v7;
    v108 = v6;
    v110 = v8;
    v109 = v9;
    v105 = a2[35];
    v106 = a2[39];
    v99 = a2[36];
    v100 = a2[37];
    v96 = a2[38];
    v97 = a2[40];
    v98 = a2[41];
    v101 = v14;
    v102 = v11;
    v93 = v10;
    v94 = v12;
    v103 = v13;
    v104 = v15;
    v95 = v16;
    sub_1B1D66328(v167, v2, v168, v3, 0, v169, v5);
    if (!v21)
    {
      sub_1B1D66328(v17, v165, v18, v19, 0, v20, v166);
      sub_1B1D0D630(v167, v2, v168, v3, 0, v169, v5);
      v30 = v151;
      if (v151)
      {
        goto LABEL_5;
      }

LABEL_16:
      v31 = v152;
      v32 = v153;
      v33 = v154;
      v50 = v155;
      v51 = v160;
      v34 = v157;
      sub_1B1D66328(v152, v153, v155, v160, 0, v154, v157);
      v52 = v150;
      v35 = v156;
      if (!v161)
      {
        sub_1B1D66328(v149, v156, v158, v162, 0, v150, v159);
        sub_1B1D0D630(v152, v153, v155, v160, 0, v154, v157);
        v37 = v142;
        if (v142)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }

      v53 = v149;
      sub_1B1D66328(v149, v156, v158, v162, v161, v150, v159);
      goto LABEL_19;
    }

    v40 = v17;
    v41 = v17;
    v42 = v165;
    v43 = v18;
    v44 = v20;
    v163 = v18;
    v45 = v167;
    v164 = v20;
    v46 = v166;
    sub_1B1D66328(v41, v165, v43, v19, v21, v44, v166);
LABEL_14:
    v178 = v45;
    v179 = v2;
    v180 = v168;
    v181 = v3;
    v182 = v4;
    v183 = v169;
    v184 = v5;
    v185 = v40;
    v186 = v42;
    v187 = v163;
    v188 = v19;
    v189 = v21;
    v190 = v164;
    v191 = v46;
LABEL_53:
    sub_1B1CDEC18(&v178, &qword_1EB775FA8, &qword_1B1D93648);
    return 0;
  }

  v178 = v167;
  v179 = v2;
  v180 = v168;
  v181 = v3;
  v182 = v4;
  v183 = v169;
  v184 = v5;
  v164 = v20;
  v163 = v18;
  if (!v21)
  {
    sub_1B1D66328(v167, v2, v168, v3, v4, v169, v5);
    v40 = v17;
    v47 = v17;
    v42 = v165;
    v48 = v18;
    v49 = v20;
    v45 = v167;
    v46 = v166;
    sub_1B1D66328(v47, v165, v48, v19, 0, v49, v166);
    sub_1B1D66328(v167, v2, v168, v3, v4, v169, v5);
    sub_1B1C91AE4(v167, v2);

    goto LABEL_14;
  }

  v107 = v7;
  v108 = v6;
  v110 = v8;
  v109 = v9;
  v105 = v22;
  v106 = v25;
  v99 = v24;
  v100 = v23;
  v96 = v26;
  v97 = v28;
  v98 = v27;
  v101 = v14;
  v102 = v11;
  v93 = v10;
  v94 = v12;
  v103 = v13;
  v104 = v15;
  v95 = v16;
  v171 = v17;
  v172 = v165;
  v173 = v18;
  v174 = v19;
  v175 = v21;
  v176 = v20;
  v177 = v166;
  sub_1B1D66328(v167, v2, v168, v3, v4, v169, v5);
  sub_1B1D66328(v17, v165, v18, v19, v21, v20, v166);
  sub_1B1D66328(v167, v2, v168, v3, v4, v169, v5);
  v29 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v178, &v171);
  sub_1B1C91AE4(v171, v172);

  sub_1B1C91AE4(v178, v179);

  sub_1B1D0D630(v167, v2, v168, v3, v4, v169, v5);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = v151;
  if (!v151)
  {
    goto LABEL_16;
  }

LABEL_5:
  v31 = v152;
  v32 = v153;
  v178 = v152;
  v179 = v153;
  v33 = v154;
  v180 = v155;
  v181 = v160;
  v182 = v30;
  v183 = v154;
  v34 = v157;
  v184 = v157;
  v35 = v156;
  if (!v161)
  {
    sub_1B1D66328(v152, v153, v155, v160, v30, v154, v157);
    v53 = v149;
    v52 = v150;
    sub_1B1D66328(v149, v156, v158, v162, 0, v150, v159);
    v50 = v155;
    v51 = v160;
    sub_1B1D66328(v152, v153, v155, v160, v30, v154, v157);
    sub_1B1C91AE4(v152, v153);

LABEL_19:
    v178 = v31;
    v179 = v32;
    v180 = v50;
    v181 = v51;
    v182 = v30;
    v183 = v33;
    v184 = v34;
    v185 = v53;
    v186 = v35;
    v187 = v158;
    v188 = v162;
    v189 = v161;
    v190 = v52;
    v191 = v159;
    goto LABEL_53;
  }

  v171 = v149;
  v172 = v156;
  v173 = v158;
  v174 = v162;
  v175 = v161;
  v176 = v150;
  v177 = v159;
  sub_1B1D66328(v152, v153, v155, v160, v30, v154, v157);
  sub_1B1D66328(v149, v156, v158, v162, v161, v150, v159);
  sub_1B1D66328(v152, v153, v155, v160, v30, v154, v157);
  v36 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v178, &v171);
  sub_1B1C91AE4(v171, v172);

  sub_1B1C91AE4(v178, v179);

  sub_1B1D0D630(v152, v153, v155, v160, v30, v154, v157);
  if (v36)
  {
    v37 = v142;
    if (v142)
    {
LABEL_8:
      v178 = v144;
      v179 = v145;
      v180 = v137;
      v181 = v138;
      v38 = v140;
      v182 = v37;
      v183 = v139;
      v184 = v140;
      v39 = v143;
      if (v148)
      {
        v171 = v146;
        v172 = v143;
        v173 = v141;
        v174 = v147;
        v175 = v148;
        v176 = v135;
        v177 = v136;
        sub_1B1D66328(v144, v145, v137, v138, v37, v139, v140);
        sub_1B1D66328(v146, v143, v141, v147, v148, v135, v136);
        sub_1B1D66328(v144, v145, v137, v138, v37, v139, v140);
        v170 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v178, &v171);
        sub_1B1C91AE4(v171, v172);

        sub_1B1C91AE4(v178, v179);

        sub_1B1D0D630(v144, v145, v137, v138, v37, v139, v140);
        if ((v170 & 1) == 0)
        {
          return 0;
        }

LABEL_26:
        if (v128)
        {
          v178 = v129;
          v179 = v130;
          v64 = v122;
          v180 = v121;
          v181 = v122;
          v66 = v123;
          v65 = v124;
          v182 = v128;
          v183 = v123;
          v184 = v124;
          if (v131)
          {
            v171 = v132;
            v172 = v133;
            v173 = v134;
            v174 = v125;
            v175 = v131;
            v176 = v126;
            v177 = v127;
            sub_1B1D66328(v129, v130, v121, v122, v128, v123, v124);
            sub_1B1D66328(v132, v133, v134, v125, v131, v126, v127);
            sub_1B1D66328(v129, v130, v121, v122, v128, v123, v124);
            v67 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v178, &v171);
            sub_1B1C91AE4(v171, v172);

            sub_1B1C91AE4(v178, v179);

            sub_1B1D0D630(v129, v130, v121, v122, v128, v123, v124);
            if ((v67 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_35;
          }

          v69 = v129;
          v68 = v130;
          v70 = v121;
          v73 = v128;
          sub_1B1D66328(v129, v130, v121, v122, v128, v123, v124);
          v71 = v125;
          v60 = v126;
          v59 = v127;
          sub_1B1D66328(v132, v133, v134, v125, 0, v126, v127);
          sub_1B1D66328(v129, v130, v121, v122, v128, v123, v124);
          sub_1B1C91AE4(v129, v130);

          v72 = v133;
        }

        else
        {
          v69 = v129;
          v68 = v130;
          v70 = v121;
          v64 = v122;
          v66 = v123;
          v65 = v124;
          sub_1B1D66328(v129, v130, v121, v122, 0, v123, v124);
          if (!v131)
          {
            sub_1B1D66328(v132, v133, v134, v125, 0, v126, v127);
            sub_1B1D0D630(v129, v130, v121, v122, 0, v123, v124);
LABEL_35:
            if (v115)
            {
              v178 = v116;
              v179 = v117;
              v180 = v107;
              v181 = v108;
              v182 = v115;
              v183 = v110;
              v184 = v109;
              if (v120)
              {
                v171 = v118;
                v172 = v119;
                v173 = v114;
                v174 = v111;
                v175 = v120;
                v176 = v112;
                v177 = v113;
                sub_1B1D66328(v116, v117, v107, v108, v115, v110, v109);
                sub_1B1D66328(v118, v119, v114, v111, v120, v112, v113);
                sub_1B1D66328(v116, v117, v107, v108, v115, v110, v109);
                v74 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v178, &v171);
                sub_1B1C91AE4(v171, v172);

                sub_1B1C91AE4(v178, v179);

                sub_1B1D0D630(v116, v117, v107, v108, v115, v110, v109);
                if ((v74 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_44;
              }

              v76 = v116;
              v75 = v117;
              v82 = v115;
              v79 = v109;
              v78 = v110;
              v77 = v108;
              sub_1B1D66328(v116, v117, v107, v108, v115, v110, v109);
              v59 = v113;
              v80 = v111;
              v60 = v112;
              sub_1B1D66328(v118, v119, v114, v111, 0, v112, v113);
              sub_1B1D66328(v116, v117, v107, v108, v115, v110, v109);
              sub_1B1C91AE4(v116, v117);

              v81 = v114;
            }

            else
            {
              v76 = v116;
              v75 = v117;
              v77 = v108;
              v78 = v110;
              v79 = v109;
              sub_1B1D66328(v116, v117, v107, v108, 0, v110, v109);
              if (!v120)
              {
                sub_1B1D66328(v118, v119, v114, v111, 0, v112, v113);
                sub_1B1D0D630(v116, v117, v107, v108, 0, v110, v109);
LABEL_44:
                if (v101)
                {
                  v178 = v93;
                  v179 = v94;
                  v83 = v102;
                  v180 = v102;
                  v181 = v103;
                  v182 = v101;
                  v183 = v95;
                  v184 = v104;
                  if (v106)
                  {
                    v171 = v105;
                    v172 = v99;
                    v173 = v100;
                    v174 = v96;
                    v175 = v106;
                    v176 = v97;
                    v177 = v98;
                    sub_1B1D66328(v93, v94, v102, v103, v101, v95, v104);
                    sub_1B1D66328(v105, v99, v100, v96, v106, v97, v98);
                    sub_1B1D66328(v93, v94, v102, v103, v101, v95, v104);
                    v84 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v178, &v171);
                    sub_1B1C91AE4(v171, v172);

                    sub_1B1C91AE4(v178, v179);

                    sub_1B1D0D630(v93, v94, v102, v103, v101, v95, v104);
                    return (v84 & 1) != 0;
                  }

                  v89 = v103;
                  v86 = v101;
                  v106 = 0;
                  v90 = v95;
                  v91 = v104;
                  v87 = v94;
                  v88 = v93;
                  sub_1B1D66328(v93, v94, v102, v103, v101, v95, v104);
                  v92 = v96;
                  v60 = v97;
                  v59 = v98;
                  sub_1B1D66328(v105, v99, v100, v96, 0, v97, v98);
                  sub_1B1D66328(v93, v94, v102, v103, v101, v95, v104);
                  sub_1B1C91AE4(v93, v94);
                }

                else
                {
                  v86 = 0;
                  v88 = v93;
                  v87 = v94;
                  v83 = v102;
                  v89 = v103;
                  v90 = v95;
                  v91 = v104;
                  sub_1B1D66328(v93, v94, v102, v103, 0, v95, v104);
                  if (!v106)
                  {
                    sub_1B1D66328(v105, v99, v100, v96, 0, v97, v98);
                    sub_1B1D0D630(v93, v94, v102, v103, 0, v95, v104);
                    return 1;
                  }

                  v92 = v96;
                  v60 = v97;
                  v59 = v98;
                  sub_1B1D66328(v105, v99, v100, v96, v106, v97, v98);
                }

                v178 = v88;
                v179 = v87;
                v180 = v83;
                v181 = v89;
                v182 = v86;
                v183 = v90;
                v184 = v91;
                v185 = v105;
                v186 = v99;
                v187 = v100;
                v188 = v92;
                v63 = v106;
                goto LABEL_52;
              }

              v59 = v113;
              v80 = v111;
              v60 = v112;
              sub_1B1D66328(v118, v119, v114, v111, v120, v112, v113);
              v81 = v114;
              v82 = 0;
            }

            v178 = v76;
            v179 = v75;
            v180 = v107;
            v181 = v77;
            v182 = v82;
            v183 = v78;
            v184 = v79;
            v185 = v118;
            v186 = v119;
            v187 = v81;
            v188 = v80;
            v63 = v120;
LABEL_52:
            v189 = v63;
            v190 = v60;
            v191 = v59;
            goto LABEL_53;
          }

          v71 = v125;
          v60 = v126;
          v59 = v127;
          sub_1B1D66328(v132, v133, v134, v125, v131, v126, v127);
          v72 = v133;
          v73 = 0;
        }

        v178 = v69;
        v179 = v68;
        v180 = v70;
        v181 = v64;
        v182 = v73;
        v183 = v66;
        v184 = v65;
        v185 = v132;
        v186 = v72;
        v187 = v134;
        v188 = v71;
        v63 = v131;
        goto LABEL_52;
      }

      v55 = v144;
      v54 = v145;
      v57 = v137;
      v56 = v138;
      v62 = v37;
      v58 = v139;
      sub_1B1D66328(v144, v145, v137, v138, v37, v139, v140);
      v60 = v135;
      v59 = v136;
      sub_1B1D66328(v146, v143, v141, v147, 0, v135, v136);
      sub_1B1D66328(v144, v145, v137, v138, v62, v139, v140);
      sub_1B1C91AE4(v144, v145);

      v61 = v141;
      goto LABEL_24;
    }

LABEL_21:
    v55 = v144;
    v54 = v145;
    v57 = v137;
    v56 = v138;
    v58 = v139;
    v38 = v140;
    sub_1B1D66328(v144, v145, v137, v138, 0, v139, v140);
    v39 = v143;
    if (!v148)
    {
      sub_1B1D66328(v146, v143, v141, v147, 0, v135, v136);
      sub_1B1D0D630(v144, v145, v137, v138, 0, v139, v140);
      goto LABEL_26;
    }

    v60 = v135;
    v59 = v136;
    sub_1B1D66328(v146, v143, v141, v147, v148, v135, v136);
    v61 = v141;
    v62 = v142;
LABEL_24:
    v178 = v55;
    v179 = v54;
    v180 = v57;
    v181 = v56;
    v182 = v62;
    v183 = v58;
    v184 = v38;
    v185 = v146;
    v186 = v39;
    v187 = v61;
    v188 = v147;
    v63 = v148;
    goto LABEL_52;
  }

  return 0;
}

BOOL _s22AuthenticationServices22ASImportableCredentialO7PasskeyV2eeoiySbAE_AEtFZ_0(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v21 = a1[7];
  v22 = a1[6];
  v19 = a1[9];
  v20 = a1[8];
  v15 = a1[11];
  v16 = a1[10];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v17 = a2[9];
  v18 = a2[8];
  v13 = a2[11];
  v14 = a2[10];
  if (!sub_1B1D583E4(*a1, a1[1], *a2, a2[1]) || (v2 != v7 || v3 != v6) && (sub_1B1D7C50C() & 1) == 0 || (v4 != v8 || v5 != v9) && (sub_1B1D7C50C() & 1) == 0 || (v22 != v10 || v21 != v11) && (sub_1B1D7C50C() & 1) == 0 || !sub_1B1D583E4(v20, v19, v18, v17))
  {
    return 0;
  }

  return sub_1B1D583E4(v16, v15, v14, v13);
}

BOOL _s22AuthenticationServices22ASImportableCredentialO8PassportV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v285 = a1[1];
  v3 = a1[2];
  v287 = a1[3];
  v4 = a1[4];
  v288 = a1[5];
  v286 = a1[6];
  v274 = a1[7];
  v275 = a1[8];
  v276 = a1[9];
  v283 = a1[10];
  v273 = a1[11];
  v278 = a1[12];
  v279 = a1[13];
  v263 = a1[14];
  v264 = a1[15];
  v258 = a1[16];
  v265 = a1[17];
  v261 = a1[18];
  v259 = a1[19];
  v260 = a1[20];
  v243 = a1[21];
  v249 = a1[22];
  v250 = a1[23];
  v244 = a1[24];
  v248 = a1[25];
  v245 = a1[26];
  v246 = a1[27];
  v236 = a1[28];
  v237 = a1[29];
  v230 = a1[30];
  v231 = a1[31];
  v234 = a1[32];
  v232 = a1[33];
  v233 = a1[34];
  v216 = a1[35];
  v220 = a1[36];
  v217 = a1[37];
  v224 = a1[38];
  v226 = a1[39];
  v225 = a1[40];
  v221 = a1[41];
  v211 = a1[42];
  v205 = a1[43];
  v212 = a1[44];
  v207 = a1[45];
  v204 = a1[46];
  v200 = a1[47];
  v201 = a1[48];
  v195 = a1[49];
  v192 = a1[50];
  v196 = a1[51];
  v193 = a1[52];
  v194 = a1[53];
  v189 = a1[54];
  v190 = a1[55];
  v178 = a1[56];
  v179 = a1[57];
  v182 = a1[60];
  v180 = a1[59];
  v181 = a1[61];
  v183 = a1[62];
  v184 = a1[58];
  v167 = a1[64];
  v168 = a1[65];
  v171 = a1[67];
  v169 = a1[66];
  v170 = a1[68];
  v165 = a1[63];
  v166 = a1[69];
  v5 = a1[70];
  v6 = a1[71];
  v7 = a1[72];
  v8 = a1[73];
  v9 = a1[74];
  v10 = a1[75];
  v11 = a1[76];
  v12 = a1[77];
  v13 = a1[78];
  v14 = a1[79];
  v15 = a1[80];
  v16 = a1[81];
  v17 = a1[82];
  v18 = a1[83];
  v19 = *a2;
  v20 = a2[1];
  v22 = a2[2];
  v21 = a2[3];
  v24 = a2[4];
  v23 = a2[5];
  v284 = a2[6];
  v270 = a2[7];
  v277 = a2[8];
  v281 = a2[9];
  v271 = a2[10];
  v280 = a2[11];
  v272 = a2[12];
  v282 = a2[13];
  v266 = a2[14];
  v262 = a2[15];
  v268 = a2[16];
  v269 = a2[17];
  v267 = a2[18];
  v256 = a2[19];
  v257 = a2[20];
  v252 = a2[21];
  v255 = a2[22];
  v254 = a2[23];
  v253 = a2[24];
  v251 = a2[25];
  v242 = a2[26];
  v247 = a2[27];
  v238 = a2[28];
  v240 = a2[29];
  v241 = a2[30];
  v228 = a2[31];
  v239 = a2[32];
  v229 = a2[33];
  v235 = a2[34];
  v222 = a2[35];
  v218 = a2[36];
  v227 = a2[37];
  v219 = a2[38];
  v223 = a2[39];
  v214 = a2[40];
  v215 = a2[41];
  v208 = a2[42];
  v209 = a2[43];
  v213 = a2[44];
  v210 = a2[45];
  v206 = a2[46];
  v202 = a2[47];
  v203 = a2[48];
  v197 = a2[49];
  v198 = a2[50];
  v199 = a2[51];
  v191 = a2[53];
  v186 = a2[52];
  v187 = a2[54];
  v188 = a2[55];
  v175 = a2[56];
  v176 = a2[57];
  v172 = a2[58];
  v173 = a2[59];
  v185 = a2[60];
  v174 = a2[61];
  v177 = a2[62];
  v158 = a2[63];
  v159 = a2[64];
  v160 = a2[65];
  v161 = a2[66];
  v162 = a2[68];
  v163 = a2[69];
  v164 = a2[67];
  v151 = a2[70];
  v152 = a2[71];
  v153 = a2[72];
  v154 = a2[73];
  v155 = a2[75];
  v156 = a2[76];
  v157 = a2[74];
  v148 = a2[77];
  v149 = a2[78];
  v25 = a2[79];
  v26 = a2[80];
  v150 = a2[81];
  v27 = a2[82];
  v28 = a2[83];
  if (!v4)
  {
    v130 = a2[79];
    v131 = a2[80];
    v146 = v10;
    v147 = v9;
    v132 = a2[82];
    v133 = a2[83];
    v141 = v5;
    v142 = v11;
    v143 = v6;
    v144 = v7;
    v145 = v8;
    v139 = v17;
    v140 = v16;
    v134 = v12;
    v135 = v18;
    v136 = v13;
    v137 = v14;
    v138 = v15;
    sub_1B1D66328(v2, v285, v3, v287, 0, v288, v286);
    if (!v24)
    {
      sub_1B1D66328(v19, v20, v22, v21, 0, v23, v284);
      sub_1B1D0D630(v2, v285, v3, v287, 0, v288, v286);
      v30 = v273;
      if (v273)
      {
        goto LABEL_5;
      }

LABEL_16:
      v31 = v274;
      v32 = v275;
      v33 = v276;
      v34 = v278;
      v35 = v279;
      sub_1B1D66328(v274, v275, v276, v283, 0, v278, v279);
      v36 = v272;
      v37 = v271;
      v38 = v277;
      if (!v280)
      {
        sub_1B1D66328(v270, v277, v281, v271, 0, v272, v282);
        sub_1B1D0D630(v274, v275, v276, v283, 0, v278, v279);
        v40 = v261;
        if (v261)
        {
          goto LABEL_8;
        }

LABEL_22:
        v50 = v263;
        v51 = v264;
        v52 = v258;
        v41 = v265;
        v53 = v259;
        v42 = v260;
        sub_1B1D66328(v263, v264, v258, v265, 0, v259, v260);
        v43 = v262;
        if (!v267)
        {
          sub_1B1D66328(v266, v262, v268, v269, 0, v256, v257);
          sub_1B1D0D630(v263, v264, v258, v265, 0, v259, v260);
          v44 = v253;
          v45 = v254;
          v46 = v255;
          goto LABEL_27;
        }

        v54 = v256;
        v55 = v257;
        sub_1B1D66328(v266, v262, v268, v269, v267, v256, v257);
        v56 = v261;
LABEL_25:
        v297 = v50;
        v298 = v51;
        v299 = v52;
        v300 = v41;
        v301 = v56;
        v302 = v53;
        v303 = v42;
        v304 = v266;
        v305 = v43;
        v306 = v268;
        v307 = v269;
        v308 = v267;
        v309 = v54;
        v310 = v55;
        goto LABEL_81;
      }

      v48 = v270;
      sub_1B1D66328(v270, v277, v281, v271, v280, v272, v282);
LABEL_19:
      v297 = v31;
      v298 = v32;
      v299 = v33;
      v300 = v283;
      v301 = v30;
      v302 = v34;
      v303 = v35;
      v304 = v48;
      v305 = v38;
      v306 = v281;
      v307 = v37;
      v308 = v280;
      v309 = v36;
      v49 = v282;
      goto LABEL_20;
    }

    v47 = v284;
    sub_1B1D66328(v19, v20, v22, v21, v24, v23, v284);
LABEL_14:
    v297 = v2;
    v298 = v285;
    v299 = v3;
    v300 = v287;
    v301 = v4;
    v302 = v288;
    v303 = v286;
    v304 = v19;
    v305 = v20;
    v306 = v22;
    v307 = v21;
    v308 = v24;
    v309 = v23;
    v310 = v47;
LABEL_81:
    sub_1B1CDEC18(&v297, &qword_1EB775FA8, &qword_1B1D93648);
    return 0;
  }

  v297 = v2;
  v298 = v285;
  v299 = v3;
  v300 = v287;
  v301 = v4;
  v302 = v288;
  v303 = v286;
  if (!v24)
  {
    sub_1B1D66328(v2, v285, v3, v287, v4, v288, v286);
    sub_1B1D66328(v19, v20, v22, v21, 0, v23, v284);
    sub_1B1D66328(v2, v285, v3, v287, v4, v288, v286);
    v47 = v284;
    sub_1B1C91AE4(v2, v285);

    goto LABEL_14;
  }

  v130 = v25;
  v131 = v26;
  v146 = v10;
  v147 = v9;
  v132 = v27;
  v133 = v28;
  v141 = v5;
  v142 = v11;
  v143 = v6;
  v144 = v7;
  v145 = v8;
  v139 = v17;
  v140 = v16;
  v134 = v12;
  v135 = v18;
  v136 = v13;
  v137 = v14;
  v138 = v15;
  v290 = v19;
  v291 = v20;
  v292 = v22;
  v293 = v21;
  v294 = v24;
  v295 = v23;
  v296 = v284;
  sub_1B1D66328(v2, v285, v3, v287, v4, v288, v286);
  sub_1B1D66328(v19, v20, v22, v21, v24, v23, v284);
  sub_1B1D66328(v2, v285, v3, v287, v4, v288, v286);
  v29 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
  sub_1B1C91AE4(v290, v291);

  sub_1B1C91AE4(v297, v298);

  sub_1B1D0D630(v2, v285, v3, v287, v4, v288, v286);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = v273;
  if (!v273)
  {
    goto LABEL_16;
  }

LABEL_5:
  v31 = v274;
  v32 = v275;
  v297 = v274;
  v298 = v275;
  v33 = v276;
  v299 = v276;
  v300 = v283;
  v34 = v278;
  v301 = v30;
  v302 = v278;
  v35 = v279;
  v303 = v279;
  v36 = v272;
  v37 = v271;
  v38 = v277;
  if (!v280)
  {
    sub_1B1D66328(v274, v275, v276, v283, v30, v278, v279);
    v48 = v270;
    sub_1B1D66328(v270, v277, v281, v271, 0, v272, v282);
    sub_1B1D66328(v274, v275, v276, v283, v30, v278, v279);
    sub_1B1C91AE4(v274, v275);

    goto LABEL_19;
  }

  v290 = v270;
  v291 = v277;
  v292 = v281;
  v293 = v271;
  v294 = v280;
  v295 = v272;
  v296 = v282;
  sub_1B1D66328(v274, v275, v276, v283, v30, v278, v279);
  sub_1B1D66328(v270, v277, v281, v271, v280, v272, v282);
  sub_1B1D66328(v274, v275, v276, v283, v30, v278, v279);
  v39 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
  sub_1B1C91AE4(v290, v291);

  sub_1B1C91AE4(v297, v298);

  sub_1B1D0D630(v274, v275, v276, v283, v30, v278, v279);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

  v40 = v261;
  if (!v261)
  {
    goto LABEL_22;
  }

LABEL_8:
  v297 = v263;
  v298 = v264;
  v41 = v265;
  v299 = v258;
  v300 = v265;
  v301 = v40;
  v302 = v259;
  v42 = v260;
  v303 = v260;
  v43 = v262;
  if (!v267)
  {
    v50 = v263;
    v51 = v264;
    v52 = v258;
    v56 = v40;
    v57 = v40;
    v53 = v259;
    sub_1B1D66328(v263, v264, v258, v265, v57, v259, v260);
    v54 = v256;
    v55 = v257;
    sub_1B1D66328(v266, v262, v268, v269, 0, v256, v257);
    sub_1B1D66328(v263, v264, v258, v265, v56, v259, v260);
    sub_1B1C91AE4(v263, v264);

    goto LABEL_25;
  }

  v290 = v266;
  v291 = v262;
  v292 = v268;
  v293 = v269;
  v294 = v267;
  v295 = v256;
  v296 = v257;
  sub_1B1D66328(v263, v264, v258, v265, v40, v259, v260);
  sub_1B1D66328(v266, v262, v268, v269, v267, v256, v257);
  sub_1B1D66328(v263, v264, v258, v265, v40, v259, v260);
  v289 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
  sub_1B1C91AE4(v290, v291);

  sub_1B1C91AE4(v297, v298);

  sub_1B1D0D630(v263, v264, v258, v265, v40, v259, v260);
  v44 = v253;
  v45 = v254;
  v46 = v255;
  if ((v289 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  if (!v248)
  {
    v58 = v243;
    v65 = v249;
    v66 = v250;
    v59 = v244;
    v60 = v245;
    v61 = v246;
    sub_1B1D66328(v243, v249, v250, v244, 0, v245, v246);
    v62 = v242;
    if (!v251)
    {
      sub_1B1D66328(v252, v255, v45, v44, 0, v242, v247);
      sub_1B1D0D630(v243, v249, v250, v244, 0, v245, v246);
      v64 = v241;
      goto LABEL_36;
    }

    v67 = v247;
    sub_1B1D66328(v252, v255, v45, v44, v251, v242, v247);
    v68 = v45;
    v69 = 0;
LABEL_34:
    v297 = v58;
    v298 = v65;
    v299 = v66;
    v300 = v59;
    v301 = v69;
    v302 = v60;
    v303 = v61;
    v304 = v252;
    v305 = v255;
    v306 = v68;
    v307 = v44;
    v308 = v251;
    v309 = v62;
    v310 = v67;
    goto LABEL_81;
  }

  v58 = v243;
  v297 = v243;
  v298 = v249;
  v59 = v244;
  v299 = v250;
  v300 = v244;
  v60 = v245;
  v301 = v248;
  v302 = v245;
  v61 = v246;
  v303 = v246;
  v62 = v242;
  if (!v251)
  {
    v65 = v249;
    v70 = v46;
    v66 = v250;
    v69 = v248;
    sub_1B1D66328(v243, v249, v250, v244, v248, v245, v246);
    v71 = v70;
    v67 = v247;
    sub_1B1D66328(v252, v71, v254, v44, 0, v242, v247);
    sub_1B1D66328(v243, v249, v250, v244, v248, v245, v246);
    sub_1B1C91AE4(v243, v249);

    v68 = v254;
    goto LABEL_34;
  }

  v290 = v252;
  v291 = v46;
  v292 = v254;
  v293 = v44;
  v294 = v251;
  v295 = v242;
  v296 = v247;
  sub_1B1D66328(v243, v249, v250, v244, v248, v245, v246);
  sub_1B1D66328(v252, v255, v254, v253, v251, v242, v247);
  sub_1B1D66328(v243, v249, v250, v244, v248, v245, v246);
  v63 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
  sub_1B1C91AE4(v290, v291);

  sub_1B1C91AE4(v297, v298);

  sub_1B1D0D630(v243, v249, v250, v244, v248, v245, v246);
  v64 = v241;
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  if (!v234)
  {
    v79 = v236;
    v80 = v237;
    v81 = v230;
    v72 = v231;
    v73 = v232;
    v74 = v233;
    sub_1B1D66328(v236, v237, v230, v231, 0, v232, v233);
    v75 = v235;
    v76 = v229;
    if (!v239)
    {
      sub_1B1D66328(v238, v240, v64, v228, 0, v229, v235);
      sub_1B1D0D630(v236, v237, v230, v231, 0, v232, v233);
      v78 = v227;
      goto LABEL_45;
    }

    v82 = v228;
    sub_1B1D66328(v238, v240, v64, v228, v239, v229, v235);
    v83 = v64;
    v84 = 0;
LABEL_43:
    v297 = v79;
    v298 = v80;
    v299 = v81;
    v300 = v72;
    v301 = v84;
    v302 = v73;
    v303 = v74;
    v304 = v238;
    v305 = v240;
    v306 = v83;
    v307 = v82;
    v308 = v239;
    v309 = v76;
    v310 = v75;
    goto LABEL_81;
  }

  v297 = v236;
  v298 = v237;
  v72 = v231;
  v299 = v230;
  v300 = v231;
  v73 = v232;
  v301 = v234;
  v302 = v232;
  v74 = v233;
  v303 = v233;
  v75 = v235;
  v76 = v229;
  if (!v239)
  {
    v79 = v236;
    v80 = v237;
    v81 = v230;
    v85 = v64;
    v84 = v234;
    sub_1B1D66328(v236, v237, v230, v231, v234, v232, v233);
    v86 = v85;
    v82 = v228;
    sub_1B1D66328(v238, v240, v86, v228, 0, v229, v235);
    sub_1B1D66328(v236, v237, v230, v231, v234, v232, v233);
    sub_1B1C91AE4(v236, v237);

    v83 = v241;
    goto LABEL_43;
  }

  v290 = v238;
  v291 = v240;
  v292 = v64;
  v293 = v228;
  v294 = v239;
  v295 = v229;
  v296 = v235;
  sub_1B1D66328(v236, v237, v230, v231, v234, v232, v233);
  sub_1B1D66328(v238, v240, v241, v228, v239, v229, v235);
  sub_1B1D66328(v236, v237, v230, v231, v234, v232, v233);
  v77 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
  sub_1B1C91AE4(v290, v291);

  sub_1B1C91AE4(v297, v298);

  sub_1B1D0D630(v236, v237, v230, v231, v234, v232, v233);
  v78 = v227;
  if ((v77 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  if (!v226)
  {
    v91 = v216;
    v92 = v220;
    v87 = v221;
    sub_1B1D66328(v216, v220, v217, v224, 0, v225, v221);
    v88 = v219;
    v89 = v218;
    if (!v223)
    {
      sub_1B1D66328(v222, v218, v78, v219, 0, v214, v215);
      sub_1B1D0D630(v216, v220, v217, v224, 0, v225, v221);
      goto LABEL_54;
    }

    v93 = v214;
    v94 = v217;
    v95 = v215;
    sub_1B1D66328(v222, v218, v78, v219, v223, v214, v215);
    v96 = v224;
    v97 = 0;
LABEL_52:
    v297 = v91;
    v298 = v92;
    v299 = v94;
    v300 = v96;
    v301 = v97;
    v302 = v225;
    v303 = v87;
    v304 = v222;
    v305 = v89;
    v306 = v78;
    v307 = v88;
    v308 = v223;
    v309 = v93;
    v310 = v95;
    goto LABEL_81;
  }

  v297 = v216;
  v298 = v220;
  v299 = v217;
  v300 = v224;
  v301 = v226;
  v302 = v225;
  v87 = v221;
  v303 = v221;
  v88 = v219;
  v89 = v218;
  if (!v223)
  {
    v91 = v216;
    v92 = v220;
    v97 = v226;
    sub_1B1D66328(v216, v220, v217, v224, v226, v225, v221);
    v78 = v227;
    v93 = v214;
    v95 = v215;
    sub_1B1D66328(v222, v218, v227, v219, 0, v214, v215);
    v94 = v217;
    sub_1B1D66328(v216, v220, v217, v224, v226, v225, v221);
    sub_1B1C91AE4(v216, v220);

    v96 = v224;
    goto LABEL_52;
  }

  v290 = v222;
  v291 = v218;
  v292 = v227;
  v293 = v219;
  v294 = v223;
  v295 = v214;
  v296 = v215;
  sub_1B1D66328(v216, v220, v217, v224, v226, v225, v221);
  sub_1B1D66328(v222, v218, v227, v219, v223, v214, v215);
  sub_1B1D66328(v216, v220, v217, v224, v226, v225, v221);
  v90 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
  sub_1B1C91AE4(v290, v291);

  sub_1B1C91AE4(v297, v298);

  sub_1B1D0D630(v216, v220, v217, v224, v226, v225, v221);
  if ((v90 & 1) == 0)
  {
    return 0;
  }

LABEL_54:
  if (!v204)
  {
    v98 = v207;
    v105 = v200;
    v99 = v201;
    sub_1B1D66328(v211, v205, v212, v207, 0, v200, v201);
    v100 = v206;
    if (!v206)
    {
      sub_1B1D66328(v208, v209, v213, v210, 0, v202, v203);
      sub_1B1D0D630(v211, v205, v212, v207, 0, v200, v201);
      v103 = v199;
      v102 = v198;
      v104 = v197;
      goto LABEL_63;
    }

    v106 = v202;
    v107 = v203;
    sub_1B1D66328(v208, v209, v213, v210, v206, v202, v203);
    v108 = v212;
    v109 = v205;
    v110 = v213;
    v111 = v211;
    v112 = 0;
LABEL_61:
    v297 = v111;
    v298 = v109;
    v299 = v108;
    v300 = v98;
    v301 = v112;
    v302 = v105;
    v303 = v99;
    v304 = v208;
    v305 = v209;
    v306 = v110;
    v307 = v210;
    v308 = v100;
LABEL_80:
    v309 = v106;
    v310 = v107;
    goto LABEL_81;
  }

  v297 = v211;
  v298 = v205;
  v98 = v207;
  v299 = v212;
  v300 = v207;
  v301 = v204;
  v302 = v200;
  v99 = v201;
  v303 = v201;
  v100 = v206;
  if (!v206)
  {
    v111 = v211;
    v109 = v205;
    v108 = v212;
    v112 = v204;
    v105 = v200;
    sub_1B1D66328(v211, v205, v212, v207, v204, v200, v201);
    v106 = v202;
    v107 = v203;
    sub_1B1D66328(v208, v209, v213, v210, 0, v202, v203);
    sub_1B1D66328(v211, v205, v212, v207, v204, v200, v201);
    sub_1B1C91AE4(v211, v205);

    v110 = v213;
    goto LABEL_61;
  }

  v290 = v208;
  v291 = v209;
  v292 = v213;
  v293 = v210;
  v294 = v206;
  v295 = v202;
  v296 = v203;
  sub_1B1D66328(v211, v205, v212, v207, v204, v200, v201);
  sub_1B1D66328(v208, v209, v213, v210, v206, v202, v203);
  sub_1B1D66328(v211, v205, v212, v207, v204, v200, v201);
  v101 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
  sub_1B1C91AE4(v290, v291);

  sub_1B1C91AE4(v297, v298);

  v102 = v198;
  v103 = v199;
  sub_1B1D0D630(v211, v205, v212, v207, v204, v200, v201);
  v104 = v197;
  if ((v101 & 1) == 0)
  {
    return 0;
  }

LABEL_63:
  if (!v194)
  {
    v113 = v189;
    v114 = v190;
    sub_1B1D66328(v195, v192, v196, v193, 0, v189, v190);
    v116 = v191;
    if (!v191)
    {
      sub_1B1D66328(v104, v102, v103, v186, 0, v187, v188);
      sub_1B1D0D630(v195, v192, v196, v193, 0, v189, v190);
      goto LABEL_72;
    }

    v117 = v104;
    v118 = v186;
    v106 = v187;
    v119 = v104;
    v120 = v103;
    v107 = v188;
    sub_1B1D66328(v117, v102, v103, v186, v191, v187, v188);
    goto LABEL_70;
  }

  v297 = v195;
  v298 = v192;
  v299 = v196;
  v300 = v193;
  v113 = v189;
  v301 = v194;
  v302 = v189;
  v114 = v190;
  v303 = v190;
  if (!v191)
  {
    sub_1B1D66328(v195, v192, v196, v193, v194, v189, v190);
    v118 = v186;
    v106 = v187;
    v107 = v188;
    sub_1B1D66328(v197, v198, v199, v186, 0, v187, v188);
    v120 = v199;
    sub_1B1D66328(v195, v192, v196, v193, v194, v189, v190);
    v102 = v198;
    sub_1B1C91AE4(v195, v192);
    v119 = v197;

    v116 = 0;
LABEL_70:
    v297 = v195;
    v298 = v192;
    v299 = v196;
    v300 = v193;
    v301 = v194;
    v302 = v113;
    v303 = v114;
    v304 = v119;
    v305 = v102;
    v306 = v120;
    v307 = v118;
    v308 = v116;
    goto LABEL_80;
  }

  v290 = v197;
  v291 = v102;
  v292 = v103;
  v293 = v186;
  v294 = v191;
  v295 = v187;
  v296 = v188;
  sub_1B1D66328(v195, v192, v196, v193, v194, v189, v190);
  sub_1B1D66328(v197, v198, v199, v186, v191, v187, v188);
  sub_1B1D66328(v195, v192, v196, v193, v194, v189, v190);
  v115 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
  sub_1B1C91AE4(v290, v291);

  sub_1B1C91AE4(v297, v298);

  sub_1B1D0D630(v195, v192, v196, v193, v194, v189, v190);
  if ((v115 & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  if (!v182)
  {
    sub_1B1D66328(v178, v179, v184, v180, 0, v181, v183);
    if (!v185)
    {
      sub_1B1D66328(v175, v176, v172, v173, 0, v174, v177);
      sub_1B1D0D630(v178, v179, v184, v180, 0, v181, v183);
      goto LABEL_85;
    }

    v123 = v175;
    v122 = v176;
    v124 = v172;
    v125 = v173;
    v106 = v174;
    v107 = v177;
    sub_1B1D66328(v175, v176, v172, v173, v185, v174, v177);
    goto LABEL_79;
  }

  v297 = v178;
  v298 = v179;
  v299 = v184;
  v300 = v180;
  v301 = v182;
  v302 = v181;
  v303 = v183;
  if (!v185)
  {
    sub_1B1D66328(v178, v179, v184, v180, v182, v181, v183);
    v123 = v175;
    v122 = v176;
    v124 = v172;
    v125 = v173;
    v106 = v174;
    v107 = v177;
    sub_1B1D66328(v175, v176, v172, v173, 0, v174, v177);
    sub_1B1D66328(v178, v179, v184, v180, v182, v181, v183);
    sub_1B1C91AE4(v178, v179);

LABEL_79:
    v297 = v178;
    v298 = v179;
    v299 = v184;
    v300 = v180;
    v301 = v182;
    v302 = v181;
    v303 = v183;
    v304 = v123;
    v305 = v122;
    v306 = v124;
    v307 = v125;
    v308 = v185;
    goto LABEL_80;
  }

  v290 = v175;
  v291 = v176;
  v292 = v172;
  v293 = v173;
  v294 = v185;
  v295 = v174;
  v296 = v177;
  sub_1B1D66328(v178, v179, v184, v180, v182, v181, v183);
  sub_1B1D66328(v175, v176, v172, v173, v185, v174, v177);
  sub_1B1D66328(v178, v179, v184, v180, v182, v181, v183);
  v121 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
  sub_1B1C91AE4(v290, v291);

  sub_1B1C91AE4(v297, v298);

  sub_1B1D0D630(v178, v179, v184, v180, v182, v181, v183);
  if (v121)
  {
LABEL_85:
    if (v171)
    {
      v297 = v165;
      v298 = v167;
      v299 = v168;
      v300 = v169;
      v301 = v171;
      v302 = v170;
      v303 = v166;
      if (v164)
      {
        v290 = v158;
        v291 = v159;
        v292 = v160;
        v293 = v161;
        v294 = v164;
        v295 = v162;
        v296 = v163;
        sub_1B1D66328(v165, v167, v168, v169, v171, v170, v166);
        sub_1B1D66328(v158, v159, v160, v161, v164, v162, v163);
        sub_1B1D66328(v165, v167, v168, v169, v171, v170, v166);
        v127 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
        sub_1B1C91AE4(v290, v291);

        sub_1B1C91AE4(v297, v298);

        sub_1B1D0D630(v165, v167, v168, v169, v171, v170, v166);
        if ((v127 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_94;
      }

      sub_1B1D66328(v165, v167, v168, v169, v171, v170, v166);
      sub_1B1D66328(v158, v159, v160, v161, 0, v162, v163);
      sub_1B1D66328(v165, v167, v168, v169, v171, v170, v166);
      sub_1B1C91AE4(v165, v167);
    }

    else
    {
      sub_1B1D66328(v165, v167, v168, v169, 0, v170, v166);
      if (!v164)
      {
        sub_1B1D66328(v158, v159, v160, v161, 0, v162, v163);
        sub_1B1D0D630(v165, v167, v168, v169, 0, v170, v166);
LABEL_94:
        if (v147)
        {
          v297 = v141;
          v298 = v143;
          v299 = v144;
          v300 = v145;
          v301 = v147;
          v302 = v146;
          v303 = v142;
          if (v157)
          {
            v290 = v151;
            v291 = v152;
            v292 = v153;
            v293 = v154;
            v294 = v157;
            v295 = v155;
            v296 = v156;
            sub_1B1D66328(v141, v143, v144, v145, v147, v146, v142);
            sub_1B1D66328(v151, v152, v153, v154, v157, v155, v156);
            sub_1B1D66328(v141, v143, v144, v145, v147, v146, v142);
            v128 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
            sub_1B1C91AE4(v290, v291);

            sub_1B1C91AE4(v297, v298);

            sub_1B1D0D630(v141, v143, v144, v145, v147, v146, v142);
            if ((v128 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_103;
          }

          sub_1B1D66328(v141, v143, v144, v145, v147, v146, v142);
          sub_1B1D66328(v151, v152, v153, v154, 0, v155, v156);
          sub_1B1D66328(v141, v143, v144, v145, v147, v146, v142);
          sub_1B1C91AE4(v141, v143);
        }

        else
        {
          sub_1B1D66328(v141, v143, v144, v145, 0, v146, v142);
          if (!v157)
          {
            sub_1B1D66328(v151, v152, v153, v154, 0, v155, v156);
            sub_1B1D0D630(v141, v143, v144, v145, 0, v146, v142);
LABEL_103:
            if (v140)
            {
              v297 = v134;
              v298 = v136;
              v299 = v137;
              v300 = v138;
              v301 = v140;
              v302 = v139;
              v303 = v135;
              if (v150)
              {
                v290 = v148;
                v291 = v149;
                v292 = v130;
                v293 = v131;
                v294 = v150;
                v295 = v132;
                v296 = v133;
                sub_1B1D66328(v134, v136, v137, v138, v140, v139, v135);
                sub_1B1D66328(v148, v149, v130, v131, v150, v132, v133);
                sub_1B1D66328(v134, v136, v137, v138, v140, v139, v135);
                v129 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v297, &v290);
                sub_1B1C91AE4(v290, v291);

                sub_1B1C91AE4(v297, v298);

                sub_1B1D0D630(v134, v136, v137, v138, v140, v139, v135);
                return (v129 & 1) != 0;
              }

              sub_1B1D66328(v134, v136, v137, v138, v140, v139, v135);
              sub_1B1D66328(v148, v149, v130, v131, 0, v132, v133);
              sub_1B1D66328(v134, v136, v137, v138, v140, v139, v135);
              sub_1B1C91AE4(v134, v136);
            }

            else
            {
              sub_1B1D66328(v134, v136, v137, v138, 0, v139, v135);
              if (!v150)
              {
                sub_1B1D66328(v148, v149, v130, v131, 0, v132, v133);
                sub_1B1D0D630(v134, v136, v137, v138, 0, v139, v135);
                return 1;
              }

              sub_1B1D66328(v148, v149, v130, v131, v150, v132, v133);
            }

            v297 = v134;
            v298 = v136;
            v299 = v137;
            v300 = v138;
            v301 = v140;
            v302 = v139;
            v303 = v135;
            v304 = v148;
            v305 = v149;
            v306 = v130;
            v307 = v131;
            v308 = v150;
            v49 = v133;
            v309 = v132;
            goto LABEL_20;
          }

          sub_1B1D66328(v151, v152, v153, v154, v157, v155, v156);
        }

        v297 = v141;
        v298 = v143;
        v299 = v144;
        v300 = v145;
        v301 = v147;
        v302 = v146;
        v303 = v142;
        v304 = v151;
        v305 = v152;
        v306 = v153;
        v307 = v154;
        v308 = v157;
        v49 = v156;
        v309 = v155;
LABEL_20:
        v310 = v49;
        goto LABEL_81;
      }

      sub_1B1D66328(v158, v159, v160, v161, v164, v162, v163);
    }

    v297 = v165;
    v298 = v167;
    v299 = v168;
    v300 = v169;
    v301 = v171;
    v302 = v170;
    v303 = v166;
    v304 = v158;
    v305 = v159;
    v306 = v160;
    v307 = v161;
    v308 = v164;
    v49 = v163;
    v309 = v162;
    goto LABEL_20;
  }

  return 0;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x2A1uLL);
  memcpy(__src, v3, 0x2A1uLL);
  memcpy(v124, v4, 0x2A1uLL);
  memcpy(v125, v3, sizeof(v125));
  memcpy(v126, v4, 0x2A1uLL);
  switch(sub_1B1D67108(v126))
  {
    case 1u:
      nullsub_1();
      v6 = v73;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_23;
    case 2u:
      nullsub_1();
      v40 = v39;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 2)
      {
        goto LABEL_37;
      }

      nullsub_1();
      v41 = v40[5];
      v119[4] = v40[4];
      v119[5] = v41;
      v119[6] = v40[6];
      v42 = v40[1];
      v119[0] = *v40;
      v119[1] = v42;
      v43 = v40[3];
      v119[2] = v40[2];
      v119[3] = v43;
      v45 = v44[5];
      v118[4] = v44[4];
      v118[5] = v45;
      v118[6] = v44[6];
      v46 = v44[1];
      v118[0] = *v44;
      v118[1] = v46;
      v47 = v44[3];
      v118[2] = v44[2];
      v118[3] = v47;
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v14 = _s22AuthenticationServices22ASImportableCredentialO05BasicA0V2eeoiySbAE_AEtFZ_0(v119, v118);
      goto LABEL_34;
    case 3u:
      nullsub_1();
      v66 = v65;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 3)
      {
        goto LABEL_37;
      }

      nullsub_1();
      v68 = v67;
      memcpy(v119, v66, 0x188uLL);
      memcpy(v118, v68, 0x188uLL);
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v14 = _s22AuthenticationServices22ASImportableCredentialO10CreditCardV2eeoiySbAE_AEtFZ_0(v119, v118);
      goto LABEL_34;
    case 4u:
      nullsub_1();
      v114 = v19[1];
      v116 = *v19;
      v20 = *(v19 + 4);
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 4)
      {
        goto LABEL_37;
      }

      nullsub_1();
      v22 = *(v21 + 32);
      v119[0] = v116;
      v119[1] = v114;
      *&v119[2] = v20;
      v23 = *(v21 + 16);
      v118[0] = *v21;
      v118[1] = v23;
      *&v118[2] = v22;
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v14 = _s22AuthenticationServices22ASImportableCredentialO12CustomFieldsV2eeoiySbAE_AEtFZ_0(v119, v118);
      goto LABEL_34;
    case 5u:
      nullsub_1();
      v25 = v76;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) == 5)
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    case 6u:
      nullsub_1();
      v95 = *v94;
      v96 = v94[1];
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 6)
      {
        goto LABEL_37;
      }

      nullsub_1();
      if (v95 == *v97 && v96 == v97[1])
      {
        sub_1B1D65C20(__dst, v120);
        sub_1B1D65C20(__src, v120);
        sub_1B1CDEC18(v124, &qword_1EB775FA0, &qword_1B1D93640);
        v38 = 1;
        return v38 & 1;
      }

      v113 = sub_1B1D7C50C();
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      sub_1B1CDEC18(v124, &qword_1EB775FA0, &qword_1B1D93640);
      if ((v113 & 1) == 0)
      {
        goto LABEL_38;
      }

      v38 = 1;
      break;
    case 7u:
      nullsub_1();
      v70 = v69;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 7)
      {
        goto LABEL_37;
      }

      nullsub_1();
      v72 = v71;
      memcpy(v119, v70, 0x268uLL);
      memcpy(v118, v72, 0x268uLL);
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v14 = _s22AuthenticationServices22ASImportableCredentialO16IdentityDocumentV2eeoiySbAE_AEtFZ_0(v119, v118);
      goto LABEL_34;
    case 8u:
      nullsub_1();
      v115 = v107[1];
      v117 = *v107;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 8)
      {
        goto LABEL_37;
      }

      nullsub_1();
      v119[0] = v117;
      v119[1] = v115;
      v109 = v108[1];
      v118[0] = *v108;
      v118[1] = v109;
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v38 = _s22AuthenticationServices22ASImportableLinkedItemV2eeoiySbAC_ACtFZ_0(v119, v118);
      sub_1B1CDEC18(v124, &qword_1EB775FA0, &qword_1B1D93640);
      v110 = v118[1];
      sub_1B1CDEFDC(*&v118[0], *(&v118[0] + 1));
      sub_1B1C91AE4(v110, *(&v110 + 1));
      v111 = v119[1];
      sub_1B1CDEFDC(*&v119[0], *(&v119[0] + 1));
      sub_1B1C91AE4(v111, *(&v111 + 1));
      return v38 & 1;
    case 9u:
      nullsub_1();
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v26 + 16);
      v30 = v26[3];
      v31 = v26[4];
      v32 = v26[5];
      v33 = v26[6];
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 9)
      {
        goto LABEL_37;
      }

      nullsub_1();
      v35 = *(v34 + 16);
      v36 = *(v34 + 24);
      v37 = *(v34 + 32);
      *&v119[0] = v27;
      *(&v119[0] + 1) = v28;
      LOBYTE(v119[1]) = v29;
      *(&v119[1] + 1) = v30;
      *&v119[2] = v31;
      *(&v119[2] + 1) = v32;
      *&v119[3] = v33;
      v118[0] = *v34;
      LOBYTE(v118[1]) = v35;
      *(&v118[1] + 1) = v36;
      *&v118[2] = v37;
      *(&v118[2] + 8) = *(v34 + 40);
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v38 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(v119, v118);
      sub_1B1CDEC18(v124, &qword_1EB775FA0, &qword_1B1D93640);
      sub_1B1C91AE4(*&v118[0], *(&v118[0] + 1));

      sub_1B1C91AE4(*&v119[0], *(&v119[0] + 1));

      return v38 & 1;
    case 0xAu:
      nullsub_1();
      v99 = v98;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 10)
      {
        goto LABEL_37;
      }

      nullsub_1();
      v100 = v99[3];
      v119[2] = v99[2];
      v119[3] = v100;
      v101 = v99[5];
      v119[4] = v99[4];
      v119[5] = v101;
      v102 = v99[1];
      v119[0] = *v99;
      v119[1] = v102;
      v104 = v103[3];
      v118[2] = v103[2];
      v118[3] = v104;
      v105 = v103[5];
      v118[4] = v103[4];
      v118[5] = v105;
      v106 = v103[1];
      v118[0] = *v103;
      v118[1] = v106;
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v14 = _s22AuthenticationServices22ASImportableCredentialO7PasskeyV2eeoiySbAE_AEtFZ_0(v119, v118);
      goto LABEL_34;
    case 0xBu:
      nullsub_1();
      v16 = v15;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 11)
      {
        goto LABEL_37;
      }

      nullsub_1();
      v18 = v17;
      memcpy(v119, v16, sizeof(v119));
      memcpy(v118, v18, sizeof(v118));
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v14 = _s22AuthenticationServices22ASImportableCredentialO8PassportV2eeoiySbAE_AEtFZ_0(v119, v118);
      goto LABEL_34;
    case 0xCu:
      nullsub_1();
      v25 = v24;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 12)
      {
        goto LABEL_37;
      }

LABEL_25:
      nullsub_1();
      v78 = v77;
      memcpy(v119, v25, 0x1F8uLL);
      memcpy(v118, v78, 0x1F8uLL);
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v14 = sub_1B1D5A478(v119, v118);
      goto LABEL_34;
    case 0xDu:
      nullsub_1();
      v80 = v79;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 13)
      {
        goto LABEL_37;
      }

      nullsub_1();
      v81 = *(v80 + 176);
      v119[10] = *(v80 + 160);
      v119[11] = v81;
      v119[12] = *(v80 + 192);
      *&v119[13] = *(v80 + 208);
      v82 = *(v80 + 112);
      v119[6] = *(v80 + 96);
      v119[7] = v82;
      v83 = *(v80 + 144);
      v119[8] = *(v80 + 128);
      v119[9] = v83;
      v84 = *(v80 + 48);
      v119[2] = *(v80 + 32);
      v119[3] = v84;
      v85 = *(v80 + 80);
      v119[4] = *(v80 + 64);
      v119[5] = v85;
      v86 = *(v80 + 16);
      v119[0] = *v80;
      v119[1] = v86;
      v88 = *(v87 + 176);
      v118[10] = *(v87 + 160);
      v118[11] = v88;
      v118[12] = *(v87 + 192);
      *&v118[13] = *(v87 + 208);
      v89 = *(v87 + 112);
      v118[6] = *(v87 + 96);
      v118[7] = v89;
      v90 = *(v87 + 144);
      v118[8] = *(v87 + 128);
      v118[9] = v90;
      v91 = *(v87 + 48);
      v118[2] = *(v87 + 32);
      v118[3] = v91;
      v92 = *(v87 + 80);
      v118[4] = *(v87 + 64);
      v118[5] = v92;
      v93 = *(v87 + 16);
      v118[0] = *v87;
      v118[1] = v93;
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v14 = _s22AuthenticationServices22ASImportableCredentialO6SSHKeyV2eeoiySbAE_AEtFZ_0(v119, v118);
      goto LABEL_34;
    case 0xEu:
      nullsub_1();
      v8 = v7;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 14)
      {
        goto LABEL_37;
      }

      nullsub_1();
      v9 = v8[1];
      v119[0] = *v8;
      v119[1] = v9;
      v10 = v8[3];
      v119[2] = v8[2];
      v119[3] = v10;
      v12 = v11[1];
      v118[0] = *v11;
      v118[1] = v12;
      v13 = v11[3];
      v118[2] = v11[2];
      v118[3] = v13;
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v14 = _s22AuthenticationServices22ASImportableCredentialO4TOTPV2eeoiySbAE_AEtFZ_0(v119, v118);
      goto LABEL_34;
    case 0xFu:
      nullsub_1();
      v49 = v48;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121) != 15)
      {
        goto LABEL_37;
      }

      nullsub_1();
      v50 = v49[11];
      v119[10] = v49[10];
      v119[11] = v50;
      v51 = v49[13];
      v119[12] = v49[12];
      v119[13] = v51;
      v52 = v49[7];
      v119[6] = v49[6];
      v119[7] = v52;
      v53 = v49[9];
      v119[8] = v49[8];
      v119[9] = v53;
      v54 = v49[3];
      v119[2] = v49[2];
      v119[3] = v54;
      v55 = v49[5];
      v119[4] = v49[4];
      v119[5] = v55;
      v56 = v49[1];
      v119[0] = *v49;
      v119[1] = v56;
      v58 = v57[11];
      v118[10] = v57[10];
      v118[11] = v58;
      v59 = v57[13];
      v118[12] = v57[12];
      v118[13] = v59;
      v60 = v57[7];
      v118[6] = v57[6];
      v118[7] = v60;
      v61 = v57[9];
      v118[8] = v57[8];
      v118[9] = v61;
      v62 = v57[3];
      v118[2] = v57[2];
      v118[3] = v62;
      v63 = v57[5];
      v118[4] = v57[4];
      v118[5] = v63;
      v64 = v57[1];
      v118[0] = *v57;
      v118[1] = v64;
      sub_1B1D65C20(__src, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__dst, v120);
      sub_1B1D65C20(__src, v120);
      v14 = _s22AuthenticationServices22ASImportableCredentialO4WiFiV2eeoiySbAE_AEtFZ_0(v119, v118);
      goto LABEL_34;
    default:
      nullsub_1();
      v6 = v5;
      memcpy(v121, __src, 0x2A1uLL);
      if (sub_1B1D67108(v121))
      {
LABEL_37:
        sub_1B1D65C20(__dst, v121);
        sub_1B1D65C20(__src, v121);
        sub_1B1CDEC18(v124, &qword_1EB775FA0, &qword_1B1D93640);
LABEL_38:
        v38 = 0;
      }

      else
      {
LABEL_23:
        nullsub_1();
        v75 = v74;
        memcpy(v119, v6, 0x150uLL);
        memcpy(v118, v75, 0x150uLL);
        sub_1B1D65C20(__src, v120);
        sub_1B1D65C20(__dst, v120);
        sub_1B1D65C20(__dst, v120);
        sub_1B1D65C20(__src, v120);
        v14 = sub_1B1D5F8B0(v119, v118);
LABEL_34:
        v38 = v14;
        sub_1B1CDEC18(v124, &qword_1EB775FA0, &qword_1B1D93640);
        sub_1B1D65C58(__src);
        sub_1B1D65C58(__dst);
      }

      break;
  }

  return v38 & 1;
}

BOOL _s22AuthenticationServices27ASImportableCredentialScopeV12AndroidAppIDV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v18 = a2[6];
  v19 = a1[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B1D7C50C() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    sub_1B1D65FF4(v2, v4, v3, 0);
    if (!v9)
    {
      sub_1B1D65FF4(v7, v8, v10, 0);
      v5 = 0;
      goto LABEL_18;
    }

    sub_1B1D65FF4(v7, v8, v10, v9);
    goto LABEL_13;
  }

  if (!v9)
  {
    sub_1B1D65FF4(v2, v4, v3, v5);
    sub_1B1D65FF4(v7, v8, v10, 0);
    sub_1B1D65FF4(v2, v4, v3, v5);
    sub_1B1CDEFDC(v2, v4);

LABEL_13:
    sub_1B1D66034(v2, v4, v3, v5);
    v12 = v7;
    v13 = v8;
    v14 = v10;
    v15 = v9;
LABEL_15:
    sub_1B1D66034(v12, v13, v14, v15);
    return 0;
  }

  sub_1B1D65FF4(v2, v4, v3, v5);
  sub_1B1D65FF4(v7, v8, v10, v9);
  sub_1B1D65FF4(v2, v4, v3, v5);
  if (!sub_1B1D583E4(v2, v4, v7, v8))
  {
    sub_1B1D66034(v7, v8, v10, v9);
    sub_1B1CDEFDC(v2, v4);

    v12 = v2;
    v13 = v4;
    v14 = v3;
    v15 = v5;
    goto LABEL_15;
  }

  if (v3 == v10 && v5 == v9)
  {
    sub_1B1D66034(v7, v8, v3, v5);
    sub_1B1CDEFDC(v2, v4);

LABEL_18:
    sub_1B1D66034(v2, v4, v3, v5);
    goto LABEL_19;
  }

  v17 = sub_1B1D7C50C();
  sub_1B1D66034(v7, v8, v10, v9);
  sub_1B1CDEFDC(v2, v4);

  sub_1B1D66034(v2, v4, v3, v5);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (v6)
  {
    return v11 && (v19 == v18 && v6 == v11 || (sub_1B1D7C50C() & 1) != 0);
  }

  return !v11;
}

uint64_t _s22AuthenticationServices24ASExportedCredentialDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B1D7C50C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B1D7C50C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ASExportedCredentialData(0);
  if ((sub_1B1D7B50C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_1B1D305D4(v8, v9);
}

unint64_t sub_1B1D64034()
{
  result = qword_1EB775748;
  if (!qword_1EB775748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775748);
  }

  return result;
}

unint64_t sub_1B1D64088()
{
  result = qword_1EB775758;
  if (!qword_1EB775758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775750, &qword_1B1D88D80);
    sub_1B1D6410C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775758);
  }

  return result;
}

unint64_t sub_1B1D6410C()
{
  result = qword_1EB775760;
  if (!qword_1EB775760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775760);
  }

  return result;
}

unint64_t sub_1B1D64160()
{
  result = qword_1EB775768;
  if (!qword_1EB775768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775768);
  }

  return result;
}

uint64_t sub_1B1D641B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B1D641FC()
{
  result = qword_1EB775788;
  if (!qword_1EB775788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775750, &qword_1B1D88D80);
    sub_1B1D64280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775788);
  }

  return result;
}

unint64_t sub_1B1D64280()
{
  result = qword_1EB775790;
  if (!qword_1EB775790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775790);
  }

  return result;
}

unint64_t sub_1B1D642D4()
{
  result = qword_1EB775798;
  if (!qword_1EB775798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775798);
  }

  return result;
}

unint64_t sub_1B1D64328()
{
  result = qword_1EB7757B0;
  if (!qword_1EB7757B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7757B0);
  }

  return result;
}

unint64_t sub_1B1D6437C()
{
  result = qword_1EB7757C8;
  if (!qword_1EB7757C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7757C0, &qword_1B1D88DA0);
    sub_1B1D641B4(&qword_1EB7757D0, type metadata accessor for ASImportableCollection, &protocol conformance descriptor for ASImportableCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7757C8);
  }

  return result;
}

unint64_t sub_1B1D64450()
{
  result = qword_1EB7757E0;
  if (!qword_1EB7757E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7757D8, &qword_1B1D88DA8);
    sub_1B1D641B4(&qword_1EB7757E8, type metadata accessor for ASImportableItem, &protocol conformance descriptor for ASImportableItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7757E0);
  }

  return result;
}

unint64_t sub_1B1D64504()
{
  result = qword_1EB7757F8;
  if (!qword_1EB7757F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7757C0, &qword_1B1D88DA0);
    sub_1B1D641B4(&qword_1EB775800, type metadata accessor for ASImportableCollection, &protocol conformance descriptor for ASImportableCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7757F8);
  }

  return result;
}

unint64_t sub_1B1D645B8()
{
  result = qword_1EB775808;
  if (!qword_1EB775808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7757D8, &qword_1B1D88DA8);
    sub_1B1D641B4(&qword_1EB775810, type metadata accessor for ASImportableItem, &protocol conformance descriptor for ASImportableItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775808);
  }

  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCollectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1D7B53C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v48[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FB8, &unk_1B1D93650);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v55 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48[-v17];
  if (!sub_1B1D583E4(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_16;
  }

  v51 = v11;
  v52 = v7;
  v53 = type metadata accessor for ASImportableCollection(0);
  v19 = *(v53 + 20);
  v20 = *(v14 + 48);
  sub_1B1D64DB8(a1 + v19, v18);
  sub_1B1D64DB8(a2 + v19, &v18[v20]);
  v54 = v5;
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v50 = a2;
      sub_1B1CDEC18(v18, &qword_1EB775228, &qword_1B1D88D60);
      goto LABEL_9;
    }

LABEL_7:
    v22 = v18;
LABEL_15:
    sub_1B1CDEC18(v22, &qword_1EB775FB8, &unk_1B1D93650);
    goto LABEL_16;
  }

  sub_1B1D64DB8(v18, v13);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    (*(v54 + 8))(v13, v4);
    goto LABEL_7;
  }

  v50 = a2;
  v23 = v54;
  v24 = v52;
  (*(v54 + 32))(v52, &v18[v20], v4);
  sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v49 = sub_1B1D7BE0C();
  v25 = *(v23 + 8);
  v25(v24, v4);
  v25(v13, v4);
  sub_1B1CDEC18(v18, &qword_1EB775228, &qword_1B1D88D60);
  if ((v49 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v26 = v53;
  v27 = *(v53 + 24);
  v28 = *(v14 + 48);
  v29 = v55;
  sub_1B1D64DB8(a1 + v27, v55);
  v30 = v50 + v27;
  v31 = v50;
  sub_1B1D64DB8(v30, &v29[v28]);
  if (v21(v29, 1, v4) != 1)
  {
    v32 = v51;
    sub_1B1D64DB8(v29, v51);
    if (v21(&v29[v28], 1, v4) != 1)
    {
      v35 = v54;
      v36 = v52;
      (*(v54 + 32))(v52, &v29[v28], v4);
      sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v37 = sub_1B1D7BE0C();
      v38 = *(v35 + 8);
      v38(v36, v4);
      v38(v32, v4);
      sub_1B1CDEC18(v29, &qword_1EB775228, &qword_1B1D88D60);
      if ((v37 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    (*(v54 + 8))(v32, v4);
    goto LABEL_14;
  }

  if (v21(&v29[v28], 1, v4) != 1)
  {
LABEL_14:
    v22 = v29;
    goto LABEL_15;
  }

  sub_1B1CDEC18(v29, &qword_1EB775228, &qword_1B1D88D60);
LABEL_19:
  v39 = v26[7];
  v40 = *(a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (v31 + v39);
  if ((v40 != *v42 || v41 != v42[1]) && (sub_1B1D7C50C() & 1) == 0)
  {
    goto LABEL_16;
  }

  v43 = v26[8];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (v31 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v47)
  {
    goto LABEL_16;
  }

  if (sub_1B1D32980(*(a1 + v26[9]), *(v31 + v26[9])))
  {
    v33 = sub_1B1D3340C(*(a1 + v26[10]), *(v31 + v26[10]));
    return v33 & 1;
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

uint64_t _s22AuthenticationServices19ASImportableAccountV2eeoiySbAC_ACtFZ_0(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v16 = a1[8];
  v14 = a1[9];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v17 = a2[6];
  v18 = a1[6];
  v15 = a2[8];
  v13 = a2[9];
  if (!sub_1B1D583E4(*a1, a1[1], *a2, a2[1]) || (v2 != v7 || v3 != v8) && (sub_1B1D7C50C() & 1) == 0 || (v4 != v9 || v5 != v10) && (sub_1B1D7C50C() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v18 != v17 || v6 != v11) && (sub_1B1D7C50C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((sub_1B1D3340C(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_1B1D335B4(v14, v13);
}

uint64_t sub_1B1D64DB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1D64E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1D64E98()
{
  result = qword_1EB775820;
  if (!qword_1EB775820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775820);
  }

  return result;
}

unint64_t sub_1B1D64EEC()
{
  result = qword_1EB775830;
  if (!qword_1EB775830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775828, &qword_1B1D88DC0);
    sub_1B1D64F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775830);
  }

  return result;
}

unint64_t sub_1B1D64F70()
{
  result = qword_1EB775838;
  if (!qword_1EB775838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775838);
  }

  return result;
}

unint64_t sub_1B1D64FC4()
{
  result = qword_1EB775848;
  if (!qword_1EB775848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775828, &qword_1B1D88DC0);
    sub_1B1D65048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775848);
  }

  return result;
}

unint64_t sub_1B1D65048()
{
  result = qword_1EB775850;
  if (!qword_1EB775850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775850);
  }

  return result;
}

unint64_t sub_1B1D6509C()
{
  result = qword_1EB775860;
  if (!qword_1EB775860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775860);
  }

  return result;
}

uint64_t sub_1B1D650F0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B1D65130()
{
  result = qword_1EB775878;
  if (!qword_1EB775878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775878);
  }

  return result;
}

unint64_t sub_1B1D65184()
{
  result = qword_1EB775880;
  if (!qword_1EB775880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775880);
  }

  return result;
}

unint64_t sub_1B1D651D8()
{
  result = qword_1EB775890;
  if (!qword_1EB775890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775888, &qword_1B1D88DE8);
    sub_1B1D6525C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775890);
  }

  return result;
}

unint64_t sub_1B1D6525C()
{
  result = qword_1EB775898;
  if (!qword_1EB775898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775898);
  }

  return result;
}

unint64_t sub_1B1D652B0()
{
  result = qword_1EB7758B0;
  if (!qword_1EB7758B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775228, &qword_1B1D88D60);
    sub_1B1D641B4(&qword_1EB775770, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758B0);
  }

  return result;
}

unint64_t sub_1B1D65364()
{
  result = qword_1EB7758B8;
  if (!qword_1EB7758B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758B8);
  }

  return result;
}

unint64_t sub_1B1D653B8()
{
  result = qword_1EB7758C0;
  if (!qword_1EB7758C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775888, &qword_1B1D88DE8);
    sub_1B1D6543C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758C0);
  }

  return result;
}

unint64_t sub_1B1D6543C()
{
  result = qword_1EB7758C8;
  if (!qword_1EB7758C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758C8);
  }

  return result;
}

uint64_t sub_1B1D65490(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7753F0, &qword_1B1D88DF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}