id sub_2143FF8F0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 152);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = [objc_allocWithZone(_BlastDoorLPAssociatedApplicationMetadata) init];
  if (v1)
  {
    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  [v5 setBundleIdentifier_];

  v7 = *(v0 + 96);
  v25 = *(v0 + 80);
  v26 = v7;
  v27[0] = *(v0 + 112);
  *(v27 + 9) = *(v0 + 121);
  v8 = *(v0 + 32);
  v21 = *(v0 + 16);
  v22 = v8;
  v9 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = v9;
  if (sub_2144009B4(&v21) == 1)
  {
    v10 = 0;
  }

  else
  {
    v18 = v25;
    v19 = v26;
    *v20 = v27[0];
    *&v20[9] = *(v27 + 9);
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v10 = sub_2143F7CD4();
  }

  [v5 setIcon_];

  if (v2)
  {
    v11 = sub_2146D9588();
  }

  else
  {
    v11 = 0;
  }

  [v5 setCaption_];

  if (v3)
  {
    v12 = sub_2146D9588();
  }

  else
  {
    v12 = 0;
  }

  [v5 setAction_];

  [v5 setClipAction_];
  return v5;
}

uint64_t sub_2143FFAA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v25 = &v24 - v5;
  v6 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v7 + 20);
  v11 = sub_2146D8958();
  v12 = *(*(v11 - 8) + 56);
  v13 = 1;
  v28 = v10;
  v12(a2 + v10, 1, 1, v11);
  v14 = *(v6 + 24);
  v29 = a2;
  *(a2 + v14) = 0;
  v26 = [a1 version];
  v27 = a1;
  v15 = [a1 URL];
  if (v15)
  {
    v16 = v15;
    v17 = v25;
    sub_2146D88E8();

    v13 = 0;
  }

  else
  {
    v17 = v25;
  }

  v12(v17, v13, 1, v11);
  v18 = v27;
  v19 = [v27 colors];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2146D9488();
  }

  else
  {

    v21 = 0;
  }

  *v9 = v26;
  sub_21408AC04(v17, v9 + *(v6 + 20), &unk_27C9131A0, &unk_2146E9D10);
  *(v9 + *(v6 + 24)) = v21;
  v22 = v29;
  sub_213FB2DF4(v29 + v28, &unk_27C9131A0, &unk_2146E9D10);
  return sub_214400A9C(v9, v22, type metadata accessor for LinkPresentation.ArtworkMetadata);
}

id sub_2143FFD20()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = [objc_allocWithZone(_BlastDoorLPArtworkMetadata) init];
  v6 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
  sub_213FB2E54(v1 + *(v6 + 20), v4, &unk_27C9131A0, &unk_2146E9D10);
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v4, 1, v7) != 1)
  {
    v9 = sub_2146D8898();
    (*(v8 + 8))(v4, v7);
  }

  [v5 setURL_];

  if (*(v1 + *(v6 + 24)))
  {
    v10 = sub_2146D9468();
  }

  else
  {
    v10 = 0;
  }

  [v5 setColors_];

  return v5;
}

void sub_2143FFED4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = 1;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v24 = 1;
  v25 = 0;
  v26 = 1;
  sub_214400960(v22);
  v4 = [a1 lyrics];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2146D95B8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a1 language];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2146D95B8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a1 startTime];
  v15 = v14;
  if (v14)
  {
    [v14 doubleValue];
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [a1 endTime];
  v19 = v18;
  if (v18)
  {
    [v18 doubleValue];
    v21 = v20;
  }

  else
  {

    v21 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v17;
  *(a2 + 40) = v15 == 0;
  *(a2 + 48) = v21;
  *(a2 + 56) = v19 == 0;
}

id sub_214400088()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = [objc_allocWithZone(_BlastDoorLPLyricExcerptMetadata) init];
  if (v1)
  {
    v8 = sub_2146D9588();
  }

  else
  {
    v8 = 0;
  }

  [v7 setLyrics_];

  if (v2)
  {
    v9 = sub_2146D9588();
  }

  else
  {
    v9 = 0;
  }

  [v7 setLanguage_];

  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  [v7 setStartTime_];

  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  [v7 setEndTime_];

  return v7;
}

void sub_2144001E4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 street];
  v5 = sub_2146D95B8();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [a1 subLocality];
  v9 = sub_2146D95B8();
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
  v12 = [a1 city];
  v13 = sub_2146D95B8();
  v15 = v14;

  a2[4] = v13;
  a2[5] = v15;
  v16 = [a1 subAdministrativeArea];
  v17 = sub_2146D95B8();
  v19 = v18;

  a2[6] = v17;
  a2[7] = v19;
  v20 = [a1 state];
  v21 = sub_2146D95B8();
  v23 = v22;

  a2[8] = v21;
  a2[9] = v23;
  v24 = [a1 postalCode];
  v25 = sub_2146D95B8();
  v27 = v26;

  a2[10] = v25;
  a2[11] = v27;
  v28 = [a1 country];
  v29 = sub_2146D95B8();
  v31 = v30;

  a2[12] = v29;
  a2[13] = v31;
  v32 = [a1 ISOCountryCode];
  v33 = sub_2146D95B8();
  v35 = v34;

  a2[14] = v33;
  a2[15] = v35;
}

id sub_214400398()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBDB60]);

  v1 = [v0 init];
  v2 = sub_2146D9588();

  [v1 setStreet_];

  v3 = sub_2146D9588();

  [v1 setSubLocality_];

  v4 = sub_2146D9588();

  [v1 setCity_];

  v5 = sub_2146D9588();

  [v1 setSubAdministrativeArea_];

  v6 = sub_2146D9588();

  [v1 setState_];

  v7 = sub_2146D9588();

  [v1 setPostalCode_];

  v8 = sub_2146D9588();

  [v1 setCountry_];

  v9 = sub_2146D9588();

  [v1 setISOCountryCode_];

  return v1;
}

void sub_214400664(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143FFED4(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }
}

uint64_t sub_2144006B4@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2143EE928(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void sub_214400704(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143EF3D8(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }
}

id sub_214400754(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithUnsignedInteger_];
}

id sub_21440079C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2146D9588();

  v4 = [v2 initWithString_];

  return v4;
}

void *sub_214400810(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_21409FEAC(result, v5, 0);
  }

  return result;
}

double sub_214400888(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_2146EA720;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return result;
}

double sub_2144008B4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_2144008F4()
{
  (*(v0 + 16))();

  return sub_2146DAA78();
}

double sub_214400940(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_2146EA720;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  return result;
}

uint64_t sub_2144009B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2144009D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214400A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214400B04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214400B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_21440520C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_214400BB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_214406CBC(a2);
  *a1 = result;
  return result;
}

uint64_t sub_214400BE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214406CBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_214400C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_214406280();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_214400C70@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214400C8C()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_214400CB0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA199B0);
  __swift_project_value_buffer(v0, qword_27CA199B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146E6980;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "messageType";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_2146D9118();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "sendDate";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "messageData";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "baseColor";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "identifier";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "supportsPlaybackTimeOffsets";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "startDelay";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return sub_2146D9128();
}

uint64_t sub_214400FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_21440116C(a1, v5, a2, a3);
          break;
        case 2:
          type metadata accessor for ETP_Header(0);
          sub_2146D8FA8();
          break;
        case 3:
          type metadata accessor for ETP_Header(0);
          sub_2146D8EC8();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        type metadata accessor for ETP_Header(0);
        sub_2146D8E98();
      }

      else if (result == 7)
      {
        type metadata accessor for ETP_Header(0);
        sub_2146D8F28();
      }
    }

    else if (result == 4)
    {
      type metadata accessor for ETP_Header(0);
      sub_2146D8F88();
    }

    else
    {
      type metadata accessor for ETP_Header(0);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_21440116C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ETP_Header(0);
  sub_21440520C();
  return sub_2146D8EB8();
}

uint64_t sub_2144011E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ETP_Header(0);
  if (*(v3 + v5[5]) == 8 || (sub_21440520C(), result = sub_2146D9038(), !v4))
  {
    if ((*(v3 + v5[6] + 8) & 1) != 0 || (result = sub_2146D9108(), !v4))
    {
      v7 = v3 + v5[7];
      v8 = *(v7 + 8);
      if (v8 >> 60 == 15 || (v9 = *v7, sub_21402D9F8(*v7, *(v7 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v9, v8), !v4))
      {
        if ((*(v3 + v5[8] + 4) & 1) != 0 || (result = sub_2146D90E8(), !v4))
        {
          if (!*(v3 + v5[9] + 8) || (result = sub_2146D90A8(), !v4))
          {
            if (*(v3 + v5[10]) == 2 || (result = sub_2146D9028(), !v4))
            {
              if (*(v3 + v5[11] + 8))
              {
                return sub_2146D8DD8();
              }

              result = sub_2146D9098();
              if (!v4)
              {
                return sub_2146D8DD8();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double sub_2144013C8@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  *(a2 + a1[5]) = 8;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 8) = 1;
  result = 0.0;
  v7 = a1[8];
  *(a2 + a1[7]) = xmmword_2146E68C0;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  *(a2 + v9) = 2;
  v11 = a2 + a1[11];
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_214401498(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D18, type metadata accessor for ETP_Header, asc_21473BA38);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214401538(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912768, type metadata accessor for ETP_Header, asc_21473BA70);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144015A4(uint64_t a1, uint64_t a2)
{
  sub_214404814(&qword_27C912768, type metadata accessor for ETP_Header, asc_21473BA70);

  return sub_2146D9008();
}

uint64_t sub_214401624()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA199C8);
  __swift_project_value_buffer(v0, qword_27CA199C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E68E0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "Tap";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "QuickTap";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "Heartbeat";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "Doodle";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ReadReceipt";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "Video";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "Kiss";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "Anger";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_214401988()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA199E0);
  __swift_project_value_buffer(v0, qword_27CA199E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "timeDeltas";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "points";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "colors";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214401B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 4 || result == 3 || result == 2)
    {
      type metadata accessor for ETP_Tap(0);
      sub_2146D8EC8();
    }
  }

  return result;
}

uint64_t sub_214401CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D28, type metadata accessor for ETP_Tap, byte_21473B8A8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214401D60(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912780, type metadata accessor for ETP_Tap, byte_21473B8E0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214401DCC(uint64_t a1, uint64_t a2)
{
  sub_214404814(&qword_27C912780, type metadata accessor for ETP_Tap, byte_21473B8E0);

  return sub_2146D9008();
}

uint64_t sub_214401E78()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA199F8);
  __swift_project_value_buffer(v0, qword_27CA199F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E6930;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "beatsPerMinute";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "duration";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "normalizedCenterX";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "normalizedCenterY";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "rotation";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "heartbreakTime";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21440213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5 || result == 6)
      {
LABEL_2:
        type metadata accessor for ETP_Heartbeat(0);
        sub_2146D8EE8();
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          type metadata accessor for ETP_Heartbeat(0);
          sub_2146D8F58();
          break;
        case 3:
          goto LABEL_2;
      }
    }
  }
}

uint64_t sub_214402274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ETP_Heartbeat(0);
  if ((*(v3 + v5[5] + 4) & 1) != 0 || (result = sub_2146D9058(), !v4))
  {
    if ((*(v3 + v5[6] + 4) & 1) != 0 || (result = sub_2146D90B8(), !v4))
    {
      if ((*(v3 + v5[7] + 4) & 1) != 0 || (result = sub_2146D9058(), !v4))
      {
        if ((*(v3 + v5[8] + 4) & 1) != 0 || (result = sub_2146D9058(), !v4))
        {
          if ((*(v3 + v5[9] + 4) & 1) != 0 || (result = sub_2146D9058(), !v4))
          {
            if (*(v3 + v5[10] + 4))
            {
              return sub_2146D8DD8();
            }

            result = sub_2146D9058();
            if (!v4)
            {
              return sub_2146D8DD8();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2144023D0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_2144024A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D30, type metadata accessor for ETP_Heartbeat, aA_105);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214402544(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912778, type metadata accessor for ETP_Heartbeat, byte_21473B778);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144025B0(uint64_t a1, uint64_t a2)
{
  sub_214404814(&qword_27C912778, type metadata accessor for ETP_Heartbeat, byte_21473B778);

  return sub_2146D9008();
}

uint64_t sub_214402630()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A10);
  __swift_project_value_buffer(v0, qword_27CA19A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "doodleCount";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "doodleData";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "colorData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pointTimeDeltaData";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214402878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        type metadata accessor for ETP_Doodle(0);
        sub_2146D8EC8();
      }
    }

    else if (result == 1)
    {
      type metadata accessor for ETP_Doodle(0);
      sub_2146D8F58();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_214402974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ETP_Doodle(0);
  if ((*(v3 + v5[5] + 4) & 1) != 0 || (result = sub_2146D90B8(), !v4))
  {
    v7 = v3 + v5[6];
    v8 = *(v7 + 8);
    if (v8 >> 60 == 15 || (v9 = *v7, sub_21402D9F8(*v7, *(v7 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v9, v8), !v4))
    {
      v10 = v3 + v5[7];
      v11 = *(v10 + 8);
      if (v11 >> 60 == 15 || (v12 = *v10, sub_21402D9F8(*v10, *(v10 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v12, v11), !v4))
      {
        v13 = v3 + v5[8];
        v14 = *(v13 + 8);
        if (v14 >> 60 == 15)
        {
          return sub_2146D8DD8();
        }

        v15 = *v13;
        sub_21402D9F8(*v13, *(v13 + 8));
        sub_2146D9048();
        result = sub_213FDC6BC(v15, v14);
        if (!v4)
        {
          return sub_2146D8DD8();
        }
      }
    }
  }

  return result;
}

double sub_214402B20@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  result = 0.0;
  *(a2 + v4) = xmmword_2146E68C0;
  v7 = a1[8];
  *(a2 + a1[7]) = xmmword_2146E68C0;
  *(a2 + v7) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_214402BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D38, type metadata accessor for ETP_Doodle, byte_21473B5D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214402C60(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912770, type metadata accessor for ETP_Doodle, byte_21473B610);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214402CCC(uint64_t a1, uint64_t a2)
{
  sub_214404814(&qword_27C912770, type metadata accessor for ETP_Doodle, byte_21473B610);

  return sub_2146D9008();
}

uint64_t sub_214402D4C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A28);
  __swift_project_value_buffer(v0, qword_27CA19A28);
  return sub_2146D9138();
}

uint64_t sub_214402D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_2146D8E78();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_214402E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D40, type metadata accessor for ETP_ReadReceipt, byte_21473B470);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214402EEC(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912C80, type metadata accessor for ETP_ReadReceipt, byte_21473B4A8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214402F58(uint64_t a1, uint64_t a2)
{
  sub_214404814(&qword_27C912C80, type metadata accessor for ETP_ReadReceipt, byte_21473B4A8);

  return sub_2146D9008();
}

uint64_t sub_214402FD4(uint64_t a1, uint64_t a2)
{
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21440305C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A40);
  __swift_project_value_buffer(v0, qword_27CA19A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "introMessageData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "playingMessagesData";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "mediaType";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214403270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 4)
    {
      sub_214403338(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      type metadata accessor for ETP_Video(0);
      sub_2146D8EC8();
    }
  }

  return result;
}

uint64_t sub_214403338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ETP_Video(0);
  sub_214406280();
  return sub_2146D8EB8();
}

uint64_t sub_2144033AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ETP_Video(0);
  v6 = v3 + v5[5];
  v7 = *(v6 + 8);
  if (v7 >> 60 == 15 || (v8 = *v6, sub_21402D9F8(*v6, *(v6 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v8, v7), !v4))
  {
    v10 = v3 + v5[6];
    v11 = *(v10 + 8);
    if (v11 >> 60 == 15 || (v12 = *v10, sub_21402D9F8(*v10, *(v10 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v12, v11), !v4))
    {
      if (*(v3 + v5[7]) == 2)
      {
        return sub_2146D8DD8();
      }

      sub_214406280();
      result = sub_2146D9038();
      if (!v4)
      {
        return sub_2146D8DD8();
      }
    }
  }

  return result;
}

double sub_214403520@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_2146E68C0;
  *(a2 + v5) = xmmword_2146E68C0;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_2144035B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D48, type metadata accessor for ETP_Video, aYe_0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214403654(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912788, type metadata accessor for ETP_Video, aQg);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144036C0(uint64_t a1, uint64_t a2)
{
  sub_214404814(&qword_27C912788, type metadata accessor for ETP_Video, aQg);

  return sub_2146D9008();
}

uint64_t sub_214403740()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A58);
  __swift_project_value_buffer(v0, qword_27CA19A58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "Video";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "Photo";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21440392C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A70);
  __swift_project_value_buffer(v0, qword_27CA19A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "delays";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "points";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "angles";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214403B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for ETP_Kiss(0);
      sub_2146D8EC8();
    }
  }

  return result;
}

uint64_t sub_214403C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4(0);
  v10 = (v7 + v9[5]);
  v11 = v10[1];
  if (v11 >> 60 == 15 || (v12 = *v10, sub_21402D9F8(*v10, v11), sub_2146D9048(), result = sub_213FDC6BC(v12, v11), !v8))
  {
    v14 = v7 + v9[6];
    v15 = *(v14 + 8);
    if (v15 >> 60 == 15 || (v16 = *v14, sub_21402D9F8(*v14, *(v14 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v16, v15), !v8))
    {
      v17 = v7 + v9[7];
      v18 = *(v17 + 8);
      if (v18 >> 60 == 15)
      {
        return sub_2146D8DD8();
      }

      v19 = *v17;
      sub_21402D9F8(*v17, *(v17 + 8));
      sub_2146D9048();
      result = sub_213FDC6BC(v19, v18);
      if (!v8)
      {
        return sub_2146D8DD8();
      }
    }
  }

  return result;
}

uint64_t sub_214403E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D58, type metadata accessor for ETP_Kiss, byte_21473B178);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214403EB0(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912790, type metadata accessor for ETP_Kiss, byte_21473B1B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214403F1C(uint64_t a1, uint64_t a2)
{
  sub_214404814(&qword_27C912790, type metadata accessor for ETP_Kiss, byte_21473B1B0);

  return sub_2146D9008();
}

uint64_t sub_214403FC8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19A88);
  __swift_project_value_buffer(v0, qword_27CA19A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_214737980;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "duration";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "normalizedCenterX";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "normalizedCenterY";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "delays";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "points";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_214404250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        type metadata accessor for ETP_Anger(0);
        sub_2146D8EE8();
      }
    }

    else
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4 || result == 5)
      {
        type metadata accessor for ETP_Anger(0);
        sub_2146D8EC8();
      }
    }
  }
}

uint64_t sub_21440436C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ETP_Anger(0);
  if ((*(v3 + v5[5] + 4) & 1) != 0 || (result = sub_2146D9058(), !v4))
  {
    if ((*(v3 + v5[6] + 4) & 1) != 0 || (result = sub_2146D9058(), !v4))
    {
      if ((*(v3 + v5[7] + 4) & 1) != 0 || (result = sub_2146D9058(), !v4))
      {
        v7 = v3 + v5[8];
        v8 = *(v7 + 8);
        if (v8 >> 60 == 15 || (v9 = *v7, sub_21402D9F8(*v7, *(v7 + 8)), sub_2146D9048(), result = sub_213FDC6BC(v9, v8), !v4))
        {
          v10 = v3 + v5[9];
          v11 = *(v10 + 8);
          if (v11 >> 60 == 15)
          {
            return sub_2146D8DD8();
          }

          v12 = *v10;
          sub_21402D9F8(*v10, *(v10 + 8));
          sub_2146D9048();
          result = sub_213FDC6BC(v12, v11);
          if (!v4)
          {
            return sub_2146D8DD8();
          }
        }
      }
    }
  }

  return result;
}

double sub_214404520@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *(v8 + 4) = 1;
  *v8 = 0;
  result = 0.0;
  *(a2 + v7) = xmmword_2146E68C0;
  *(a2 + a1[9]) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_2144045D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_214404814(&qword_27C912D60, type metadata accessor for ETP_Anger, aQh);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214404678(uint64_t a1)
{
  v2 = sub_214404814(&qword_27C912798, type metadata accessor for ETP_Anger, aIj);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144046E4(uint64_t a1, uint64_t a2)
{
  sub_214404814(&qword_27C912798, type metadata accessor for ETP_Anger, aIj);

  return sub_2146D9008();
}

uint64_t sub_214404814(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21440520C()
{
  result = qword_27C912D20;
  if (!qword_27C912D20)
  {
    result = swift_getWitnessTable(byte_21473BD64, &type metadata for ETP_Header.MessageType, v0, v1);
    atomic_store(result, &qword_27C912D20);
  }

  return result;
}

uint64_t sub_214405260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Video(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    v11 = sub_214466780(v7, v6, v10, v9);
    sub_213FDC6BC(v10, v9);
    sub_213FDC6BC(v7, v6);
    if (!v11)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      sub_213FDC6BC(v7, v6);
      goto LABEL_13;
    }

LABEL_10:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    sub_213FDC6BC(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v15 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if (!v15)
  {
    return 0;
  }

LABEL_13:
  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 != 2)
  {
    if (v18 != 2 && ((v18 ^ v17) & 1) == 0)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v18 != 2)
  {
    return 0;
  }

LABEL_18:
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_2144054C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Anger(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v22 = *(a1 + v20);
  v21 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v25 = *v23;
  v24 = v23[1];
  if (v21 >> 60 == 15)
  {
    if (v24 >> 60 == 15)
    {
      v26 = v4;
      sub_213FDCA18(v22, v21);
      sub_213FDCA18(v25, v24);
      sub_213FDC6BC(v22, v21);
      v27 = v26;
      goto LABEL_24;
    }

LABEL_28:
    sub_213FDCA18(v22, v21);
    sub_213FDCA18(v25, v24);
    sub_213FDC6BC(v22, v21);
    sub_213FDC6BC(v25, v24);
    return 0;
  }

  if (v24 >> 60 == 15)
  {
    goto LABEL_28;
  }

  v27 = v4;
  sub_213FDCA18(v22, v21);
  sub_213FDCA18(v25, v24);
  v28 = sub_214466780(v22, v21, v25, v24);
  sub_213FDC6BC(v25, v24);
  sub_213FDC6BC(v22, v21);
  if (!v28)
  {
    return 0;
  }

LABEL_24:
  v29 = v27[9];
  v22 = *(a1 + v29);
  v21 = *(a1 + v29 + 8);
  v30 = (a2 + v29);
  v25 = *v30;
  v24 = v30[1];
  if (v21 >> 60 != 15)
  {
    if (v24 >> 60 == 15)
    {
      goto LABEL_28;
    }

    sub_213FDCA18(v22, v21);
    sub_213FDCA18(v25, v24);
    v32 = sub_214466780(v22, v21, v25, v24);
    sub_213FDC6BC(v25, v24);
    sub_213FDC6BC(v22, v21);
    if (v32)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v24 >> 60 != 15)
  {
    goto LABEL_28;
  }

  sub_213FDCA18(v22, v21);
  sub_213FDCA18(v25, v24);
  sub_213FDC6BC(v22, v21);
LABEL_31:
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21440579C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 != 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v8, v7);
    sub_213FDCA18(v11, v10);
    sub_213FDC6BC(v8, v7);
  }

  else
  {
    if (v10 >> 60 == 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v8, v7);
    sub_213FDCA18(v11, v10);
    v12 = sub_214466780(v8, v7, v11, v10);
    sub_213FDC6BC(v11, v10);
    sub_213FDC6BC(v8, v7);
    if (!v12)
    {
      return 0;
    }
  }

  v13 = v5[6];
  v8 = *(a1 + v13);
  v7 = *(a1 + v13 + 8);
  v14 = (a2 + v13);
  v11 = *v14;
  v10 = v14[1];
  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_213FDCA18(v8, v7);
      sub_213FDCA18(v11, v10);
      sub_213FDC6BC(v8, v7);
      goto LABEL_14;
    }

LABEL_10:
    sub_213FDCA18(v8, v7);
    sub_213FDCA18(v11, v10);
    sub_213FDC6BC(v8, v7);
    v15 = v11;
    v16 = v10;
LABEL_11:
    sub_213FDC6BC(v15, v16);
    return 0;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_213FDCA18(v8, v7);
  sub_213FDCA18(v11, v10);
  v18 = sub_214466780(v8, v7, v11, v10);
  sub_213FDC6BC(v11, v10);
  sub_213FDC6BC(v8, v7);
  if (!v18)
  {
    return 0;
  }

LABEL_14:
  v19 = v5[7];
  v21 = *(a1 + v19);
  v20 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v24 = *v22;
  v23 = v22[1];
  if (v20 >> 60 != 15)
  {
    if (v23 >> 60 == 15)
    {
      goto LABEL_18;
    }

    sub_213FDCA18(v21, v20);
    sub_213FDCA18(v24, v23);
    v25 = sub_214466780(v21, v20, v24, v23);
    sub_213FDC6BC(v24, v23);
    sub_213FDC6BC(v21, v20);
    if (v25)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v23 >> 60 != 15)
  {
LABEL_18:
    sub_213FDCA18(v21, v20);
    sub_213FDCA18(v24, v23);
    sub_213FDC6BC(v21, v20);
    v15 = v24;
    v16 = v23;
    goto LABEL_11;
  }

  sub_213FDCA18(v21, v20);
  sub_213FDCA18(v24, v23);
  sub_213FDC6BC(v21, v20);
LABEL_20:
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214405AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Heartbeat(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214405C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Header(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 8)
  {
    if (v7 != 8)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v15 = *(a1 + v13);
  v14 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v18 = *v16;
  v17 = v16[1];
  if (v14 >> 60 == 15)
  {
    if (v17 >> 60 == 15)
    {
      v19 = v4;
      sub_213FDCA18(v15, v14);
      sub_213FDCA18(v18, v17);
      sub_213FDC6BC(v15, v14);
      v20 = v19;
      goto LABEL_18;
    }

LABEL_15:
    sub_213FDCA18(v15, v14);
    sub_213FDCA18(v18, v17);
    sub_213FDC6BC(v15, v14);
    sub_213FDC6BC(v18, v17);
    return 0;
  }

  if (v17 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v22 = v4;
  sub_213FDCA18(v15, v14);
  sub_213FDCA18(v18, v17);
  v23 = sub_214466780(v15, v14, v18, v17);
  sub_213FDC6BC(v18, v17);
  sub_213FDC6BC(v15, v14);
  v20 = v22;
  if (!v23)
  {
    return 0;
  }

LABEL_18:
  v24 = v20[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v29 = v20[9];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v34 = v20;
      v35 = sub_2146DA6A8();
      v20 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v36 = v20[10];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

  v39 = v20[11];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
  if (v41)
  {
    if (v43)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if (*v40 != *v42)
  {
    LOBYTE(v43) = 1;
  }

  if (v43)
  {
    return 0;
  }

LABEL_42:
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214405F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Doodle(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v15 = *v13;
  v14 = v13[1];
  if (v11 >> 60 == 15)
  {
    if (v14 >> 60 != 15)
    {
      goto LABEL_21;
    }

    v16 = v4;
    sub_213FDCA18(v12, v11);
    sub_213FDCA18(v15, v14);
    sub_213FDC6BC(v12, v11);
    v17 = v16;
  }

  else
  {
    if (v14 >> 60 == 15)
    {
      goto LABEL_21;
    }

    v18 = v4;
    sub_213FDCA18(v12, v11);
    sub_213FDCA18(v15, v14);
    v19 = sub_214466780(v12, v11, v15, v14);
    sub_213FDC6BC(v15, v14);
    sub_213FDC6BC(v12, v11);
    v17 = v18;
    if (!v19)
    {
      return 0;
    }
  }

  v20 = *(v17 + 28);
  v12 = *(a1 + v20);
  v11 = *(a1 + v20 + 8);
  v21 = (a2 + v20);
  v15 = *v21;
  v14 = v21[1];
  if (v11 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      v22 = v17;
      sub_213FDCA18(v12, v11);
      sub_213FDCA18(v15, v14);
      sub_213FDC6BC(v12, v11);
      v23 = v22;
      goto LABEL_17;
    }

LABEL_21:
    sub_213FDCA18(v12, v11);
    sub_213FDCA18(v15, v14);
    sub_213FDC6BC(v12, v11);
    sub_213FDC6BC(v15, v14);
    return 0;
  }

  if (v14 >> 60 == 15)
  {
    goto LABEL_21;
  }

  v23 = v17;
  sub_213FDCA18(v12, v11);
  sub_213FDCA18(v15, v14);
  v24 = sub_214466780(v12, v11, v15, v14);
  sub_213FDC6BC(v15, v14);
  sub_213FDC6BC(v12, v11);
  if (!v24)
  {
    return 0;
  }

LABEL_17:
  v25 = *(v23 + 32);
  v12 = *(a1 + v25);
  v11 = *(a1 + v25 + 8);
  v26 = (a2 + v25);
  v15 = *v26;
  v14 = v26[1];
  if (v11 >> 60 != 15)
  {
    if (v14 >> 60 == 15)
    {
      goto LABEL_21;
    }

    sub_213FDCA18(v12, v11);
    sub_213FDCA18(v15, v14);
    v28 = sub_214466780(v12, v11, v15, v14);
    sub_213FDC6BC(v15, v14);
    sub_213FDC6BC(v12, v11);
    if (v28)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (v14 >> 60 != 15)
  {
    goto LABEL_21;
  }

  sub_213FDCA18(v12, v11);
  sub_213FDCA18(v15, v14);
  sub_213FDC6BC(v12, v11);
LABEL_24:
  sub_2146D8DF8();
  sub_214404814(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

unint64_t sub_214406280()
{
  result = qword_27C912D50;
  if (!qword_27C912D50)
  {
    result = swift_getWitnessTable(aE_78, &type metadata for ETP_Video.MediaType, v0, v1);
    atomic_store(result, &qword_27C912D50);
  }

  return result;
}

void sub_2144062FC(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_27C912D78, &type metadata for ETP_Header.MessageType);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C912D80, MEMORY[0x277D84A28]);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2E328, MEMORY[0x277D84CC0]);
          if (v5 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_280B34BD8, MEMORY[0x277D839B0]);
              if (v7 <= 0x3F)
              {
                sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
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

void sub_2144064E0(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_27C912DA8, MEMORY[0x277D83A90]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2E328, MEMORY[0x277D84CC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2144065D4(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2E328, MEMORY[0x277D84CC0]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8DF8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8DF8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21440679C(uint64_t a1)
{
  result = sub_2146D8DF8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_214406830(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C912DE0, &type metadata for ETP_Video.MediaType);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214406924(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2144069E8(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_27C912DA8, MEMORY[0x277D83A90]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_214406AB0()
{
  result = qword_27C912E08;
  if (!qword_27C912E08)
  {
    result = swift_getWitnessTable(aU_87, &type metadata for ETP_Video.MediaType, v0, v1);
    atomic_store(result, &qword_27C912E08);
  }

  return result;
}

unint64_t sub_214406B08()
{
  result = qword_27C912E10;
  if (!qword_27C912E10)
  {
    result = swift_getWitnessTable(byte_21473BCF4, &type metadata for ETP_Header.MessageType, v0, v1);
    atomic_store(result, &qword_27C912E10);
  }

  return result;
}

unint64_t sub_214406B60()
{
  result = qword_27C912E18;
  if (!qword_27C912E18)
  {
    result = swift_getWitnessTable(byte_21473BC14, &type metadata for ETP_Video.MediaType, v0, v1);
    atomic_store(result, &qword_27C912E18);
  }

  return result;
}

unint64_t sub_214406BB8()
{
  result = qword_27C912E20;
  if (!qword_27C912E20)
  {
    result = swift_getWitnessTable(byte_21473BBDC, &type metadata for ETP_Video.MediaType, v0, v1);
    atomic_store(result, &qword_27C912E20);
  }

  return result;
}

unint64_t sub_214406C10()
{
  result = qword_27C912E28;
  if (!qword_27C912E28)
  {
    result = swift_getWitnessTable(byte_21473BCB4, &type metadata for ETP_Header.MessageType, v0, v1);
    atomic_store(result, &qword_27C912E28);
  }

  return result;
}

unint64_t sub_214406C68()
{
  result = qword_27C912E30;
  if (!qword_27C912E30)
  {
    result = swift_getWitnessTable(asc_21473BC7C, &type metadata for ETP_Header.MessageType, v0, v1);
    atomic_store(result, &qword_27C912E30);
  }

  return result;
}

uint64_t sub_214406CBC(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_214406CE8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v31 = *(DoesNotContainCharacterSetValidator - 8);
  v30 = *(v31 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 100;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(v11 + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214409474(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_214409FC4;
  *(v15 + 24) = v17;
  *(v11 + 40) = v15;
  sub_2146D8658();
  v18 = v28;
  v14(v28, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v21 = swift_allocObject();
  sub_214409474(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_214409FC8;
  *(v19 + 24) = v21;
  *(v11 + 48) = v19;
  v22 = sub_2142E0070(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 16) = sub_214032610;
  *(v23 + 24) = v24;
  v25 = inited;
  *(inited + 32) = v23;
  return sub_214042A28(v25, v32);
}

unint64_t sub_2144070DC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v31 = *(DoesNotContainCharacterSetValidator - 8);
  v30 = *(v31 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 3;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(v11 + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214409474(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_214409FC4;
  *(v15 + 24) = v17;
  *(v11 + 40) = v15;
  sub_2146D8658();
  v18 = v28;
  v14(v28, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v21 = swift_allocObject();
  sub_214409474(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_214409FC8;
  *(v19 + 24) = v21;
  *(v11 + 48) = v19;
  v22 = sub_2142E0070(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 16) = sub_214032610;
  *(v23 + 24) = v24;
  v25 = inited;
  *(inited + 32) = v23;
  return sub_214042A28(v25, v32);
}

uint64_t sub_2144074D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214407528(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214407590@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144075E8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214407650()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2144076D0()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

__n128 sub_214407750(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void *sub_2144077D0(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void sub_214407854(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214407998(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*sub_214407A70(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

void sub_214407B10(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214407C54(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21407493C;
  }

  return result;
}

void (*sub_214407D2C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214074D48;
}

uint64_t sub_214407DCC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v81 = a1;
  v83 = a3;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v77 = *(DoesNotContainCharacterSetValidator - 8);
  v87 = *(v77 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v86 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContainsCharacterSetValidator(0);
  v72 = *(v5 - 8);
  v84 = *(v72 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2146D86D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for BusinessMessage(0);
  v62[0] = *(v79 - 8);
  v12 = MEMORY[0x28223BE20](v79);
  v78 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v85 = v62 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v76 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v15 = swift_initStackObject();
  v75 = xmmword_2146ED4B0;
  *(v15 + 16) = xmmword_2146ED4B0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = 100;
  *(v17 + 16) = sub_214084D54;
  *(v17 + 24) = v18;
  *(v15 + 32) = v17;
  sub_2146D8668();
  v63 = *(v9 + 32);
  v66 = v7;
  v65 = v8;
  v63(v7, v11, v8);
  v19 = swift_allocObject();
  v72 = *(v72 + 80);
  v20 = (v72 + 16) & ~v72;
  v70 = v20;
  v21 = swift_allocObject();
  v71 = type metadata accessor for ContainsCharacterSetValidator;
  sub_214409474(v7, v21 + v20, type metadata accessor for ContainsCharacterSetValidator);
  *(v19 + 16) = sub_2144093E8;
  *(v19 + 24) = v21;
  *(v15 + 40) = v19;
  v64 = v11;
  sub_2146D8658();
  v22 = v86;
  v23 = v63;
  v63(v86, v11, v8);
  v24 = swift_allocObject();
  v77 = *(v77 + 80);
  v25 = (v77 + 16) & ~v77;
  v68 = v25;
  v26 = swift_allocObject();
  v69 = type metadata accessor for DoesNotContainCharacterSetValidator;
  sub_214409474(v22, v26 + v25, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v24 + 16) = sub_2144094DC;
  *(v24 + 24) = v26;
  *(v15 + 48) = v24;
  v27 = sub_2142E0070(v15);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v28 + 16) = sub_21403254C;
  *(v28 + 24) = v29;
  v30 = inited;
  *(inited + 32) = v28;
  sub_214042A28(v30, v85);
  inited = swift_initStackObject();
  *(inited + 16) = v76;
  v31 = swift_initStackObject();
  *(v31 + 16) = v75;
  v62[1] = v16;
  v32 = swift_allocObject();
  v33 = swift_allocObject();
  *(v33 + 16) = 3;
  *(v32 + 16) = sub_214409FBC;
  *(v32 + 24) = v33;
  *(v31 + 32) = v32;
  v34 = v64;
  sub_2146D8668();
  v35 = v66;
  v36 = v65;
  v23(v66, v34, v65);
  v37 = swift_allocObject();
  v38 = v70;
  v39 = swift_allocObject();
  sub_214409474(v35, v39 + v38, v71);
  *(v37 + 16) = sub_214409FC4;
  *(v37 + 24) = v39;
  v40 = v85;
  *(v31 + 40) = v37;
  sub_2146D8658();
  v41 = v86;
  v42 = v34;
  v43 = v80;
  v23(v86, v42, v36);
  v44 = swift_allocObject();
  v45 = v68;
  v46 = swift_allocObject();
  v47 = v79;
  sub_214409474(v41, v46 + v45, v69);
  *(v44 + 16) = sub_214409FC8;
  *(v44 + 24) = v46;
  v48 = v78;
  *(v31 + 48) = v44;
  v49 = v31;
  v50 = v81;
  v51 = sub_2142E0070(v49);
  v52 = swift_allocObject();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v52 + 16) = sub_214032610;
  *(v52 + 24) = v53;
  v54 = inited;
  *(inited + 32) = v52;
  sub_214042A28(v54, v40 + 40);
  v55 = *(v47 + 24);
  v56 = type metadata accessor for BusinessMessage.RootObject(0);
  (*(*(v56 - 8) + 56))(v40 + v55, 1, 1, v56);
  sub_2146D85C8();
  swift_allocObject();
  sub_2146D85B8();
  sub_2146D8588();
  sub_214409634(&qword_27C912E38, type metadata accessor for BusinessMessage, byte_21477D5E8);
  v57 = v82;
  sub_2146D8598();
  if (v57)
  {
    v58 = v83;
    v89 = v57;
    v59 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    if ((swift_dynamicCast() & 1) == 0 || v88 != 4)
    {
      swift_willThrow();

      sub_213FB54FC(v50, v43);
      return sub_21440967C(v40, type metadata accessor for BusinessMessage);
    }

    sub_21440967C(v40, type metadata accessor for BusinessMessage);

    sub_213FB54FC(v50, v43);
    v60 = 1;
  }

  else
  {
    sub_21440967C(v40, type metadata accessor for BusinessMessage);

    sub_213FB54FC(v50, v43);
    sub_214409474(v48, v40, type metadata accessor for BusinessMessage);
    v58 = v83;
    sub_214409474(v40, v83, type metadata accessor for BusinessMessage);
    v60 = 0;
  }

  return (*(v62[0] + 56))(v58, v60, 1, v47);
}

void sub_214408844(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_2144088D0(uint64_t a1)
{
  v2 = sub_214409528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21440890C(uint64_t a1)
{
  v2 = sub_214409528();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_214408954(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_2144089D4(uint64_t a1)
{
  v2 = sub_2144095E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214408A10(uint64_t a1)
{
  v2 = sub_2144095E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214408A4C(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912E40, &qword_21473BDB0);
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - v3;
  v5 = type metadata accessor for BusinessMessage.RootObject(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912E48, &qword_21473BDB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214409528();
  sub_2146DAA28();
  sub_21440957C(v14, v7);
  sub_2144095E0();
  sub_2146DA288();
  type metadata accessor for BIAPayload(0);
  sub_214409634(&qword_27C912E60, type metadata accessor for BIAPayload, protocol conformance descriptor for BIAPayload);
  v12 = v15;
  sub_2146DA388();
  sub_21440967C(v7, type metadata accessor for BIAPayload);
  (*(v2 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_214408CFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for BusinessMessage.RootObject(0);
  MEMORY[0x28223BE20](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912E68, &qword_21473BDC0);
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912E70, &qword_21473BDC8);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214409528();
  v11 = v30;
  sub_2146DAA08();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_2146DA238();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if ((sub_21439DF74() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = sub_2146D9F58();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v20 = v22;
    sub_2146DA0E8();
    sub_2146D9F28();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_2144095E0();
  sub_2146DA0B8();
  type metadata accessor for BIAPayload(0);
  sub_214409634(&qword_27C912E78, type metadata accessor for BIAPayload, protocol conformance descriptor for BIAPayload);
  v22 = v10;
  sub_2146DA1C8();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_214409474(v4, v12, type metadata accessor for BusinessMessage.RootObject);
  v17 = v30;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_214409170@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_214409208(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_2144092F0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

BOOL sub_21440937C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_214069AD8();
  sub_2146D9DC8();
  return (v3 & 1) == 0;
}

uint64_t sub_214409414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_214069AD8();
  sub_2146D9DC8();
  return v3 & 1;
}

uint64_t sub_214409474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_214409528()
{
  result = qword_27C912E50;
  if (!qword_27C912E50)
  {
    result = swift_getWitnessTable(byte_21473C434, &type metadata for BusinessMessage.RootObject.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912E50);
  }

  return result;
}

uint64_t sub_21440957C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BusinessMessage.RootObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2144095E0()
{
  result = qword_27C912E58;
  if (!qword_27C912E58)
  {
    result = swift_getWitnessTable(aE_79, &type metadata for BusinessMessage.RootObject.NotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912E58);
  }

  return result;
}

uint64_t sub_214409634(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21440967C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2144096DC(uint64_t a1)
{
  *(a1 + 8) = sub_214409634(&qword_27C90CFE0, type metadata accessor for BusinessMessage, byte_2146FAF40);
  result = sub_214409634(&qword_27C90CFC0, type metadata accessor for BusinessMessage, aQ_11);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214409760(uint64_t a1)
{
  *(a1 + 8) = sub_214409634(&qword_27C907DB0, type metadata accessor for BusinessMessage.RootObject, byte_21473BE70);
  result = sub_214409634(&qword_27C907DC8, type metadata accessor for BusinessMessage.RootObject, aAM);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144097E4(uint64_t a1)
{
  *(a1 + 8) = sub_2142F7ED0();
  result = sub_2142F8134();
  *(a1 + 16) = result;
  return result;
}

void sub_21440983C(uint64_t a1)
{
  sub_214084AA4(319);
  if (v1 <= 0x3F)
  {
    sub_2144098C0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2144098C0(uint64_t a1)
{
  if (!qword_280B2F678)
  {
    type metadata accessor for BusinessMessage.RootObject(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_280B2F678);
    }
  }
}

uint64_t sub_214409918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BIAPayload(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_213FC3580);
}

uint64_t sub_214409970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BIAPayload(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_213FC363C);
}

uint64_t sub_2144099D8(uint64_t a1)
{
  result = type metadata accessor for BIAPayload(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_214409A84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 440))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_214409AD4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 440) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      return result;
    }

    *(a1 + 440) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214409BEC()
{
  result = qword_27C912E80;
  if (!qword_27C912E80)
  {
    result = swift_getWitnessTable(byte_21473C20C, &type metadata for BusinessMessageCodingError, v0, v1);
    atomic_store(result, &qword_27C912E80);
  }

  return result;
}

unint64_t sub_214409C44()
{
  result = qword_27C912E88;
  if (!qword_27C912E88)
  {
    result = swift_getWitnessTable(byte_21473C2C4, &type metadata for BusinessMessage.RootObject.NotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912E88);
  }

  return result;
}

unint64_t sub_214409C9C()
{
  result = qword_27C912E90;
  if (!qword_27C912E90)
  {
    result = swift_getWitnessTable(aMM_2, &type metadata for BusinessMessage.RootObject.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912E90);
  }

  return result;
}

unint64_t sub_214409CF4()
{
  result = qword_27C912E98;
  if (!qword_27C912E98)
  {
    result = swift_getWitnessTable(aM_107, &type metadata for BusinessMessage.RootObject.NotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912E98);
  }

  return result;
}

unint64_t sub_214409D4C()
{
  result = qword_27C912EA0;
  if (!qword_27C912EA0)
  {
    result = swift_getWitnessTable(asc_21473C25C, &type metadata for BusinessMessage.RootObject.NotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912EA0);
  }

  return result;
}

unint64_t sub_214409DA4()
{
  result = qword_27C912EA8;
  if (!qword_27C912EA8)
  {
    result = swift_getWitnessTable(byte_21473C2EC, &type metadata for BusinessMessage.RootObject.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912EA8);
  }

  return result;
}

unint64_t sub_214409DFC()
{
  result = qword_27C912EB0;
  if (!qword_27C912EB0)
  {
    result = swift_getWitnessTable(byte_21473C314, &type metadata for BusinessMessage.RootObject.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912EB0);
  }

  return result;
}

uint64_t objectdestroy_4Tm(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2146D86D8();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_214409F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

unint64_t sub_214409FCC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v31 = *(DoesNotContainCharacterSetValidator - 8);
  v30 = *(v31 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 1000;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(v11 + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(v11 + 40) = v15;
  sub_2146D8658();
  v18 = v28;
  v14(v28, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(v11 + 48) = v19;
  v22 = sub_2142E0070(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 16) = sub_214032610;
  *(v23 + 24) = v24;
  v25 = inited;
  *(inited + 32) = v23;
  return sub_214042A28(v25, v32);
}

unint64_t sub_21440A3C0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v31 = *(DoesNotContainCharacterSetValidator - 8);
  v30 = *(v31 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 512;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(v11 + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(v11 + 40) = v15;
  sub_2146D8658();
  v18 = v28;
  v14(v28, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(v11 + 48) = v19;
  v22 = sub_2142E0070(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 16) = sub_214032610;
  *(v23 + 24) = v24;
  v25 = inited;
  *(inited + 32) = v23;
  return sub_214042A28(v25, v32);
}

unint64_t sub_21440A7B4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v31 = *(DoesNotContainCharacterSetValidator - 8);
  v30 = *(v31 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 512;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(v11 + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(v11 + 40) = v15;
  sub_2146D8658();
  v18 = v28;
  v14(v28, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(v11 + 48) = v19;
  v22 = sub_2142E0070(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 16) = sub_214032610;
  *(v23 + 24) = v24;
  v25 = inited;
  *(inited + 32) = v23;
  return sub_214042A28(v25, v32);
}

unint64_t sub_21440ABA8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v31 = *(DoesNotContainCharacterSetValidator - 8);
  v30 = *(v31 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 100;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(v11 + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(v11 + 40) = v15;
  sub_2146D8658();
  v18 = v28;
  v14(v28, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(v11 + 48) = v19;
  v22 = sub_2142E0070(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 16) = sub_21403254C;
  *(v23 + 24) = v24;
  v25 = inited;
  *(inited + 32) = v23;
  return sub_214042A28(v25, v32);
}

uint64_t BIAPayload.$referenceId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 BIAPayload.$referenceId.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t BIAPayload.$title.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 928);
  v3 = *(v1 + 936);
  v4 = *(v1 + 944);
  v5 = *(v1 + 952);
  *a1 = *(v1 + 920);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 BIAPayload.$title.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 936);
  v7 = *(v1 + 944);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 920) = *a1;
  *(v1 + 936) = v3;
  *(v1 + 944) = v4;
  *(v1 + 952) = v5;
  return result;
}

uint64_t BIAPayload.$subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 968);
  v3 = *(v1 + 976);
  v4 = *(v1 + 984);
  v5 = *(v1 + 992);
  *a1 = *(v1 + 960);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 BIAPayload.$subtitle.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[61].n128_i64[0];
  v7 = v1[61].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[60] = *a1;
  v1[61].n128_u64[0] = v3;
  v1[61].n128_u64[1] = v4;
  v1[62].n128_u8[0] = v5;
  return result;
}

uint64_t BIAPayload.$id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BIAPayload(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 BIAPayload.$id.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BIAPayload(0) + 40));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t BIAPayload.referenceId.getter()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t BIAPayload.title.getter()
{
  if (*(v0 + 944) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 936);

    return v1;
  }

  return result;
}

uint64_t BIAPayload.subtitle.getter()
{
  if (*(v0 + 984) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 976);

    return v1;
  }

  return result;
}

uint64_t BIAPayload.id.getter()
{
  v1 = v0 + *(type metadata accessor for BIAPayload(0) + 40);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_21440B570@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v6 + 28), v5, &unk_27C9131A0, &unk_2146E9D10);
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_213FB2DF4(v5, &unk_27C9131A0, &unk_2146E9D10);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_21440B6F8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v26 = *(DoesNotContainCharacterSetValidator - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 100;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(inited + 40) = v15;
  sub_2146D8658();
  v18 = v24;
  v14(v24, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(inited + 48) = v19;
  return sub_214042B80(inited, v27);
}

unint64_t sub_21440BA6C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v26 = *(DoesNotContainCharacterSetValidator - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 512;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(inited + 40) = v15;
  sub_2146D8658();
  v18 = v24;
  v14(v24, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(inited + 48) = v19;
  return sub_214042B80(inited, v27);
}

unint64_t sub_21440BDE0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v26 = *(DoesNotContainCharacterSetValidator - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 512;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(inited + 40) = v15;
  sub_2146D8658();
  v18 = v24;
  v14(v24, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(inited + 48) = v19;
  return sub_214042B80(inited, v27);
}

uint64_t sub_21440C154@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440C1A0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21440C1FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440C248(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21440C2A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440C2F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21440C34C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21440C3C8()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21440C444()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21440C4C0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v26 = *(DoesNotContainCharacterSetValidator - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 512;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(inited + 40) = v15;
  sub_2146D8658();
  v18 = v24;
  v14(v24, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(inited + 48) = v19;
  return sub_214042B80(inited, v27);
}

unint64_t sub_21440C834@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v26 = *(DoesNotContainCharacterSetValidator - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 512;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(inited + 40) = v15;
  sub_2146D8658();
  v18 = v24;
  v14(v24, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(inited + 48) = v19;
  return sub_214042B80(inited, v27);
}

uint64_t sub_21440CBA8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440CBF4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_21440CC50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440CC9C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21440CCF8()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21440CD74()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21440CDF0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v26 = *(DoesNotContainCharacterSetValidator - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 100;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(inited + 40) = v15;
  sub_2146D8658();
  v18 = v24;
  v14(v24, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(inited + 48) = v19;
  return sub_214042B80(inited, v27);
}

unint64_t sub_21440D164@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v26 = *(DoesNotContainCharacterSetValidator - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 50;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(inited + 40) = v15;
  sub_2146D8658();
  v18 = v24;
  v14(v24, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(inited + 48) = v19;
  return sub_214042B80(inited, v27);
}

uint64_t sub_21440D4E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440D52C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21440D58C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21440D608@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v26 = *(DoesNotContainCharacterSetValidator - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 100;
  *(v12 + 16) = sub_214409FBC;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144158B0;
  *(v15 + 24) = v17;
  *(inited + 40) = v15;
  sub_2146D8658();
  v18 = v24;
  v14(v24, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144158B4;
  *(v19 + 24) = v21;
  *(inited + 48) = v19;
  return sub_214042B80(inited, v27);
}

unint64_t sub_21440D97C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  DoesNotContainCharacterSetValidator = type metadata accessor for DoesNotContainCharacterSetValidator(0);
  v26 = *(DoesNotContainCharacterSetValidator - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](DoesNotContainCharacterSetValidator - 8);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainsCharacterSetValidator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D86D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 100;
  *(v12 + 16) = sub_214084D54;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_2146D8668();
  v14 = *(v8 + 32);
  v14(v6, v10, v7);
  v15 = swift_allocObject();
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_214415660(v6, v17 + v16, type metadata accessor for ContainsCharacterSetValidator);
  *(v15 + 16) = sub_2144156C8;
  *(v15 + 24) = v17;
  *(inited + 40) = v15;
  sub_2146D8658();
  v18 = v24;
  v14(v24, v10, v7);
  v19 = swift_allocObject();
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_214415660(v18, v21 + v20, type metadata accessor for DoesNotContainCharacterSetValidator);
  *(v19 + 16) = sub_2144156F4;
  *(v19 + 24) = v21;
  *(inited + 48) = v19;
  return sub_214042B80(inited, v27);
}

uint64_t sub_21440DCF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21440DD3C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21440DD98()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void BIAPayload.referenceId.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*BIAPayload.referenceId.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*BIAPayload.$referenceId.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t sub_21440E1C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 944);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 936);
    a2[1] = v4;
  }

  return result;
}

double sub_21440E23C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void BIAPayload.title.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 920);
  v8 = *(v2 + 952);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 936), *(v2 + 944));

    *(v2 + 936) = a1;
    *(v2 + 944) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*BIAPayload.title.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 936);
  *(v3 + 24) = v5;
  v6 = *(v1 + 944);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21440E514;
  }

  return result;
}

void sub_21440E514(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 920);
    v13 = *(v3 + 952);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 936) = v5;
      *(v9 + 944) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 920);
  v13 = *(v3 + 952);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 936) = v5;
  *(v7 + 944) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_21440E6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 928);
  v3 = *(a1 + 936);
  v4 = *(a1 + 944);
  v5 = *(a1 + 952);
  *a2 = *(a1 + 920);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21440E750(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 936);
  v9 = *(a2 + 944);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 920) = v4;
  *(a2 + 928) = v3;
  *(a2 + 936) = v5;
  *(a2 + 944) = v6;
  *(a2 + 952) = v7;
  return result;
}

void (*BIAPayload.$title.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 928);
  v6 = *(v1 + 936);
  v7 = *(v1 + 944);
  v8 = *(v1 + 952);
  *v4 = *(v1 + 920);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21440E88C;
}

void sub_21440E88C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 936);
  v10 = *(v3 + 944);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 920) = v5;
    *(v3 + 928) = v4;
    *(v3 + 936) = v7;
    *(v3 + 944) = v6;
    *(v3 + 952) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 920) = v5;
    *(v3 + 928) = v4;
    *(v3 + 936) = v7;
    *(v3 + 944) = v6;
    *(v3 + 952) = v8;
  }

  free(v2);
}

uint64_t sub_21440E980@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 984);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 976);
    a2[1] = v4;
  }

  return result;
}

double sub_21440E9F4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void BIAPayload.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 960);
  v8 = *(v2 + 992);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 976), *(v2 + 984));

    *(v2 + 976) = a1;
    *(v2 + 984) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*BIAPayload.subtitle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 976);
  *(v3 + 24) = v5;
  v6 = *(v1 + 984);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21440ECCC;
  }

  return result;
}

void sub_21440ECCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 960);
    v13 = *(v3 + 992);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 976) = v5;
      *(v9 + 984) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 960);
  v13 = *(v3 + 992);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 976) = v5;
  *(v7 + 984) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_21440EEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 968);
  v3 = *(a1 + 976);
  v4 = *(a1 + 984);
  v5 = *(a1 + 992);
  *a2 = *(a1 + 960);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21440EF08(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 976);
  v9 = *(a2 + 984);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 960) = v4;
  *(a2 + 968) = v3;
  *(a2 + 976) = v5;
  *(a2 + 984) = v6;
  *(a2 + 992) = v7;
  return result;
}

void (*BIAPayload.$subtitle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 968);
  v6 = *(v1 + 976);
  v7 = *(v1 + 984);
  v8 = *(v1 + 992);
  *v4 = *(v1 + 960);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21440F044;
}

void sub_21440F044(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 976);
  v10 = *(v3 + 984);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 960) = v5;
    *(v3 + 968) = v4;
    *(v3 + 976) = v7;
    *(v3 + 984) = v6;
    *(v3 + 992) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 960) = v5;
    *(v3 + 968) = v4;
    *(v3 + 976) = v7;
    *(v3 + 984) = v6;
    *(v3 + 992) = v8;
  }

  free(v2);
}

uint64_t sub_21440F138@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BIAPayload(0) + 40);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

double sub_21440F1D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for BIAPayload(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void BIAPayload.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BIAPayload(0) + 40);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*BIAPayload.id.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for BIAPayload(0) + 40);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_21440F4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BIAPayload(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21440F548(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BIAPayload(0) + 40);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*BIAPayload.$id.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for BIAPayload(0) + 40);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t BIAPayload.displayContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BIAPayload(0) + 44);
  v4 = *(v3 + 32);
  v6 = *(v3 + 64);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 80);
  v7 = v15;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v9;
  return sub_213FB2E54(v12, v11, &qword_27C907C40, &qword_2146F4D78);
}

__n128 BIAPayload.displayContent.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BIAPayload(0) + 44);
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  sub_213FB2DF4(v9, &qword_27C907C40, &qword_2146F4D78);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

uint64_t sub_21440F7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(a1 + *(v7 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_213FB2DF4(v6, &unk_27C9131A0, &unk_2146E9D10);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21440F980(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  sub_21402F904(v6);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_21440FAB0(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  sub_21402F904(v5);
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21440FB9C(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_2146D8958();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v15 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &unk_27C9131A0, &unk_2146E9D10);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_21440FDC8;
  }

  return result;
}

void sub_21440FDC8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    sub_21402F904(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v7 = v2[1];
    sub_21402F904(*(*a1 + 40));
  }

  free(v4);
  free(v3);
  free(v7);

  free(v2);
}

void (*sub_21440FE8C(uint64_t *a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_213FB2E54(v1, v4, &unk_27C9131D0, &qword_2146EAA70);
  return sub_21440FF3C;
}

void sub_21440FF3C(uint64_t *a1)
{
  v1 = a1[1];
  sub_21402EDB8(v1, *a1, &unk_27C9131D0, &qword_2146EAA70);

  free(v1);
}

uint64_t sub_21440FFA0()
{
  if (*v0)
  {
    return 28526;
  }

  else
  {
    return 7562617;
  }
}

void sub_21440FFC8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7562617 && a2 == 0xE300000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 28526 && a2 == 0xE200000000000000)
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
}

uint64_t sub_21441009C(uint64_t a1)
{
  v2 = sub_2144104B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144100D8(uint64_t a1)
{
  v2 = sub_2144104B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214410114(uint64_t a1)
{
  v2 = sub_214410508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214410150(uint64_t a1)
{
  v2 = sub_214410508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21441018C(uint64_t a1)
{
  v2 = sub_21441055C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144101C8(uint64_t a1)
{
  v2 = sub_21441055C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214410204(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EB8, &qword_21473C490);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EC0, &qword_21473C498);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EC8, &qword_21473C4A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144104B4();
  sub_2146DAA28();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_214410508();
    v14 = v18;
    sub_2146DA288();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_21441055C();
    sub_2146DA288();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_2144104B4()
{
  result = qword_27C912ED0;
  if (!qword_27C912ED0)
  {
    result = swift_getWitnessTable(byte_21473CF58, &type metadata for BIADeterminateResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912ED0);
  }

  return result;
}

unint64_t sub_214410508()
{
  result = qword_27C912ED8;
  if (!qword_27C912ED8)
  {
    result = swift_getWitnessTable(asc_21473CF08, &type metadata for BIADeterminateResponseType.NoCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912ED8);
  }

  return result;
}

unint64_t sub_21441055C()
{
  result = qword_27C912EE0;
  if (!qword_27C912EE0)
  {
    result = swift_getWitnessTable(aQ_12, &type metadata for BIADeterminateResponseType.YesCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912EE0);
  }

  return result;
}

uint64_t sub_2144105DC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_214410624@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EE8, &qword_21473C4A8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EF0, &qword_21473C4B0);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EF8, &unk_21473C4B8);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144104B4();
  v12 = v31;
  sub_2146DAA08();
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
    v16 = sub_2146DA238();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_21439DF70();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_2146D9F58();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v22 = &type metadata for BIADeterminateResponseType;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
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
        sub_214410508();
        sub_2146DA0B8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_21441055C();
        sub_2146DA0B8();
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

void sub_214410B10(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214410C58(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214410CF4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_214410D98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    *a2 = *(a1 + 56);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_214410E08(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214410EB8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_214411000(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144158A0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_21441109C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v6;
  *(a2 + 64) = v5;
  *(a2 + 72) = v7;
}

uint64_t (*sub_214411114(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144158A4;
}

uint64_t sub_2144111AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    *a2 = *(a1 + 96);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_21441121C(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144112CC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 80);
  v8 = *(v2 + 112);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214411414(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_2144114B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2144114B0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 80);
    v10 = *(v3 + 112);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 96) = v4;
      *(v3 + 104) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 80);
  v10 = *(v3 + 112);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 96) = v4;
  *(v3 + 104) = v2;
}

void sub_2144116D0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v6;
  *(a2 + 104) = v5;
  *(a2 + 112) = v7;
}

void (*sub_214411748(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144117E0;
}

void sub_2144117E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
  }

  else
  {

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
  }

  free(v2);
}

void sub_2144118BC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_214411A04(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214411AA0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

void sub_214411B38(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 48);
  v8 = *(v2 + 80);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_214411C80(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 64);
    a1[1] = v3;

    return sub_21406A7D8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214411D1C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406ABB0;
}

void (*sub_214411DB8(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214411E54(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_214411EEC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_214412034(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2144120D4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 40);
    v10 = *(v3 + 72);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 56) = v4;
      *(v3 + 64) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 40);
  v10 = *(v3 + 72);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 56) = v4;
  *(v3 + 64) = v2;
}

uint64_t (*sub_2144122F4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21441238C;
}

void sub_214412390(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
  }

  else
  {

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
  }

  free(v2);
}

void sub_2144124B8(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_214412514()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x7463757274736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_21441257C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261646E6F636573;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 0x7463757274736564;
    v8 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D697270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214412698()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214412748(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2144127E4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_21441289C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x7261646E6F636573;
  if (v2 != 1)
  {
    v5 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_2144129B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t))
{
  a5(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void (*sub_214412A6C(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214412B08(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_214412C64(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BIABinaryChoiceButton(0) + 24);

  return sub_214412CA8(a1, v3);
}

uint64_t sub_214412CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BIAUserAction(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_214412D54(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214412E9C(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214412F38(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

void sub_214412FE4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_214413068(uint64_t a1)
{
  v2 = sub_214413258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144130A4(uint64_t a1)
{
  v2 = sub_214413258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144130E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F00, &qword_21473C4C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214413258();
  sub_2146DAA28();
  type metadata accessor for BIAUserAction(0);
  sub_214413540(&qword_27C907D08, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
  sub_2146DA308();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_214413258()
{
  result = qword_27C912F08;
  if (!qword_27C912F08)
  {
    result = swift_getWitnessTable(byte_21473CE68, &type metadata for BIASingleAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912F08);
  }

  return result;
}

uint64_t sub_2144132AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F10, &qword_21473C4D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F18, &qword_21473C4D8);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for BIASingleAction(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214413258();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v16;
    type metadata accessor for BIAUserAction(0);
    sub_214413540(&qword_27C907CF8, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
    sub_2146DA148();
    (*(v17 + 8))(v9, v7);
    sub_21408AC04(v6, v12, &qword_27C912F10, &qword_21473C4D0);
    sub_214415660(v12, v13, type metadata accessor for BIASingleAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214413540(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2144135A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F00, &qword_21473C4C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214413258();
  sub_2146DAA28();
  type metadata accessor for BIAUserAction(0);
  sub_214413540(&qword_27C907D08, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
  sub_2146DA308();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_214413718()
{
  if (*v0)
  {
    return 0x326E6F6974706FLL;
  }

  else
  {
    return 0x316E6F6974706FLL;
  }
}

void sub_21441374C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x316E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x326E6F6974706FLL && a2 == 0xE700000000000000)
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
}

uint64_t sub_214413828(uint64_t a1)
{
  v2 = sub_214413A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214413864(uint64_t a1)
{
  v2 = sub_214413A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144138A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F20, &unk_21473C4E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214413A64();
  sub_2146DAA28();
  v8[15] = 0;
  type metadata accessor for BIABinaryChoiceButton(0);
  sub_214413540(&qword_27C90CC40, type metadata accessor for BIABinaryChoiceButton, byte_2146FAEC8);
  sub_2146DA308();
  if (!v1)
  {
    type metadata accessor for BIABinaryChoice(0);
    v8[14] = 1;
    sub_2146DA308();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_214413A64()
{
  result = qword_27C912F28;
  if (!qword_27C912F28)
  {
    result = swift_getWitnessTable(byte_21473CE18, &type metadata for BIABinaryChoice.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912F28);
  }

  return result;
}

uint64_t sub_214413AD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = &v20 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F38, &qword_21473C4F0);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v20 - v9;
  v11 = type metadata accessor for BIABinaryChoice(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214413A64();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v11;
  v22 = v13;
  v14 = v25;
  v23 = v7;
  type metadata accessor for BIABinaryChoiceButton(0);
  v29 = 0;
  sub_214413540(&qword_27C90CC58, type metadata accessor for BIABinaryChoiceButton, aI_15);
  v15 = v26;
  v16 = v27;
  sub_2146DA148();
  v17 = v22;
  sub_21408AC04(v15, v22, &qword_27C912F30, &unk_21477C740);
  v28 = 1;
  v18 = v23;
  sub_2146DA148();
  (*(v14 + 8))(v10, v16);
  sub_21408AC04(v18, v17 + *(v21 + 20), &qword_27C912F30, &unk_21477C740);
  sub_214413E44(v17, v24, type metadata accessor for BIABinaryChoice);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_214413EAC(v17);
}

uint64_t sub_214413E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214413EAC(uint64_t a1)
{
  v2 = type metadata accessor for BIABinaryChoice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214413F08(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C912E78, type metadata accessor for BIAPayload, protocol conformance descriptor for BIAPayload);
  result = sub_214413540(&qword_27C912E60, type metadata accessor for BIAPayload, protocol conformance descriptor for BIAPayload);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214413F8C(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C907C38, type metadata accessor for BIAUserInteractionParadigm, aU_88);
  result = sub_214413540(&qword_27C907C78, type metadata accessor for BIAUserInteractionParadigm, byte_214702D08);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214414030(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C90CCA0, type metadata accessor for BIAURL, byte_2146FAD60);
  result = sub_214413540(&qword_27C90CC80, type metadata accessor for BIAURL, aQ_13);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144140D4(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C907CF8, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
  result = sub_214413540(&qword_27C907D08, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214414188()
{
  result = qword_27C912F40;
  if (!qword_27C912F40)
  {
    result = swift_getWitnessTable(aEM_8, &type metadata for BIADeterminateResponseType, v0, v1);
    atomic_store(result, &qword_27C912F40);
  }

  return result;
}

uint64_t sub_214414260(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C907D68, type metadata accessor for BIALabeledUserAction, byte_2146FAE50);
  result = sub_214413540(&qword_27C907D88, type metadata accessor for BIALabeledUserAction, aA_13);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144142E8()
{
  result = qword_27C912F48;
  if (!qword_27C912F48)
  {
    result = swift_getWitnessTable(byte_21473C6AC, &type metadata for BIABinaryChoiceRole, v0, v1);
    atomic_store(result, &qword_27C912F48);
  }

  return result;
}

uint64_t sub_214414368(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C90CC58, type metadata accessor for BIABinaryChoiceButton, aI_15);
  result = sub_214413540(&qword_27C90CC40, type metadata accessor for BIABinaryChoiceButton, byte_2146FAEC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214414418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214414454()
{
  result = qword_27C912F50;
  if (!qword_27C912F50)
  {
    result = swift_getWitnessTable(byte_2146FAEF0, &type metadata for BIAUserOptions, v0, v1);
    atomic_store(result, &qword_27C912F50);
  }

  return result;
}

unint64_t sub_2144144A8()
{
  result = qword_27C912F58;
  if (!qword_27C912F58)
  {
    result = swift_getWitnessTable(byte_2146FAF18, &type metadata for BIAUserOptions, v0, v1);
    atomic_store(result, &qword_27C912F58);
  }

  return result;
}

void sub_214414554(uint64_t a1)
{
  sub_214084AA4(319);
  if (v1 <= 0x3F)
  {
    sub_214414C30(319, qword_280B2F1A0, &type metadata for BusinessMessageImage, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_214414868(319, qword_280B2EA18, type metadata accessor for BIAUserInteractionParadigm, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_214414C30(319, &qword_280B2EF08, &type metadata for BIAReplyDisplayContent, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214414688(uint64_t a1)
{
  sub_21441495C(319, &qword_280B2FA50, type metadata accessor for BIAUserAction);
  if (v1 <= 0x3F)
  {
    sub_21441472C(319);
    if (v2 <= 0x3F)
    {
      sub_2144147A4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_21441472C(uint64_t a1)
{
  if (!qword_280B2E488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C907D60, &qword_2146F4DF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B2E488);
    }
  }
}

void sub_2144147A4(uint64_t a1)
{
  if (!qword_280B2F150)
  {
    type metadata accessor for BIABinaryChoiceButton(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B2F150);
    }
  }
}

void sub_214414868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2144148CC(uint64_t a1)
{
  sub_21441495C(319, &qword_280B2E720, type metadata accessor for BIAURL);
  if (v1 <= 0x3F)
  {
    sub_2144149A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21441495C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_2144149A8()
{
  result = qword_280B2EF10[0];
  if (!qword_280B2EF10[0])
  {
    result = &type metadata for BIADeterminateResponse;
    atomic_store(&type metadata for BIADeterminateResponse, qword_280B2EF10);
  }

  return result;
}

uint64_t sub_2144149F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_214414A40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214414AB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214414AF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_214414B88(uint64_t a1)
{
  sub_214414C30(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BIAUserAction(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214414C30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_122Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BIAUserAction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_123Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BIAUserAction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_214414E08(uint64_t a1)
{
  sub_214414C30(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BIAUserAction(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_84Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_85Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_214415008(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_214414868(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2144150A8(uint64_t a1)
{
  sub_214414868(319, &qword_27C912F88, type metadata accessor for BIABinaryChoiceButton, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_214415198()
{
  result = qword_27C912F90;
  if (!qword_27C912F90)
  {
    result = swift_getWitnessTable(aIM, &type metadata for BIADeterminateResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912F90);
  }

  return result;
}

unint64_t sub_2144151F0()
{
  result = qword_27C912F98;
  if (!qword_27C912F98)
  {
    result = swift_getWitnessTable(byte_21473CD38, &type metadata for BIASingleAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912F98);
  }

  return result;
}

unint64_t sub_214415248()
{
  result = qword_27C912FA0;
  if (!qword_27C912FA0)
  {
    result = swift_getWitnessTable(byte_21473CDF0, &type metadata for BIABinaryChoice.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912FA0);
  }

  return result;
}

unint64_t sub_2144152A0()
{
  result = qword_27C912FA8;
  if (!qword_27C912FA8)
  {
    result = swift_getWitnessTable(aA_14, &type metadata for BIABinaryChoice.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912FA8);
  }

  return result;
}

unint64_t sub_2144152F8()
{
  result = qword_27C912FB0;
  if (!qword_27C912FB0)
  {
    result = swift_getWitnessTable("QޯmLT\a", &type metadata for BIABinaryChoice.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912FB0);
  }

  return result;
}

unint64_t sub_214415350()
{
  result = qword_27C912FB8;
  if (!qword_27C912FB8)
  {
    result = swift_getWitnessTable(byte_21473CCA8, &type metadata for BIASingleAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912FB8);
  }

  return result;
}

unint64_t sub_2144153A8()
{
  result = qword_27C912FC0;
  if (!qword_27C912FC0)
  {
    result = swift_getWitnessTable("\t߯m(U\a", &type metadata for BIASingleAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912FC0);
  }

  return result;
}

unint64_t sub_214415400()
{
  result = qword_27C912FC8;
  if (!qword_27C912FC8)
  {
    result = swift_getWitnessTable(byte_21473CBA0, &type metadata for BIADeterminateResponseType.YesCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912FC8);
  }

  return result;
}

unint64_t sub_214415458()
{
  result = qword_27C912FD0;
  if (!qword_27C912FD0)
  {
    result = swift_getWitnessTable(byte_21473CBC8, &type metadata for BIADeterminateResponseType.YesCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912FD0);
  }

  return result;
}

unint64_t sub_2144154B0()
{
  result = qword_27C912FD8;
  if (!qword_27C912FD8)
  {
    result = swift_getWitnessTable(aQ_14, &type metadata for BIADeterminateResponseType.NoCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912FD8);
  }

  return result;
}

unint64_t sub_214415508()
{
  result = qword_27C912FE0;
  if (!qword_27C912FE0)
  {
    result = swift_getWitnessTable(aA_15, &type metadata for BIADeterminateResponseType.NoCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912FE0);
  }

  return result;
}

unint64_t sub_214415560()
{
  result = qword_27C912FE8;
  if (!qword_27C912FE8)
  {
    result = swift_getWitnessTable(byte_21473CBF0, &type metadata for BIADeterminateResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912FE8);
  }

  return result;
}

unint64_t sub_2144155B8()
{
  result = qword_27C912FF0;
  if (!qword_27C912FF0)
  {
    result = swift_getWitnessTable(byte_21473CC18, &type metadata for BIADeterminateResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912FF0);
  }

  return result;
}

unint64_t sub_21441560C()
{
  result = qword_27C912FF8;
  if (!qword_27C912FF8)
  {
    result = swift_getWitnessTable(byte_21473C714, &type metadata for BIABinaryChoiceRole, v0, v1);
    atomic_store(result, &qword_27C912FF8);
  }

  return result;
}

uint64_t sub_214415660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_182Tm(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2146D86D8();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_2144157F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t sub_2144158B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v33 = *(v0 + 217);
  v34 = *(v0 + 216);
  v35 = *(v0 + 208);
  v36 = *(v0 + 219);
  v11 = *(v0 + 240);
  v12 = *(v0 + 248);
  v37 = v11;
  v38 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68E0;
  *(inited + 32) = 0x6C7255616964656DLL;
  *(inited + 40) = 0xE800000000000000;
  if (v2)
  {
    v14 = MEMORY[0x277D837D0];
    *(inited + 48) = v1;
    *(inited + 56) = v2;
    *(inited + 72) = v14;
    *(inited + 80) = 0xD000000000000010;
    *(inited + 88) = 0x80000002147879B0;
    if (v3)
    {
      *(inited + 96) = v4;
      *(inited + 104) = v3;
      *(inited + 120) = v14;
      strcpy((inited + 128), "mediaFileSize");
      *(inited + 142) = -4864;
      if ((v6 & 1) == 0)
      {
        v15 = MEMORY[0x277D83B88];
        *(inited + 144) = v5;
        *(inited + 168) = v15;
        strcpy((inited + 176), "thumbnailUrl");
        *(inited + 189) = 0;
        *(inited + 190) = -5120;
        if (v7 != 1)
        {
          if (v7)
          {
            v16 = MEMORY[0x277D837D0];
            v17 = v8;
            v18 = v7;
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v16 = 0;
            *(inited + 208) = 0;
          }

          *(inited + 192) = v17;
          *(inited + 200) = v18;
          *(inited + 216) = v16;
          *(inited + 224) = 0xD000000000000014;
          *(inited + 232) = 0x80000002147879E0;
          if (v38 != 1)
          {
            if (v38)
            {
              v19 = MEMORY[0x277D837D0];
              v20 = v10;
              v21 = v38;
            }

            else
            {
              v20 = 0;
              v21 = 0;
              v19 = 0;
              *(inited + 256) = 0;
            }

            *(inited + 240) = v20;
            *(inited + 248) = v21;
            *(inited + 264) = v19;
            *(inited + 272) = 0xD000000000000011;
            *(inited + 280) = 0x8000000214787A00;
            if ((v33 & 1) == 0)
            {
              v22 = MEMORY[0x277D83B88];
              v23 = v35;
              if (v34)
              {
                v23 = 0;
                v24 = 0;
                *(inited + 296) = 0;
                *(inited + 304) = 0;
              }

              else
              {
                v24 = MEMORY[0x277D83B88];
              }

              *(inited + 288) = v23;
              *(inited + 312) = v24;
              *(inited + 320) = 0x746867696568;
              *(inited + 328) = 0xE600000000000000;
              *(inited + 336) = v36 - 1;
              *(inited + 360) = v22;
              *(inited + 368) = 0xD000000000000012;
              *(inited + 376) = 0x8000000214787A20;
              if (!v12)
              {
                v25 = 0;
                v26 = 0;
                v27 = 0;
                *(inited + 400) = 0;
LABEL_20:
                v28 = v12;
                *(inited + 384) = v25;
                *(inited + 392) = v26;
                *(inited + 408) = v27;
                v29 = inited;

                sub_213FDC9D0(v8, v7);
                sub_213FDC9D0(v10, v38);
                sub_213FDC9D0(v37, v28);
                v30 = sub_214045690(v29);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
                swift_arrayDestroy();
                v31 = sub_2140418B8(v30);

                return v31;
              }

              if (v12 != 1)
              {
                v27 = MEMORY[0x277D837D0];
                v25 = v37;
                v26 = v12;
                goto LABEL_20;
              }
            }
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_214415C74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214417778(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_214415CA4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xE600000000000000;
    v9 = 0x746867696568;
    if (v2 != 6)
    {
      v9 = 0xD000000000000012;
      v8 = 0x8000000214787A20;
    }

    v10 = 0x80000002147879E0;
    v11 = 0xD000000000000011;
    if (v2 == 4)
    {
      v11 = 0xD000000000000014;
    }

    else
    {
      v10 = 0x8000000214787A00;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6C7255616964656DLL;
    v5 = 0xED0000657A695365;
    v6 = 0x6C6946616964656DLL;
    if (v2 != 2)
    {
      v6 = 0x69616E626D756874;
      v5 = 0xEC0000006C72556CLL;
    }

    if (*v1)
    {
      v4 = 0xD000000000000010;
      v3 = 0x80000002147879B0;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_214415DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214417778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214415DEC(uint64_t a1)
{
  v2 = sub_2144175FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214415E28(uint64_t a1)
{
  v2 = sub_2144175FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214415E64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913000, &unk_21473CFB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v79 - v7;
  v9 = a1[3];
  v202 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2144175FC();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v6;
    LOBYTE(v131) = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    v130 = v11;
    LOBYTE(v131) = 1;
    v15 = v5;
    v14 = sub_2146DA168();
    v17 = v16;
    v18 = v14;
    LOBYTE(v131) = 2;
    v129 = sub_2146DA1A8();
    LOBYTE(v131) = 3;
    v127 = sub_2146DA0F8();
    v128 = v20;
    LOBYTE(v131) = 4;
    v125 = sub_2146DA0F8();
    v126 = v21;
    LOBYTE(v131) = 5;
    v22 = sub_2146DA128();
    v124 = v23;
    v123 = v22;
    LOBYTE(v131) = 6;
    v122 = sub_2146DA1A8();
    v119 = v18;
    LOBYTE(v131) = 7;
    v79 = sub_2146DA0F8();
    v85 = v15;
    v88 = v24;
    if (v122 < 3)
    {
      v25 = v122 + 1;
    }

    else
    {
      v25 = 0;
    }

    v86 = v25;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    v26 = swift_allocObject();
    v120 = xmmword_2146E9BF0;
    *(v26 + 16) = xmmword_2146E9BF0;
    v122 = sub_214069764(&unk_2826534E0);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v27 = swift_allocObject();
    v28 = swift_allocObject();
    *(v28 + 16) = v122;
    *(v27 + 16) = sub_214059810;
    *(v27 + 24) = v28;
    *(v26 + 32) = v27;
    sub_214042B80(v26, &v131);
    v117 = v131;
    v122 = v132;
    v83 = v133;
    v84 = v134;
    v121 = v135;
    v29 = swift_allocObject();
    *(v29 + 16) = v120;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_214064194;
    *(v30 + 24) = 0;
    *(v29 + 32) = v30;
    sub_214042B80(v29, &v187);
    v114 = v187;
    v116 = v188;
    v109 = v189;
    v118 = v190;
    v115 = v191;
    v31 = swift_allocObject();
    *(v31 + 16) = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
    v32 = swift_allocObject();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2146ED240;
    *(v32 + 16) = sub_214032554;
    *(v32 + 24) = v33;
    *(v31 + 32) = v32;
    sub_21404328C(v31, v184);
    v110 = v184[0];
    v112 = v184[1];
    v103 = v184[2];
    LODWORD(v31) = v185;
    v111 = v186;
    sub_2140637C0(v182);
    v104 = v182[0];
    v106 = v182[2];
    v107 = v182[1];
    v108 = v182[3];
    v105 = v183;
    sub_214063914(v180);
    v98 = v180[2];
    v99 = v180[0];
    v101 = v180[3];
    v102 = v180[1];
    v100 = v181;
    sub_214063A34(v176);
    v95 = v176[0];
    v97 = v176[1];
    v87 = v176[2];
    v89 = v177;
    LODWORD(v32) = v178;
    v96 = v179;
    sub_214063B78(v174);
    v90 = v174[0];
    v93 = v174[1];
    v94 = v174[2];
    v92 = v174[3];
    v91 = v175;
    v193 = v31;
    v192 = v32;
    v80 = v32;
    v81 = v31;
    v199 = v31;
    v194 = v32;
    v187 = v130;
    v188 = v13;
    LOBYTE(v182[0]) = v121;
    v82 = 0xD000000000000019;
    v131 = 0xD000000000000019;
    v132 = 0x800000021478F950;
    v113 = 0x800000021478F950;
    v133 = 0xD00000000000001CLL;
    v134 = 0x800000021478A360;
    *&v120 = 0x800000021478A360;
    v34 = v84;

    if (v117(&v187, v182, &v131))
    {
      v35 = v120;

      v187 = v119;
      v188 = v17;
      LOBYTE(v182[0]) = v115;
      v131 = 0xD000000000000021;
      v132 = 0x800000021478F970;
      v133 = 0xD00000000000001CLL;
      v134 = v35;

      if (v114(&v187, v182, &v131))
      {
        v36 = v120;

        LOBYTE(v182[0]) = v81;
        v187 = v129;
        LOBYTE(v180[0]) = v111;
        v131 = 0xD00000000000001ELL;
        v132 = 0x800000021478F9A0;
        v133 = 0xD00000000000001CLL;
        v134 = v36;

        v37 = v110(&v187, v180, &v131);
        if (v37)
        {
          v50 = v120;

          v199 = 0;
          v187 = v127;
          v188 = v128;
          LOBYTE(v182[0]) = v105;
          v131 = 0xD00000000000001DLL;
          v132 = 0x800000021478F9C0;
          v133 = 0xD00000000000001CLL;
          v134 = v50;

          sub_213FDC9D0(v106, v108);
          if (v104(&v187, v182, &v131))
          {
            v51 = v108;
            sub_213FDC6D0(v106, v108);

            sub_213FDC6D0(v106, v51);
            v187 = v125;
            v188 = v126;
            LOBYTE(v182[0]) = v100;
            v131 = 0xD000000000000025;
            v132 = 0x800000021478F9E0;
            v133 = 0xD00000000000001CLL;
            v134 = v120;

            sub_213FDC9D0(v98, v101);
            if (v99(&v187, v182, &v131))
            {
              v52 = v98;
              sub_213FDC6D0(v98, v101);

              sub_213FDC6D0(v52, v101);
              v187 = v123;
              LOBYTE(v188) = v124 & 1;
              LOBYTE(v182[0]) = v96;
              v131 = 0xD000000000000022;
              v132 = 0x800000021478FA10;
              v133 = 0xD00000000000001CLL;
              v134 = v120;

              v53 = v95(&v187, v182, &v131);
              if (v53)
              {
                v61 = v120;

                v89 = v124 & 1;

                v194 = 0;
                v187 = v79;
                v188 = v88;
                LOBYTE(v182[0]) = v91;
                v131 = 0xD000000000000023;
                v132 = 0x800000021478FA40;
                v133 = 0xD00000000000001CLL;
                v134 = v61;

                sub_213FDC9D0(v94, v92);
                if (v90(&v187, v182, &v131))
                {
                  v62 = v92;
                  sub_213FDC6D0(v94, v92);
                  (*(v10 + 8))(v8, v85);
                  v63 = v93;

                  sub_213FDC6D0(v94, v62);
                  v64 = v122;
                  *a2 = v117;
                  *(a2 + 8) = v64;
                  *(a2 + 16) = v130;
                  *(a2 + 24) = v13;
                  *(a2 + 32) = v121;
                  v65 = v116;
                  *(a2 + 40) = v114;
                  *(a2 + 48) = v65;
                  *(a2 + 33) = v201[0];
                  *(a2 + 36) = *(v201 + 3);
                  LOBYTE(v65) = v199;
                  *(a2 + 56) = v119;
                  *(a2 + 64) = v17;
                  v66 = v194;
                  *(a2 + 72) = v115;
                  v67 = *v200;
                  *(a2 + 76) = *&v200[3];
                  *(a2 + 73) = v67;
                  v68 = v112;
                  *(a2 + 80) = v110;
                  *(a2 + 88) = v68;
                  *(a2 + 96) = v129;
                  *(a2 + 104) = v65;
                  *(a2 + 105) = v111;
                  *(a2 + 106) = v197;
                  *(a2 + 110) = v198;
                  v69 = v107;
                  *(a2 + 112) = v104;
                  *(a2 + 120) = v69;
                  v70 = v128;
                  *(a2 + 128) = v127;
                  *(a2 + 136) = v70;
                  *(a2 + 144) = v105;
                  LODWORD(v70) = *v196;
                  *(a2 + 148) = *&v196[3];
                  *(a2 + 145) = v70;
                  v71 = v102;
                  *(a2 + 152) = v99;
                  *(a2 + 160) = v71;
                  v72 = v126;
                  *(a2 + 168) = v125;
                  *(a2 + 176) = v72;
                  *(a2 + 184) = v100;
                  *(a2 + 188) = *&v195[3];
                  *(a2 + 185) = *v195;
                  v73 = v97;
                  *(a2 + 192) = v95;
                  *(a2 + 200) = v73;
                  *(a2 + 208) = v123;
                  *(a2 + 216) = v89;
                  *(a2 + 217) = v66;
                  *(a2 + 218) = v96;
                  *(a2 + 219) = v86;
                  *(a2 + 224) = v90;
                  *(a2 + 232) = v63;
                  v74 = v88;
                  *(a2 + 240) = v79;
                  *(a2 + 248) = v74;
                  *(a2 + 256) = v91;
                  return __swift_destroy_boxed_opaque_existential_1(v202);
                }

                sub_214031C4C();
                swift_allocError();
                *v77 = 0xD000000000000023;
                v77[1] = 0x800000021478FA40;
                v78 = v120;
                v77[2] = 0xD00000000000001CLL;
                v77[3] = v78;
                swift_willThrow();

                (*(v10 + 8))(v8, v85);

                sub_213FDC6D0(v94, v92);
                v42 = v13;
                v118 = v17;
                v103 = v129;
                v45 = v126;
                v47 = v127;
                v108 = v128;
                v109 = v119;
                v46 = v125;
                v87 = v123;
              }

              else
              {

                sub_214031C4C();
                swift_allocError();
                *v75 = 0xD000000000000022;
                v75[1] = 0x800000021478FA10;
                v76 = v120;
                v75[2] = 0xD00000000000001CLL;
                v75[3] = v76;
                swift_willThrow();
                (*(v10 + 8))(v8, v85);

                v194 = v80;
                v42 = v13;
                v118 = v17;
                v103 = v129;
                v45 = v126;
                v47 = v127;
                v108 = v128;
                v109 = v119;
                v46 = v125;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v59 = 0xD000000000000025;
              v59[1] = 0x800000021478F9E0;
              v60 = v120;
              v59[2] = 0xD00000000000001CLL;
              v59[3] = v60;
              swift_willThrow();

              (*(v10 + 8))(v8, v85);

              v46 = v98;
              v45 = v101;
              sub_213FDC6D0(v98, v101);
              v42 = v13;
              v118 = v17;
              v103 = v129;
              v47 = v127;
              v108 = v128;
              v109 = v119;
            }

            v44 = v130;
            v41 = v117;
            v43 = v122;
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v56 = 0xD00000000000001DLL;
            v56[1] = 0x800000021478F9C0;
            v57 = v120;
            v56[2] = 0xD00000000000001CLL;
            v56[3] = v57;
            swift_willThrow();

            (*(v10 + 8))(v8, v85);

            v58 = v106;
            sub_213FDC6D0(v106, v108);
            v47 = v58;
            v42 = v13;
            v109 = v119;
            v118 = v17;
            v44 = v130;
            v103 = v129;
            v41 = v117;
            v43 = v122;
            v45 = v101;
            v46 = v98;
          }

          goto LABEL_12;
        }

        sub_214031C4C();
        swift_allocError();
        *v54 = 0xD00000000000001ELL;
        v54[1] = 0x800000021478F9A0;
        v55 = v120;
        v54[2] = 0xD00000000000001CLL;
        v54[3] = v55;
        swift_willThrow();
        (*(v10 + 8))(v8, v85);
        v81 = LOBYTE(v182[0]);

        v199 = v81;
        v42 = v13;
        v109 = v119;
        v118 = v17;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v48 = 0xD000000000000021;
        v48[1] = 0x800000021478F970;
        v49 = v120;
        v48[2] = 0xD00000000000001CLL;
        v48[3] = v49;
        swift_willThrow();

        (*(v10 + 8))(v8, v85);

        v42 = v13;
      }

      v44 = v130;
      v41 = v117;
      v43 = v122;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v38 = v113;
      *v39 = v82;
      v39[1] = v38;
      v40 = v120;
      v39[2] = 0xD00000000000001CLL;
      v39[3] = v40;
      swift_willThrow();

      v41 = v117;
      (*(v10 + 8))(v8, v85);
      v42 = v34;

      v43 = v122;

      v44 = v83;
    }

    v45 = v101;
    v46 = v98;
    v47 = v106;
LABEL_12:
    v131 = v41;
    v132 = v43;
    v133 = v44;
    v134 = v42;
    v135 = v121;
    *v136 = v201[0];
    *&v136[3] = *(v201 + 3);
    v137 = v114;
    v138 = v116;
    v139 = v109;
    v140 = v118;
    v141 = v115;
    *v142 = *v200;
    *&v142[3] = *&v200[3];
    v143 = v110;
    v144 = v112;
    v145 = v103;
    v146 = v199;
    v147 = v111;
    v148 = v197;
    v149 = v198;
    v150 = v104;
    v151 = v107;
    v152 = v47;
    v153 = v108;
    v154 = v105;
    *&v155[3] = *&v196[3];
    *v155 = *v196;
    v156 = v99;
    v157 = v102;
    v158 = v46;
    v159 = v45;
    v160 = v100;
    *&v161[3] = *&v195[3];
    *v161 = *v195;
    v162 = v95;
    v163 = v97;
    v164 = v87;
    v165 = v89;
    v166 = v194;
    v167 = v96;
    v168 = v86;
    v169 = v90;
    v170 = v93;
    v171 = v94;
    v172 = v92;
    v173 = v91;
    sub_2142FF8EC(&v131);
  }

  return __swift_destroy_boxed_opaque_existential_1(v202);
}

void sub_21441713C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913010, &unk_21473CFC0);
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v25 = *(v1 + 96);
  v26 = v6;
  v30 = *(v1 + 104);
  v8 = *(v1 + 128);
  v23 = *(v1 + 136);
  v24 = v8;
  v9 = *(v1 + 168);
  v21 = *(v1 + 176);
  v22 = v9;
  v20 = *(v1 + 208);
  LODWORD(v9) = *(v1 + 216);
  v18 = *(v1 + 217);
  v19 = v9;
  v17 = *(v1 + 219);
  v10 = *(v1 + 240);
  v15 = *(v1 + 248);
  v16 = v10;
  v11 = a1[3];
  v12 = a1;
  v14 = &v15 - v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_2144175FC();
  sub_2146DAA28();
  if (!v5)
  {
    goto LABEL_11;
  }

  LOBYTE(v28) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v27 + 8))(v14, v4);

    return;
  }

  if (!v7 || (LOBYTE(v28) = 1, , sub_2146DA328(), , (v30 & 1) != 0) || (LOBYTE(v28) = 2, sub_2146DA368(), v23 == 1) || (v28 = v24, v29 = v23, v31 = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_2143BF4C0(&qword_280B30BA8, &qword_27C904008, &qword_2146EC050, MEMORY[0x277D837D8]), sub_2146DA388(), v21 == 1) || (v28 = v22, v29 = v21, v31 = 4, sub_2146DA388(), (v18 & 1) != 0) || (v28 = v20, LOBYTE(v29) = v19 & 1, v31 = 5, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0), sub_2143BF4C0(&qword_280B30B90, &qword_27C904798, qword_21473CFD0, MEMORY[0x277D83B90]), sub_2146DA388(), LOBYTE(v28) = 6, sub_2146DA368(), v15 == 1))
  {
LABEL_11:
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    v28 = v16;
    v29 = v15;
    v31 = 7;
    sub_2146DA388();
    (*(v27 + 8))(v14, v4);
  }
}

unint64_t sub_2144175FC()
{
  result = qword_27C913008;
  if (!qword_27C913008)
  {
    result = swift_getWitnessTable(byte_21473D160, &_s19CodingConfigurationV10CodingKeysON_6, v0, v1);
    atomic_store(result, &qword_27C913008);
  }

  return result;
}

unint64_t sub_214417674()
{
  result = qword_27C913018;
  if (!qword_27C913018)
  {
    result = swift_getWitnessTable(byte_21473D138, &_s19CodingConfigurationV10CodingKeysON_6, v0, v1);
    atomic_store(result, &qword_27C913018);
  }

  return result;
}

unint64_t sub_2144176CC()
{
  result = qword_27C913020;
  if (!qword_27C913020)
  {
    result = swift_getWitnessTable("1߯m,R\a", &_s19CodingConfigurationV10CodingKeysON_6, v0, v1);
    atomic_store(result, &qword_27C913020);
  }

  return result;
}

unint64_t sub_214417724()
{
  result = qword_27C913028;
  if (!qword_27C913028)
  {
    result = swift_getWitnessTable(aAM_0, &_s19CodingConfigurationV10CodingKeysON_6, v0, v1);
    atomic_store(result, &qword_27C913028);
  }

  return result;
}

unint64_t sub_214417778(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2144177C4(uint64_t a1)
{
  *(a1 + 8) = sub_21431D6EC();
  result = sub_21431D644();
  *(a1 + 16) = result;
  return result;
}

id sub_214417804()
{
  v1 = *v0;
  v2 = v0[4];
  v4 = v0[8];
  v3 = v0[9];
  v5 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (v5)
  {
    v6 = v5;
    [v5 writeUint32:v1 forTag:1];
    if (!v2)
    {
      goto LABEL_8;
    }

    v7 = sub_2146D9588();

    [v6 writeString:v7 forTag:2];

    if (v3 >> 60 == 15)
    {
      goto LABEL_8;
    }

    sub_21402D9F8(v4, v3);
    v8 = sub_2146D8A38();
    sub_213FDC6BC(v4, v3);
    [v6 writeData:v8 forTag:3];

    v9 = [v6 immutableData];
    if (v9)
    {
      v10 = v9;

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_8:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21441797C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144179C8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_214417A24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_214417A7C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[4].n128_i64[0];
  v7 = v1[4].n128_u64[1];

  sub_213FDC6BC(v6, v7);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214417AE4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214417B60()
{
  v1 = *(v0 + 72);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 64);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

void sub_214417C18(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}