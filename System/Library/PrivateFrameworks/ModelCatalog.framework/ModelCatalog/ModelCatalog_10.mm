uint64_t sub_18E2DA3E8()
{
  sub_18E1E2F2C();
  v5 = v5 && v4 == 0xE200000000000000;
  if (v5 || (sub_18E1E3894(v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = sub_18E1E31A0();
    v9 = v1 == v7 && v0 == v8;
    if (v9 || (sub_18E1CF3DC(v7, v8) & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_18E2200A4();
      v11 = v1 == v2 + 1 && v10 == v0;
      if (v11 || (sub_18E1CF3DC(v2 + 1, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        sub_18E223BF4();
        if (v5 && v12 == v0)
        {

          return 3;
        }

        else
        {
          sub_18E1CF3DC(0xD000000000000011, v12);
          sub_18E1E6A20();
          if (v1)
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
}

uint64_t sub_18E2DA4D0(uint64_t a1)
{
  v2 = sub_18E2F0CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2DA50C(uint64_t a1)
{
  v2 = sub_18E2F0CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TokenInputDenyListWithDefaultsBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E23A9B0(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C8E58();
  sub_18E2706EC(&qword_1EABE2300, &qword_18E4AACE0);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C61D0();
  sub_18E1C975C();
  v6 = sub_18E2F0CFC();
  sub_18E1E2974(&type metadata for TokenInputDenyListWithDefaultsBundle.CodingKeys, v7, v6);
  if (!v1)
  {
    v8 = sub_18E233460();
    sub_18E2706EC(v8, v9);
    sub_18E2F7E84();
    sub_18E1C6B74();
    sub_18E1E1638(v10, v11, &qword_18E4AACE8, v12);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E2F7E40();
    sub_18E1E1F48();
    sub_18E2C73A0();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E2F7E34();
    sub_18E1E3E3C();
    sub_18E1E33AC();
    sub_18E2C91FC();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E1E323C();
    sub_18E223BE8();
    sub_18E2C3FB0();
    sub_18E1E2CB0();
    sub_18E44F26C();
    sub_18E2F0994();
    sub_18E1C86E0();
    v13 = swift_allocObject();
    sub_18E1D41CC(v13);
    sub_18E2F0ADC();
    sub_18E1C86E0();
    v14 = swift_allocObject();
    sub_18E1E320C(v14);
    sub_18E2F0B30();
    sub_18E1C86E0();
    v15 = swift_allocObject();
    v16 = sub_18E2092EC(v15);
    sub_18E223C30(v16);

    sub_18E201AA0();

    sub_18E44E54C();
    sub_18E1E6510(v24);
    if (v17)
    {
      v18 = sub_18E1CBE2C();
      v19(v18);
      sub_18E1E8F44(v24, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1E3AC0();
    }

    else
    {
      sub_18E44E49C();
      v20 = sub_18E1CBE2C();
      v21(v20);
      sub_18E212008();
      v22 = sub_18E1E63C0();
      v23(v22);

      sub_18E1E7B38();
    }

    sub_18E201A20();
  }

  sub_18E1C9934(v0);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void TokenInputDenyListWithDefaultsBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  sub_18E2706EC(&qword_1EABE2320, &qword_18E4AACF0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E88C0();
  sub_18E1D60D8();
  v2 = sub_18E2F0CFC();
  sub_18E1E394C(&type metadata for TokenInputDenyListWithDefaultsBundle.CodingKeys, v3, v2);
  sub_18E221B08();
  TokenInputDenyListWithDefaultsBundle.id.getter();
  sub_18E1CD638();
  v27[256] = 0;
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE2328);
  sub_18E1E1104();
  if (v0)
  {

    v6 = sub_18E1E3D10();
    v7(v6);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    v8 = sub_18E2706EC(&qword_1EABE2268, &qword_18E4AAC70);
    if (sub_18E2387D0(&v29, v9, v8, &type metadata for ModelConfigurationReplacementBase))
    {
      sub_18E221668();
      sub_18E2333B0();
      sub_18E2F8034();
      sub_18E2C73F4();
      sub_18E2F79C4();
      sub_18E2CF468(&v28);
      sub_18E2F86A4();
      v15 = sub_18E2706EC(&qword_1EABE22D8, &qword_18E4AACB8);
      if (sub_18E201784(v15, v16, v15, &type metadata for TokenInputDenyListBase))
      {
        sub_18E220844();
        sub_18E221B14();
        sub_18E2F7E6C();
        sub_18E2C9250();
        sub_18E224C68();
        sub_18E2CF288(v27);
        sub_18E2F8614();
        v19 = sub_18E2706EC(&qword_1EABE22E0, &qword_18E4AACC0);
        if (sub_18E2372B0(v19, v20, v19, &type metadata for EmbeddingDenyListBase))
        {
          sub_18E201EF8();
          sub_18E2232D0(&v25);
          sub_18E2F7DE8();
          sub_18E2C4004();
          sub_18E2F7A24();
          v21 = sub_18E1E6C0C();
          v22(v21);
          sub_18E2CFAE0(&v26);
          goto LABEL_7;
        }

        v23 = sub_18E228994();
        sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v23);
        sub_18E221DF4();
        v12 = v24 + 2;
      }

      else
      {
        v17 = sub_18E228994();
        sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v17);
        sub_18E221DF4();
        v12 = v18 + 3;
      }
    }

    else
    {
      v10 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
      sub_18E221DF4();
    }

    sub_18E2231EC(v11, v12);
    v13 = sub_18E1E6C0C();
    v14(v13);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedTokenOutputDenyListBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F7EB0();
  sub_18E2336A4();
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E2352F4();
  sub_18E1E7430();
  sub_18E26C3FC(v2, v5);
  v6 = MEMORY[0x1E69E7CA0];
  if (!v64)
  {

    sub_18E1E8F44(&v63, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1E3B10();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    *&v63 = v0 + 2;
    *(&v63 + 1) = v23;
LABEL_25:
    sub_18E44E99C();
    sub_18E22449C();

    v24 = v0;
LABEL_26:
    MEMORY[0x193ACC300](v24, v6);

LABEL_27:
    v25 = sub_18E2AE554();
    v26 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v25);
    sub_18E1D7E28(v26, v27);
    goto LABEL_28;
  }

  v7 = sub_18E2F7B4C();
  if ((sub_18E22169C(v7, v8, v9, v10) & 1) == 0)
  {

    goto LABEL_21;
  }

  v6 = v62;
  type metadata accessor for Utils();
  v11 = sub_18E1D4B44();
  if (sub_18E32F0AC(v11, v12))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v13 = sub_18E44E83C();
    sub_18E1CE8B4(v13, qword_1EAC7F560);

    v14 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E216B90();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      *&v63 = sub_18E223E58();
      *(v1 + 4) = sub_18E2F83A4(4.8149e-34);
      sub_18E1D5F48(&dword_18E1C1000, v15, v16, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E2F8824(&v63);
    if (!v64)
    {

      sub_18E1E8F44(&v63, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_24:
      sub_18E1E3B10();
      sub_18E44EFFC();
      sub_18E1E23D4();
      MEMORY[0x193ACC300](v0 + 55, 0x800000018E466BF0);
      goto LABEL_25;
    }

    sub_18E2F7B4C();
    if ((sub_18E2F7C18() & 1) == 0)
    {

      goto LABEL_24;
    }

    v0 = 0;
    v6 = v62;
    sub_18E232D04();
    v57 = v1;
LABEL_11:
    sub_18E24177C();
    if (v22)
    {
      goto LABEL_42;
    }

    sub_18E223464();
    if (!v17)
    {
      break;
    }

    __break(1u);
LABEL_57:
    sub_18E1C7804(&qword_1EABE0CF8);
  }

  sub_18E1E8C38(v1, &v63);
  v18 = v64;
  sub_18E1C8570(&v63, v64);
  v19(v18);
  sub_18E220298();
  v22 = v22 && v21 == v62;
  if (!v22)
  {
    sub_18E221494(v20);
    sub_18E201F20();
    if (v18)
    {
      goto LABEL_30;
    }

    sub_18E1E3BE0(&v63);
    goto LABEL_11;
  }

LABEL_30:
  v28 = sub_18E2F7F30();
  sub_18E1C551C(v28, v29);
  v30 = sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
  sub_18E2F7F30();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:

    sub_18E2336A4();
    sub_18E1E3B10();
    sub_18E44EFFC();
    sub_18E1E23D4();
    MEMORY[0x193ACC300](43, 0x800000018E466C40);
    v24 = v61;
    goto LABEL_26;
  }

  v31 = sub_18E2F7B4C();
  memcpy(v31, v32, 0xD8uLL);
  sub_18E2F8424(&v58);
  sub_18E2336A4();
  if (!v34)
  {

    sub_18E24FF48(&v61);

    sub_18E1E8F44(&v58, &qword_1EABE3B70, &qword_18E4AAB80);
    v35 = MEMORY[0x1E69E7CA0];
    goto LABEL_45;
  }

  v35 = MEMORY[0x1E69E7CA0];
  if ((sub_18E22169C(v60, &v58, v33, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    sub_18E24FF48(&v61);

LABEL_45:
    sub_18E223C48();
    sub_18E44EFFC();
    sub_18E2F7EF8();
    v42 = sub_18E220CB4();
    v43 = MEMORY[0x193ACC300](v42);
    sub_18E216B20(v43, MEMORY[0x1E69E6158], v44, MEMORY[0x1E69E6168]);
    sub_18E22449C();

    v45 = 0;
LABEL_54:
    MEMORY[0x193ACC300](v45, v35);

    goto LABEL_27;
  }

  v36 = v60[0];
  v35 = v60[1];
  while (1)
  {
    sub_18E24177C();
    if (v22)
    {

      sub_18E24FF48(&v61);

      sub_18E2336A4();
LABEL_53:
      sub_18E223C48();
      sub_18E44EFFC();
      sub_18E2F7EF8();
      MEMORY[0x193ACC300](41, 0x800000018E466CD0);
      v45 = v36;
      goto LABEL_54;
    }

    sub_18E223464();
    if (v17)
    {
      __break(1u);
      return;
    }

    sub_18E1E8C38(v57, &v58);
    v37 = v59;
    sub_18E1C8570(&v58, v59);
    v38(v37);
    sub_18E220C28();
    if (v22 && v40 == v35)
    {
      break;
    }

    sub_18E1E2878(v39);
    sub_18E1E2238();

    if (v37)
    {
      goto LABEL_48;
    }

    sub_18E2336EC(&v58);
  }

LABEL_48:

  v46 = sub_18E2F7F10();
  sub_18E1C551C(v46, v47);
  v48 = sub_18E2F7F10();
  sub_18E2235B8(v48, v49, v30);
  sub_18E2336A4();
  if ((v50 & 1) == 0)
  {

    sub_18E24FF48(&v61);
    goto LABEL_53;
  }

  sub_18E23A548();
  sub_18E1C86E0();
  v51 = swift_allocObject();
  sub_18E2F8324(v51);
  sub_18E2402BC();
  sub_18E1C86E0();
  v52 = swift_allocObject();
  v53 = sub_18E1D001C(v52);
  memcpy(v53, v54, 0xD8uLL);
  sub_18E2F880C();
  sub_18E2F8364();
  sub_18E44E54C();
  sub_18E1D4C60(&type metadata for AssetBackedEmbeddingDenyListBase);
  if (v22)
  {

    sub_18E1E8F44(&type metadata for AssetBackedEmbeddingDenyListBase, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    sub_18E44E49C();
    sub_18E221D40();

    sub_18E25E19C();
    v55 = sub_18E1E2088();
    v56(v55);
  }

  sub_18E2F8098();
LABEL_28:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2DB474(uint64_t a1)
{
  v2 = sub_18E2F0DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2DB4B0(uint64_t a1)
{
  v2 = sub_18E2F0DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedTokenOutputDenyListBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E2614(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C8E58();
  sub_18E2706EC(&qword_1EABE2330, &qword_18E4AACF8);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1CAE74();
  sub_18E1C975C();
  v6 = sub_18E2F0DB8();
  sub_18E1CF90C(&type metadata for AssetBackedTokenOutputDenyListBundle.CodingKeys, v7, v6);
  if (!v1)
  {
    v8 = sub_18E1E63B4();
    sub_18E2706EC(v8, v9);
    sub_18E240610();
    sub_18E1C6B74();
    sub_18E1E1638(v10, v11, &qword_18E4AAD00, v12);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    sub_18E1D5E94();
    sub_18E251D50();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E242C9C();
    sub_18E23386C();
    sub_18E1E33AC();
    sub_18E2C4300();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E23A548();
    sub_18E1C86E0();
    v13 = swift_allocObject();
    sub_18E1CFEE4(v13);
    sub_18E2402BC();
    sub_18E1C86E0();
    v14 = swift_allocObject();
    v15 = sub_18E1D001C(v14);
    memcpy(v15, v16, 0xD8uLL);

    sub_18E22EA6C();

    sub_18E44E54C();
    sub_18E1E6510(&qword_18E4AAD00);
    if (v17)
    {
      v18 = sub_18E1CBE2C();
      v19(v18);
      sub_18E1E8F44(&qword_18E4AAD00, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1FF2C8();
    }

    else
    {
      v20 = sub_18E44E49C();
      v22 = sub_18E1E2B98(v20, v21);
      v23(v22);
      sub_18E212008();
      v24 = sub_18E202CF4();
      v25(v24);

      sub_18E1E6458();
    }

    sub_18E1E195C();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedTokenOutputDenyListBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  sub_18E2706EC(&qword_1EABE2350, &qword_18E4AAD08);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E88C0();
  sub_18E1D60D8();
  v2 = sub_18E2F0DB8();
  sub_18E1E394C(&type metadata for AssetBackedTokenOutputDenyListBundle.CodingKeys, v3, v2);
  sub_18E223988();
  AssetBackedTokenOutputDenyListBundle.id.getter();
  sub_18E1CD638();
  v21[256] = 0;
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE2358);
  sub_18E1EA540();
  if (v0)
  {

    v6 = sub_18E1E3D10();
    v7(v6);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    v8 = sub_18E2706EC(&qword_1EABE2360, &qword_18E4AAD10);
    if (sub_18E1E69D8(v8, v9, v8, &type metadata for AssetBackedTokenOutputDenyListBase))
    {
      sub_18E1E851C();
      sub_18E224D5C();
      sub_18E1E20AC();
      sub_18E24FE9C();
      sub_18E220CD8();
      sub_18E24FF48(&v22);
      sub_18E238EA8();
      v16 = sub_18E2706EC(&qword_1EABE2290, &qword_18E4AAC98);
      if (sub_18E223580(v16, v17, v16, &type metadata for AssetBackedEmbeddingDenyListBase))
      {
        sub_18E1E1400();
        sub_18E224DA8();
        sub_18E223E10();
        sub_18E2C4354();
        sub_18E224F80();
        v18 = sub_18E1E6C0C();
        v19(v18);
        sub_18E2CFAB0(v21);
        goto LABEL_7;
      }

      v20 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v20);
      sub_18E202CD4();
    }

    else
    {
      v10 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
      sub_18E202CD4();
      v13 = v12 | 2;
    }

    sub_18E2231EC(v11, v13);
    v14 = sub_18E1E6C0C();
    v15(v14);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2DBB58()
{
  sub_18E1C575C();
  sub_18E1D625C(v2, v3);
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_18E1E1FD8();
  sub_18E1C4EAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1CA704();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(v0 + 40);
  sub_18E1C5040(v1 + 2, v10);
  v11(v10);
  sub_18E201EA0();
  v14 = v14 && v13 == 0xE700000000000000;
  if (v14)
  {

    goto LABEL_10;
  }

  sub_18E232E1C(v12);
  sub_18E1E2238();

  if (v10)
  {
LABEL_10:
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  sub_18E2F81FC();
  v16 = v1[5];
  v15 = v1[6];
  sub_18E1C5040(v1 + 2, v16);
  v17(v16);
  sub_18E1D0274();
  sub_18E221BD4();
  sub_18E44E28C();

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E1E2388();
  if (v18)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v16 = v53;
  }

  *(v16 + 16) = v15;
  sub_18E1CFBC0();
  v20 = sub_18E1CF778(v19);
  v21(v20);
  sub_18E224178();
LABEL_11:
  v22 = v1[10];
  sub_18E1C5040(v1 + 7, v22);
  v23(v22);
  sub_18E201EA0();
  if (v14 && v25 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E232E1C(v24);
    sub_18E1CF9C4();

    if ((v22 & 1) == 0)
    {
      v27 = v1[10];
      sub_18E1C5040(v1 + 7, v27);
      v28(v27);
      sub_18E1D0274();
      sub_18E22362C();
      sub_18E22324C();
      sub_18E44E28C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EF9F0();
        v16 = v54;
      }

      sub_18E2F79B8();
      if (v18)
      {
        sub_18E1E3320();
        sub_18E3EF9F0();
        v16 = v55;
      }

      sub_18E1CA184();
      sub_18E1EA5D4();
      v29();
    }
  }

  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v16 + 16))
  {
    sub_18E2F85FC();
    sub_18E2F85E4();
    if (v5)
    {

      __break(1u);
      return;
    }

    sub_18E2F85CC();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v30)
  {
    v31 = sub_18E1E3DDC();
    v32(v31);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v33 = sub_18E44E83C();
    sub_18E1C95EC(v33, qword_1ED6A9858);
    v34 = sub_18E223FF0();
    v35(v34);
    v36 = sub_18E44E80C();
    v37 = sub_18E44EE0C();
    if (sub_18E201860(v37))
    {
      v38 = sub_18E2342D4();
      v39 = sub_18E2202BC();
      sub_18E2F7E00(v39);
      sub_18E232ED8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v40 = sub_18E44F39C();
      sub_18E2F86D4(v40, v41);
      sub_18E233674();
      sub_18E220B30();
      v42 = sub_18E223294();
      v43(v42);
      v44 = sub_18E1C5BFC();
      sub_18E1C9624(v44, v45, v46);
      sub_18E233674();
      *(v38 + 14) = v7;
      sub_18E1EA5F8(&dword_18E1C1000, v47, v48, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E2F7A80();
      v49 = sub_18E1D1964();
      MEMORY[0x193ACD400](v49);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v50 = sub_18E223294();
      v51(v50);
    }

    sub_18E201938();
    v52 = sub_18E1E3DF8();
    v7(v52);
  }

  sub_18E216A6C();
  sub_18E1C5544();
}

void TokenOutputDenyListBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  v1 = v0;
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v2);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E2352F4();
  sub_18E1E7430();
  sub_18E26C3FC(v1, v4);
  v5 = MEMORY[0x1E69E7CA0];
  if (!v76)
  {

    sub_18E1E8F44(&v75, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1CC400();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    sub_18E2F7D28(v29);
LABEL_25:
    sub_18E44E99C();
    sub_18E22449C();

    v30 = sub_18E2F7D34();
LABEL_26:
    MEMORY[0x193ACC300](v30, 0xD000000000000013);

    sub_18E223E34();
LABEL_27:
    v31 = sub_18E2AE554();
    v32 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v31);
    sub_18E1CFAB8(v32, v33);
    goto LABEL_28;
  }

  v6 = sub_18E1E84CC();
  if ((sub_18E2281F0(v6, v7, v8, v9) & 1) == 0)
  {

    goto LABEL_21;
  }

  v10 = v74;
  type metadata accessor for Utils();
  if (sub_18E32F0AC(v73, v74))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v11 = sub_18E44E83C();
    sub_18E1CE8B4(v11, qword_1EAC7F560);

    v12 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E2F871C();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v13 = sub_18E223E58();
      sub_18E2F7D4C(v13);
      v14 = sub_18E2F7C70(4.8149e-34);
      *(v5 + 4) = sub_18E1C9624(v14, v10, v15);
      sub_18E1D5F48(&dword_18E1C1000, v16, v17, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v5 = MEMORY[0x1E69E7CA0];
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E2F8824(&v75);
    if (!v76)
    {

      sub_18E1E8F44(&v75, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_24:
      sub_18E1CC400();
      sub_18E44EFFC();
      sub_18E1D44E0();
      sub_18E1E1914();
      MEMORY[0x193ACC300]();
      goto LABEL_25;
    }

    v18 = sub_18E1E84CC();
    if ((sub_18E2281F0(v18, v19, v20, v21) & 1) == 0)
    {

      goto LABEL_24;
    }

    sub_18E2F7ED0();
    sub_18E20196C();
LABEL_11:
    sub_18E220EA4();
    if (v28)
    {
      goto LABEL_43;
    }

    sub_18E1E1888();
    if (!v22)
    {
      break;
    }

    __break(1u);
LABEL_58:
    sub_18E1C7804(&qword_1EABE0CF8);
  }

  sub_18E220C68();
  v23 = v77;
  sub_18E1E15F4(&v75, v76);
  v24 = sub_18E1CD91C();
  v25(v24);
  sub_18E220298();
  v28 = v28 && v27 == 0xD000000000000013;
  if (!v28)
  {
    sub_18E221494(v26);
    sub_18E1E1F80();

    if (v23)
    {
      goto LABEL_31;
    }

    sub_18E207AC8(&v75);
    goto LABEL_11;
  }

LABEL_31:
  v34 = sub_18E1E1C30();
  sub_18E1C551C(v34, v35);
  sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  v36 = sub_18E1E1C30();
  if ((sub_18E2F7DB8(v36, v37, v38, v39) & 1) == 0)
  {
LABEL_43:

    sub_18E2336A4();
    sub_18E1CC400();
    sub_18E44EFFC();
    sub_18E1D44E0();
    sub_18E1E1914();
    MEMORY[0x193ACC300]();
    v30 = sub_18E2F7D40();
    goto LABEL_26;
  }

  v40 = sub_18E1E84CC();
  memcpy(v40, v41, 0xD8uLL);
  sub_18E2F8424(&v69);
  v42 = 0xD000000000000013;
  if (!v70)
  {

    sub_18E2CF258(&v73);

    sub_18E1E8F44(&v69, &qword_1EABE3B70, &qword_18E4AAB80);
    goto LABEL_46;
  }

  v43 = sub_18E1E1A40();
  if ((sub_18E223680(v43, v44, v45, v46) & 1) == 0)
  {

    sub_18E2CF258(&v73);

LABEL_46:
    sub_18E223A3C();
    sub_18E44EFFC();
    sub_18E221770();
    sub_18E1E9DA0();
    v56 = MEMORY[0x193ACC300]();
    sub_18E223530(v56, MEMORY[0x1E69E6158], v57, MEMORY[0x1E69E6168]);
    sub_18E22449C();

    v58 = sub_18E1E884C();
LABEL_55:
    MEMORY[0x193ACC300](v58, v42);

    goto LABEL_27;
  }

  v47 = 0;
  v42 = v72;
  while (1)
  {
    sub_18E223270();
    if (v28)
    {

      sub_18E2CF258(&v73);

LABEL_54:
      sub_18E223A3C();
      sub_18E44EFFC();
      sub_18E221770();
      sub_18E1E9DA0();
      MEMORY[0x193ACC300]();
      v58 = sub_18E1E861C();
      goto LABEL_55;
    }

    sub_18E224CBC();
    if (v22)
    {
      __break(1u);
      return;
    }

    sub_18E1E8C38(v48, &v69);
    v49 = v70;
    v50 = v71;
    v51 = sub_18E1E1D24(&v69);
    v52(v51);
    sub_18E220C28();
    if (v28 && v54 == v42)
    {
      break;
    }

    sub_18E1E2878(v53);
    sub_18E1E1F80();

    if (v49)
    {
      goto LABEL_49;
    }

    sub_18E1C9934(&v69);
    ++v47;
  }

LABEL_49:

  v59 = sub_18E1E2920();
  sub_18E1C551C(v59, v60);
  v61 = sub_18E1E2920();
  if ((sub_18E22086C(v61, v62) & 1) == 0)
  {

    sub_18E2CF258(&v73);
    goto LABEL_54;
  }

  sub_18E2F0E74();
  sub_18E1C86E0();
  v63 = swift_allocObject();
  sub_18E1E3B8C(v63);
  sub_18E2F0B30();
  sub_18E1C86E0();
  v64 = swift_allocObject();
  v65 = sub_18E1E9C70(v64);
  memcpy(v65, v66, 0xD8uLL);
  sub_18E1E19CC();
  sub_18E223960();
  sub_18E44E54C();
  sub_18E1D4C60(v50);
  if (v28)
  {

    sub_18E1E8F44(v50, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    sub_18E44E49C();
    sub_18E2F7AB0();
    sub_18E25E19C();
    v67 = sub_18E1CBE3C();
    v68(v67);
  }

  sub_18E1E1B50();
  sub_18E23492C();
LABEL_28:
  sub_18E1C6650();
}

uint64_t sub_18E2DC754()
{
  sub_18E1E2F2C();
  v5 = v5 && v4 == 0xE200000000000000;
  if (v5 || (sub_18E1E3894(v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_18E2200A4();
    v8 = v1 == (v2 | 2) && v7 == v0;
    if (v8 || (sub_18E1CF3DC(v2 + 2, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_18E223BF4();
      if (v5 && v9 == v0)
      {

        return 2;
      }

      else
      {
        sub_18E1CF3DC(0xD000000000000011, v9);
        sub_18E1E6A20();
        sub_18E228220();
        if (v5)
        {
          return v11 + 1;
        }

        else
        {
          return v11;
        }
      }
    }
  }
}

uint64_t sub_18E2DC814(uint64_t a1)
{
  v2 = sub_18E2F0EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2DC850(uint64_t a1)
{
  v2 = sub_18E2F0EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TokenOutputDenyListBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E2614(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C8E58();
  sub_18E2706EC(&qword_1EABE2370, &qword_18E4AAD18);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1CAE74();
  sub_18E1C975C();
  v6 = sub_18E2F0EC8();
  sub_18E1CF90C(&type metadata for TokenOutputDenyListBundle.CodingKeys, v7, v6);
  if (!v1)
  {
    v8 = sub_18E1E63B4();
    sub_18E2706EC(v8, v9);
    sub_18E240610();
    sub_18E1C6B74();
    sub_18E1E1638(v10, v11, &qword_18E4AAD20, v12);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    sub_18E1D5E94();
    sub_18E2C9624();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E242C9C();
    sub_18E23386C();
    sub_18E1E33AC();
    sub_18E2C3FB0();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E2F0E74();
    sub_18E1C86E0();
    v13 = swift_allocObject();
    sub_18E1CFEE4(v13);
    sub_18E2F0B30();
    sub_18E1C86E0();
    v14 = swift_allocObject();
    v15 = sub_18E1D001C(v14);
    memcpy(v15, v16, 0xD8uLL);

    sub_18E22EA6C();

    sub_18E44E54C();
    sub_18E1E6510(&qword_18E4AAD20);
    if (v17)
    {
      v18 = sub_18E1CBE2C();
      v19(v18);
      sub_18E1E8F44(&qword_18E4AAD20, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1FF2C8();
    }

    else
    {
      v20 = sub_18E44E49C();
      v22 = sub_18E1E2B98(v20, v21);
      v23(v22);
      sub_18E212008();
      v24 = sub_18E202CF4();
      v25(v24);

      sub_18E1E6458();
    }

    sub_18E1E195C();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void TokenOutputDenyListBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  sub_18E2706EC(&qword_1EABE2390, &qword_18E4AAD28);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E88C0();
  sub_18E1D60D8();
  v2 = sub_18E2F0EC8();
  sub_18E1E394C(&type metadata for TokenOutputDenyListBundle.CodingKeys, v3, v2);
  sub_18E223988();
  TokenOutputDenyListBundle.id.getter();
  sub_18E1CD638();
  v21[256] = 0;
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE2398);
  sub_18E1EA540();
  if (v0)
  {

    v6 = sub_18E1E3D10();
    v7(v6);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    v8 = sub_18E2706EC(&qword_1EABE23A0, &qword_18E4AAD30);
    if (sub_18E1E69D8(v8, v9, v8, &type metadata for TokenOutputDenyListBase))
    {
      sub_18E1E851C();
      sub_18E224D5C();
      sub_18E1E20AC();
      sub_18E2C9678();
      sub_18E220CD8();
      sub_18E2CF258(&v22);
      sub_18E238EA8();
      v16 = sub_18E2706EC(&qword_1EABE22E0, &qword_18E4AACC0);
      if (sub_18E223580(v16, v17, v16, &type metadata for EmbeddingDenyListBase))
      {
        sub_18E1E1400();
        sub_18E224DA8();
        sub_18E223E10();
        sub_18E2C4004();
        sub_18E224F80();
        v18 = sub_18E1E6C0C();
        v19(v18);
        sub_18E2CFAE0(v21);
        goto LABEL_7;
      }

      v20 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v20);
      sub_18E202CD4();
    }

    else
    {
      v10 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
      sub_18E202CD4();
      v13 = v12 | 2;
    }

    sub_18E2231EC(v11, v13);
    v14 = sub_18E1E6C0C();
    v15(v14);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedTokenOutputDenyListWithDefaultsBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F80F4();
  sub_18E2239D8();
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E2352F4();
  sub_18E1E7430();
  sub_18E26C3FC(v1, v6);
  v7 = MEMORY[0x1E69E7CA0];
  if (!v105)
  {

    sub_18E1E8F44(v104, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_22:
    sub_18E1C9550();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    v104[0] = v0 + 4;
    v104[1] = v28;
    goto LABEL_26;
  }

  v8 = sub_18E228754();
  if ((sub_18E2281F0(v8, v9, v10, v11) & 1) == 0)
  {

    goto LABEL_22;
  }

  sub_18E2F83E4();
  v96 = v2;
  v12 = sub_18E223B64();
  if ((sub_18E32F0AC(v12, v13) & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
      sub_18E1C7804(&qword_1EABE0CF8);
    }

    v14 = sub_18E44E83C();
    sub_18E1C95EC(v14, qword_1EAC7F560);
    sub_18E1E673C();

    v15 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E1E1A10())
    {
      v16 = sub_18E1C5F74();
      v17 = sub_18E2216D0();
      v94 = v3;
      sub_18E212178(v17);
      sub_18E2F804C(4.8149e-34);
      *(v16 + 4) = sub_18E1C9624(v2, v7, v18);
      sub_18E1E33B8(&dword_18E1C1000, v19, v20, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  sub_18E243B40();
  sub_18E26C3FC(v1, v21);
  if (!v105)
  {

    sub_18E1E8F44(v104, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_25:
    sub_18E1C9550();
    sub_18E44EFFC();
    sub_18E1D7FD0();
    sub_18E2288EC();
LABEL_26:
    sub_18E44E99C();
    sub_18E2092F8();
    v29 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v29);
LABEL_27:

    sub_18E2F7E78();
    goto LABEL_28;
  }

  sub_18E228754();
  if ((sub_18E2F7C18() & 1) == 0)
  {

    goto LABEL_25;
  }

  sub_18E2332FC();
  while (1)
  {
    sub_18E24177C();
    if (v27)
    {
      goto LABEL_43;
    }

    sub_18E223464();
    if (v22)
    {
      __break(1u);
LABEL_66:

      sub_18E2CF438(v103);
      sub_18E24FF48(v100);

      sub_18E2239D8();
LABEL_73:
      sub_18E220910();
      sub_18E44EFFC();
      sub_18E237298();
      sub_18E235264();
      v89 = sub_18E1D4B44();
      MEMORY[0x193ACC300](v89);
LABEL_74:

LABEL_28:
      v30 = sub_18E2AE554();
      v31 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v30);
      sub_18E1CFAB8(v31, v32);
LABEL_29:
      sub_18E1E29D0();
      sub_18E1C6650();
      return;
    }

    sub_18E2F88CC();
    v23 = v105;
    sub_18E1C8570(v104, v105);
    v24(v23);
    sub_18E235A6C();
    v27 = v27 && v26 == v3;
    if (v27)
    {
      break;
    }

    sub_18E240E4C(v25);
    sub_18E201F20();
    if (v23)
    {
      goto LABEL_31;
    }

    sub_18E1C9934(v104);
    sub_18E21209C();
  }

LABEL_31:
  v33 = sub_18E2235F8();
  sub_18E1C551C(v33, v34);
  sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
  v35 = sub_18E2235F8();
  if ((sub_18E2F7DB8(v35, v36, v37, v38) & 1) == 0)
  {
LABEL_43:

    sub_18E2239D8();
    sub_18E1C9550();
    sub_18E44EFFC();
    sub_18E1D7FD0();
    sub_18E2288EC();
    v51 = sub_18E2201C4();
    MEMORY[0x193ACC300](v51);
    goto LABEL_27;
  }

  v39 = sub_18E228754();
  memcpy(v39, v40, 0xD8uLL);
  sub_18E2F8158();
  sub_18E2239D8();
  sub_18E1E7400(v41);
  if (!v102)
  {

    sub_18E2CF438(v103);

    sub_18E1E8F44(v101, &qword_1EABE3B70, &qword_18E4AAB80);
    goto LABEL_46;
  }

  v42 = sub_18E238998();
  if ((sub_18E2281F0(v42, v43, v44, v45) & 1) == 0)
  {

    sub_18E2CF438(v103);

LABEL_46:
    sub_18E1D01D8();
    sub_18E44EFFC();
    sub_18E1DD584();
    sub_18E216910();
    sub_18E237D80(v52, MEMORY[0x1E69E6158], v53, MEMORY[0x1E69E6168]);
    sub_18E2092F8();
    v54 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v54);
LABEL_61:

    sub_18E2F7E4C();
    goto LABEL_28;
  }

  sub_18E2F7EE4();
  while (1)
  {
    sub_18E24177C();
    if (v27)
    {
      goto LABEL_60;
    }

    sub_18E223464();
    if (v22)
    {
      break;
    }

    sub_18E2F8674();
    v46 = v102;
    sub_18E1C8570(v101, v102);
    v47(v46);
    sub_18E235A6C();
    if (v27 && v49 == v3)
    {

LABEL_48:
      v55 = sub_18E2168F8();
      sub_18E1C551C(v55, v56);
      v57 = sub_18E2168F8();
      if ((sub_18E2F868C(v57, v58, v59, v60) & 1) == 0)
      {
LABEL_60:

        sub_18E2CF438(v103);

        sub_18E2239D8();
        sub_18E1D01D8();
        sub_18E44EFFC();
        sub_18E1DD584();
        sub_18E216910();
        v74 = sub_18E2201C4();
        MEMORY[0x193ACC300](v74);
        goto LABEL_61;
      }

      v61 = sub_18E238998();
      memcpy(v61, v62, 0xD8uLL);
      sub_18E2239D8();
      sub_18E1E7400(v63);
      if (v98)
      {
        v64 = sub_18E2F7FC0();
        if (sub_18E2281F0(v64, v65, v66, v67))
        {

          sub_18E2F7F54();
          while (1)
          {
            sub_18E24177C();
            if (v27)
            {
              goto LABEL_66;
            }

            sub_18E223464();
            if (v22)
            {
              goto LABEL_77;
            }

            sub_18E1E8C38(v3, v97);
            v69 = v98;
            v68 = v99;
            sub_18E1C8570(v97, v98);
            v70(v69);
            sub_18E223708();
            if (v27 && v72 == v1)
            {

LABEL_68:

              v78 = sub_18E2F7ACC();
              sub_18E1C551C(v78, v79);
              v80 = sub_18E2F7ACC();
              sub_18E2235B8(v80, v81, v92);
              sub_18E2239D8();
              v82 = v93;
              if ((v83 & 1) == 0)
              {

                sub_18E2CF438(v103);
                sub_18E24FF48(v100);
                goto LABEL_73;
              }

              sub_18E1D40A4();
              sub_18E1C86E0();
              v84 = swift_allocObject();
              sub_18E26566C(v84);
              sub_18E23A548();
              sub_18E1C86E0();
              v85 = swift_allocObject();
              v86 = sub_18E1E8338(v85);
              sub_18E2F889C(v86);
              sub_18E2402BC();
              sub_18E1C86E0();
              v87 = swift_allocObject();
              v88 = sub_18E1E8590(v87);
              sub_18E2F865C(v88);

              sub_18E1D5F00();
              sub_18E44E50C();
              sub_18E44E54C();
              sub_18E1D4C60(v95);
              if (v27)
              {

                sub_18E1E8F44(v95, &qword_1EABE2FE0, &qword_18E49CE00);
              }

              else
              {
                sub_18E44E49C();
                sub_18E221D40();

                sub_18E25E19C();
                v90 = sub_18E1CFFC0();
                v91(v90);

                v82 = v95;
              }

              *v94 = v96;
              v94[1] = v82;
              sub_18E1E1040();
              goto LABEL_29;
            }

            sub_18E1E1530(v71, v68, v46);
            sub_18E1E2238();

            if (v69)
            {
              goto LABEL_68;
            }

            sub_18E2336EC(v97);
          }
        }

        sub_18E2CF438(v103);
        sub_18E24FF48(v100);
      }

      else
      {

        sub_18E2CF438(v103);
        sub_18E24FF48(v100);

        sub_18E1E8F44(v97, &qword_1EABE3B70, &qword_18E4AAB80);
      }

      sub_18E220910();
      sub_18E44EFFC();
      sub_18E237298();
      sub_18E235264();
      sub_18E237D80(v75, MEMORY[0x1E69E6158], v76, MEMORY[0x1E69E6168]);
      sub_18E2092F8();
      v77 = sub_18E1E2E14();
      MEMORY[0x193ACC300](v77);
      goto LABEL_74;
    }

    sub_18E240E4C(v48);
    sub_18E201F20();
    if (v46)
    {
      goto LABEL_48;
    }

    sub_18E1C9934(v101);
    sub_18E21209C();
  }

  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t sub_18E2DD8A0(uint64_t (*a1)(void))
{
  v2 = a1();
  sub_18E1DF33C(v2);
  sub_18E1C5D78();

  return v1;
}

void _s12ModelCatalog47AssetBackedTokenInputDenyListWithDefaultsBundleV05assetD9ResourcesSayAA0cD8Resource_pGvg_0()
{
  sub_18E1C575C();
  v3 = sub_18E228964(v1[6]);
  sub_18E221834(v3);
  sub_18E1CF2D8();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v15 = sub_18E1D6328(v7, v8, v9, v10, v11, v12, v13, v14, v67);
  (v2)(v15);
  sub_18E220AAC();
  sub_18E211EDC();
  sub_18E235294(v16);
  if (v17)
  {
    sub_18E1D4370();
    sub_18E211EDC();
    sub_18E216B58(v65);
  }

  sub_18E237A38();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_18E2112EC();
  (v2)(v19);
  v20 = sub_18E1C5820();
  sub_18E1DF2A8(v20, v21, v22, v23, v24);
  v25 = sub_18E2167D8();
  v26(v25);
  v67 = v1[11];
  sub_18E221834(v1 + 7);
  v68 = &v67;
  sub_18E1CF2D8();
  MEMORY[0x1EEE9AC00](v27);
  sub_18E2F7994();
  v29 = sub_18E221D08(v28);
  v5(v29);
  sub_18E1D4294();
  if (v17)
  {
    sub_18E1D4370();
    sub_18E211EDC();
    v69 = v30;
    v70 = v30;
  }

  else
  {
    v69 = v0;
  }

  MEMORY[0x1EEE9AC00](v30);
  v31 = sub_18E2112EC();
  v5(v31);
  v32 = sub_18E1C5820();
  sub_18E1DF2A8(v32, v33, v34, v35, v36);
  v37 = sub_18E2F81B4();
  v38(v37);
  v39 = v1[15];
  sub_18E221834(v1 + 12);
  v68 = &v67;
  sub_18E1CF2D8();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v49 = sub_18E1D4D58(v41, v42, v43, v44, v45, v46, v47, v48, v67);
  (v2)(v49);
  sub_18E234004();
  if (v17)
  {
    sub_18E2F79AC();
    sub_18E211EDC();
    v69 = v66;
    v70 = v66;
  }

  sub_18E2F81DC();
  v51 = MEMORY[0x1EEE9AC00](v50);
  sub_18E1CEAD0(v51, v52, v53, v54, v55, v56, v57, v58, v67);
  sub_18E2F80D4();
  v2();
  v59 = sub_18E1CF9A0();
  sub_18E1DF2A8(v59, v60, v61, v39, v62);
  v63 = sub_18E223F60();
  v64(v63, v39);
  sub_18E1C5544();
}

uint64_t sub_18E2DDBD0(uint64_t a1)
{
  v2 = sub_18E2F0F84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2DDC0C(uint64_t a1)
{
  v2 = sub_18E2F0F84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedTokenOutputDenyListWithDefaultsBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E23A9B0(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C8E58();
  sub_18E2706EC(&qword_1EABE23A8, &qword_18E4AAD38);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C61D0();
  sub_18E1C975C();
  v6 = sub_18E2F0F84();
  sub_18E1E2974(&type metadata for AssetBackedTokenOutputDenyListWithDefaultsBundle.CodingKeys, v7, v6);
  if (!v1)
  {
    v8 = sub_18E233460();
    sub_18E2706EC(v8, v9);
    sub_18E2F7E84();
    sub_18E1C6B74();
    sub_18E1E1638(v10, v11, &qword_18E4AAD40, v12);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E2F7E40();
    sub_18E1E1F48();
    sub_18E2C76F0();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E2F7E34();
    sub_18E1E3E3C();
    sub_18E1E33AC();
    sub_18E251D50();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E1E323C();
    sub_18E223BE8();
    sub_18E2C4300();
    sub_18E1E2CB0();
    sub_18E44F26C();
    sub_18E1D40A4();
    sub_18E1C86E0();
    v13 = swift_allocObject();
    sub_18E1D41CC(v13);
    sub_18E23A548();
    sub_18E1C86E0();
    v14 = swift_allocObject();
    sub_18E1E320C(v14);
    sub_18E2402BC();
    sub_18E1C86E0();
    v15 = swift_allocObject();
    v16 = sub_18E2092EC(v15);
    sub_18E223C30(v16);

    sub_18E201AA0();

    sub_18E44E54C();
    sub_18E1E6510(v24);
    if (v17)
    {
      v18 = sub_18E1CBE2C();
      v19(v18);
      sub_18E1E8F44(v24, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1E3AC0();
    }

    else
    {
      sub_18E44E49C();
      v20 = sub_18E1CBE2C();
      v21(v20);
      sub_18E212008();
      v22 = sub_18E1E63C0();
      v23(v22);

      sub_18E1E7B38();
    }

    sub_18E201A20();
  }

  sub_18E1C9934(v0);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void AssetBackedTokenOutputDenyListWithDefaultsBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  sub_18E2706EC(&qword_1EABE23B8, &qword_18E4AAD48);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E88C0();
  sub_18E1D60D8();
  v2 = sub_18E2F0F84();
  sub_18E1E394C(&type metadata for AssetBackedTokenOutputDenyListWithDefaultsBundle.CodingKeys, v3, v2);
  sub_18E221B08();
  AssetBackedTokenOutputDenyListWithDefaultsBundle.id.getter();
  sub_18E1CD638();
  v27[256] = 0;
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABDF978);
  sub_18E1E1104();
  if (v0)
  {

    v6 = sub_18E1E3D10();
    v7(v6);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    v8 = sub_18E2706EC(&qword_1EABE2228, &qword_18E4AAC50);
    if (sub_18E2387D0(&v29, v9, v8, &type metadata for AssetBackedModelConfigurationReplacementBase))
    {
      sub_18E221668();
      sub_18E2333B0();
      sub_18E2F8034();
      sub_18E2C7744();
      sub_18E2F79C4();
      sub_18E2CF438(&v28);
      sub_18E2F86A4();
      v15 = sub_18E2706EC(&qword_1EABE2360, &qword_18E4AAD10);
      if (sub_18E201784(v15, v16, v15, &type metadata for AssetBackedTokenOutputDenyListBase))
      {
        sub_18E220844();
        sub_18E221B14();
        sub_18E2F7E6C();
        sub_18E24FE9C();
        sub_18E224C68();
        sub_18E24FF48(v27);
        sub_18E2F8614();
        v19 = sub_18E2706EC(&qword_1EABE2290, &qword_18E4AAC98);
        if (sub_18E2372B0(v19, v20, v19, &type metadata for AssetBackedEmbeddingDenyListBase))
        {
          sub_18E201EF8();
          sub_18E2232D0(&v25);
          sub_18E2F7DE8();
          sub_18E2C4354();
          sub_18E2F7A24();
          v21 = sub_18E1E6C0C();
          v22(v21);
          sub_18E2CFAB0(&v26);
          goto LABEL_7;
        }

        v23 = sub_18E228994();
        sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v23);
        sub_18E2F7970();
        v12 = v24 + 2;
      }

      else
      {
        v17 = sub_18E228994();
        sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v17);
        sub_18E2F7970();
        v12 = v18 | 4;
      }
    }

    else
    {
      v10 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
      sub_18E2F7970();
    }

    sub_18E2231EC(v11, v12);
    v13 = sub_18E1E6C0C();
    v14(v13);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2DE304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_18E1CFF04();
  a27 = v29;
  a28 = v30;
  sub_18E240A94();
  v32 = v31();
  v33 = sub_18E1DF33C(v32);

  if (*(v33 + 16))
  {
    v34 = sub_18E200E68();
    sub_18E224604(v34);
    sub_18E224080();
    do
    {
      sub_18E241A14(v35, v36, v37, v38);
      sub_18E1E15F4(&a11, a14);
      v39 = sub_18E208028();
      v40(v39);
      sub_18E1C9934(&a11);
      sub_18E1E686C();
      if (v42)
      {
        sub_18E2F7A64(v41 > 1);
      }

      sub_18E1E3050();
    }

    while (!v43);
  }

  v45 = (v28)(v44);
  sub_18E1DF33C(v45);
  sub_18E233F98();
  if (*(v28 + 16))
  {
    v46 = sub_18E200E68();
    sub_18E2F7CE0(v46);
    sub_18E2F7C0C();
    do
    {
      sub_18E232E6C(v47, v48, v49, v50);
      v51 = sub_18E1C8C94(&a11);
      v52(v51);
      sub_18E221954();
      sub_18E1C9934(&a11);
      sub_18E239C74();
      if (v42)
      {
        sub_18E201F38(v53 > 1);
      }

      sub_18E1CA5D4();
    }

    while (!v43);
  }

  v54 = sub_18E1E6BB0();
  sub_18E290008(v54, v55);
  sub_18E1E6A20();

  sub_18E2079F8();
}

void sub_18E2DE674()
{
  sub_18E1C575C();
  v87 = v3;
  v86 = v4;
  v5 = v0;
  v90 = v6;
  v89 = sub_18E1CFD4C();
  sub_18E1C4EAC();
  v88 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_18E1E1FD8();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CA704();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84 - v13;
  v15 = v0[5];
  sub_18E1C5040(v0 + 2, v15);
  v16(v15);
  sub_18E201EA0();
  v19 = v19 && v18 == 0xE700000000000000;
  if (v19)
  {

    goto LABEL_10;
  }

  sub_18E232E1C(v17);
  sub_18E1E2238();

  if (v15)
  {
LABEL_10:
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v85 = v2;
  v21 = v0[5];
  v20 = v0[6];
  sub_18E1C5040(v5 + 2, v5[5]);
  v22(v21);
  sub_18E1D0274();
  sub_18E1E2414(22, 0x800000018E465F90, v23);

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E2F7F8C();
  if (v24)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v21 = v79;
  }

  *(v21 + 16) = v20;
  sub_18E1CFBC0();
  sub_18E1E1938();
  v27(v25 + v26 * "embeddingDenyListVariant", v14, v9);
LABEL_11:
  v28 = v5[10];
  v29 = v5[11];
  sub_18E1C5040(v5 + 7, v28);
  v30(v28);
  sub_18E232B70();
  if (v19 && v32 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E2208A8(v31, v28);
    sub_18E1E6A20();
    if ((v29 & 1) == 0)
    {
      v85 = v9;
      v34 = v5[10];
      v35 = v5[11];
      sub_18E1C5040(v5 + 7, v34);
      v36(v34);
      sub_18E223AE4();
      sub_18E44E28C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EF9F0();
        v21 = v80;
      }

      sub_18E221FB8();
      if (v24)
      {
        sub_18E207B20(v37 > 1);
        v21 = v81;
      }

      v38 = v85;
      *(v21 + 16) = v34;
      sub_18E1CFBC0();
      sub_18E1E1938();
      v41(v39 + v40 * v35, v1, v38);
    }
  }

  v42 = v5[15];
  v43 = v5[16];
  sub_18E1C5040(v5 + 12, v42);
  v44(v42);
  sub_18E232B70();
  if (v19 && v46 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E2208A8(v45, v42);
    sub_18E1E6A20();
    if ((v43 & 1) == 0)
    {
      v42 = v5[15];
      sub_18E1C5040(v5 + 12, v42);
      v48(v42);
      sub_18E223AE4();
      sub_18E2F82C4();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EF9F0();
        v21 = v82;
      }

      sub_18E221FB8();
      if (v24)
      {
        sub_18E207B20(v49 > 1);
        v21 = v83;
      }

      *(v21 + 16) = v42;
      sub_18E1E2708();
      sub_18E1EA5D4();
      v50();
    }
  }

  sub_18E44E37C();
  v51 = *v5;
  v52 = v5[1];

  MEMORY[0x193ACBAD0](v51, v52);
  if (*(v21 + 16))
  {
    v93 = v21;

    sub_18E2EEDB8(&v93);

    sub_18E44E2FC();
  }

  else
  {
  }

  v53 = sub_18E44E36C();
  if (v54)
  {
    v55 = v53;
    v56 = v54;
    v57 = sub_18E1CF9A0();
    v58(v57);
    v51 = v55;
    v52 = v56;
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v59 = sub_18E44E83C();
    sub_18E1C95EC(v59, qword_1ED6A9858);
    v60 = sub_18E2F7CA0();
    v86(v60);
    v61 = sub_18E44E80C();
    v62 = sub_18E44EE0C();
    if (sub_18E201860(v62))
    {
      v42 = sub_18E2342D4();
      v63 = sub_18E2202BC();
      v92 = v63;
      *v42 = 136315394;
      sub_18E1E1B74(v63, &v91);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v64 = sub_18E44F39C();
      v66 = v65;
      sub_18E1C9624(v64, v65, &v92);
      sub_18E223638();

      sub_18E223BA0();
      v67 = sub_18E2202E0();
      v68(v67);
      v69 = sub_18E2016D4();
      sub_18E1C9624(v69, v70, v71);
      sub_18E1E6C9C();

      *(v42 + 14) = v66;
      sub_18E2F8344(&dword_18E1C1000, v72, v73, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E2F7A80();
      v74 = sub_18E1D1964();
      MEMORY[0x193ACD400](v74);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v75 = sub_18E2202E0();
      v76(v75);
    }

    sub_18E2F82A4();
    v77 = sub_18E1CF9A0();
    (v42)(v77);
  }

  sub_18E220C1C();
  *v78 = v51;
  v78[1] = v52;
  sub_18E1C5544();
}

uint64_t sub_18E2DED40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, void *)@<X5>, void (*a7)(uint64_t, void *)@<X6>, uint64_t (*a8)(uint64_t, void *)@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a6(a3, a9 + 2);
  a7(a4, a9 + 7);

  return a8(a5, a9 + 12);
}

void TokenOutputDenyListWithDefaultsBundle.init(with:resources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  sub_18E2F7E20();
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v13);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C57AC();
  sub_18E1E7430();
  sub_18E26C3FC(v11, v15);
  if (!v112)
  {

    sub_18E1E8F44(v111, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_22:
    sub_18E1C9550();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    v111[0] = 0xD000000000000015;
    v111[1] = v41;
    goto LABEL_26;
  }

  v16 = sub_18E228754();
  if ((sub_18E223994(v16, v17, v18, v19) & 1) == 0)
  {

    goto LABEL_22;
  }

  sub_18E2F8264();
  v20 = sub_18E2201C4();
  if ((sub_18E32F0AC(v20, v21) & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
      sub_18E1C7804(&qword_1EABE0CF8);
    }

    v22 = sub_18E44E83C();
    sub_18E1CE8B4(v22, qword_1EAC7F560);

    v23 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E1E1A10())
    {
      v101 = v10;
      v24 = sub_18E1C5F74();
      v25 = sub_18E2216D0();
      sub_18E212178(v25);
      sub_18E2F804C(4.8149e-34);
      *(v24 + 4) = sub_18E1C9624(0xD000000000000011, v12, v26);
      sub_18E1E33B8(&dword_18E1C1000, v27, v28, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  sub_18E243B40();
  sub_18E26C3FC(v11, v29);
  if (!v112)
  {

    sub_18E1E8F44(v111, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_25:
    sub_18E1C9550();
    sub_18E44EFFC();
    sub_18E1D7FD0();
    sub_18E2F7C90();
    sub_18E2288EC();
LABEL_26:
    sub_18E44E99C();
    sub_18E2092F8();
    v42 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v42);
LABEL_27:

    sub_18E2F7E78();
    goto LABEL_28;
  }

  v30 = sub_18E228754();
  if ((sub_18E223994(v30, v31, v32, v33) & 1) == 0)
  {

    goto LABEL_25;
  }

  sub_18E201714();
  while (1)
  {
    sub_18E220EA4();
    if (v40)
    {
      goto LABEL_43;
    }

    sub_18E1E1888();
    if (v34)
    {
      __break(1u);
LABEL_66:

      sub_18E2CF468(v110);
      sub_18E2CF258(v106);

LABEL_73:
      sub_18E220910();
      sub_18E44EFFC();
      sub_18E237298();
      sub_18E235264();
      v97 = sub_18E1CBE3C();
      MEMORY[0x193ACC300](v97);
LABEL_74:

LABEL_28:
      v43 = sub_18E2AE554();
      v44 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v43);
      sub_18E1CFAB8(v44, v45);
LABEL_29:
      sub_18E1E86A4();
      sub_18E1C6650();
      return;
    }

    sub_18E2F88CC();
    v35 = v113;
    sub_18E1E15F4(v111, v112);
    v36 = sub_18E1CD91C();
    v37(v36);
    sub_18E235A6C();
    v40 = v40 && v39 == v12;
    if (v40)
    {
      break;
    }

    sub_18E240E4C(v38);
    sub_18E1E1F80();

    if (v35)
    {
      goto LABEL_31;
    }

    sub_18E1C9934(v111);
    sub_18E23ED54();
  }

LABEL_31:
  v46 = sub_18E2235F8();
  sub_18E1C551C(v46, v47);
  sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  sub_18E2235F8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_43:

    sub_18E2239D8();
    sub_18E1C9550();
    sub_18E44EFFC();
    sub_18E1D7FD0();
    sub_18E2288EC();
    v62 = sub_18E2201C4();
    MEMORY[0x193ACC300](v62);
    goto LABEL_27;
  }

  v48 = sub_18E228754();
  memcpy(v48, v49, 0xD8uLL);
  sub_18E2F8158();
  sub_18E2239D8();
  sub_18E1E7400(v50);
  if (!v108)
  {

    sub_18E2CF468(v110);

    sub_18E1E8F44(v107, &qword_1EABE3B70, &qword_18E4AAB80);
    goto LABEL_46;
  }

  v51 = sub_18E238998();
  if ((sub_18E2281F0(v51, v52, v53, v54) & 1) == 0)
  {

    sub_18E2CF468(v110);

LABEL_46:
    sub_18E1D01D8();
    sub_18E44EFFC();
    sub_18E1DD584();
    sub_18E216910();
    sub_18E237D80(v63, MEMORY[0x1E69E6158], v64, MEMORY[0x1E69E6168]);
    sub_18E2092F8();
    v65 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v65);
LABEL_61:

    sub_18E2F7E4C();
    goto LABEL_28;
  }

  sub_18E2F7E0C();
  while (1)
  {
    sub_18E220EA4();
    if (v40)
    {
      goto LABEL_60;
    }

    sub_18E1E1888();
    if (v34)
    {
      break;
    }

    sub_18E2F8674();
    v55 = v108;
    v56 = v109;
    sub_18E1E15F4(v107, v108);
    v57 = sub_18E22879C();
    v58(v57, v56);
    sub_18E235A6C();
    if (v40 && v60 == v12)
    {

LABEL_48:
      v66 = sub_18E2168F8();
      sub_18E1C551C(v66, v67);
      v68 = sub_18E2168F8();
      if ((sub_18E2F85B4(v68, v69, v70, v71) & 1) == 0)
      {
LABEL_60:

        sub_18E2CF468(v110);

        sub_18E2239D8();
        sub_18E1D01D8();
        sub_18E44EFFC();
        sub_18E1DD584();
        sub_18E216910();
        v86 = sub_18E2201C4();
        MEMORY[0x193ACC300](v86);
        goto LABEL_61;
      }

      v72 = sub_18E238998();
      memcpy(v72, v73, 0xD8uLL);
      sub_18E1E7400(&v102);
      if (v103)
      {
        v74 = sub_18E2F7FC0();
        if (sub_18E223680(v74, v75, v76, v77))
        {

          v79 = v104;
          v78 = v105;
          while (1)
          {
            sub_18E2329E0();
            if (v40)
            {
              goto LABEL_66;
            }

            sub_18E209364();
            if (v34)
            {
              goto LABEL_77;
            }

            sub_18E1E8C38(v100, &v102);
            v80 = v103;
            v81 = sub_18E1E1D24(&v102);
            v82(v81);
            sub_18E201EA0();
            if (v40 && v84 == v78)
            {

LABEL_68:

              v88 = sub_18E2F7ACC();
              sub_18E1C551C(v88, v89);
              v90 = sub_18E2F7ACC();
              if ((sub_18E22086C(v90, v91) & 1) == 0)
              {

                sub_18E2CF468(v110);
                sub_18E2CF258(v106);
                goto LABEL_73;
              }

              sub_18E2F0994();
              sub_18E1C86E0();
              v92 = swift_allocObject();
              sub_18E26566C(v92);
              sub_18E2F0E74();
              sub_18E1C86E0();
              v93 = swift_allocObject();
              v94 = sub_18E1E8338(v93);
              sub_18E2F889C(v94);
              sub_18E2F0B30();
              sub_18E1C86E0();
              v95 = swift_allocObject();
              v96 = sub_18E1E8590(v95);
              sub_18E2F865C(v96);
              sub_18E1E19CC();
              sub_18E2F8244();
              sub_18E44E54C();
              sub_18E1D4C60(v101);
              if (v40)
              {

                sub_18E1E8F44(v101, &qword_1EABE2FE0, &qword_18E49CE00);
              }

              else
              {
                sub_18E44E49C();
                sub_18E2F7AB0();
                sub_18E25E19C();
                v98 = sub_18E1CBE3C();
                v99(v98);
              }

              sub_18E1E1B50();
              sub_18E1E1040();
              goto LABEL_29;
            }

            sub_18E1E1530(v83, a10, v79);
            sub_18E1E1F80();

            if (v80)
            {
              goto LABEL_68;
            }

            sub_18E1C9934(&v102);
            sub_18E2F7D58();
          }
        }

        sub_18E2CF468(v110);
        sub_18E2CF258(v106);
      }

      else
      {

        sub_18E2CF468(v110);
        sub_18E2CF258(v106);

        sub_18E1E8F44(&v102, &qword_1EABE3B70, &qword_18E4AAB80);
      }

      sub_18E220910();
      sub_18E44EFFC();
      sub_18E237298();
      sub_18E235264();
      sub_18E44E99C();
      sub_18E2092F8();
      v87 = sub_18E1E2E14();
      MEMORY[0x193ACC300](v87);
      goto LABEL_74;
    }

    sub_18E240E4C(v59);
    sub_18E1E1F80();

    if (v55)
    {
      goto LABEL_48;
    }

    sub_18E1C9934(v107);
    sub_18E23ED54();
  }

  __break(1u);
LABEL_77:
  __break(1u);
}

void _s12ModelCatalog36TokenInputDenyListWithDefaultsBundleV9resourcesSayAA0B8Resource_pGvg_0()
{
  sub_18E1C575C();
  v3 = sub_18E228964(v1[6]);
  sub_18E221834(v3);
  sub_18E1CF2D8();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v15 = sub_18E1D6328(v7, v8, v9, v10, v11, v12, v13, v14, v67);
  (v2)(v15);
  sub_18E220AAC();
  sub_18E2451D0();
  sub_18E235294(v16);
  if (v17)
  {
    sub_18E1D4370();
    sub_18E2451D0();
    sub_18E216B58(v65);
  }

  sub_18E237A38();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_18E2112EC();
  (v2)(v19);
  v20 = sub_18E1C5820();
  sub_18E1DF2A8(v20, v21, v22, v23, v24);
  v25 = sub_18E2167D8();
  v26(v25);
  v67 = v1[11];
  sub_18E221834(v1 + 7);
  v68 = &v67;
  sub_18E1CF2D8();
  MEMORY[0x1EEE9AC00](v27);
  sub_18E2F7994();
  v29 = sub_18E221D08(v28);
  v5(v29);
  sub_18E1D4294();
  if (v17)
  {
    sub_18E1D4370();
    sub_18E2451D0();
    v69 = v30;
    v70 = v30;
  }

  else
  {
    v69 = v0;
  }

  MEMORY[0x1EEE9AC00](v30);
  v31 = sub_18E2112EC();
  v5(v31);
  v32 = sub_18E1C5820();
  sub_18E1DF2A8(v32, v33, v34, v35, v36);
  v37 = sub_18E2F81B4();
  v38(v37);
  v39 = v1[15];
  sub_18E221834(v1 + 12);
  v68 = &v67;
  sub_18E1CF2D8();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v49 = sub_18E1D4D58(v41, v42, v43, v44, v45, v46, v47, v48, v67);
  (v2)(v49);
  sub_18E234004();
  if (v17)
  {
    sub_18E2F79AC();
    sub_18E2451D0();
    v69 = v66;
    v70 = v66;
  }

  sub_18E2F81DC();
  v51 = MEMORY[0x1EEE9AC00](v50);
  sub_18E1CEAD0(v51, v52, v53, v54, v55, v56, v57, v58, v67);
  sub_18E2F80D4();
  v2();
  v59 = sub_18E247014();
  sub_18E1DF2A8(v59, v60, v61, v39, v62);
  v63 = sub_18E223F60();
  v64(v63, v39);
  sub_18E1C5544();
}

uint64_t sub_18E2DFA04()
{
  sub_18E1E2F2C();
  v5 = v5 && v4 == 0xE200000000000000;
  if (v5 || (sub_18E1E3894(v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = sub_18E1E31A0();
    v9 = v1 == v7 && v0 == v8;
    if (v9 || (sub_18E1CF3DC(v7, v8) & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_18E2200A4();
      v11 = v1 == (v2 | 2) && v10 == v0;
      if (v11 || (sub_18E1CF3DC(v2 + 2, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        sub_18E223BF4();
        if (v5 && v12 == v0)
        {

          return 3;
        }

        else
        {
          sub_18E1CF3DC(0xD000000000000011, v12);
          sub_18E1E6A20();
          if (v1)
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
}

uint64_t sub_18E2DFAF0(uint64_t a1)
{
  v2 = sub_18E2F1040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2DFB2C(uint64_t a1)
{
  v2 = sub_18E2F1040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TokenOutputDenyListWithDefaultsBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E23A9B0(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C8E58();
  sub_18E2706EC(&qword_1EABE23C0, &qword_18E4AAD50);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C61D0();
  sub_18E1C975C();
  v6 = sub_18E2F1040();
  sub_18E1E2974(&type metadata for TokenOutputDenyListWithDefaultsBundle.CodingKeys, v7, v6);
  if (!v1)
  {
    v8 = sub_18E233460();
    sub_18E2706EC(v8, v9);
    sub_18E2F7E84();
    sub_18E1C6B74();
    sub_18E1E1638(v10, v11, &qword_18E4AAD58, v12);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E2F7E40();
    sub_18E1E1F48();
    sub_18E2C73A0();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E2F7E34();
    sub_18E1E3E3C();
    sub_18E1E33AC();
    sub_18E2C9624();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E1E323C();
    sub_18E223BE8();
    sub_18E2C3FB0();
    sub_18E1E2CB0();
    sub_18E44F26C();
    sub_18E2F0994();
    sub_18E1C86E0();
    v13 = swift_allocObject();
    sub_18E1D41CC(v13);
    sub_18E2F0E74();
    sub_18E1C86E0();
    v14 = swift_allocObject();
    sub_18E1E320C(v14);
    sub_18E2F0B30();
    sub_18E1C86E0();
    v15 = swift_allocObject();
    v16 = sub_18E2092EC(v15);
    sub_18E223C30(v16);

    sub_18E201AA0();

    sub_18E44E54C();
    sub_18E1E6510(v24);
    if (v17)
    {
      v18 = sub_18E1CBE2C();
      v19(v18);
      sub_18E1E8F44(v24, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1E3AC0();
    }

    else
    {
      sub_18E44E49C();
      v20 = sub_18E1CBE2C();
      v21(v20);
      sub_18E212008();
      v22 = sub_18E1E63C0();
      v23(v22);

      sub_18E1E7B38();
    }

    sub_18E201A20();
  }

  sub_18E1C9934(v0);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void TokenOutputDenyListWithDefaultsBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  sub_18E2706EC(&qword_1EABE23E0, &qword_18E4AAD60);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E88C0();
  sub_18E1D60D8();
  v2 = sub_18E2F1040();
  sub_18E1E394C(&type metadata for TokenOutputDenyListWithDefaultsBundle.CodingKeys, v3, v2);
  sub_18E221B08();
  TokenOutputDenyListWithDefaultsBundle.id.getter();
  sub_18E1CD638();
  v27[256] = 0;
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE23E8);
  sub_18E1E1104();
  if (v0)
  {

    v6 = sub_18E1E3D10();
    v7(v6);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    v8 = sub_18E2706EC(&qword_1EABE2268, &qword_18E4AAC70);
    if (sub_18E2387D0(&v29, v9, v8, &type metadata for ModelConfigurationReplacementBase))
    {
      sub_18E221668();
      sub_18E2333B0();
      sub_18E2F8034();
      sub_18E2C73F4();
      sub_18E2F79C4();
      sub_18E2CF468(&v28);
      sub_18E2F86A4();
      v15 = sub_18E2706EC(&qword_1EABE23A0, &qword_18E4AAD30);
      if (sub_18E201784(v15, v16, v15, &type metadata for TokenOutputDenyListBase))
      {
        sub_18E220844();
        sub_18E221B14();
        sub_18E2F7E6C();
        sub_18E2C9678();
        sub_18E224C68();
        sub_18E2CF258(v27);
        sub_18E2F8614();
        v19 = sub_18E2706EC(&qword_1EABE22E0, &qword_18E4AACC0);
        if (sub_18E2372B0(v19, v20, v19, &type metadata for EmbeddingDenyListBase))
        {
          sub_18E201EF8();
          sub_18E2232D0(&v25);
          sub_18E2F7DE8();
          sub_18E2C4004();
          sub_18E2F7A24();
          v21 = sub_18E1E6C0C();
          v22(v21);
          sub_18E2CFAE0(&v26);
          goto LABEL_7;
        }

        v23 = sub_18E228994();
        sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v23);
        sub_18E2F7970();
        v12 = v24 + 2;
      }

      else
      {
        v17 = sub_18E228994();
        sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v17);
        sub_18E2F7970();
        v12 = v18 | 4;
      }
    }

    else
    {
      v10 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
      sub_18E2F7970();
    }

    sub_18E2231EC(v11, v12);
    v13 = sub_18E1E6C0C();
    v14(v13);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E0224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_18E1CFF04();
  a27 = v30;
  a28 = v31;
  sub_18E240A94();
  if (*(v32() + 16))
  {
    v33 = sub_18E200E68();
    sub_18E224604(v33);
    sub_18E224080();
    do
    {
      sub_18E241A14(v34, v35, v36, v37);
      sub_18E1E15F4(&a11, a14);
      v38 = sub_18E208028();
      v39(v38);
      sub_18E1C9934(&a11);
      sub_18E1E686C();
      if (v41)
      {
        sub_18E2F7A64(v40 > 1);
      }

      sub_18E1E3050();
    }

    while (!v42);
  }

  v28(v43);
  sub_18E2F8194();
  if (v29)
  {
    v44 = sub_18E200E68();
    sub_18E2F7CE0(v44);
    sub_18E2F7C0C();
    do
    {
      sub_18E232E6C(v45, v46, v47, v48);
      v49 = sub_18E1C8C94(&a11);
      v50(v49);
      sub_18E221954();
      sub_18E1C9934(&a11);
      sub_18E239C74();
      if (v41)
      {
        sub_18E201F38(v51 > 1);
      }

      sub_18E1CA5D4();
    }

    while (!v42);
  }

  v52 = sub_18E1E6BB0();
  sub_18E290008(v52, v53);
  sub_18E1E6A20();

  sub_18E2079F8();
}

uint64_t sub_18E2E04BC()
{
  sub_18E1E2E88();
  sub_18E44F48C();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E2E0554(uint64_t a1, uint64_t a2)
{
  sub_18E1E33FC(a1, a2);
  v2(v4);
  return sub_18E44F4CC();
}

void AssetBackedTokenOutputRetainListBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E207440();
  sub_18E242CF0();
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1CAFF0();
  sub_18E1E7430();
  sub_18E26C3FC(v3, v6);
  v7 = MEMORY[0x1E69E7CA0];
  if (!v38)
  {

    sub_18E1E8F44(v37, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1E1700();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    v37[0] = v1;
    v37[1] = v23;
    goto LABEL_25;
  }

  sub_18E221B44();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F8854();
  v8 = sub_18E1E1B1C();
  if (sub_18E32F0AC(v8, v9))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v10 = sub_18E44E83C();
    sub_18E1C95EC(v10, qword_1EAC7F560);
    sub_18E2F7964();

    v11 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E216B90();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v12 = sub_18E2246EC();
      sub_18E2F7FA0(v12);
      sub_18E2F8164(4.8149e-34);
      *(v7 + 4) = sub_18E1C9624(v1, v7, v13);
      sub_18E1E2274(&dword_18E1C1000, v14, v15, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E242CF0();
    sub_18E2F883C(v16);
    if (!v38)
    {

      sub_18E1E8F44(v37, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    sub_18E221B44();
    if ((sub_18E2F7C18() & 1) == 0)
    {
      break;
    }

    sub_18E23335C();
    while (1)
    {
      if (v0 == v2)
      {

        sub_18E243B08();
        goto LABEL_35;
      }

      sub_18E2F7F48();
      if (v17)
      {
        break;
      }

      sub_18E2F886C();
      v18 = v38;
      sub_18E1C8570(v37, v38);
      v19(v18);
      sub_18E223708();
      v22 = v22 && v21 == v3;
      if (v22)
      {

LABEL_30:

        v28 = sub_18E221F94();
        sub_18E1C551C(v28, v29);
        v30 = sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
        sub_18E232FD8(v37, v31, v30);
        sub_18E243B08();
        if (v32)
        {

          sub_18E2F10FC();
          sub_18E1C86E0();
          v33 = swift_allocObject();
          sub_18E2F79E4(v33);
          sub_18E2F880C();
          sub_18E1E32E4();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v2);
          if (v22)
          {
            sub_18E1E8F44(v2, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E25E19C();
            v35 = sub_18E1E2088();
            v36(v35);
          }

          sub_18E2F8544();
          goto LABEL_27;
        }

LABEL_35:
        sub_18E1E1700();
        sub_18E44EFFC();
        sub_18E2F7AD8();
        sub_18E2F7CC8();
        v34 = sub_18E1E2000();
        MEMORY[0x193ACC300](v34);
        goto LABEL_26;
      }

      sub_18E1E7B78(v20);
      sub_18E1E2238();

      if (v18)
      {
        goto LABEL_30;
      }

      sub_18E2F7B58();
    }

    __break(1u);
LABEL_38:
    sub_18E1C7804(&qword_1EABE0CF8);
  }

LABEL_24:
  sub_18E1E1700();
  sub_18E44EFFC();
  sub_18E2F7AD8();
  sub_18E2F7CC8();
LABEL_25:
  sub_18E44E99C();
  sub_18E22449C();

  v24 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v24);
LABEL_26:

  v25 = sub_18E2AE554();
  v26 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v25);
  sub_18E1D7E28(v26, v27);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2E0AE8(uint64_t (*a1)(void))
{
  v2 = a1();
  sub_18E1DF33C(v2);
  sub_18E1C5D78();

  return v1;
}

uint64_t sub_18E2E0B20(uint64_t a1)
{
  v2 = sub_18E2F1150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E0B5C(uint64_t a1)
{
  v2 = sub_18E2F1150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedTokenOutputRetainListBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C57AC();
  v6 = sub_18E2706EC(&qword_1EABE23F0, &qword_18E4AAD68);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C61D0();
  sub_18E1D5C08(v2);
  v8 = sub_18E2F1150();
  sub_18E221EAC(&type metadata for AssetBackedTokenOutputRetainListBundle.CodingKeys, v9, v8);
  if (v0)
  {
    v19 = v2;
  }

  else
  {
    v10 = sub_18E1E63B4();
    sub_18E2706EC(v10, v11);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v12, v13, &qword_18E4AAD70, v14);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    v15 = sub_18E2C9E70();
    sub_18E1CE9EC(v15, v16, v17, v18, v15);
    sub_18E2F10FC();
    sub_18E1C86E0();
    v20 = swift_allocObject();
    v21 = sub_18E1E232C(v20);
    memcpy(v21, v22, 0xD8uLL);

    sub_18E232CB0();

    v23 = sub_18E44E54C();
    v24 = sub_18E1E3A14(v23);
    if (v25)
    {
      sub_18E1E8F44(v6, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60(v24);
      sub_18E234628();
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v19 = v1;
  }

  sub_18E1C9934(v19);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void AssetBackedTokenOutputRetainListBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E37D0();
  sub_18E2706EC(&qword_1EABE2410, &qword_18E4AAD78);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E2C60();
  sub_18E1D60D8();
  v2 = sub_18E2F1150();
  sub_18E1E3288(&type metadata for AssetBackedTokenOutputRetainListBundle.CodingKeys, v3, v2);
  sub_18E237074();
  AssetBackedTokenOutputRetainListBundle.id.getter();
  sub_18E1CFA14();
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE2418);
  sub_18E1E1200();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  v6 = sub_18E2706EC(&qword_1EABE2420, &qword_18E4AAD80);
  if (!sub_18E224D34(v6, v7, v6, &type metadata for AssetBackedTokenOutputRetainListBase))
  {
    v10 = sub_18E1E8AE8();
    sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
    sub_18E1E19F0(v11, 63);
LABEL_5:
    v12 = sub_18E1E67D0();
    v13(v12);
    goto LABEL_6;
  }

  sub_18E200510();
  sub_18E1E3E68();
  sub_18E233478();
  sub_18E2C9EC4();
  sub_18E22452C();
  sub_18E44F35C();
  v8 = sub_18E1DD364();
  v9(v8);
  sub_18E2CF1F8(&v14);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E0FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_18E1CFF04();
  a27 = v29;
  a28 = v30;
  sub_18E240A94();
  v32 = v31();
  v33 = sub_18E1DF33C(v32);

  if (*(v33 + 16))
  {
    v34 = sub_18E200E68();
    sub_18E224604(v34);
    sub_18E224080();
    do
    {
      sub_18E241A14(v35, v36, v37, v38);
      sub_18E1E15F4(&a11, a14);
      v39 = sub_18E208028();
      v40(v39);
      sub_18E1C9934(&a11);
      sub_18E1E686C();
      if (v42)
      {
        sub_18E2F7A64(v41 > 1);
      }

      sub_18E1E3050();
    }

    while (!v43);
  }

  v45 = (v28)(v44);
  sub_18E1DF33C(v45);
  sub_18E233F98();
  if (*(v28 + 16))
  {
    v46 = sub_18E200E68();
    sub_18E2F7CE0(v46);
    sub_18E2F7C0C();
    do
    {
      sub_18E232E6C(v47, v48, v49, v50);
      v51 = sub_18E1C8C94(&a11);
      v52(v51);
      sub_18E221954();
      sub_18E1C9934(&a11);
      sub_18E239C74();
      if (v42)
      {
        sub_18E201F38(v53 > 1);
      }

      sub_18E1CA5D4();
    }

    while (!v43);
  }

  v54 = sub_18E1E6BB0();
  sub_18E290008(v54, v55);
  sub_18E1E6A20();

  sub_18E2079F8();
}

void sub_18E2E1338()
{
  sub_18E1C575C();
  sub_18E223ED8(v4, v5);
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_18E1E1FD8();
  sub_18E1C4EAC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  v11 = *(v0 + 40);
  sub_18E1C5040((v3 + 16), v11);
  v12(v11);
  sub_18E235A6C();
  v14 = v14 && v13 == 0xE700000000000000;
  if (v14)
  {

    goto LABEL_10;
  }

  sub_18E1D5EF4();
  sub_18E223B20(v15, v16, v17);
  sub_18E1E2238();

  if (v1)
  {
LABEL_10:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v18 = *(v3 + 40);
  sub_18E1C5040((v3 + 16), v18);
  v19(v18);
  sub_18E1D0274();
  sub_18E2F8058();
  sub_18E1E2414(28, v20, v21);

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E223F94();
  if (v22)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v18 = v44;
  }

  sub_18E1CA184();
  sub_18E1EA5D4();
  v23();
LABEL_11:
  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v18 + 16))
  {
    sub_18E2F87C4();
    sub_18E2F87AC();
    if (v7)
    {

      __break(1u);
      return;
    }

    sub_18E2F8794();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v24)
  {
    v25 = sub_18E1CF4F4();
    v26(v25);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v27 = sub_18E44E83C();
    sub_18E1C95EC(v27, qword_1ED6A9858);
    v28 = sub_18E216A78();
    (v2)(v28);
    v29 = sub_18E44E80C();
    v30 = sub_18E44EE0C();
    if (sub_18E2333E4(v30))
    {
      sub_18E2342D4();
      v31 = sub_18E220C80();
      sub_18E2F7F74(v31);
      sub_18E2217B8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v32 = sub_18E44F39C();
      sub_18E2F86EC(v32, v33);
      sub_18E233674();
      sub_18E243EAC();
      v34 = sub_18E209370();
      v35(v34);
      v36 = sub_18E1C5BFC();
      sub_18E1C9624(v36, v37, v38);
      sub_18E233674();
      *(v2 + 14) = v9;
      sub_18E1D81D8(&dword_18E1C1000, v39, v40, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E232B30();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v41 = sub_18E209370();
      v42(v41);
    }

    sub_18E2F877C();
    v43 = sub_18E1E3DF8();
    v9(v43);
  }

  sub_18E202D00();
  sub_18E1C5544();
}

void TokenOutputRetainListBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E202C9C();
  sub_18E242CF0();
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v5);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E221F50();
  sub_18E1E7430();
  sub_18E26C3FC(v3, v7);
  if (!v49[3])
  {

    sub_18E1E8F44(v49, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1D442C();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    v49[0] = v1;
    v49[1] = v34;
    goto LABEL_25;
  }

  if ((sub_18E1CC2D0(v8, v9, v10, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F8854();
  v11 = sub_18E1E1B1C();
  if (sub_18E32F0AC(v11, v12))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v13 = sub_18E44E83C();
    sub_18E1C95EC(v13, qword_1EAC7F560);
    sub_18E2F7964();

    v14 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E216B90();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v15 = sub_18E2246EC();
      sub_18E2F7F80(v15);
      sub_18E2F8170(4.8149e-34);
      *(v2 + 4) = sub_18E1C9624(v1, v2, v16);
      sub_18E1E2274(&dword_18E1C1000, v17, v18, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E242CF0();
    sub_18E2F883C(v19);
    sub_18E2F7FCC();
    if (!v23)
    {

      sub_18E1E8F44(v49, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    if ((sub_18E1CC2D0(v20, v21, v22, MEMORY[0x1E69E6158]) & 1) == 0)
    {
      break;
    }

    sub_18E1E6B38();
    while (1)
    {
      if (v4 == v0)
      {

        sub_18E243B08();
        goto LABEL_35;
      }

      sub_18E1E6934();
      if (v24)
      {
        break;
      }

      sub_18E2F8764();
      v25 = v49[3];
      v26 = v49[4];
      sub_18E1E15F4(v49, v49[3]);
      v27 = sub_18E216870();
      v28(v27, v26);
      sub_18E223708();
      v31 = v31 && v30 == v3;
      if (v31)
      {

LABEL_30:

        v39 = sub_18E2407DC();
        sub_18E1C551C(v39, v40);
        v41 = sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
        sub_18E232FD8(v49, v42, v41);
        sub_18E243B08();
        if (v43)
        {

          sub_18E2F120C();
          sub_18E1C86E0();
          v44 = swift_allocObject();
          v45 = sub_18E2F79A0(v44);
          memcpy(v45, v49, 0xD8uLL);

          sub_18E1E32E4();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v4);
          if (v31)
          {
            sub_18E1E8F44(v4, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E25E19C();
            v47 = sub_18E1E2088();
            v48(v47);
          }

          sub_18E2F83C4();
          goto LABEL_27;
        }

LABEL_35:
        sub_18E1D442C();
        sub_18E44EFFC();
        sub_18E1E3D78();
        sub_18E2F7CB0();
        v46 = sub_18E1E2000();
        MEMORY[0x193ACC300](v46);
        goto LABEL_26;
      }

      sub_18E1E7B78(v29);
      sub_18E1E2238();

      if (v25)
      {
        goto LABEL_30;
      }

      sub_18E1E1BB8();
    }

    __break(1u);
LABEL_38:
    sub_18E1C7804(&qword_1EABE0CF8);
  }

LABEL_24:
  sub_18E1D442C();
  sub_18E44EFFC();
  sub_18E1E3D78();
  sub_18E2F7CB0();
LABEL_25:
  sub_18E2F874C(v32, MEMORY[0x1E69E6158], v33, MEMORY[0x1E69E6168]);
  sub_18E22449C();

  v35 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v35);
LABEL_26:

  v36 = sub_18E2AE554();
  v37 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v36);
  sub_18E1D7E28(v37, v38);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2E1B58()
{
  sub_18E1E2F2C();
  v4 = v4 && v3 == 0xE200000000000000;
  if (v4 || (sub_18E1E3894(v2) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0xD000000000000015 && 0x800000018E458FF0 == v0)
  {

    return 1;
  }

  else
  {
    sub_18E1CF3DC(0xD000000000000015, 0x800000018E458FF0);
    sub_18E1E6A20();
    sub_18E232B64();
    if (v4)
    {
      return v7 + 1;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t sub_18E2E1BE8(uint64_t a1)
{
  v2 = sub_18E2F1260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E1C24(uint64_t a1)
{
  v2 = sub_18E2F1260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TokenOutputRetainListBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C57AC();
  v6 = sub_18E2706EC(&qword_1EABE2430, &qword_18E4AAD88);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C61D0();
  sub_18E1D5C08(v2);
  v8 = sub_18E2F1260();
  sub_18E221EAC(&type metadata for TokenOutputRetainListBundle.CodingKeys, v9, v8);
  if (v0)
  {
    v19 = v2;
  }

  else
  {
    v10 = sub_18E1E63B4();
    sub_18E2706EC(v10, v11);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v12, v13, &qword_18E4AAD90, v14);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    v15 = sub_18E2C9A4C();
    sub_18E1CE9EC(v15, v16, v17, v18, v15);
    sub_18E2F120C();
    sub_18E1C86E0();
    v20 = swift_allocObject();
    v21 = sub_18E1E232C(v20);
    memcpy(v21, v22, 0xD8uLL);

    sub_18E232CB0();

    v23 = sub_18E44E54C();
    v24 = sub_18E1E3A14(v23);
    if (v25)
    {
      sub_18E1E8F44(v6, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60(v24);
      sub_18E234628();
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v19 = v1;
  }

  sub_18E1C9934(v19);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void TokenOutputRetainListBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E37D0();
  sub_18E2706EC(&qword_1EABE2450, &qword_18E4AAD98);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E2C60();
  sub_18E1D60D8();
  v2 = sub_18E2F1260();
  sub_18E1E3288(&type metadata for TokenOutputRetainListBundle.CodingKeys, v3, v2);
  sub_18E237074();
  TokenOutputRetainListBundle.id.getter();
  sub_18E1CFA14();
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE2458);
  sub_18E1E1200();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  v6 = sub_18E2706EC(&qword_1EABE2460, &qword_18E4AADA0);
  if (!sub_18E224D34(v6, v7, v6, &type metadata for TokenOutputRetainListBase))
  {
    v10 = sub_18E1E8AE8();
    sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
    sub_18E1E19F0(v11, 63);
LABEL_5:
    v12 = sub_18E1E67D0();
    v13(v12);
    goto LABEL_6;
  }

  sub_18E200510();
  sub_18E1E3E68();
  sub_18E233478();
  sub_18E2C9AA0();
  sub_18E22452C();
  sub_18E44F35C();
  v8 = sub_18E1DD364();
  v9(v8);
  sub_18E2CF228(&v14);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E2090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_18E1CFF04();
  a27 = v30;
  a28 = v31;
  sub_18E240A94();
  if (*(v32() + 16))
  {
    v33 = sub_18E200E68();
    sub_18E224604(v33);
    sub_18E224080();
    do
    {
      sub_18E241A14(v34, v35, v36, v37);
      sub_18E1E15F4(&a11, a14);
      v38 = sub_18E208028();
      v39(v38);
      sub_18E1C9934(&a11);
      sub_18E1E686C();
      if (v41)
      {
        sub_18E2F7A64(v40 > 1);
      }

      sub_18E1E3050();
    }

    while (!v42);
  }

  v28(v43);
  sub_18E2F8194();
  if (v29)
  {
    v44 = sub_18E200E68();
    sub_18E2F7CE0(v44);
    sub_18E2F7C0C();
    do
    {
      sub_18E232E6C(v45, v46, v47, v48);
      v49 = sub_18E1C8C94(&a11);
      v50(v49);
      sub_18E221954();
      sub_18E1C9934(&a11);
      sub_18E239C74();
      if (v41)
      {
        sub_18E201F38(v51 > 1);
      }

      sub_18E1CA5D4();
    }

    while (!v42);
  }

  v52 = sub_18E1E6BB0();
  sub_18E290008(v52, v53);
  sub_18E1E6A20();

  sub_18E2079F8();
}

void AssetBackedSecureAnalyticsBundle.init(with:resources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  sub_18E207440();
  v15 = v14;
  v16 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v16);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1C8E58();
  sub_18E1E7430();
  sub_18E26C3FC(v13, v18);
  v22 = MEMORY[0x1E69E7CA0];
  if (!v61)
  {

    sub_18E1E8F44(v60, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1E1700();
    sub_18E44EFFC();

    sub_18E1C8E68();
    v60[0] = v41;
    v60[1] = v40;
    goto LABEL_25;
  }

  if ((sub_18E2F7A44(v19, v20, v21, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F88E4();
  v23 = sub_18E1E3DF8();
  if (sub_18E32F0AC(v23, v24))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v25 = sub_18E44E83C();
    sub_18E1C95EC(v25, qword_1EAC7F560);
    sub_18E1E673C();

    v26 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E2F8704();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      a10 = v11;
      v56 = v12;
      v27 = sub_18E2246EC();
      sub_18E2F7FA0(v27);
      sub_18E2F8164(4.8149e-34);
      *(v12 + 4) = sub_18E1C9624(v22, v11, v28);
      sub_18E1E2274(&dword_18E1C1000, v29, v30, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E1CC4E4();
    sub_18E23552C();
    sub_18E26C3FC(v13, v31);
    if (!v61)
    {

      sub_18E1E8F44(v60, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    if ((sub_18E2F7A44(v32, v33, v34, MEMORY[0x1E69E6158]) & 1) == 0)
    {
      break;
    }

    sub_18E2F8524();
    sub_18E23335C();
    while (1)
    {
      if (v10 == v15)
      {

        goto LABEL_34;
      }

      sub_18E2F7F48();
      if (v35)
      {
        break;
      }

      sub_18E2F886C();
      v11 = v61;
      sub_18E1C8570(v60, v61);
      v36(v11);
      sub_18E223708();
      v39 = v39 && v38 == v13;
      if (v39)
      {

LABEL_30:

        v46 = sub_18E221F94();
        sub_18E1C551C(v46, v47);
        v48 = sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
        if (sub_18E232FD8(v60, v49, v48))
        {

          v58 = &type metadata for AssetBackedSecureAnalyticsBase;
          v59 = sub_18E220354();
          sub_18E1C86E0();
          v50 = swift_allocObject();
          sub_18E2F79E4(v50);
          v51 = a10;

          sub_18E1E2F3C();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v56);
          if (v39)
          {
            sub_18E1E8F44(v56, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E221D40();
            sub_18E25E19C();
            v53 = sub_18E1D4B44();
            v54(v53);

            v51 = v56;
          }

          *v55 = v22;
          v55[1] = v51;
          sub_18E1C551C(&v57, (v55 + 2));
          goto LABEL_27;
        }

LABEL_34:

        sub_18E1E1700();
        sub_18E44EFFC();
        sub_18E2F7AD8();
        sub_18E1E844C();
        sub_18E2F7CC8();
        v52 = sub_18E1E2000();
        MEMORY[0x193ACC300](v52);
        goto LABEL_26;
      }

      sub_18E1E7B78(v37);
      sub_18E1E2238();

      if (v11)
      {
        goto LABEL_30;
      }

      sub_18E2F7B58();
    }

    __break(1u);
LABEL_37:
    sub_18E1C7804(&qword_1EABE0CF8);
  }

LABEL_24:
  sub_18E1E1700();
  sub_18E44EFFC();
  sub_18E2F7AD8();
  sub_18E1E844C();
  sub_18E2F7CC8();
LABEL_25:
  sub_18E44E99C();
  sub_18E22449C();

  v42 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v42);
LABEL_26:

  v43 = sub_18E2AE554();
  v44 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v43);
  sub_18E1D7E28(v44, v45);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2E288C(uint64_t a1)
{
  v2 = sub_18E2F131C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E28C8(uint64_t a1)
{
  v2 = sub_18E2F131C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedSecureAnalyticsBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C57AC();
  v6 = sub_18E2706EC(&qword_1EABE2468, &qword_18E4AADA8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C61D0();
  sub_18E1D5C08(v2);
  v8 = sub_18E2F131C();
  sub_18E221EAC(&type metadata for AssetBackedSecureAnalyticsBundle.CodingKeys, v9, v8);
  if (v0)
  {
    v19 = v2;
  }

  else
  {
    v10 = sub_18E1E63B4();
    sub_18E2706EC(v10, v11);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v12, v13, &qword_18E4AADB0, v14);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    v15 = sub_18E2C907C();
    sub_18E1CE9EC(v15, v16, v17, v18, v15);
    sub_18E220354();
    sub_18E1C86E0();
    v20 = swift_allocObject();
    v21 = sub_18E1E232C(v20);
    memcpy(v21, v22, 0xD8uLL);

    sub_18E232CB0();

    v23 = sub_18E44E54C();
    v24 = sub_18E1E3A14(v23);
    if (v25)
    {
      sub_18E1E8F44(v6, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60(v24);
      sub_18E234628();
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v19 = v1;
  }

  sub_18E1C9934(v19);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void AssetBackedSecureAnalyticsBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E37D0();
  sub_18E2706EC(&qword_1EABE2488, &qword_18E4AADB8);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E2C60();
  sub_18E1D60D8();
  v2 = sub_18E2F131C();
  sub_18E1E3288(&type metadata for AssetBackedSecureAnalyticsBundle.CodingKeys, v3, v2);
  sub_18E237074();
  AssetBackedSecureAnalyticsBundle.id.getter();
  sub_18E1CFA14();
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE2490);
  sub_18E1E1200();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  v6 = sub_18E2706EC(&qword_1EABE2498, &qword_18E4AADC0);
  if (!sub_18E224D34(v6, v7, v6, &type metadata for AssetBackedSecureAnalyticsBase))
  {
    v10 = sub_18E1E8AE8();
    sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
    sub_18E1E19F0(v11, 45);
LABEL_5:
    v12 = sub_18E1E67D0();
    v13(v12);
    goto LABEL_6;
  }

  sub_18E200510();
  sub_18E1E3E68();
  sub_18E233478();
  sub_18E2C90D0();
  sub_18E22452C();
  sub_18E44F35C();
  v8 = sub_18E1DD364();
  v9(v8);
  sub_18E2CF2B8(&v14);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E2E28()
{
  sub_18E1C575C();
  sub_18E223ED8(v4, v5);
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_18E1E1FD8();
  sub_18E1C4EAC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  v11 = *(v0 + 40);
  sub_18E1C5040((v3 + 16), v11);
  v12(v11);
  sub_18E235A6C();
  v14 = v14 && v13 == 0xE700000000000000;
  if (v14)
  {

    goto LABEL_10;
  }

  sub_18E1D5EF4();
  sub_18E223B20(v15, v16, v17);
  sub_18E1E2238();

  if (v1)
  {
LABEL_10:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v18 = *(v3 + 40);
  sub_18E1C5040((v3 + 16), v18);
  v19(v18);
  sub_18E1D0274();
  sub_18E2F8058();
  sub_18E216A24(v20, v21, v22);

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E223F94();
  if (v23)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v18 = v45;
  }

  sub_18E1CA184();
  sub_18E1EA5D4();
  v24();
LABEL_11:
  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v18 + 16))
  {
    sub_18E2F87C4();
    sub_18E2F87AC();
    if (v7)
    {

      __break(1u);
      return;
    }

    sub_18E2F8794();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v25)
  {
    v26 = sub_18E1CF4F4();
    v27(v26);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v28 = sub_18E44E83C();
    sub_18E1C95EC(v28, qword_1ED6A9858);
    v29 = sub_18E216A78();
    (v2)(v29);
    v30 = sub_18E44E80C();
    v31 = sub_18E44EE0C();
    if (sub_18E2333E4(v31))
    {
      sub_18E2342D4();
      v32 = sub_18E220C80();
      sub_18E2F7F74(v32);
      sub_18E2217B8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v33 = sub_18E44F39C();
      sub_18E2F86EC(v33, v34);
      sub_18E233674();
      sub_18E243EAC();
      v35 = sub_18E209370();
      v36(v35);
      v37 = sub_18E1C5BFC();
      sub_18E1C9624(v37, v38, v39);
      sub_18E233674();
      *(v2 + 14) = v9;
      sub_18E1D81D8(&dword_18E1C1000, v40, v41, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E232B30();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v42 = sub_18E209370();
      v43(v42);
    }

    sub_18E2F877C();
    v44 = sub_18E1E3DF8();
    v9(v44);
  }

  sub_18E202D00();
  sub_18E1C5544();
}

void SecureAnalyticsBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E202C9C();
  v5 = v4;
  v6 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v6);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C8E58();
  sub_18E1E7430();
  sub_18E26C3FC(v3, v8);
  if (!v57[3])
  {

    sub_18E1E8F44(v57, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1D442C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    v57[0] = v36;
    v57[1] = v35;
    goto LABEL_25;
  }

  if ((sub_18E1CC2D0(v9, v10, v11, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F88E4();
  v12 = sub_18E1E3DF8();
  if (sub_18E32F0AC(v12, v13))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v14 = sub_18E44E83C();
    sub_18E1C95EC(v14, qword_1EAC7F560);
    sub_18E1E673C();

    v15 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E2F8704();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v52 = v2;
      v16 = sub_18E2246EC();
      sub_18E2F7F80(v16);
      sub_18E2F8170(4.8149e-34);
      *(v2 + 4) = sub_18E1C9624(v1, v53, v17);
      sub_18E1E2274(&dword_18E1C1000, v18, v19, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E1CC4E4();
    sub_18E23552C();
    sub_18E26C3FC(v3, v20);
    sub_18E2F7FCC();
    if (!v24)
    {

      sub_18E1E8F44(v57, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    if ((sub_18E1CC2D0(v21, v22, v23, MEMORY[0x1E69E6158]) & 1) == 0)
    {
      break;
    }

    sub_18E2F84C4();
    sub_18E1E6B38();
    while (1)
    {
      if (v5 == v0)
      {

        goto LABEL_34;
      }

      sub_18E1E6934();
      if (v25)
      {
        break;
      }

      sub_18E2F8764();
      v26 = v57[3];
      v27 = v57[4];
      sub_18E1E15F4(v57, v57[3]);
      v28 = sub_18E216870();
      v29(v28, v27);
      sub_18E223708();
      v32 = v32 && v31 == v3;
      if (v32)
      {

LABEL_30:

        v41 = sub_18E2407DC();
        sub_18E1C551C(v41, v42);
        v43 = sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
        if (sub_18E232FD8(v57, v44, v43))
        {

          v55 = &type metadata for SecureAnalyticsBase;
          v56 = sub_18E2F13D8();
          sub_18E1C86E0();
          v45 = swift_allocObject();
          v46 = sub_18E2F79A0(v45);
          memcpy(v46, v57, 0xD8uLL);
          v47 = v53;

          sub_18E1E2F3C();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v52);
          if (v32)
          {
            sub_18E1E8F44(v52, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E221D40();
            sub_18E25E19C();
            v49 = sub_18E1D4B44();
            v50(v49);

            v47 = v52;
          }

          *v51 = v1;
          v51[1] = v47;
          sub_18E1C551C(&v54, (v51 + 2));
          goto LABEL_27;
        }

LABEL_34:

        sub_18E1D442C();
        sub_18E44EFFC();
        sub_18E1E3D78();
        sub_18E1E844C();
        sub_18E2F7CB0();
        v48 = sub_18E1E2000();
        MEMORY[0x193ACC300](v48);
        goto LABEL_26;
      }

      sub_18E1E7B78(v30);
      sub_18E1E2238();

      if (v26)
      {
        goto LABEL_30;
      }

      sub_18E1E1BB8();
    }

    __break(1u);
LABEL_37:
    sub_18E1C7804(&qword_1EABE0CF8);
  }

LABEL_24:
  sub_18E1D442C();
  sub_18E44EFFC();
  sub_18E1E3D78();
  sub_18E1E844C();
  sub_18E2F7CB0();
LABEL_25:
  sub_18E2F874C(v33, MEMORY[0x1E69E6158], v34, MEMORY[0x1E69E6168]);
  sub_18E22449C();

  v37 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v37);
LABEL_26:

  v38 = sub_18E2AE554();
  v39 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v38);
  sub_18E1D7E28(v39, v40);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2E361C()
{
  sub_18E1E2F2C();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (sub_18E1E3894(v1) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = sub_18E221B94();
    if (v3 && v0 == v6)
    {

      return 1;
    }

    else
    {
      sub_18E1CF3DC(v5, 0xE90000000000006CLL);
      sub_18E1E6A20();
      sub_18E232B64();
      if (v3)
      {
        return v8 + 1;
      }

      else
      {
        return v8;
      }
    }
  }
}

uint64_t sub_18E2E369C(uint64_t a1)
{
  v2 = sub_18E2F142C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E36D8(uint64_t a1)
{
  v2 = sub_18E2F142C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SecureAnalyticsBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C57AC();
  v6 = sub_18E2706EC(&qword_1EABE24A0, &qword_18E4AADC8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C61D0();
  sub_18E1D5C08(v2);
  v8 = sub_18E2F142C();
  sub_18E221EAC(&type metadata for SecureAnalyticsBundle.CodingKeys, v9, v8);
  if (v0)
  {
    v19 = v2;
  }

  else
  {
    v10 = sub_18E1E63B4();
    sub_18E2706EC(v10, v11);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v12, v13, &qword_18E4AADD0, v14);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    v15 = sub_18E2C8D2C();
    sub_18E1CE9EC(v15, v16, v17, v18, v15);
    sub_18E2F13D8();
    sub_18E1C86E0();
    v20 = swift_allocObject();
    v21 = sub_18E1E232C(v20);
    memcpy(v21, v22, 0xD8uLL);

    sub_18E232CB0();

    v23 = sub_18E44E54C();
    v24 = sub_18E1E3A14(v23);
    if (v25)
    {
      sub_18E1E8F44(v6, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60(v24);
      sub_18E234628();
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v19 = v1;
  }

  sub_18E1C9934(v19);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void SecureAnalyticsBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E37D0();
  sub_18E2706EC(&qword_1EABE24C0, &qword_18E4AADD8);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E2C60();
  sub_18E1D60D8();
  v2 = sub_18E2F142C();
  sub_18E1E3288(&type metadata for SecureAnalyticsBundle.CodingKeys, v3, v2);
  sub_18E237074();
  SecureAnalyticsBundle.id.getter();
  sub_18E1CFA14();
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE24C8);
  sub_18E1E1200();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  v6 = sub_18E2706EC(&qword_1EABE24D0, &unk_18E4AADE0);
  if (!sub_18E224D34(v6, v7, v6, &type metadata for SecureAnalyticsBase))
  {
    v10 = sub_18E1E8AE8();
    sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
    sub_18E1E19F0(v11, 45);
LABEL_5:
    v12 = sub_18E1E67D0();
    v13(v12);
    goto LABEL_6;
  }

  sub_18E200510();
  sub_18E1E3E68();
  sub_18E233478();
  sub_18E2C8D80();
  sub_18E22452C();
  sub_18E44F35C();
  v8 = sub_18E1DD364();
  v9(v8);
  sub_18E2CF2E8(&v14);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedLLMBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v7);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E221F50();
  sub_18E1E7430();
  sub_18E26C3FC(v4, v9);
  if (!*&v153[24])
  {

    sub_18E1E8F44(v153, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_22:
    sub_18E2F7A9C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    goto LABEL_26;
  }

  if ((sub_18E22169C(v152, v153, v10, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_22;
  }

  v11 = v152[0];
  v12 = v152[1];
  type metadata accessor for Utils();
  v130 = v11;
  v13 = sub_18E1E1B1C();
  if ((sub_18E32F0AC(v13, v14) & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
      sub_18E1C7804(&qword_1EABE0CF8);
    }

    v15 = sub_18E44E83C();
    sub_18E1C95EC(v15, qword_1EAC7F560);
    sub_18E2F7964();

    v16 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E216B90();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      *v153 = sub_18E223E58();
      *v6 = 136315138;
      *(v6 + 4) = sub_18E1C9624(v11, v12, v153);
      sub_18E1D5F48(&dword_18E1C1000, v17, v18, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221F60();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E238D04();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  sub_18E1D49B0();
  sub_18E2F7D70();
  sub_18E26C3FC(v4, v19);
  if (!*&v153[24])
  {

    sub_18E1E8F44(v153, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_25:
    sub_18E2F7A9C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    v32 = v33 + 24;
LABEL_26:
    *v153 = v32;
    *&v153[8] = v31;
    sub_18E44E99C();
    sub_18E22449C();

    v34 = sub_18E1CFFC0();
    MEMORY[0x193ACC300](v34);
LABEL_27:

    goto LABEL_28;
  }

  if ((sub_18E22169C(v152, v153, v20, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_25;
  }

  v129 = v12;
  v127 = v6;
  v21 = v152[1];
  v22 = v2 + 32;
  v128 = v2 + 32;
  while (1)
  {
    sub_18E220D08();
    if (v27)
    {
      goto LABEL_44;
    }

    sub_18E2F7B78();
    if (v23)
    {
      __break(1u);
LABEL_67:

      sub_18E1E01D0(v147);
LABEL_73:
      memcpy(v148, v147, sizeof(v148));
LABEL_74:
      sub_18E1C5B68();
      sub_18E26C3FC(v4, v146);
      if (*&v146[24])
      {
        if (sub_18E23D5A4(v147, v146, v67, MEMORY[0x1E69E6158]))
        {
          v68 = *&v147[8];
          while (1)
          {
            sub_18E220D08();
            if (v27)
            {

              sub_18E1E01D0(v146);
              goto LABEL_93;
            }

            sub_18E2F7B78();
            if (v23)
            {
              goto LABEL_177;
            }

            sub_18E1E8C38(v128, v136);
            v69 = *&v136[24];
            sub_18E1C8570(v136, *&v136[24]);
            v70(v69);
            sub_18E223708();
            if (v27 && v72 == v68)
            {
              break;
            }

            sub_18E1E1574(v71);
            sub_18E1CF9C4();

            if (v69)
            {
              goto LABEL_89;
            }

            sub_18E1E3BE0(v136);
          }

LABEL_89:

          sub_18E1C551C(v136, v143);
          if (sub_18E2245EC(v145, v143, v74, &type metadata for AssetBackedLLMDraftModelBase))
          {
            sub_18E220B7C(v144);
            nullsub_1();
            sub_18E2235E0(v147);
          }

          else
          {
            sub_18E1E01D0(v147);
          }

          memcpy(v146, v147, sizeof(v146));
LABEL_93:
          sub_18E2F87DC(v147);
LABEL_94:
          sub_18E2329A4();
          sub_18E26C3FC(v4, v145);
          if (*&v145[24])
          {
            if (sub_18E23D5A4(v146, v145, v75, MEMORY[0x1E69E6158]))
            {
              v76 = *&v146[8];
              while (1)
              {
                sub_18E220D08();
                if (v27)
                {

                  sub_18E1E01D0(v145);
                  goto LABEL_113;
                }

                sub_18E2F7B78();
                if (v23)
                {
                  goto LABEL_178;
                }

                sub_18E1E8C38(v128, v135);
                v77 = *&v135[24];
                sub_18E1C8570(v135, *&v135[24]);
                v78(v77);
                sub_18E223708();
                if (v27 && v80 == v76)
                {
                  break;
                }

                sub_18E1E1574(v79);
                sub_18E1CF9C4();

                if (v77)
                {
                  goto LABEL_109;
                }

                sub_18E1E3BE0(v135);
              }

LABEL_109:

              sub_18E1C551C(v135, v136);
              if (sub_18E2245EC(v144, v136, v82, &type metadata for AssetBackedImageTokenizerBase))
              {
                sub_18E2235E0(v143);
                nullsub_1();
                sub_18E2F87F4(v146);
              }

              else
              {
                sub_18E1E01D0(v146);
              }

              sub_18E2F87DC(v145);
LABEL_113:
              sub_18E220B7C(v146);
LABEL_114:
              sub_18E242CF0();
              sub_18E2F883C(v144);
              if (*&v144[24])
              {
                if (sub_18E23D5A4(v145, v144, v83, MEMORY[0x1E69E6158]))
                {
                  v84 = *&v145[8];
                  while (1)
                  {
                    sub_18E220D08();
                    if (v27)
                    {

                      sub_18E1E01D0(v144);
                      sub_18E242CF0();
                      goto LABEL_133;
                    }

                    sub_18E2F7B78();
                    if (v23)
                    {
                      goto LABEL_179;
                    }

                    sub_18E1E8C38(v128, v134);
                    v85 = *&v134[24];
                    sub_18E1C8570(v134, *&v134[24]);
                    v86(v85);
                    sub_18E223708();
                    if (v27 && v88 == v84)
                    {
                      break;
                    }

                    sub_18E1E1574(v87);
                    sub_18E1CF9C4();

                    if (v85)
                    {
                      goto LABEL_129;
                    }

                    sub_18E1E3BE0(v134);
                  }

LABEL_129:

                  sub_18E1C551C(v134, v135);
                  sub_18E2245EC(v143, v135, v90, &type metadata for AssetBackedEmbeddingPreprocessorBase);
                  sub_18E242CF0();
                  if (v91)
                  {
                    sub_18E2F87F4(v136);
                    nullsub_1();
                    memcpy(v145, v136, sizeof(v145));
                  }

                  else
                  {
                    sub_18E1E01D0(v145);
                  }

                  sub_18E220B7C(v144);
LABEL_133:
                  sub_18E2235E0(v145);
LABEL_134:
                  sub_18E2F883C(v143);

                  if (*&v143[24])
                  {
                    if (sub_18E23D5A4(v144, v143, v92, MEMORY[0x1E69E6158]))
                    {
                      v93 = *&v144[8];
                      while (1)
                      {
                        sub_18E220D08();
                        if (v27)
                        {

                          sub_18E1E01D0(v143);
                          goto LABEL_155;
                        }

                        sub_18E2F7B78();
                        if (v23)
                        {
                          goto LABEL_180;
                        }

                        sub_18E1E8C38(v128, v133);
                        v94 = *&v133[24];
                        sub_18E1C8570(v133, *&v133[24]);
                        v95(v94);
                        sub_18E223708();
                        if (v27 && v97 == v93)
                        {

                          goto LABEL_151;
                        }

                        sub_18E1E1574(v96);
                        sub_18E1E2238();

                        if (v94)
                        {
                          break;
                        }

                        sub_18E2336EC(v133);
                      }

LABEL_151:

                      sub_18E1C551C(v133, v134);
                      if (sub_18E2245EC(v136, v134, v99, &type metadata for AssetBackedLLMAdapterMetadataOverrideBase))
                      {
                        memcpy(v135, v136, sizeof(v135));
                        nullsub_1();
                        memcpy(v144, v135, sizeof(v144));
                      }

                      else
                      {
                        sub_18E1E01D0(v144);
                      }

                      sub_18E2235E0(v143);
LABEL_155:
                      sub_18E2F87F4(v144);
                      goto LABEL_156;
                    }
                  }

                  else
                  {

                    sub_18E1E8F44(v143, &qword_1EABE3B70, &qword_18E4AAB80);
                  }

                  sub_18E1E01D0(v144);
LABEL_156:
                  v141 = &type metadata for AssetBackedTokenizerBase;
                  v142 = sub_18E1E3434();
                  sub_18E1C86E0();
                  *&v140 = swift_allocObject();
                  memcpy((v140 + 16), v152, 0xD8uLL);
                  v138 = &type metadata for AssetBackedLLMModelBase;
                  v139 = sub_18E1E3358();
                  sub_18E1C86E0();
                  *&v137 = swift_allocObject();
                  memcpy((v137 + 16), v149, 0xD8uLL);
                  memcpy(v143, v148, sizeof(v143));
                  sub_18E221728(v143);
                  if (v27)
                  {
                    v101 = 0;
                    v155 = 0;
                    v100 = 0;
                  }

                  else
                  {
                    v100 = sub_18E220BC8();
                    sub_18E1C86E0();
                    v101 = swift_allocObject();
                    sub_18E2F87F4((v101 + 16));
                    v155 = &type metadata for AssetBackedLLMAdapterBase;
                  }

                  memcpy(v136, v147, sizeof(v136));
                  sub_18E221728(v136);
                  if (v27)
                  {
                    v128 = 0;
                    v126 = 0;
                    v132 = 0;
                  }

                  else
                  {
                    v132 = sub_18E1E7BB4();
                    sub_18E1C86E0();
                    v102 = swift_allocObject();
                    v103 = sub_18E23CA50(v102);
                    memcpy(v103, v136, 0xD8uLL);
                    v126 = &type metadata for AssetBackedLLMDraftModelBase;
                  }

                  sub_18E2F87DC(v135);
                  sub_18E221728(v135);
                  if (v27)
                  {
                    v123 = 0;
                    v124 = 0;
                    v125 = 0;
                  }

                  else
                  {
                    v125 = sub_18E220D24();
                    sub_18E1C86E0();
                    v104 = swift_allocObject();
                    v105 = sub_18E2F79A0(v104);
                    memcpy(v105, v135, 0xD8uLL);
                    v123 = &type metadata for AssetBackedImageTokenizerBase;
                  }

                  sub_18E220B7C(v134);
                  sub_18E221728(v134);
                  if (v27)
                  {
                    v120 = 0;
                    v121 = 0;
                    v122 = 0;
                  }

                  else
                  {
                    v122 = sub_18E221A84();
                    sub_18E1C86E0();
                    v121 = swift_allocObject();
                    memcpy((v121 + 16), v134, 0xD8uLL);
                    v120 = &type metadata for AssetBackedEmbeddingPreprocessorBase;
                  }

                  v106 = v0;
                  sub_18E2235E0(v133);
                  sub_18E221728(v133);
                  if (v27)
                  {
                    v108 = 0;
                    v119 = 0;
                    v107 = 0;
                  }

                  else
                  {
                    v107 = sub_18E2F1480();
                    sub_18E1C86E0();
                    v108 = swift_allocObject();
                    memcpy((v108 + 16), v133, 0xD8uLL);
                    v119 = &type metadata for AssetBackedLLMAdapterMetadataOverrideBase;
                  }

                  v109 = v129;

                  sub_18E44E50C();
                  v110 = sub_18E44E54C();
                  sub_18E220124(v106, 1, v110);
                  if (v27)
                  {

                    sub_18E1E8F44(v106, &qword_1EABE2FE0, &qword_18E49CE00);
                    v111 = v130;
                  }

                  else
                  {
                    v111 = sub_18E44E49C();
                    v131 = v108;
                    v112 = v107;
                    v113 = v101;
                    v114 = v100;
                    v116 = v115;

                    sub_18E1CE910();
                    v117 = sub_18E233460();
                    v118(v117);

                    v109 = v116;
                    v100 = v114;
                    v101 = v113;
                    v107 = v112;
                    v108 = v131;
                  }

                  *v127 = v111;
                  v127[1] = v109;
                  sub_18E1C551C(&v140, (v127 + 2));
                  sub_18E1C551C(&v137, (v127 + 7));
                  v127[12] = v101;
                  v127[13] = 0;
                  v127[14] = 0;
                  v127[15] = v155;
                  v127[16] = v100;
                  v127[17] = v128;
                  v127[18] = 0;
                  v127[19] = 0;
                  v127[20] = v126;
                  v127[21] = v132;
                  v127[22] = v124;
                  v127[23] = 0;
                  v127[24] = 0;
                  v127[25] = v123;
                  v127[26] = v125;
                  v127[27] = v121;
                  v127[28] = 0;
                  v127[29] = 0;
                  v127[30] = v120;
                  v127[31] = v122;
                  v127[32] = v108;
                  v127[33] = 0;
                  v127[34] = 0;
                  v127[35] = v119;
                  v127[36] = v107;
                  goto LABEL_29;
                }
              }

              else
              {
                sub_18E1E8F44(v144, &qword_1EABE3B70, &qword_18E4AAB80);
              }

              sub_18E1E01D0(v145);
              goto LABEL_134;
            }
          }

          else
          {
            sub_18E1E8F44(v145, &qword_1EABE3B70, &qword_18E4AAB80);
          }

          sub_18E1E01D0(v146);
          goto LABEL_114;
        }
      }

      else
      {
        sub_18E1E8F44(v146, &qword_1EABE3B70, &qword_18E4AAB80);
      }

      sub_18E1E01D0(v147);
      goto LABEL_94;
    }

    sub_18E1E8C38(v22, v153);
    v24 = *&v153[24];
    sub_18E1C8570(v153, *&v153[24]);
    v25(v24);
    sub_18E2F7F3C();
    v27 = v27 && v26 == v21;
    if (v27)
    {
      break;
    }

    sub_18E1D42A4();
    sub_18E2F8644(v28, v29, v30);
    sub_18E1CF9C4();

    if (v24)
    {
      goto LABEL_32;
    }

    sub_18E1E3BE0(v153);
  }

LABEL_32:
  sub_18E1C551C(v153, v154);
  sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
  if ((sub_18E2F8884(v153, v154, v38, &type metadata for AssetBackedTokenizerBase) & 1) == 0)
  {
LABEL_44:

    sub_18E2F7A9C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *v153 = v49 + 15;
    *&v153[8] = v50;
    v51 = sub_18E1E1B1C();
    MEMORY[0x193ACC300](v51);
    goto LABEL_27;
  }

  memcpy(v152, v153, sizeof(v152));
  sub_18E1CC4E4();
  sub_18E23552C();
  sub_18E26C3FC(v4, v39);
  if (*&v150[24])
  {
    if (sub_18E223680(v149, v150, v40, MEMORY[0x1E69E6158]))
    {
      v41 = v149[1];
      while (1)
      {
        sub_18E220D08();
        if (v27)
        {
          goto LABEL_62;
        }

        sub_18E1E6934();
        if (v23)
        {
          break;
        }

        sub_18E1E8C38(v128, v150);
        v42 = *&v150[24];
        sub_18E1C8570(v150, *&v150[24]);
        v43(v42);
        sub_18E2F7F3C();
        if (v27 && v44 == v41)
        {

LABEL_50:
          sub_18E1C551C(v150, v151);
          if ((sub_18E2245EC(v150, v151, v55, &type metadata for AssetBackedLLMModelBase) & 1) == 0)
          {
LABEL_62:

            sub_18E2121D8(v152);

            sub_18E2F8078();
            sub_18E44EFFC();

            sub_18E1C8E68();
            *v150 = v63 + 14;
            *&v150[8] = v64;
            v65 = sub_18E1E1B1C();
            MEMORY[0x193ACC300](v65);
            goto LABEL_63;
          }

          memcpy(v149, v150, sizeof(v149));
          sub_18E2233C0();
          sub_18E26C3FC(v4, v147);
          if (*&v147[24])
          {
            if (sub_18E23D5A4(v148, v147, v56, MEMORY[0x1E69E6158]))
            {
              v57 = v148[1];
              while (1)
              {
                sub_18E220D08();
                if (v27)
                {
                  goto LABEL_67;
                }

                sub_18E2F7B78();
                if (v23)
                {
                  goto LABEL_176;
                }

                sub_18E1E8C38(v128, v143);
                v58 = *&v143[24];
                sub_18E1C8570(v143, *&v143[24]);
                v59(v58);
                sub_18E223708();
                if (v27 && v61 == v57)
                {

LABEL_69:

                  sub_18E1C551C(v143, v144);
                  if (sub_18E2245EC(v146, v144, v66, &type metadata for AssetBackedLLMAdapterBase))
                  {
                    sub_18E2F87DC(v145);
                    nullsub_1();
                    sub_18E220B7C(v148);
                  }

                  else
                  {
                    sub_18E1E01D0(v148);
                  }

                  memcpy(v147, v148, sizeof(v147));
                  goto LABEL_73;
                }

                sub_18E1E1574(v60);
                sub_18E1CF9C4();

                if (v58)
                {
                  goto LABEL_69;
                }

                sub_18E1E3BE0(v143);
              }
            }
          }

          else
          {
            sub_18E1E8F44(v147, &qword_1EABE3B70, &qword_18E4AAB80);
          }

          sub_18E1E01D0(v148);
          goto LABEL_74;
        }

        sub_18E1D42A4();
        sub_18E2F8644(v46, v47, v48);
        sub_18E1CF9C4();

        if (v42)
        {
          goto LABEL_50;
        }

        sub_18E1E3BE0(v150);
      }

      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      return;
    }

    sub_18E2121D8(v152);
  }

  else
  {

    sub_18E2121D8(v152);

    sub_18E1E8F44(v150, &qword_1EABE3B70, &qword_18E4AAB80);
  }

  sub_18E2F8078();
  sub_18E44EFFC();

  sub_18E1C8E68();
  *v150 = v52 + 25;
  *&v150[8] = v53;
  sub_18E44E99C();
  sub_18E22449C();

  v54 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v54);
LABEL_63:

LABEL_28:
  v35 = sub_18E2AE554();
  v36 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v35);
  sub_18E1D7E28(v36, v37);
LABEL_29:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2E4F88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2E4F80();
  *a1 = result;
  return result;
}

uint64_t sub_18E2E4FB0(uint64_t a1)
{
  v2 = sub_18E1E0B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E4FEC(uint64_t a1)
{
  v2 = sub_18E1E0B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static AssetBackedLLMBundle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  AssetBackedLLMBundle.assetBackedResources.getter();
  v4 = sub_18E1DF33C(v3);

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_18E2247C8();
    sub_18E26F1E0(v6, v5, 0);
    v15 = v42;
    do
    {
      sub_18E2F862C(v7, v8, v9, v10, v11, v12, v13, v14, v41[0]);
      v16 = sub_18E1C8C94(v41);
      v17(v16);
      sub_18E221954();
      sub_18E1C9934(v41);
      v42 = v15;
      sub_18E22327C();
      if (v19)
      {
        v21 = sub_18E1C8C60(v18);
        sub_18E2F7AE4(v21);
        v15 = v42;
      }

      sub_18E240BE4();
    }

    while (!v20);
  }

  else
  {
  }

  AssetBackedLLMBundle.assetBackedResources.getter();
  v23 = v22;
  sub_18E1DF33C(v22);
  sub_18E233F98();
  if (*(a2 + 16))
  {
    v24 = sub_18E2247C8();
    sub_18E2F7CE0(v24);
    v33 = v42;
    do
    {
      sub_18E2F862C(v25, v26, v27, v28, v29, v30, v31, v32, v41[0]);
      v34 = sub_18E1C8C94(v41);
      v35(v34);
      sub_18E221954();
      sub_18E1C9934(v41);
      v42 = v33;
      sub_18E22327C();
      if (v19)
      {
        v37 = sub_18E1C8C60(v36);
        sub_18E2F7AE4(v37);
        v33 = v42;
      }

      sub_18E1CA5D4();
    }

    while (!v20);
  }

  v38 = sub_18E1E6BB0();
  sub_18E290008(v38, v39);
  sub_18E1E6A20();

  return v23 & 1;
}

void AssetBackedLLMBundle.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E2F7B84();
  a23 = v24;
  a24 = v25;
  sub_18E1E2E88();
  AssetBackedLLMBundle.id.getter();
  v26 = a11;
  sub_18E44EB4C();

  AssetBackedLLMBundle.assetBackedResources.getter();
  sub_18E1DF33C(v27);
  v28 = sub_18E233F98();
  if (*(v26 + 16))
  {
    do
    {
      sub_18E2F7CF8(v28, v29);
      v30 = sub_18E1CAD4C(&a10);
      v31(v30);
      sub_18E1C9934(&a10);
      sub_18E1D42A4();
      sub_18E44EB4C();

      sub_18E22365C();
    }

    while (!v32);

    sub_18E2232AC();
  }

  else
  {
    sub_18E2232AC();
  }
}

__n128 sub_18E2E5434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t), void (*a22)(uint64_t, uint64_t))
{
  sub_18E1C575C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v55 = v37;
  v54 = v38;
  v39 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v39);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v40);
  sub_18E2352F4();
  v41 = *v34;
  v42 = v34[1];

  sub_18E44E50C();

  v43 = sub_18E44E54C();
  if (sub_18E1CAF28(v22, 1, v43) == 1)
  {
    sub_18E1E8F44(v22, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    v41 = sub_18E44E49C();
    v53 = v24;
    v45 = v44;
    sub_18E1C82B8();
    (*(v46 + 8))(v22, v43);

    v42 = v45;
    v24 = v53;
  }

  *v36 = v41;
  *(v36 + 8) = v42;
  a21(v54, v36 + 16);
  a22(v55, v36 + 56);
  v47 = *(v32 + 16);
  *(v36 + 96) = *v32;
  *(v36 + 112) = v47;
  *(v36 + 128) = *(v32 + 32);
  v48 = *(v30 + 16);
  *(v36 + 136) = *v30;
  *(v36 + 152) = v48;
  *(v36 + 168) = *(v30 + 32);
  *(v36 + 208) = *(v28 + 32);
  v49 = *(v28 + 16);
  *(v36 + 176) = *v28;
  *(v36 + 192) = v49;
  *(v36 + 248) = *(v26 + 4);
  v50 = *v26;
  *(v36 + 232) = v26[1];
  *(v36 + 216) = v50;
  *(v36 + 288) = *(v24 + 32);
  v51 = *(v24 + 16);
  *(v36 + 256) = *v24;
  *(v36 + 272) = v51;
  sub_18E1C5544();
  return result;
}

void LLMBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v7);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C8E58();
  sub_18E1E7430();
  sub_18E26C3FC(v4, v9);
  if (!*&v168[24])
  {

    sub_18E1E8F44(v168, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_22:
    sub_18E1E2B20();
    sub_18E44EFFC();

    sub_18E1C8E68();
    goto LABEL_26;
  }

  if ((sub_18E22169C(v167, v168, v10, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_22;
  }

  v170 = v2;
  v11 = v167[0];
  v12 = v167[1];
  type metadata accessor for Utils();
  if ((sub_18E32F0AC(v11, v12) & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
      sub_18E1C7804(&qword_1EABE0CF8);
    }

    v13 = sub_18E44E83C();
    sub_18E1C95EC(v13, qword_1EAC7F560);
    sub_18E1E6C9C();

    v14 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      *v168 = sub_18E223E58();
      *v4 = 136315138;
      *(v4 + 4) = sub_18E1C9624(v11, v12, v168);
      sub_18E1D5F48(&dword_18E1C1000, v15, v16, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221F60();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  sub_18E1D49B0();
  sub_18E2F7D70();
  sub_18E26C3FC(v4, v17);
  if (!*&v168[24])
  {

    sub_18E1E8F44(v168, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_25:
    sub_18E1E2B20();
    sub_18E44EFFC();

    sub_18E1C8E68();
    v32 = v33 + 24;
LABEL_26:
    *v168 = v32;
    *&v168[8] = v31;
    sub_18E44E99C();
    sub_18E22449C();

    v34 = sub_18E1CFFC0();
    MEMORY[0x193ACC300](v34);
LABEL_27:

    goto LABEL_28;
  }

  if ((sub_18E22169C(v167, v168, v18, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_25;
  }

  v143 = v0;
  v144 = v4;
  v141 = v6;
  v19 = v167[0];
  v20 = v167[1];
  v146 = *(v170 + 16);
  v21 = v170 + 32;
  v142 = v170 + 32;
  while (1)
  {
    sub_18E223494();
    if (v27)
    {
      goto LABEL_44;
    }

    sub_18E1E1888();
    if (v22)
    {
      __break(1u);
LABEL_67:

      sub_18E268E70(v162);
      v57 = v144;
LABEL_73:
      memcpy(v163, v162, sizeof(v163));
LABEL_74:
      sub_18E1C5B68();
      sub_18E26C3FC(v57, v159);
      if (*&v159[24])
      {
        if (sub_18E223680(v162, v159, v70, MEMORY[0x1E69E6158]))
        {
          v19 = *&v162[8];
          v21 = v170 + 32;
          while (1)
          {
            sub_18E223494();
            if (v27)
            {

              sub_18E268E70(v159);
              v57 = v144;
              goto LABEL_93;
            }

            sub_18E223B14();
            if (v22)
            {
              goto LABEL_177;
            }

            sub_18E1E8C38(v142, v160);
            v71 = v160[24];
            v72 = *&v160[32];
            sub_18E1E15F4(v160, *&v160[24]);
            v73 = sub_18E22879C();
            v74(v73, v72);
            sub_18E223708();
            if (v27 && v76 == v19)
            {
              break;
            }

            sub_18E1E1574(v75);
            sub_18E1E1F80();

            if (v71)
            {
              goto LABEL_89;
            }

            sub_18E207AC8(v160);
          }

LABEL_89:

          sub_18E1C551C(v160, v161);
          v57 = v144;
          if (sub_18E2240C8(v152, v161, v78, &type metadata for LLMDraftModelBase))
          {
            memcpy(v148, v152, sizeof(v148));
            nullsub_1();
            memcpy(v162, v148, sizeof(v162));
          }

          else
          {
            sub_18E268E70(v162);
          }

          memcpy(v159, v162, sizeof(v159));
LABEL_93:
          memcpy(v162, v159, sizeof(v162));
LABEL_94:
          sub_18E2329A4();
          sub_18E26C3FC(v57, v159);
          if (*&v159[24])
          {
            if (sub_18E23507C(v79, v80, v81, MEMORY[0x1E69E6158]))
            {
              sub_18E2231CC();
              while (1)
              {
                sub_18E223494();
                if (v27)
                {

                  sub_18E1E01D0(v159);
                  v57 = v144;
                  goto LABEL_113;
                }

                sub_18E223B14();
                if (v22)
                {
                  goto LABEL_178;
                }

                sub_18E1E8C38(v21, v151);
                v82 = v151[24];
                v83 = *&v151[32];
                sub_18E1E15F4(v151, *&v151[24]);
                v84 = sub_18E22879C();
                v85(v84, v83);
                sub_18E223708();
                if (v27 && v87 == v19)
                {
                  break;
                }

                sub_18E1E1574(v86);
                sub_18E1E1F80();

                if (v82)
                {
                  goto LABEL_109;
                }

                sub_18E207AC8(v151);
              }

LABEL_109:

              sub_18E1C551C(v151, v160);
              v57 = v144;
              if (sub_18E2240C8(v148, v160, v89, &type metadata for ImageTokenizerBase))
              {
                memcpy(v161, v148, sizeof(v161));
                nullsub_1();
                memcpy(v152, v161, 0xD8uLL);
              }

              else
              {
                sub_18E1E01D0(v152);
              }

              sub_18E224F3C();
LABEL_113:
              memcpy(v148, v159, 0xD8uLL);
LABEL_114:
              sub_18E242CF0();
              sub_18E26C3FC(v57, v159);
              if (*&v159[24])
              {
                if (sub_18E23507C(v90, v91, v92, MEMORY[0x1E69E6158]))
                {
                  sub_18E2231CC();
                  while (1)
                  {
                    sub_18E223494();
                    if (v27)
                    {

                      sub_18E1E01D0(v159);
                      v57 = v144;
                      sub_18E242CF0();
                      goto LABEL_133;
                    }

                    sub_18E223B14();
                    if (v22)
                    {
                      goto LABEL_179;
                    }

                    sub_18E1E8C38(v21, v150);
                    v93 = v150[24];
                    v94 = *&v150[32];
                    sub_18E1E15F4(v150, *&v150[24]);
                    v95 = sub_18E22879C();
                    v96(v95, v94);
                    sub_18E223708();
                    if (v27 && v98 == v19)
                    {
                      break;
                    }

                    sub_18E1E1574(v97);
                    sub_18E1E1F80();

                    if (v93)
                    {
                      goto LABEL_129;
                    }

                    sub_18E207AC8(v150);
                  }

LABEL_129:

                  sub_18E1C551C(v150, v151);
                  sub_18E2240C8(v161, v151, v100, &type metadata for EmbeddingPreprocessorBase);
                  v57 = v144;
                  sub_18E242CF0();
                  if (v101)
                  {
                    memcpy(v160, v161, sizeof(v160));
                    nullsub_1();
                    memcpy(v152, v160, 0xD8uLL);
                  }

                  else
                  {
                    sub_18E1E01D0(v152);
                  }

                  sub_18E224F3C();
LABEL_133:
                  memcpy(v161, v159, sizeof(v161));
LABEL_134:
                  sub_18E26C3FC(v57, v159);

                  if (*&v159[24])
                  {
                    v105 = sub_18E23507C(v102, v103, v104, MEMORY[0x1E69E6158]);
                    v106 = v170;
                    if (v105)
                    {
                      v107 = 0;
                      v108 = v152[1];
                      while (1)
                      {
                        if (v146 == v107)
                        {

                          sub_18E1E01D0(v159);
                          goto LABEL_155;
                        }

                        if (v107 >= *(v106 + 16))
                        {
                          goto LABEL_180;
                        }

                        sub_18E1E8C38(v142, v149);
                        v109 = v149[24];
                        v110 = sub_18E1E1D24(v149);
                        v111(v110);
                        sub_18E223708();
                        if (v27 && v113 == v108)
                        {

                          goto LABEL_151;
                        }

                        sub_18E1E1574(v112);
                        sub_18E1E1F80();

                        if (v109)
                        {
                          break;
                        }

                        sub_18E1C9934(v149);
                        v142 += 40;
                        ++v107;
                        v106 = v170;
                      }

LABEL_151:

                      sub_18E1C551C(v149, v150);
                      if (sub_18E2240C8(v160, v150, v115, &type metadata for LLMAdapterMetadataOverrideBase))
                      {
                        memcpy(v151, v160, sizeof(v151));
                        nullsub_1();
                        memcpy(v152, v151, 0xD8uLL);
                      }

                      else
                      {
                        sub_18E1E01D0(v152);
                      }

                      sub_18E224F3C();
LABEL_155:
                      memcpy(v160, v159, sizeof(v160));
                      goto LABEL_156;
                    }
                  }

                  else
                  {

                    sub_18E1E8F44(v159, &qword_1EABE3B70, &qword_18E4AAB80);
                  }

                  sub_18E1E01D0(v160);
LABEL_156:
                  v157 = &type metadata for TokenizerBase;
                  v158 = sub_18E1E28CC();
                  sub_18E220B24();
                  *&v156 = swift_allocObject();
                  memcpy((v156 + 16), v167, 0xF8uLL);
                  v154 = &type metadata for LLMModelBase;
                  v155 = sub_18E1E2A0C();
                  sub_18E220B24();
                  *&v153 = swift_allocObject();
                  memcpy((v153 + 16), v164, 0xF8uLL);
                  memcpy(v159, v163, sizeof(v159));
                  sub_18E221728(v159);
                  if (v27)
                  {
                    v171 = 0;
                    v147 = 0;
                    v116 = 0;
                  }

                  else
                  {
                    v116 = sub_18E22402C();
                    sub_18E220B24();
                    v171 = swift_allocObject();
                    memcpy((v171 + 16), v159, 0xF8uLL);
                    v147 = &type metadata for LLMAdapterBase;
                  }

                  memcpy(v152, v162, sizeof(v152));
                  sub_18E221728(v152);
                  if (v27)
                  {
                    v142 = 0;
                    v140 = 0;
                    v145 = 0;
                  }

                  else
                  {
                    v145 = sub_18E216928();
                    sub_18E220B24();
                    v117 = swift_allocObject();
                    v118 = sub_18E23CA50(v117);
                    memcpy(v118, v152, 0xF8uLL);
                    v140 = &type metadata for LLMDraftModelBase;
                  }

                  memcpy(v151, v148, sizeof(v151));
                  sub_18E221728(v151);
                  if (v27)
                  {
                    v137 = 0;
                    v138 = 0;
                    v139 = 0;
                  }

                  else
                  {
                    v139 = sub_18E216AA0();
                    sub_18E1C86E0();
                    v119 = swift_allocObject();
                    v120 = sub_18E2092EC(v119);
                    memcpy(v120, v151, 0xD8uLL);
                    v137 = &type metadata for ImageTokenizerBase;
                  }

                  v121 = v11;
                  memcpy(v150, v161, sizeof(v150));
                  sub_18E221728(v150);
                  if (v27)
                  {
                    v123 = 0;
                    v124 = 0;
                    v122 = 0;
                  }

                  else
                  {
                    v122 = sub_18E2F1528();
                    sub_18E1C86E0();
                    v123 = swift_allocObject();
                    memcpy((v123 + 16), v150, 0xD8uLL);
                    v124 = &type metadata for EmbeddingPreprocessorBase;
                  }

                  memcpy(v149, v160, sizeof(v149));
                  sub_18E221728(v149);
                  if (v27)
                  {
                    v134 = 0;
                    v135 = 0;
                    v136 = 0;
                  }

                  else
                  {
                    v136 = sub_18E2F14D4();
                    sub_18E1C86E0();
                    v135 = swift_allocObject();
                    memcpy((v135 + 16), v149, 0xD8uLL);
                    v134 = &type metadata for LLMAdapterMetadataOverrideBase;
                  }

                  sub_18E1E2898();
                  sub_18E44E50C();
                  v125 = sub_18E44E54C();
                  sub_18E220124(v143, 1, v125);
                  if (v27)
                  {

                    sub_18E1E8F44(v143, &qword_1EABE2FE0, &qword_18E49CE00);
                  }

                  else
                  {
                    v121 = sub_18E44E49C();
                    v133 = v124;
                    v126 = v123;
                    v127 = v122;
                    v128 = v116;
                    v130 = v129;

                    sub_18E1CE910();
                    v131 = sub_18E233460();
                    v132(v131);

                    v12 = v130;
                    v116 = v128;
                    v122 = v127;
                    v123 = v126;
                    v124 = v133;
                  }

                  *v141 = v121;
                  v141[1] = v12;
                  sub_18E1C551C(&v156, (v141 + 2));
                  sub_18E1C551C(&v153, (v141 + 7));
                  v141[12] = v171;
                  v141[13] = 0;
                  v141[14] = 0;
                  v141[15] = v147;
                  v141[16] = v116;
                  v141[17] = v142;
                  v141[18] = 0;
                  v141[19] = 0;
                  v141[20] = v140;
                  v141[21] = v145;
                  v141[22] = v138;
                  v141[23] = 0;
                  v141[24] = 0;
                  v141[25] = v137;
                  v141[26] = v139;
                  v141[27] = v123;
                  v141[28] = 0;
                  v141[29] = 0;
                  v141[30] = v124;
                  v141[31] = v122;
                  v141[32] = v135;
                  v141[33] = 0;
                  v141[34] = 0;
                  v141[35] = v134;
                  v141[36] = v136;
                  goto LABEL_29;
                }
              }

              else
              {
                sub_18E1E8F44(v159, &qword_1EABE3B70, &qword_18E4AAB80);
              }

              sub_18E1E01D0(v161);
              goto LABEL_134;
            }
          }

          else
          {
            sub_18E1E8F44(v159, &qword_1EABE3B70, &qword_18E4AAB80);
          }

          sub_18E1E01D0(v148);
          goto LABEL_114;
        }
      }

      else
      {
        sub_18E1E8F44(v159, &qword_1EABE3B70, &qword_18E4AAB80);
      }

      sub_18E268E70(v162);
      goto LABEL_94;
    }

    sub_18E1E8C38(v21, v168);
    v23 = *&v168[32];
    sub_18E1E15F4(v168, *&v168[24]);
    v24 = sub_18E1E3118();
    v25(v24, v23);
    sub_18E2F7F3C();
    v27 = v27 && v26 == v20;
    if (v27)
    {
      break;
    }

    sub_18E1D42A4();
    sub_18E2F8644(v28, v29, v30);
    sub_18E1E1F80();

    if (v23)
    {
      goto LABEL_32;
    }

    sub_18E207AC8(v168);
  }

LABEL_32:
  sub_18E1C551C(v168, &v169);
  sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_44:

    sub_18E1E2B20();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *v168 = v50 + 15;
    *&v168[8] = v51;
    v52 = sub_18E1E1B1C();
    MEMORY[0x193ACC300](v52);
    goto LABEL_27;
  }

  memcpy(v167, v168, sizeof(v167));
  sub_18E1CC4E4();
  sub_18E23552C();
  sub_18E26C3FC(v144, v38);
  if (*&v165[24])
  {
    if (sub_18E223680(v164, v165, v39, MEMORY[0x1E69E6158]))
    {
      v19 = v164[0];
      v40 = v164[1];
      v21 = v170 + 32;
      while (1)
      {
        sub_18E223494();
        if (v27)
        {
          goto LABEL_62;
        }

        sub_18E1E1888();
        if (v22)
        {
          break;
        }

        sub_18E1E8C38(v142, v165);
        v41 = v165[24];
        v42 = *&v165[32];
        sub_18E1E15F4(v165, *&v165[24]);
        v43 = sub_18E22879C();
        v44(v43, v42);
        sub_18E2F7F3C();
        if (v27 && v45 == v40)
        {

LABEL_50:
          sub_18E1C551C(v165, v166);
          if ((sub_18E2240C8(v165, v166, v56, &type metadata for LLMModelBase) & 1) == 0)
          {
LABEL_62:

            sub_18E2CF1A4(v167);

            sub_18E2F8064();
            sub_18E44EFFC();

            sub_18E1C8E68();
            *v165 = v66 + 14;
            *&v165[8] = v67;
            v68 = sub_18E1E1B1C();
            MEMORY[0x193ACC300](v68);
            goto LABEL_63;
          }

          memcpy(v164, v165, sizeof(v164));
          sub_18E2233C0();
          v57 = v144;
          sub_18E26C3FC(v144, v162);
          if (*&v162[24])
          {
            if (sub_18E223680(v163, v162, v58, MEMORY[0x1E69E6158]))
            {
              v19 = v163[1];
              v21 = v170 + 32;
              while (1)
              {
                sub_18E223494();
                if (v27)
                {
                  goto LABEL_67;
                }

                sub_18E223B14();
                if (v22)
                {
                  goto LABEL_176;
                }

                sub_18E1E8C38(v142, v161);
                v59 = v161[24];
                v60 = *&v161[32];
                sub_18E1E15F4(v161, *&v161[24]);
                v61 = sub_18E22879C();
                v62(v61, v60);
                sub_18E223708();
                if (v27 && v64 == v19)
                {

LABEL_69:

                  sub_18E1C551C(v161, v148);
                  v57 = v144;
                  if (sub_18E2240C8(v159, v148, v69, &type metadata for LLMAdapterBase))
                  {
                    memcpy(v152, v159, sizeof(v152));
                    nullsub_1();
                    memcpy(v163, v152, sizeof(v163));
                  }

                  else
                  {
                    sub_18E268E70(v163);
                  }

                  memcpy(v162, v163, sizeof(v162));
                  goto LABEL_73;
                }

                sub_18E1E1574(v63);
                sub_18E1E1F80();

                if (v59)
                {
                  goto LABEL_69;
                }

                sub_18E207AC8(v161);
              }
            }
          }

          else
          {
            sub_18E1E8F44(v162, &qword_1EABE3B70, &qword_18E4AAB80);
          }

          sub_18E268E70(v163);
          goto LABEL_74;
        }

        sub_18E1D42A4();
        sub_18E2F8644(v47, v48, v49);
        sub_18E1E1F80();

        if (v41)
        {
          goto LABEL_50;
        }

        sub_18E207AC8(v165);
      }

      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      return;
    }

    sub_18E2CF1A4(v167);
  }

  else
  {

    sub_18E2CF1A4(v167);

    sub_18E1E8F44(v165, &qword_1EABE3B70, &qword_18E4AAB80);
  }

  sub_18E2F8064();
  sub_18E44EFFC();

  sub_18E1C8E68();
  *v165 = v53 + 25;
  *&v165[8] = v54;
  sub_18E44E99C();
  sub_18E22449C();

  v55 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v55);
LABEL_63:

LABEL_28:
  v35 = sub_18E2AE554();
  v36 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v35);
  sub_18E1CFAB8(v36, v37);
LABEL_29:
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void LLMBundle.resources.getter()
{
  sub_18E1C575C();
  sub_18E221834(v0 + 2);
  sub_18E1CF2D8();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E2F7994();
  v3 = sub_18E1CD9D8();
  (v1)(v3);
  sub_18E220AAC();
  sub_18E2451D0();
  v5 = sub_18E235294(v4);
  if (v7)
  {
    sub_18E1C6560(v6);
    sub_18E2451D0();
    v5 = sub_18E216B58(v233);
  }

  MEMORY[0x1EEE9AC00](v5);
  v8 = sub_18E2112EC();
  (v1)(v8);
  v9 = sub_18E1C5820();
  sub_18E1DF2A8(v9, v10, v11, v12, v13);
  v14 = sub_18E2167D8();
  v15(v14);
  v240 = v0[11];
  v16 = sub_18E1E15F4(v0 + 7, v0[10]);
  sub_18E1C63B0(v16, v17, v18, v19, v20, v21, v22, v23, v240);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v33 = sub_18E1C5D50(v25, v26, v27, v28, v29, v30, v31, v32, v241);
  (v1)(v33);
  sub_18E1D4294();
  if (v7)
  {
    sub_18E1C6560(v34);
    sub_18E2451D0();
    sub_18E216B58(v234);
  }

  sub_18E2236E0();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v44 = sub_18E1C8768(v36, v37, v38, v39, v40, v41, v42, v43, v242);
  (v1)(v44);
  sub_18E2F8028();
  v45 = sub_18E1C5820();
  sub_18E1DF2A8(v45, v46, v47, v48, v49);
  v50 = sub_18E1CA2BC();
  v51(v50);
  sub_18E2F66D4((v0 + 12), v257, &qword_1EABE12F0, &unk_18E49ED90);
  if (v258)
  {
    v52 = sub_18E1E8728();
    sub_18E1C551C(v52, v53);
    v244 = v261;
    v54 = sub_18E1E15F4(v259, v260);
    sub_18E1C63B0(v54, v55, v56, v57, v58, v59, v60, v61, v244);
    v63 = MEMORY[0x1EEE9AC00](v62);
    v71 = sub_18E1C5D50(v63, v64, v65, v66, v67, v68, v69, v70, v245);
    (v1)(v71);
    sub_18E1D4294();
    if (v7)
    {
      sub_18E1C6560(v72);
      sub_18E2451D0();
      sub_18E216B58(v235);
    }

    sub_18E2236E0();
    v74 = MEMORY[0x1EEE9AC00](v73);
    v82 = sub_18E1C8768(v74, v75, v76, v77, v78, v79, v80, v81, v246);
    (v1)(v82);
    sub_18E2F8028();
    v83 = sub_18E1C5820();
    sub_18E1DF2A8(v83, v84, v85, v86, v87);
    v88 = sub_18E1CA2BC();
    v89(v88);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v257, &qword_1EABE12F0, &unk_18E49ED90);
  }

  sub_18E2F66D4((v0 + 17), v257, &qword_1EABE12F8, &qword_18E4AAE90);
  if (v258)
  {
    v90 = sub_18E1E8728();
    sub_18E1C551C(v90, v91);
    v247 = v261;
    v92 = sub_18E1E15F4(v259, v260);
    sub_18E1C63B0(v92, v93, v94, v95, v96, v97, v98, v99, v247);
    v101 = MEMORY[0x1EEE9AC00](v100);
    v109 = sub_18E1C5D50(v101, v102, v103, v104, v105, v106, v107, v108, v248);
    (v1)(v109);
    sub_18E1D4294();
    if (v7)
    {
      sub_18E1C6560(v110);
      sub_18E2451D0();
      sub_18E216B58(v236);
    }

    sub_18E2236E0();
    v112 = MEMORY[0x1EEE9AC00](v111);
    v120 = sub_18E1C8768(v112, v113, v114, v115, v116, v117, v118, v119, v249);
    (v1)(v120);
    sub_18E2F8028();
    v121 = sub_18E1C5820();
    sub_18E1DF2A8(v121, v122, v123, v124, v125);
    v126 = sub_18E1CA2BC();
    v127(v126);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v257, &qword_1EABE12F8, &qword_18E4AAE90);
  }

  sub_18E2F66D4((v0 + 22), v257, &qword_1EABE2568, &qword_18E4AAE98);
  if (v258)
  {
    v128 = sub_18E1E8728();
    sub_18E1C551C(v128, v129);
    v250 = v261;
    v130 = sub_18E1E15F4(v259, v260);
    sub_18E1C63B0(v130, v131, v132, v133, v134, v135, v136, v137, v250);
    v139 = MEMORY[0x1EEE9AC00](v138);
    v147 = sub_18E1C5D50(v139, v140, v141, v142, v143, v144, v145, v146, v251);
    (v1)(v147);
    sub_18E1D4294();
    if (v7)
    {
      sub_18E1C6560(v148);
      sub_18E2451D0();
      sub_18E216B58(v237);
    }

    sub_18E2236E0();
    v150 = MEMORY[0x1EEE9AC00](v149);
    v158 = sub_18E1C8768(v150, v151, v152, v153, v154, v155, v156, v157, v252);
    (v1)(v158);
    sub_18E2F8028();
    v159 = sub_18E1C5820();
    sub_18E1DF2A8(v159, v160, v161, v162, v163);
    v164 = sub_18E1CA2BC();
    v165(v164);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v257, &qword_1EABE2568, &qword_18E4AAE98);
  }

  sub_18E2F66D4((v0 + 27), v257, &qword_1EABE2570, &qword_18E4AAEA0);
  if (v258)
  {
    v166 = sub_18E1E8728();
    sub_18E1C551C(v166, v167);
    v253 = v261;
    v168 = sub_18E1E15F4(v259, v260);
    sub_18E1C63B0(v168, v169, v170, v171, v172, v173, v174, v175, v253);
    v177 = MEMORY[0x1EEE9AC00](v176);
    v185 = sub_18E1C5D50(v177, v178, v179, v180, v181, v182, v183, v184, v254);
    (v1)(v185);
    sub_18E1D4294();
    if (v7)
    {
      sub_18E1C6560(v186);
      sub_18E2451D0();
      sub_18E216B58(v238);
    }

    sub_18E2236E0();
    v188 = MEMORY[0x1EEE9AC00](v187);
    v196 = sub_18E1C8768(v188, v189, v190, v191, v192, v193, v194, v195, v255);
    (v1)(v196);
    v197 = sub_18E1C5820();
    sub_18E1DF2A8(v197, v198, v199, v200, v201);
    v202 = sub_18E1CA2BC();
    v203(v202);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v257, &qword_1EABE2570, &qword_18E4AAEA0);
  }

  sub_18E2F66D4((v0 + 32), v257, &qword_1EABE2578, &qword_18E4AAEA8);
  if (v258)
  {
    v204 = sub_18E1E8728();
    sub_18E1C551C(v204, v205);
    v206 = v260;
    sub_18E1E15F4(v259, v260);
    sub_18E2349BC();
    sub_18E1C5780();
    v208 = MEMORY[0x1EEE9AC00](v207);
    v216 = sub_18E1E89D0(v208, v209, v210, v211, v212, v213, v214, v215, v243);
    (v1)(v216);
    sub_18E1E597C();
    if (v7)
    {
      sub_18E1C8C60(v217);
      sub_18E1C5068();
      sub_18E2451D0();
      sub_18E216B58(v239);
    }

    sub_18E235258();
    v219 = MEMORY[0x1EEE9AC00](v218);
    sub_18E1CEAD0(v219, v220, v221, v222, v223, v224, v225, v226, v256);
    sub_18E223BDC();
    v1();
    sub_18E1E1A80();
    v227 = sub_18E1CF9A0();
    sub_18E1DF2A8(v227, v228, v229, v206, v230);
    v231 = sub_18E221A60();
    v232(v231);
    sub_18E1C9934(v259);
  }

  else
  {
    sub_18E1E8F44(v257, &qword_1EABE2578, &qword_18E4AAEA8);
  }

  sub_18E1C5544();
}

uint64_t sub_18E2E7060()
{
  sub_18E1E2F2C();
  v4 = v4 && v3 == 0xE200000000000000;
  if (v4 || (sub_18E1E3894(v2) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = sub_18E1D49B0();
    v7 = v1 == v6 && v0 == 0xE900000000000072;
    if (v7 || (sub_18E1CF3DC(v6, 0xE900000000000072) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = sub_18E221B94();
      v9 = v4 && v0 == 0xE90000000000006CLL;
      if (v9 || (sub_18E1CF3DC(v8, 0xE90000000000006CLL) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = sub_18E2233C0();
        v11 = v1 == v10 && v0 == 0xE700000000000000;
        if (v11 || (sub_18E1CF3DC(v10, 0xE700000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          sub_18E1D5DB4();
          v13 = v4 && v0 == v12;
          if (v13 || (sub_18E23552C(), (sub_18E1CF3DC(v14, v15) & 1) != 0))
          {

            return 4;
          }

          else
          {
            v16 = sub_18E220964();
            v18 = v1 == v16 && v0 == v17;
            if (v18 || (sub_18E1CF3DC(v16, v17) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v19 = v1 == 0xD000000000000015 && 0x800000018E458F70 == v0;
              if (v19 || (sub_18E1CF3DC(0xD000000000000015, 0x800000018E458F70) & 1) != 0)
              {

                return 6;
              }

              else
              {
                sub_18E1C77B0();
                if (v1 == 0xD000000000000017 && v20 == v0)
                {

                  return 7;
                }

                else
                {
                  sub_18E1CF3DC(0xD000000000000017, v20);
                  sub_18E1E6A20();
                  if (v1)
                  {
                    return 7;
                  }

                  else
                  {
                    return 8;
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

uint64_t sub_18E2E7218(uint64_t a1)
{
  v2 = sub_18E2F157C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E7254(uint64_t a1)
{
  v2 = sub_18E2F157C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMBundle.init(from:)()
{
  sub_18E1C62A0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v53 = v4;
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v5);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = sub_18E2706EC(&qword_1EABE2590, &qword_18E4AAEB0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C61D0();
  v81 = v3;
  sub_18E1C975C();
  v9 = sub_18E2F157C();
  sub_18E1E2974(&type metadata for LLMBundle.CodingKeys, v10, v9);
  if (!v0)
  {
    v11 = sub_18E233460();
    sub_18E2706EC(v11, v12);
    v78[0] = 0;
    sub_18E1C6B74();
    sub_18E1E1638(v13, v14, &qword_18E4AAEB8, v15);
    sub_18E1CFF6C();
    sub_18E44F26C();
    v16 = v80[0];
    v17 = v80[1];
    v79 = 1;
    v18 = sub_18E2CFC90();
    sub_18E221DB8(v18, &v79, v19, v20, v18);
    v51 = v16;
    v21 = sub_18E223434();
    memcpy(v21, v80, 0xF8uLL);
    v76[255] = 2;
    sub_18E2CFCE4();
    sub_18E1CFF6C();
    sub_18E44F26C();
    memcpy(v76, v77, 0xF8uLL);
    v74[255] = 3;
    sub_18E2CFD8C();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v74, v75, 0xF8uLL);
    v72[255] = 4;
    sub_18E2CFD38();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v72, v73, 0xF8uLL);
    v70[223] = 5;
    sub_18E2C6000();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v70, v71, 0xD8uLL);
    v68[223] = 6;
    sub_18E2C4480();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v68, v69, 0xD8uLL);
    v66[255] = 7;
    sub_18E2C6464();
    sub_18E1E2CB0();
    sub_18E44F20C();
    v50 = v17;
    memcpy(v65, v67, sizeof(v65));
    v63 = &type metadata for TokenizerBase;
    v64 = sub_18E1E28CC();
    sub_18E220B24();
    *&v62 = swift_allocObject();
    memcpy((v62 + 16), v78, 0xF8uLL);
    v60 = &type metadata for LLMModelBase;
    v61 = sub_18E1E2A0C();
    sub_18E220B24();
    *&v59 = swift_allocObject();
    memcpy((v59 + 16), v76, 0xF8uLL);
    memcpy(v66, v74, 0xF8uLL);
    sub_18E221728(v66);
    if (v22)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
    }

    else
    {
      v49 = sub_18E22402C();
      sub_18E220B24();
      v23 = swift_allocObject();
      v24 = sub_18E23CA50(v23);
      memcpy(v24, v66, 0xF8uLL);
      v47 = &type metadata for LLMAdapterBase;
    }

    v25 = v53;
    v26 = v1;
    memcpy(v58, v72, sizeof(v58));
    sub_18E221728(v58);
    if (v22)
    {
      v52 = 0;
      v46 = 0;
      v54 = 0;
    }

    else
    {
      v54 = sub_18E216928();
      sub_18E220B24();
      v52 = swift_allocObject();
      memcpy((v52 + 16), v58, 0xF8uLL);
      v46 = &type metadata for LLMDraftModelBase;
    }

    memcpy(v57, v70, sizeof(v57));
    sub_18E221728(v57);
    if (v22)
    {
      v44 = 0;
      v45 = 0;
      v43 = 0;
    }

    else
    {
      v45 = sub_18E216AA0();
      sub_18E1C86E0();
      v27 = swift_allocObject();
      v28 = sub_18E2F79A0(v27);
      memcpy(v28, v57, 0xD8uLL);
      v43 = &type metadata for ImageTokenizerBase;
    }

    memcpy(v56, v68, sizeof(v56));
    sub_18E221728(v56);
    if (v22)
    {
      v41 = 0;
      v42 = 0;
      v39 = 0;
    }

    else
    {
      v42 = sub_18E2F1528();
      sub_18E1C86E0();
      v39 = swift_allocObject();
      memcpy((v39 + 16), v56, 0xD8uLL);
      v41 = &type metadata for EmbeddingPreprocessorBase;
    }

    memcpy(v55, v65, sizeof(v55));
    sub_18E221728(v55);
    if (v22)
    {
      v40 = 0;
      v38 = 0;
      v29 = 0;
    }

    else
    {
      v40 = sub_18E2F14D4();
      sub_18E1C86E0();
      v29 = swift_allocObject();
      memcpy((v29 + 16), v55, 0xD8uLL);
      v38 = &type metadata for LLMAdapterMetadataOverrideBase;
    }

    sub_18E44E50C();

    v30 = sub_18E44E54C();
    sub_18E220124(v26, 1, v30);
    if (v22)
    {
      v31 = sub_18E1E3B24();
      v32(v31, v7);
      sub_18E1E8F44(v26, &qword_1EABE2FE0, &qword_18E49CE00);
      v34 = v50;
    }

    else
    {
      v51 = sub_18E44E49C();
      v34 = v33;
      v35 = sub_18E1E3B24();
      v36(v35, v7);
      sub_18E1C82B8();
      (*(v37 + 8))(v26, v30);
    }

    *v25 = v51;
    v25[1] = v34;
    sub_18E1C551C(&v62, (v25 + 2));
    sub_18E1C551C(&v59, (v25 + 7));
    v25[12] = v48;
    v25[13] = 0;
    v25[14] = 0;
    v25[15] = v47;
    v25[16] = v49;
    v25[17] = v52;
    v25[18] = 0;
    v25[19] = 0;
    v25[20] = v46;
    v25[21] = v54;
    v25[22] = v44;
    v25[23] = 0;
    v25[24] = 0;
    v25[25] = v43;
    v25[26] = v45;
    v25[27] = v39;
    v25[28] = 0;
    v25[29] = 0;
    v25[30] = v41;
    v25[31] = v42;
    v25[32] = v29;
    v25[33] = 0;
    v25[34] = 0;
    v25[35] = v38;
    v25[36] = v40;
  }

  sub_18E1C9934(v81);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void LLMBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E65BC();
  sub_18E2706EC(&qword_1EABE25C0, &qword_18E4AAEE0);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1E2C60();
  sub_18E1D60D8();
  v3 = sub_18E2F157C();
  sub_18E1E3288(&type metadata for LLMBundle.CodingKeys, v4, v3);
  LLMBundle.id.getter();
  v42[0] = v43[0];
  v42[1] = v43[1];
  v41[0] = 0;
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABDF958);
  sub_18E224E2C();
  sub_18E44F35C();
  if (!v0)
  {

    sub_18E2F7DD0();
    v7 = sub_18E2706EC(&qword_1EABE25C8, &qword_18E4AAEE8);
    if (sub_18E2387D0(v43, v8, v7, &type metadata for TokenizerBase) && (memcpy(v42, v43, sizeof(v42)), memcpy(v41, v43, sizeof(v41)), v39[0] = 1, sub_18E2CF150(), sub_18E22452C(), sub_18E44F35C(), sub_18E2CF1A4(v42), sub_18E1E8C38(v1 + 56, &v40), sub_18E2706EC(&qword_1EABE25D0, &qword_18E4AAEF0), swift_dynamicCast()))
    {
      memcpy(v39, v41, sizeof(v39));
      memcpy(v38, v41, sizeof(v38));
      sub_18E2CF4F8();
      sub_18E22452C();
      sub_18E44F35C();
      sub_18E2CF54C(v39);
      sub_18E2F66D4(v1 + 96, v34, &qword_1EABE12F0, &unk_18E49ED90);
      if (v34[3])
      {
        sub_18E2706EC(&qword_1EABE2600, &qword_18E4AAF20);
        if (!swift_dynamicCast())
        {
          v14 = sub_18E1E8AE8();
          sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v14);
          sub_18E1DD27C();
          v11 = v15 - 2;
          goto LABEL_6;
        }

        memcpy(v35, v36, sizeof(v35));
        nullsub_1();
        memcpy(v37, v35, sizeof(v37));
      }

      else
      {
        sub_18E1E8F44(v34, &qword_1EABE12F0, &unk_18E49ED90);
        sub_18E268E70(v37);
      }

      memcpy(v36, v37, sizeof(v36));
      sub_18E2CF708();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v37, &qword_1EABE25A0, &qword_18E4AAEC0);
      sub_18E2F66D4(v1 + 136, v33, &qword_1EABE12F8, &qword_18E4AAE90);
      if (v33[3])
      {
        sub_18E2706EC(&qword_1EABE25F8, &qword_18E4AAF18);
        if (!swift_dynamicCast())
        {
          v16 = sub_18E1E8AE8();
          sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v16);
          sub_18E1DD27C();
          v11 = v17 + 1;
          goto LABEL_6;
        }

        memcpy(v26, v34, sizeof(v26));
        nullsub_1();
        memcpy(v35, v26, sizeof(v35));
      }

      else
      {
        sub_18E1E8F44(v33, &qword_1EABE12F8, &qword_18E4AAE90);
        sub_18E268E70(v35);
      }

      memcpy(v34, v35, sizeof(v34));
      sub_18E2CF5D0();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v35, &qword_1EABE25A8, &qword_18E4AAEC8);
      sub_18E2F66D4(v1 + 176, v31, &qword_1EABE2568, &qword_18E4AAE98);
      if (v31[3])
      {
        sub_18E2706EC(&qword_1EABE25F0, &qword_18E4AAF10);
        if (!swift_dynamicCast())
        {
          v18 = sub_18E1E8AE8();
          sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v18);
          sub_18E1DD27C();
          v11 = v19 + 5;
          goto LABEL_6;
        }

        memcpy(v32, v33, sizeof(v32));
        nullsub_1();
        memcpy(v26, v32, 0xD8uLL);
      }

      else
      {
        sub_18E1E8F44(v31, &qword_1EABE2568, &qword_18E4AAE98);
        sub_18E1E01D0(v26);
      }

      memcpy(v33, v26, sizeof(v33));
      sub_18E2C6054();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v26, &qword_1EABE25B0, &qword_18E4AAED0);
      sub_18E2F66D4(v1 + 216, v28, &qword_1EABE2570, &qword_18E4AAEA0);
      if (v28[3])
      {
        sub_18E2706EC(&qword_1EABE25E8, &qword_18E4AAF08);
        if (!swift_dynamicCast())
        {
          v20 = sub_18E1E8AE8();
          sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v20);
          sub_18E1DD27C();
          v11 = v21 | 0xC;
          goto LABEL_6;
        }

        memcpy(v30, v31, sizeof(v30));
        nullsub_1();
        memcpy(v32, v30, sizeof(v32));
      }

      else
      {
        sub_18E1E8F44(v28, &qword_1EABE2570, &qword_18E4AAEA0);
        sub_18E1E01D0(v32);
      }

      memcpy(v31, v32, sizeof(v31));
      sub_18E2C44D4();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v32, &qword_1EABE25B8, &qword_18E4AAED8);
      sub_18E2F66D4(v1 + 256, v29, &qword_1EABE2578, &qword_18E4AAEA8);
      if (!v29[3])
      {
        sub_18E1E8F44(v29, &qword_1EABE2578, &qword_18E4AAEA8);
        sub_18E1E01D0(v30);
        goto LABEL_40;
      }

      sub_18E2706EC(&qword_1EABE25E0, &qword_18E4AAF00);
      if (swift_dynamicCast())
      {
        memcpy(v27, v28, sizeof(v27));
        nullsub_1();
        memcpy(v30, v27, sizeof(v30));
LABEL_40:
        memcpy(v28, v30, sizeof(v28));
        v27[0] = 7;
        sub_18E2C64B8();
        sub_18E22452C();
        sub_18E44F2FC();
        v22 = sub_18E2204B4();
        v23(v22);
        sub_18E1E8F44(v30, &qword_1EABE25D8, &qword_18E4AAEF8);
        goto LABEL_8;
      }

      v24 = sub_18E1E8AE8();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v24);
      sub_18E1DD27C();
      v11 = v25 | 0xE;
    }

    else
    {
      v9 = sub_18E1E8AE8();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v9);
      sub_18E1DD27C();
    }

LABEL_6:
    sub_18E200E00(v10, v11);
    goto LABEL_7;
  }

LABEL_7:
  v12 = sub_18E2204B4();
  v13(v12);
LABEL_8:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t static LLMBundle.== infix(_:_:)(uint64_t a1, char a2)
{
  LLMBundle.resources.getter();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = sub_18E2247C8();
    sub_18E26F1E0(v6, v5, 0);
    v15 = v40;
    do
    {
      sub_18E2F862C(v7, v8, v9, v10, v11, v12, v13, v14, v39[0]);
      v16 = sub_18E1C8C94(v39);
      v17(v16);
      sub_18E221954();
      sub_18E1C9934(v39);
      v40 = v15;
      sub_18E22327C();
      if (v19)
      {
        v21 = sub_18E1C8C60(v18);
        sub_18E2F7AE4(v21);
        v15 = v40;
      }

      sub_18E240BE4();
    }

    while (!v20);
  }

  else
  {
  }

  LLMBundle.resources.getter();
  sub_18E2F8194();
  if (v4)
  {
    v22 = sub_18E2247C8();
    sub_18E2F7CE0(v22);
    v31 = v40;
    do
    {
      sub_18E2F862C(v23, v24, v25, v26, v27, v28, v29, v30, v39[0]);
      v32 = sub_18E1C8C94(v39);
      v33(v32);
      sub_18E221954();
      sub_18E1C9934(v39);
      v40 = v31;
      sub_18E22327C();
      if (v19)
      {
        v35 = sub_18E1C8C60(v34);
        sub_18E2F7AE4(v35);
        v31 = v40;
      }

      sub_18E1CA5D4();
    }

    while (!v20);
  }

  v36 = sub_18E1E6BB0();
  sub_18E290008(v36, v37);
  sub_18E1E6A20();

  return a2 & 1;
}

void LLMBundle.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E2F7B84();
  a23 = v25;
  a24 = v26;
  sub_18E1E2E88();
  LLMBundle.id.getter();
  sub_18E44EB4C();

  LLMBundle.resources.getter();
  sub_18E2F8188();
  if (v24)
  {
    do
    {
      sub_18E2F7CF8(v27, v28);
      v29 = sub_18E1CAD4C(&a10);
      v30(v29);
      sub_18E1C9934(&a10);
      sub_18E1D42A4();
      sub_18E44EB4C();

      sub_18E22365C();
    }

    while (!v31);

    sub_18E2232AC();
  }

  else
  {
    sub_18E2232AC();
  }
}

uint64_t sub_18E2E87A4()
{
  sub_18E1E2E88();
  sub_18E44F48C();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E2E883C(uint64_t a1, uint64_t a2)
{
  sub_18E1E33FC(a1, a2);
  v2(v4);
  return sub_18E44F4CC();
}

void AssetBackedLLMCompileDraftBundle.init(with:resources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  sub_18E207440();
  v15 = v14;
  v16 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v16);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1C8E58();
  sub_18E1E7430();
  sub_18E26C3FC(v13, v18);
  v22 = MEMORY[0x1E69E7CA0];
  if (!v61)
  {

    sub_18E1E8F44(&v60, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1E1700();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *&v60 = v40;
    *(&v60 + 1) = v39;
    goto LABEL_25;
  }

  if ((sub_18E2F7A44(v19, v20, v21, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F88E4();
  v23 = sub_18E1E3DF8();
  if (sub_18E32F0AC(v23, v24))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v25 = sub_18E44E83C();
    sub_18E1C95EC(v25, qword_1EAC7F560);
    sub_18E1E673C();

    v26 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E2F8704();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      a10 = v11;
      v56 = v12;
      v27 = sub_18E2246EC();
      sub_18E2F7FA0(v27);
      sub_18E2F8164(4.8149e-34);
      *(v12 + 4) = sub_18E1C9624(v22, v11, v28);
      sub_18E1E2274(&dword_18E1C1000, v29, v30, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E1C5B68();
    sub_18E26C3FC(v13, &v60);
    if (!v61)
    {

      sub_18E1E8F44(&v60, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    if ((sub_18E2F7A44(v31, v32, v33, MEMORY[0x1E69E6158]) & 1) == 0)
    {
      break;
    }

    sub_18E2F8524();
    sub_18E23335C();
    while (1)
    {
      if (v10 == v15)
      {

        goto LABEL_34;
      }

      sub_18E2F7F48();
      if (v34)
      {
        break;
      }

      sub_18E2F886C();
      v11 = v61;
      sub_18E1C8570(&v60, v61);
      v35(v11);
      sub_18E223708();
      v38 = v38 && v37 == v13;
      if (v38)
      {

LABEL_30:

        v45 = sub_18E221F94();
        sub_18E1C551C(v45, v46);
        v47 = sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
        if (sub_18E232FD8(&v60, v48, v47))
        {

          v58 = &type metadata for AssetBackedLLMDraftModelBase;
          v59 = sub_18E1E7BB4();
          sub_18E1C86E0();
          v49 = swift_allocObject();
          sub_18E2F79E4(v49);
          v50 = a10;

          sub_18E1E2F3C();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v56);
          if (v38)
          {
            sub_18E1E8F44(v56, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E221D40();
            sub_18E25E19C();
            v53 = sub_18E1D4B44();
            v54(v53);

            v50 = v56;
          }

          *v55 = v22;
          v55[1] = v50;
          sub_18E1C551C(&v57, (v55 + 2));
          goto LABEL_27;
        }

LABEL_34:

        sub_18E1E1700();
        sub_18E44EFFC();
        sub_18E2F7AD8();
        v51 = sub_18E1D0358();
        MEMORY[0x193ACC300](v51);
        v52 = sub_18E1E2000();
        MEMORY[0x193ACC300](v52);
        goto LABEL_26;
      }

      sub_18E1E7B78(v36);
      sub_18E1E2238();

      if (v11)
      {
        goto LABEL_30;
      }

      sub_18E2F7B58();
    }

    __break(1u);
LABEL_37:
    sub_18E1C7804(&qword_1EABE0CF8);
  }

LABEL_24:
  sub_18E1E1700();
  sub_18E44EFFC();
  sub_18E2F7AD8();
  sub_18E1E844C();
  sub_18E2F7CC8();
LABEL_25:
  sub_18E44E99C();
  sub_18E22449C();

  v41 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v41);
LABEL_26:

  v42 = sub_18E2AE554();
  v43 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v42);
  sub_18E1D7E28(v43, v44);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E8D88()
{
  sub_18E1C575C();
  v2 = *(v0 + 40);
  v3 = sub_18E228964(*(v0 + 48));
  sub_18E1E15F4(v3, v2);
  sub_18E1C5780();
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v15 = sub_18E220314(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v1(v15);
  sub_18E220AAC();
  sub_18E211EDC();
  v17 = sub_18E2F7F04(v16);
  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_18E2F79AC();
    sub_18E211EDC();
    v17 = sub_18E2F7F04(v30);
  }

  v19 = MEMORY[0x1EEE9AC00](v17);
  v27 = sub_18E228860(v19, v20, v21, v22, v23, v24, v25, v26, v32);
  v1(v27);
  sub_18E1DF2A8(v18, v5, &v34, v2, *(v33 + 8));
  v28 = sub_18E2232F4();
  v29(v28);
  sub_18E1C5544();
}

uint64_t sub_18E2E8EC4(uint64_t a1)
{
  v2 = sub_18E2F1638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E8F00(uint64_t a1)
{
  v2 = sub_18E2F1638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedLLMCompileDraftBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C57AC();
  v6 = sub_18E2706EC(&qword_1EABE2608, &qword_18E4AAF28);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C61D0();
  sub_18E1D5C08(v2);
  v8 = sub_18E2F1638();
  sub_18E221EAC(&type metadata for AssetBackedLLMCompileDraftBundle.CodingKeys, v9, v8);
  if (v0)
  {
    v19 = v2;
  }

  else
  {
    v10 = sub_18E1E63B4();
    sub_18E2706EC(v10, v11);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v12, v13, &qword_18E4AAF30, v14);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    v15 = sub_18E201890();
    sub_18E1CE9EC(v15, v16, v17, v18, v15);
    sub_18E1E7BB4();
    sub_18E1C86E0();
    v20 = swift_allocObject();
    v21 = sub_18E1E232C(v20);
    memcpy(v21, v22, 0xD8uLL);

    sub_18E232CB0();

    v23 = sub_18E44E54C();
    v24 = sub_18E1E3A14(v23);
    if (v25)
    {
      sub_18E1E8F44(v6, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60(v24);
      sub_18E234628();
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v19 = v1;
  }

  sub_18E1C9934(v19);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void AssetBackedLLMCompileDraftBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E37D0();
  sub_18E2706EC(&qword_1EABE2628, &qword_18E4AAF38);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E2C60();
  sub_18E1D60D8();
  v2 = sub_18E2F1638();
  sub_18E1E3288(&type metadata for AssetBackedLLMCompileDraftBundle.CodingKeys, v3, v2);
  sub_18E237074();
  AssetBackedLLMCompileDraftBundle.id.getter();
  sub_18E1CFA14();
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE2630);
  sub_18E1E1200();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  v6 = sub_18E2706EC(&qword_1EABE2558, &qword_18E4AAE78);
  if (!sub_18E224D34(v6, v7, v6, &type metadata for AssetBackedLLMDraftModelBase))
  {
    v10 = sub_18E1E8AE8();
    sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
    sub_18E1E19F0(v11, 46);
LABEL_5:
    v12 = sub_18E1E67D0();
    v13(v12);
    goto LABEL_6;
  }

  sub_18E200510();
  sub_18E1E3E68();
  sub_18E233478();
  sub_18E2122D0();
  sub_18E22452C();
  sub_18E44F35C();
  v8 = sub_18E1DD364();
  v9(v8);
  sub_18E2CF5A0(&v14);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E9484()
{
  sub_18E1C575C();
  sub_18E223ED8(v4, v5);
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_18E1E1FD8();
  sub_18E1C4EAC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  v11 = *(v0 + 40);
  sub_18E1C5040((v3 + 16), v11);
  v12(v11);
  sub_18E235A6C();
  v14 = v14 && v13 == 0xE700000000000000;
  if (v14)
  {

    goto LABEL_10;
  }

  sub_18E1D5EF4();
  sub_18E223B20(v15, v16, v17);
  sub_18E1E2238();

  if (v1)
  {
LABEL_10:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v18 = *(v3 + 40);
  sub_18E1C5040((v3 + 16), v18);
  v19(v18);
  sub_18E1D0274();
  sub_18E2F8058();
  sub_18E1E2414(17, v20, v21);

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E223F94();
  if (v22)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v18 = v44;
  }

  sub_18E1CA184();
  sub_18E1EA5D4();
  v23();
LABEL_11:
  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v18 + 16))
  {
    sub_18E2F87C4();
    sub_18E2F87AC();
    if (v7)
    {

      __break(1u);
      return;
    }

    sub_18E2F8794();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v24)
  {
    v25 = sub_18E1CF4F4();
    v26(v25);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v27 = sub_18E44E83C();
    sub_18E1C95EC(v27, qword_1ED6A9858);
    v28 = sub_18E216A78();
    (v2)(v28);
    v29 = sub_18E44E80C();
    v30 = sub_18E44EE0C();
    if (sub_18E2333E4(v30))
    {
      sub_18E2342D4();
      v31 = sub_18E220C80();
      sub_18E2F7F74(v31);
      sub_18E2217B8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v32 = sub_18E44F39C();
      sub_18E2F86EC(v32, v33);
      sub_18E233674();
      sub_18E243EAC();
      v34 = sub_18E209370();
      v35(v34);
      v36 = sub_18E1C5BFC();
      sub_18E1C9624(v36, v37, v38);
      sub_18E233674();
      *(v2 + 14) = v9;
      sub_18E1D81D8(&dword_18E1C1000, v39, v40, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E232B30();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v41 = sub_18E209370();
      v42(v41);
    }

    sub_18E2F877C();
    v43 = sub_18E1E3DF8();
    v9(v43);
  }

  sub_18E202D00();
  sub_18E1C5544();
}

void LLMCompileDraftBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E202C9C();
  v5 = v4;
  v6 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v6);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C8E58();
  sub_18E1E7430();
  sub_18E26C3FC(v3, v8);
  if (!*(&v57[1] + 1))
  {

    sub_18E1E8F44(v57, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1D442C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *&v57[0] = v35;
    *(&v57[0] + 1) = v34;
    goto LABEL_25;
  }

  if ((sub_18E1CC2D0(v9, v10, v11, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F88E4();
  v12 = sub_18E1E3DF8();
  if (sub_18E32F0AC(v12, v13))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v14 = sub_18E44E83C();
    sub_18E1C95EC(v14, qword_1EAC7F560);
    sub_18E1E673C();

    v15 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E2F8704();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v52 = v2;
      v16 = sub_18E2246EC();
      sub_18E2F7F80(v16);
      sub_18E2F8170(4.8149e-34);
      *(v2 + 4) = sub_18E1C9624(v1, v53, v17);
      sub_18E1E2274(&dword_18E1C1000, v18, v19, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E1C5B68();
    sub_18E26C3FC(v3, v57);
    sub_18E2F7FCC();
    if (!v23)
    {

      sub_18E1E8F44(v57, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    if ((sub_18E1CC2D0(v20, v21, v22, MEMORY[0x1E69E6158]) & 1) == 0)
    {
      break;
    }

    sub_18E2F84C4();
    sub_18E1E6B38();
    while (1)
    {
      if (v5 == v0)
      {

        goto LABEL_34;
      }

      sub_18E1E6934();
      if (v24)
      {
        break;
      }

      sub_18E2F8764();
      v25 = BYTE8(v57[1]);
      v26 = *&v57[2];
      sub_18E1E15F4(v57, *(&v57[1] + 1));
      v27 = sub_18E216870();
      v28(v27, v26);
      sub_18E223708();
      v31 = v31 && v30 == v3;
      if (v31)
      {

LABEL_30:

        v40 = sub_18E2407DC();
        sub_18E1C551C(v40, v41);
        v42 = sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
        if (sub_18E232FD8(v57, v43, v42))
        {

          v55 = &type metadata for LLMDraftModelBase;
          v56 = sub_18E216928();
          sub_18E220B24();
          v44 = swift_allocObject();
          v45 = sub_18E2F79A0(v44);
          memcpy(v45, v57, 0xF8uLL);
          v46 = v53;

          sub_18E1E2F3C();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v52);
          if (v31)
          {
            sub_18E1E8F44(v52, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E221D40();
            sub_18E25E19C();
            v49 = sub_18E1D4B44();
            v50(v49);

            v46 = v52;
          }

          *v51 = v1;
          v51[1] = v46;
          sub_18E1C551C(&v54, (v51 + 2));
          goto LABEL_27;
        }

LABEL_34:

        sub_18E1D442C();
        sub_18E44EFFC();
        sub_18E1E3D78();
        v47 = sub_18E1D0358();
        MEMORY[0x193ACC300](v47);
        v48 = sub_18E1E2000();
        MEMORY[0x193ACC300](v48);
        goto LABEL_26;
      }

      sub_18E1E7B78(v29);
      sub_18E1E2238();

      if (v25)
      {
        goto LABEL_30;
      }

      sub_18E1E1BB8();
    }

    __break(1u);
LABEL_37:
    sub_18E1C7804(&qword_1EABE0CF8);
  }

LABEL_24:
  sub_18E1D442C();
  sub_18E44EFFC();
  sub_18E1E3D78();
  sub_18E1E844C();
  sub_18E2F7CB0();
LABEL_25:
  sub_18E2F874C(v32, MEMORY[0x1E69E6158], v33, MEMORY[0x1E69E6168]);
  sub_18E22449C();

  v36 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v36);
LABEL_26:

  v37 = sub_18E2AE554();
  v38 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v37);
  sub_18E1D7E28(v38, v39);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E9C94()
{
  sub_18E1C575C();
  v2 = *(v0 + 40);
  v3 = sub_18E228964(*(v0 + 48));
  sub_18E1E15F4(v3, v2);
  sub_18E1C5780();
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v15 = sub_18E220314(v7, v8, v9, v10, v11, v12, v13, v14, v33);
  v1(v15);
  sub_18E220AAC();
  sub_18E2451D0();
  v17 = sub_18E2F7F04(v16);
  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_18E2F79AC();
    sub_18E2451D0();
    v17 = sub_18E2F7F04(v32);
  }

  v19 = MEMORY[0x1EEE9AC00](v17);
  v27 = sub_18E228860(v19, v20, v21, v22, v23, v24, v25, v26, v34);
  v1(v27);
  sub_18E1E1A80();
  sub_18E1DF2A8(v18, v5, v28, v2, v29);
  v30 = sub_18E2232F4();
  v31(v30);
  sub_18E1C5544();
}

uint64_t sub_18E2E9DCC()
{
  sub_18E1E2F2C();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (sub_18E1E3894(v1) & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_18E1D5DB4();
    if (v3 && v0 == v5)
    {

      return 1;
    }

    else
    {
      sub_18E23552C();
      sub_18E1CF3DC(v7, v8);
      sub_18E1E6A20();
      sub_18E232B64();
      if (v3)
      {
        return v9 + 1;
      }

      else
      {
        return v9;
      }
    }
  }
}

uint64_t sub_18E2E9E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_18E44F48C();
  a4(v8, v6);
  return sub_18E44F4CC();
}

uint64_t sub_18E2E9E8C(uint64_t a1)
{
  v2 = sub_18E2F16F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E9EC8(uint64_t a1)
{
  v2 = sub_18E2F16F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMCompileDraftBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C57AC();
  v6 = sub_18E2706EC(&qword_1EABE2638, &qword_18E4AAF40);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C61D0();
  sub_18E1D5C08(v2);
  v8 = sub_18E2F16F4();
  sub_18E221EAC(&type metadata for LLMCompileDraftBundle.CodingKeys, v9, v8);
  if (v0)
  {
    v19 = v2;
  }

  else
  {
    v10 = sub_18E1E63B4();
    sub_18E2706EC(v10, v11);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v12, v13, &qword_18E4AAF48, v14);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    v15 = sub_18E2CFD38();
    sub_18E1CE9EC(v15, v16, v17, v18, v15);
    sub_18E216928();
    sub_18E220B24();
    v20 = swift_allocObject();
    v21 = sub_18E1E232C(v20);
    memcpy(v21, v22, 0xF8uLL);

    sub_18E232CB0();

    v23 = sub_18E44E54C();
    v24 = sub_18E1E3A14(v23);
    if (v25)
    {
      sub_18E1E8F44(v6, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60(v24);
      sub_18E234628();
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v19 = v1;
  }

  sub_18E1C9934(v19);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void LLMCompileDraftBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E2706EC(&qword_1EABE2658, &qword_18E4AAF50);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E2C60();
  sub_18E1D60D8();
  v2 = sub_18E2F16F4();
  sub_18E1E3288(&type metadata for LLMCompileDraftBundle.CodingKeys, v3, v2);
  LLMCompileDraftBundle.id.getter();
  v15[0] = v16[0];
  v15[1] = v16[1];
  LOBYTE(v14[0]) = 0;
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE2660);
  sub_18E224E2C();
  sub_18E44F35C();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  v6 = sub_18E2706EC(&qword_1EABE25F8, &qword_18E4AAF18);
  if (!sub_18E2387D0(v16, v7, v6, &type metadata for LLMDraftModelBase))
  {
    v10 = sub_18E1E8AE8();
    sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
    sub_18E1E19F0(v11, 46);
LABEL_5:
    v12 = sub_18E1E67D0();
    v13(v12);
    goto LABEL_6;
  }

  memcpy(v15, v16, sizeof(v15));
  memcpy(v14, v16, sizeof(v14));
  sub_18E233478();
  sub_18E2CF5D0();
  sub_18E22452C();
  sub_18E44F35C();
  v8 = sub_18E1DD364();
  v9(v8);
  sub_18E2CF624(v15);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2EA3C4()
{
  sub_18E1E2E88();
  sub_18E44F48C();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E2EA45C(uint64_t a1, uint64_t a2)
{
  sub_18E1E33FC(a1, a2);
  v2(v4);
  return sub_18E44F4CC();
}

void AssetBackedLLMDraftBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F7FD8();
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E2352F4();
  sub_18E1E7430();
  sub_18E26C3FC(v2, v5);
  v9 = MEMORY[0x1E69E7CA0];
  if (!v84)
  {

    sub_18E1E8F44(v83, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1CC400();
    sub_18E44EFFC();

    sub_18E1C8E68();
    sub_18E2F7D28(v27);
LABEL_25:
    sub_18E216B20(v28, MEMORY[0x1E69E6158], v29, MEMORY[0x1E69E6168]);
    sub_18E22449C();

    v30 = sub_18E2F7D34();
LABEL_26:
    MEMORY[0x193ACC300](v30, v9);

    sub_18E223E34();
LABEL_27:
    v31 = sub_18E2AE554();
    v32 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v31);
    sub_18E1D7E28(v32, v33);
    goto LABEL_28;
  }

  if ((sub_18E1E3488(v6, v7, v8, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_21;
  }

  v76 = v0;
  v10 = v82;
  type metadata accessor for Utils();
  v77 = v81;
  v11 = sub_18E1E1B1C();
  if (sub_18E32F0AC(v11, v12))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v13 = sub_18E44E83C();
    sub_18E1C95EC(v13, qword_1EAC7F560);
    sub_18E2F7964();

    v14 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E216B90();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v15 = sub_18E223E58();
      sub_18E2F7D4C(v15);
      *(v1 + 4) = sub_18E2F8384(4.8149e-34);
      sub_18E1D5F48(&dword_18E1C1000, v16, v17, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E238D04();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E1D49B0();
    sub_18E2F7D70();
    sub_18E26C3FC(v2, v18);
    v9 = MEMORY[0x1E69E7CA0];
    if (!v84)
    {

      sub_18E1E8F44(v83, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_24:
      sub_18E1CC400();
      sub_18E44EFFC();
      sub_18E1D44E0();
      sub_18E1E844C();
      sub_18E1E1914();
      v28 = MEMORY[0x193ACC300]();
      goto LABEL_25;
    }

    if ((sub_18E1E3488(v19, v20, v21, MEMORY[0x1E69E6158]) & 1) == 0)
    {

      goto LABEL_24;
    }

    v75 = v10;
    v73 = v1;
    v9 = v82;
    sub_18E232D04();
    v74 = v1;
LABEL_11:
    sub_18E24177C();
    if (v26)
    {
      goto LABEL_42;
    }

    sub_18E223464();
    if (!v22)
    {
      break;
    }

    __break(1u);
LABEL_57:
    sub_18E1C7804(&qword_1EABE0CF8);
  }

  sub_18E220C68();
  v10 = v84;
  sub_18E1C8570(v83, v84);
  v23(v10);
  sub_18E220298();
  v26 = v26 && v25 == v82;
  if (!v26)
  {
    sub_18E221494(v24);
    sub_18E201F20();
    if (v10)
    {
      goto LABEL_30;
    }

    sub_18E1E3BE0(v83);
    goto LABEL_11;
  }

LABEL_30:
  v34 = sub_18E1E1C30();
  sub_18E1C551C(v34, v35);
  v36 = sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
  v37 = sub_18E1E1C30();
  if ((sub_18E2F7DB8(v37, v38, v39, v40) & 1) == 0)
  {
LABEL_42:

    sub_18E1CC400();
    sub_18E44EFFC();

    sub_18E1C8E68();
    sub_18E2F7D28(v53);
    v30 = sub_18E2F7D40();
    goto LABEL_26;
  }

  v41 = sub_18E1E84CC();
  memcpy(v41, v42, 0xD8uLL);
  sub_18E1C5B68();
  sub_18E2F86BC();
  if (!v79)
  {

    sub_18E2121D8(&v81);

    sub_18E1E8F44(v78, &qword_1EABE3B70, &qword_18E4AAB80);
    goto LABEL_45;
  }

  v43 = sub_18E1E1A40();
  v47 = v75;
  if ((sub_18E223680(v43, v44, v45, v46) & 1) == 0)
  {

    sub_18E2121D8(&v81);

LABEL_45:
    sub_18E223A3C();
    sub_18E44EFFC();
    sub_18E221770();
    v54 = sub_18E1D0358();
    v55 = MEMORY[0x193ACC300](v54);
    sub_18E223530(v55, MEMORY[0x1E69E6158], v56, MEMORY[0x1E69E6168]);
    sub_18E22449C();

    v57 = sub_18E1E884C();
LABEL_54:
    MEMORY[0x193ACC300](v57, v9);

    goto LABEL_27;
  }

  v9 = v80;
  while (1)
  {
    sub_18E24177C();
    if (v26)
    {

      sub_18E2121D8(&v81);

LABEL_53:
      sub_18E223A3C();
      sub_18E44EFFC();

      sub_18E1C8E68();
      v78[0] = v68 + 24;
      v78[1] = v67;
      v57 = sub_18E1E861C();
      goto LABEL_54;
    }

    sub_18E223464();
    if (v22)
    {
      __break(1u);
      return;
    }

    sub_18E1E8C38(v74, v78);
    v48 = v79;
    sub_18E1C8570(v78, v79);
    v49(v48);
    sub_18E220C28();
    if (v26 && v51 == v9)
    {
      break;
    }

    sub_18E1E2878(v50);
    sub_18E1E2238();

    if (v48)
    {
      goto LABEL_48;
    }

    sub_18E2336EC(v78);
  }

LABEL_48:

  v58 = sub_18E1E2920();
  sub_18E1C551C(v58, v59);
  v60 = sub_18E1E2920();
  if ((sub_18E2235B8(v60, v61, v36) & 1) == 0)
  {

    sub_18E2121D8(&v81);
    goto LABEL_53;
  }

  sub_18E1E3434();
  sub_18E1C86E0();
  v62 = swift_allocObject();
  sub_18E1E3B8C(v62);
  sub_18E1E7BB4();
  sub_18E1C86E0();
  v63 = swift_allocObject();
  v64 = sub_18E1E9C70(v63);
  memcpy(v64, v65, 0xD8uLL);

  v66 = v77;
  sub_18E44E50C();
  sub_18E44E54C();
  sub_18E1D4C60(v76);
  if (v26)
  {

    sub_18E1E8F44(v76, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    v66 = sub_18E44E49C();
    v70 = v69;

    sub_18E25E19C();
    v71 = sub_18E1CFFC0();
    v72(v71);

    v47 = v70;
  }

  *v73 = v66;
  v73[1] = v47;
  sub_18E23492C();
LABEL_28:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2EAC00()
{
  sub_18E1C575C();
  v2 = sub_18E228964(v0[6]);
  sub_18E221834(v2);
  sub_18E1CF2D8();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v12 = sub_18E1D6328(v4, v5, v6, v7, v8, v9, v10, v11, v52[0]);
  (v1)(v12);
  sub_18E220AAC();
  sub_18E211EDC();
  sub_18E235294(v13);
  if (v14)
  {
    sub_18E1D4370();
    sub_18E211EDC();
    sub_18E216B58(v50);
  }

  sub_18E237A38();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_18E2112EC();
  (v1)(v16);
  v17 = sub_18E1C5820();
  sub_18E1DF2A8(v17, v18, v19, v20, v21);
  v22 = sub_18E2167D8();
  v23(v22);
  v24 = v0[10];
  v52[1] = v0[11];
  sub_18E221834(v0 + 7);
  v52[2] = v52;
  sub_18E1CF2D8();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v34 = sub_18E1D4D58(v26, v27, v28, v29, v30, v31, v32, v33, v52[0]);
  (v1)(v34);
  sub_18E1E597C();
  if (v14)
  {
    sub_18E1C5068();
    sub_18E211EDC();
    sub_18E216B58(v51);
  }

  sub_18E235258();
  v36 = MEMORY[0x1EEE9AC00](v35);
  sub_18E1CEAD0(v36, v37, v38, v39, v40, v41, v42, v43, v52[0]);
  sub_18E2F80D4();
  v1();
  v44 = sub_18E247014();
  sub_18E1DF2A8(v44, v45, v46, v24, v47);
  v48 = sub_18E223F60();
  v49(v48, v24);
  sub_18E220284();
  sub_18E1C5544();
}

uint64_t sub_18E2EAE04(uint64_t a1)
{
  v2 = sub_18E2F17B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2EAE40(uint64_t a1)
{
  v2 = sub_18E2F17B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedLLMDraftBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E2614(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C8E58();
  sub_18E2706EC(&qword_1EABE2668, &qword_18E4AAF58);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1CAE74();
  sub_18E1C975C();
  v6 = sub_18E2F17B0();
  sub_18E1CF90C(&type metadata for AssetBackedLLMDraftBundle.CodingKeys, v7, v6);
  if (!v1)
  {
    v8 = sub_18E1E63B4();
    sub_18E2706EC(v8, v9);
    sub_18E240610();
    sub_18E1C6B74();
    sub_18E1E1638(v10, v11, &qword_18E4AAF60, v12);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    sub_18E1D5E94();
    sub_18E1E9CB4();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E242C9C();
    sub_18E23386C();
    sub_18E1E33AC();
    sub_18E201890();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E1E3434();
    sub_18E1C86E0();
    v13 = swift_allocObject();
    sub_18E1CFEE4(v13);
    sub_18E1E7BB4();
    sub_18E1C86E0();
    v14 = swift_allocObject();
    v15 = sub_18E1D001C(v14);
    memcpy(v15, v16, 0xD8uLL);

    sub_18E22EA6C();

    sub_18E44E54C();
    sub_18E1E6510(&qword_18E4AAF60);
    if (v17)
    {
      v18 = sub_18E1CBE2C();
      v19(v18);
      sub_18E1E8F44(&qword_18E4AAF60, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1FF2C8();
    }

    else
    {
      v20 = sub_18E44E49C();
      v22 = sub_18E1E2B98(v20, v21);
      v23(v22);
      sub_18E212008();
      v24 = sub_18E202CF4();
      v25(v24);

      sub_18E1E6458();
    }

    sub_18E1E195C();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedLLMDraftBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  sub_18E2706EC(&qword_1EABE2688, &qword_18E4AAF68);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E88C0();
  sub_18E1D60D8();
  v2 = sub_18E2F17B0();
  sub_18E1E394C(&type metadata for AssetBackedLLMDraftBundle.CodingKeys, v3, v2);
  sub_18E223988();
  AssetBackedLLMDraftBundle.id.getter();
  sub_18E1CD638();
  v21[256] = 0;
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE2690);
  sub_18E1EA540();
  if (v0)
  {

    v6 = sub_18E1E3D10();
    v7(v6);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    v8 = sub_18E2706EC(&qword_1EABE2528, &qword_18E4AAE48);
    if (sub_18E1E69D8(v8, v9, v8, &type metadata for AssetBackedTokenizerBase))
    {
      sub_18E1E851C();
      sub_18E224D5C();
      sub_18E1E20AC();
      sub_18E212184();
      sub_18E220CD8();
      sub_18E2121D8(&v22);
      sub_18E238EA8();
      v15 = sub_18E2706EC(&qword_1EABE2558, &qword_18E4AAE78);
      if (sub_18E223580(v15, v16, v15, &type metadata for AssetBackedLLMDraftModelBase))
      {
        sub_18E1E1400();
        sub_18E224DA8();
        sub_18E223E10();
        sub_18E2122D0();
        sub_18E224F80();
        v17 = sub_18E1E6C0C();
        v18(v17);
        sub_18E2CF5A0(v21);
        goto LABEL_7;
      }

      v19 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v19);
      sub_18E244FB8();
      v12 = v20 | 1;
    }

    else
    {
      v10 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
      sub_18E244FB8();
    }

    sub_18E2231EC(v11, v12);
    v13 = sub_18E1E6C0C();
    v14(v13);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2EB508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, void *a5@<X8>)
{
  v7 = sub_18E22897C(a1, a2, a3, a5);
  v8(v7);

  return a4(v5, v6 + 56);
}

void LLMDraftBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F7FEC();
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v2);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C61D0();
  sub_18E1E7430();
  sub_18E26C3FC(v1, v4);
  v6 = MEMORY[0x1E69E7CA0];
  if (!*&v64[24])
  {

    sub_18E1E8F44(v64, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E22024C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *v64 = v25;
    *&v64[8] = v26;
LABEL_25:
    sub_18E216B20(v23, MEMORY[0x1E69E6158], v24, MEMORY[0x1E69E6168]);
    sub_18E22449C();

    v29 = v0;
LABEL_26:
    MEMORY[0x193ACC300](v29, v6);

LABEL_27:
    v30 = sub_18E2AE554();
    v31 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v30);
    sub_18E1CFAB8(v31, v32);
    goto LABEL_28;
  }

  if ((sub_18E22169C(v63, v64, v5, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_21;
  }

  v7 = v63[0];
  v8 = v63[1];
  type metadata accessor for Utils();
  v9 = sub_18E1E673C();
  if (sub_18E32F0AC(v9, v8))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v10 = sub_18E44E83C();
    sub_18E1C95EC(v10, qword_1EAC7F560);
    sub_18E1E6C9C();

    v11 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      *v64 = sub_18E223E58();
      *v7 = 136315138;
      *(v7 + 4) = sub_18E1C9624(v7, v8, v64);
      sub_18E1D5F48(&dword_18E1C1000, v12, v13, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v6 = MEMORY[0x1E69E7CA0];
LABEL_8:
    sub_18E1D49B0();
    sub_18E2F7D70();
    sub_18E26C3FC(v1, v14);
    if (!*&v64[24])
    {

      sub_18E1E8F44(v64, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_24:
      sub_18E22024C();
      sub_18E44EFFC();
      sub_18E1E844C();
      v23 = MEMORY[0x193ACC300](v27 + 29, v28 | 0x8000000000000000);
      goto LABEL_25;
    }

    if ((sub_18E22169C(v63, v64, v15, MEMORY[0x1E69E6158]) & 1) == 0)
    {

      goto LABEL_24;
    }

    v8 = 0;
    v16 = v63[0];
    v6 = v63[1];
    sub_18E20196C();
LABEL_11:
    sub_18E220EA4();
    if (v22)
    {
      goto LABEL_43;
    }

    sub_18E1E1888();
    if (!v17)
    {
      break;
    }

    __break(1u);
LABEL_58:
    sub_18E1C7804(&qword_1EABE0CF8);
  }

  sub_18E1E8C38(v7, v64);
  v0 = *&v64[32];
  sub_18E1E15F4(v64, *&v64[24]);
  v18 = sub_18E1CD91C();
  v19(v18);
  sub_18E220298();
  v22 = v22 && v21 == v6;
  if (!v22)
  {
    sub_18E221494(v20);
    sub_18E1E1F80();

    if (v0)
    {
      goto LABEL_31;
    }

    sub_18E207AC8(v64);
    goto LABEL_11;
  }

LABEL_31:
  sub_18E1C551C(v64, v65);
  sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  if ((sub_18E2F8884(v64, v65, v33, &type metadata for TokenizerBase) & 1) == 0)
  {
LABEL_43:

    sub_18E22024C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *v64 = v44 + 20;
    *&v64[8] = v45;
    v29 = v16;
    goto LABEL_26;
  }

  memcpy(v63, v64, sizeof(v63));
  sub_18E1C5B68();
  sub_18E2F86BC();
  if (!v60)
  {

    sub_18E2CF1A4(v63);

    sub_18E1E8F44(&v59, &qword_1EABE3B70, &qword_18E4AAB80);
    goto LABEL_46;
  }

  if ((sub_18E223680(v62, &v59, v34, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    sub_18E2CF1A4(v63);

LABEL_46:
    sub_18E223A3C();
    sub_18E44EFFC();
    sub_18E221770();
    v46 = sub_18E1D0358();
    v47 = MEMORY[0x193ACC300](v46);
    sub_18E223530(v47, MEMORY[0x1E69E6158], v48, MEMORY[0x1E69E6168]);
    sub_18E22449C();

    v49 = sub_18E1E884C();
LABEL_55:
    MEMORY[0x193ACC300](v49, v6);

    goto LABEL_27;
  }

  v35 = 0;
  v6 = v62[1];
  while (1)
  {
    sub_18E223270();
    if (v22)
    {

      sub_18E2CF1A4(v63);

LABEL_54:
      sub_18E223A3C();
      sub_18E44EFFC();

      sub_18E1C8E68();
      *&v59 = v56 + 24;
      *(&v59 + 1) = v55;
      v49 = sub_18E1E861C();
      goto LABEL_55;
    }

    sub_18E224CBC();
    if (v17)
    {
      __break(1u);
      return;
    }

    sub_18E1E8C38(v36, &v59);
    v37 = v60;
    v38 = v61;
    v39 = sub_18E1E1D24(&v59);
    v40(v39);
    sub_18E220C28();
    if (v22 && v42 == v6)
    {
      break;
    }

    sub_18E1E2878(v41);
    sub_18E1E1F80();

    if (v37)
    {
      goto LABEL_49;
    }

    sub_18E1C9934(&v59);
    ++v35;
  }

LABEL_49:

  sub_18E1C551C(&v59, v62);
  if ((sub_18E22086C(&v59, v62) & 1) == 0)
  {

    sub_18E2CF1A4(v63);
    goto LABEL_54;
  }

  sub_18E1E28CC();
  sub_18E220B24();
  v50 = swift_allocObject();
  v51 = sub_18E1E8338(v50);
  memcpy(v51, v63, 0xF8uLL);
  sub_18E216928();
  sub_18E220B24();
  v52 = swift_allocObject();
  v53 = sub_18E1E9C70(v52);
  memcpy(v53, v54, 0xF8uLL);
  sub_18E1E19CC();
  sub_18E223960();
  sub_18E44E54C();
  sub_18E1D4C60(v38);
  if (v22)
  {

    sub_18E1E8F44(v38, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    sub_18E44E49C();
    sub_18E2F7AB0();
    sub_18E25E19C();
    v57 = sub_18E1CBE3C();
    v58(v57);
  }

  sub_18E1E1B50();
  sub_18E23492C();
LABEL_28:
  sub_18E1E86A4();
  sub_18E1C6650();
}

void sub_18E2EBCA4()
{
  sub_18E1C575C();
  v2 = sub_18E228964(v0[6]);
  sub_18E221834(v2);
  sub_18E1CF2D8();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v12 = sub_18E1D6328(v4, v5, v6, v7, v8, v9, v10, v11, v52[0]);
  (v1)(v12);
  sub_18E220AAC();
  sub_18E2451D0();
  sub_18E235294(v13);
  if (v14)
  {
    sub_18E1D4370();
    sub_18E2451D0();
    sub_18E216B58(v50);
  }

  sub_18E237A38();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_18E2112EC();
  (v1)(v16);
  v17 = sub_18E1C5820();
  sub_18E1DF2A8(v17, v18, v19, v20, v21);
  v22 = sub_18E2167D8();
  v23(v22);
  v24 = v0[10];
  v52[1] = v0[11];
  sub_18E221834(v0 + 7);
  v52[2] = v52;
  sub_18E1CF2D8();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v34 = sub_18E1D4D58(v26, v27, v28, v29, v30, v31, v32, v33, v52[0]);
  (v1)(v34);
  sub_18E1E597C();
  if (v14)
  {
    sub_18E1C5068();
    sub_18E2451D0();
    sub_18E216B58(v51);
  }

  sub_18E235258();
  v36 = MEMORY[0x1EEE9AC00](v35);
  sub_18E1CEAD0(v36, v37, v38, v39, v40, v41, v42, v43, v52[0]);
  sub_18E2F80D4();
  v1();
  sub_18E1E1A80();
  v44 = sub_18E1CF9A0();
  sub_18E1DF2A8(v44, v45, v46, v24, v47);
  v48 = sub_18E223F60();
  v49(v48, v24);
  sub_18E220284();
  sub_18E1C5544();
}

uint64_t sub_18E2EBEB0()
{
  sub_18E1E2F2C();
  v4 = v4 && v3 == 0xE200000000000000;
  if (v4 || (sub_18E1E3894(v2) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = v1 == sub_18E1D49B0() && v0 == v6;
    if (v7 || (sub_18E2F7D70(), (sub_18E1CF3DC(v8, v9) & 1) != 0))
    {

      return 1;
    }

    else
    {
      sub_18E1D5DB4();
      if (v4 && v0 == v10)
      {

        return 2;
      }

      else
      {
        sub_18E23552C();
        sub_18E1CF3DC(v12, v13);
        sub_18E1E6A20();
        sub_18E228220();
        if (v4)
        {
          return v14 + 1;
        }

        else
        {
          return v14;
        }
      }
    }
  }
}

uint64_t sub_18E2EBF58(uint64_t a1)
{
  v2 = sub_18E2F186C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2EBF94(uint64_t a1)
{
  v2 = sub_18E2F186C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMDraftBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E2614(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C8E58();
  sub_18E2706EC(&qword_1EABE2698, &qword_18E4AAF70);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1CAE74();
  sub_18E1C975C();
  v6 = sub_18E2F186C();
  sub_18E1CF90C(&type metadata for LLMDraftBundle.CodingKeys, v7, v6);
  if (!v1)
  {
    v8 = sub_18E1E63B4();
    sub_18E2706EC(v8, v9);
    sub_18E1C6B74();
    sub_18E1E1638(v10, v11, &qword_18E4AAF78, v12);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    v13 = v28[1];
    sub_18E1E1F48();
    sub_18E2CFC90();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E242C9C();
    memcpy(v27, v28, sizeof(v27));
    sub_18E1E33AC();
    sub_18E2CFD38();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E1E28CC();
    sub_18E220B24();
    v26 = swift_allocObject();
    memcpy((v26 + 16), v27, 0xF8uLL);
    sub_18E216928();
    sub_18E220B24();
    v14 = swift_allocObject();
    v15 = sub_18E1D001C(v14);
    memcpy(v15, v16, 0xF8uLL);

    sub_18E22EA6C();

    sub_18E44E54C();
    sub_18E1E6510(v13);
    if (v17)
    {
      v18 = sub_18E1CBE2C();
      v19(v18);
      sub_18E1E8F44(v13, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1FF2C8();
    }

    else
    {
      v20 = sub_18E44E49C();
      v22 = sub_18E1E2B98(v20, v21);
      v23(v22);
      sub_18E212008();
      v24 = sub_18E202CF4();
      v25(v24);

      sub_18E1E6458();
    }

    sub_18E1E195C();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void LLMDraftBundle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  sub_18E1D848C();
  sub_18E2706EC(&qword_1EABE26B8, &qword_18E4AAF80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1E88C0();
  sub_18E1D60D8();
  v12 = sub_18E2F186C();
  sub_18E1E394C(&type metadata for LLMDraftBundle.CodingKeys, v13, v12);
  LLMDraftBundle.id.getter();
  v33[0] = v34[0];
  v33[1] = v34[1];
  v32[0] = 0;
  v14 = sub_18E1E33F0();
  sub_18E2706EC(v14, v15);
  sub_18E1C828C(&qword_1EABE26C0);
  sub_18E44F35C();
  if (a10)
  {

    v16 = sub_18E1E3D10();
    v17(v16);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    v18 = sub_18E2706EC(&qword_1EABE25C8, &qword_18E4AAEE8);
    if (sub_18E2387D0(v34, v19, v18, &type metadata for TokenizerBase))
    {
      memcpy(v33, v34, sizeof(v33));
      memcpy(v32, v34, sizeof(v32));
      v30[0] = 1;
      sub_18E2CF150();
      sub_18E44F35C();
      sub_18E2CF1A4(v33);
      sub_18E1E8C38(v10 + 56, &v31);
      sub_18E2706EC(&qword_1EABE25F8, &qword_18E4AAF18);
      if (swift_dynamicCast())
      {
        memcpy(v30, v32, sizeof(v30));
        memcpy(v29, v32, sizeof(v29));
        sub_18E223E10();
        sub_18E2CF5D0();
        sub_18E224F80();
        v25 = sub_18E1E6C0C();
        v26(v25);
        sub_18E2CF624(v30);
        goto LABEL_7;
      }

      v27 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v27);
      sub_18E244FB8();
      v22 = v28 | 1;
    }

    else
    {
      v20 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v20);
      sub_18E244FB8();
    }

    sub_18E2231EC(v21, v22);
    v23 = sub_18E1E6C0C();
    v24(v23);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedDiffusionBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F8014();
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v5);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E2352F4();
  sub_18E1E7430();
  sub_18E26C3FC(v4, v7);
  v11 = MEMORY[0x1E69E7CA0];
  if (!v71)
  {

    sub_18E1E8F44(v70, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E21D118();
    sub_18E44EFFC();

    sub_18E1C8E68();
    sub_18E1E6CD0(v28);
    goto LABEL_25;
  }

  if ((sub_18E240914(v8, v9, v10, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F8404();
  if ((sub_18E2F8504() & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
LABEL_58:
      sub_18E1C7804(&qword_1EABE0CF8);
    }

    v12 = sub_18E44E83C();
    sub_18E1CE8B4(v12, qword_1EAC7F560);

    v13 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v14 = sub_18E223E58();
      sub_18E2F7DF4(v14);
      sub_18E2F7F68(4.8149e-34);
      *(v0 + 4) = sub_18E1C9624(v66, v1, v15);
      sub_18E1D5F48(&dword_18E1C1000, v16, v17, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1C9934(v2);
      v18 = sub_18E1D1964();
      MEMORY[0x193ACD400](v18);
      sub_18E238D04();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  v19 = sub_18E1CC4E4();
  sub_18E211F98(v19);
  v11 = MEMORY[0x1E69E7CA0];
  if (v71)
  {
    if (sub_18E240914(v20, v21, v22, MEMORY[0x1E69E6158]))
    {
      sub_18E221D64();
      while (1)
      {
        sub_18E24177C();
        if (v27)
        {
          goto LABEL_41;
        }

        sub_18E228904();
        if (v23)
        {
          __break(1u);
          goto LABEL_58;
        }

        sub_18E2F8584();
        v1 = v71;
        sub_18E1C8570(v70, v71);
        v24(v1);
        sub_18E223708();
        v27 = v27 && v26 == v11;
        if (v27)
        {
          break;
        }

        sub_18E1E1574(v25);
        sub_18E1CF9C4();

        if (v1)
        {
          goto LABEL_29;
        }

        sub_18E1E3BE0(v70);
      }

LABEL_29:
      v36 = sub_18E216A00();
      sub_18E1C551C(v36, v37);
      v38 = sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
      v39 = sub_18E216A00();
      if ((sub_18E2235B8(v39, v40, v38) & 1) == 0)
      {
LABEL_41:

        sub_18E21D118();
        sub_18E44EFFC();

        sub_18E1C8E68();
        v32 = sub_18E1D0468(v50);
        goto LABEL_26;
      }

      v41 = sub_18E1E6960();
      memcpy(v41, v42, 0xD8uLL);
      sub_18E2233C0();
      sub_18E2F7BF0();

      if (v67[3])
      {
        sub_18E2F8238();
        v43 = v66;
        if (sub_18E2F7C18())
        {
          sub_18E2201FC();
          while (1)
          {
            sub_18E24177C();
            if (v27)
            {

              sub_18E1E01D0(v68);
              goto LABEL_50;
            }

            sub_18E228904();
            if (v23)
            {
              __break(1u);
              return;
            }

            sub_18E1E8C38(v44, v68);
            v45 = v69;
            sub_18E1C8570(v68, v69);
            v46(v45);
            sub_18E223708();
            if (v27 && v48 == v11)
            {

              goto LABEL_47;
            }

            sub_18E1E1574(v47);
            sub_18E1E2238();

            if (v45)
            {
              break;
            }

            sub_18E1C9934(v68);
            ++v38;
          }

LABEL_47:

          sub_18E2F8914();
          v51 = sub_18E2F822C();
          if ((sub_18E2F868C(v51, v52, v53, v54) & 1) == 0)
          {
            goto LABEL_49;
          }

          sub_18E220A28();
          nullsub_1();
          sub_18E2F7BD4();
          goto LABEL_50;
        }
      }

      else
      {

        sub_18E1E8F44(v67, &qword_1EABE3B70, &qword_18E4AAB80);
        v43 = v66;
      }

LABEL_49:
      sub_18E1E01D0(v68);
LABEL_50:
      sub_18E232D9C();
      sub_18E1C86E0();
      v55 = swift_allocObject();
      v56 = sub_18E1E8590(v55);
      sub_18E22026C(v56);
      sub_18E2236A4();
      sub_18E221728(v67);
      if (v27)
      {
        v59 = 0;
        v57 = 0;
      }

      else
      {
        v57 = sub_18E232C4C();
        sub_18E1C86E0();
        v58 = swift_allocObject();
        sub_18E223730(v58);
        v59 = &type metadata for AssetBackedDiffusionAdapterBase;
      }

      sub_18E1E19CC();
      sub_18E2F8564();
      v60 = sub_18E44E54C();
      sub_18E220124(v3, 1, v60);
      if (v27)
      {

        sub_18E1E8F44(v3, &qword_1EABE2FE0, &qword_18E49CE00);
      }

      else
      {
        v43 = sub_18E44E49C();
        v62 = v61;

        sub_18E1CE910();
        v63 = sub_18E1D5F00();
        v64(v63);

        v38 = v62;
      }

      *v65 = v43;
      v65[1] = v38;
      sub_18E2F7B2C();
      v65[9] = 0;
      v65[10] = v59;
      v65[11] = v57;
      goto LABEL_27;
    }
  }

  else
  {

    sub_18E1E8F44(v70, &qword_1EABE3B70, &qword_18E4AAB80);
  }

  sub_18E21D118();
  sub_18E44EFFC();
  sub_18E2F7980();
  v31 = sub_18E1D0358();
  v29 = MEMORY[0x193ACC300](v31);
LABEL_25:
  sub_18E2F8734(v29, MEMORY[0x1E69E6158], v30, MEMORY[0x1E69E6168]);
  sub_18E22449C();

  v32 = sub_18E1E81A8();
LABEL_26:
  MEMORY[0x193ACC300](v32, v11);

  v33 = sub_18E2F892C();
  v34 = sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v33);
  sub_18E1D7E28(v34, v35);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}