uint64_t sub_24DD97A98@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetProfileInfo_ResponseContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD97AC8()
{
  sub_24DDE3224();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD97B00()
{
  sub_24DDE3224();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void sub_24DD97B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_597();
  OUTLINED_FUNCTION_267(v3);
  v5 = *(v4 + 32);
  v6 = *(v4 + 56);
  OUTLINED_FUNCTION_1282();
  v14 = v13[4];
  v15 = v13[6];
  v16 = v13[7];
  if (v17)
  {
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    OUTLINED_FUNCTION_543();
    if (v18)
    {
      goto LABEL_21;
    }
  }

  if (!v8)
  {
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_14:
    if (v5 == 1)
    {
      v75 = v12;
      v23 = OUTLINED_FUNCTION_176();
      sub_24DD7639C(v23, v24, v25, v26);
      if (v14 == 1)
      {
        OUTLINED_FUNCTION_784();
        OUTLINED_FUNCTION_630();
        sub_24DD7639C(v27, v28, v29, v30);
        v31 = OUTLINED_FUNCTION_176();
        sub_24DD763E4(v31, v32, v33, v34);
LABEL_23:
        if (v6 && v16)
        {

          v72 = OUTLINED_FUNCTION_393();
          v75(v72);
          OUTLINED_FUNCTION_1305();
        }

        goto LABEL_21;
      }

      OUTLINED_FUNCTION_584();
      sub_24DD7639C(v47, v48, v49, v15);
    }

    else
    {
      if (v14 != 1)
      {
        v75 = v12;
        v73 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)();
        OUTLINED_FUNCTION_252();
        sub_24DD7639C(v57, v58, v59, v60);
        OUTLINED_FUNCTION_584();
        sub_24DD7639C(v61, v62, v63, v15);
        OUTLINED_FUNCTION_252();
        sub_24DD7639C(v64, v65, v66, v67);

        OUTLINED_FUNCTION_252();
        sub_24DD763E4(v68, v69, v70, v71);
        if ((v73 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      OUTLINED_FUNCTION_252();
      sub_24DD7639C(v35, v36, v37, v38);
      OUTLINED_FUNCTION_784();
      OUTLINED_FUNCTION_630();
      sub_24DD7639C(v39, v40, v41, v42);
      OUTLINED_FUNCTION_252();
      sub_24DD7639C(v43, v44, v45, v46);
    }

    OUTLINED_FUNCTION_252();
    sub_24DD763E4(v50, v51, v52, v53);
    OUTLINED_FUNCTION_584();
    sub_24DD763E4(v54, v55, v56, v15);
    goto LABEL_21;
  }

  if (v10)
  {
    if (v7 == v9 && v8 == v10)
    {
      goto LABEL_14;
    }

    v74 = v16;
    v20 = v6;
    v21 = v12;
    v22 = sub_24DE22CA0();
    v12 = v21;
    v6 = v20;
    v16 = v74;
    if (v22)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_586();
}

void Components.Schemas.Profile_GetProfileInfo_ResponseContent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2BE8, &qword_24DE23220);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_111();
  sub_24DDE3224();
  OUTLINED_FUNCTION_314();
  sub_24DE22D50();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_488();
  sub_24DE22C30();
  if (!v8)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_141();
    sub_24DD87138();
    OUTLINED_FUNCTION_110();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_292();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2BF8, &qword_24DE23228);
    sub_24DDE3278();
    OUTLINED_FUNCTION_194();
    OUTLINED_FUNCTION_190();
    sub_24DE22C20();
  }

  v6 = OUTLINED_FUNCTION_180();
  v7(v6);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Profile_GetProfileInfo_ResponseContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2C10, &qword_24DE23230);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_168();
  sub_24DDE3224();
  OUTLINED_FUNCTION_233();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_93();
    v8 = sub_24DE22B80();
    OUTLINED_FUNCTION_212(v8);
    v20[0] = v9;
    OUTLINED_FUNCTION_93();
    v10 = sub_24DE22B40();
    OUTLINED_FUNCTION_776(v10, v11);
    OUTLINED_FUNCTION_224();
    sub_24DE22B70();
    OUTLINED_FUNCTION_824();
    v12 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v12, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2BF8, &qword_24DE23228);
    OUTLINED_FUNCTION_493();
    sub_24DDE3380();
    OUTLINED_FUNCTION_144();
    v16 = OUTLINED_FUNCTION_124();
    v17(v16);
    v18 = OUTLINED_FUNCTION_14();
    sub_24DDE3458(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_40();
  }

  sub_24DDE3350(v20);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.SetProfileSettings_Request.privacySettings.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_24DDE3490(v2, v3);
}

__n128 Components.Schemas.SetProfileSettings_Request.privacySettings.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_24DDE34E4(*v1, *(v1 + 8));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t Components.Schemas.SetProfileSettings_Request.allowFriendsApi.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 48) = v3;
  *(v2 + 56) = v1;
  return result;
}

uint64_t Components.Schemas.SetProfileSettings_Request.allowContactLookup.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 64) = v3;
  *(v2 + 72) = v1;
  return result;
}

uint64_t Components.Schemas.SetProfileSettings_Request.crossUseLinkedDsid.setter(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.SetProfileSettings_Request.allowFriendInvitesFromChallenges.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 160) = v3;
  *(v2 + 168) = v1;
  return result;
}

uint64_t Components.Schemas.SetProfileSettings_Request.allowFriendInvitesFromMultiplayerInvites.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 176) = v3;
  *(v2 + 184) = v1;
  return result;
}

__n128 Components.Schemas.SetProfileSettings_Request.init(privacySettings:allowFriendsApi:allowContactLookup:arcadeSubscriptionExpiration:privacyNoticeVersion:gamesPrivacyNoticeVersion:gamesCrossUseNoticeVersion:crossUseLinkedDsid:allowFriendInvitesFromChallenges:allowFriendInvitesFromMultiplayerInvites:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, __int128 a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_596();
  v63 = v49;
  v62 = v50;
  v60 = v51;
  v61 = v52;
  OUTLINED_FUNCTION_602();
  v55 = *(v53 + 32);
  v54 = *(v53 + 40);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1042();
  sub_24DDE34E4(v56, v57);
  v58 = v47[1];
  *v48 = *v47;
  *(v48 + 16) = v58;
  *(v48 + 32) = v55;
  *(v48 + 40) = v54;
  *(v48 + 48) = v46;
  *(v48 + 56) = v45;
  *(v48 + 64) = v44;
  *(v48 + 72) = v60;
  *(v48 + 80) = v61;
  *(v48 + 88) = v62 & 1;
  *(v48 + 96) = v63;
  *(v48 + 104) = a35 & 1;
  *(v48 + 112) = a36;
  *(v48 + 120) = a37 & 1;
  *(v48 + 128) = a38;
  *(v48 + 136) = a39 & 1;
  *(v48 + 144) = a40;
  *(v48 + 152) = a41 & 1;
  *(v48 + 160) = a42;
  *(v48 + 176) = a43;
  *(v48 + 184) = a44;
  OUTLINED_FUNCTION_585();
  return result;
}

GameCenterServerClient::Components::Schemas::SetProfileSettings_Request::CodingKeys_optional __swiftcall Components.Schemas.SetProfileSettings_Request.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 10;
  if (v2 < 0xA)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::SetProfileSettings_Request::CodingKeys_optional __swiftcall Components.Schemas.SetProfileSettings_Request.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.SetProfileSettings_Request.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

unint64_t sub_24DD985E0()
{
  result = 0xD000000000000010;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000024;
      break;
    case 9:
      result = 0xD00000000000002DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DD98778@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.SetProfileSettings_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD987A8()
{
  sub_24DDE3538();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD987E0()
{
  sub_24DDE3538();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.SetProfileSettings_Request.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v79 = *(v6 + 64);
  v77 = *(v6 + 80);
  v81 = *(v6 + 88);
  v73 = *(v6 + 96);
  v78 = *(v6 + 104);
  v70 = *(v6 + 112);
  v74 = *(v6 + 120);
  v71 = *(v6 + 136);
  v65 = *(v6 + 144);
  v68 = *(v6 + 152);
  v82 = *(v6 + 160);
  v66 = *(v6 + 168);
  v67 = *(v6 + 128);
  v8 = *(v7 + 8);
  v75 = *(v7 + 80);
  v80 = *(v7 + 88);
  v72 = *(v7 + 96);
  v76 = *(v7 + 104);
  v69 = *(v7 + 112);
  if (*(v6 + 8) == 1)
  {
    v63 = *(v7 + 48);
    v83 = *(v7 + 56);
    v84 = *(v6 + 56);
    v64 = *(v6 + 48);
    v85 = *(v7 + 64);
    v86 = *(v7 + 72);
    v87 = *(v6 + 72);
    v61 = *(v7 + 136);
    v62 = *(v7 + 120);
    v58 = *(v6 + 176);
    v59 = *(v7 + 128);
    OUTLINED_FUNCTION_1185();
    OUTLINED_FUNCTION_624();
    OUTLINED_FUNCTION_600();
    sub_24DDE3490(v9, v10);
    if (v8 == 1)
    {
      OUTLINED_FUNCTION_545();
      OUTLINED_FUNCTION_474();
      sub_24DDE3490(v11, v12);
      OUTLINED_FUNCTION_624();
      OUTLINED_FUNCTION_600();
      sub_24DDE34E4(v13, v14);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1069();
    OUTLINED_FUNCTION_474();
    sub_24DDE3490(v21, v22);
LABEL_7:
    OUTLINED_FUNCTION_386();
    OUTLINED_FUNCTION_600();
    sub_24DDE34E4(v23, v24);
    OUTLINED_FUNCTION_1069();
    OUTLINED_FUNCTION_474();
    sub_24DDE34E4(v25, v26);
    goto LABEL_8;
  }

  if (v8 == 1)
  {
    OUTLINED_FUNCTION_600();
    sub_24DDE3490(v15, v16);
    OUTLINED_FUNCTION_545();
    OUTLINED_FUNCTION_474();
    sub_24DDE3490(v17, v18);
    OUTLINED_FUNCTION_600();
    sub_24DDE3490(v19, v20);

    goto LABEL_7;
  }

  v63 = *(v7 + 48);
  v83 = *(v7 + 56);
  v84 = *(v6 + 56);
  v64 = *(v6 + 48);
  v85 = *(v7 + 64);
  v86 = *(v7 + 72);
  v87 = *(v6 + 72);
  v61 = *(v7 + 136);
  v62 = *(v7 + 120);
  v58 = *(v6 + 176);
  v59 = *(v7 + 128);
  OUTLINED_FUNCTION_1185();
  v51 = static Components.Schemas.Profile_GetProfileInfo_PrivacySettings.== infix(_:_:)();
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_1198();
  sub_24DDE3490(v27, v28);
  OUTLINED_FUNCTION_1069();
  OUTLINED_FUNCTION_474();
  sub_24DDE3490(v29, v30);
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_1198();
  sub_24DDE3490(v31, v32);

  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_1198();
  sub_24DDE34E4(v33, v34);
  if ((v51 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v84)
  {
    v35 = v86;
    v36 = v87;
    v37 = v85;
    if (!v83)
    {
      goto LABEL_8;
    }

    if (v64 != v63 || v84 != v83)
    {
      v39 = sub_24DE22CA0();
      v37 = v85;
      v35 = v86;
      v36 = v87;
      if ((v39 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v35 = v86;
    v36 = v87;
    v37 = v85;
    if (v83)
    {
      goto LABEL_8;
    }
  }

  if (v36)
  {
    if (!v35)
    {
      goto LABEL_8;
    }

    v40 = v79 == v37 && v36 == v35;
    if (!v40 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v35)
  {
    goto LABEL_8;
  }

  if (v81)
  {
    v41 = v82;
    if (!v80)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v42 = v80;
    if (v77 != v75)
    {
      v42 = 1;
    }

    v41 = v82;
    if (v42)
    {
      goto LABEL_8;
    }
  }

  if (v78)
  {
    if (!v76)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v43 = v76;
    if (v73 != v72)
    {
      v43 = 1;
    }

    if (v43)
    {
      goto LABEL_8;
    }
  }

  if (v74)
  {
    if (!v62)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v44 = v62;
    if (v70 != v69)
    {
      v44 = 1;
    }

    if (v44)
    {
      goto LABEL_8;
    }
  }

  if (v71)
  {
    if (!v61)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v45 = v61;
    if (v67 != v59)
    {
      v45 = 1;
    }

    if (v45)
    {
      goto LABEL_8;
    }
  }

  if (v68)
  {
    if (!v60)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v46 = v60;
    if (v65 != v56)
    {
      v46 = 1;
    }

    if (v46)
    {
      goto LABEL_8;
    }
  }

  if (v66)
  {
    v47 = v58;
    if (!v57)
    {
      goto LABEL_8;
    }

    if (v41 != v53 || v66 != v57)
    {
      v49 = sub_24DE22CA0();
      v47 = v58;
      if ((v49 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v47 = v58;
    if (v57)
    {
      goto LABEL_8;
    }
  }

  if (v55 && v54 && (v47 != v52 || v55 != v54))
  {
    sub_24DE22CA0();
  }

LABEL_8:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.SetProfileSettings_Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2C28, &qword_24DE23238);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_100();
  v10 = *v5;
  v17 = v5[1];
  OUTLINED_FUNCTION_301(v8);
  OUTLINED_FUNCTION_1198();
  sub_24DDE3490(v11, v12);
  sub_24DDE3538();
  OUTLINED_FUNCTION_425();
  sub_24DE22D50();
  sub_24DDE358C();
  OUTLINED_FUNCTION_1015();
  sub_24DE22C20();
  if (v6)
  {
    sub_24DDE34E4(v10, v17);
    v13 = OUTLINED_FUNCTION_406();
    v14(v13);
  }

  else
  {
    sub_24DDE34E4(v10, v17);
    OUTLINED_FUNCTION_743(1);
    OUTLINED_FUNCTION_724();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_743(2);
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_724();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_743(3);
    OUTLINED_FUNCTION_724();
    sub_24DE22C40();
    OUTLINED_FUNCTION_743(4);
    OUTLINED_FUNCTION_724();
    sub_24DE22C40();
    OUTLINED_FUNCTION_743(5);
    OUTLINED_FUNCTION_724();
    sub_24DE22C40();
    OUTLINED_FUNCTION_743(6);
    OUTLINED_FUNCTION_724();
    sub_24DE22C40();
    OUTLINED_FUNCTION_743(7);
    OUTLINED_FUNCTION_724();
    sub_24DE22C40();
    OUTLINED_FUNCTION_743(8);
    OUTLINED_FUNCTION_1053();
    OUTLINED_FUNCTION_724();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_743(9);
    OUTLINED_FUNCTION_724();
    sub_24DE22BF0();
    v15 = OUTLINED_FUNCTION_406();
    v16(v15);
  }

  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.SetProfileSettings_Request.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_596();
  OUTLINED_FUNCTION_438();
  v4 = *(v3 + 8);
  v5 = *(v3 + 56);
  v6 = *(v3 + 72);
  v20 = *(v3 + 88);
  v16 = *(v3 + 80);
  v17 = *(v3 + 96);
  v21 = *(v3 + 104);
  v18 = *(v3 + 112);
  v22 = *(v3 + 120);
  v19 = *(v3 + 128);
  v23 = *(v3 + 136);
  v7 = *(v3 + 144);
  v8 = *(v3 + 152);
  v9 = *(v3 + 168);
  v10 = *(v3 + 184);
  if (v4 == 1)
  {
    sub_24DE22CE0();
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_12:
    sub_24DE22CE0();
    sub_24DE22AD0();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v14 = *(v3 + 152);
  v15 = *(v3 + 168);
  v11 = *(v3 + 24);
  v12 = *(v3 + 40);
  sub_24DE22CE0();
  sub_24DE22CE0();
  if (v4)
  {
    OUTLINED_FUNCTION_426();
    sub_24DE22AD0();
  }

  sub_24DE22CE0();
  if (v11)
  {
    OUTLINED_FUNCTION_731();
    sub_24DE22AD0();
  }

  v9 = v15;
  sub_24DE22CE0();
  if (v12)
  {
    OUTLINED_FUNCTION_714();
    sub_24DE22AD0();
  }

  v8 = v14;
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_3:
  sub_24DE22CE0();
  if (!v6)
  {
LABEL_4:
    sub_24DE22CE0();
    goto LABEL_14;
  }

LABEL_13:
  sub_24DE22CE0();
  sub_24DE22AD0();
LABEL_14:
  sub_24DE22CE0();
  if (!v20)
  {
    MEMORY[0x253039750](v16);
  }

  sub_24DE22CE0();
  if (!v21)
  {
    MEMORY[0x253039750](v17);
  }

  sub_24DE22CE0();
  if (!v22)
  {
    MEMORY[0x253039750](v18);
  }

  if (v23)
  {
    sub_24DE22CE0();
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_24DE22CE0();
    MEMORY[0x253039750](v19);
    if (!v8)
    {
LABEL_22:
      sub_24DE22CE0();
      MEMORY[0x253039750](v7);
      if (v9)
      {
        goto LABEL_23;
      }

LABEL_29:
      sub_24DE22CE0();
      if (v10)
      {
        goto LABEL_24;
      }

LABEL_30:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_585();
      return;
    }
  }

  sub_24DE22CE0();
  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_23:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_638();
  sub_24DE22AD0();
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_24:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_867();
  OUTLINED_FUNCTION_585();

  sub_24DE22AD0();
}

void Components.Schemas.SetProfileSettings_Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_992();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2C40, &qword_24DE23240);
  OUTLINED_FUNCTION_27();
  v10 = v9;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_735();
  v97 = v12;
  v95 = v12;
  v93 = v12;
  v13 = v5[3];
  v14 = v5[4];
  v49 = v5;
  OUTLINED_FUNCTION_153(v5);
  sub_24DDE3538();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_472();
    OUTLINED_FUNCTION_1062();
    OUTLINED_FUNCTION_1260();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v65 = 0;
    v66 = 1;
    v67 = 0;
    v68 = 0;
    v69 = v8;
    v70 = v5;
    v71 = v7;
    v72 = v10;
    v73 = v13;
    v74 = v14;
    v75 = v61;
    v76 = v101;
    *v77 = *v100;
    *&v77[3] = *&v100[3];
    v78 = v59;
    v79 = v99;
    *v80 = *v98;
    *&v80[3] = *&v98[3];
    v81 = v57;
    v82 = v97;
    *v83 = *v96;
    *&v83[3] = *&v96[3];
    v84 = v55;
    v85 = v95;
    v86 = *v94;
    OUTLINED_FUNCTION_973(*&v94[3]);
    v87 = v93;
    v88 = v15[49];
    *(v15 + 153) = *(v15 + 193);
    v89 = v50;
    v90 = v52;
    v91 = 0;
    v92 = 0;
  }

  else
  {
    LOBYTE(v63[0]) = 0;
    sub_24DDE3610();
    OUTLINED_FUNCTION_196();
    sub_24DE22B70();
    v16 = v65;
    v17 = v67;
    v47 = v66;
    v48 = v69;
    v45 = v68;
    v46 = v70;
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_1042();
    sub_24DDE34E4(v18, v19);
    LOBYTE(v65) = 1;
    OUTLINED_FUNCTION_165();
    v20 = sub_24DE22B40();
    v43 = v21;
    v44 = v20;
    OUTLINED_FUNCTION_206(2);
    v41 = sub_24DE22B40();
    v42 = v22;
    OUTLINED_FUNCTION_206(3);
    v62 = sub_24DE22B90();
    OUTLINED_FUNCTION_666(v62, v23);
    OUTLINED_FUNCTION_206(4);
    v60 = sub_24DE22B90();
    OUTLINED_FUNCTION_1188(v60, v24);
    OUTLINED_FUNCTION_206(5);
    v58 = sub_24DE22B90();
    v97 = v25 & 1;
    OUTLINED_FUNCTION_206(6);
    v56 = sub_24DE22B90();
    OUTLINED_FUNCTION_1189(v56, v26);
    OUTLINED_FUNCTION_206(7);
    v54 = sub_24DE22B90();
    v93 = v27 & 1;
    OUTLINED_FUNCTION_206(8);
    v51 = sub_24DE22B40();
    v53 = v28;
    v64 = 9;
    OUTLINED_FUNCTION_411();
    v29 = sub_24DE22B40();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_271();
    v33(v32);
    v63[0] = v16;
    v63[1] = v47;
    v63[2] = v17;
    v63[3] = v45;
    v63[4] = v48;
    v63[5] = v46;
    v63[6] = v44;
    v63[7] = v43;
    v63[8] = v41;
    v63[9] = v42;
    v63[10] = v62;
    v36 = v101;
    LOBYTE(v63[11]) = v101;
    v63[12] = v60;
    v37 = v99;
    LOBYTE(v63[13]) = v99;
    v63[14] = v58;
    v38 = v97;
    LOBYTE(v63[15]) = v97;
    v63[16] = v56;
    v39 = v95;
    LOBYTE(v63[17]) = v95;
    v63[18] = v54;
    v40 = v93;
    LOBYTE(v63[19]) = v93;
    v63[20] = v51;
    v63[21] = v53;
    v63[22] = v29;
    v63[23] = v31;
    memcpy(v7, v63, 0xC0uLL);
    sub_24DDE3664(v63, &v65);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    v65 = v16;
    v66 = v47;
    v67 = v17;
    v68 = v45;
    v69 = v48;
    v70 = v46;
    v71 = v44;
    v72 = v43;
    v73 = v41;
    v74 = v42;
    v75 = v62;
    v76 = v36;
    *v77 = *v100;
    *&v77[3] = *&v100[3];
    v78 = v60;
    v79 = v37;
    *&v80[3] = *&v98[3];
    *v80 = *v98;
    v81 = v58;
    v82 = v38;
    *v83 = *v96;
    *&v83[3] = *&v96[3];
    v84 = v56;
    v85 = v39;
    v86 = *v94;
    OUTLINED_FUNCTION_973(*&v94[3]);
    v87 = v40;
    v35 = *(v34 + 193);
    v88 = v34[49];
    *(v34 + 153) = v35;
    v89 = v51;
    v90 = v53;
    v91 = v29;
    v92 = v31;
  }

  sub_24DDE35E0(&v65);
  OUTLINED_FUNCTION_869();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.ArtworkAvatar.artwork.getter()
{
  OUTLINED_FUNCTION_1087();
  OUTLINED_FUNCTION_1194();
  v4 = memcpy(v1, v2, v3);
  v5 = OUTLINED_FUNCTION_1324(v4, (v0 + 16));
  v11 = OUTLINED_FUNCTION_1030(v5, v6, &unk_27F1B2A08, &unk_24DE23130, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  return sub_24DDE73DC(v11);
}

void *Components.Schemas.ArtworkAvatar.artwork.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_1194();
  memcpy(v1, v2, v3);
  sub_24DDE8DAC(&v5, &unk_27F1B2A08);
  return OUTLINED_FUNCTION_1171((v0 + 16));
}

void *Components.Schemas.ArtworkAvatar.init(_type:artwork:)@<X0>(void *a2@<X8>)
{
  a2[3] = 0;
  a2[4] = 1;
  OUTLINED_FUNCTION_1115(a2, 0);
  *(v3 + 104) = v4;
  *(v3 + 117) = 0;
  *v3 = v5;
  *(v3 + 8) = v6 & 1;
  a2[2] = 0;
  memcpy(v10, a2 + 2, 0x6DuLL);
  sub_24DDE8DAC(v10, &unk_27F1B2A08);
  v7 = OUTLINED_FUNCTION_407();
  return memcpy(v7, v8, 0x6DuLL);
}

uint64_t Components.Schemas.ArtworkAvatar.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x6B726F77747261;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_24DD99B14@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.ArtworkAvatar.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD99B44()
{
  sub_24DDE369C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD99B7C()
{
  sub_24DDE369C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.ArtworkAvatar.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_695();
  v5 = *v4;
  v6 = *(v4 + 8);
  memcpy(__dst, (v2 + 16), 0x6DuLL);
  v7 = *v3;
  v8 = *(v3 + 8);
  OUTLINED_FUNCTION_1194();
  memcpy(v9, v10, v11);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

LABEL_8:
    v13 = __dst[2];
    *&v35[3] = *(v3 + 1);
    v14 = v37;
    if (__dst[2] == 1)
    {
      if (v37 == 1)
      {
        *__src = *(v2 + 16);
        *&__src[16] = 1;
        OUTLINED_FUNCTION_1105(__src);
        OUTLINED_FUNCTION_553();
        sub_24DDE73DC(v15);
        OUTLINED_FUNCTION_553();
        sub_24DDE73DC(v16);
        OUTLINED_FUNCTION_409();
LABEL_17:
        sub_24DDE8DAC(v17, v18);
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_489();
      sub_24DDE73DC(v22);
      OUTLINED_FUNCTION_489();
      sub_24DDE73DC(v23);
    }

    else
    {
      *__src = *(v2 + 16);
      *&__src[16] = __dst[2];
      OUTLINED_FUNCTION_1105(__src);
      memcpy(v30, __src, 0x6DuLL);
      if (v14 != 1)
      {
        v29[0] = *(v3 + 1);
        memcpy(&v29[1] + 8, v3 + 5, 0x55uLL);
        *&v29[1] = v14;
        static Components.Schemas.Artwork.== infix(_:_:)(v30, v29);
        memcpy(v27, v29, 0x6DuLL);
        OUTLINED_FUNCTION_326();
        sub_24DDE73DC(v24);
        OUTLINED_FUNCTION_326();
        sub_24DDE73DC(v25);
        OUTLINED_FUNCTION_326();
        sub_24DDE73DC(v26);
        sub_24DDE22DC(v27);
        memcpy(v28, v30, 0x6DuLL);
        sub_24DDE22DC(v28);
        v29[0] = *(v2 + 16);
        *&v29[1] = v13;
        memcpy(&v29[1] + 8, (v2 + 40), 0x55uLL);
        OUTLINED_FUNCTION_540();
        goto LABEL_17;
      }

      memcpy(v29, __src, 0x6DuLL);
      OUTLINED_FUNCTION_326();
      sub_24DDE73DC(v19);
      OUTLINED_FUNCTION_326();
      sub_24DDE73DC(v20);
      OUTLINED_FUNCTION_326();
      sub_24DDE73DC(v21);
      sub_24DDE22DC(v29);
    }

    *__src = *(v2 + 16);
    *&__src[16] = v13;
    memcpy(&__src[24], (v2 + 40), 0x55uLL);
    *v32 = *v35;
    *&v32[15] = *&v35[15];
    v33 = v14;
    memcpy(v34, v3 + 5, sizeof(v34));
    sub_24DDE8DAC(__src, &unk_27F1B2A10);
    goto LABEL_18;
  }

  if (v5 == v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  OUTLINED_FUNCTION_999();
}

void Components.Schemas.ArtworkAvatar.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  OUTLINED_FUNCTION_645();
  a19 = v27;
  a20 = v28;
  OUTLINED_FUNCTION_1067();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2C50, &qword_24DE23248);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_1194();
  memcpy(v30, v31, v32);
  v33 = OUTLINED_FUNCTION_463();
  OUTLINED_FUNCTION_387(v33, v34);
  sub_24DDE369C();
  OUTLINED_FUNCTION_470();
  sub_24DE22D50();
  a26 = 0;
  sub_24DE22C40();
  if (!v26)
  {
    OUTLINED_FUNCTION_1314(&a26);
    *(v27 - 65) = 1;
    sub_24DDE73DC(v27 - 200);
    sub_24DDE262C();
    OUTLINED_FUNCTION_1015();
    OUTLINED_FUNCTION_497();
    sub_24DE22C20();
    memcpy(&a12, &a26, 0x6DuLL);
    sub_24DDE8DAC(&a12, &unk_27F1B2A08);
  }

  v35 = OUTLINED_FUNCTION_541();
  v36(v35);
  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.ArtworkAvatar.hash(into:)(uint64_t a1)
{
  v2 = v1[4];
  if (*(v1 + 8) == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    v3 = *v1;
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v3);
  }

  if (v2 == 1)
  {
    return OUTLINED_FUNCTION_795();
  }

  v6[0] = *(v1 + 1);
  memcpy(&v6[1] + 8, v1 + 5, 0x55uLL);
  *&v6[1] = v2;
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  v7 = *(v1 + 1);
  v8 = v2;
  memcpy(v9, v1 + 5, sizeof(v9));
  sub_24DDE230C(&v7, __dst);
  v5 = OUTLINED_FUNCTION_643();
  Components.Schemas.Artwork.hash(into:)(v5);
  memcpy(__dst, v6, 0x6DuLL);
  return sub_24DDE22DC(__dst);
}

uint64_t Components.Schemas.ArtworkAvatar.hashValue.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v1[4];
  sub_24DE22CC0();
  sub_24DE22CE0();
  if (v3 != 1)
  {
    MEMORY[0x253039750](v2);
  }

  if (v4 == 1)
  {
    sub_24DE22CE0();
  }

  else
  {
    __src[0] = *(v1 + 1);
    *&__src[1] = v4;
    OUTLINED_FUNCTION_1105(__src);
    memcpy(v6, __src, sizeof(v6));
    sub_24DE22CE0();
    sub_24DDE230C(__src, __dst);
    Components.Schemas.Artwork.hash(into:)(v9);
    memcpy(__dst, v6, 0x6DuLL);
    sub_24DDE22DC(__dst);
  }

  return sub_24DE22D10();
}

void Components.Schemas.ArtworkAvatar.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v7 = v6;
  v66 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2C60, &qword_24DE23250);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_390();
  v65 = 1;
  OUTLINED_FUNCTION_250(v7);
  sub_24DDE369C();
  OUTLINED_FUNCTION_658();
  sub_24DE22D30();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    v55 = 0;
    v56 = v65;
    v57 = 0;
    v58 = 0;
    v59 = 1;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    memset(v64, 0, 21);
  }

  else
  {
    LOBYTE(v55) = 0;
    v10 = sub_24DE22B90();
    OUTLINED_FUNCTION_666(v10, v11);
    v39 = 1;
    sub_24DDE2758();
    OUTLINED_FUNCTION_1202();
    sub_24DE22B70();
    v12 = OUTLINED_FUNCTION_661();
    v13(v12);
    v14 = v40;
    v15 = v41;
    v18 = v41;
    v19 = v40;
    v16 = v43;
    v20 = v44;
    v21 = v42;
    v29 = v46;
    v30 = v45;
    v27 = v48;
    v28 = v47;
    v25 = v50;
    v26 = v49;
    v23 = v52;
    v24 = v51;
    v31 = v53;
    v32[0] = 0;
    v22 = v54;
    v32[1] = 0;
    v32[2] = 1;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    memset(v37, 0, sizeof(v37));
    sub_24DDE8DAC(v32, &unk_27F1B2A08);
    *v38 = v10;
    v17 = v65;
    v38[8] = v65;
    *&v38[16] = v14;
    *&v38[24] = v15;
    *&v38[32] = v21;
    *&v38[40] = v16;
    *&v38[48] = v20;
    *&v38[56] = v30;
    *&v38[64] = v29;
    *&v38[72] = v28;
    *&v38[80] = v27;
    *&v38[88] = v26;
    *&v38[96] = v25;
    *&v38[104] = v24;
    *&v38[112] = v23;
    v38[124] = v22;
    *&v38[120] = v31;
    memcpy(v66, v38, 0x7DuLL);
    sub_24DDE2F24(v38, &v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    v55 = v10;
    v56 = v17;
    v57 = v19;
    v58 = v18;
    v59 = v21;
    *&v60 = v16;
    *(&v60 + 1) = v20;
    *&v61 = v30;
    *(&v61 + 1) = v29;
    *&v62 = v28;
    *(&v62 + 1) = v27;
    *&v63 = v26;
    *(&v63 + 1) = v25;
    v64[0] = v24;
    v64[1] = v23;
    BYTE4(v64[2]) = v22;
    LODWORD(v64[2]) = v31;
  }

  sub_24DDE2D50(&v55);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD9A564(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.ArtworkAvatar.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_RequestContent.playerIds.setter()
{
  result = OUTLINED_FUNCTION_1311();
  *v1 = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_RequestContent.init(playerIds:showAccounts:showDetails:showRealName:showStats:checkFriendInvitationAbility:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 9) = a3;
  *(a7 + 10) = a4;
  *(a7 + 11) = a5;
  *(a7 + 12) = a6;
  return result;
}

GameCenterServerClient::Components::Schemas::Profile_GetProfileInfo_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetProfileInfo_RequestContent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_932();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Profile_GetProfileInfo_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetProfileInfo_RequestContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Profile_GetProfileInfo_RequestContent.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t sub_24DD9A770()
{
  result = 0x692D726579616C70;
  switch(*v0)
  {
    case 1:
      result = 0x6363612D776F6873;
      break;
    case 2:
      result = 0x7465642D776F6873;
      break;
    case 3:
      result = 0x6165722D776F6873;
      break;
    case 4:
      result = OUTLINED_FUNCTION_1138(0x776F6873u);
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DD9A8D8@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetProfileInfo_RequestContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD9A90C()
{
  sub_24DDE36F0();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD9A944()
{
  sub_24DDE36F0();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Profile_GetProfileInfo_RequestContent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v7 = OUTLINED_FUNCTION_281(v6);
  v9 = *v8;
  if (v7 && v9)
  {
    sub_24DD85994(v7, v9);
  }

  OUTLINED_FUNCTION_653();
}

void Components.Schemas.Profile_GetProfileInfo_RequestContent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1177();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2C68, &qword_24DE23258);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_111();
  v6 = sub_24DDE36F0();

  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_475();
  sub_24DE22D50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
  OUTLINED_FUNCTION_4();
  sub_24DDE2110(v7);
  OUTLINED_FUNCTION_920();
  OUTLINED_FUNCTION_179();
  sub_24DE22C20();
  if (v6)
  {
  }

  else
  {

    OUTLINED_FUNCTION_197();
    sub_24DE22C00();
    OUTLINED_FUNCTION_197();
    sub_24DE22C00();
    OUTLINED_FUNCTION_197();
    sub_24DE22C00();
    OUTLINED_FUNCTION_197();
    sub_24DE22C00();
    OUTLINED_FUNCTION_197();
    sub_24DE22C00();
  }

  v8 = OUTLINED_FUNCTION_446();
  v9(v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Profile_GetProfileInfo_RequestContent.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_438();
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  v4 = *(v1 + 10);
  v5 = *(v1 + 11);
  v6 = *(v1 + 12);
  if (*v1)
  {
    sub_24DE22CE0();
    v7 = OUTLINED_FUNCTION_407();
    sub_24DDE0DB4(v7, v8);
  }

  else
  {
    sub_24DE22CE0();
  }

  if (v2 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v3 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v4 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v5 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v6 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_999();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_RequestContent.hashValue.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_796(a1);
  v9 = OUTLINED_FUNCTION_1232(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  Components.Schemas.Profile_GetProfileInfo_RequestContent.hash(into:)(v9);
  return sub_24DE22D10();
}

void Components.Schemas.Profile_GetProfileInfo_RequestContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2C78, &qword_24DE23260);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE36F0();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v15);
    OUTLINED_FUNCTION_928();
    OUTLINED_FUNCTION_400();
    sub_24DE22B70();
    OUTLINED_FUNCTION_310();
    v16 = sub_24DE22B50();
    OUTLINED_FUNCTION_310();
    v22 = sub_24DE22B50();
    OUTLINED_FUNCTION_310();
    v21 = sub_24DE22B50();
    OUTLINED_FUNCTION_310();
    v20 = sub_24DE22B50();
    OUTLINED_FUNCTION_310();
    v17 = sub_24DE22B50();
    v18 = OUTLINED_FUNCTION_230();
    v19(v18);
    *v13 = a10;
    *(v13 + 8) = v16;
    *(v13 + 9) = v22;
    *(v13 + 10) = v21;
    *(v13 + 11) = v20;
    *(v13 + 12) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD9B08C(uint64_t a1)
{
  v1 = sub_24DE22CC0();
  v9 = OUTLINED_FUNCTION_1232(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  Components.Schemas.Profile_GetProfileInfo_RequestContent.hash(into:)(v9);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Profile_GetScopedIDs_ScopedIDs.bundleId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetScopedIDs_ScopedIDs.playerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 24) = v3;
  *(v2 + 32) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetScopedIDs_ScopedIDs.gameScopedPlayerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 40) = v3;
  *(v2 + 48) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetScopedIDs_ScopedIDs.teamScopedPlayerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 56) = v3;
  *(v2 + 64) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetScopedIDs_ScopedIDs.init(status:bundleId:playerId:gameScopedPlayerId:teamScopedPlayerId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 4) = BYTE4(result) & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

GameCenterServerClient::Components::Schemas::Profile_GetScopedIDs_ScopedIDs::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetScopedIDs_ScopedIDs.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_944();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Profile_GetScopedIDs_ScopedIDs::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetScopedIDs_ScopedIDs.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Profile_GetScopedIDs_ScopedIDs.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t sub_24DD9B378()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_193(0x656C646E7562);
      break;
    case 2:
      result = OUTLINED_FUNCTION_193(0x726579616C70);
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DD9B490@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetScopedIDs_ScopedIDs.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD9B4C4()
{
  sub_24DDE3744();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD9B4FC()
{
  sub_24DDE3744();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Profile_GetScopedIDs_ScopedIDs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_628();
  OUTLINED_FUNCTION_267(v2);
  v4 = v3[3];
  v6 = v3[4];
  v5 = v3[5];
  v7 = v3[6];
  v8 = v3[8];
  OUTLINED_FUNCTION_1282();
  v17 = v15[3];
  v16 = v15[4];
  v19 = v15[5];
  v18 = v15[6];
  v20 = v15[7];
  v21 = v15[8];
  if (v22)
  {
    if (!v13)
    {
      goto LABEL_39;
    }
  }

  else
  {
    OUTLINED_FUNCTION_543();
    if (v23)
    {
      goto LABEL_39;
    }
  }

  if (v10)
  {
    if (!v12)
    {
      goto LABEL_39;
    }

    if (v9 != v11 || v10 != v12)
    {
      v41 = v21;
      v42 = v8;
      v25 = v14;
      v26 = v20;
      v27 = sub_24DE22CA0();
      v20 = v26;
      v14 = v25;
      v21 = v41;
      v8 = v42;
      if ((v27 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v12)
  {
    goto LABEL_39;
  }

  if (v6)
  {
    if (!v16)
    {
      goto LABEL_39;
    }

    if (v4 != v17 || v6 != v16)
    {
      OUTLINED_FUNCTION_457();
      OUTLINED_FUNCTION_430();
      v30 = v29;
      v32 = v31;
      v33 = sub_24DE22CA0();
      v20 = v32;
      v14 = v30;
      if ((v33 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v16)
  {
    goto LABEL_39;
  }

  if (v7)
  {
    if (!v18)
    {
      goto LABEL_39;
    }

    if (v5 != v19 || v7 != v18)
    {
      OUTLINED_FUNCTION_503();
      OUTLINED_FUNCTION_809();
      v36 = v35;
      v38 = v37;
      v39 = sub_24DE22CA0();
      v20 = v38;
      v14 = v36;
      if ((v39 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v18)
  {
    goto LABEL_39;
  }

  if (v8 && v21 && (v14 != v20 || v8 != v21))
  {
    OUTLINED_FUNCTION_888(v14, v8);
  }

LABEL_39:
  OUTLINED_FUNCTION_549();
}

void Components.Schemas.Profile_GetScopedIDs_ScopedIDs.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2C80, &qword_24DE23268);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_153(v7);
  sub_24DDE3744();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_1125(v9);
  OUTLINED_FUNCTION_819();
  sub_24DE22C30();
  if (!v5)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_384();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_843();
    OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_970();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
  }

  v10 = OUTLINED_FUNCTION_180();
  v11(v10);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Profile_GetScopedIDs_ScopedIDs.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_192();
  v7 = v6[2];
  v8 = v6[4];
  v9 = v6[6];
  v10 = v6[8];
  if (v11 == 1)
  {
    sub_24DE22CE0();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v7)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_426();
      sub_24DE22AD0();
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_24DE22CE0();
  if (v8)
  {
LABEL_4:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_386();
    sub_24DE22AD0();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_24DE22CE0();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_13:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_653();
    return;
  }

LABEL_11:
  sub_24DE22CE0();
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_406();
  sub_24DE22AD0();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_6:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_653();

  sub_24DE22AD0();
}

void Components.Schemas.Profile_GetScopedIDs_ScopedIDs.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2C90, &qword_24DE23270);
  OUTLINED_FUNCTION_27();
  v26 = v25;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_660();
  v28 = v19[3];
  OUTLINED_FUNCTION_168();
  sub_24DDE3744();
  OUTLINED_FUNCTION_233();
  sub_24DE22D30();
  if (v20)
  {
    OUTLINED_FUNCTION_1062();
    OUTLINED_FUNCTION_671();
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v48 = 0;
    v49 = BYTE4(a10);
    v50 = *(&a10 + 5);
    v51 = BYTE7(a10);
    v52 = 0;
    v53 = v21;
    v54 = v26;
    v55 = v23;
    v56 = v28;
    v57 = 0;
    v58 = 0;
    v59 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_494();
    v29 = sub_24DE22B80();
    v46 = v29;
    OUTLINED_FUNCTION_212(v29);
    OUTLINED_FUNCTION_494();
    sub_24DE22B40();
    v43 = v23;
    OUTLINED_FUNCTION_1270();
    v44 = v30;
    v45 = v31;
    OUTLINED_FUNCTION_494();
    v32 = sub_24DE22B40();
    v34 = v33;
    LOBYTE(v48) = 3;
    OUTLINED_FUNCTION_494();
    v35 = sub_24DE22B40();
    v37 = v36;
    OUTLINED_FUNCTION_889();
    OUTLINED_FUNCTION_494();
    v38 = sub_24DE22B40();
    v39 = OUTLINED_FUNCTION_482();
    v41 = v40;
    v42(v39, v24);
    LODWORD(v47[0]) = v46;
    BYTE4(v47[0]) = BYTE4(a10);
    v47[1] = v44;
    v47[2] = v45;
    v47[3] = v32;
    v47[4] = v34;
    v47[5] = v35;
    v47[6] = v37;
    v47[7] = v38;
    v47[8] = v41;
    memcpy(v43, v47, 0x48uLL);
    sub_24DDE37C8(v47, &v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v48 = v46;
    v49 = BYTE4(a10);
    v52 = v44;
    v53 = v45;
    v54 = v32;
    v55 = v34;
    v56 = v35;
    v57 = v37;
    v58 = v38;
    v59 = v41;
  }

  sub_24DDE3798(&v48);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.SetProfileSettings_Response.message.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

double Components.Schemas.SetProfileSettings_Response.alert.setter()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1, v2, v3);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

uint64_t Components.Schemas.SetProfileSettings_Response.contactAssociationId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 72) = v3;
  *(v2 + 80) = v1;
  return result;
}

__n128 Components.Schemas.SetProfileSettings_Response.init(status:message:alert:lastUpdated:contactAssociationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_938();
  v14 = v13;
  OUTLINED_FUNCTION_917(v15, v13);
  *(v14 + 4) = v16;
  *(v14 + 1) = v17;
  *(v14 + 2) = v18;
  v19 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v19, v20, v21, v22);
  result = *v9;
  *(v14 + 10) = *(v9 + 16);
  *(v14 + 6) = result;
  *(v14 + 7) = v8;
  *(v14 + 64) = a6 & 1;
  *(v14 + 9) = a7;
  *(v14 + 10) = a8;
  return result;
}

GameCenterServerClient::Components::Schemas::SetProfileSettings_Response::CodingKeys_optional __swiftcall Components.Schemas.SetProfileSettings_Response.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_944();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::SetProfileSettings_Response::CodingKeys_optional __swiftcall Components.Schemas.SetProfileSettings_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.SetProfileSettings_Response.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t Components.Schemas.SetProfileSettings_Response.CodingKeys.stringValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = OUTLINED_FUNCTION_286();
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DD9C02C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.SetProfileSettings_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD9C05C()
{
  sub_24DDE3800();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD9C094()
{
  sub_24DDE3800();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.SetProfileSettings_Response.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1000();
  OUTLINED_FUNCTION_267(v2);
  v4 = *(v3 + 32);
  v5 = *(v3 + 80);
  OUTLINED_FUNCTION_1282();
  v16 = *(v11 + 32);
  v17 = *(v11 + 40);
  v18 = *(v11 + 48);
  v19 = *(v11 + 56);
  v20 = *(v11 + 64);
  v21 = *(v11 + 72);
  v22 = *(v11 + 80);
  if (v23)
  {
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v10 == *v11)
    {
      v24 = v12;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_24;
    }
  }

  if (v7)
  {
    if (!v9)
    {
      goto LABEL_24;
    }

    if (v6 != v8 || v7 != v9)
    {
      v82 = *(v11 + 48);
      v84 = *(v11 + 80);
      v80 = v5;
      v90 = v13;
      v26 = *(v11 + 72);
      v27 = v14;
      v88 = v15;
      v28 = *(v11 + 64);
      v86 = *(v11 + 56);
      v29 = sub_24DE22CA0();
      v20 = v28;
      v15 = v88;
      v14 = v27;
      v21 = v26;
      v5 = v80;
      v18 = v82;
      v13 = v90;
      v22 = v84;
      v19 = v86;
      if ((v29 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    v85 = v21;
    v87 = v19;
    v83 = v20;
    v89 = v15;
    v81 = v14;
    v91 = v13;
    v30 = OUTLINED_FUNCTION_176();
    sub_24DD7639C(v30, v31, v32, v33);
    if (v16 == 1)
    {
      v34 = OUTLINED_FUNCTION_625();
      sub_24DD7639C(v34, v35, v17, v18);
      v36 = OUTLINED_FUNCTION_176();
      sub_24DD763E4(v36, v37, v38, v39);
      goto LABEL_26;
    }

    v50 = OUTLINED_FUNCTION_319();
    sub_24DD7639C(v50, v51, v52, v18);
LABEL_23:
    v53 = OUTLINED_FUNCTION_293();
    sub_24DD763E4(v53, v54, v55, v56);
    v57 = OUTLINED_FUNCTION_319();
    sub_24DD763E4(v57, v58, v59, v18);
    goto LABEL_24;
  }

  if (v16 == 1)
  {
    v40 = OUTLINED_FUNCTION_293();
    sub_24DD7639C(v40, v41, v42, v43);
    v44 = OUTLINED_FUNCTION_625();
    sub_24DD7639C(v44, v45, v17, v18);
    v46 = OUTLINED_FUNCTION_293();
    sub_24DD7639C(v46, v47, v48, v49);

    goto LABEL_23;
  }

  v85 = v21;
  v87 = v19;
  v83 = v20;
  v89 = v15;
  v81 = v14;
  v91 = v13;
  v79 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)();
  v60 = OUTLINED_FUNCTION_293();
  sub_24DD7639C(v60, v61, v62, v63);
  v64 = OUTLINED_FUNCTION_319();
  sub_24DD7639C(v64, v65, v66, v18);
  v67 = OUTLINED_FUNCTION_293();
  sub_24DD7639C(v67, v68, v69, v70);

  v71 = OUTLINED_FUNCTION_293();
  sub_24DD763E4(v71, v72, v73, v74);
  if ((v79 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  if (v89)
  {
    v75 = v91;
    v76 = v85;
    if (!v83)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  v76 = v85;
  v77 = v83;
  if (v81 != v87)
  {
    v77 = 1;
  }

  v75 = v91;
  if ((v77 & 1) == 0)
  {
LABEL_32:
    if (v5 && v22 && (v75 != v76 || v5 != v22))
    {
      OUTLINED_FUNCTION_1301(v75, v5);
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_827();
}

void Components.Schemas.SetProfileSettings_Response.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2C98, &qword_24DE23278);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  v8 = *v5;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_1249();
  OUTLINED_FUNCTION_152();
  sub_24DDE3800();
  OUTLINED_FUNCTION_314();
  sub_24DE22D50();
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_404(v8 | (v9 << 32));
  if (!v6)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_554();
    OUTLINED_FUNCTION_384();
    OUTLINED_FUNCTION_907();
    sub_24DD7639C(v10, v11, v12, v13);
    sub_24DD87138();
    OUTLINED_FUNCTION_110();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_565(3);
    OUTLINED_FUNCTION_135();
    sub_24DE22C40();
    OUTLINED_FUNCTION_565(4);
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
  }

  v14 = OUTLINED_FUNCTION_180();
  v15(v14);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.SetProfileSettings_Response.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_628();
  OUTLINED_FUNCTION_192();
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  if (v8 == 1)
  {
    sub_24DE22CE0();
    if (v2)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_731();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = *(v1 + 32);
    sub_24DE22CE0();
    v3 = v10;
    sub_24DE22CF0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v3 != 1)
  {
    sub_24DE22CE0();
    if (v3)
    {
      sub_24DE22CE0();
      OUTLINED_FUNCTION_867();
      sub_24DE22AD0();
      if (v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_24DE22CE0();
      if (v4)
      {
LABEL_9:
        sub_24DE22CE0();
        OUTLINED_FUNCTION_426();
        sub_24DE22AD0();
        if ((v6 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_16:
        sub_24DE22CE0();
        if (v7)
        {
          goto LABEL_11;
        }

LABEL_17:
        sub_24DE22CE0();
        OUTLINED_FUNCTION_549();
        return;
      }
    }
  }

  sub_24DE22CE0();
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_10:
  sub_24DE22CE0();
  MEMORY[0x253039750](v5);
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_11:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_549();

  sub_24DE22AD0();
}

uint64_t Components.Schemas.SetProfileSettings_Response.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.SetProfileSettings_Response.hash(into:)(v2);
  return sub_24DE22D10();
}

void Components.Schemas.SetProfileSettings_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_358();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2CA8, &qword_24DE23280);
  OUTLINED_FUNCTION_27();
  v28 = v27;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_91();
  v74 = v30;
  v71 = v30;
  v31 = v20[3];
  v32 = v20[4];
  v75 = v20;
  OUTLINED_FUNCTION_168();
  sub_24DDE3800();
  OUTLINED_FUNCTION_233();
  sub_24DE22D30();
  if (v21)
  {
    OUTLINED_FUNCTION_1220();
    OUTLINED_FUNCTION_350();
    OUTLINED_FUNCTION_583();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    LODWORD(v58) = 0;
    BYTE4(v58) = v74;
    *(&v58 + 5) = v72;
    HIBYTE(v58) = v73;
    v59 = v23;
    v60 = v26;
    v61 = v22;
    v62 = 1;
    v63 = v32;
    v64 = v31;
    v65 = v20;
    v66 = v71;
    *v67 = *v70;
    *&v67[3] = *&v70[3];
    v68 = 0;
    v69 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_1247();
    OUTLINED_FUNCTION_534();
    v33 = sub_24DE22B80();
    v55 = v33;
    OUTLINED_FUNCTION_396(v33);
    OUTLINED_FUNCTION_861(v34);
    OUTLINED_FUNCTION_534();
    sub_24DE22B40();
    OUTLINED_FUNCTION_816(v35, &a12);
    LOBYTE(v56[0]) = v36;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_224();
    sub_24DE22B70();
    v37 = v22;
    v38 = v58;
    v52 = v59;
    v39 = v61;
    v53 = v60;
    v40 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v40, v41, v42, v43);
    OUTLINED_FUNCTION_861(3);
    OUTLINED_FUNCTION_534();
    v44 = sub_24DE22B90();
    OUTLINED_FUNCTION_666(v44, v45);
    v57 = 4;
    OUTLINED_FUNCTION_534();
    sub_24DE22B40();
    OUTLINED_FUNCTION_1220();
    v47 = v46;
    v49 = v48;
    (*(v28 + 8))(v23, v26);
    LODWORD(v56[0]) = v55;
    v51 = v74;
    BYTE4(v56[0]) = v74;
    OUTLINED_FUNCTION_857();
    v56[1] = v23;
    v56[2] = v54;
    OUTLINED_FUNCTION_824();
    v56[4] = v59;
    v56[5] = v60;
    v56[6] = v61;
    v56[7] = v44;
    v50 = v71;
    LOBYTE(v56[8]) = v71;
    v56[9] = v47;
    v56[10] = v49;
    memcpy(v37, v56, 0x58uLL);
    sub_24DDE3884(v56, &v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    LODWORD(v58) = v55;
    BYTE4(v58) = v51;
    v59 = v23;
    v60 = v54;
    v61 = v38;
    v62 = v52;
    v63 = v53;
    v64 = v39;
    v65 = v44;
    v66 = v50;
    v68 = v47;
    v69 = v49;
  }

  sub_24DDE3854(&v58);
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD9CACC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

GameCenterServerClient::Components::Schemas::GetGameAchievements_Response::CodingKeys_optional __swiftcall Components.Schemas.GetGameAchievements_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24DD9CBD0()
{
  sub_24DDE38BC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD9CC08()
{
  sub_24DDE38BC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.GetGameAchievements_Response.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2CB0, &qword_24DE23288);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_111();
  sub_24DDE38BC();
  OUTLINED_FUNCTION_314();
  sub_24DE22D50();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_488();
  sub_24DE22C30();
  if (!v8)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_141();
    sub_24DD87138();
    OUTLINED_FUNCTION_110();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_292();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2CC0, &qword_24DE23290);
    sub_24DDE3910();
    OUTLINED_FUNCTION_194();
    OUTLINED_FUNCTION_190();
    sub_24DE22C20();
  }

  v6 = OUTLINED_FUNCTION_180();
  v7(v6);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.GetGameAchievements_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2CD8, &qword_24DE23298);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_168();
  sub_24DDE38BC();
  OUTLINED_FUNCTION_233();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_93();
    v8 = sub_24DE22B80();
    OUTLINED_FUNCTION_212(v8);
    v20[0] = v9;
    OUTLINED_FUNCTION_93();
    v10 = sub_24DE22B40();
    OUTLINED_FUNCTION_776(v10, v11);
    OUTLINED_FUNCTION_224();
    sub_24DE22B70();
    OUTLINED_FUNCTION_824();
    v12 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v12, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2CC0, &qword_24DE23290);
    OUTLINED_FUNCTION_493();
    sub_24DDE3A18();
    OUTLINED_FUNCTION_144();
    v16 = OUTLINED_FUNCTION_124();
    v17(v16);
    v18 = OUTLINED_FUNCTION_14();
    sub_24DDE3AF0(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_40();
  }

  sub_24DDE39E8(v20);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.game.getter()
{
  OUTLINED_FUNCTION_961();
  OUTLINED_FUNCTION_524();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_370();
  v5 = memcpy(v3, v4, 0x59uLL);
  v13 = OUTLINED_FUNCTION_805(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  return sub_24DDE2084(v13, v14);
}

void *Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.game.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_524();
  memcpy(v0, v1, v2);
  sub_24DDE2054(&v6);
  v3 = OUTLINED_FUNCTION_407();
  return memcpy(v3, v4, 0x59uLL);
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.baseLeaderboardIds.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.setName.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 104) = v3;
  *(v2 + 112) = v1;
  return result;
}

void *Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.init(game:baseLeaderboardIds:setName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1033();
  v8 = v7;
  result = memcpy(v7, v9, 0x59uLL);
  v8[12] = v5;
  v8[13] = v4;
  v8[14] = a4;
  return result;
}

GameCenterServerClient::Components::Schemas::Leaderboard_GetLeaderboards_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x656D616E2D746573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667175;
  }
}

unint64_t sub_24DD9D2C8@<X0>(unint64_t *a1@<X8>)
{
  result = Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD9D2F8()
{
  sub_24DDE3B28();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD9D330()
{
  sub_24DDE3B28();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

BOOL static Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.== infix(_:_:)(void *__src, void *a2)
{
  memcpy(v18, __src, 0x59uLL);
  v5 = *(__src + 12);
  v4 = *(__src + 13);
  v6 = *(__src + 14);
  OUTLINED_FUNCTION_1316(v19);
  v8 = a2[12];
  v7 = a2[13];
  v9 = a2[14];
  v10 = OUTLINED_FUNCTION_384();
  static Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.== infix(_:_:)(v10, v11);
  v13 = v12;
  OUTLINED_FUNCTION_1316(v20);
  sub_24DDE2084(v18, __dst);
  sub_24DDE2084(v19, __dst);
  sub_24DDE2054(v20);
  memcpy(__dst, __src, 0x59uLL);
  sub_24DDE2054(__dst);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8)
    {
      return 0;
    }

    v14 = OUTLINED_FUNCTION_503();
    if ((sub_24DD85994(v14, v15) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v9)
    {
      return 0;
    }

    v16 = v4 == v7 && v6 == v9;
    return v16 || (OUTLINED_FUNCTION_369() & 1) != 0;
  }

  return !v9;
}

void Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2CF0, &qword_24DE232A0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_524();
  memcpy(v7, v8, v9);
  v10 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_387(v10, v11);
  sub_24DDE2084(&v17, v16);
  sub_24DDE3B28();
  OUTLINED_FUNCTION_470();
  sub_24DE22D50();
  OUTLINED_FUNCTION_1088(v16);
  sub_24DDE2E28();
  OUTLINED_FUNCTION_1015();
  OUTLINED_FUNCTION_497();
  sub_24DE22C70();
  if (v5)
  {
    memcpy(v15, v16, 0x59uLL);
    sub_24DDE2054(v15);
  }

  else
  {
    memcpy(v15, v16, 0x59uLL);
    sub_24DDE2054(v15);
    OUTLINED_FUNCTION_414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v12);
    OUTLINED_FUNCTION_497();
    sub_24DE22C20();
    OUTLINED_FUNCTION_582();
    OUTLINED_FUNCTION_329();
    sub_24DE22BF0();
  }

  v13 = OUTLINED_FUNCTION_330();
  v14(v13);
  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 112);
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(a1);
  if (!v2)
  {
    OUTLINED_FUNCTION_795();
    if (v3)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  v4 = OUTLINED_FUNCTION_492();
  sub_24DDE0DB4(v4, v5);
  if (!v3)
  {
    return OUTLINED_FUNCTION_795();
  }

LABEL_3:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_260();

  return sub_24DE22AD0();
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 112);
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v16);
  if (v2)
  {
    v4 = sub_24DE22CE0();
    v12 = OUTLINED_FUNCTION_538(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16[0]);
    sub_24DDE0DB4(v12, v13);
  }

  else
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v3)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  return sub_24DE22D10();
}

void Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_645();
  v26 = v25;
  v28 = v27;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2D00, &qword_24DE232A8);
  OUTLINED_FUNCTION_27();
  v30 = v29;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_255(v26);
  sub_24DDE3B28();
  OUTLINED_FUNCTION_544();
  OUTLINED_FUNCTION_507();
  sub_24DE22D30();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    sub_24DDE2FE0();
    OUTLINED_FUNCTION_268();
    sub_24DE22BC0();
    memcpy(v42, v41, sizeof(v42));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    LOBYTE(v39[0]) = 1;
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v32);
    OUTLINED_FUNCTION_401();
    sub_24DE22B70();
    v33 = v40[0];
    OUTLINED_FUNCTION_411();
    v34 = sub_24DE22B40();
    v35 = v24;
    v37 = v36;
    (*(v30 + 8))(v35, v38);
    OUTLINED_FUNCTION_1298(v39);
    v39[12] = v33;
    v39[13] = v34;
    v39[14] = v37;
    memcpy(v28, v39, 0x78uLL);
    sub_24DDE3B7C(v39, v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_1298(v40);
    v40[12] = v33;
    v40[13] = v34;
    v40[14] = v37;
    sub_24DDE3BB4(v40);
  }

  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD9DA50(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.leaderboardId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.baseLeaderboardId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 24) = v3;
  *(v2 + 32) = v1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.groupId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 40) = v3;
  *(v2 + 48) = v1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.title.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 64) = v3;
  *(v2 + 72) = v1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result._type.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 80) = v3;
  *(v2 + 88) = v1;
  return result;
}

void *sub_24DD9DD70()
{
  OUTLINED_FUNCTION_1086();
  sub_24DDE3BE4(v0);
  v1 = OUTLINED_FUNCTION_1065();
  return memcpy(v1, v2, 0x90uLL);
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.imageUrls.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 144), 0x90uLL);
  memcpy(a1, (v1 + 144), 0x90uLL);
  return sub_24DDE73DC(__dst);
}

void *Components.Schemas.Leaderboard_GetLeaderboards_Result.imageUrls.setter()
{
  OUTLINED_FUNCTION_564();
  memcpy(v2, (v1 + 144), 0x90uLL);
  sub_24DDE8DAC(&v4, &unk_27F1B2D08);
  return memcpy((v1 + 144), v0, 0x90uLL);
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.artwork.getter()
{
  OUTLINED_FUNCTION_1087();
  v2 = memcpy(v1, (v0 + 288), 0x6DuLL);
  v3 = OUTLINED_FUNCTION_1324(v2, (v0 + 288));
  v9 = OUTLINED_FUNCTION_1030(v3, v4, &unk_27F1B2A08, &unk_24DE23130, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  return sub_24DDE73DC(v9);
}

void *Components.Schemas.Leaderboard_GetLeaderboards_Result.artwork.setter()
{
  OUTLINED_FUNCTION_564();
  memcpy(v1, (v0 + 288), 0x6DuLL);
  sub_24DDE8DAC(&v3, &unk_27F1B2A08);
  return OUTLINED_FUNCTION_1171((v0 + 288));
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.description.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 400) = v3;
  *(v2 + 408) = v1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.activityVendorId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 416) = v3;
  *(v2 + 424) = v1;
  return result;
}

uint64_t sub_24DD9E088(uint64_t a1)
{
  OUTLINED_FUNCTION_924();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v5 = sub_24DE22D20();
  if (!v2)
  {
    *v3 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.activityProperties.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 432) = v2;
  return result;
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.ascResourceId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 440) = v3;
  *(v2 + 448) = v1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.visibility.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 456) = v3;
  *(v2 + 464) = v1;
  return result;
}

__n128 Components.Schemas.Leaderboard_GetLeaderboards_Result.init(preRelease:leaderboardId:baseLeaderboardId:groupId:isPrerelease:title:_type:startDate:duration:nextStartDate:imageUrls:artwork:allowChallenges:description:activityVendorId:activityProperties:ascResourceId:visibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, const void *a31, const void *a32, char a33, __int128 a34, uint64_t a35, uint64_t a36, uint64_t *a37, __int128 a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_659();
  v60 = v40;
  v58 = v41;
  v59 = v42;
  v57 = v43;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  OUTLINED_FUNCTION_349();
  v61 = *a37;
  sub_24DDE3BE4(__src);
  *(v53 + 288) = 0;
  *(v53 + 296) = 0;
  *(v53 + 304) = 1;
  *(v53 + 312) = 0u;
  *(v53 + 328) = 0u;
  *(v53 + 344) = 0u;
  *(v53 + 360) = 0u;
  *(v53 + 376) = 0u;
  *(v53 + 389) = 0;
  *v53 = v51;
  *(v53 + 8) = v49;
  *(v53 + 16) = v47;
  *(v53 + 24) = v45;
  *(v53 + 32) = v57;
  *(v53 + 40) = v58;
  *(v53 + 48) = v59;
  *(v53 + 56) = v60;
  *(v53 + 64) = v55;
  *(v53 + 80) = v56;
  *(v53 + 96) = a25;
  *(v53 + 104) = a26 & 1;
  *(v53 + 112) = a27;
  *(v53 + 120) = a28 & 1;
  *(v53 + 128) = a29;
  *(v53 + 136) = a30 & 1;
  memcpy(__dst, __src, sizeof(__dst));
  sub_24DDE8DAC(__dst, &unk_27F1B2D08);
  memcpy((v53 + 144), a31, 0x90uLL);
  memcpy(v64, (v53 + 288), 0x6DuLL);
  sub_24DDE8DAC(v64, &unk_27F1B2A08);
  memcpy((v53 + 288), a32, 0x6DuLL);
  *(v53 + 397) = a33;
  *(v53 + 400) = a34;
  *(v53 + 416) = a35;
  *(v53 + 424) = a36;

  *(v53 + 432) = v61;
  *(v53 + 440) = a38;
  *(v53 + 456) = a39;
  *(v53 + 464) = a40;
  OUTLINED_FUNCTION_653();
  return result;
}

GameCenterServerClient::Components::Schemas::Leaderboard_GetLeaderboards_Result::CodingKeys_optional __swiftcall Components.Schemas.Leaderboard_GetLeaderboards_Result.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 18;
  if (v2 < 0x12)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Leaderboard_GetLeaderboards_Result::CodingKeys_optional __swiftcall Components.Schemas.Leaderboard_GetLeaderboards_Result.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Leaderboard_GetLeaderboards_Result.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void Components.Schemas.Leaderboard_GetLeaderboards_Result.CodingKeys.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_34();
      break;
    case 2:
    case 0xF:
      OUTLINED_FUNCTION_155();
      break;
    case 4:
      OUTLINED_FUNCTION_647();
      break;
    case 6:
      OUTLINED_FUNCTION_897();
      break;
    case 8:
      OUTLINED_FUNCTION_263();
      break;
    case 9:
      OUTLINED_FUNCTION_1138(0x7478656Eu);
      break;
    case 0xA:
      OUTLINED_FUNCTION_419();
      break;
    case 0xB:
      OUTLINED_FUNCTION_340();
      break;
    case 0xC:
      OUTLINED_FUNCTION_1123(19);
      break;
    case 0xE:
      OUTLINED_FUNCTION_344(19);
      break;
    case 0x10:
      OUTLINED_FUNCTION_925();
      break;
    default:
      return;
  }
}

void sub_24DD9E734(uint64_t *a1@<X8>)
{
  Components.Schemas.Leaderboard_GetLeaderboards_Result.CodingKeys.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DD9E764()
{
  sub_24DDE3C5C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD9E79C()
{
  sub_24DDE3C5C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Leaderboard_GetLeaderboards_Result.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v7 = v6;
  v9 = v8;
  v10 = *v8;
  v11 = *(v8 + 1);
  v12 = *(v8 + 2);
  v168 = *(v8 + 4);
  v170 = *(v8 + 3);
  v161 = *(v8 + 5);
  v166 = *(v8 + 6);
  v163 = v8[56];
  v158 = *(v8 + 9);
  v159 = *(v8 + 8);
  v154 = *(v8 + 11);
  v155 = *(v8 + 10);
  v148 = *(v8 + 12);
  v151 = v8[104];
  v143 = *(v8 + 14);
  v149 = v8[120];
  v141 = *(v8 + 16);
  v144 = v8[136];
  OUTLINED_FUNCTION_1008(v182);
  memcpy(__dst, v9 + 288, 0x6DuLL);
  v139 = v9[397];
  v138 = *(v9 + 51);
  v136 = *(v9 + 50);
  v137 = *(v9 + 53);
  v134 = *(v9 + 52);
  v135 = *(v9 + 54);
  v130 = *(v9 + 57);
  v131 = *(v9 + 55);
  v132 = *(v9 + 58);
  v133 = *(v9 + 56);
  v13 = *v7;
  v14 = *(v7 + 1);
  v15 = *(v7 + 2);
  v16 = *(v7 + 3);
  v17 = *(v7 + 4);
  v160 = *(v7 + 5);
  v164 = *(v7 + 6);
  v162 = v7[56];
  v156 = *(v7 + 9);
  v157 = *(v7 + 8);
  v152 = *(v7 + 11);
  v153 = *(v7 + 10);
  v147 = *(v7 + 12);
  v150 = v7[104];
  v142 = *(v7 + 14);
  v140 = *(v7 + 16);
  v145 = v7[136];
  v146 = v7[120];
  OUTLINED_FUNCTION_1168(v184);
  memcpy(v185, v7 + 288, 0x6DuLL);
  v18 = v7[397];
  v20 = *(v7 + 50);
  v19 = *(v7 + 51);
  v22 = *(v7 + 52);
  v21 = *(v7 + 53);
  v24 = *(v7 + 54);
  v23 = *(v7 + 55);
  v26 = *(v7 + 56);
  v25 = *(v7 + 57);
  v27 = *(v7 + 58);
  if (v10 == 2)
  {
    if (v13 != 2)
    {
      goto LABEL_78;
    }
  }

  else if (v13 == 2 || ((v13 ^ v10) & 1) != 0)
  {
    goto LABEL_78;
  }

  if (v12)
  {
    if (!v15)
    {
      goto LABEL_78;
    }

    if (v11 != v14 || v12 != v15)
    {
      v122 = *(v7 + 52);
      v125 = *(v7 + 54);
      v129 = v7[397];
      v118 = *(v7 + 57);
      v120 = *(v7 + 50);
      v29 = *(v7 + 55);
      v30 = *(v7 + 58);
      v31 = *(v7 + 56);
      v32 = *(v7 + 53);
      v33 = *(v7 + 51);
      OUTLINED_FUNCTION_818();
      v34 = sub_24DE22CA0();
      v18 = v129;
      v20 = v120;
      v22 = v122;
      v19 = v33;
      v21 = v32;
      v24 = v125;
      v23 = v29;
      v26 = v31;
      v25 = v118;
      v27 = v30;
      if ((v34 & 1) == 0)
      {
        goto LABEL_78;
      }
    }
  }

  else if (v15)
  {
    goto LABEL_78;
  }

  v35 = v170 == v16 && v168 == v17;
  if (v35 || (v123 = v22, v126 = v24, v36 = v25, v37 = v23, v38 = v27, v39 = v26, v40 = v21, v41 = v19, OUTLINED_FUNCTION_1301(v170, v168), OUTLINED_FUNCTION_1225(), v19 = v41, v22 = v123, v24 = v126, v21 = v40, v23 = v37, v26 = v39, v25 = v36, v27 = v38, (v42 & 1) != 0))
  {
    if (v166)
    {
      if (!v164)
      {
        goto LABEL_78;
      }

      if (v161 != v160 || v166 != v164)
      {
        v127 = v24;
        v44 = v25;
        v45 = v23;
        v46 = v22;
        v47 = v27;
        v48 = v26;
        v49 = v21;
        v50 = v19;
        sub_24DE22CA0();
        OUTLINED_FUNCTION_1225();
        v19 = v50;
        v22 = v46;
        v21 = v49;
        v24 = v127;
        v23 = v45;
        v26 = v48;
        v25 = v44;
        v27 = v47;
        if ((v51 & 1) == 0)
        {
          goto LABEL_78;
        }
      }
    }

    else if (v164)
    {
      goto LABEL_78;
    }

    if (v163 == 2)
    {
      if (v162 != 2)
      {
        goto LABEL_78;
      }
    }

    else if (v162 == 2 || ((v162 ^ v163) & 1) != 0)
    {
      goto LABEL_78;
    }

    v52 = v159 == v157 && v158 == v156;
    v128 = v24;
    if (v52 || (v53 = v25, v54 = v23, v55 = v22, v56 = v27, v57 = v26, v58 = v21, v59 = v19, sub_24DE22CA0(), OUTLINED_FUNCTION_1225(), v19 = v59, v22 = v55, v21 = v58, v23 = v54, v26 = v57, v25 = v53, v27 = v56, (v60 & 1) != 0))
    {
      v61 = v155 == v153 && v154 == v152;
      if (v61 || (v62 = v25, v63 = v23, v64 = v22, v65 = v27, v66 = v26, v67 = v21, v68 = v19, sub_24DE22CA0(), OUTLINED_FUNCTION_1225(), v19 = v68, v22 = v64, v21 = v67, v23 = v63, v26 = v66, v25 = v62, v27 = v65, (v69 & 1) != 0))
      {
        if (v151)
        {
          if (!v150)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v70 = v150;
          if (v148 != v147)
          {
            v70 = 1;
          }

          if (v70)
          {
            goto LABEL_78;
          }
        }

        if (v149)
        {
          if (!v146)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v71 = v146;
          if (v143 != v142)
          {
            v71 = 1;
          }

          if (v71)
          {
            goto LABEL_78;
          }
        }

        if (v144)
        {
          if (!v145)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v72 = v145;
          if (v141 != v140)
          {
            v72 = 1;
          }

          if (v72)
          {
            goto LABEL_78;
          }
        }

        v73 = v18;
        v121 = v20;
        v124 = v22;
        v74 = v19;
        v169 = v26;
        v171 = v21;
        v165 = v23;
        v167 = v27;
        v119 = v25;
        OUTLINED_FUNCTION_1008(__src);
        OUTLINED_FUNCTION_1168(&__src[9]);
        OUTLINED_FUNCTION_1008(v181);
        if (sub_24DDE3C08(v181) == 1)
        {
          OUTLINED_FUNCTION_1168(v178);
          if (sub_24DDE3C08(v178) == 1)
          {
            OUTLINED_FUNCTION_1008(v179);
            OUTLINED_FUNCTION_377();
            sub_24DDE73DC(v75);
            OUTLINED_FUNCTION_377();
            sub_24DDE73DC(v76);
            OUTLINED_FUNCTION_444();
            sub_24DDE8DAC(v77, v78);
LABEL_70:
            v176 = __dst[0];
            v93 = *&__dst[1];
            memcpy(v172, &__dst[1] + 8, 0x55uLL);
            *&v175[3] = v185[0];
            v94 = *&v185[1];
            memcpy(v174, &v185[1] + 8, sizeof(v174));
            if (*&__dst[1] == 1)
            {
              if (*&v185[1] == 1)
              {
                __src[0] = __dst[0];
                *&__src[1] = 1;
                OUTLINED_FUNCTION_1291();
                OUTLINED_FUNCTION_377();
                sub_24DDE73DC(v95);
                OUTLINED_FUNCTION_377();
                sub_24DDE73DC(v96);
                OUTLINED_FUNCTION_444();
                sub_24DDE8DAC(v97, v98);
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_377();
              sub_24DDE73DC(v102);
              OUTLINED_FUNCTION_377();
              sub_24DDE73DC(v103);
            }

            else
            {
              __src[0] = __dst[0];
              *&__src[1] = *&__dst[1];
              OUTLINED_FUNCTION_1291();
              memcpy(v178, __src, 0x6DuLL);
              if (v94 != 1)
              {
                v179[0] = v185[0];
                memcpy(&v179[1] + 8, &v185[1] + 8, 0x55uLL);
                *&v179[1] = v94;
                static Components.Schemas.Artwork.== infix(_:_:)(v178, v179);
                v105 = v104;
                memcpy(v173, v179, 0x6DuLL);
                OUTLINED_FUNCTION_499();
                sub_24DDE73DC(v106);
                OUTLINED_FUNCTION_499();
                sub_24DDE73DC(v107);
                OUTLINED_FUNCTION_499();
                sub_24DDE73DC(v108);
                sub_24DDE22DC(v173);
                memcpy(v177, v178, 0x6DuLL);
                sub_24DDE22DC(v177);
                v179[0] = v176;
                *&v179[1] = v93;
                memcpy(&v179[1] + 8, v172, 0x55uLL);
                OUTLINED_FUNCTION_592();
                sub_24DDE8DAC(v109, v110);
                if ((v105 & 1) == 0)
                {
                  goto LABEL_78;
                }

LABEL_80:
                if (v139 == 2)
                {
                  if (v73 != 2)
                  {
                    goto LABEL_78;
                  }
                }

                else if (v73 == 2 || ((v73 ^ v139) & 1) != 0)
                {
                  goto LABEL_78;
                }

                if (v138)
                {
                  if (!v74)
                  {
                    goto LABEL_78;
                  }

                  v111 = v136 == v121 && v138 == v74;
                  if (!v111 && (sub_24DE22CA0() & 1) == 0)
                  {
                    goto LABEL_78;
                  }
                }

                else if (v74)
                {
                  goto LABEL_78;
                }

                if (v137)
                {
                  if (!v171)
                  {
                    goto LABEL_78;
                  }

                  v112 = v134 == v124 && v137 == v171;
                  if (!v112 && (sub_24DE22CA0() & 1) == 0)
                  {
                    goto LABEL_78;
                  }
                }

                else if (v171)
                {
                  goto LABEL_78;
                }

                if (v135)
                {
                  if (v128)
                  {
                    OUTLINED_FUNCTION_948();
                    swift_bridgeObjectRetain_n();

                    v113 = OUTLINED_FUNCTION_464();
                    v115 = sub_24DD8A4CC(v113, v114);
                    OUTLINED_FUNCTION_948();
                    swift_bridgeObjectRelease_n();

                    if ((v115 & 1) == 0)
                    {
                      goto LABEL_78;
                    }

                    goto LABEL_110;
                  }
                }

                else if (!v128)
                {

LABEL_110:
                  if (v133)
                  {
                    if (!v169)
                    {
                      goto LABEL_78;
                    }

                    v116 = v131 == v165 && v133 == v169;
                    if (!v116 && (sub_24DE22CA0() & 1) == 0)
                    {
                      goto LABEL_78;
                    }
                  }

                  else if (v169)
                  {
                    goto LABEL_78;
                  }

                  if (v132 && v167 && (v130 != v119 || v132 != v167))
                  {
                    sub_24DE22CA0();
                  }

                  goto LABEL_78;
                }

                goto LABEL_78;
              }

              memcpy(v179, __src, 0x6DuLL);
              OUTLINED_FUNCTION_377();
              sub_24DDE73DC(v99);
              OUTLINED_FUNCTION_377();
              sub_24DDE73DC(v100);
              OUTLINED_FUNCTION_377();
              sub_24DDE73DC(v101);
              sub_24DDE22DC(v179);
            }

            __src[0] = v176;
            *&__src[1] = v93;
            memcpy(&__src[1] + 8, v172, 0x55uLL);
            *(&__src[6] + 13) = *v175;
            HIDWORD(__src[7]) = *&v175[15];
            *&__src[8] = v94;
            memcpy(&__src[8] + 8, v174, 0x55uLL);
            v84 = &unk_27F1B2A10;
            v85 = __src;
LABEL_77:
            sub_24DDE8DAC(v85, v84);
            goto LABEL_78;
          }

          OUTLINED_FUNCTION_377();
          sub_24DDE73DC(v82);
          OUTLINED_FUNCTION_377();
          sub_24DDE73DC(v83);
        }

        else
        {
          OUTLINED_FUNCTION_1008(v179);
          OUTLINED_FUNCTION_1168(v178);
          if (sub_24DDE3C08(v178) != 1)
          {
            static Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.== infix(_:_:)((v9 + 144), (v7 + 144));
            v87 = v86;
            OUTLINED_FUNCTION_1168(v172);
            OUTLINED_FUNCTION_499();
            sub_24DDE73DC(v88);
            OUTLINED_FUNCTION_499();
            sub_24DDE73DC(v89);
            OUTLINED_FUNCTION_499();
            sub_24DDE73DC(v90);
            sub_24DDE3C2C(v172);
            OUTLINED_FUNCTION_1008(v173);
            sub_24DDE3C2C(v173);
            OUTLINED_FUNCTION_1008(v177);
            OUTLINED_FUNCTION_592();
            sub_24DDE8DAC(v91, v92);
            if ((v87 & 1) == 0)
            {
              goto LABEL_78;
            }

            goto LABEL_70;
          }

          OUTLINED_FUNCTION_1008(v177);
          OUTLINED_FUNCTION_377();
          sub_24DDE73DC(v79);
          OUTLINED_FUNCTION_377();
          sub_24DDE73DC(v80);
          OUTLINED_FUNCTION_377();
          sub_24DDE73DC(v81);
          sub_24DDE3C2C(v177);
        }

        memcpy(v178, __src, sizeof(v178));
        v84 = &unk_27F1B2D10;
        v85 = v178;
        goto LABEL_77;
      }
    }
  }

LABEL_78:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.Leaderboard_GetLeaderboards_Result.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_645();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2D18, &qword_24DE232C0);
  OUTLINED_FUNCTION_18();
  v30 = v29;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_138();
  memcpy(v38, (v24 + 144), sizeof(v38));
  memcpy(v39, (v24 + 288), 0x6DuLL);
  OUTLINED_FUNCTION_173(v28);
  sub_24DDE3C5C();
  OUTLINED_FUNCTION_501();
  sub_24DE22D50();
  v37[0] = 0;
  sub_24DE22C00();
  if (v25)
  {
    v32 = OUTLINED_FUNCTION_393();
    v33(v32);
  }

  else
  {
    OUTLINED_FUNCTION_531(1);
    OUTLINED_FUNCTION_338();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(2);
    OUTLINED_FUNCTION_338();
    sub_24DE22C50();
    OUTLINED_FUNCTION_531(3);
    OUTLINED_FUNCTION_338();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_771(4);
    OUTLINED_FUNCTION_529();
    sub_24DE22C00();
    OUTLINED_FUNCTION_531(5);
    OUTLINED_FUNCTION_338();
    sub_24DE22C50();
    OUTLINED_FUNCTION_531(6);
    OUTLINED_FUNCTION_338();
    sub_24DE22C50();
    OUTLINED_FUNCTION_531(7);
    OUTLINED_FUNCTION_338();
    sub_24DE22C40();
    OUTLINED_FUNCTION_531(8);
    OUTLINED_FUNCTION_338();
    sub_24DE22C40();
    OUTLINED_FUNCTION_531(9);
    OUTLINED_FUNCTION_338();
    sub_24DE22C40();
    memcpy(v37, v38, sizeof(v37));
    sub_24DDE73DC(v38);
    sub_24DDE3CB0();
    OUTLINED_FUNCTION_529();
    sub_24DE22C20();
    memcpy(v36, v37, sizeof(v36));
    sub_24DDE8DAC(v36, &unk_27F1B2D08);
    OUTLINED_FUNCTION_1314(v35);
    sub_24DDE73DC(v39);
    sub_24DDE262C();
    OUTLINED_FUNCTION_865();
    sub_24DE22C20();
    memcpy(v34, v35, 0x6DuLL);
    sub_24DDE8DAC(v34, &unk_27F1B2A08);
    OUTLINED_FUNCTION_865();
    sub_24DE22C00();
    OUTLINED_FUNCTION_1221(13);
    OUTLINED_FUNCTION_865();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_1221(14);
    OUTLINED_FUNCTION_865();
    sub_24DE22BF0();
    sub_24DDE3D04();
    OUTLINED_FUNCTION_757();

    OUTLINED_FUNCTION_865();
    sub_24DE22C20();

    OUTLINED_FUNCTION_1221(16);
    OUTLINED_FUNCTION_865();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_1221(17);
    OUTLINED_FUNCTION_865();
    sub_24DE22BF0();
    (*(v30 + 8))(v26);
  }

  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Leaderboard_GetLeaderboards_Result.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v8 = v7;
  v9 = *(v6 + 16);
  v10 = *(v6 + 48);
  v21 = *(v6 + 56);
  v18 = *(v6 + 96);
  v19 = *(v6 + 112);
  v22 = *(v6 + 104);
  v23 = *(v6 + 120);
  v20 = *(v6 + 128);
  v24 = *(v6 + 136);
  v11 = *(v6 + 304);
  v12 = *(v6 + 397);
  v26 = *(v6 + 408);
  v27 = *(v6 + 424);
  v28 = *(v6 + 432);
  v25 = *(v6 + 448);
  v13 = *(v6 + 464);
  if (*v6 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v9)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1083();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  sub_24DE22AD0();
  if (v10)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v21 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  sub_24DE22AD0();
  sub_24DE22AD0();
  if (v22)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v18);
  }

  if (v23)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v19);
  }

  if (v24)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v20);
  }

  memcpy(v32, (v6 + 144), 0x90uLL);
  if (sub_24DDE3C08(v32) == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    memcpy(__dst, (v6 + 144), sizeof(__dst));
    sub_24DDE3D58(__dst, v31);
    Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.hash(into:)(v8, v14, v15);
    memcpy(v31, (v6 + 144), sizeof(v31));
    sub_24DDE3C2C(v31);
  }

  if (v11 == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    __src[0] = *(v6 + 288);
    memcpy(&__src[1] + 8, (v6 + 312), 0x55uLL);
    *&__src[1] = v11;
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    __dst[0] = *(v6 + 288);
    *&__dst[1] = v11;
    memcpy(&__dst[1] + 8, (v6 + 312), 0x55uLL);
    sub_24DDE230C(__dst, v31);
    Components.Schemas.Artwork.hash(into:)(v8);
    memcpy(v31, __src, 0x6DuLL);
    sub_24DDE22DC(v31);
  }

  if (v12 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v26)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
    if (v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
    OUTLINED_FUNCTION_795();
    if (v27)
    {
LABEL_30:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1278();
      sub_24DE22AD0();
      if (v28)
      {
        goto LABEL_31;
      }

      goto LABEL_36;
    }
  }

  OUTLINED_FUNCTION_795();
  if (v28)
  {
LABEL_31:
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v16 = OUTLINED_FUNCTION_492();
    sub_24DDE2424(v16, v17);
    if (v25)
    {
      goto LABEL_32;
    }

LABEL_37:
    OUTLINED_FUNCTION_795();
    if (v13)
    {
      goto LABEL_33;
    }

LABEL_38:
    OUTLINED_FUNCTION_795();
    goto LABEL_39;
  }

LABEL_36:
  OUTLINED_FUNCTION_795();
  if (!v25)
  {
    goto LABEL_37;
  }

LABEL_32:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  sub_24DE22AD0();
  if (!v13)
  {
    goto LABEL_38;
  }

LABEL_33:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  sub_24DE22AD0();
LABEL_39:
  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.Leaderboard_GetLeaderboards_Result.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.Leaderboard_GetLeaderboards_Result.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

void Components.Schemas.Leaderboard_GetLeaderboards_Result.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_359();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2D38, &qword_24DE232C8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_140();
  sub_24DDE3BE4(v129);
  memcpy(&v121[7], v129, 0x90uLL);
  v11 = v5[4];
  OUTLINED_FUNCTION_153(v5);
  sub_24DDE3C5C();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_347();
    OUTLINED_FUNCTION_1050();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);

    if (v8)
    {
    }

    if (v9)
    {
    }

    memcpy(v86, &v121[7], 0x90uLL);
    sub_24DDE8DAC(v86, &unk_27F1B2D08);
    v85[0] = v81;
    v85[1] = v79;
    v85[2] = v56;
    v85[3] = v77;
    v85[4] = v75;
    v85[5] = v73;
    v85[6] = v71;
    v85[7] = v69;
    v85[8] = v67;
    v85[9] = v64;
    v85[10] = v62;
    v85[11] = v60;
    v85[12] = v58;
    BYTE4(v85[13]) = BYTE4(v11);
    LODWORD(v85[13]) = v11;
    sub_24DDE8DAC(v85, &unk_27F1B2A08);
  }

  else
  {
    v52 = v7;
    LOBYTE(v86[0]) = 0;
    OUTLINED_FUNCTION_165();
    v12 = sub_24DE22B50();
    OUTLINED_FUNCTION_39(1);
    v13 = sub_24DE22B40();
    v51 = v14;
    OUTLINED_FUNCTION_39(2);
    v15 = sub_24DE22BA0();
    v55 = v16;
    OUTLINED_FUNCTION_39(3);
    v50 = sub_24DE22B40();
    v83 = v17;
    OUTLINED_FUNCTION_39(4);
    v49 = sub_24DE22B50();
    OUTLINED_FUNCTION_39(5);
    v48 = sub_24DE22BA0();
    v54 = v18;
    OUTLINED_FUNCTION_39(6);
    v47 = sub_24DE22BA0();
    v53 = v19;
    OUTLINED_FUNCTION_39(7);
    v46 = sub_24DE22B90();
    v126 = v20 & 1;
    OUTLINED_FUNCTION_39(8);
    v45 = sub_24DE22B90();
    v43 = v15;
    v44 = v13;
    v124 = v21 & 1;
    OUTLINED_FUNCTION_39(9);
    v42 = sub_24DE22B90();
    v122 = v22 & 1;
    v119[151] = 10;
    sub_24DDE3D90();
    OUTLINED_FUNCTION_196();
    sub_24DE22B70();
    memcpy(v118, v120, sizeof(v118));
    memcpy(v119, &v121[7], 0x90uLL);
    sub_24DDE8DAC(v119, &unk_27F1B2D08);
    memcpy(&v121[7], v118, 0x90uLL);
    v102 = 11;
    sub_24DDE2758();
    OUTLINED_FUNCTION_196();
    sub_24DE22B70();
    v80 = v104;
    v82 = v103;
    v76 = v107;
    v78 = v106;
    v72 = v109;
    v74 = v108;
    v68 = v111;
    v70 = v110;
    v63 = v113;
    v65 = v112;
    v61 = v114;
    v57 = v105;
    v59 = v115;
    v23 = v116 | (v117 << 32);
    v100[1] = 0;
    v100[0] = 0;
    v100[2] = 1;
    v101 = 0u;
    OUTLINED_FUNCTION_1115(v100, 0);
    *(v24 + 101) = 0;
    sub_24DDE8DAC(v100, &unk_27F1B2A08);
    OUTLINED_FUNCTION_39(12);
    v41 = sub_24DE22B50();
    OUTLINED_FUNCTION_39(13);
    v40 = sub_24DE22B40();
    v130 = v25;
    OUTLINED_FUNCTION_39(14);
    v39 = sub_24DE22B40();
    v84 = v26;
    LOBYTE(v85[0]) = 15;
    sub_24DDE3DE4();
    OUTLINED_FUNCTION_196();
    sub_24DE22B70();
    v66 = v86[0];

    OUTLINED_FUNCTION_39(16);
    v38 = sub_24DE22B40();
    v28 = v27;
    v99 = 17;
    OUTLINED_FUNCTION_165();
    v29 = sub_24DE22B40();
    v36 = v30;
    v37 = v29;
    v31 = OUTLINED_FUNCTION_117();
    v32(v31);
    LOBYTE(v85[0]) = v12;
    *(v85 + 1) = *v128;
    HIDWORD(v85[0]) = *&v128[3];
    v85[1] = v44;
    v85[2] = v51;
    v85[3] = v43;
    v85[4] = v55;
    v85[5] = v50;
    v85[6] = v83;
    LOBYTE(v85[7]) = v49;
    *(&v85[7] + 1) = *v127;
    HIDWORD(v85[7]) = *&v127[3];
    v85[8] = v48;
    v85[9] = v54;
    v85[10] = v47;
    v85[11] = v53;
    v85[12] = v46;
    v35 = v126;
    LOBYTE(v85[13]) = v126;
    *(&v85[13] + 1) = *v125;
    HIDWORD(v85[13]) = *&v125[3];
    v85[14] = v45;
    v34 = v124;
    LOBYTE(v85[15]) = v124;
    *(&v85[15] + 1) = *v123;
    HIDWORD(v85[15]) = *&v123[3];
    v85[16] = v42;
    v33 = v122;
    LOBYTE(v85[17]) = v122;
    memcpy(&v85[17] + 1, v121, 0x97uLL);
    v85[36] = v82;
    v85[37] = v80;
    v85[38] = v57;
    v85[39] = v78;
    v85[40] = v76;
    v85[41] = v74;
    v85[42] = v72;
    v85[43] = v70;
    v85[44] = v68;
    v85[45] = v65;
    v85[46] = v63;
    v85[47] = v61;
    v85[48] = v59;
    BYTE4(v85[49]) = BYTE4(v23);
    LODWORD(v85[49]) = v23;
    BYTE5(v85[49]) = v41;
    v85[50] = v40;
    v85[51] = v130;
    v85[52] = v39;
    v85[53] = v84;
    v85[54] = v66;
    v85[55] = v38;
    v85[56] = v28;
    v85[57] = v37;
    v85[58] = v36;
    memcpy(v52, v85, 0x1D8uLL);
    sub_24DDE3E38(v85, v86);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    LOBYTE(v86[0]) = v12;
    *(v86 + 1) = *v128;
    HIDWORD(v86[0]) = *&v128[3];
    v86[1] = v44;
    v86[2] = v51;
    v86[3] = v43;
    v86[4] = v55;
    v86[5] = v50;
    v86[6] = v83;
    LOBYTE(v86[7]) = v49;
    *(&v86[7] + 1) = *v127;
    HIDWORD(v86[7]) = *&v127[3];
    v86[8] = v48;
    v86[9] = v54;
    v86[10] = v47;
    v86[11] = v53;
    v86[12] = v46;
    LOBYTE(v86[13]) = v35;
    *(&v86[13] + 1) = *v125;
    HIDWORD(v86[13]) = *&v125[3];
    v86[14] = v45;
    LOBYTE(v86[15]) = v34;
    *(&v86[15] + 1) = *v123;
    HIDWORD(v86[15]) = *&v123[3];
    v86[16] = v42;
    LOBYTE(v86[17]) = v33;
    memcpy(&v86[17] + 1, v121, 0x97uLL);
    v86[36] = v82;
    v86[37] = v80;
    v86[38] = v57;
    v86[39] = v78;
    v86[40] = v76;
    v86[41] = v74;
    v86[42] = v72;
    v86[43] = v70;
    v86[44] = v68;
    v86[45] = v65;
    v86[46] = v63;
    v86[47] = v61;
    v86[48] = v59;
    v88 = BYTE4(v23);
    v87 = v23;
    v89 = v41;
    v90 = v40;
    v91 = v130;
    v92 = v39;
    v93 = v84;
    v94 = v66;
    v95 = v38;
    v96 = v28;
    v97 = v37;
    v98 = v36;
    sub_24DDE3E70(v86);
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDA0614(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.Leaderboard_GetLeaderboards_Result.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Leaderboard_PlayerDescriptor.playerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_PlayerDescriptor.alias.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  return result;
}

double sub_24DDA073C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24DE22F30;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t Components.Schemas.Leaderboard_PlayerDescriptor.imageUrls.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 56);
  return sub_24DDE3EA0(v2, v3);
}

__n128 Components.Schemas.Leaderboard_PlayerDescriptor.imageUrls.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_605(a1);
  v4 = *(v3 + 24);
  sub_24DDE3EB4(*(v2 + 32), *(v2 + 40));
  result = v6;
  *(v2 + 32) = v6;
  *(v2 + 48) = v1;
  *(v2 + 56) = v4;
  return result;
}

__n128 Components.Schemas.Leaderboard_PlayerDescriptor.init(playerId:alias:imageUrls:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  v12 = *a5;
  v7 = a5[1].n128_u64[0];
  v8 = a5[1].n128_u8[8];
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  v9 = OUTLINED_FUNCTION_98();
  sub_24DDE3EB4(v9, v10);
  result = v12;
  a6[2] = v12;
  a6[3].n128_u64[0] = v7;
  a6[3].n128_u8[8] = v8;
  return result;
}

GameCenterServerClient::Components::Schemas::Leaderboard_PlayerDescriptor::CodingKeys_optional __swiftcall Components.Schemas.Leaderboard_PlayerDescriptor.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Leaderboard_PlayerDescriptor.CodingKeys.stringValue.getter()
{
  v1 = 0x7361696C61;
  if (*v0 != 1)
  {
    v1 = 0x72752D6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x692D726579616C70;
  }
}

uint64_t sub_24DDA091C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Leaderboard_PlayerDescriptor.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDA094C()
{
  sub_24DDE3EC8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDA0984()
{
  sub_24DDE3EC8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Leaderboard_PlayerDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_628();
  v3 = *(v2 + 16);
  v5 = *(v2 + 24);
  v4 = *(v2 + 32);
  v7 = *(v2 + 40);
  v6 = *(v2 + 48);
  v8 = *(v2 + 56);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  v14 = *(v9 + 40);
  v15 = *(v9 + 48);
  v16 = *(v9 + 56);
  if (!*(v2 + 8))
  {
    if (v10)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v5)
    {
      if (!v12)
      {
        goto LABEL_40;
      }

      if (v3 != v11 || v5 != v12)
      {
        OUTLINED_FUNCTION_457();
        OUTLINED_FUNCTION_818();
        v28 = v8;
        v30 = v29;
        v12 = v31;
        v32 = sub_24DE22CA0();
        v14 = v12;
        v6 = v30;
        v8 = v28;
        if ((v32 & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else if (v12)
    {
      goto LABEL_40;
    }

    if (v7 == 1)
    {
      OUTLINED_FUNCTION_545();
      OUTLINED_FUNCTION_599();
      v34 = v33;
      sub_24DDE3EA0(v35, v36);
      if (v34 == 1)
      {
        v37 = OUTLINED_FUNCTION_603();
        sub_24DDE3EA0(v37, v38);
        v39 = OUTLINED_FUNCTION_545();
        sub_24DDE3EB4(v39, v40);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_693();
      sub_24DDE3EA0(v47, v48);
      goto LABEL_25;
    }

    if (v14 == 1)
    {
      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_599();
      sub_24DDE3EA0(v41, v42);
      v43 = OUTLINED_FUNCTION_603();
      sub_24DDE3EA0(v43, v44);
      v45 = OUTLINED_FUNCTION_214();
      sub_24DDE3EA0(v45, v46);

LABEL_25:
      v49 = OUTLINED_FUNCTION_214();
      sub_24DDE3EB4(v49, v50);
      OUTLINED_FUNCTION_693();
LABEL_39:
      sub_24DDE3EB4(v51, v52);
      goto LABEL_40;
    }

    if (v7)
    {
      if (v14)
      {
        if (v4 != v13 || v7 != v14)
        {
          v12 = v6;
          v54 = sub_24DE22CA0();
          v55 = OUTLINED_FUNCTION_214();
          sub_24DDE3EA0(v55, v56);
          OUTLINED_FUNCTION_498();
          OUTLINED_FUNCTION_693();
          sub_24DDE3EA0(v57, v58);
          v59 = OUTLINED_FUNCTION_214();
          sub_24DDE3EA0(v59, v60);
          OUTLINED_FUNCTION_498();
          OUTLINED_FUNCTION_693();
          sub_24DDE3EB4(v61, v62);
          if ((v54 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_43;
        }

        OUTLINED_FUNCTION_599();
        sub_24DDE3EA0(v79, v80);
        OUTLINED_FUNCTION_440();
        OUTLINED_FUNCTION_693();
        sub_24DDE3EA0(v81, v82);
        v83 = OUTLINED_FUNCTION_214();
        sub_24DDE3EA0(v83, v84);
        OUTLINED_FUNCTION_440();
LABEL_42:
        OUTLINED_FUNCTION_693();
        sub_24DDE3EB4(v85, v86);
LABEL_43:
        if (v8)
        {
          if (v16)
          {
LABEL_48:

            v87 = OUTLINED_FUNCTION_214();
            sub_24DDE3EB4(v87, v88);
            goto LABEL_40;
          }
        }

        else if ((v16 & 1) == 0 && v12 == v15)
        {
          goto LABEL_48;
        }

LABEL_38:

        v51 = OUTLINED_FUNCTION_214();
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_599();
      sub_24DDE3EA0(v71, v72);
    }

    else
    {
      OUTLINED_FUNCTION_1261();
      OUTLINED_FUNCTION_599();
      v64 = v63;
      sub_24DDE3EA0(v65, v66);
      if (!v64)
      {
        OUTLINED_FUNCTION_1196();
        OUTLINED_FUNCTION_693();
        sub_24DDE3EA0(v67, v68);
        v69 = OUTLINED_FUNCTION_1261();
        sub_24DDE3EA0(v69, v70);
        OUTLINED_FUNCTION_1196();
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_693();
    sub_24DDE3EA0(v73, v74);
    v75 = OUTLINED_FUNCTION_674();
    sub_24DDE3EA0(v75, v76);
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_693();
    sub_24DDE3EB4(v77, v78);
    goto LABEL_38;
  }

  if (v10)
  {
    OUTLINED_FUNCTION_360(v2);
    v19 = v19 && v17 == v18;
    if (v19)
    {
      goto LABEL_10;
    }

    v89 = v15;
    v90 = v13;
    v20 = v7;
    v21 = v4;
    v22 = v16;
    v23 = v8;
    v24 = v6;
    v25 = v14;
    v26 = sub_24DE22CA0();
    v14 = v25;
    v6 = v24;
    v8 = v23;
    v16 = v22;
    v4 = v21;
    v7 = v20;
    v15 = v89;
    v13 = v90;
    if (v26)
    {
      goto LABEL_10;
    }
  }

LABEL_40:
  OUTLINED_FUNCTION_549();
}

void Components.Schemas.Leaderboard_PlayerDescriptor.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2D50, &qword_24DE232D0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_1180();
  OUTLINED_FUNCTION_153(v24);
  sub_24DDE3EC8();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_1125(v26);
  OUTLINED_FUNCTION_498();
  sub_24DE22BF0();
  if (!v33)
  {
    OUTLINED_FUNCTION_565(1);
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_606();
    OUTLINED_FUNCTION_890();
    sub_24DDE3EA0(v27, v28);
    sub_24DDE3F1C();
    OUTLINED_FUNCTION_166();
    sub_24DE22C20();
    sub_24DDE3EB4(v32, v31);
  }

  v29 = OUTLINED_FUNCTION_180();
  v30(v29);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Leaderboard_PlayerDescriptor.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_438();
  v7 = *(v6 + 24);
  v9 = *(v6 + 40);
  v8 = *(v6 + 48);
  v10 = *(v6 + 56);
  if (*(v6 + 8))
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_426();
    sub_24DE22AD0();
    if (v7)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_533();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v9 != 1)
  {
    sub_24DE22CE0();
    if (v9)
    {
      sub_24DE22CE0();
      OUTLINED_FUNCTION_406();
      sub_24DE22AD0();
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_24DE22CE0();
      if (v10)
      {
        goto LABEL_9;
      }
    }

    sub_24DE22CE0();
    MEMORY[0x253039750](v8);
    goto LABEL_12;
  }

LABEL_9:
  sub_24DE22CE0();
LABEL_12:
  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.Leaderboard_PlayerDescriptor.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.Leaderboard_PlayerDescriptor.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

void Components.Schemas.Leaderboard_PlayerDescriptor.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2D68, &qword_24DE232D8);
  OUTLINED_FUNCTION_27();
  v26 = v25;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_223();
  v28 = v23[3];
  v29 = v23[4];
  OUTLINED_FUNCTION_153(v23);
  sub_24DDE3EC8();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v24)
  {
    OUTLINED_FUNCTION_202();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v51 = v29;
    v52 = v28;
    v53 = v26;
    v54 = 0;
    v55 = xmmword_24DE22F30;
    v56 = 0;
    v57 = 0;
  }

  else
  {
    LOBYTE(v51) = 0;
    v30 = sub_24DE22B40();
    v32 = v31;
    OUTLINED_FUNCTION_1270();
    OUTLINED_FUNCTION_302();
    v33 = sub_24DE22B40();
    v35 = v34;
    OUTLINED_FUNCTION_890();
    sub_24DDE3FA0();
    OUTLINED_FUNCTION_1202();
    sub_24DE22B70();
    v36 = OUTLINED_FUNCTION_642();
    v37(v36);
    v38 = v49[1];
    v46 = v49[0];
    v39 = v50;
    v40 = OUTLINED_FUNCTION_98();
    sub_24DDE3EB4(v40, v41);
    v47[0] = v30;
    v47[1] = v32;
    v47[2] = v33;
    v47[3] = v35;
    *v48 = v49[0];
    *&v48[8] = v49[1];
    v42 = v49[2];
    *&v48[16] = v49[2];
    v48[24] = v50;
    OUTLINED_FUNCTION_733();
    *v43 = v44;
    v43[1] = v45;
    v43[2] = *v48;
    *(v43 + 41) = *&v48[9];
    sub_24DDE3FF4(v47, &v51);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v51 = v30;
    v52 = v32;
    v53 = v33;
    v54 = v35;
    *&v55 = v46;
    *(&v55 + 1) = v38;
    v56 = v42;
    v57 = v39;
  }

  sub_24DDE3F70(&v51);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDA1208(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.Leaderboard_PlayerDescriptor.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl._64.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl._128.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl._256.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 32) = v3;
  *(v2 + 40) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl._512.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 48) = v3;
  *(v2 + 56) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.template.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 64) = v3;
  *(v2 + 72) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.phone.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 80) = v3;
  *(v2 + 88) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.phoneHiRes.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 96) = v3;
  *(v2 + 104) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.padMyLeaderboards.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.padCompareLeaderboards.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 128) = v3;
  *(v2 + 136) = v1;
  return result;
}

void __swiftcall Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.init(_64:_128:_256:_512:template:phone:phoneHiRes:padMyLeaderboards:padCompareLeaderboards:)(GameCenterServerClient::Components::Schemas::Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl *__return_ptr retstr, Swift::String_optional _64, Swift::String_optional _128, Swift::String_optional _256, Swift::String_optional _512, Swift::String_optional templatea, Swift::String_optional phone, Swift::String_optional phoneHiRes, Swift::String_optional padMyLeaderboards, Swift::String_optional padCompareLeaderboards)
{
  OUTLINED_FUNCTION_1329(_64.value._countAndFlagsBits, _64.value._object, _128.value._countAndFlagsBits, _128.value._object, _256.value._countAndFlagsBits, _256.value._object, _512.value._countAndFlagsBits, _512.value._object, retstr);
  *(v10 + 64) = v12;
  *(v10 + 80) = v11;
  *(v10 + 96) = v14;
  *(v10 + 112) = v13;
  *(v10 + 128) = v16;
  *(v10 + 136) = v15;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void sub_24DDA16FC()
{
  switch(*v0)
  {
    case 7:
      OUTLINED_FUNCTION_155();
      break;
    default:
      return;
  }
}

uint64_t sub_24DDA187C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDA18B0()
{
  sub_24DDE402C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDA18E8()
{
  sub_24DDE402C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1283();
  v4 = v3;
  v5 = v2[1];
  v7 = v2[3];
  v6 = v2[4];
  v9 = v2[5];
  v8 = v2[6];
  v11 = v2[7];
  v10 = v2[8];
  v12 = v2[9];
  v13 = v2[10];
  v15 = v2[11];
  v14 = v2[12];
  v16 = v2[13];
  v115 = v2[14];
  v119 = v2[15];
  v17 = v2[16];
  v118 = v2[17];
  v18 = v4[1];
  v121 = v4[2];
  v19 = v4[3];
  v20 = v4[4];
  v22 = v4[5];
  v21 = v4[6];
  v24 = v4[7];
  v23 = v4[8];
  v26 = v4[9];
  v25 = v4[10];
  v28 = v4[11];
  v27 = v4[12];
  v29 = v4[13];
  v116 = v4[14];
  v120 = v4[15];
  v114 = v4[16];
  v117 = v4[17];
  if (v5)
  {
    if (!v18)
    {
      goto LABEL_80;
    }

    v113 = v2[2];
    if (*v2 != *v4 || v5 != v18)
    {
      v110 = v4[9];
      v111 = v4[10];
      v101 = v4[7];
      v92 = v2[16];
      v94 = v4[5];
      v31 = v2[12];
      v97 = v2[5];
      v98 = v4[6];
      v32 = v2[13];
      v33 = v4[13];
      v90 = v4[12];
      v91 = v2[8];
      v34 = v2[10];
      v95 = v2[4];
      v35 = v2[11];
      v104 = v2[6];
      v107 = v4[8];
      v36 = v4[11];
      v37 = v2[9];
      v38 = sub_24DE22CA0();
      v26 = v110;
      v25 = v111;
      v12 = v37;
      v27 = v90;
      v10 = v91;
      v28 = v36;
      v8 = v104;
      v23 = v107;
      v15 = v35;
      v13 = v34;
      v29 = v33;
      v21 = v98;
      v24 = v101;
      v16 = v32;
      v6 = v95;
      v9 = v97;
      v14 = v31;
      v17 = v92;
      v22 = v94;
      if ((v38 & 1) == 0)
      {
        goto LABEL_80;
      }
    }
  }

  else
  {
    v113 = v2[2];
    if (v18)
    {
      goto LABEL_80;
    }
  }

  if (v7)
  {
    if (!v19)
    {
      goto LABEL_80;
    }

    if (v113 != v121 || v7 != v19)
    {
      v105 = v8;
      v93 = v17;
      v40 = v14;
      v41 = v16;
      v102 = v11;
      v42 = v29;
      v43 = v27;
      v99 = v21;
      v44 = v13;
      v96 = v6;
      v45 = v15;
      sub_24DE22CA0();
      OUTLINED_FUNCTION_1117();
      v20 = v46;
      v15 = v45;
      v6 = v96;
      v13 = v44;
      v21 = v99;
      v27 = v43;
      v8 = v105;
      v29 = v42;
      v11 = v102;
      v16 = v41;
      v14 = v40;
      v17 = v93;
      if ((v47 & 1) == 0)
      {
        goto LABEL_80;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_80;
  }

  if (v9)
  {
    if (!v22)
    {
      goto LABEL_80;
    }

    if (v6 != v20 || v9 != v22)
    {
      v106 = v8;
      v108 = v23;
      v49 = v17;
      v50 = v14;
      v51 = v16;
      v103 = v11;
      v52 = v29;
      v53 = v27;
      v100 = v21;
      v54 = v13;
      v55 = v15;
      sub_24DE22CA0();
      OUTLINED_FUNCTION_1117();
      v15 = v55;
      v13 = v54;
      v21 = v100;
      v27 = v53;
      v29 = v52;
      v11 = v103;
      v8 = v106;
      v16 = v51;
      v14 = v50;
      v17 = v49;
      v23 = v108;
      if ((v56 & 1) == 0)
      {
        goto LABEL_80;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_80;
  }

  if (v11)
  {
    if (!v24)
    {
      goto LABEL_80;
    }

    if (v8 != v21 || v11 != v24)
    {
      v109 = v23;
      v58 = v17;
      v59 = v14;
      v60 = v16;
      v61 = v29;
      v62 = v27;
      v63 = v13;
      v64 = v15;
      sub_24DE22CA0();
      OUTLINED_FUNCTION_1117();
      v15 = v64;
      v13 = v63;
      v27 = v62;
      v29 = v61;
      v16 = v60;
      v14 = v59;
      v17 = v58;
      v23 = v109;
      if ((v65 & 1) == 0)
      {
        goto LABEL_80;
      }
    }
  }

  else if (v24)
  {
    goto LABEL_80;
  }

  if (v12)
  {
    if (!v26)
    {
      goto LABEL_80;
    }

    if (v10 != v23 || v12 != v26)
    {
      v112 = v25;
      v23 = v17;
      v67 = v14;
      v68 = v16;
      v69 = v29;
      v70 = v27;
      v71 = v13;
      v72 = v15;
      v73 = v28;
      v74 = sub_24DE22CA0();
      v25 = v112;
      v28 = v73;
      v15 = v72;
      v13 = v71;
      v27 = v70;
      v29 = v69;
      v16 = v68;
      v14 = v67;
      v17 = v23;
      if ((v74 & 1) == 0)
      {
        goto LABEL_80;
      }
    }
  }

  else if (v26)
  {
    goto LABEL_80;
  }

  if (v15)
  {
    if (!v28)
    {
      goto LABEL_80;
    }

    if (v13 != v25 || v15 != v28)
    {
      OUTLINED_FUNCTION_1044();
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v84 = sub_24DE22CA0();
      v27 = v83;
      v29 = v81;
      v16 = v79;
      v14 = v77;
      v17 = v23;
      if ((v84 & 1) == 0)
      {
        goto LABEL_80;
      }
    }
  }

  else if (v28)
  {
    goto LABEL_80;
  }

  if (v16)
  {
    if (!v29)
    {
      goto LABEL_80;
    }

    if (v14 != v27 || v16 != v29)
    {
      OUTLINED_FUNCTION_1044();
      v86 = sub_24DE22CA0();
      v17 = v23;
      if ((v86 & 1) == 0)
      {
        goto LABEL_80;
      }
    }
  }

  else if (v29)
  {
    goto LABEL_80;
  }

  if (v119)
  {
    if (!v120)
    {
      goto LABEL_80;
    }

    if (v115 != v116 || v119 != v120)
    {
      OUTLINED_FUNCTION_1044();
      v88 = sub_24DE22CA0();
      v17 = v23;
      if ((v88 & 1) == 0)
      {
        goto LABEL_80;
      }
    }
  }

  else if (v120)
  {
    goto LABEL_80;
  }

  if (v118 && v117 && (v17 != v114 || v118 != v117))
  {
    sub_24DE22CA0();
  }

LABEL_80:
  OUTLINED_FUNCTION_1280();
}

void Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2D78, &qword_24DE232E0);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_223();
  v10 = *v5;
  OUTLINED_FUNCTION_804();
  OUTLINED_FUNCTION_387(v8, v8[3]);
  sub_24DDE402C();
  sub_24DE22D50();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_1284(v10);
  if (!v6)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_673();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_557();
    OUTLINED_FUNCTION_673();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_629();
    OUTLINED_FUNCTION_548();
    OUTLINED_FUNCTION_673();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_889();
    OUTLINED_FUNCTION_673();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_673();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_673();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_673();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_673();
    sub_24DE22BF0();
  }

  v11 = OUTLINED_FUNCTION_386();
  v12(v11);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_597();
  OUTLINED_FUNCTION_438();
  v4 = v3[3];
  v5 = v3[5];
  v6 = v3[9];
  v7 = v3[11];
  v8 = v3[13];
  v9 = v3[15];
  v11 = v3[7];
  v12 = v3[17];
  if (v3[1])
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_464();
    sub_24DE22AD0();
    if (v4)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_386();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v5)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_731();
    sub_24DE22AD0();
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_24DE22CE0();
    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_24DE22CE0();
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_714();
  sub_24DE22AD0();
  if (v6)
  {
LABEL_9:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1073();
    sub_24DE22AD0();
    goto LABEL_13;
  }

LABEL_12:
  sub_24DE22CE0();
LABEL_13:
  if (v7)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1074();
    sub_24DE22AD0();
    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v8)
    {
LABEL_15:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1268();
      sub_24DE22AD0();
      if (v9)
      {
        goto LABEL_16;
      }

LABEL_22:
      sub_24DE22CE0();
      if (v12)
      {
        goto LABEL_17;
      }

LABEL_23:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_586();
      return;
    }
  }

  sub_24DE22CE0();
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_16:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_781();
  sub_24DE22AD0();
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_17:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_868();
  OUTLINED_FUNCTION_586();

  sub_24DE22AD0();
}

void Components.Schemas.Com_apple_gk_data_jackson_leaderboard_LeaderboardImageUrl.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_469();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2D88, &qword_24DE232E8);
  OUTLINED_FUNCTION_27();
  v11 = v10;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_138();
  v13 = v5[3];
  v14 = v5[4];
  v38 = v5;
  OUTLINED_FUNCTION_153(v5);
  sub_24DDE402C();
  OUTLINED_FUNCTION_501();
  sub_24DE22D30();
  if (v7)
  {
    OUTLINED_FUNCTION_280();
    OUTLINED_FUNCTION_671();
    OUTLINED_FUNCTION_1239();
    OUTLINED_FUNCTION_1260();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v48 = v8;
    v49 = v5;
    v50 = v11;
    v51 = v9;
    v52 = v13;
    v53 = v14;
    v54 = v7;
    v55 = v6;
    OUTLINED_FUNCTION_813();
    v56 = 0;
    v57 = 0;
  }

  else
  {
    LOBYTE(v48) = 0;
    v36 = sub_24DE22B40();
    v37 = v15;
    v16 = OUTLINED_FUNCTION_448(1);
    v34 = v17;
    v35 = v16;
    v32 = OUTLINED_FUNCTION_448(2);
    v33 = v18;
    v30 = OUTLINED_FUNCTION_448(3);
    v31 = v19;
    v43 = OUTLINED_FUNCTION_448(4);
    v44 = v20;
    v41 = OUTLINED_FUNCTION_448(5);
    v42 = v21;
    v39 = OUTLINED_FUNCTION_448(6);
    v40 = v22;
    v29 = v6;
    v45 = OUTLINED_FUNCTION_448(7);
    v46 = v23;
    OUTLINED_FUNCTION_1016(8);
    v24 = sub_24DE22B40();
    v26 = v25;
    v27 = OUTLINED_FUNCTION_154();
    v28(v27);
    v47[0] = v36;
    v47[1] = v37;
    v47[2] = v35;
    v47[3] = v34;
    v47[4] = v32;
    v47[5] = v33;
    v47[6] = v30;
    v47[7] = v31;
    v47[8] = v43;
    v47[9] = v44;
    v47[10] = v41;
    v47[11] = v42;
    v47[12] = v39;
    v47[13] = v40;
    v47[14] = v45;
    v47[15] = v46;
    v47[16] = v24;
    v47[17] = v26;
    memcpy(v29, v47, 0x90uLL);
    sub_24DDE3D58(v47, &v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v48 = v36;
    v49 = v37;
    v50 = v35;
    v51 = v34;
    v52 = v32;
    v53 = v33;
    v54 = v30;
    v55 = v31;
    OUTLINED_FUNCTION_813();
    v56 = v24;
    v57 = v26;
  }

  sub_24DDE3C2C(&v48);
  OUTLINED_FUNCTION_644();
}

GameCenterServerClient::Components::Schemas::Leaderboard_GetLeaderboards_Response::CodingKeys_optional __swiftcall Components.Schemas.Leaderboard_GetLeaderboards_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24DDA26C0()
{
  sub_24DDE4080();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDA26F8()
{
  sub_24DDE4080();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.Leaderboard_GetLeaderboards_Response.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2D90, &qword_24DE232F0);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_111();
  sub_24DDE4080();
  OUTLINED_FUNCTION_314();
  sub_24DE22D50();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_488();
  sub_24DE22C30();
  if (!v8)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_141();
    sub_24DD87138();
    OUTLINED_FUNCTION_110();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_292();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2DA0, &qword_24DE232F8);
    sub_24DDE40D4();
    OUTLINED_FUNCTION_194();
    OUTLINED_FUNCTION_190();
    sub_24DE22C20();
  }

  v6 = OUTLINED_FUNCTION_180();
  v7(v6);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Leaderboard_GetLeaderboards_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2DB8, &qword_24DE23300);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_168();
  sub_24DDE4080();
  OUTLINED_FUNCTION_233();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_93();
    v8 = sub_24DE22B80();
    OUTLINED_FUNCTION_212(v8);
    v20[0] = v9;
    OUTLINED_FUNCTION_93();
    v10 = sub_24DE22B40();
    OUTLINED_FUNCTION_776(v10, v11);
    OUTLINED_FUNCTION_224();
    sub_24DE22B70();
    OUTLINED_FUNCTION_824();
    v12 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v12, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2DA0, &qword_24DE232F8);
    OUTLINED_FUNCTION_493();
    sub_24DDE41DC();
    OUTLINED_FUNCTION_144();
    v16 = OUTLINED_FUNCTION_124();
    v17(v16);
    v18 = OUTLINED_FUNCTION_14();
    sub_24DDE42B4(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_40();
  }

  sub_24DDE41AC(v20);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.message.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.defaultCategoryName.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 56) = v3;
  *(v2 + 64) = v1;
  return result;
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.results.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

__n128 Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.init(status:message:alert:defaultCategoryName:results:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_917(a1, a6);
  *(a6 + 4) = v11;
  *(a6 + 8) = v12;
  *(a6 + 16) = v13;
  v14 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v14, v15, v16, v17);
  result = *a2;
  *(a6 + 40) = *(a2 + 16);
  *(a6 + 24) = result;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5;
  return result;
}

GameCenterServerClient::Components::Schemas::Game_GetLeaderboardCategories_ResponseContent::CodingKeys_optional __swiftcall Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_944();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Game_GetLeaderboardCategories_ResponseContent::CodingKeys_optional __swiftcall Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.CodingKeys.stringValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = OUTLINED_FUNCTION_412(21);
      break;
    case 4:
      result = OUTLINED_FUNCTION_1287();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDA2E8C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDA2EBC()
{
  sub_24DDE42EC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDA2EF4()
{
  sub_24DDE42EC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2DD0, &qword_24DE23308);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_255(v7);
  sub_24DDE42EC();
  OUTLINED_FUNCTION_375(&type metadata for Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.CodingKeys);
  OUTLINED_FUNCTION_309();
  sub_24DE22C30();
  if (!v5)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_554();
    OUTLINED_FUNCTION_907();
    sub_24DD7639C(v10, v11, v12, v13);
    sub_24DD87138();
    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_376();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_565(3);
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2DE0, &qword_24DE23310);
    sub_24DDE4390(&unk_27F1B2DE8);
    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_190();
    sub_24DE22C20();
  }

  v14 = OUTLINED_FUNCTION_530();
  v15(v14, v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_628();
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_900();
  if (!v6)
  {
    OUTLINED_FUNCTION_1163();
    sub_24DE22CF0();
    if (!v5)
    {
      goto LABEL_6;
    }

LABEL_4:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_584();
    sub_24DE22AD0();
    goto LABEL_7;
  }

  sub_24DE22CE0();
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_6:
  sub_24DE22CE0();
LABEL_7:
  if (v4 != 1)
  {
    sub_24DE22CE0();
    if (v4)
    {
      sub_24DE22CE0();
      OUTLINED_FUNCTION_426();
      sub_24DE22AD0();
      if (v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_24DE22CE0();
      if (v3)
      {
LABEL_10:
        sub_24DE22CE0();
        OUTLINED_FUNCTION_533();
        sub_24DE22AD0();
        if (!v2)
        {
          goto LABEL_11;
        }

LABEL_15:
        sub_24DE22CE0();
        OUTLINED_FUNCTION_540();
        sub_24DE22AD0();
        if (!v1)
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }
  }

  sub_24DE22CE0();
  if (v2)
  {
    goto LABEL_15;
  }

LABEL_11:
  sub_24DE22CE0();
  if (!v1)
  {
LABEL_12:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_549();
    return;
  }

LABEL_16:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_407();
  OUTLINED_FUNCTION_549();

  sub_24DDE1950(v7, v8);
}

void Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_645();
  a20 = v24;
  a21 = v25;
  OUTLINED_FUNCTION_455();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2DF8, &qword_24DE23318);
  OUTLINED_FUNCTION_27();
  v30 = v29;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_660();
  v32 = v21[3];
  v56 = v21;
  OUTLINED_FUNCTION_168();
  sub_24DDE42EC();
  OUTLINED_FUNCTION_233();
  sub_24DE22D30();
  if (v22)
  {
    OUTLINED_FUNCTION_952();
    OUTLINED_FUNCTION_350();
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    LODWORD(v59) = 0;
    HIDWORD(v59) = a11;
    v60 = v30;
    v61 = v23;
    v62 = v32;
    v63 = 1;
    v64 = v21;
    v65 = v28;
    v66 = v27;
    v67 = 0;
    v68 = 0;
  }

  else
  {
    LOBYTE(v59) = 0;
    OUTLINED_FUNCTION_433();
    v33 = sub_24DE22B80();
    v55 = v33;
    OUTLINED_FUNCTION_212(v33);
    OUTLINED_FUNCTION_1023(v34);
    OUTLINED_FUNCTION_433();
    v53 = sub_24DE22B40();
    OUTLINED_FUNCTION_816(v35, &a16);
    LOBYTE(v57[0]) = v36;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_476();
    sub_24DE22B70();
    v37 = v59;
    v38 = v60;
    v51 = v61;
    v52 = v62;
    v39 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v39, v40, v41, v42);
    OUTLINED_FUNCTION_1023(3);
    OUTLINED_FUNCTION_433();
    v43 = sub_24DE22B40();
    v45 = v44;
    v50 = v27;
    v46 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2DE0, &qword_24DE23310);
    OUTLINED_FUNCTION_889();
    sub_24DDE4390(&unk_27F1B2E00);
    OUTLINED_FUNCTION_257();
    sub_24DE22B70();
    v47 = OUTLINED_FUNCTION_225();
    v48(v47);
    v49 = v58;
    LODWORD(v57[0]) = v55;
    BYTE4(v57[0]) = a11;
    v57[1] = v53;
    v57[2] = v54;
    v57[3] = v59;
    v57[4] = v60;
    v57[5] = v61;
    v57[6] = v62;
    v57[7] = v46;
    v57[8] = v45;
    v57[9] = v58;
    memcpy(v50, v57, 0x50uLL);
    sub_24DDE4414(v57, &v59);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    LODWORD(v59) = v55;
    BYTE4(v59) = a11;
    v60 = v53;
    v61 = v54;
    v62 = v37;
    v63 = v38;
    v64 = v51;
    v65 = v52;
    v66 = v46;
    v67 = v45;
    v68 = v49;
  }

  sub_24DDE4360(&v59);
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDA3954()
{
  OUTLINED_FUNCTION_960();
  sub_24DE228C0();
  v0 = OUTLINED_FUNCTION_525();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.categoryName.getter()
{
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  OUTLINED_FUNCTION_898();
  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.categoryName.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  result = OUTLINED_FUNCTION_1313();
  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.categoryName.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  return OUTLINED_FUNCTION_574();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.groupCategoryName.getter()
{
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  OUTLINED_FUNCTION_898();
  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.groupCategoryName.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  result = OUTLINED_FUNCTION_1313();
  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.groupCategoryName.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  return OUTLINED_FUNCTION_574();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.categoryTitle.getter()
{
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  OUTLINED_FUNCTION_898();
  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.categoryTitle.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  result = OUTLINED_FUNCTION_1313();
  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.categoryTitle.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  return OUTLINED_FUNCTION_574();
}

void Components.Schemas.Game_GetLeaderboardCategories_Result.friendRank.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  LeaderboardCategories_Result = type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  OUTLINED_FUNCTION_511(*(LeaderboardCategories_Result + 32));
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.friendRank.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  return OUTLINED_FUNCTION_574();
}

void Components.Schemas.Game_GetLeaderboardCategories_Result.leaderboardSize.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  LeaderboardCategories_Result = type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  OUTLINED_FUNCTION_511(*(LeaderboardCategories_Result + 36));
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.leaderboardSize.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  return OUTLINED_FUNCTION_574();
}

void Components.Schemas.Game_GetLeaderboardCategories_Result.numFriendsRanked.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  LeaderboardCategories_Result = type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  OUTLINED_FUNCTION_511(*(LeaderboardCategories_Result + 40));
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.numFriendsRanked.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  return OUTLINED_FUNCTION_574();
}

void Components.Schemas.Game_GetLeaderboardCategories_Result.rank.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  LeaderboardCategories_Result = type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  OUTLINED_FUNCTION_511(*(LeaderboardCategories_Result + 44));
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.rank.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  return OUTLINED_FUNCTION_574();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.friendsWithScore.getter()
{
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.friendsWithScore.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_429();
  v4 = *(type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v3) + 48);

  *(v2 + v4) = v1;
  return result;
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.friendsWithScore.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  return OUTLINED_FUNCTION_574();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result._type.getter()
{
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  OUTLINED_FUNCTION_898();
  return OUTLINED_FUNCTION_370();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result._type.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  result = OUTLINED_FUNCTION_1313();
  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result._type.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(v1);
  return OUTLINED_FUNCTION_574();
}

void Components.Schemas.Game_GetLeaderboardCategories_Result.init(categoryImageUrls:categoryName:groupCategoryName:categoryTitle:friendRank:leaderboardSize:numFriendsRanked:rank:friendsWithScore:_type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, char a36, int a37, char a38, int a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  OUTLINED_FUNCTION_596();
  v73 = v43;
  v74 = v44;
  v71 = v45;
  v72 = v46;
  v69 = v47;
  v70 = v48;
  v67 = v49;
  v68 = v50;
  v52 = v51;
  sub_24DE228C0();
  v53 = OUTLINED_FUNCTION_525();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  LeaderboardCategories_Result = type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  v58 = (v52 + LeaderboardCategories_Result[5]);
  v59 = (v52 + LeaderboardCategories_Result[6]);
  v60 = (v52 + LeaderboardCategories_Result[7]);
  v61 = v52 + LeaderboardCategories_Result[8];
  v62 = v52 + LeaderboardCategories_Result[9];
  v63 = v52 + LeaderboardCategories_Result[10];
  v66 = LeaderboardCategories_Result[12];
  v64 = v52 + LeaderboardCategories_Result[11];
  v65 = (v52 + LeaderboardCategories_Result[13]);
  sub_24DDE444C(v67);
  *v58 = v68;
  v58[1] = v69;
  *v59 = v70;
  v59[1] = v71;
  *v60 = v72;
  v60[1] = v73;
  *v61 = v74;
  *(v61 + 4) = BYTE4(v74) & 1;
  *v62 = a35;
  *(v62 + 4) = a36 & 1;
  *v63 = a37;
  *(v63 + 4) = a38 & 1;
  *v64 = a39;
  *(v64 + 4) = a40 & 1;
  *(v52 + v66) = a41;
  *v65 = a42;
  v65[1] = a43;
  OUTLINED_FUNCTION_585();
}

GameCenterServerClient::Components::Schemas::Game_GetLeaderboardCategories_Result::CodingKeys_optional __swiftcall Components.Schemas.Game_GetLeaderboardCategories_Result.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 10;
  if (v2 < 0xA)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Game_GetLeaderboardCategories_Result::CodingKeys_optional __swiftcall Components.Schemas.Game_GetLeaderboardCategories_Result.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Game_GetLeaderboardCategories_Result.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void sub_24DDA4190()
{
  switch(*v0)
  {
    case 1:
    case 3:
    case 4:
    case 9:
      return;
    case 5:
      OUTLINED_FUNCTION_423(18);
      break;
    case 6:
    case 8:
      OUTLINED_FUNCTION_155();
      break;
    case 7:
      OUTLINED_FUNCTION_191();
      break;
    default:
      OUTLINED_FUNCTION_68();
      break;
  }
}

uint64_t sub_24DDA431C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Game_GetLeaderboardCategories_Result.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDA4350()
{
  sub_24DDE44A0();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDA4388()
{
  sub_24DDE44A0();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Game_GetLeaderboardCategories_Result.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_372();
  sub_24DE228C0();
  OUTLINED_FUNCTION_27();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42();
  v12 = OUTLINED_FUNCTION_393();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_443(v14);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_238();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2E18, &qword_24DE23328);
  OUTLINED_FUNCTION_443(v16);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_223();
  v19 = *(v18 + 56);
  v20 = OUTLINED_FUNCTION_637();
  sub_24DDE73DC(v20);
  sub_24DDE73DC(v6);
  OUTLINED_FUNCTION_568(v8);
  if (v22)
  {
    OUTLINED_FUNCTION_568(v8 + v19);
    if (v22)
    {
      sub_24DDE8DAC(v8, &qword_27F1B2E10);
      goto LABEL_12;
    }

LABEL_9:
    sub_24DDE8DAC(v8, &qword_27F1B2E18);
    goto LABEL_10;
  }

  v21 = OUTLINED_FUNCTION_503();
  sub_24DDE73DC(v21);
  OUTLINED_FUNCTION_568(v8 + v19);
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_615();
    v24(v23);
    goto LABEL_9;
  }

  v25 = OUTLINED_FUNCTION_1029();
  v26(v25);
  OUTLINED_FUNCTION_109();
  sub_24DDE23E0(v27);
  OUTLINED_FUNCTION_454();
  v28 = sub_24DE22AB0();
  v29 = *(v10 + 8);
  v30 = OUTLINED_FUNCTION_551();
  v29(v30);
  v31 = OUTLINED_FUNCTION_615();
  v29(v31);
  sub_24DDE8DAC(v8, &qword_27F1B2E10);
  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  LeaderboardCategories_Result = type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  OUTLINED_FUNCTION_510();
  if (v35)
  {
    if (!v33)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_740(v34);
    v38 = v22 && v36 == v37;
    if (!v38 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v33)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_510();
  if (v41)
  {
    if (!v39)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_740(v40);
    v44 = v22 && v42 == v43;
    if (!v44 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v39)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_510();
  if (v47)
  {
    if (!v45)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_740(v46);
    v50 = v22 && v48 == v49;
    if (!v50 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v45)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_509();
  if (v52)
  {
    if (!v51)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_508();
    if (v53)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_509();
  if (v55)
  {
    if (!v54)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_508();
    if (v56)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_509();
  if (v58)
  {
    if (!v57)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_508();
    if (v59)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_509();
  if (v61)
  {
    if (!v60)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_508();
    if (v62)
    {
      goto LABEL_10;
    }
  }

  v63 = *(LeaderboardCategories_Result + 48);
  v64 = *(v7 + v63);
  v65 = *(v6 + v63);
  if (v64)
  {
    if (!v65 || (sub_24DD85994(v64, v65) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v65)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_510();
  if (v68 && v66)
  {
    OUTLINED_FUNCTION_740(v67);
    if (v22)
    {
      v71 = v69 == v70;
    }

    else
    {
      v71 = 0;
    }

    if (!v71)
    {
      sub_24DE22CA0();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_Result.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2E28, &qword_24DE23330);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_250(a1);
  sub_24DDE44A0();
  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_709();
  sub_24DE22D50();
  sub_24DE228C0();
  OUTLINED_FUNCTION_109();
  sub_24DDE23E0(v4);
  OUTLINED_FUNCTION_179();
  sub_24DE22C20();
  if (!v1)
  {
    LeaderboardCategories_Result = type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
    OUTLINED_FUNCTION_1182(LeaderboardCategories_Result[5]);
    OUTLINED_FUNCTION_139();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_1182(LeaderboardCategories_Result[6]);
    OUTLINED_FUNCTION_139();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_1182(LeaderboardCategories_Result[7]);
    OUTLINED_FUNCTION_139();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_739();
    OUTLINED_FUNCTION_635(v6);
    OUTLINED_FUNCTION_197();
    sub_24DE22C30();
    OUTLINED_FUNCTION_739();
    OUTLINED_FUNCTION_635(v7);
    OUTLINED_FUNCTION_197();
    sub_24DE22C30();
    OUTLINED_FUNCTION_739();
    OUTLINED_FUNCTION_635(v8);
    OUTLINED_FUNCTION_197();
    sub_24DE22C30();
    OUTLINED_FUNCTION_739();
    OUTLINED_FUNCTION_635(v9);
    OUTLINED_FUNCTION_197();
    sub_24DE22C30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v10);
    OUTLINED_FUNCTION_179();
    sub_24DE22C20();
    OUTLINED_FUNCTION_1182(LeaderboardCategories_Result[13]);
    OUTLINED_FUNCTION_139();
    sub_24DE22BF0();
  }

  v11 = OUTLINED_FUNCTION_446();
  return v12(v11);
}

void Components.Schemas.Game_GetLeaderboardCategories_Result.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_429();
  v2 = sub_24DE228C0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_66();
  v4 = OUTLINED_FUNCTION_616();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_443(v6);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_147();
  v8 = OUTLINED_FUNCTION_674();
  sub_24DDE73DC(v8);
  OUTLINED_FUNCTION_880(v1, 1, v2);
  if (v9)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_546();
    v11(v10);
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_109();
    sub_24DDE23E0(v12);
    OUTLINED_FUNCTION_610();
    sub_24DE22AA0();
    v13 = OUTLINED_FUNCTION_330();
    v14(v13);
  }

  LeaderboardCategories_Result = type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  if (*(v1 + LeaderboardCategories_Result[5] + 8))
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_571();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (*(v1 + LeaderboardCategories_Result[6] + 8))
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_571();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (*(v1 + LeaderboardCategories_Result[7] + 8))
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_571();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_738();
  if (v9)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  OUTLINED_FUNCTION_738();
  if (v9)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  OUTLINED_FUNCTION_738();
  if (v9)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  OUTLINED_FUNCTION_738();
  if (v9)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (*(v1 + LeaderboardCategories_Result[12]))
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v16 = OUTLINED_FUNCTION_492();
    sub_24DDE0DB4(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (*(v1 + LeaderboardCategories_Result[13] + 8))
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_794();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_999();
}

uint64_t sub_24DDA4D5C(uint64_t a1)
{
  OUTLINED_FUNCTION_588(a1);
  v1(v3);
  return sub_24DE22D10();
}

void Components.Schemas.Game_GetLeaderboardCategories_Result.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  v84 = v21;
  v73 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2E10, &qword_24DE23320);
  OUTLINED_FUNCTION_443(v23);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v24);
  v78 = &v70 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2E48, &qword_24DE23338);
  OUTLINED_FUNCTION_27();
  v79 = v26;
  v80 = v27;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v28);
  v83 = &v70 - v29;
  LeaderboardCategories_Result = type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0);
  v31 = (LeaderboardCategories_Result - 8);
  MEMORY[0x28223BE20](LeaderboardCategories_Result);
  OUTLINED_FUNCTION_97();
  v34 = v33 - v32;
  sub_24DE228C0();
  OUTLINED_FUNCTION_778();
  v77 = v35;
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  v39 = (v34 + v31[7]);
  *v39 = 0;
  v39[1] = 0;
  v76 = v39;
  v40 = (v34 + v31[8]);
  *v40 = 0;
  v40[1] = 0;
  v75 = v40;
  v41 = (v34 + v31[9]);
  *v41 = 0;
  v41[1] = 0;
  v42 = v34 + v31[10];
  *v42 = 0;
  *(v42 + 4) = 1;
  v43 = v34 + v31[11];
  *v43 = 0;
  *(v43 + 4) = 1;
  v44 = v34 + v31[12];
  *v44 = 0;
  *(v44 + 4) = 1;
  v45 = v34 + v31[13];
  *v45 = 0;
  *(v45 + 4) = 1;
  v74 = v31[14];
  *(v34 + v74) = 0;
  v46 = v31[15];
  v82 = v34;
  v47 = (v34 + v46);
  *v47 = 0;
  v47[1] = 0;
  OUTLINED_FUNCTION_153(v84);
  sub_24DDE44A0();
  sub_24DE22D30();
  if (!v20)
  {
    v48 = v76;
    v81 = v42;
    v71 = v47;
    v72 = v43;
    v49 = v80;
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_109();
    sub_24DDE23E0(v50);
    v51 = v78;
    OUTLINED_FUNCTION_581();
    sub_24DE22B70();
    v52 = v51;
    v53 = v82;
    sub_24DDE444C(v52);
    OUTLINED_FUNCTION_171(1);
    *v48 = sub_24DE22B40();
    v48[1] = v54;
    OUTLINED_FUNCTION_171(2);
    v55 = sub_24DE22B40();
    v56 = v75;
    *v75 = v55;
    v56[1] = v57;
    OUTLINED_FUNCTION_171(3);
    *v41 = sub_24DE22B40();
    v41[1] = v58;
    OUTLINED_FUNCTION_171(4);
    v59 = sub_24DE22B80();
    v60 = v81;
    *v81 = v59;
    *(v60 + 4) = BYTE4(v59) & 1;
    OUTLINED_FUNCTION_171(5);
    v61 = sub_24DE22B80();
    v62 = v72;
    *v72 = v61;
    *(v62 + 4) = BYTE4(v61) & 1;
    OUTLINED_FUNCTION_171(6);
    v63 = sub_24DE22B80();
    *v44 = v63;
    *(v44 + 4) = BYTE4(v63) & 1;
    OUTLINED_FUNCTION_171(7);
    v64 = sub_24DE22B80();
    *v45 = v64;
    *(v45 + 4) = BYTE4(v64) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    v85 = 8;
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v65);
    OUTLINED_FUNCTION_928();
    OUTLINED_FUNCTION_808();
    sub_24DE22B70();
    *(v53 + v74) = a10;
    OUTLINED_FUNCTION_171(9);
    v66 = sub_24DE22B40();
    v68 = v67;
    (*(v49 + 8))(v83, v79);
    v69 = v71;
    *v71 = v66;
    v69[1] = v68;
    sub_24DD74A90();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  OUTLINED_FUNCTION_683();
  sub_24DD74008();
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDA52AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Leaderboard_ProfileImageURL.template.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_ProfileImageURL.avatarType.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_ProfileImageURL.init(template:avatarType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_ProfileImageURL.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x742D726174617661;
  }

  else
  {
    return 0x6574616C706D6574;
  }
}

uint64_t sub_24DDA543C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Leaderboard_ProfileImageURL.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDA546C()
{
  sub_24DDE44F4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDA54A4()
{
  sub_24DDE44F4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Leaderboard_ProfileImageURL.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_360(a1);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_24DE22CA0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v11 = v6;
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

void Components.Schemas.Leaderboard_ProfileImageURL.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_891();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2E58, &qword_24DE23340);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_153(v6);
  sub_24DDE44F4();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_139();
  sub_24DE22BF0();
  if (!v5)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_139();
    sub_24DE22C40();
  }

  v8 = OUTLINED_FUNCTION_213();
  v9(v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Leaderboard_ProfileImageURL.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_438();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 8))
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_406();
    sub_24DE22AD0();
    if (v3)
    {
      return sub_24DE22CE0();
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v3)
    {
      return sub_24DE22CE0();
    }
  }

  sub_24DE22CE0();
  return MEMORY[0x253039750](v2);
}

void Components.Schemas.Leaderboard_ProfileImageURL.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  v27 = *(v26 + 8);
  v28 = *(v26 + 24);
  OUTLINED_FUNCTION_796(v29);
  sub_24DE22CE0();
  if (v27)
  {
    OUTLINED_FUNCTION_540();
    sub_24DE22AD0();
  }

  sub_24DE22CE0();
  if (!v28)
  {
    v30 = OUTLINED_FUNCTION_1206();
    MEMORY[0x253039750](v30);
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

void Components.Schemas.Leaderboard_ProfileImageURL.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2E68, &qword_24DE23348);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE44F4();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (!v6)
  {
    OUTLINED_FUNCTION_234();
    sub_24DE22B40();
    OUTLINED_FUNCTION_807();
    OUTLINED_FUNCTION_237();
    OUTLINED_FUNCTION_435();
    v12 = sub_24DE22B90();
    v13 = OUTLINED_FUNCTION_381();
    v15 = v14;
    v16(v13, v8);
    *v7 = v10;
    *(v7 + 8) = v9;
    *(v7 + 16) = v12;
    *(v7 + 24) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v5);

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDA5914(uint64_t a1)
{
  v1 = sub_24DE22CC0();
  v9 = OUTLINED_FUNCTION_1051(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  Components.Schemas.Leaderboard_ProfileImageURL.hash(into:)(v9);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Leaderboard_PlayerScore.formattedScoreValue.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_PlayerScore.rank.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_PlayerScore.scoreValue.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_PlayerScore.init(context:formattedScoreValue:rank:scoreValue:timestamp:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  return result;
}

GameCenterServerClient::Components::Schemas::Leaderboard_PlayerScore::CodingKeys_optional __swiftcall Components.Schemas.Leaderboard_PlayerScore.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_944();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Leaderboard_PlayerScore::CodingKeys_optional __swiftcall Components.Schemas.Leaderboard_PlayerScore.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Leaderboard_PlayerScore.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t Components.Schemas.Leaderboard_PlayerScore.CodingKeys.stringValue.getter()
{
  result = 0x747865746E6F63;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_412(21);
      break;
    case 2:
      result = OUTLINED_FUNCTION_191();
      break;
    case 3:
      result = OUTLINED_FUNCTION_275();
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDA5C50@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Leaderboard_PlayerScore.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDA5C80()
{
  sub_24DDE4548();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDA5CB8()
{
  sub_24DDE4548();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Leaderboard_PlayerScore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_628();
  v3 = v2;
  v5 = v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = v5[3];
  v9 = *(v3 + 24);
  if (v6)
  {
    if (!*(v3 + 8))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (*v5 == *v3)
    {
      v10 = *(v3 + 8);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_15;
    }
  }

  if (v8 && v9 && (v7 != *(v3 + 16) || v8 != v9))
  {
    sub_24DE22CA0();
  }

LABEL_15:
  OUTLINED_FUNCTION_549();
}

void Components.Schemas.Leaderboard_PlayerScore.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_645();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2E70, &qword_24DE23350);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_737();
  OUTLINED_FUNCTION_153(v21);
  sub_24DDE4548();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_1125(v23);
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_819();
  sub_24DE22C40();
  if (!v19)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_589();
    OUTLINED_FUNCTION_166();
    sub_24DE22C30();
    OUTLINED_FUNCTION_843();
    OUTLINED_FUNCTION_135();
    sub_24DE22C40();
    OUTLINED_FUNCTION_970();
    OUTLINED_FUNCTION_135();
    sub_24DE22C40();
  }

  v24 = OUTLINED_FUNCTION_180();
  v25(v24);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Leaderboard_PlayerScore.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_438();
  v7 = v6[3];
  v8 = *(v6 + 36);
  v9 = v6[5];
  v10 = *(v6 + 48);
  v11 = v6[7];
  v12 = *(v6 + 64);
  if (*(v6 + 8) == 1)
  {
    sub_24DE22CE0();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *v6;
    sub_24DE22CE0();
    MEMORY[0x253039750](v13);
    if (v7)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_533();
      sub_24DE22AD0();
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_24DE22CE0();
  if (v8)
  {
LABEL_4:
    sub_24DE22CE0();
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_24DE22CE0();
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_24DE22CE0();
    goto LABEL_12;
  }

LABEL_9:
  sub_24DE22CE0();
  sub_24DE22CF0();
  if (v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_24DE22CE0();
  MEMORY[0x253039750](v9);
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_24DE22CE0();
  MEMORY[0x253039750](v11);
LABEL_12:
  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.Leaderboard_PlayerScore.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.Leaderboard_PlayerScore.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

void Components.Schemas.Leaderboard_PlayerScore.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_455();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2E80, &qword_24DE23358);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_735();
  v65 = v27;
  v63 = v27;
  OUTLINED_FUNCTION_168();
  sub_24DDE4548();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_675();
  sub_24DE22D30();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v49 = 0;
    v50 = v70;
    *v51 = *v69;
    *&v51[3] = *&v69[3];
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = v68;
    v56 = v66;
    v57 = v67;
    v58 = 0;
    v59 = v65;
    *v60 = *v64;
    *&v60[3] = *&v64[3];
    v61 = 0;
    v62 = v63;
  }

  else
  {
    OUTLINED_FUNCTION_1247();
    OUTLINED_FUNCTION_405();
    v71 = sub_24DE22B90();
    OUTLINED_FUNCTION_666(v71, v28);
    OUTLINED_FUNCTION_614(1);
    OUTLINED_FUNCTION_405();
    v29 = sub_24DE22B40();
    v45 = v25;
    OUTLINED_FUNCTION_816(v30, &a17);
    OUTLINED_FUNCTION_614(v31);
    OUTLINED_FUNCTION_405();
    v32 = sub_24DE22B80();
    v33 = v32;
    v68 = BYTE4(v32) & 1;
    OUTLINED_FUNCTION_614(3);
    OUTLINED_FUNCTION_405();
    v34 = sub_24DE22B90();
    v65 = v35 & 1;
    v48 = 4;
    OUTLINED_FUNCTION_405();
    v36 = sub_24DE22B90();
    v38 = v37;
    v44 = v36;
    v39 = OUTLINED_FUNCTION_498();
    v40(v39);
    v38 &= 1u;
    v63 = v38;
    *v47 = v71;
    v43 = v70;
    v47[8] = v70;
    *&v47[16] = v29;
    *&v47[24] = v46;
    *&v47[32] = v33;
    v41 = v68;
    v47[36] = v68;
    *&v47[40] = v34;
    v42 = v65;
    v47[48] = v65;
    *&v47[56] = v44;
    v47[64] = v38;
    memcpy(v45, v47, 0x41uLL);
    sub_24DDE45CC(v47, &v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v49 = v71;
    v50 = v43;
    v52 = v29;
    v53 = v46;
    v54 = v33;
    v55 = v41;
    v58 = v34;
    v59 = v42;
    v61 = v44;
    v62 = v38;
  }

  sub_24DDE459C(&v49);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDA64B4(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.Leaderboard_PlayerScore.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.achievementId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.achievementImageUrls.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.artwork.getter()
{
  OUTLINED_FUNCTION_1087();
  OUTLINED_FUNCTION_847();
  v4 = memcpy(v1, v2, v3);
  v5 = OUTLINED_FUNCTION_1324(v4, (v0 + 32));
  v13 = OUTLINED_FUNCTION_1030(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  return sub_24DDE230C(v13, v14);
}

void *Components.Schemas.GetGameAchievements_Achievement.artwork.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_847();
  memcpy(v1, v2, v3);
  sub_24DDE22DC(&v5);
  return OUTLINED_FUNCTION_1171((v0 + 32));
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.achievementTitle.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 144) = v3;
  *(v2 + 152) = v1;
  return result;
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.achievementDescBefore.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 176) = v3;
  *(v2 + 184) = v1;
  return result;
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.achievementDescAfter.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 192) = v3;
  *(v2 + 200) = v1;
  return result;
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.groupAchievementId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 216) = v3;
  *(v2 + 224) = v1;
  return result;
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.percentagePlayersEarned.setter(uint64_t result, char a2)
{
  *(v2 + 232) = result;
  *(v2 + 240) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.activityVendorId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 248) = v3;
  *(v2 + 256) = v1;
  return result;
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.activityProperties.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 264) = v2;
  return result;
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.ascResourceId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 272) = v3;
  *(v2 + 280) = v1;
  return result;
}

void Components.Schemas.GetGameAchievements_Achievement.init(preRelease:recyclable:achievementId:achievementImageUrls:artwork:achievementTitle:achievementMaxValue:achievementDisplayUnachieved:achievementDescBefore:achievementDescAfter:isPrerelease:isRecyclable:groupAchievementId:percentagePlayersEarned:activityVendorId:activityProperties:ascResourceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, __int128 a33, uint64_t a34, uint64_t a35, __int16 a36, __int128 a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t *a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_597();
  v57 = v44;
  v56 = v45;
  v47 = v46;
  v49 = *v48;
  v50 = *a42;
  *v46 = v51;
  *(v46 + 1) = v52;
  *(v46 + 8) = v53;
  *(v46 + 16) = v54;
  *(v46 + 24) = v49;
  memcpy((v46 + 32), v55, 0x6DuLL);
  *(v47 + 144) = v56;
  *(v47 + 152) = v57;
  *(v47 + 160) = a31;
  *(v47 + 168) = a32;
  *(v47 + 176) = a33;
  *(v47 + 192) = a34;
  *(v47 + 200) = a35;
  *(v47 + 208) = a36;
  *(v47 + 216) = a37;
  *(v47 + 232) = a38;
  *(v47 + 240) = a39 & 1;
  *(v47 + 248) = a40;
  *(v47 + 256) = a41;

  *(v47 + 264) = v50;
  *(v47 + 272) = a43;
  *(v47 + 280) = a44;
  OUTLINED_FUNCTION_586();
}

GameCenterServerClient::Components::Schemas::GetGameAchievements_Achievement::CodingKeys_optional __swiftcall Components.Schemas.GetGameAchievements_Achievement.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 17;
  if (v2 < 0x11)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::GetGameAchievements_Achievement::CodingKeys_optional __swiftcall Components.Schemas.GetGameAchievements_Achievement.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.GetGameAchievements_Achievement.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void Components.Schemas.GetGameAchievements_Achievement.CodingKeys.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_895();
      break;
    case 3:
    case 9:
      OUTLINED_FUNCTION_155();
      break;
    case 4:
      OUTLINED_FUNCTION_340();
      break;
    case 5:
      OUTLINED_FUNCTION_758(22);
      break;
    case 6:
      OUTLINED_FUNCTION_344(22);
      break;
    case 8:
      OUTLINED_FUNCTION_244(22);
      break;
    case 0xA:
      OUTLINED_FUNCTION_647();
      break;
    case 0xC:
      OUTLINED_FUNCTION_423(22);
      break;
    case 0xD:
      OUTLINED_FUNCTION_559(22);
      break;
    case 0xE:
      OUTLINED_FUNCTION_760(22);
      break;
    case 0xF:
      OUTLINED_FUNCTION_1123(22);
      break;
    case 0x10:
      OUTLINED_FUNCTION_925();
      break;
    default:
      return;
  }
}

void sub_24DDA6F0C(uint64_t *a1@<X8>)
{
  Components.Schemas.GetGameAchievements_Achievement.CodingKeys.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DDA6F3C()
{
  sub_24DDE4604();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDA6F74()
{
  sub_24DDE4604();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

BOOL static Components.Schemas.GetGameAchievements_Achievement.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 1);
  v68 = *(a1 + 2);
  memcpy(__dst, a1 + 32, 0x6DuLL);
  v66 = *(a1 + 19);
  v67 = *(a1 + 18);
  v65 = *(a1 + 20);
  v64 = a1[168];
  v62 = *(a1 + 23);
  v63 = *(a1 + 22);
  v60 = *(a1 + 25);
  v61 = *(a1 + 24);
  v58 = a1[209];
  v59 = a1[208];
  v56 = *(a1 + 27);
  v57 = *(a1 + 28);
  v7 = *(a1 + 29);
  v55 = a1[240];
  v54 = *(a1 + 32);
  v52 = *(a1 + 31);
  v53 = *(a1 + 33);
  v50 = *(a1 + 34);
  v51 = *(a1 + 35);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  memcpy(v73, a2 + 32, 0x6DuLL);
  v12 = *(a2 + 18);
  v13 = *(a2 + 29);
  if (v4 == 2)
  {
    v49 = *(a2 + 19);
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 2)
    {
      return result;
    }

    v49 = *(a2 + 19);
    if ((v8 ^ v4))
    {
      return result;
    }
  }

  if (v5 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }

LABEL_11:
    v15 = *(a2 + 20);
    v16 = a2[168];
    v47 = *(a2 + 25);
    v48 = *(a2 + 23);
    v17 = *(a2 + 22);
    v45 = *(a2 + 32);
    v46 = *(a2 + 24);
    v43 = a2[209];
    v44 = a2[208];
    v41 = *(a2 + 27);
    v42 = *(a2 + 28);
    v40 = a2[240];
    v38 = *(a2 + 31);
    v39 = *(a2 + 33);
    v36 = *(a2 + 34);
    v37 = *(a2 + 35);
    if (v6 != v10 || v68 != v11)
    {
      OUTLINED_FUNCTION_377();
      if ((sub_24DE22CA0() & 1) == 0)
      {
        return 0;
      }
    }

    v19 = OUTLINED_FUNCTION_406();
    v21 = sub_24DD8A4CC(v19, v20);

    if ((v21 & 1) == 0)
    {
      return 0;
    }

    static Components.Schemas.Artwork.== infix(_:_:)((a1 + 32), (a2 + 32));
    v23 = v22;
    memcpy(v70, a2 + 32, 0x6DuLL);
    sub_24DDE230C(__dst, v69);
    sub_24DDE230C(v73, v69);
    sub_24DDE22DC(v70);
    memcpy(v71, a1 + 32, 0x6DuLL);
    sub_24DDE22DC(v71);
    if ((v23 & 1) == 0)
    {
      return 0;
    }

    v24 = v67 == v12 && v66 == v49;
    if (!v24 && (sub_24DE22CA0() & 1) == 0)
    {
      return 0;
    }

    if (v65 != v15 || v64 != v16)
    {
      return 0;
    }

    v25 = v63 == v17 && v62 == v48;
    if (!v25 && (sub_24DE22CA0() & 1) == 0)
    {
      return 0;
    }

    v26 = v61 == v46 && v60 == v47;
    if (!v26 && (sub_24DE22CA0() & 1) == 0)
    {
      return 0;
    }

    if (v59 == 2)
    {
      v27 = v45;
      if (v44 != 2)
      {
        return 0;
      }
    }

    else
    {
      v27 = v45;
      if (v44 == 2 || ((v44 ^ v59) & 1) != 0)
      {
        return 0;
      }
    }

    if (v58 == 2)
    {
      if (v43 != 2)
      {
        return 0;
      }
    }

    else if (v43 == 2 || ((v43 ^ v58) & 1) != 0)
    {
      return 0;
    }

    if (v57)
    {
      if (!v42)
      {
        return 0;
      }

      if (v56 != v41 || v57 != v42)
      {
        v29 = sub_24DE22CA0();
        v27 = v45;
        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v42)
    {
      return 0;
    }

    if (v55)
    {
      if (!v40)
      {
        return 0;
      }
    }

    else
    {
      if (v7 == v13)
      {
        v30 = v40;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        return 0;
      }
    }

    if (v54)
    {
      if (!v27)
      {
        return 0;
      }

      v31 = v52 == v38 && v54 == v27;
      if (!v31 && (sub_24DE22CA0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v27)
    {
      return 0;
    }

    if (v53)
    {
      if (v39)
      {
        OUTLINED_FUNCTION_948();
        swift_bridgeObjectRetain_n();

        v32 = OUTLINED_FUNCTION_464();
        v34 = sub_24DD8A4CC(v32, v33);
        OUTLINED_FUNCTION_948();
        swift_bridgeObjectRelease_n();

        if ((v34 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_79;
      }
    }

    else if (!v39)
    {

LABEL_79:
      if (v51)
      {
        if (!v37)
        {
          return 0;
        }

        v35 = v50 == v36 && v51 == v37;
        return v35 || (sub_24DE22CA0() & 1) != 0;
      }

      return !v37;
    }

    return 0;
  }

  result = 0;
  if (v9 != 2 && ((v9 ^ v5) & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

void Components.Schemas.GetGameAchievements_Achievement.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_645();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2E88, &qword_24DE23360);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_390();
  v36 = *(v23 + 24);
  OUTLINED_FUNCTION_847();
  memcpy(v28, v29, v30);
  OUTLINED_FUNCTION_173(v26);
  sub_24DDE4604();
  OUTLINED_FUNCTION_851();
  sub_24DE22D50();
  LOBYTE(v38[0]) = 0;
  sub_24DE22C00();
  if (!v24)
  {
    OUTLINED_FUNCTION_725();
    sub_24DE22C00();
    LOBYTE(v38[0]) = 2;
    OUTLINED_FUNCTION_463();
    OUTLINED_FUNCTION_725();
    sub_24DE22C50();
    v38[0] = v36;
    v37[0] = 3;
    v34 = sub_24DDE4658();

    OUTLINED_FUNCTION_725();
    sub_24DE22C70();
    if (!v34)
    {

      OUTLINED_FUNCTION_1314(v38);
      sub_24DDE230C(&v39, v37);
      sub_24DDE262C();
      OUTLINED_FUNCTION_725();
      sub_24DE22C70();
      memcpy(v37, v38, 0x6DuLL);
      sub_24DDE22DC(v37);
      OUTLINED_FUNCTION_864(5);
      OUTLINED_FUNCTION_725();
      sub_24DE22C50();
      OUTLINED_FUNCTION_1258(6);
      OUTLINED_FUNCTION_725();
      sub_24DE22C90();
      OUTLINED_FUNCTION_1258(7);
      OUTLINED_FUNCTION_725();
      sub_24DE22C60();
      OUTLINED_FUNCTION_864(8);
      OUTLINED_FUNCTION_725();
      sub_24DE22C50();
      OUTLINED_FUNCTION_864(9);
      OUTLINED_FUNCTION_725();
      sub_24DE22C50();
      OUTLINED_FUNCTION_1258(10);
      OUTLINED_FUNCTION_725();
      sub_24DE22C00();
      OUTLINED_FUNCTION_1258(11);
      OUTLINED_FUNCTION_529();
      sub_24DE22C00();
      OUTLINED_FUNCTION_864(12);
      OUTLINED_FUNCTION_529();
      sub_24DE22BF0();
      OUTLINED_FUNCTION_864(13);
      OUTLINED_FUNCTION_529();
      sub_24DE22C10();
      OUTLINED_FUNCTION_864(14);
      OUTLINED_FUNCTION_529();
      sub_24DE22BF0();
      sub_24DDE46AC();
      OUTLINED_FUNCTION_757();

      OUTLINED_FUNCTION_529();
      sub_24DE22C20();

      OUTLINED_FUNCTION_864(16);
      OUTLINED_FUNCTION_529();
      sub_24DE22BF0();
      v35 = OUTLINED_FUNCTION_463();
      v33(v35);
      goto LABEL_4;
    }
  }

  v31 = OUTLINED_FUNCTION_661();
  v32(v31);
LABEL_4:
  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.GetGameAchievements_Achievement.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1000();
  v3 = v2;
  v4 = *(v1 + 1);
  v14 = *(v1 + 160);
  v15 = *(v1 + 208);
  v16 = *(v1 + 209);
  v17 = *(v1 + 224);
  v13 = *(v1 + 232);
  v18 = *(v1 + 240);
  v5 = *(v1 + 256);
  v19 = *(v1 + 264);
  v6 = *(v1 + 280);
  if (*v1 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v4 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  sub_24DE22AD0();
  v7 = OUTLINED_FUNCTION_1082();
  sub_24DDE2424(v7, v8);
  Components.Schemas.Artwork.hash(into:)(v3);
  sub_24DE22AD0();
  MEMORY[0x253039750](v14);
  sub_24DE22CE0();
  sub_24DE22AD0();
  sub_24DE22AD0();
  if (v15 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v16 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v17)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_826();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v18)
  {
    OUTLINED_FUNCTION_795();
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x253039750](v12);
    if (v5)
    {
LABEL_14:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1081();
      sub_24DE22AD0();
      if (v19)
      {
        goto LABEL_15;
      }

LABEL_24:
      OUTLINED_FUNCTION_795();
      if (v6)
      {
        goto LABEL_16;
      }

LABEL_25:
      OUTLINED_FUNCTION_795();
      OUTLINED_FUNCTION_827();
      return;
    }
  }

  OUTLINED_FUNCTION_795();
  if (!v19)
  {
    goto LABEL_24;
  }

LABEL_15:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  v9 = OUTLINED_FUNCTION_794();
  sub_24DDE2424(v9, v10);
  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_16:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_1084();
  OUTLINED_FUNCTION_827();

  sub_24DE22AD0();
}

uint64_t Components.Schemas.GetGameAchievements_Achievement.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.GetGameAchievements_Achievement.hash(into:)(v2);
  return sub_24DE22D10();
}

void Components.Schemas.GetGameAchievements_Achievement.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_992();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2EA8, &qword_24DE23368);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_250(v5);
  sub_24DDE4604();
  OUTLINED_FUNCTION_709();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_522();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    if (v8)
    {

      if (!v9)
      {
LABEL_5:
        if (!v7)
        {
LABEL_7:

          goto LABEL_8;
        }

LABEL_6:

        goto LABEL_7;
      }
    }

    else if (!v9)
    {
      goto LABEL_5;
    }

    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = v8;
  LOBYTE(v48[0]) = 0;
  OUTLINED_FUNCTION_433();
  v12 = sub_24DE22B50();
  OUTLINED_FUNCTION_43(1);
  v39 = sub_24DE22B50();
  OUTLINED_FUNCTION_43(2);
  v38 = sub_24DE22BA0();
  v44 = v13;
  sub_24DDE4700();
  OUTLINED_FUNCTION_476();
  sub_24DE22BC0();
  v43 = v48[0];
  v76 = 4;
  sub_24DDE2758();
  OUTLINED_FUNCTION_476();
  sub_24DE22BC0();
  memcpy(v85, v77, sizeof(v85));
  OUTLINED_FUNCTION_43(5);
  v37 = sub_24DE22BA0();
  v42 = v14;
  OUTLINED_FUNCTION_43(6);
  v36 = sub_24DE22BE0();
  OUTLINED_FUNCTION_43(7);
  v33 = sub_24DE22BB0();
  OUTLINED_FUNCTION_43(8);
  v35 = sub_24DE22BA0();
  v41 = v15;
  OUTLINED_FUNCTION_43(9);
  v16 = sub_24DE22BA0();
  v40 = v17;
  v18 = v16;
  OUTLINED_FUNCTION_43(10);
  v32 = sub_24DE22B50();
  OUTLINED_FUNCTION_43(11);
  v31 = sub_24DE22B50();
  OUTLINED_FUNCTION_43(12);
  v30 = sub_24DE22B40();
  v88 = v19;
  OUTLINED_FUNCTION_43(13);
  v29 = sub_24DE22B60();
  v79 = v20 & 1;
  OUTLINED_FUNCTION_43(14);
  v28 = sub_24DE22B40();
  v46 = v21;
  LOBYTE(v47[0]) = 15;
  sub_24DDE4754();
  OUTLINED_FUNCTION_476();
  sub_24DE22B70();
  v45 = v48[0];

  v75 = 16;
  OUTLINED_FUNCTION_433();
  v26 = sub_24DE22B40();
  v27 = v22;
  v25 = v33 & 1;
  v23 = OUTLINED_FUNCTION_225();
  v24(v23);
  LOBYTE(v47[0]) = v12;
  BYTE1(v47[0]) = v39;
  v47[1] = v38;
  v47[2] = v44;
  v47[3] = v43;
  memcpy(&v47[4], v85, 0x6DuLL);
  v47[18] = v37;
  v47[19] = v42;
  v47[20] = v36;
  LOBYTE(v47[21]) = v33 & 1;
  v47[22] = v35;
  v47[23] = v41;
  v47[24] = v18;
  v47[25] = v40;
  LOBYTE(v47[26]) = v32;
  BYTE1(v47[26]) = v31;
  v47[27] = v30;
  v47[28] = v88;
  v47[29] = v29;
  v34 = v79;
  LOBYTE(v47[30]) = v79;
  *(&v47[30] + 1) = *v78;
  HIDWORD(v47[30]) = *&v78[3];
  v47[31] = v28;
  v47[32] = v46;
  v47[33] = v45;
  v47[34] = v26;
  v47[35] = v27;
  memcpy(v11, v47, 0x120uLL);
  sub_24DDE47A8(v47, v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  LOBYTE(v48[0]) = v12;
  BYTE1(v48[0]) = v39;
  *(v48 + 2) = v86;
  HIWORD(v48[0]) = v87;
  v48[1] = v38;
  v48[2] = v44;
  v48[3] = v43;
  memcpy(v49, v85, sizeof(v49));
  v50 = v83;
  v51 = v84;
  v52 = v37;
  v53 = v42;
  v54 = v36;
  v55 = v25;
  *v56 = *v82;
  *&v56[3] = *&v82[3];
  v57 = v35;
  v58 = v41;
  v59 = v18;
  v60 = v40;
  v61 = v32;
  v62 = v31;
  v64 = v81;
  v63 = v80;
  v65 = v30;
  v66 = v88;
  v67 = v29;
  v68 = v34;
  *v69 = *v78;
  *&v69[3] = *&v78[3];
  v70 = v28;
  v71 = v46;
  v72 = v45;
  v73 = v26;
  v74 = v27;
  sub_24DDE47E0(v48);
LABEL_8:
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDA8340(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.GetGameAchievements_Achievement.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.game.getter()
{
  OUTLINED_FUNCTION_961();
  OUTLINED_FUNCTION_524();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_370();
  v5 = memcpy(v3, v4, 0x59uLL);
  v11 = OUTLINED_FUNCTION_805(v5, v6, &unk_27F1B2B40, &unk_24DE231D0, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  return sub_24DDE73DC(v11);
}

void *Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.game.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_524();
  memcpy(v0, v1, v2);
  sub_24DDE8DAC(&v6, &unk_27F1B2B40);
  v3 = OUTLINED_FUNCTION_407();
  return memcpy(v3, v4, 0x59uLL);
}

uint64_t Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.baseLeaderboardId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 96) = v3;
  *(v2 + 104) = v1;
  return result;
}

uint64_t Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.leaderboardId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  return result;
}

uint64_t Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.timeScope.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 128) = v3;
  *(v2 + 136) = v1;
  return result;
}

uint64_t Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.playerIds.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

void Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.init(game:baseLeaderboardId:leaderboardId:timeScope:playerIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_884();
  a31 = v33;
  a32 = v34;
  OUTLINED_FUNCTION_978();
  OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_1052(xmmword_24DE22F30);
  memcpy(&a9, v32, 0x59uLL);
  sub_24DDE8DAC(&a9, &unk_27F1B2B40);
  v35 = OUTLINED_FUNCTION_661();
  memcpy(v35, v36, 0x59uLL);
  OUTLINED_FUNCTION_1245();
  OUTLINED_FUNCTION_882();
}

GameCenterServerClient::Components::Schemas::GetLeaderboardEntriesForPlayers_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_944();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::GetLeaderboardEntriesForPlayers_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.CodingKeys.stringValue.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_412(19);
      break;
    case 2:
      OUTLINED_FUNCTION_34();
      break;
    case 3:
      OUTLINED_FUNCTION_895();
      break;
    default:
      return;
  }
}

void sub_24DDA87F0(uint64_t *a1@<X8>)
{
  Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.CodingKeys.stringValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DDA8820()
{
  sub_24DDE4810();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDA8858()
{
  sub_24DDE4810();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1316(&v48);
  v10 = v9[13];
  v38 = v9[14];
  v39 = v9[15];
  v37 = v9[16];
  v40 = v9[17];
  v41 = v9[12];
  memcpy(v50, v7, 0x59uLL);
  v12 = v7[12];
  v11 = v7[13];
  v13 = v48;
  v14 = v49;
  v15 = v50[0];
  v16 = v50[1];
  if (v49 == 1)
  {
    if (v50[1] == 1)
    {
      v34 = v7[14];
      v35 = v7[17];
      v36 = v7[15];
      v33 = v7[16];
      __src[0] = v48;
      __src[1] = 1;
      OUTLINED_FUNCTION_941(__src);
      sub_24DDE73DC(&v48);
      sub_24DDE73DC(v50);
      sub_24DDE8DAC(__src, &unk_27F1B2B40);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v20);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v21);
LABEL_7:
    __src[0] = v13;
    __src[1] = v14;
    memcpy(&__src[2], v9 + 2, 0x49uLL);
    __src[12] = v15;
    __src[13] = v16;
    memcpy(v47, v7 + 2, sizeof(v47));
    sub_24DDE8DAC(__src, &unk_27F1B2B50);
    goto LABEL_8;
  }

  v34 = v7[14];
  v35 = v7[17];
  v36 = v7[15];
  v33 = v7[16];
  __src[0] = v48;
  __src[1] = v49;
  OUTLINED_FUNCTION_941(__src);
  memcpy(__dst, __src, 0x59uLL);
  if (v16 == 1)
  {
    memcpy(v44, __src, 0x59uLL);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v17);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v18);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v19);
    sub_24DDE2054(v44);
    goto LABEL_7;
  }

  memcpy(&v44[2], v7 + 2, 0x49uLL);
  v44[0] = v15;
  v44[1] = v16;
  static Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.== infix(_:_:)(__dst, v44);
  v23 = v22;
  memcpy(v42, v44, 0x59uLL);
  OUTLINED_FUNCTION_668();
  sub_24DDE73DC(v24);
  OUTLINED_FUNCTION_668();
  sub_24DDE73DC(v25);
  OUTLINED_FUNCTION_668();
  sub_24DDE73DC(v26);
  sub_24DDE2054(v42);
  memcpy(v43, __dst, 0x59uLL);
  sub_24DDE2054(v43);
  v44[0] = v13;
  v44[1] = v14;
  OUTLINED_FUNCTION_941(v44);
  sub_24DDE8DAC(v44, &unk_27F1B2B40);
  if ((v23 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v27 = v41 == v12 && v10 == v11;
  if (v27 || (OUTLINED_FUNCTION_888(v41, v10) & 1) != 0)
  {
    if (v39)
    {
      v28 = v40;
      if (!v36)
      {
        goto LABEL_8;
      }

      v29 = v38 == v34 && v39 == v36;
      if (!v29 && (sub_24DE22CA0() & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v28 = v40;
      if (v36)
      {
        goto LABEL_8;
      }
    }

    if (v28)
    {
      if (v35)
      {
        v30 = v37 == v33 && v28 == v35;
        if (v30 || (sub_24DE22CA0() & 1) != 0)
        {
          goto LABEL_33;
        }
      }
    }

    else if (!v35)
    {
LABEL_33:
      v31 = OUTLINED_FUNCTION_1081();
      sub_24DD85994(v31, v32);
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_645();
  a19 = v31;
  a20 = v32;
  OUTLINED_FUNCTION_1067();
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2EC0, &qword_24DE23370);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_524();
  memcpy(v36, v37, v38);
  OUTLINED_FUNCTION_387(v34, v34[3]);
  sub_24DDE73DC(v31 - 184);
  sub_24DDE4810();
  OUTLINED_FUNCTION_470();
  sub_24DE22D50();
  OUTLINED_FUNCTION_1088(&a30);
  *(v31 - 65) = 0;
  sub_24DDE2E28();
  OUTLINED_FUNCTION_497();
  sub_24DE22C20();
  if (v30)
  {
    memcpy(&a18, &a30, 0x59uLL);
    sub_24DDE8DAC(&a18, &unk_27F1B2B40);
  }

  else
  {
    memcpy(&a18, &a30, 0x59uLL);
    sub_24DDE8DAC(&a18, &unk_27F1B2B40);
    OUTLINED_FUNCTION_391();
    sub_24DE22C50();
    OUTLINED_FUNCTION_463();
    OUTLINED_FUNCTION_391();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_391();
    sub_24DE22BF0();
    *(v31 - 66) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v39);
    OUTLINED_FUNCTION_580();
    OUTLINED_FUNCTION_497();
    sub_24DE22C70();
  }

  v40 = OUTLINED_FUNCTION_626();
  v41(v40);
  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[15];
  v5 = v1[17];
  if (v3 == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    v6 = *v1;
    memcpy(&__src[2], v1 + 2, 0x49uLL);
    __src[0] = v6;
    __src[1] = v3;
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v11[0] = v6;
    v11[1] = v3;
    memcpy(v12, v1 + 2, sizeof(v12));
    sub_24DDE2084(v11, __dst);
    Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(a1);
    memcpy(__dst, __src, 0x59uLL);
    sub_24DDE2054(__dst);
  }

  sub_24DE22AD0();
  if (!v4)
  {
    OUTLINED_FUNCTION_795();
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_795();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_548();
  sub_24DE22AD0();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_571();
  sub_24DE22AD0();
LABEL_9:
  v7 = OUTLINED_FUNCTION_547();
  return sub_24DDE0DB4(v7, v8);
}

uint64_t sub_24DDA9010(uint64_t a1)
{
  OUTLINED_FUNCTION_588(a1);
  v1(v3);
  return sub_24DE22D10();
}

void Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_359();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2ED0, &qword_24DE23378);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_153(v24);
  sub_24DDE4810();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v25)
  {
    OUTLINED_FUNCTION_929();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v54 = 0;
    v55 = 1;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = v25;
    v61 = v24;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    sub_24DDE8DAC(&v54, &unk_27F1B2B40);
  }

  else
  {
    sub_24DDE2FE0();
    OUTLINED_FUNCTION_746();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    v47 = v26;
    v49 = v77;
    v50 = v75;
    v43 = v78;
    v44 = v76;
    v28 = v79;
    v29 = v80;
    v41 = v82;
    v42 = v81;
    v30 = v84;
    v40 = v83;
    v45 = v85;
    v87 = v86;
    v74[0] = xmmword_24DE22F30;
    memset(&v74[1], 0, 73);
    sub_24DDE8DAC(v74, &unk_27F1B2B40);
    OUTLINED_FUNCTION_439();
    v48 = v29;
    sub_24DE22BA0();
    v46 = v31;
    OUTLINED_FUNCTION_662();
    v32 = sub_24DE22B40();
    v52 = v33;
    LOBYTE(v54) = 3;
    OUTLINED_FUNCTION_662();
    v39 = sub_24DE22B40();
    v51 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v35);
    OUTLINED_FUNCTION_400();
    sub_24DE22BC0();
    v36 = OUTLINED_FUNCTION_209();
    v37(v36);
    v38 = v73;
    v53[0] = v50;
    v53[1] = v44;
    v53[2] = v49;
    v53[3] = v43;
    v53[4] = v28;
    v53[5] = v48;
    v53[6] = v42;
    v53[7] = v41;
    v53[8] = v40;
    v53[9] = v30;
    v53[10] = v45;
    LOBYTE(v53[11]) = v87;
    v53[12] = 0;
    v53[13] = v46;
    v53[14] = v32;
    v53[15] = v52;
    v53[16] = v39;
    v53[17] = v51;
    v53[18] = v73;
    memcpy(v47, v53, 0x98uLL);
    sub_24DDE4864(v53, &v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v54 = v50;
    v55 = v44;
    v56 = v49;
    v57 = v43;
    v58 = v28;
    v59 = v48;
    v60 = v42;
    v61 = v41;
    v62 = v40;
    v63 = v30;
    v64 = v45;
    v65 = v87;
    v66 = 0;
    v67 = v46;
    v68 = v32;
    v69 = v52;
    v70 = v39;
    v71 = v51;
    v72 = v38;
    sub_24DDE489C(&v54);
  }

  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDA9538(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.GetLeaderboardEntries_Response.message.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

double Components.Schemas.GetLeaderboardEntries_Response.alert.setter()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1, v2, v3);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

double sub_24DDA968C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t Components.Schemas.GetLeaderboardEntries_Response.playerScore.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_1187();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 72), 0x41uLL);
  return sub_24DDE73DC(v7);
}

void *Components.Schemas.GetLeaderboardEntries_Response.playerScore.setter(const void *a1)
{
  OUTLINED_FUNCTION_1187();
  memcpy(v3, v4, v5);
  sub_24DDE8DAC(v7, &unk_27F1B2ED8);
  return memcpy((v1 + 72), a1, 0x41uLL);
}

__n128 Components.Schemas.GetLeaderboardEntries_Response.metadata.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_605(a1);
  sub_24DDE4914(v2[18], v2[19]);
  result = v4;
  *(v2 + 9) = v4;
  v2[20] = v1;
  return result;
}

uint64_t Components.Schemas.GetLeaderboardEntries_Response.results.setter(uint64_t a1)
{

  *(v1 + 168) = a1;
  return result;
}

__n128 Components.Schemas.GetLeaderboardEntries_Response.init(status:message:alert:totalEntries:playerScore:metadata:results:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_938();
  v13 = v12;
  v31 = *v14;
  v15 = v14[1].n128_u64[0];
  *(v12 + 72) = 0;
  v16 = (v12 + 72);
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = 1;
  *(v12 + 104) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0;
  *v12 = v17;
  *(v12 + 4) = v18 & 1;
  *(v12 + 8) = v19;
  *(v12 + 16) = v20;
  v21 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v21, v22, v23, v24);
  v25 = *v10;
  *(v13 + 40) = v10[1];
  *(v13 + 24) = v25;
  *(v13 + 56) = v9;
  *(v13 + 64) = a6 & 1;
  memcpy(__dst, v16, 0x41uLL);
  sub_24DDE8DAC(__dst, &unk_27F1B2ED8);
  v26 = OUTLINED_FUNCTION_615();
  memcpy(v26, v27, 0x41uLL);
  v28 = OUTLINED_FUNCTION_98();
  sub_24DDE4914(v28, v29);
  result = v31;
  *(v13 + 144) = v31;
  *(v13 + 160) = v15;
  *(v13 + 168) = a9;
  return result;
}

GameCenterServerClient::Components::Schemas::GetLeaderboardEntries_Response::CodingKeys_optional __swiftcall Components.Schemas.GetLeaderboardEntries_Response.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::GetLeaderboardEntries_Response::CodingKeys_optional __swiftcall Components.Schemas.GetLeaderboardEntries_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.GetLeaderboardEntries_Response.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t Components.Schemas.GetLeaderboardEntries_Response.CodingKeys.stringValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = OUTLINED_FUNCTION_648();
      break;
    case 4:
      result = OUTLINED_FUNCTION_754();
      break;
    case 5:
      result = OUTLINED_FUNCTION_751();
      break;
    case 6:
      result = OUTLINED_FUNCTION_1287();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDA9AC0@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.GetLeaderboardEntries_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDA9AF4()
{
  sub_24DDE495C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDA9B2C()
{
  sub_24DDE495C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.GetLeaderboardEntries_Response.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v7 = v6;
  v9 = v8;
  v10 = *v8;
  v11 = *(v8 + 4);
  v12 = *(v8 + 1);
  v13 = *(v8 + 2);
  v130 = *(v8 + 4);
  v131 = *(v8 + 3);
  v132 = *(v8 + 5);
  v133 = *(v8 + 6);
  v124 = *(v8 + 7);
  v126 = *(v8 + 64);
  memcpy(v153, v8 + 18, sizeof(v153));
  v120 = v9[19];
  v121 = v9[18];
  v14 = v9[20];
  v119 = v9[21];
  v15 = *v7;
  v16 = *(v7 + 4);
  v17 = *(v7 + 1);
  v18 = *(v7 + 2);
  v19 = *(v7 + 4);
  v127 = *(v7 + 3);
  v128 = *(v7 + 5);
  v129 = *(v7 + 6);
  v122 = v14;
  v123 = *(v7 + 7);
  v125 = *(v7 + 64);
  OUTLINED_FUNCTION_1187();
  memcpy(v20, v21, v22);
  v24 = *(v7 + 18);
  v23 = *(v7 + 19);
  v25 = *(v7 + 20);
  v26 = *(v7 + 21);
  if (v11)
  {
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v10 == v15)
    {
      v27 = v16;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_24;
    }
  }

  if (v13)
  {
    if (!v18)
    {
      goto LABEL_24;
    }

    if (v12 != v17 || v13 != v18)
    {
      v29 = v23;
      v30 = v25;
      OUTLINED_FUNCTION_1179();
      v32 = v31;
      v33 = sub_24DE22CA0();
      v24 = v32;
      v23 = v29;
      v25 = v30;
      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v18)
  {
    goto LABEL_24;
  }

  if (v130 != 1)
  {
    *__src = v131;
    *&__src[8] = v130;
    *&__src[16] = v132;
    *&__src[24] = v133;
    if (v19 != 1)
    {
      v116 = v26;
      v117 = v24;
      v34 = v23;
      v118 = v25;
      __dst[0] = v127;
      __dst[1] = v19;
      __dst[2] = v128;
      __dst[3] = v129;
      v60 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)();
      v61 = OUTLINED_FUNCTION_298();
      sub_24DD7639C(v61, v62, v63, v64);
      v65 = OUTLINED_FUNCTION_506();
      sub_24DD7639C(v65, v66, v128, v129);
      v67 = OUTLINED_FUNCTION_298();
      sub_24DD7639C(v67, v68, v69, v70);

      v71 = OUTLINED_FUNCTION_298();
      sub_24DD763E4(v71, v72, v73, v74);
      if ((v60 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    v39 = OUTLINED_FUNCTION_298();
    sub_24DD7639C(v39, v40, v41, v42);
    OUTLINED_FUNCTION_572();
    sub_24DD7639C(v43, v44, v45, v129);
    v46 = OUTLINED_FUNCTION_298();
    sub_24DD7639C(v46, v47, v48, v49);

LABEL_23:
    v52 = OUTLINED_FUNCTION_298();
    sub_24DD763E4(v52, v53, v54, v55);
    OUTLINED_FUNCTION_616();
    OUTLINED_FUNCTION_499();
    sub_24DD763E4(v56, v57, v58, v59);
    goto LABEL_24;
  }

  v117 = v24;
  v118 = v25;
  v34 = v23;
  v35 = OUTLINED_FUNCTION_625();
  sub_24DD7639C(v35, v36, v132, v133);
  if (v19 != 1)
  {
    v50 = OUTLINED_FUNCTION_777();
    sub_24DD7639C(v50, v51, v128, v129);
    goto LABEL_23;
  }

  v116 = v26;
  sub_24DD7639C(v127, 1, v128, v129);
  v37 = OUTLINED_FUNCTION_625();
  sub_24DD763E4(v37, v38, v132, v133);
LABEL_26:
  if (v126)
  {
    if (!v125)
    {
      goto LABEL_24;
    }

LABEL_32:
    v151 = *v153;
    v76 = *&v153[24];
    v152 = *&v153[16];
    v148 = *&v153[32];
    v149 = *&v153[48];
    v150 = v153[64];
    *&v147[7] = v154;
    v77 = v156;
    *&v147[23] = v155;
    v146 = v159;
    v144 = v157;
    v145 = v158;
    if (*&v153[24] == 1)
    {
      if (v156 == 1)
      {
        *__src = *v153;
        *&__src[16] = *&v153[16];
        *&__src[24] = 1;
        OUTLINED_FUNCTION_1227(v153);
        v78 = &unk_27F1B2ED8;
        OUTLINED_FUNCTION_377();
        sub_24DDE73DC(v79);
        OUTLINED_FUNCTION_377();
        sub_24DDE73DC(v80);
        OUTLINED_FUNCTION_444();
        sub_24DDE8DAC(v81, v82);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v86);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v87);
    }

    else
    {
      *__src = *v153;
      *&__src[16] = *&v153[16];
      *&__src[24] = *&v153[24];
      OUTLINED_FUNCTION_1227(v153);
      memcpy(__dst, __src, 0x41uLL);
      if (v77 != 1)
      {
        *v136 = v154;
        *&v136[32] = v157;
        *&v136[48] = v158;
        v136[64] = v159;
        *&v136[16] = v155;
        *&v136[24] = v77;
        static Components.Schemas.Leaderboard_PlayerScore.== infix(_:_:)(__dst, v136);
        LOBYTE(v78) = v88;
        memcpy(v134, v136, 0x41uLL);
        OUTLINED_FUNCTION_499();
        sub_24DDE73DC(v89);
        OUTLINED_FUNCTION_499();
        sub_24DDE73DC(v90);
        OUTLINED_FUNCTION_499();
        sub_24DDE73DC(v91);
        sub_24DDE459C(v134);
        memcpy(v135, __dst, 0x41uLL);
        sub_24DDE459C(v135);
        *v136 = v151;
        *&v136[16] = v152;
        *&v136[24] = v76;
        *&v136[32] = v148;
        *&v136[48] = v149;
        v136[64] = v150;
        OUTLINED_FUNCTION_592();
        sub_24DDE8DAC(v92, v93);
        if ((v78 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_40:
        if (v120 == 1)
        {
          v94 = OUTLINED_FUNCTION_545();
          sub_24DDE48CC(v94, v95);
          if (v34 == 1)
          {
            sub_24DDE48CC(v117, 1);
            v96 = OUTLINED_FUNCTION_545();
            sub_24DDE4914(v96, v97);
LABEL_48:
            if (v119 && v116)
            {

              v114 = OUTLINED_FUNCTION_370();
              sub_24DD8633C(v114, v115);
            }

            goto LABEL_24;
          }

          v101 = v117;
          v98 = v34;
          sub_24DDE48CC(v117, v34);
        }

        else
        {
          *__src = v121;
          *&__src[8] = v120;
          *&__src[16] = v122;
          if (v34 != 1)
          {
            __dst[0] = v117;
            __dst[1] = v34;
            __dst[2] = v118;
            v106 = OUTLINED_FUNCTION_188();
            sub_24DDE48CC(v106, v107);
            v108 = OUTLINED_FUNCTION_661();
            sub_24DDE48CC(v108, v109);
            v110 = OUTLINED_FUNCTION_188();
            sub_24DDE48CC(v110, v111);
            static Components.Schemas.Leaderboard_LeaderboardMetadata.== infix(_:_:)(__src, __dst);
            OUTLINED_FUNCTION_1305();

            v112 = OUTLINED_FUNCTION_188();
            sub_24DDE4914(v112, v113);
            if ((v78 & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_48;
          }

          v98 = 1;
          OUTLINED_FUNCTION_454();
          sub_24DDE48CC(v99, v100);
          v101 = v117;
          sub_24DDE48CC(v117, 1);
          v102 = OUTLINED_FUNCTION_188();
          sub_24DDE48CC(v102, v103);
        }

        v104 = OUTLINED_FUNCTION_188();
        sub_24DDE4914(v104, v105);
        sub_24DDE4914(v101, v98);
        goto LABEL_24;
      }

      memcpy(v136, __src, sizeof(v136));
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v83);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v84);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v85);
      sub_24DDE459C(v136);
    }

    *__src = v151;
    *&__src[16] = v152;
    *&__src[24] = v76;
    *&__src[32] = v148;
    *&__src[48] = v149;
    __src[64] = v150;
    *v139 = *v147;
    *&v139[15] = *&v147[15];
    v140 = v77;
    v143 = v146;
    v142 = v145;
    v141 = v144;
    sub_24DDE8DAC(__src, &unk_27F1B2EE0);
    goto LABEL_24;
  }

  v75 = v125;
  if (v124 != v123)
  {
    v75 = 1;
  }

  if ((v75 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  OUTLINED_FUNCTION_653();
}