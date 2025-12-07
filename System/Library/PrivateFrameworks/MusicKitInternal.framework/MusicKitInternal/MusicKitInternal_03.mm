uint64_t sub_1D4E8E3E8()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D51FF4DC();
  *v0 = result;
  return result;
}

void sub_1D4E8E464()
{
  OUTLINED_FUNCTION_65_5();
  sub_1D51FF0C4();
  *v0 = v1;
}

uint64_t sub_1D4E8E490()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D51FF010();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8E4BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E8E534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8E5BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8E684@<X0>(uint64_t *a1@<X8>)
{
  result = Composer.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E8E848@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D5612E28();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E8E9A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5612DF8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E8EAA4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[10];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_25_0();
  if (*(v15 + 84) == a2)
  {
    v8 = v14;
    v9 = a3[14];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v17 + 84) == a2)
  {
    v8 = v16;
    v9 = a3[18];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_25_0();
  if (*(v19 + 84) == a2)
  {
    v8 = v18;
    v9 = a3[21];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_25_0();
  if (*(v21 + 84) == a2)
  {
    v8 = v20;
    v9 = a3[22];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_25_0();
  if (*(v23 + 84) == a2)
  {
    v8 = v22;
    v9 = a3[23];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_25_0();
  if (*(v25 + 84) == a2)
  {
    v8 = v24;
    v9 = a3[26];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v27 + 84) == a2)
  {
    v8 = v26;
    v9 = a3[30];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v29 + 84) == a2)
  {
    v8 = v28;
    v9 = a3[38];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  OUTLINED_FUNCTION_25_0();
  if (*(v31 + 84) == a2)
  {
    v8 = v30;
    v9 = a3[39];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_25_0();
  if (*(v33 + 84) == a2)
  {
    v8 = v32;
    v9 = a3[41];
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_25_0();
  if (*(v35 + 84) == a2)
  {
    v8 = v34;
    v9 = a3[42];
    goto LABEL_29;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v39 + 84) == a2)
    {
      v8 = v38;
      v9 = a3[46];
    }

    else
    {
      v8 = sub_1D5610088();
      v9 = a3[47];
    }

LABEL_29:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v37 = *(a1 + a3[45]);
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  return (v37 + 1);
}

void sub_1D4E8EF98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
        OUTLINED_FUNCTION_25_0();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[14];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_25_0();
          if (*(v19 + 84) == a3)
          {
            v10 = v18;
            v11 = a4[18];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
            OUTLINED_FUNCTION_25_0();
            if (*(v21 + 84) == a3)
            {
              v10 = v20;
              v11 = a4[21];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
              OUTLINED_FUNCTION_25_0();
              if (*(v23 + 84) == a3)
              {
                v10 = v22;
                v11 = a4[22];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
                OUTLINED_FUNCTION_25_0();
                if (*(v25 + 84) == a3)
                {
                  v10 = v24;
                  v11 = a4[23];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
                  OUTLINED_FUNCTION_25_0();
                  if (*(v27 + 84) == a3)
                  {
                    v10 = v26;
                    v11 = a4[26];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
                    OUTLINED_FUNCTION_25_0();
                    if (*(v29 + 84) == a3)
                    {
                      v10 = v28;
                      v11 = a4[30];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
                      OUTLINED_FUNCTION_25_0();
                      if (*(v31 + 84) == a3)
                      {
                        v10 = v30;
                        v11 = a4[38];
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
                        OUTLINED_FUNCTION_25_0();
                        if (*(v33 + 84) == a3)
                        {
                          v10 = v32;
                          v11 = a4[39];
                        }

                        else
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
                          OUTLINED_FUNCTION_25_0();
                          if (*(v35 + 84) == a3)
                          {
                            v10 = v34;
                            v11 = a4[41];
                          }

                          else
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
                            OUTLINED_FUNCTION_25_0();
                            if (*(v37 + 84) == a3)
                            {
                              v10 = v36;
                              v11 = a4[42];
                            }

                            else
                            {
                              if (a3 == 0x7FFFFFFF)
                              {
                                *(a1 + a4[45]) = (a2 - 1);
                                return;
                              }

                              sub_1D560D838();
                              OUTLINED_FUNCTION_25_0();
                              if (*(v39 + 84) == a3)
                              {
                                v10 = v38;
                                v11 = a4[46];
                              }

                              else
                              {
                                v10 = sub_1D5610088();
                                v11 = a4[47];
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

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E8F488()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E8F608()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isFollowable.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F630()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isAutoFollowEnabled.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F778()
{
  OUTLINED_FUNCTION_20_0();
  result = UserProfile.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8F7A0()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isDiscoverableByContact.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F7C8()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isContactsCheckAllowed.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F7F0()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isOnboardingBlocked.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F818()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isOnboarded.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F840()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isVerified.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F868()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isPrivate.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F890()
{
  OUTLINED_FUNCTION_20_0();
  result = UserProfile.handle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8F8B8()
{
  OUTLINED_FUNCTION_20_0();
  result = UserProfile.discoverabilityConsentVersion.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1D4E8F8E8()
{
  OUTLINED_FUNCTION_20_0();
  v0 = UserProfile.isCollaborationAllowed.getter();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E8F910()
{
  OUTLINED_FUNCTION_20_0();
  result = UserProfile.acceptedTerms.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8F95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C0A8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4E8FA04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D560C0A8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E8FAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2060, &qword_1D5645C38);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8FB90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2060, &qword_1D5645C38);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8FC1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E8FC70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E8FD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8FDB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8FE54()
{
  OUTLINED_FUNCTION_20_0();
  result = sub_1D52275BC();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8FF10()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.isLibraryAddEligible.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8FF5C()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.duration.getter();
  return OUTLINED_FUNCTION_29_2(v0, v1);
}

uint64_t sub_1D4E8FFCC()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.isLibraryAdded.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E90018()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E90040()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.showName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

double sub_1D4E9011C@<D0>(_OWORD *a1@<X8>)
{
  TVEpisode.supportedLocales.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void sub_1D4E901CC()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.previews.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E9023C()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D5224690(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E9028C()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.genreNames.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E902B4()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.subNumber.getter();
  return OUTLINED_FUNCTION_29_2(v0, v1);
}

uint64_t sub_1D4E902DC()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.seasonNumber.getter();
  return OUTLINED_FUNCTION_29_2(v0, v1);
}

uint64_t sub_1D4E90304()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.number.getter();
  return OUTLINED_FUNCTION_29_2(v0, v1);
}

void sub_1D4E90350()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode._editorialArtworks.getter();
  *v0 = v1;
}

uint64_t sub_1D4E90378()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.standardDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E903A0()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.shortDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E903C8()
{
  OUTLINED_FUNCTION_20_0();
  TVEpisode.credits.getter();
  *v0 = v1;
}

uint64_t sub_1D4E903F0()
{
  OUTLINED_FUNCTION_20_0();
  result = TVEpisode.copyright.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E90418()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D5223DD4(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E90620@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5230B90();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E907D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

__n128 sub_1D4E9081C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E909F4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[8];
    }

    else
    {
      v8 = sub_1D5610088();
      v9 = a3[9];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[7]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_1D4E90B0C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return;
    }

    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[8];
    }

    else
    {
      v10 = sub_1D5610088();
      v11 = a4[9];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E90C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 44);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a3 + 48);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E90CF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 44);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a4 + 48);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E90E20()
{
  OUTLINED_FUNCTION_20_0();
  result = Song.supportsSmartTransitions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E90E48()
{
  OUTLINED_FUNCTION_20_0();
  result = Song.spatialOffsets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E90E70()
{
  OUTLINED_FUNCTION_20_0();
  result = Song.offers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E90E98()
{
  OUTLINED_FUNCTION_20_0();
  result = Song.customLyrics.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E90EE4()
{
  OUTLINED_FUNCTION_20_0();
  result = Song.assetURLs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9103C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      sub_1D560C328();
      OUTLINED_FUNCTION_25_0();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
        OUTLINED_FUNCTION_25_0();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[10];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
          v11 = a3[11];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1D4E911A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_1D560C328();
      OUTLINED_FUNCTION_25_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
        OUTLINED_FUNCTION_25_0();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[10];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
          v11 = a4[11];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1D4E91380(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_16:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[7];
LABEL_15:
    v9 = a1 + v12;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_25_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[9];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[24];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_25_0();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[25];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v20 + 84) == a2)
  {
    v8 = v19;
    v12 = a3[26];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_25_0();
  if (*(v22 + 84) == a2)
  {
    v8 = v21;
    v12 = a3[27];
    goto LABEL_15;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v26 + 84) == a2)
    {
      v8 = v25;
      v12 = a3[29];
    }

    else
    {
      v8 = sub_1D5610088();
      v12 = a3[30];
    }

    goto LABEL_15;
  }

  v24 = *(a1 + a3[28]);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  return (v24 + 1);
}

void sub_1D4E91660(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_25_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[24];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
          OUTLINED_FUNCTION_25_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[25];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
            OUTLINED_FUNCTION_25_0();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[26];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
              OUTLINED_FUNCTION_25_0();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[27];
              }

              else
              {
                if (a3 == 0x7FFFFFFF)
                {
                  *(a1 + a4[28]) = (a2 - 1);
                  return;
                }

                sub_1D560D838();
                OUTLINED_FUNCTION_25_0();
                if (*(v26 + 84) == a3)
                {
                  v10 = v25;
                  v14 = a4[29];
                }

                else
                {
                  v10 = sub_1D5610088();
                  v14 = a4[30];
                }
              }
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E9193C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1D4E919DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E91AE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E91BB0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E91C10@<X0>(_BYTE *a1@<X8>)
{
  result = InternalMusicPlayer.Queue.isAutoPlayEnabled.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E91C98(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_131_5();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AA8, &unk_1D564A5C0);
  v3 = OUTLINED_FUNCTION_87();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1D4E91D14()
{
  OUTLINED_FUNCTION_39_17();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AA8, &unk_1D564A5C0);
    v3 = OUTLINED_FUNCTION_87();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1D4E91D8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_147();
  v4 = sub_1D560C368();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4E91DD0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D560C368();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1D4E91E2C()
{
  OUTLINED_FUNCTION_191();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250);
  OUTLINED_FUNCTION_69(v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v4;
  type metadata accessor for MusicPlaybackIntentDonation(0);
  v8 = OUTLINED_FUNCTION_45_1();
  if (!__swift_getEnumTagSinglePayload(v8, v9, v10))
  {
    type metadata accessor for MusicPlaybackIntentDonation.IntentKind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D4EF21B4(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
      v11 = *(type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0) + 20);
      sub_1D560D838();
      OUTLINED_FUNCTION_14();
      (*(v12 + 8))(v7 + v11);
    }

    else
    {
    }
  }

  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  }

  v13 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v6));
  }

  if (*(v0 + v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v13));
  }

  OUTLINED_FUNCTION_190();

  return swift_deallocObject();
}

uint64_t sub_1D4E91FCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E9201C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E9205C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D4E924F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E92538(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E925AC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
      OUTLINED_FUNCTION_25_0();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_25_0();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[9];
        }

        else
        {
          v10 = sub_1D560CD48();
          v11 = a3[10];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1D4E92718(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
      OUTLINED_FUNCTION_25_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_25_0();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[9];
        }

        else
        {
          v10 = sub_1D560CD48();
          v11 = a4[10];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1D4E928E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C368();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D4E929A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D560C368();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D4E92A48()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E92B38@<X0>(_BYTE *a1@<X8>)
{
  result = MusicCatalogChartsRequest.excludeDefaultCharts.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D4E92B90@<X0>(_BYTE *a1@<X8>)
{
  result = MusicCatalogChartsRequest.includeGeoLocation.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D4E92BF0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[9];
    }

    else
    {
      v8 = sub_1D5610088();
      v9 = a3[10];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[8]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_1D4E92D08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return;
    }

    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[9];
    }

    else
    {
      v10 = sub_1D5610088();
      v11 = a4[10];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E93070(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5615458();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E930FC()
{
  v1 = sub_1D5615458();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E93214(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[11];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v14 = a3[12];
      }
    }

    v9 = a1 + v14;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[7] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_1D4E93394(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v14 = a4[12];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E9359C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StorePlatformUserProfile(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D4E93654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StorePlatformUserProfile(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D4E9378C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPlayer.Queue.presto_playActivityFeatureName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E937BC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPlayer.Queue.presto_playActivityRecommendationData.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E93864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3848, &unk_1D564E460);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3850, &qword_1D564E8F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4E93918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3848, &unk_1D564E460);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3850, &qword_1D564E8F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E93AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_64_1();
  sub_1D560CD48();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1D4E93B9C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  sub_1D560CD48();
  OUTLINED_FUNCTION_25_0();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_37_19();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D4E93C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_64_1();
  sub_1D560C328();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20) + 16);
    if (v9 > 1)
    {
      return (v9 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1D4E93D00(uint64_t a1, char a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  sub_1D560C328();
  OUTLINED_FUNCTION_25_0();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_37_19();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20) + 16) = -a2;
  }
}

uint64_t sub_1D4E93D98()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4E93DD4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E93E1C()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E93E54()
{
  v1 = (_s10PropertiesVMa(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_1D4E93F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s13PersistedDateVMa(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
      v10 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E9405C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = _s13PersistedDateVMa(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
      v10 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E941D4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[9];
    goto LABEL_5;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_25_0();
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = a3[15];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      OUTLINED_FUNCTION_25_0();
      if (*(v17 + 84) == a2)
      {
        v8 = v16;
        v9 = a3[17];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
        v9 = a3[24];
      }
    }

LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v13 = *(a1 + a3[14] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1D4E943A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[9];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[14] + 8) = (a2 - 1);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[15];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[17];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
          v11 = a4[24];
        }
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E945E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E9467C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E94708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D560C0A8();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E94790(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D560C0A8();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E94898@<X0>(_BYTE *a1@<X8>)
{
  result = MusicCatalogSearchSuggestionsRequest.includeNaturalLanguageResults.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_1D4E949C4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E94A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_147();
  sub_1D560C0A8();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_1D560CD48();
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1D4E94B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  sub_1D560C0A8();
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_1D560CD48();
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

__n128 sub_1D4E94C34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E94C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s21EntryPropertyProviderVMa(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E94CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s21EntryPropertyProviderVMa(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

BOOL sub_1D4E94DE0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1D4E94E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.Location(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E94E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.Location(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E94F94(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_10:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_10;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v9 = a3[12];
    goto LABEL_10;
  }

  v12 = *(a1 + a3[11] + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

void sub_1D4E950C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[11] + 8) = (a2 - 1);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v11 = a4[12];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E95260()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D4E95408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D56106B8();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E95490(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D56106B8();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E95550()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F42E0, &qword_1D5652E68);
  OUTLINED_FUNCTION_4_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D4E955D8()
{
  v1 = *(type metadata accessor for MusicRestrictionsObserver.ObservationToken(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  sub_1D560C368();
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1D4E956C0()
{
  sub_1D56140F8();
  v0 = OUTLINED_FUNCTION_5_43();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D4E95700()
{
  OUTLINED_FUNCTION_3_140();
  v0 = OUTLINED_FUNCTION_11_91();
  return v1(v0);
}

__n128 sub_1D4E95738(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E95744()
{
  OUTLINED_FUNCTION_3_140();
  v0 = OUTLINED_FUNCTION_11_91();
  return v1(v0);
}

uint64_t sub_1D4E9577C()
{
  OUTLINED_FUNCTION_3_140();
  v0 = OUTLINED_FUNCTION_11_91();
  return v1(v0);
}

uint64_t sub_1D4E957B4()
{
  OUTLINED_FUNCTION_3_140();
  v0 = OUTLINED_FUNCTION_11_91();
  return v1(v0);
}

uint64_t sub_1D4E95864(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA400, &unk_1D5653240);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_12:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_11:
    v9 = a1 + v12;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_25_0();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[7];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  OUTLINED_FUNCTION_25_0();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[8];
    goto LABEL_11;
  }

  v20 = *(a1 + a3[9]);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_1D4E95A4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA400, &unk_1D5653240);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
        OUTLINED_FUNCTION_25_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
          OUTLINED_FUNCTION_25_0();
          if (*(v20 + 84) != a3)
          {
            *(a1 + a4[9]) = (a2 - 1);
            return;
          }

          v10 = v19;
          v14 = a4[8];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E95CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D4E95DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E95E84()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_1_0();
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  v8 = (v2 + v4 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = OUTLINED_FUNCTION_318_0();
  v10(v9);
  (*(v7 + 8))(v0 + v8, v5);
  OUTLINED_FUNCTION_46();

  return swift_deallocObject();
}

uint64_t sub_1D4E95F94()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_334();
  v3 = sub_1D56158D8();
  OUTLINED_FUNCTION_69(v3);
  v20 = *(v5 + 64);
  v21 = v1;
  v6 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = *(v10 + 64);
  v12 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  v15 = *(v13 + 80);
  if (!__swift_getEnumTagSinglePayload(v0 + v6, 1, v2))
  {
    OUTLINED_FUNCTION_24_0();
    (*(v16 + 8))(v0 + v6, v2);
  }

  v17 = (v6 + v20 + v9) & ~v9;
  v18 = (v17 + v11 + v15) & ~v15;
  (*(v8 + 8))(v0 + v17, v21);
  (*(v14 + 8))(v0 + v18, v12);

  return swift_deallocObject();
}

uint64_t sub_1D4E96168()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_1_0();
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  v8 = (v2 + v4 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = OUTLINED_FUNCTION_318_0();
  v10(v9);
  (*(v7 + 8))(v0 + v8, v5);
  OUTLINED_FUNCTION_46();

  return swift_deallocObject();
}

uint64_t sub_1D4E962CC()
{
  v1 = *(v0 + 56);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v7 = v9;
  v10 = *(v0 + 40);
  v11 = v1;
  v2 = type metadata accessor for MusicLibraryImportChangeRequest(0, &v8);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80));

  v4 = *(v2 + 68);
  if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v7))
  {
    OUTLINED_FUNCTION_24_0();
    (*(v5 + 8))(v3 + v4, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1D4E96494@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5345E18(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D4E964C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_147();
  sub_1D560C368();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MusicDaemon.Item(0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1D4E965AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  sub_1D560C368();
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for MusicDaemon.Item(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E9674C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E967A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E9687C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E96904(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E969D4()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E969FC()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.isVerified.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E96A24()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.isPrivate.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E96A4C()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.isLightweight.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E96A78()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.handle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E96AC8()
{
  OUTLINED_FUNCTION_20_0();
  result = Playlist.Collaborator.isPending.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E96B40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D5613158();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_1D4E96B8C()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_1D560CBA8();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  v10 = (v6 + *(v8 + 80) + 8) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  (*(v9 + 8))(v0 + v10, v7);

  return swift_deallocObject();
}

uint64_t sub_1D4E96CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15PersistentEntryVMa(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D4E96DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s15PersistentEntryVMa(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D4E96EBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E96F10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E96F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicShareableItem(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E96FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicShareableItem(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E97024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C0A8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D4E970D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D560C0A8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E971D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E9720C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E97260@<X0>(uint64_t a1@<X8>)
{
  result = MusicLibrarySearchRequest.topResultsLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E97298(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C328();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E972E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C328();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E9732C@<X0>(uint64_t a1@<X8>)
{
  result = MigratedPlaylist.creationTimeSeconds.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E97364@<X0>(uint64_t a1@<X8>)
{
  result = MigratedPlaylist.updatedTimeSeconds.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E9739C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4E97450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E97618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_0_197(a1, a2, a3);
  result = v5(v4);
  *v3 = result;
  return result;
}

__n128 sub_1D4E97654(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E97674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D560D9A8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E9774C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560D9A8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E97848(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[22] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1D4E97950(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[22] + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E97ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E97B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E97F40(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_10:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_10;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
    v9 = a3[25];
    goto LABEL_10;
  }

  v12 = *(a1 + a3[16] + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

void sub_1D4E98074(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[16] + 8) = (a2 - 1);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      v11 = a4[25];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E98270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_147();
  v7 = type metadata accessor for GenericMusicItem(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(v3 + *(a3 + 20));
      if (v10 >= 2)
      {
        return v10 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = sub_1D560C328();
    v9 = v3 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1D4E98334(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_147();
  result = type metadata accessor for GenericMusicItem(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 254)
    {
      *(v4 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v10 = sub_1D560C328();
    v11 = v4 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E98420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicSuggestedPivotNode(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D4E984CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MusicSuggestedPivotNode(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E98574(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1D4E98640(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E9876C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F5068, &qword_1D565A2E0);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E988C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E98958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E98C6C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_138_1();
    return (v4 + 1);
  }

  else
  {
    type metadata accessor for CloudMusicMovie.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
      OUTLINED_FUNCTION_25_0();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
        v11 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void sub_1D4E98D80()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v3 = v2;
    type metadata accessor for CloudMusicMovie.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v4 + 84) != v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
      OUTLINED_FUNCTION_25_0();
      if (*(v5 + 84) != v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
      }
    }

    OUTLINED_FUNCTION_163_8();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1D4E98E94(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_138_1();
    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
      OUTLINED_FUNCTION_25_0();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v16 + 84) == a2)
        {
          v11 = v15;
          v12 = a3[11];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_25_0();
          if (*(v18 + 84) == a2)
          {
            v11 = v17;
            v12 = a3[14];
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
            v12 = a3[21];
          }
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void sub_1D4E99058()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v4 + 84) != v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
      OUTLINED_FUNCTION_25_0();
      if (*(v5 + 84) != v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v6 + 84) != v3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_25_0();
          if (*(v7 + 84) != v3)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
          }
        }
      }
    }

    OUTLINED_FUNCTION_163_8();

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1D4E99210()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v1 = OUTLINED_FUNCTION_51_4();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D4E9925C()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_163_8();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D4E992B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_25_0();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_51_4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
    OUTLINED_FUNCTION_25_0();
    if (*(v10 + 84) == v3)
    {
      v8 = v9;
      v11 = *(a3 + 24);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
      v11 = *(a3 + 28);
    }

    v7 = v4 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

uint64_t sub_1D4E993A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_25_0();
  if (*(v5 + 84) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
    OUTLINED_FUNCTION_25_0();
    if (*(v6 + 84) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
    }
  }

  OUTLINED_FUNCTION_163_8();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1D4E99534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560D838();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1D56106B8();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D4E99608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D560D838();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1D56106B8();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E9984C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_12:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[20];
    goto LABEL_12;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
    v9 = a3[27];
    goto LABEL_12;
  }

  v14 = *(a1 + a3[21] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1D4E999CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[20];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[21] + 8) = (a2 - 1);
          return;
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        v11 = a4[27];
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E9A234()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E9A2C0@<X0>(_BYTE *a1@<X8>)
{
  result = Artist.hasMusicEvents.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E9A2EC@<X0>(_BYTE *a1@<X8>)
{
  result = Artist.hasBonusContent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E9A318@<X0>(uint64_t *a1@<X8>)
{
  result = Artist.biography.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E9A570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E9A5F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E9A69C()
{
  OUTLINED_FUNCTION_20_0();
  result = TVShow.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E9A754()
{
  OUTLINED_FUNCTION_20_0();
  TVShow.plainEditorialCards.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E9A77C()
{
  OUTLINED_FUNCTION_20_0();
  TVShow.languageAttributes.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E9A7C8()
{
  OUTLINED_FUNCTION_20_0();
  result = TVShow.hasHD.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E9A7F4()
{
  OUTLINED_FUNCTION_20_0();
  result = TVShow.has4K.getter();
  *v0 = result & 1;
  return result;
}

void sub_1D4E9A820()
{
  OUTLINED_FUNCTION_20_0();
  TVShow.genreNames.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E9A848()
{
  OUTLINED_FUNCTION_20_0();
  result = TVShow.episodeCount.getter();
  *v0 = result;
  return result;
}

void sub_1D4E9A894()
{
  OUTLINED_FUNCTION_20_0();
  TVShow.editorialCards.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E9A8BC()
{
  OUTLINED_FUNCTION_20_0();
  TVShow._editorialArtworks.getter();
  *v0 = v1;
}

void sub_1D4E9A8E4()
{
  OUTLINED_FUNCTION_20_0();
  TVShow.credits.getter();
  *v0 = v1;
}

void sub_1D4E9A90C()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D53E3094(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E9A960()
{
  v1 = _s14TransientEntryVMa(0);
  OUTLINED_FUNCTION_69(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  sub_1D560D838();
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(v0 + v3);
  v5 = _s15PersistentEntryVMa(0);
  v6 = *(v5 + 20);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_14();
  (*(v7 + 8))(v0 + v3 + v6);
  v8 = *(v5 + 24);
  sub_1D560C328();
  OUTLINED_FUNCTION_14();
  (*(v9 + 8))(v0 + v3 + v8);

  return swift_deallocObject();
}

uint64_t sub_1D4E9AAE0()
{

  OUTLINED_FUNCTION_97_16();

  return swift_deallocObject();
}

uint64_t sub_1D4E9AB7C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_147();
  v6 = sub_1D560CD48();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(v3 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
    v8 = a3[8];
    goto LABEL_8;
  }

  v9 = *(v3 + a3[7]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D4E9AC54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_147();
  result = sub_1D560CD48();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
    v10 = a4[8];
  }

  return __swift_storeEnumTagSinglePayload(v4 + v10, a2, a2, v9);
}

uint64_t sub_1D4E9AE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560CD48();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E9AEAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560CD48();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E9AEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D4E9AFC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

unint64_t sub_1D4E9B0C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5615EF8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

BOOL sub_1D4E9B120(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5615EF8();

  return v2 != 0;
}

uint64_t sub_1D4E9B21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D560CD48();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 60);
    }

    else
    {
      v9 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
      v10 = *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E9B2E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560CD48();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 60);
    }

    else
    {
      v9 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
      v10 = *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E9B404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E9B458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E9B4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5614898();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for Playlist.Collaborator(0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4E9B54C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D5614898();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for Playlist.Collaborator(0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E9B5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D4E9B6B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E9B7D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E9B8C8(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
    v4 = OUTLINED_FUNCTION_87();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

uint64_t sub_1D4E9B948(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
    v4 = OUTLINED_FUNCTION_87();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_1D4E9B9C0(unsigned __int8 *a1, int a2)
{
  if (a2 == 252)
  {
    v2 = *a1;
    if (v2 <= 3)
    {
      v3 = 3;
    }

    else
    {
      v3 = *a1;
    }

    v4 = v3 - 3;
    if (v2 >= 3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
    v6 = OUTLINED_FUNCTION_87();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

_BYTE *sub_1D4E9BA50(_BYTE *result, uint64_t a2, int a3)
{
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
    v4 = OUTLINED_FUNCTION_87();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_1D4E9BC80(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1D4E9BD14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E9BDB4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[11];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v14 = a3[12];
      }
    }

    v9 = a1 + v14;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[7] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_1D4E9BF34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v14 = a4[12];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E9C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5613838();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D4E9C1AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D5613838();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E9C284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D560C0A8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E9C30C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D560C0A8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E9C3DC@<X0>(uint64_t a1@<X8>)
{
  result = MigratedAlbum.releaseDateSeconds.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E9C4D0@<X0>(uint64_t *a1@<X8>)
{
  result = InternalMusicPlayer.queue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E9C500@<X0>(uint64_t a1@<X8>)
{
  result = InternalMusicPlayer.playbackTime.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E9C548()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6928, &qword_1D5665160);
  OUTLINED_FUNCTION_14();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D4E9C62C()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E9C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D4E9C73C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

__n128 sub_1D4E9C8A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E9CB64()
{
  OUTLINED_FUNCTION_20_0();
  result = SocialProfile.isLightweight.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E9CB90()
{
  OUTLINED_FUNCTION_20_0();
  result = SocialProfile.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E9CBB8()
{
  OUTLINED_FUNCTION_20_0();
  result = SocialProfile.isVerified.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E9CBE4()
{
  OUTLINED_FUNCTION_20_0();
  result = SocialProfile.isPrivate.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E9CC10()
{
  OUTLINED_FUNCTION_20_0();
  result = SocialProfile.handle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E9CC98(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[7];
LABEL_5:
    v9 = a1 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[9];
    }

    else
    {
      v8 = sub_1D5610088();
      v12 = a3[10];
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[8]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1D4E9CDFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      sub_1D560D838();
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        v10 = sub_1D5610088();
        v14 = a4[10];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E9CF64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E9CF9C()
{

  return swift_deallocObject();
}

__n128 sub_1D4E9CFE4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E9CFFC()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D544E6B8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E9D240()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D5454C00();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E9D26C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4E9D2A0()
{
  swift_unknownObjectRelease();

  sub_1D4FEEE48(*(v0 + 56));

  sub_1D4FEEE48(*(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_1D4E9D308()
{
  OUTLINED_FUNCTION_65_5();
  v0 = sub_1D5456D98();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E9D354()
{
  OUTLINED_FUNCTION_65_5();
  v0 = sub_1D5456EE4();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E9D3A0()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D54571D0();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9D3CC()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D545723C();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9D3F8()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D545732C();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9D424()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D5457398();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9D450()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D5454D80();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9D4A0()
{
  sub_1D4FEEE48(*(v0 + 16));
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4E9D4D4()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D54551D8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E9D528()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D54558BC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E9D63C()
{
  OUTLINED_FUNCTION_65_5();
  v0 = sub_1D54568FC();
  return OUTLINED_FUNCTION_20_56(v0);
}

id sub_1D4E9D688()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D54569CC();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9D6B4()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D5456ABC();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9D704()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D5456B3C();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9D754()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D5456C5C();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9D7A4()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D5456EF8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E9D7F8()
{
  OUTLINED_FUNCTION_65_5();
  sub_1D5457084(v1, v2);
  *v0 = v3;
}

uint64_t sub_1D4E9D824()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D5454F14();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E9D878()
{
  OUTLINED_FUNCTION_65_5();
  sub_1D5454E10();
  *v0 = v1;
}

void sub_1D4E9D8A4()
{
  OUTLINED_FUNCTION_65_5();
  sub_1D5454C48();
  *v0 = v1;
}

uint64_t sub_1D4E9D8D0()
{
  OUTLINED_FUNCTION_65_5();
  v0 = sub_1D5454C34();
  return OUTLINED_FUNCTION_20_56(v0);
}

uint64_t sub_1D4E9D91C()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D54550D4();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9D988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D560CD48();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E9DA10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D560CD48();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E9DB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC8, &qword_1D5622EE0);
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1D4E9DC14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC8, &qword_1D5622EE0);
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1D4E9DCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D4E9DDA8()
{
  OUTLINED_FUNCTION_38_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_1D4E9DE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1D4E9DF00()
{
  OUTLINED_FUNCTION_38_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_25_0();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1D4E9E030()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E9E068(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6D40, &qword_1D5667530);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1D4E9E0FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6D40, &qword_1D5667530);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E9E188()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E9E1D0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D4E9E208()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E9E260()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D54A52B8();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9E28C()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D54A5648();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E9E2E0()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D54A60B0();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D4E9E434()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D54A5AC0(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9E484()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D54A5BB4(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1D4E9E4B0()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D54A5C74(v1, v2);
  *v0 = result;
  return result;
}

void sub_1D4E9E53C()
{
  OUTLINED_FUNCTION_65_5();
  sub_1D54A5F84(v1, v2);
  *v0 = v3;
}

__n128 sub_1D4E9E610(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E9E61C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4E9E670()
{
  OUTLINED_FUNCTION_251_3();
  type metadata accessor for MusicSuggestedSongsRequest(0);
  OUTLINED_FUNCTION_258_4();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F38, &unk_1D5667A08);
  OUTLINED_FUNCTION_69(v6);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v27 = *(v10 + 64);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F40, &qword_1D5667A48);
  OUTLINED_FUNCTION_4();
  v12 = v11;
  v13 = *(v11 + 80);
  swift_unknownObjectRelease();

  v14 = v0 + v3;
  v15 = *(v1 + 28);
  sub_1D560CD48();
  OUTLINED_FUNCTION_4_0();
  (*(v16 + 8))(v14 + v15);

  v17 = v14 + *(v1 + 40);
  v18 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    OUTLINED_FUNCTION_46_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_8;
        }

        sub_1D5614898();
        OUTLINED_FUNCTION_4_0();
        (*(v20 + 8))(v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E68, &qword_1D56609E0);
      }
    }
  }

LABEL_8:
  v21 = (v27 + v8 + v9 + 1) & ~v8;
  type metadata accessor for MusicSuggestedSongsResponse(0);
  if (!OUTLINED_FUNCTION_304_2(v0 + v9))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
    OUTLINED_FUNCTION_4_0();
    (*(v22 + 8))(v0 + v9);
  }

  if (!OUTLINED_FUNCTION_304_2(v0 + v21))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
    OUTLINED_FUNCTION_4_0();
    (*(v23 + 8))(v0 + v21);
  }

  (*(v12 + 8))(v0 + ((v13 + ((v27 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13), v26);
  OUTLINED_FUNCTION_259_2();

  return swift_deallocObject();
}

uint64_t sub_1D4E9EDAC()
{
  type metadata accessor for MusicCatalogInternalSearchRequest(0);
  OUTLINED_FUNCTION_258_4();
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v5 + 95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7030, &qword_1D5667EA8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_376_0();

  v8 = v0 + v4;

  v9 = *(v1 + 68);
  sub_1D560CD48();
  OUTLINED_FUNCTION_4_0();
  (*(v10 + 8))(v8 + v9);
  v11 = v8 + *(v1 + 72);
  type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6240, &qword_1D5667EC0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
    OUTLINED_FUNCTION_4_0();
    (*(v13 + 8))(v11 + v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
    OUTLINED_FUNCTION_4_0();
    (*(v14 + 8))(v11);
  }

  v15 = v7 & 0xFFFFFFFFFFFFFFF8;
  v16 = (v0 + v6);
  if (*v16)
  {

    if (v16[4])
    {
    }
  }

  if (*(v0 + v15))
  {

    if (*(v0 + v15 + 32))
    {
    }
  }

  v17 = OUTLINED_FUNCTION_265_2();
  v18(v17);
  OUTLINED_FUNCTION_402();

  return swift_deallocObject();
}

uint64_t sub_1D4E9F068()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D4E9F624()
{
  OUTLINED_FUNCTION_47();
  type metadata accessor for MusicLibraryAdvancedMappingRequest(0);
  OUTLINED_FUNCTION_258_4();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = (v3 + *(v4 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7150, &qword_1D5668248);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  v9 = (*(v7 + 80) + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v7 + 80);
  swift_unknownObjectRelease();

  v10 = *(v1 + 36);
  sub_1D560CD48();
  OUTLINED_FUNCTION_4_0();
  (*(v11 + 8))(v0 + v3 + v10);

  (*(v8 + 8))(v0 + v9, v6);
  OUTLINED_FUNCTION_46();

  return swift_deallocObject();
}

uint64_t sub_1D4E9F984()
{

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_83_2();

  return swift_deallocObject();
}

uint64_t sub_1D4E9F9C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E9F9F8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E9FA48()
{
  v1 = *(type metadata accessor for MusicSuggestedSongsViewModelSeed(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_128();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_1D5614898();
    OUTLINED_FUNCTION_4_0();
    (*(v3 + 8))(v0 + v2);
  }

  OUTLINED_FUNCTION_402();

  return swift_deallocObject();
}

uint64_t sub_1D4E9FB68()
{
  v1 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  OUTLINED_FUNCTION_402();

  return swift_deallocObject();
}

uint64_t sub_1D4E9FC24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71F8, &qword_1D56684B8);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  OUTLINED_FUNCTION_402();

  return swift_deallocObject();
}

unint64_t sub_1D4E9FDDC(char a1)
{
  result = 1836213620;
  switch(a1)
  {
    case 1:
      result = 1954047342;
      break;
    case 2:
      result = 0x76697372656D6D69;
      break;
    case 3:
      result = 0x6F2D73636972796CLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x7079742D6D657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4E9FED4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1D560CD48();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B0, &qword_1D5631138);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[9];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
      v14 = a3[10];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[8] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_1D4E9FFFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1D560CD48();
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B0, &qword_1D5631138);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4EA022C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D560D838();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1D560D9A8();
    OUTLINED_FUNCTION_25_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_1D560C328();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1D4EA0304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D560D838();
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1D560D9A8();
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_1D560C328();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4EA04DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5614898();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_1D5614828();
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_1D4EA05D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D5614898();
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1D5614828();
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4EA06C4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v5 = type metadata accessor for UserProfile(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_1D4EA0708(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v5 = type metadata accessor for UserProfile(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_1D4EA07B4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
    OUTLINED_FUNCTION_25_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
      OUTLINED_FUNCTION_25_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
        OUTLINED_FUNCTION_25_0();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
          v12 = a3[8];
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1D4EA0948(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
        OUTLINED_FUNCTION_25_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
          v14 = a4[8];
        }
      }
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4EA0B30@<X0>(uint64_t *a1@<X8>)
{
  result = Genre.chartLabel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4EA0BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4EA0BF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4EA0C78(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = a1 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
    OUTLINED_FUNCTION_25_0();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[10];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v12 = a3[11];
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[8] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1D4EA0DF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v14 = a4[11];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4EA0FBC(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[9];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[14];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
    OUTLINED_FUNCTION_25_0();
    if (*(v18 + 84) == a2)
    {
      v8 = v17;
      v12 = a3[17];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
      OUTLINED_FUNCTION_25_0();
      if (*(v20 + 84) == a2)
      {
        v8 = v19;
        v12 = a3[19];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v12 = a3[20];
      }
    }

    goto LABEL_7;
  }

  v16 = *(a1 + a3[15] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1D4EA11D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[14];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[15] + 8) = (a2 - 1);
          return;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
        OUTLINED_FUNCTION_25_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[17];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
          OUTLINED_FUNCTION_25_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[19];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
            v14 = a4[20];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_1D4EA14D8(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_1_186(a1);
}

void *sub_1D4EA1538@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1D4EA15D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SQLDatabase.Location(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4EA1660(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SQLDatabase.Location(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4EA16F0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_251();
  WitnessTable = swift_getWitnessTable();

  return sub_1D54EA160(a1, WitnessTable);
}

sqlite3_int64 sub_1D4EA17EC@<X0>(uint64_t *a1@<X8>, sqlite3_int64 a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D54EB870(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D4EA1854()
{
  OUTLINED_FUNCTION_17_90();
  result = swift_getWitnessTable();
  *(v0 + 8) = result;
  return result;
}

uint64_t sub_1D4EA189C()
{
  OUTLINED_FUNCTION_17_90();
  result = swift_getWitnessTable();
  *(v0 + 8) = result;
  return result;
}

void sub_1D4EA1B9C(void *a1@<X8>, void *a2@<X0>)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  OUTLINED_FUNCTION_0_253(a1);
}

uint64_t sub_1D4EA1BF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4EA1D0C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4EA1DF8()
{
  v1 = (type metadata accessor for MusicDaemon.Item(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_69(v4);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();

  v7 = v0 + v2;
  sub_1D560D838();
  OUTLINED_FUNCTION_4_0();
  (*(v8 + 8))(v7);

  v9 = v1[8];
  sub_1D56106B8();
  OUTLINED_FUNCTION_4_0();
  (*(v10 + 8))(v7 + v9);
  v11 = sub_1D560D478();
  if (!__swift_getEnumTagSinglePayload(v0 + v6, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v0 + v6, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1D4EA2070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5614898();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for Playlist.Collaborator(0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4EA210C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D5614898();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for Playlist.Collaborator(0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4EA21F0(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x747865746E6F63;
  }
}

uint64_t sub_1D4EA222C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D550BF70();
  *a1 = result;
  return result;
}

uint64_t sub_1D4EA2290(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1D560C368();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MusicDaemon.Item(0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
    v12 = a3[7];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[6] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1D4EA23AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1D560C368();
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MusicDaemon.Item(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6] + 8) = (a2 - 1);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4EA25A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4EA27E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4EA2870(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4EA29A8@<X0>(uint64_t *a1@<X8>)
{
  result = AudioAnalysis.vocalActivities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4EA29D4@<X0>(uint64_t *a1@<X8>)
{
  result = AudioAnalysis.phrases.getter();
  *a1 = result;
  return result;
}

double sub_1D4EA2B2C@<D0>(uint64_t a1@<X8>)
{
  AudioAnalysis.beatsPerMinute.getter();
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1D4EA2BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5615458();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 20);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8118, &qword_1D5671310);
    v8 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
}

uint64_t sub_1D4EA2C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D5615458();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8118, &qword_1D5671310);
    v10 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_1D4EA2D3C()
{
  v1 = sub_1D5615458();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

__n128 sub_1D4EA36E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4EA36FC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4EA3804()
{

  return swift_deallocObject();
}

uint64_t sub_1D4EA3A08(uint64_t a1)
{
  OUTLINED_FUNCTION_1_202();
  result = sub_1D4E74E6C(v2, v3, &protocol conformance descriptor for UploadedVideo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D4EA3A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4EA3AD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4EA3CC0()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedVideo.uploadingArtistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4EA3D54()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedVideo._editorialArtworks.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4EA3E0C()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedVideo.duration.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1D4EA3E84()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedVideo.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4EA3EAC()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedVideo.artistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4EA3F1C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_12:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[9];
LABEL_11:
    v9 = a1 + v12;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[15];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[20];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_25_0();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[22];
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v22 + 84) == a2)
    {
      v8 = v21;
      v12 = a3[25];
    }

    else
    {
      v8 = sub_1D5610088();
      v12 = a3[26];
    }

    goto LABEL_11;
  }

  v20 = *(a1 + a3[24]);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_1D4EA4164(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[15];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
        OUTLINED_FUNCTION_25_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[20];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
          OUTLINED_FUNCTION_25_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[22];
          }

          else
          {
            if (a3 == 0x7FFFFFFF)
            {
              *(a1 + a4[24]) = (a2 - 1);
              return;
            }

            sub_1D560D838();
            OUTLINED_FUNCTION_25_0();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[25];
            }

            else
            {
              v10 = sub_1D5610088();
              v14 = a4[26];
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4EA43F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4EA443C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4EA4488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1950, &qword_1D5641F30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    v10 = v9 <= 0;
    if (v9 < 0)
    {
      v9 = -1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }
}

uint64_t sub_1D4EA4550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1950, &qword_1D5641F30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 1);
  }

  return result;
}

uint64_t sub_1D4EA46C8(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_147();
  sub_1D560CD48();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_7:

    return __swift_getEnumTagSinglePayload(v3 + v9, a2, v8);
  }

  sub_1D5613D28();
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  OUTLINED_FUNCTION_25_0();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[7];
    goto LABEL_7;
  }

  v15 = *(v3 + a3[9]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_1D4EA47FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_147();
  sub_1D560CD48();
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_1D5613D28();
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) != a3)
      {
        *(v4 + a4[9]) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[7];
    }
  }

  __swift_storeEnumTagSinglePayload(v4 + v11, a2, a2, v10);
}

uint64_t sub_1D4EA49E0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_9:
    v9 = a1 + v12;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF340, &qword_1D5631090);
  OUTLINED_FUNCTION_25_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[9];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_25_0();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[10];
    goto LABEL_9;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v20 + 84) == a2)
    {
      v8 = v19;
      v12 = a3[12];
    }

    else
    {
      v8 = sub_1D5610088();
      v12 = a3[13];
    }

    goto LABEL_9;
  }

  v18 = *(a1 + a3[11]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_1D4EA4BDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF340, &qword_1D5631090);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
        OUTLINED_FUNCTION_25_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[10];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(a1 + a4[11]) = (a2 - 1);
            return;
          }

          sub_1D560D838();
          OUTLINED_FUNCTION_25_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[12];
          }

          else
          {
            v10 = sub_1D5610088();
            v14 = a4[13];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4EA4E70(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_62_2(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  v5 = OUTLINED_FUNCTION_152(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1D4EA4EF4()
{
  OUTLINED_FUNCTION_21_86();
  if (v3)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
    v5 = OUTLINED_FUNCTION_152(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1D4EA4F70(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_62_2(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v5 = OUTLINED_FUNCTION_152(*(a3 + 36));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1D4EA4FF4()
{
  OUTLINED_FUNCTION_21_86();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v5 = OUTLINED_FUNCTION_152(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1D4EA5160@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D55D1EDC(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D4EA532C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC70, &unk_1D56766B0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC68, &qword_1D5634760);
  OUTLINED_FUNCTION_25_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v18 + 84) == a2)
    {
      v8 = v17;
      v12 = a3[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC60, &unk_1D5634750);
      OUTLINED_FUNCTION_25_0();
      if (*(v20 + 84) == a2)
      {
        v8 = v19;
        v12 = a3[15];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        OUTLINED_FUNCTION_25_0();
        if (*(v22 + 84) == a2)
        {
          v8 = v21;
          v12 = a3[16];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v12 = a3[17];
        }
      }
    }

    goto LABEL_7;
  }

  v16 = *(a1 + a3[10] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1D4EA5590(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC70, &unk_1D56766B0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC68, &qword_1D5634760);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[10] + 8) = (a2 - 1);
          return;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[12];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC60, &unk_1D5634750);
          OUTLINED_FUNCTION_25_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[15];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
            OUTLINED_FUNCTION_25_0();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[16];
            }

            else
            {
              v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
              v14 = a4[17];
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4EA5904(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudEditorialItem.Attributes(0);
    v6 = OUTLINED_FUNCTION_152(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_1D4EA5988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudEditorialItem.Attributes(0);
    v6 = OUTLINED_FUNCTION_152(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1D4EA5A04(unint64_t *a1, int a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v8 + 84) == a2)
    {
      v9 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F8, &unk_1D5637550);
      OUTLINED_FUNCTION_25_0();
      if (*(v10 + 84) == a2)
      {
        v9 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F0, &unk_1D5631020);
        OUTLINED_FUNCTION_25_0();
        if (*(v11 + 84) == a2)
        {
          v9 = a3[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v9 = a3[12];
        }
      }
    }

    v12 = OUTLINED_FUNCTION_152(v9);

    return __swift_getEnumTagSinglePayload(v12, v13, v14);
  }
}

void *sub_1D4EA5B84(void *result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v7 + 84) == a3)
    {
      v8 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F8, &unk_1D5637550);
      OUTLINED_FUNCTION_25_0();
      if (*(v9 + 84) == a3)
      {
        v8 = a4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F0, &unk_1D5631020);
        OUTLINED_FUNCTION_25_0();
        if (*(v10 + 84) == a3)
        {
          v8 = a4[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v8 = a4[12];
        }
      }
    }

    v11 = OUTLINED_FUNCTION_152(v8);

    return __swift_storeEnumTagSinglePayload(v11, v12, a2, v13);
  }

  return result;
}

uint64_t sub_1D4EA5DF4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_138_1();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudUploadedAudio.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCF8, &unk_1D565D0E0);
      v8 = *(a3 + 24);
    }

    v9 = OUTLINED_FUNCTION_152(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_1D4EA5EB8()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    type metadata accessor for CloudUploadedAudio.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCF8, &unk_1D565D0E0);
      v7 = *(v4 + 24);
    }

    v8 = OUTLINED_FUNCTION_152(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

uint64_t sub_1D4EA5F80(uint64_t a1, int a2, int *a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_138_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v8 + 84) == a2)
    {
      v9 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
      OUTLINED_FUNCTION_25_0();
      if (*(v10 + 84) == a2)
      {
        v9 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v11 + 84) == a2)
        {
          v9 = a3[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
          OUTLINED_FUNCTION_25_0();
          if (*(v12 + 84) == a2)
          {
            v9 = a3[13];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
            v9 = a3[14];
          }
        }
      }
    }

    v13 = OUTLINED_FUNCTION_152(v9);

    return __swift_getEnumTagSinglePayload(v13, v14, v15);
  }
}

void sub_1D4EA6140()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v6 + 84) == v5)
    {
      v7 = v4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
      OUTLINED_FUNCTION_25_0();
      if (*(v8 + 84) == v5)
      {
        v7 = v4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v9 + 84) == v5)
        {
          v7 = v4[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
          OUTLINED_FUNCTION_25_0();
          if (*(v10 + 84) == v5)
          {
            v7 = v4[13];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
            v7 = v4[14];
          }
        }
      }
    }

    v11 = OUTLINED_FUNCTION_152(v7);

    __swift_storeEnumTagSinglePayload(v11, v12, v0, v13);
  }
}

uint64_t sub_1D4EA62F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_1D4EA63A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1D4EA64FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = a3[18];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[14] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D4EA65E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[14] + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a4[18];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_1D4EA6734(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_25_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v18 + 84) == a2)
    {
      v8 = v17;
      v12 = a3[9];
    }

    else
    {
      v8 = sub_1D5610088();
      v12 = a3[10];
    }

    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1D4EA68E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return;
        }

        sub_1D560D838();
        OUTLINED_FUNCTION_25_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[9];
        }

        else
        {
          v10 = sub_1D5610088();
          v14 = a4[10];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4EA6A90(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2E8, &qword_1D5631018);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[8];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F8, &unk_1D5637550);
  OUTLINED_FUNCTION_25_0();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[9];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v15 + 84) == a2)
  {
    v8 = v14;
    v9 = a3[12];
    goto LABEL_9;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v19 + 84) == a2)
    {
      v8 = v18;
      v9 = a3[15];
    }

    else
    {
      v8 = sub_1D5610088();
      v9 = a3[16];
    }

LABEL_9:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v17 = *(a1 + a3[14]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_1D4EA6C8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2E8, &qword_1D5631018);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F8, &unk_1D5637550);
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_25_0();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[12];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(a1 + a4[14]) = (a2 - 1);
            return;
          }

          sub_1D560D838();
          OUTLINED_FUNCTION_25_0();
          if (*(v19 + 84) == a3)
          {
            v10 = v18;
            v11 = a4[15];
          }

          else
          {
            v10 = sub_1D5610088();
            v11 = a4[16];
          }
        }
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4EA6E98()
{
  sub_1D5613158();
  v0 = OUTLINED_FUNCTION_4_169();

  return __swift_storeEnumTagSinglePayload(v0, v1, 1, v2);
}

uint64_t sub_1D4EA6EDC()
{
  sub_1D5613528();
  v0 = OUTLINED_FUNCTION_4_169();

  return __swift_storeEnumTagSinglePayload(v0, v1, 1, v2);
}

uint64_t storeEnumTagSinglePayload for CoverArtworkRecipe.ExpressionID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

char *sub_1D4EA729C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_6_13(a3, result);
  }

  return result;
}

uint64_t sub_1D4EA73A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_1D4EA73B4(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E6977688]);

  return [v3 initWithVariants:4 options:a2];
}

uint64_t sub_1D4EA7410(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1D4EA7420(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D4EA7484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4EA7350(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D4EA74B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5023228(a2, a3);
  *a1 = result & 1;
  return result;
}

sqlite3_stmt *sub_1D4EA74E8@<X0>(sqlite3_stmt **a1@<X8>, sqlite3_stmt *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D54EB088(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

id getMPAVEndpointRouteClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPAVEndpointRouteClass_softClass;
  v7 = getMPAVEndpointRouteClass_softClass;
  if (!getMPAVEndpointRouteClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPAVEndpointRouteClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPAVEndpointRouteClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EA7850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EA7A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMPAVEndpointRouteClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  result = objc_getClass("MPAVEndpointRoute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAVEndpointRouteClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPAVEndpointRouteClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D4EA7D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPStoreArtworkDataSourceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C38A8;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPStoreArtworkDataSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPStoreArtworkDataSourceClass_block_invoke_cold_1();
  }

  getMPStoreArtworkDataSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1D4EA803C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCModelStorePlaybackItemsRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlaybackCoreLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C38E8;
    v6 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPCModelStorePlaybackItemsRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCModelStorePlaybackItemsRequestClass_block_invoke_cold_1();
  }

  getMPCModelStorePlaybackItemsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1D4EA842C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EA8604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EA87E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerCommandDialogActionClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  result = objc_getClass("MPCPlayerCommandDialogAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerCommandDialogActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCPlayerCommandDialogActionClass_block_invoke_cold_1();
    return __MediaPlaybackCoreLibraryCore_block_invoke_1(v3);
  }

  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getMPCPlayerCommandDialogClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  result = objc_getClass("MPCPlayerCommandDialog");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerCommandDialogClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCPlayerCommandDialogClass_block_invoke_cold_1();
    return __getMPCPlayerCommandStatusClass_block_invoke(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest *__getMPCPlayerCommandStatusClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  result = objc_getClass("MPCPlayerCommandStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerCommandStatusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCPlayerCommandStatusClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest *)v3 initWithPlaylist:v4 playlistEntry:v5 reactionText:v6, v7];
  }

  return result;
}

void sub_1D4EA8BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPlaylistEntryReactionChangeRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3918;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryPlaylistEntryReactionChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryPlaylistEntryReactionChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryPlaylistEntryReactionChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_1 = result;
  return result;
}

id getMPModelLibraryPlaylistEditControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPlaylistEditControllerClass_softClass;
  v7 = getMPModelLibraryPlaylistEditControllerClass_softClass;
  if (!getMPModelLibraryPlaylistEditControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPlaylistEditControllerClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryPlaylistEditControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EA90B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelLibraryPlaylistEditControllerDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_ptr;
  if (!getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_0();
    v6[3] = dlsym(v1, "MPModelLibraryPlaylistEditControllerDidChangeNotification");
    getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1D4EA9640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EA980C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose((v15 - 64), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getMPModelLibraryPlaylistEditControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelLibraryPlaylistEditController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryPlaylistEditControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryPlaylistEditControllerClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_2(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void *__getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_0();
  result = dlsym(v2, "MPModelLibraryPlaylistEditControllerDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelLibraryPlaylistEditControllerDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3A40;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (UIKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIImageClass_block_invoke_cold_1();
  }

  getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMPModelObjectClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPModelObjectClass_block_invoke_cold_1();
    return MusicKit_MGGetDeviceClass();
  }

  return result;
}

void sub_1D4EAAB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void *__getMPCPlayerEnqueueErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_0();
  result = dlsym(v2, "MPCPlayerEnqueueErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerEnqueueErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4EAB220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EAB598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelSongClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_1();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_3(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_3(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_3 = result;
  return result;
}

Class __getMPModelLibraryAddToPlaylistChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_1();
  result = objc_getClass("MPModelLibraryAddToPlaylistChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryAddToPlaylistChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryAddToPlaylistChangeRequestClass_block_invoke_cold_1();
    return __getMPMutableSectionedCollectionClass_block_invoke(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPCPlaybackEngine *__getMPMutableSectionedCollectionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_1();
  result = objc_getClass("MPMutableSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPCPlaybackEngine *)v3 initWithPlayerID:v4 options:v5 fallbackPlaybackIntent:v6, v7];
  }

  return result;
}

void sub_1D4EAB980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlaybackEngineClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlaybackCoreLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3AE0;
    v6 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_3)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPCPlaybackEngine");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlaybackEngineClass_block_invoke_cold_1();
  }

  getMPCPlaybackEngineClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_3(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_3 = result;
  return result;
}

void sub_1D4EABDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerResponseItemClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_4)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlaybackCoreLibraryCore_block_invoke_4;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3AF8;
    v6 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_4 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_4)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPCPlayerResponseItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlayerResponseItemClass_block_invoke_cold_1();
  }

  getMPCPlayerResponseItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_4(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_4 = result;
  return result;
}

void sub_1D4EACB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMutableSectionedCollectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMutableSectionedCollectionClass_softClass_0;
  v7 = getMPMutableSectionedCollectionClass_softClass_0;
  if (!getMPMutableSectionedCollectionClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMutableSectionedCollectionClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMutableSectionedCollectionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EACE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlayerLibraryCore_block_invoke_4(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_4 = result;
  return result;
}

void *__getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPModelLibraryTransientStateControllerDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelLibraryRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelLibraryRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryRequestClass_block_invoke_cold_1();
    return __getMPPropertySetClass_block_invoke(v3);
  }

  return result;
}

Class __getMPPropertySetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPPropertySet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPPropertySetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPPropertySetClass_block_invoke_cold_1();
    return __getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPModelPropertyPlaylistLastModifiedDateComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPModelPropertyPlaylistArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPModelPropertyPlaylistTracksTiledArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting *__getMPMutableSectionedCollectionClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPMutableSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting *)v3 initWithModelObject:v4 children:v5, v6];
  }

  return result;
}

void sub_1D4EADABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMutableSectionedCollectionClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_3();
  result = objc_getClass("MPMutableSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_5(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_5(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_5 = result;
  return result;
}

Class __getMPStoreLibraryPersonalizationRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_3();
  result = objc_getClass("MPStoreLibraryPersonalizationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPStoreLibraryPersonalizationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPStoreLibraryPersonalizationRequestClass_block_invoke_cold_1();
    return __getMPStoreLibraryPersonalizationResponseClass_block_invoke(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest *__getMPStoreLibraryPersonalizationResponseClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_3();
  result = objc_getClass("MPStoreLibraryPersonalizationResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPStoreLibraryPersonalizationResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPStoreLibraryPersonalizationResponseClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest *)v3 initWithPlaylist:v4 sharingMode:v5, v6];
  }

  return result;
}

void sub_1D4EADE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryStartCollaborationChangeRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_6)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_6;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3C28;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_6 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_6)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryStartCollaborationChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryStartCollaborationChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryStartCollaborationChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_6(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_6 = result;
  return result;
}

void sub_1D4EAE2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EAE408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getMPMediaLibraryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaLibraryClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_7(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_7(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_7 = result;
  return result;
}

MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest *__getMPModelLibraryRemoveFromPlaylistChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelLibraryRemoveFromPlaylistChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryRemoveFromPlaylistChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryRemoveFromPlaylistChangeRequestClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest *)v3 init];
  }

  return result;
}

Class __getMPModelLibraryKeepLocalChangeRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_8)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_8;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3C80;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_8 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelLibraryKeepLocalChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryKeepLocalChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryKeepLocalChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_8(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_8 = result;
  return result;
}

void sub_1D4EAEAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerCommandRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_5)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlaybackCoreLibraryCore_block_invoke_5;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3C98;
    v6 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_5 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_5)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPCPlayerCommandRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlayerCommandRequestClass_block_invoke_cold_1();
  }

  getMPCPlayerCommandRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}