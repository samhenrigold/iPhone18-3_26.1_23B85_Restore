uint64_t FormatHeadlineTrackDurationFormat.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FormatHeadlineTrackProgressFormat.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

BOOL _s8NewsFeed21FormatHeadlineBindingV4TextO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v16 = *(a2 + 32);
  v15 = *(a2 + 40);
  v17 = *(a2 + 48);
  v49[0] = *a1;
  v49[1] = v4;
  v49[2] = v6;
  v49[3] = v7;
  v49[4] = v8;
  v49[5] = v9;
  v50 = v10;
  v51 = v11;
  v52 = v12;
  v53 = v14;
  v54 = v13;
  v55 = v16;
  v56 = v15;
  v57 = v17;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        if (v17 == 3)
        {
          goto LABEL_92;
        }

        goto LABEL_20;
      }

      if (!(v6 | v4 | v5 | v7 | v8 | v9))
      {
        if (v17 == 4 && !(v14 | v12 | v11 | v13 | v16 | v15))
        {
          goto LABEL_92;
        }

        goto LABEL_20;
      }

      v24 = v6 | v4 | v7 | v8 | v9;
      if (v5 != 1 || v24)
      {
        if (v5 != 2 || v24)
        {
          if (v5 != 3 || v24)
          {
            if (v5 != 4 || v24)
            {
              if (v5 != 5 || v24)
              {
                if (v5 != 6 || v24)
                {
                  if (v5 != 7 || v24)
                  {
                    if (v5 != 8 || v24)
                    {
                      if (v5 != 9 || v24)
                      {
                        if (v5 != 10 || v24)
                        {
                          if (v5 != 11 || v24)
                          {
                            if (v5 != 12 || v24)
                            {
                              if (v5 != 13 || v24)
                              {
                                if (v5 != 14 || v24)
                                {
                                  if (v17 != 4 || v11 != 15)
                                  {
                                    goto LABEL_20;
                                  }
                                }

                                else if (v17 != 4 || v11 != 14)
                                {
                                  goto LABEL_20;
                                }
                              }

                              else if (v17 != 4 || v11 != 13)
                              {
                                goto LABEL_20;
                              }
                            }

                            else if (v17 != 4 || v11 != 12)
                            {
                              goto LABEL_20;
                            }
                          }

                          else if (v17 != 4 || v11 != 11)
                          {
                            goto LABEL_20;
                          }
                        }

                        else if (v17 != 4 || v11 != 10)
                        {
                          goto LABEL_20;
                        }
                      }

                      else if (v17 != 4 || v11 != 9)
                      {
                        goto LABEL_20;
                      }
                    }

                    else if (v17 != 4 || v11 != 8)
                    {
                      goto LABEL_20;
                    }
                  }

                  else if (v17 != 4 || v11 != 7)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v17 != 4 || v11 != 6)
                {
                  goto LABEL_20;
                }
              }

              else if (v17 != 4 || v11 != 5)
              {
                goto LABEL_20;
              }
            }

            else if (v17 != 4 || v11 != 4)
            {
              goto LABEL_20;
            }
          }

          else if (v17 != 4 || v11 != 3)
          {
            goto LABEL_20;
          }
        }

        else if (v17 != 4 || v11 != 2)
        {
          goto LABEL_20;
        }
      }

      else if (v17 != 4 || v11 != 1)
      {
        goto LABEL_20;
      }

      if (!(v14 | v12 | v13 | v16 | v15))
      {
LABEL_92:
        sub_1D6ED1C68(v49, sub_1D6ED22C0);
        return 1;
      }

      goto LABEL_20;
    }

    if (v17 == 2)
    {
      sub_1D6ED1C68(v49, sub_1D6ED22C0);
      return ((v11 ^ v5) & 1) == 0;
    }

LABEL_20:
    sub_1D5E1DC48(v11, v12, v14, v13, v16, v15, v17);
    sub_1D6ED1C68(v49, sub_1D6ED22C0);
    return 0;
  }

  if (v10)
  {
    if (v17 == 1)
    {
      v43 = v5;
      v44 = v4;
      v45 = v6;
      v46 = v7;
      v47 = v8;
      v48 = v9;
      v37 = v11;
      v38 = v12;
      v39 = v14;
      v40 = v13;
      v41 = v16;
      v42 = v15;
      v25 = v16;
      v26 = v4;
      v27 = v6;
      v34 = v7;
      v36 = v9;
      v28 = v8;
      v30 = v8;
      sub_1D5E1DC48(v11, v12, v14, v13, v25, v15, 1u);
      sub_1D5E1DC48(v5, v26, v27, v34, v28, v36, 1u);
      sub_1D5E1DC48(v11, v12, v14, v13, v25, v15, 1u);
      sub_1D5E1DC48(v5, v26, v27, v34, v30, v36, 1u);
      v23 = _s8NewsFeed010FormatDateC0O2eeoiySbAC_ACtFZ_0(&v43, &v37);
      sub_1D6ED1C68(v49, sub_1D6ED22C0);
      sub_1D5E1E074(v11, v12, v14, v13, v25, v15, 1u);
      sub_1D5E1E074(v5, v26, v27, v34, v30, v36, 1u);
      return v23;
    }

    goto LABEL_19;
  }

  if (v17)
  {
LABEL_19:
    sub_1D5E1DC5C(v5, v4, v6, v7, v8, v9);
    goto LABEL_20;
  }

  v43 = v5;
  v44 = v4;
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v48 = v9;
  v37 = v11;
  v38 = v12;
  v39 = v14;
  v40 = v13;
  v41 = v16;
  v42 = v15;
  v18 = v4;
  v31 = v4;
  v32 = v6;
  v19 = v6;
  v33 = v7;
  v35 = v9;
  v20 = v8;
  sub_1D5E1DC48(v11, v12, v14, v13, v16, v15, 0);
  v21 = v18;
  v22 = v20;
  sub_1D5E1DC48(v5, v21, v19, v33, v20, v35, 0);
  sub_1D5E1DC48(v11, v12, v14, v13, v16, v15, 0);
  sub_1D5E1DC48(v5, v31, v32, v33, v20, v35, 0);
  v23 = _s8NewsFeed010FormatDateC0O2eeoiySbAC_ACtFZ_0(&v43, &v37);
  sub_1D6ED1C68(v49, sub_1D6ED22C0);
  sub_1D5E1E074(v11, v12, v14, v13, v16, v15, 0);
  sub_1D5E1E074(v5, v31, v32, v33, v22, v35, 0);
  return v23;
}

uint64_t sub_1D6ED1C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6ED1CC8(uint64_t a1)
{
  if (!qword_1EDF2B4A8)
  {
    v2 = sub_1D5C0BF40();
    v4 = type metadata accessor for FormatCellAutomation(a1, &type metadata for ArticleAutomation, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF2B4A8);
    }
  }
}

uint64_t sub_1D6ED1D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C1F7FC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D6ED1D94(uint64_t a1)
{
  result = sub_1D6ED1DBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6ED1DBC()
{
  result = qword_1EC897C88;
  if (!qword_1EC897C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897C88);
  }

  return result;
}

unint64_t sub_1D6ED1E50()
{
  result = qword_1EC897C90;
  if (!qword_1EC897C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897C90);
  }

  return result;
}

unint64_t sub_1D6ED1EA8()
{
  result = qword_1EC897C98;
  if (!qword_1EC897C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897C98);
  }

  return result;
}

unint64_t sub_1D6ED1EFC(uint64_t a1)
{
  result = sub_1D6ED1F24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6ED1F24()
{
  result = qword_1EC897CA0;
  if (!qword_1EC897CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CA0);
  }

  return result;
}

unint64_t sub_1D6ED1FBC()
{
  result = qword_1EC897CA8;
  if (!qword_1EC897CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CA8);
  }

  return result;
}

unint64_t sub_1D6ED2010(uint64_t a1)
{
  result = sub_1D6ED2038();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6ED2038()
{
  result = qword_1EC897CB0;
  if (!qword_1EC897CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CB0);
  }

  return result;
}

uint64_t sub_1D6ED20CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6ED2120(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1D6ED21D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6ED2218()
{
  if (!qword_1EC897CC0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897CC0);
    }
  }
}

unint64_t sub_1D6ED226C()
{
  result = qword_1EC897CC8;
  if (!qword_1EC897CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CC8);
  }

  return result;
}

void sub_1D6ED22C0()
{
  if (!qword_1EC897CD0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC897CD0);
    }
  }
}

NewsFeed::WebArchiveRequest __swiftcall WebArchiveRequest.init(resourceID:params:)(Swift::String resourceID, Swift::String_optional params)
{
  v2->value = resourceID;
  v2[1] = params;
  result.params = params;
  result.resourceID = resourceID;
  return result;
}

uint64_t WebArchiveServiceType.resolve(webArchives:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = FCCurrentQoSOrUtilityIfMain();
  v7 = *(a3 + 16);

  return v7(a1, v6, a2, a3);
}

uint64_t WebArchiveServiceType.resolve(webArchive:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 16);
  v6 = FCCurrentQoSOrUtilityIfMain();
  return (*(a3 + 8))(v8, v6, a2, a3);
}

uint64_t WebArchiveService.__allocating_init(resourceService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D5B63F14(a1, v2 + 16);
  return v2;
}

uint64_t WebArchiveRequest.resourceID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebArchiveRequest.params.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WebArchive.params.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WebArchive.archiveBaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for WebArchive(0) + 24);
  v5 = sub_1D72585BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t WebArchive.archiveIndexFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for WebArchive(0) + 28);
  v5 = sub_1D72585BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t WebArchive.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebArchive.init(resourceID:params:archiveBaseURL:archiveIndexFileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v11 = type metadata accessor for WebArchive(0);
  v12 = *(v11 + 24);
  v13 = sub_1D72585BC();
  v16 = *(*(v13 - 8) + 32);
  (v16)((v13 - 8), &a7[v12], a5, v13);
  v14 = &a7[*(v11 + 28)];

  return v16(v14, a6, v13);
}

uint64_t type metadata accessor for WebArchive(uint64_t a1)
{
  result = qword_1EDF343C0;
  if (!qword_1EDF343C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebArchiveService.resolve(webArchive:qualityOfService:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  sub_1D6ED2D7C(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  sub_1D725BDCC();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v5;
  v6[5] = v4;

  v7 = sub_1D725B92C();
  type metadata accessor for WebArchive(0);
  v8 = sub_1D725BA8C();

  return v8;
}

uint64_t sub_1D6ED283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D5B49D08(0, &unk_1EDF020B8, &type metadata for WebArchiveRequest, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  sub_1D6ED2D7C(0, &qword_1EDF1B800, sub_1D5F7DC80);

  sub_1D725BDCC();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a6;

  v14 = sub_1D725B92C();
  sub_1D6ED2D7C(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  v15 = sub_1D725BA8C();

  return v15;
}

uint64_t WebArchiveService.resolve(webArchives:qualityOfService:)(uint64_t a1, uint64_t a2)
{
  sub_1D6ED2D7C(0, &qword_1EDF1B800, sub_1D5F7DC80);
  sub_1D725BDCC();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v2;
  v5[4] = a2;

  v6 = sub_1D725B92C();
  sub_1D6ED2D7C(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  v7 = sub_1D725BA8C();

  return v7;
}

uint64_t sub_1D6ED2B28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(*a1 + 16);

  if (v8 && (v9 = sub_1D5B69D90(a2, a3), (v10 & 1) != 0))
  {
    v11 = v9;

    v12 = *(v7 + 56);
    v13 = type metadata accessor for WebArchive(0);
    return sub_1D6ED4114(v12 + *(*(v13 - 8) + 72) * v11, a4);
  }

  else
  {
    sub_1D6ED40C0();
    swift_allocError();
    *v15 = a2;
    *(v15 + 8) = a3;
    *(v15 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1D6ED2C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B68374(a1 + 16, v17);
  v6 = v18;
  v5 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v7, 0);
    v8 = v20;
    v9 = (a2 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v20 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_1D5BFC364((v12 > 1), v13 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  v15 = ResourceServiceType.fetchResources(identifiers:qualityOfService:)(v8, a3, v6, v5);

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v15;
}

void sub_1D6ED2D7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7261E1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D6ED2DE0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v62 = a3;
  v63 = a4;
  v53 = a5;
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - v14;
  sub_1D6ED3F7C(0, qword_1EDF34388, type metadata accessor for WebArchive, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v53 - v18;
  v70 = type metadata accessor for WebArchive(0);
  v20 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v21);
  v60 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *a1;
  v74[0] = a2;
  sub_1D5B49D08(0, &qword_1EDF1B278, &type metadata for WebArchiveRequest, MEMORY[0x1E69E62F8]);
  sub_1D6ED3E10();
  v23 = sub_1D72623CC();
  v71 = v5;
  v75 = *(v23 + 16);
  if (v75)
  {
    v65 = v15;
    v66 = v8;
    v24 = v20;
    v25 = 0;
    v57 = (v9 + 8);
    v58 = (v9 + 32);
    v73 = (v24 + 56);
    v54 = v24;
    v56 = (v24 + 48);
    v26 = (v23 + 56);
    v69 = MEMORY[0x1E69E7CC0];
    v55 = xmmword_1D7273AE0;
    v27 = v70;
    v28 = v67;
    v29 = v23;
    v59 = v19;
    v64 = v23;
    while (1)
    {
      if (v25 >= *(v29 + 16))
      {
        __break(1u);
        return;
      }

      if (!*(v28 + 16))
      {
        goto LABEL_5;
      }

      v31 = *(v26 - 3);
      v32 = *(v26 - 2);
      v33 = *v26;
      v72 = *(v26 - 1);

      swift_bridgeObjectRetain_n();
      v34 = sub_1D5B69D90(v31, v32);
      if ((v35 & 1) == 0)
      {
        break;
      }

      v36 = *(*(v28 + 56) + 8 * v34);
      v37 = [v36 fileURL];
      if (!v37)
      {

        v27 = v70;
        goto LABEL_4;
      }

      v68 = v36;
      v38 = v19;
      v39 = v61;
      v40 = v37;
      sub_1D72584EC();

      v41 = v65;
      v42 = v39;
      v43 = v66;
      (*v58)(v65, v42, v66);
      v74[0] = v31;
      v74[1] = v32;
      v44 = v71;
      v74[2] = v72;
      v74[3] = v33;
      sub_1D6ED351C(v74, v41, v38);
      v71 = v44;
      if (v44)
      {
        if (qword_1EDF1BB50 != -1)
        {
          swift_once();
        }

        v45 = qword_1EDFFC828;
        v46 = sub_1D7262EBC();
        sub_1D6ED3F7C(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v47 = swift_allocObject();
        *(v47 + 16) = v55;
        *(v47 + 56) = MEMORY[0x1E69E6158];
        *(v47 + 64) = sub_1D5B7E2C0();
        *(v47 + 32) = v31;
        *(v47 + 40) = v32;
        sub_1D725C30C("Failed to unarchive web archive, resourceID=%{public}@", 54, 2, &dword_1D5B42000, v45, v46, v47);

        (*v57)(v65, v66);
        v71 = 0;
        v48 = 1;
      }

      else
      {

        (*v57)(v41, v43);

        v48 = 0;
      }

      v19 = v59;
      v28 = v67;
      v29 = v64;
      v27 = v70;
      (*v73)(v59, v48, 1, v70);
      if ((*v56)(v19, 1, v27) != 1)
      {
        sub_1D6ED3F18(v19, v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_1D6996614(0, v69[2] + 1, 1, v69);
        }

        v50 = v69[2];
        v49 = v69[3];
        if (v50 >= v49 >> 1)
        {
          v69 = sub_1D6996614((v49 > 1), v50 + 1, 1, v69);
        }

        v51 = v69;
        v69[2] = v50 + 1;
        sub_1D6ED3F18(v60, v51 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v50);
        v28 = v67;
        v29 = v64;
        goto LABEL_7;
      }

LABEL_6:
      sub_1D6ED3E8C(v19, v30);
LABEL_7:
      ++v25;
      v26 += 4;
      if (v75 == v25)
      {
        goto LABEL_25;
      }
    }

LABEL_4:
    swift_bridgeObjectRelease_n();
LABEL_5:
    v30.n128_f64[0] = (*v73)(v19, 1, 1, v27);
    goto LABEL_6;
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v74[0] = v69;
  sub_1D6ED3F7C(0, &qword_1EDF1B438, type metadata accessor for WebArchive, MEMORY[0x1E69E62F8]);
  sub_1D6ED3FE0();
  sub_1D6ED4068();
  v52 = sub_1D72623BC();

  *v53 = v52;
}

uint64_t sub_1D6ED351C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v61 = a3;
  v65[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v54 - v20;
  v22 = *a1;
  v23 = a1[1];
  v24 = a1[3];
  v58 = a1[2];
  v59 = v24;

  v57 = a2;
  sub_1D72584BC();
  v62 = v22;
  v63 = v23;
  sub_1D725849C();
  v60 = v6;
  v25 = *(v6 + 8);
  v25(v17, v5);
  sub_1D72584AC();
  sub_1D725849C();
  v26 = objc_opt_self();
  v27 = [v26 defaultManager];
  v64 = v9;
  sub_1D72583BC();
  v28 = sub_1D726203C();

  LODWORD(a1) = [v27 fileExistsAtPath_];

  if (a1)
  {
    v25(v13, v5);
    v29 = v64;
LABEL_3:
    v30 = type metadata accessor for WebArchive(0);
    v31 = v61;
    v32 = *(v60 + 32);
    v32(&v61[*(v30 + 24)], v21, v5);
    v32(&v31[*(v30 + 28)], v29, v5);
    v33 = v63;
    *v31 = v62;
    *(v31 + 1) = v33;
    v34 = v59;
    *(v31 + 2) = v58;
    *(v31 + 3) = v34;
  }

  v55 = v25;
  v36 = [v26 defaultManager];
  v37 = sub_1D725844C();
  v38 = sub_1D725844C();
  v65[0] = 0;
  v39 = [v36 copyItemAtURL:v37 toURL:v38 error:v65];

  v40 = v65[0];
  v56 = v13;
  if (v39)
  {
    v41 = objc_allocWithZone(MEMORY[0x1E69B68D0]);
    v42 = v40;
    v43 = [v41 init];
    v44 = sub_1D725844C();
    v45 = sub_1D725844C();
    v46 = [v43 unarchive:v44 toLocation:v45];

    v47 = [v26 defaultManager];
    v29 = v64;
    sub_1D72583BC();
    v48 = sub_1D726203C();

    v49 = [v47 fileExistsAtPath_];

    if (v46 && v49)
    {
      v55(v56, v5);

      goto LABEL_3;
    }

    sub_1D6ED40C0();
    swift_allocError();
    v51 = v63;
    *v52 = v62;
    *(v52 + 8) = v51;
    *(v52 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v50 = v65[0];

    sub_1D725829C();

    swift_willThrow();
    v29 = v64;
  }

  v53 = v55;
  v55(v29, v5);
  v53(v56, v5);
  return (v53)(v21, v5);
}

uint64_t WebArchiveService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6ED3A4C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  sub_1D6ED2D7C(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  sub_1D725BDCC();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v5;
  v6[5] = v4;

  v7 = sub_1D725B92C();
  type metadata accessor for WebArchive(0);
  v8 = sub_1D725BA8C();

  return v8;
}

uint64_t sub_1D6ED3B64(uint64_t a1, uint64_t a2)
{
  v9 = *v2;
  sub_1D6ED2D7C(0, &qword_1EDF1B800, sub_1D5F7DC80);
  sub_1D725BDCC();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v9;
  v5[4] = a2;

  v6 = sub_1D725B92C();
  sub_1D6ED2D7C(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  v7 = sub_1D725BA8C();

  return v7;
}

void sub_1D6ED3CF4(uint64_t a1)
{
  sub_1D5B49D08(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D72585BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D6ED3E10()
{
  result = qword_1EDF1B270;
  if (!qword_1EDF1B270)
  {
    sub_1D5B49D08(255, &qword_1EDF1B278, &type metadata for WebArchiveRequest, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B270);
  }

  return result;
}

uint64_t sub_1D6ED3E8C(uint64_t a1, __n128 a2)
{
  sub_1D6ED3F7C(0, qword_1EDF34388, type metadata accessor for WebArchive, MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6ED3F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebArchive(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D6ED3F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6ED3FE0()
{
  result = qword_1EDF1B430;
  if (!qword_1EDF1B430)
  {
    sub_1D6ED3F7C(255, &qword_1EDF1B438, type metadata accessor for WebArchive, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B430);
  }

  return result;
}

unint64_t sub_1D6ED4068()
{
  result = qword_1EDF343D0;
  if (!qword_1EDF343D0)
  {
    type metadata accessor for WebArchive(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF343D0);
  }

  return result;
}

unint64_t sub_1D6ED40C0()
{
  result = qword_1EC897CD8;
  if (!qword_1EC897CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CD8);
  }

  return result;
}

uint64_t sub_1D6ED4114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebArchive(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6ED41DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedGroupEmitTaskResult(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_1D6ED4678(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1D6ED4254(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  if ((v5 & 0xFFFFFFFFFFFFFFF8) + 48 > v5)
  {
    v5 = (v5 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  v6 = (((((((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = 8;
  if (v6)
  {
    v7 = v6;
  }

  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v8 = -253;
  }

  else
  {
    v8 = -251;
  }

  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v9 = 253;
  }

  else
  {
    v9 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_39;
  }

  v10 = v7 | 1;
  v11 = (a2 + v8 + 255) >> 8;
  if ((v7 | 1) <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *&a1[v10];
      if (*&a1[v10])
      {
        goto LABEL_35;
      }
    }

    else
    {
      v15 = *&a1[v10];
      if (v15)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    v19 = a1[v7] ^ 0xFF;
    if (v9 > v19)
    {
      return v19 + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  v15 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_39;
  }

LABEL_35:
  v17 = (v15 - 1) << (8 * v10);
  if (v10 <= 3)
  {
    v18 = *a1;
  }

  else
  {
    v17 = 0;
    v18 = *a1;
  }

  return v9 + (v18 | v17) + 1;
}

void sub_1D6ED4438(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v7 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  if ((v7 & 0xFFFFFFFFFFFFFFF8) + 48 > v7)
  {
    v7 = (v7 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  v8 = (((((((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!v8)
  {
    v8 = 8;
  }

  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v9 = 253;
  }

  else
  {
    v9 = 251;
  }

  v10 = v8 | 1;
  if (v9 >= a3)
  {
    v15 = 0;
    if (v9 >= a2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = -253;
    }

    else
    {
      v11 = -251;
    }

    v12 = (a3 + v11 + 255) >> 8;
    if (v10 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v9 >= a2)
    {
LABEL_28:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_43;
        }

        *&a1[v10] = 0;
      }

      else if (v15)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

LABEL_43:
        a1[v8] = -a2;
        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }
  }

  v16 = ~v9 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_38:
      if (v15 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_38;
    }
  }

  if (v15)
  {
    a1[v10] = v17;
  }
}

void sub_1D6ED4678(uint64_t a1)
{
  if (!qword_1EDF194B0)
  {
    sub_1D5BA6EF4();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF194B0);
    }
  }
}

uint64_t sub_1D6ED46E0(uint64_t a1)
{
  v2 = sub_1D6ED48C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6ED471C(uint64_t a1)
{
  v2 = sub_1D6ED48C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6ED4758(void *a1)
{
  sub_1D6ED4864(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED48C0();
  sub_1D7264B5C();
  return (*(v4 + 8))(v7, v3);
}

void sub_1D6ED4864(uint64_t a1)
{
  if (!qword_1EC897CE0)
  {
    sub_1D6ED48C0();
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC897CE0);
    }
  }
}

unint64_t sub_1D6ED48C0()
{
  result = qword_1EC897CE8;
  if (!qword_1EC897CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CE8);
  }

  return result;
}

unint64_t sub_1D6ED4928()
{
  result = qword_1EC897CF0;
  if (!qword_1EC897CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CF0);
  }

  return result;
}

unint64_t sub_1D6ED4980()
{
  result = qword_1EC897CF8;
  if (!qword_1EC897CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CF8);
  }

  return result;
}

uint64_t sub_1D6ED49D4(void *a1, uint64_t a2)
{
  sub_1D6ED53EC(0, &qword_1EC897D18, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED52F4();
  sub_1D7264B5C();
  v11[1] = a2;
  sub_1D6ED5348();
  sub_1D6ED5450(&qword_1EC897D28, sub_1D6ED5398, MEMORY[0x1E69E6300]);
  sub_1D726443C();
  return (*(v6 + 8))(v9, v5);
}

void sub_1D6ED4B84(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696F706B61657262 && a2 == 0xEB0000000073746ELL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6ED4C10(uint64_t a1)
{
  v2 = sub_1D6ED52F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6ED4C4C(uint64_t a1)
{
  v2 = sub_1D6ED52F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D6ED4C88@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6ED4FB8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D6ED4CD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FormatJSONEncoder(0);
  swift_allocObject();
  sub_1D6BCED58(MEMORY[0x1E69E7CC0]);
  v16[0] = a1;
  sub_1D6ED4F64();
  v4 = sub_1D72578BC();
  v6 = v5;

  sub_1D5E3E824(v4, v6);
  v7 = sub_1D60DA9EC(v4, v6);
  if (v8)
  {
    goto LABEL_8;
  }

  v14 = v4;
  v15 = v6;
  sub_1D5E3E824(v4, v6);
  sub_1D6CA149C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D6CA1500(v12, 0);
LABEL_7:
    v7 = sub_1D60DA7C8(v4, v6);
LABEL_8:
    v9 = v7;
    v10 = v8;
    sub_1D5B952F8(v4, v6);
    goto LABEL_9;
  }

  sub_1D5B7DDE8(v12, v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if ((sub_1D726415C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    goto LABEL_7;
  }

  sub_1D5B952F8(v4, v6);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_1D726414C();
  v10 = *(&v12[0] + 1);
  v9 = *&v12[0];
  __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_9:
  a2[3] = MEMORY[0x1E69E6158];
  result = sub_1D5B952F8(v4, v6);
  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_1D6ED4ED0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D6ED5188(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1D6ED4F10()
{
  result = qword_1EC897D00;
  if (!qword_1EC897D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D00);
  }

  return result;
}

unint64_t sub_1D6ED4F64()
{
  result = qword_1EC897D08;
  if (!qword_1EC897D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D08);
  }

  return result;
}

void *sub_1D6ED4FB8(void *a1)
{
  sub_1D6ED53EC(0, &qword_1EC897D38, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED52F4();
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D6ED5348();
    sub_1D6ED5450(&qword_1EC897D40, sub_1D6ED54BC, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1D6ED5188(uint64_t a1)
{
  sub_1D5B76B10(a1, v8);
  if (swift_dynamicCast())
  {
    v1 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v1 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v1)
    {
      v2 = sub_1D6011D6C(v6, v7);
      v4 = v3;
      type metadata accessor for FormatJSONDecoder(0);
      swift_allocObject();
      sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
      sub_1D6ED5290();
      sub_1D725A69C();
      sub_1D5B952F8(v2, v4);

      return v8[0];
    }
  }

  return 0;
}

unint64_t sub_1D6ED5290()
{
  result = qword_1EC897D10;
  if (!qword_1EC897D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D10);
  }

  return result;
}

unint64_t sub_1D6ED52F4()
{
  result = qword_1EC897D20;
  if (!qword_1EC897D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D20);
  }

  return result;
}

void sub_1D6ED5348()
{
  if (!qword_1EC895400)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895400);
    }
  }
}

unint64_t sub_1D6ED5398()
{
  result = qword_1EC897D30;
  if (!qword_1EC897D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D30);
  }

  return result;
}

void sub_1D6ED53EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6ED52F4();
    v7 = a3(a1, &type metadata for DebugFormatDebuggerBreakpoints.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6ED5450(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6ED5348();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6ED54BC()
{
  result = qword_1EC897D48;
  if (!qword_1EC897D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D48);
  }

  return result;
}

unint64_t sub_1D6ED5524()
{
  result = qword_1EC897D50;
  if (!qword_1EC897D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D50);
  }

  return result;
}

unint64_t sub_1D6ED557C()
{
  result = qword_1EC897D58;
  if (!qword_1EC897D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D58);
  }

  return result;
}

unint64_t sub_1D6ED55D4()
{
  result = qword_1EC897D60;
  if (!qword_1EC897D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D60);
  }

  return result;
}

uint64_t FormatAudioTrack.Resolved.identifier.getter()
{
  type metadata accessor for FormatAudioTrack.Resolved(0);
  sub_1D5B5D194(0);
  sub_1D725BF7C();
  v0 = [v3 identifier];
  swift_unknownObjectRelease();
  v1 = sub_1D726207C();

  return v1;
}

uint64_t FormatAudioTrack.Resolved.headline.getter()
{
  type metadata accessor for FormatAudioTrack.Resolved(0);
  sub_1D5B5D194(0);
  sub_1D725BF7C();
  return v1;
}

uint64_t type metadata accessor for FormatAudioTrack.Resolved(uint64_t a1)
{
  result = qword_1EDF309A0;
  if (!qword_1EDF309A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FormatAudioTrack.Resolved.title.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    type metadata accessor for FormatAudioTrack.Resolved(0);
    sub_1D5B5D194(0);
    sub_1D725BF7C();
    v2 = [v4 title];
    swift_unknownObjectRelease();
    if (v2)
    {
      v1 = sub_1D726207C();
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

id FormatAudioTrack.Resolved.featureName.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for FormatAudioTrack.Resolved(0);
    sub_1D5B5D194(0);
    sub_1D725BF7C();
    v1 = [v4 sourceChannel];
    swift_unknownObjectRelease();
    if (v1)
    {
      v2 = [v1 name];
      swift_unknownObjectRelease();
      v1 = sub_1D726207C();
    }
  }

  return v1;
}

int8x16_t FormatAudioTrack.Resolved.init(headline:overrides:)@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  v6 = sub_1D725ABEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21.i8[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2[1];
  v21 = *a2;
  v22 = v11;
  type metadata accessor for FormatAudioTrack.Resolved(0);
  v23 = a1;
  v12 = qword_1EDF17C98;
  swift_unknownObjectRetain();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_1EDF17CA0);
  v14 = (*(v7 + 16))(v10, v13, v6);
  MEMORY[0x1EEE9AC00](v14, v15);
  *(&v21 - 2) = sub_1D5B5D6A0();
  swift_getKeyPath();
  sub_1D725BF6C();
  swift_unknownObjectRelease();
  v16 = vdup_n_s32(v21.i64[1] == 1);
  v17.i64[0] = v16.u32[0];
  v17.i64[1] = v16.u32[1];
  v18 = vcgezq_s64(vshlq_n_s64(v17, 0x3FuLL));
  v19 = vandq_s8(v21, v18);
  result = vandq_s8(v22, v18);
  *a3 = v19;
  a3[1] = result;
  return result;
}

uint64_t sub_1D6ED5AAC()
{
  if (*v0)
  {
    return 0x6E696C646165685FLL;
  }

  else
  {
    return 0x656469727265766FLL;
  }
}

void sub_1D6ED5AEC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x6E696C646165685FLL && a2 == 0xE900000000000065)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D72646CC();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D6ED5BD0(uint64_t a1)
{
  v2 = sub_1D6ED6264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6ED5C0C(uint64_t a1)
{
  v2 = sub_1D6ED6264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAudioTrack.Resolved.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6ED62B8(0, &unk_1EDF02790, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED6264();
  sub_1D7264B5C();
  v11 = v3[3];
  v14 = *v3;
  v15 = *(v3 + 1);
  v16 = v11;
  v13[15] = 0;
  sub_1D60A8A1C();

  sub_1D726443C();

  if (!v2)
  {
    type metadata accessor for FormatAudioTrack.Resolved(0);
    LOBYTE(v14) = 1;
    sub_1D5B5D194(0);
    sub_1D6ED631C(&unk_1EDF17720, MEMORY[0x1E69D6C10]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

void FormatAudioTrack.Resolved.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1D5B5D194(0);
  v25 = v4;
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6ED62B8(0, &qword_1EDF03A90, MEMORY[0x1E69E6F48]);
  v26 = v8;
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for FormatAudioTrack.Resolved(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED6264();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v21 = v12;
    v16 = v15;
    v18 = v24;
    v17 = v25;
    v29 = 0;
    sub_1D60A8B1C();
    v19 = v26;
    sub_1D726431C();
    v20 = v28;
    *v16 = v27;
    *(v16 + 1) = v20;
    LOBYTE(v27) = 1;
    sub_1D6ED631C(&qword_1EDF17710, MEMORY[0x1E69D6C18]);
    sub_1D726431C();
    (*(v18 + 8))(v11, v19);
    (*(v22 + 32))(&v16[*(v21 + 20)], v7, v17);
    sub_1D6ED6360(v16, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D6ED63C4(v16);
  }
}

uint64_t sub_1D6ED61DC()
{
  sub_1D5B5D194(0);
  sub_1D725BF7C();
  v0 = [v3 identifier];
  swift_unknownObjectRelease();
  v1 = sub_1D726207C();

  return v1;
}

unint64_t sub_1D6ED6264()
{
  result = qword_1EDF115D8;
  if (!qword_1EDF115D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115D8);
  }

  return result;
}

void sub_1D6ED62B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6ED6264();
    v7 = a3(a1, &_s8ResolvedV10CodingKeysON_2, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6ED631C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5D194(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6ED6360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatAudioTrack.Resolved(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6ED63C4(uint64_t a1)
{
  v2 = type metadata accessor for FormatAudioTrack.Resolved(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6ED6448(uint64_t a1)
{
  sub_1D5B5D194(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1D6ED64D8()
{
  result = qword_1EC897D68;
  if (!qword_1EC897D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D68);
  }

  return result;
}

unint64_t sub_1D6ED6530()
{
  result = qword_1EDF115C0;
  if (!qword_1EDF115C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115C0);
  }

  return result;
}

unint64_t sub_1D6ED6588()
{
  result = qword_1EDF115C8;
  if (!qword_1EDF115C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115C8);
  }

  return result;
}

uint64_t sub_1D6ED6614(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

id static FeedScaling.scale(font:scaleValue:)(void *a1)
{
  sub_1D725A18C();
  v2 = v1;
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  sub_1D7264C3C();
  if (v10 == 1)
  {
    [a1 pointSize];
    v4 = v3;
    sub_1D7264C3C();
    v5 = round(v2 * (v4 * 4.0) * 0.25);
    if (!v9)
    {
      v5 = v4;
    }

    v6 = [a1 fontWithSize_];

    return v6;
  }

  else
  {

    return a1;
  }
}

void *static FeedScaling.scale(value:scaleValue:)(uint64_t a1)
{
  sub_1D725A18C();
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  return sub_1D7264C3C();
}

{
  sub_1D725A18C();
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  return sub_1D7264C3C();
}

void *static FeedScaling.scale(value:scaleValue:)()
{
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  return sub_1D7264C3C();
}

{
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  return sub_1D7264C3C();
}

id static FeedScaling.scale(font:scaleValue:)(void *a1, double a2)
{
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  sub_1D7264C3C();
  if (v10 == 1)
  {
    [a1 pointSize];
    v4 = v3;
    sub_1D7264C3C();
    v5 = round(v4 * 4.0 * a2 * 0.25);
    if (!v9)
    {
      v5 = v4;
    }

    v6 = [a1 fontWithSize_];

    return v6;
  }

  else
  {

    return a1;
  }
}

uint64_t type metadata accessor for FormatMicaData(uint64_t a1)
{
  result = qword_1EDF32520;
  if (!qword_1EDF32520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6ED6BF8(uint64_t a1)
{
  sub_1D5BBDC0C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t FormatLayoutViewRouteOption.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6ED6CF4()
{
  result = qword_1EC897D70;
  if (!qword_1EC897D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D70);
  }

  return result;
}

uint64_t sub_1D6ED6D68(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED6E98(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED6FB8(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED70DC(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED71C4(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED72D4(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED73CC(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED74F4(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED75F0(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED76FC(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7814(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7924(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7A28(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7B50(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7C78(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7D8C(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7E98(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7FB8(unsigned __int8 a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED80BC(unsigned __int8 a1)
{
  v1 = 0x7374756F79616CLL;
  v2 = 0x73656D656874;
  v3 = 0x6C6C6177796170;
  if (a1 != 4)
  {
    v3 = 0x756F72676B636162;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x73726564616568;
  if (a1 != 1)
  {
    v4 = 0x737265746F6F66;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6ED817C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6ED8494(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6ED81AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7374756F79616CLL;
  v5 = 0xE600000000000000;
  v6 = 0x73656D656874;
  v7 = 0xE700000000000000;
  v8 = 0x6C6C6177796170;
  if (v2 != 4)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEB0000000073646ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x73726564616568;
  if (v2 != 1)
  {
    v9 = 0x737265746F6F66;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
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

double sub_1D6ED8288(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D6ED8394()
{
  result = qword_1EC897D78;
  if (!qword_1EC897D78)
  {
    sub_1D6ED83EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D78);
  }

  return result;
}

void sub_1D6ED83EC()
{
  if (!qword_1EC893B98)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893B98);
    }
  }
}

unint64_t sub_1D6ED8440()
{
  result = qword_1EC897D80;
  if (!qword_1EC897D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D80);
  }

  return result;
}

unint64_t sub_1D6ED8494(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6ED84E0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D6ED87C8(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = a2;
  __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v14[0] = sub_1D725DDAC();
  v14[1] = v10;
  v11 = sub_1D7258AAC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1D5BF4D9C();
  v12 = sub_1D7263AAC();
  sub_1D6ED8820(v9);

  if ((v12 + 1) < 3)
  {
    return (3u >> ((v12 + 1) & 7)) & 1;
  }

  type metadata accessor for ComparisonResult(0);
  v15 = v12;
  result = sub_1D72648EC();
  __break(1u);
  return result;
}

uint64_t sub_1D6ED8654(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D6ED87C8(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = a2;
  __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v14[0] = sub_1D725DDAC();
  v14[1] = v10;
  v11 = sub_1D7258AAC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1D5BF4D9C();
  v12 = sub_1D7263AAC();
  sub_1D6ED8820(v9);

  if ((v12 + 1) < 3)
  {
    return (6u >> ((v12 + 1) & 7)) & 1;
  }

  type metadata accessor for ComparisonResult(0);
  v15 = v12;
  result = sub_1D72648EC();
  __break(1u);
  return result;
}

void sub_1D6ED87C8(uint64_t a1)
{
  if (!qword_1EDF18A48)
  {
    sub_1D7258AAC();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF18A48);
    }
  }
}

uint64_t sub_1D6ED8820(uint64_t a1)
{
  sub_1D6ED87C8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InternalErrorViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  *a1 = sub_1D725996C();
  swift_allocObject();
  a1[1] = sub_1D725996C();
  swift_allocObject();
  a1[2] = sub_1D725996C();
  swift_allocObject();
  a1[3] = sub_1D725996C();
  swift_allocObject();
  a1[4] = sub_1D725996C();
  swift_allocObject();
  a1[5] = sub_1D725996C();
  swift_allocObject();
  a1[6] = sub_1D725996C();
  swift_allocObject();
  result = sub_1D725996C();
  a1[7] = result;
  return result;
}

uint64_t sub_1D6ED8AB8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x72466E6F74747562;
    if (v1 != 6)
    {
      v5 = 0xD000000000000014;
    }

    v6 = 0xD000000000000012;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656D617266;
    v3 = 0x62614C726F727265;
    if (v1 != 2)
    {
      v3 = 0x62614C656C746974;
    }

    if (*v0)
    {
      v2 = 0xD000000000000012;
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
}

uint64_t sub_1D6ED8BE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6EDCD18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6ED8C08(uint64_t a1)
{
  v2 = sub_1D6ED9038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6ED8C44(uint64_t a1)
{
  v2 = sub_1D6ED9038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InternalErrorViewLayout.Attributes.encode(to:)(void *a1)
{
  sub_1D6EDD140(0, &qword_1EC897D88, sub_1D6ED9038, &type metadata for InternalErrorViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  v10 = v1[2];
  v31 = v1[3];
  v32 = v10;
  v11 = v1[4];
  v29 = v1[5];
  v30 = v11;
  v12 = v1[6];
  v27 = v1[7];
  v28 = v12;
  v13 = v1[8];
  v25 = v1[9];
  v26 = v13;
  v14 = v1[10];
  v23 = v1[11];
  v24 = v14;
  v15 = v1[12];
  v21 = v1[13];
  v22 = v15;
  v16 = v1[14];
  v19 = v1[15];
  v20 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED9038();
  sub_1D7264B5C();
  v17 = *v1;
  v34 = v1[1];
  v33 = v17;
  v35 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEAB18(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    v34 = v31;
    v33 = v32;
    v35 = 1;
    sub_1D726443C();
    v34 = v29;
    v33 = v30;
    v35 = 2;
    sub_1D726443C();
    v34 = v27;
    v33 = v28;
    v35 = 3;
    sub_1D726443C();
    v34 = v25;
    v33 = v26;
    v35 = 4;
    sub_1D726443C();
    v34 = v23;
    v33 = v24;
    v35 = 5;
    sub_1D726443C();
    v34 = v21;
    v33 = v22;
    v35 = 6;
    sub_1D726443C();
    v34 = v19;
    v33 = v20;
    v35 = 7;
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D6ED9038()
{
  result = qword_1EDF26C90;
  if (!qword_1EDF26C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C90);
  }

  return result;
}

uint64_t InternalErrorViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6EDD140(0, &qword_1EDF19BF8, sub_1D6ED9038, &type metadata for InternalErrorViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D6ED9038();
  sub_1D7264B0C();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v38 = 0;
    sub_1D5BEAB18(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v33 = v37;
    v34 = v36;
    v38 = 1;
    sub_1D726431C();
    v31 = v37;
    v32 = v36;
    v38 = 2;
    sub_1D726431C();
    v29 = v37;
    v30 = v36;
    v38 = 3;
    sub_1D726431C();
    v27 = v37;
    v28 = v36;
    v38 = 4;
    sub_1D726431C();
    v25 = v37;
    v26 = v36;
    v38 = 5;
    sub_1D726431C();
    v23 = v37;
    v24 = v36;
    v38 = 6;
    sub_1D726431C();
    v21 = v37;
    v22 = v36;
    v38 = 7;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v13 = v33;
    *a2 = v34;
    a2[1] = v13;
    v14 = v31;
    a2[2] = v32;
    a2[3] = v14;
    v15 = v29;
    a2[4] = v30;
    a2[5] = v15;
    v16 = v27;
    a2[6] = v28;
    a2[7] = v16;
    v17 = v25;
    a2[8] = v26;
    a2[9] = v17;
    v18 = v23;
    a2[10] = v24;
    a2[11] = v18;
    v19 = v21;
    a2[12] = v22;
    a2[13] = v19;
    v20 = v37;
    a2[14] = v36;
    a2[15] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1D6ED94C8(uint64_t a1)
{
  v2 = sub_1D6EDD3D0();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D6ED9534(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6EDD0A8();

  return sub_1D725A24C();
}

uint64_t InternalErrorViewLayout.Context.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void *InternalErrorViewLayout.Context.errorMessage.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

unint64_t sub_1D6ED963C()
{
  result = qword_1EDF26C70;
  if (!qword_1EDF26C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C70);
  }

  return result;
}

unint64_t sub_1D6ED9694()
{
  result = qword_1EC897D90;
  if (!qword_1EC897D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D90);
  }

  return result;
}

unint64_t sub_1D6ED96EC()
{
  result = qword_1EDF26C58;
  if (!qword_1EDF26C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C58);
  }

  return result;
}

unint64_t sub_1D6ED9744()
{
  result = qword_1EDF26C60;
  if (!qword_1EDF26C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C60);
  }

  return result;
}

unint64_t sub_1D6ED979C()
{
  result = qword_1EDF26C78;
  if (!qword_1EDF26C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C78);
  }

  return result;
}

id sub_1D6ED97F0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.756862745 green:0.431372549 blue:1.0 alpha:1.0];
  qword_1EDFFCA68 = result;
  return result;
}

void sub_1D6ED9840(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = MEMORY[0x1E69E6720];
  sub_1D6EDD234(0, &qword_1EDF2F520, type metadata accessor for FormatLayoutError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v116 = &v116 - v13;
  v117 = type metadata accessor for InternalErrorViewModel(0);
  MEMORY[0x1EEE9AC00](v117, v14);
  v118 = (&v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = sub_1D7259F5C();
  v16 = *(v129 - 1);
  MEMORY[0x1EEE9AC00](v129, v17);
  v19 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EDD234(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, v10);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = (&v116 - v26);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a4;
  v28 = *(type metadata accessor for InternalErrorViewLayout.Context(0) + 48);
  v127 = a5;
  v124 = a3;
  sub_1D6EDD308(a3, a5 + v28, type metadata accessor for InternalErrorViewModel);
  v29 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);

  v30 = [v29 init];
  [v30 setAlignment_];
  sub_1D6EDD234(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  v132 = v31;
  inited = swift_initStackObject();
  v130 = xmmword_1D7279970;
  *(inited + 16) = xmmword_1D7279970;
  v33 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v123 = v33;
  v131 = a4;
  sub_1D6AEA8E8(v27);
  v34 = type metadata accessor for DebugGroupLayoutKey(0);
  if ((*(*(v34 - 8) + 48))(v27, 1, v34) == 1)
  {
    sub_1D6EDD298(v27, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
LABEL_4:
    v38 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    v39 = sub_1D726203C();
    v40 = sub_1D72633CC();

    goto LABEL_5;
  }

  sub_1D6EDD308(v27 + *(v34 + 28), v23, type metadata accessor for GroupLayoutContext);
  sub_1D6EDD370(v27, type metadata accessor for DebugGroupLayoutKey);
  v35 = v129;
  (*(v16 + 16))(v19, v23, v129);
  sub_1D6EDD370(v23, type metadata accessor for GroupLayoutContext);
  v36 = sub_1D7259EBC();
  (*(v16 + 8))(v19, v35);
  v37 = [v36 horizontalSizeClass];

  if (v37 < 2)
  {
    goto LABEL_4;
  }

  v38 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  if (v37 == 2)
  {
    v40 = sub_1D72633CC();
  }

  else
  {
    v115 = sub_1D726203C();
    v40 = sub_1D72633CC();
  }

LABEL_5:
  *(inited + 40) = v40;
  v41 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v38;
  *(inited + 72) = v41;
  v42 = objc_opt_self();
  v122 = v41;
  v129 = v42;
  v43 = [v42 whiteColor];
  v44 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v43;
  v45 = *MEMORY[0x1E69DB688];
  v126 = v44;
  *(inited + 104) = v44;
  *(inited + 112) = v45;
  v128 = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 144) = v128;
  *(inited + 120) = v30;
  v46 = v45;
  v120 = v30;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  v48 = v47;
  swift_arrayDestroy();
  v49 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v50 = sub_1D726203C();
  type metadata accessor for Key(0);
  v52 = v51;
  v53 = sub_1D5BEAB18(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
  v125 = v52;
  v121 = v53;
  v54 = sub_1D7261D2C();

  v55 = [v49 initWithString:v50 attributes:v54];

  v56 = v127;
  v127[3] = v55;
  v57 = v118;
  sub_1D6EDD308(v124, v118, type metadata accessor for InternalErrorViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v119 = v48;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6EDD370(v57, type metadata accessor for InternalErrorViewModel);
    v59 = 0;
    goto LABEL_16;
  }

  v133 = *v57;
  v60 = v133;
  v61 = v133;
  sub_1D5BA6EF4();
  v62 = type metadata accessor for FormatLayoutError(0);
  v63 = v116;
  if (swift_dynamicCast())
  {
    (*(*(v62 - 8) + 56))(v63, 0, 1, v62);
    if (swift_getEnumCaseMultiPayload() == 64)
    {
      v64 = *v63;
      v117 = *(v63 + 8);
      v118 = v64;

      v65 = swift_initStackObject();
      *(v65 + 16) = v130;
      v66 = v123;
      *(v65 + 32) = v123;
      v67 = v66;
      sub_1D6EDA7B0((v65 + 40));
      v68 = v122;
      *(v65 + 72) = v122;
      v69 = v68;
      *(v65 + 80) = [v129 whiteColor];
      *(v65 + 104) = v126;
      *(v65 + 112) = v46;
      *(v65 + 144) = v128;
      v70 = v120;
      *(v65 + 120) = v120;
      v71 = v46;
      v72 = v70;
      sub_1D5C09CEC(v65);
      swift_setDeallocating();
      swift_arrayDestroy();
      v73 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v74 = sub_1D726203C();

      v75 = sub_1D7261D2C();

      v59 = [v73 initWithString:v74 attributes:v75];

      goto LABEL_16;
    }

    sub_1D6EDD370(v63, type metadata accessor for FormatLayoutError);
  }

  else
  {

    (*(*(v62 - 8) + 56))(v63, 1, 1, v62);
    sub_1D6EDD298(v63, &qword_1EDF2F520, type metadata accessor for FormatLayoutError);
  }

  v59 = 0;
LABEL_16:
  v56[4] = v59;
  v76 = swift_initStackObject();
  *(v76 + 16) = v130;
  v77 = v123;
  *(v76 + 32) = v123;
  v118 = v77;
  sub_1D6EDAAB8((v76 + 40));
  v78 = v122;
  *(v76 + 72) = v122;
  v122 = v78;
  *(v76 + 80) = [v129 whiteColor];
  v79 = v126;
  *(v76 + 104) = v126;
  *(v76 + 112) = v46;
  *(v76 + 144) = v128;
  v80 = v120;
  *(v76 + 120) = v120;
  v123 = v46;
  v120 = v80;
  sub_1D5C09CEC(v76);
  swift_setDeallocating();
  swift_arrayDestroy();
  v81 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v82 = sub_1D726203C();
  v83 = sub_1D7261D2C();

  v84 = [v81 initWithString:v82 attributes:v83];

  v56[5] = v84;
  v85 = swift_initStackObject();
  *(v85 + 16) = v130;
  v86 = v118;
  *(v85 + 32) = v118;
  v87 = v86;
  sub_1D6EDADCC((v85 + 40));
  v88 = v122;
  *(v85 + 72) = v122;
  v122 = v88;
  *(v85 + 80) = [v129 whiteColor];
  v89 = v123;
  *(v85 + 104) = v79;
  *(v85 + 112) = v89;
  *(v85 + 144) = v128;
  v90 = v120;
  *(v85 + 120) = v120;
  v118 = v90;
  sub_1D5C09CEC(v85);
  swift_setDeallocating();
  swift_arrayDestroy();
  v91 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v92 = sub_1D726203C();
  v93 = sub_1D7261D2C();

  v94 = [v91 initWithString:v92 attributes:v93];

  v127[6] = v94;
  v95 = swift_initStackObject();
  *(v95 + 16) = xmmword_1D7270C10;
  v120 = v87;
  *(v95 + 32) = v87;
  v96 = [objc_opt_self() systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB970]];
  v97 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(v95 + 40) = v96;
  v98 = v122;
  *(v95 + 64) = v97;
  *(v95 + 72) = v98;
  if (qword_1EDF26C50 != -1)
  {
    swift_once();
  }

  v99 = qword_1EDFFCA68;
  v100 = v126;
  *(v95 + 104) = v126;
  *(v95 + 80) = v99;
  v101 = v99;
  sub_1D5C09CEC(v95);
  swift_setDeallocating();
  swift_arrayDestroy();
  v102 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v103 = sub_1D726203C();
  v104 = sub_1D7261D2C();

  v105 = [v102 initWithString:v103 attributes:v104];

  v106 = v127;
  v127[7] = v105;
  v107 = swift_initStackObject();
  *(v107 + 16) = v130;
  *(v107 + 32) = v120;
  sub_1D6EDB0E0((v107 + 40));

  *(v107 + 72) = v122;
  *(v107 + 80) = [v129 whiteColor];
  v108 = v123;
  *(v107 + 104) = v100;
  *(v107 + 112) = v108;
  *(v107 + 144) = v128;
  v109 = v118;
  *(v107 + 120) = v118;
  v110 = v109;
  sub_1D5C09CEC(v107);
  swift_setDeallocating();
  swift_arrayDestroy();
  v111 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v112 = sub_1D726203C();
  v113 = sub_1D7261D2C();

  v114 = [v111 initWithString:v112 attributes:v113];

  sub_1D6EDD370(v124, type metadata accessor for InternalErrorViewModel);
  v106[8] = v114;
}

uint64_t sub_1D6EDA7B0@<X0>(void *a1@<X8>)
{
  v2 = sub_1D7259F5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EDD234(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - v13;
  sub_1D6AEA8E8((&v21 - v13));
  v15 = type metadata accessor for DebugGroupLayoutKey(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1D6EDD298(v14, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
    v16 = 13.0;
  }

  else
  {
    sub_1D6EDD308(&v14[*(v15 + 28)], v10, type metadata accessor for GroupLayoutContext);
    sub_1D6EDD370(v14, type metadata accessor for DebugGroupLayoutKey);
    (*(v3 + 16))(v6, v10, v2);
    sub_1D6EDD370(v10, type metadata accessor for GroupLayoutContext);
    v17 = sub_1D7259EBC();
    (*(v3 + 8))(v6, v2);
    v18 = [v17 horizontalSizeClass];

    v16 = 13.0;
    if (v18 <= 2)
    {
      v16 = dbl_1D736C690[v18];
    }
  }

  v19 = [objc_opt_self() italicSystemFontOfSize_];
  result = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_1D6EDAAB8@<X0>(void *a1@<X8>)
{
  v2 = sub_1D7259F5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EDD234(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - v13;
  sub_1D6AEA8E8((&v21 - v13));
  v15 = type metadata accessor for DebugGroupLayoutKey(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1D6EDD298(v14, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
    v16 = 15.0;
  }

  else
  {
    sub_1D6EDD308(&v14[*(v15 + 28)], v10, type metadata accessor for GroupLayoutContext);
    sub_1D6EDD370(v14, type metadata accessor for DebugGroupLayoutKey);
    (*(v3 + 16))(v6, v10, v2);
    sub_1D6EDD370(v10, type metadata accessor for GroupLayoutContext);
    v17 = sub_1D7259EBC();
    (*(v3 + 8))(v6, v2);
    v18 = [v17 horizontalSizeClass];

    v16 = 15.0;
    if (v18 <= 2)
    {
      v16 = dbl_1D736C678[v18];
    }
  }

  v19 = [objc_opt_self() systemFontOfSize:v16 weight:*MEMORY[0x1E69DB970]];
  result = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_1D6EDADCC@<X0>(void *a1@<X8>)
{
  v2 = sub_1D7259F5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EDD234(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - v13;
  sub_1D6AEA8E8((&v21 - v13));
  v15 = type metadata accessor for DebugGroupLayoutKey(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1D6EDD298(v14, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
    v16 = 13.0;
  }

  else
  {
    sub_1D6EDD308(&v14[*(v15 + 28)], v10, type metadata accessor for GroupLayoutContext);
    sub_1D6EDD370(v14, type metadata accessor for DebugGroupLayoutKey);
    (*(v3 + 16))(v6, v10, v2);
    sub_1D6EDD370(v10, type metadata accessor for GroupLayoutContext);
    v17 = sub_1D7259EBC();
    (*(v3 + 8))(v6, v2);
    v18 = [v17 horizontalSizeClass];

    v16 = 13.0;
    if (v18 <= 2)
    {
      v16 = dbl_1D736C690[v18];
    }
  }

  v19 = [objc_opt_self() systemFontOfSize:v16 weight:*MEMORY[0x1E69DB970]];
  result = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_1D6EDB0E0@<X0>(void *a1@<X8>)
{
  v2 = sub_1D7259F5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EDD234(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - v13;
  sub_1D6AEA8E8((&v21 - v13));
  v15 = type metadata accessor for DebugGroupLayoutKey(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1D6EDD298(v14, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
    v16 = 13.0;
  }

  else
  {
    sub_1D6EDD308(&v14[*(v15 + 28)], v10, type metadata accessor for GroupLayoutContext);
    sub_1D6EDD370(v14, type metadata accessor for DebugGroupLayoutKey);
    (*(v3 + 16))(v6, v10, v2);
    sub_1D6EDD370(v10, type metadata accessor for GroupLayoutContext);
    v17 = sub_1D7259EBC();
    (*(v3 + 8))(v6, v2);
    v18 = [v17 horizontalSizeClass];

    v16 = 13.0;
    if (v18 <= 2)
    {
      v16 = dbl_1D736C690[v18];
    }
  }

  v19 = [objc_opt_self() systemFontOfSize:v16 weight:*MEMORY[0x1E69DB958]];
  result = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_1D6EDB408(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6EDB428(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 256) = v3;
  return result;
}

unint64_t sub_1D6EDB4E0()
{
  result = qword_1EC897D98;
  if (!qword_1EC897D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D98);
  }

  return result;
}

unint64_t sub_1D6EDB538()
{
  result = qword_1EDF26C80;
  if (!qword_1EDF26C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C80);
  }

  return result;
}

unint64_t sub_1D6EDB590()
{
  result = qword_1EDF26C88;
  if (!qword_1EDF26C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C88);
  }

  return result;
}

uint64_t sub_1D6EDB5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6EDD140(0, &qword_1EDF3BEF0, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v30[-v11];
  v33 = a1;
  (*(v8 + 104))(&v30[-v11], *MEMORY[0x1E69D7460], v7, v10);
  sub_1D6EDD010(0);
  sub_1D6EDD140(0, &qword_1EDF3C0B8, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D70D8]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7273AE0;
  v18 = (v17 + v16);
  v19 = sub_1D7259E8C();
  MEMORY[0x1DA6FA480](v19, 0.0, v20, v21, v22, v23);
  sub_1D7262E1C();
  *v18 = v24;
  v18[1] = v25;
  v18[2] = v26;
  v18[3] = v27;
  (*(v15 + 104))(v18, *MEMORY[0x1E69D7048], v14);
  v31 = a2;
  v32 = a3;
  v28 = MEMORY[0x1E69D7150];
  sub_1D6EDD1B0(0, &qword_1EDF3C048, MEMORY[0x1E69D7150]);
  sub_1D6EDD0FC(&qword_1EDF3C050, &qword_1EDF3C048, v28, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1D6EDB900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  sub_1D6EDD140(0, &qword_1EDF3BEF0, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D74B0]);
  v22 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - v7;
  v24 = a1;
  sub_1D6EDBC44((&v21 - v7));
  sub_1D6EDD010(0);
  sub_1D6EDD140(0, &qword_1EDF3C0B8, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D70D8]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7270C10;
  v15 = (v14 + v13);
  *v15 = 0x4071800000000000;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x1E69D70C0], v10);
  v17 = *MEMORY[0x1E69D7060];
  sub_1D6EDD140(0, &qword_1EDF3C0E0, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v18 - 8) + 104))(&v15[v12], v17, v18);
  v16(&v15[v12], *MEMORY[0x1E69D7080], v10);
  v23 = v21;
  v19 = MEMORY[0x1E69D6F38];
  sub_1D6EDD1B0(0, &qword_1EDF3C1A8, MEMORY[0x1E69D6F38]);
  sub_1D6EDD0FC(&qword_1EDF3C1B0, &qword_1EDF3C1A8, v19, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();

  return (*(v5 + 8))(v8, v22);
}

uint64_t sub_1D6EDBC44@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D7259EBC();
  v4 = [v3 horizontalSizeClass];

  if (v4)
  {
    v5 = v4 == 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v4 != 1)
  {
    v7 = swift_allocObject();
    sub_1D7259E6C();
    *(v7 + 16) = v8 * 0.6;
    *a1 = v7;
    v6 = MEMORY[0x1E69D7480];
  }

  else
  {
    v6 = MEMORY[0x1E69D7460];
  }

  v9 = *v6;
  sub_1D6EDD140(0, &qword_1EDF3BEF0, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D74B0]);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1, v9, v10);
}

uint64_t sub_1D6EDBD6C(uint64_t a1, id *a2)
{
  v104 = a2;
  v116 = sub_1D6EDCFBC;
  sub_1D6EDD140(0, &qword_1EDF3BEF0, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (v99 - v7);
  v125 = a1;
  v123 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 0x4038000000000000;
  *v8 = v9;
  v122 = *MEMORY[0x1E69D7488];
  v10 = *(v5 + 104);
  v105 = v5 + 104;
  v121 = v10;
  v100 = v4;
  v10(v8);
  v11 = MEMORY[0x1E69D6F38];
  sub_1D6EDD1B0(0, &qword_1EDF3C1A8, MEMORY[0x1E69D6F38]);
  v124 = v12;
  v120 = sub_1D6EDD0FC(&qword_1EDF3C1B0, &qword_1EDF3C1A8, v11, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v13 = *(v5 + 8);
  v103 = v5 + 8;
  v119 = v13;
  v13(v8, v4);
  v125 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D5EF9444(0);
  v15 = v14;
  v16 = swift_allocBox();
  v18 = v17;
  v19 = *(v15 + 48);
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4040000000000000;
  *v18 = v20;
  v21 = *MEMORY[0x1E69D71F0];
  v22 = sub_1D725A09C();
  v23 = *(*(v22 - 8) + 104);
  v23(v18, v21, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = 0x4040000000000000;
  *(v18 + v19) = v24;
  v23((v18 + v19), v21, v22);
  *v8 = v16;
  v25 = v121;
  (v121)(v8, *MEMORY[0x1E69D7468], v100);
  sub_1D6EDD010(0);
  v118 = v26;
  v27 = v116;
  sub_1D6EDD140(0, &qword_1EDF3C0B8, v116, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D70D8]);
  v117 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 72);
  v114 = *(v29 + 80);
  v115 = v30;
  v31 = v29;
  v106 = (v114 + 32) & ~v114;
  v32 = v106;
  v33 = swift_allocObject();
  v102 = xmmword_1D7273AE0;
  *(v33 + 16) = xmmword_1D7273AE0;
  v113 = *MEMORY[0x1E69D7060];
  v34 = v113;
  sub_1D6EDD140(0, &qword_1EDF3C0E0, v27, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D7078]);
  v112 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 104);
  v110 = v36 + 104;
  v111 = v37;
  v37(v33 + v32, v34, v35);
  v108 = *MEMORY[0x1E69D7080];
  v38 = *(v31 + 104);
  v116 = (v31 + 104);
  v107 = v38;
  v38(v33 + v32);
  v109 = sub_1D5BEAB18(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  v39 = v100;
  v40 = v119;
  v119(v8, v100);
  v41 = v123;
  v125 = v123;
  v42 = swift_allocObject();
  *(v42 + 16) = 0x4020000000000000;
  *v8 = v42;
  (v25)(v8, v122, v39);
  sub_1D7259A9C();
  v40(v8, v39);
  v125 = v41;
  swift_getKeyPath();
  v43 = swift_allocObject();
  v44 = v104;
  v45 = v104[3];
  *(v43 + 16) = v45;
  *v8 = v43;
  LODWORD(KeyPath) = *MEMORY[0x1E69D73E8];
  v25(v8);
  v46 = v106;
  v47 = swift_allocObject();
  *(v47 + 16) = v102;
  v111(v47 + v46, v113, v112);
  v107(v47 + v46, v108, v117);
  v48 = v45;
  sub_1D7259A7C();

  v119(v8, v39);
  v49 = v44[4];
  if (v49)
  {
    v125 = v123;
    swift_getKeyPath();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *v8 = v50;
    v51 = v121;
    (v121)(v8, KeyPath, v39);
    v52 = v106;
    v53 = swift_allocObject();
    *(v53 + 16) = v102;
    v111(v53 + v52, v113, v112);
    v107(v53 + v52, v108, v117);
    v54 = v49;
    sub_1D7259A7C();

    v55 = v119;
    v119(v8, v39);
    v125 = v123;
    v56 = swift_allocObject();
    *(v56 + 16) = 0x4020000000000000;
    *v8 = v56;
    v51(v8, v122, v39);
    sub_1D7259A9C();

    v55(v8, v39);
  }

  v57 = v123;
  v125 = v123;
  swift_getKeyPath();
  v58 = swift_allocObject();
  v59 = v104[5];
  *(v58 + 16) = v59;
  *v8 = v58;
  v60 = v121;
  (v121)(v8, KeyPath, v39);
  v61 = v106;
  v62 = swift_allocObject();
  *(v62 + 16) = v102;
  v111(v62 + v61, v113, v112);
  v107(v62 + v61, v108, v117);
  v63 = v59;
  sub_1D7259A7C();

  v64 = v119;
  v119(v8, v39);
  v125 = v57;
  v65 = swift_allocObject();
  *(v65 + 16) = 0x4030000000000000;
  *v8 = v65;
  v60(v8, v122, v39);
  sub_1D7259A9C();
  v64(v8, v39);
  v125 = v57;
  v99[1] = swift_getKeyPath();
  v66 = swift_allocObject();
  v99[0] = v104[7];
  *(v66 + 16) = v99[0];
  *v8 = v66;
  v60(v8, KeyPath, v39);
  v67 = v115;
  v68 = 2 * v115;
  v69 = v106;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1D7279970;
  *(v70 + v69) = 0x406B800000000000;
  v71 = v70 + v69;
  v72 = v117;
  v73 = v107;
  v107(v71, *MEMORY[0x1E69D70C0], v117);
  *(v71 + v67) = 0x4030000000000000;
  v74 = *MEMORY[0x1E69D7240];
  v75 = sub_1D725A13C();
  (*(*(v75 - 8) + 104))(v71 + v67, v74, v75);
  v76 = *MEMORY[0x1E69D72D8];
  v77 = sub_1D725A29C();
  (*(*(v77 - 8) + 104))(v71 + v67, v76, v77);
  v73(v71 + v67, *MEMORY[0x1E69D6FD0], v72);
  v111(v71 + v68, v113, v112);
  v73(v71 + v68, v108, v72);
  v78 = v99[0];
  sub_1D7259A7C();

  v79 = v119;
  v119(v8, v39);
  v80 = v123;
  v125 = v123;
  v81 = swift_allocObject();
  *(v81 + 16) = 0x4030000000000000;
  *v8 = v81;
  v82 = v121;
  (v121)(v8, v122, v39);
  sub_1D7259A9C();
  v79(v8, v39);
  v125 = v80;
  swift_getKeyPath();
  v83 = swift_allocObject();
  v84 = v104[6];
  *(v83 + 16) = v84;
  *v8 = v83;
  v82(v8, KeyPath, v39);
  v85 = v106;
  v86 = swift_allocObject();
  *(v86 + 16) = v102;
  v111(v86 + v85, v113, v112);
  v107(v86 + v85, v108, v117);
  v87 = v84;
  sub_1D7259A7C();

  v88 = v119;
  v119(v8, v39);
  v89 = v123;
  v125 = v123;
  v90 = swift_allocObject();
  *(v90 + 16) = 0x4030000000000000;
  *v8 = v90;
  v91 = v121;
  (v121)(v8, v122, v39);
  sub_1D7259A9C();
  v88(v8, v39);
  v125 = v89;
  swift_getKeyPath();
  v92 = swift_allocObject();
  v93 = v104[8];
  *(v92 + 16) = v93;
  *v8 = v92;
  v91(v8, KeyPath, v39);
  v94 = v106;
  v95 = swift_allocObject();
  *(v95 + 16) = v102;
  v111(v95 + v94, v113, v112);
  v107(v95 + v94, v108, v117);
  v96 = v93;
  sub_1D7259A7C();

  v88(v8, v39);
  v125 = v123;
  v97 = swift_allocObject();
  *(v97 + 16) = 0x4030000000000000;
  *v8 = v97;
  (v121)(v8, v122, v39);
  sub_1D7259A9C();
  return (v88)(v8, v39);
}

uint64_t sub_1D6EDCD18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73F60A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x62614C726F727265 && a2 == 0xEF656D6172466C65 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x62614C656C746974 && a2 == 0xEF656D6172466C65 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73F60C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73F60E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72466E6F74747562 && a2 == 0xEB00000000656D61 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73F6100 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D72646CC();

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

unint64_t sub_1D6EDCFBC()
{
  result = qword_1EDF26C40;
  if (!qword_1EDF26C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C40);
  }

  return result;
}

void sub_1D6EDD010(uint64_t a1)
{
  if (!qword_1EDF19B60)
  {
    sub_1D6EDD140(255, &qword_1EDF3C0B8, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19B60);
    }
  }
}

unint64_t sub_1D6EDD0A8()
{
  result = qword_1EDF26C68;
  if (!qword_1EDF26C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C68);
  }

  return result;
}

uint64_t sub_1D6EDD0FC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6EDD1B0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6EDD140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D6EDD1B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for InternalErrorViewLayout;
    v8[1] = &type metadata for InternalErrorViewLayout.Attributes;
    v8[2] = sub_1D6EDCFBC();
    v8[3] = sub_1D6EDD0A8();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6EDD234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6EDD298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6EDD234(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6EDD308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6EDD370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6EDD3D0()
{
  result = qword_1EC897DA0;
  if (!qword_1EC897DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897DA0);
  }

  return result;
}

uint64_t sub_1D6EDD434(void *a1)
{
  v3 = v1;
  sub_1D6EE13F4(0, &qword_1EC897E58, sub_1D6EE13A0, &type metadata for A12_V11.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EE13A0();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6EE145C(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6EDD67C(uint64_t a1)
{
  v2 = sub_1D6EE13A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EDD6B8(uint64_t a1)
{
  v2 = sub_1D6EE13A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6EDD6F4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6EE1100(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6EDD754(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6EE0DA0();

  return sub_1D725A24C();
}

uint64_t sub_1D6EDD7D0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6EE13F4(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6EDD88C(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v114 = a2;
  v118 = a1;
  v103 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v115 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v119 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v113 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v131 = &v102 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v116 = &v102 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for GroupLayoutContext(0);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v23);
  v112 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v102 - v27;
  v108 = &v102 - v27;
  v117 = type metadata accessor for GroupLayoutBindingContext(0);
  v29 = *(v117 - 1);
  MEMORY[0x1EEE9AC00](v117, v30);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v107 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v118, v32, type metadata accessor for GroupLayoutBindingContext);
  v109 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v114, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v106 = sub_1D725893C();
  v105 = v35;
  (*(v19 + 8))(v22, v18);
  v129 = &type metadata for A12_V11;
  v36 = sub_1D5ECEB14();
  v130 = v36;
  LOBYTE(v127) = v33;
  *(&v127 + 1) = v34;
  v128 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v120[0] = sub_1D7264C5C();
  v120[1] = v39;
  v125 = 95;
  v126 = 0xE100000000000000;
  v123 = 45;
  v124 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v112;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v105;
  *v44 = v106;
  v44[1] = v45;
  sub_1D5B68374(&v127, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v117);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v108, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v110 + 56);
  v110 = v37;
  v48(v37 + v47, 0, 1, v111);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  v129 = &type metadata for A12_V11;
  v130 = v36;
  LOBYTE(v127) = v107;
  v49 = v38;
  *(&v127 + 1) = v38;
  v128 = v5;
  sub_1D5BE3ED8(v114, v43, v109);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v51 = v50;
  inited = swift_initStackObject();
  v53 = MEMORY[0x1E69E7CC0];
  v114 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v54 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v55 = sub_1D5C0F8FC(0, 1, 1, v53);
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);
  v58 = (v57 + 1);
  if (v57 >= v56 >> 1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    *(v55 + 16) = v58;
    v59 = v55 + 16 * v57;
    *(v59 + 32) = sub_1D63106DC;
    *(v59 + 40) = 0;
    *v54 = v55;
    swift_endAccess();
    v57 = v117[14];
    v60 = *&v118[v57];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v58 = sub_1D5C14D80(v63), , v58))
    {
      v109 = v57;
      v111 = v51;
      v51 = *(v58 + 2);
      if (v51)
      {
        v43 = 0;
        v57 = MEMORY[0x1E69E7CC0];
        v54 = v115;
        v55 = v116;
        while (1)
        {
          v56 = *(v58 + 2);
          if (v43 >= v56)
          {
            break;
          }

          v36 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v53 = *(v54 + 72);
          sub_1D5BE3ED8(&v58[v36 + v53 * v43], v55, type metadata accessor for FeedHeadline);
          if ((*(v55 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v55, v131, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v120[0] = v57;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v57 + 16) + 1, 1);
              v54 = v115;
              v57 = v120[0];
            }

            v37 = *(v57 + 16);
            v65 = *(v57 + 24);
            if (v37 >= v65 >> 1)
            {
              sub_1D5C0F91C((v65 > 1), v37 + 1, 1);
              v54 = v115;
              v57 = v120[0];
            }

            *(v57 + 16) = v37 + 1;
            sub_1D5BDA904(v131, v57 + v36 + v37 * v53, type metadata accessor for FeedHeadline);
            v55 = v116;
          }

          else
          {
            sub_1D5BE780C(v55, type metadata accessor for FeedHeadline);
          }

          if (v51 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

      v57 = MEMORY[0x1E69E7CC0];
LABEL_22:
      if ((*v118 & 1) == 0)
      {

        sub_1D62F071C(v57);
        v70 = v69;

        v57 = v70;
      }

      v43 = v112;
      v53 = MEMORY[0x1E69E7CC0];
      v51 = v111;
      v71 = *&v118[v117[18]];
      v72 = *&v118[v117[19]];
      if (__OFSUB__(v71, v72))
      {
        goto LABEL_70;
      }

      v73 = sub_1D5C0FAD4(v57, v71 - v72);
      v36 = sub_1D5C11E10(&unk_1F5113BD0, v73, v58);

      if (v36)
      {
      }

      else
      {
        v36 = sub_1D5C11E10(&unk_1F5113BD0, v57, v58);

        if (!v36)
        {
          v120[0] = &unk_1F5113BD0;
          v4 = v104;
          sub_1D5E239F4(v120);
          if (v4)
          {
            goto LABEL_74;
          }

          if (!*(v120[0] + 2))
          {
            goto LABEL_72;
          }

          v98 = *(v120[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v99, "FeedHeadline");
          v99[13] = 0;
          *(v99 + 7) = -5120;
          *(v99 + 2) = 0;
          *(v99 + 3) = 0;
          *(v99 + 4) = 4;
          *(v99 + 5) = v98;
          *(v99 + 6) = 0;
          *(v99 + 7) = 0;
          v99[64] = 0;
          swift_willThrow();
          goto LABEL_63;
        }
      }

      strcpy(v120, "FeedHeadline");
      BYTE5(v120[1]) = 0;
      HIWORD(v120[1]) = -5120;
      v121 = 0;
      v122 = 0;

      v75 = sub_1D5C107C4(v74);

      sub_1D5BDACA8(v120, v75);
      swift_setDeallocating();

      v57 = v109;
    }

    else
    {
      if (qword_1F5113BF0)
      {
        v120[0] = &unk_1F5113BD0;
        v4 = v104;
        sub_1D5E239F4(v120);
        if (v4)
        {
          goto LABEL_74;
        }

        v66 = *(v120[0] + 2);
        if (v66)
        {
          v67 = *(v120[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v68, "FeedHeadline");
          v68[13] = 0;
          *(v68 + 7) = -5120;
          *(v68 + 2) = 0;
          *(v68 + 3) = 0;
          *(v68 + 4) = 4;
          *(v68 + 5) = v67;
          *(v68 + 6) = 0;
          *(v68 + 7) = 0;
          v68[64] = 0;
          swift_willThrow();
LABEL_46:

          sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
          __swift_destroy_boxed_opaque_existential_1(&v127);
          return;
        }

        __break(1u);
LABEL_68:
        v58 = sub_1D5C0F8FC((v66 > 1), v37, 1, v58);
        goto LABEL_30;
      }

      v36 = MEMORY[0x1E69E7CC0];
    }

    v76 = swift_initStackObject();
    v131 = v76;
    *(v76 + 16) = v53;
    v60 = (v76 + 16);
    swift_beginAccess();
    v58 = sub_1D5C0F8FC(0, 1, 1, v53);
    v55 = *(v58 + 2);
    v66 = *(v58 + 3);
    v37 = v55 + 1;
    if (v55 >= v66 >> 1)
    {
      goto LABEL_68;
    }

LABEL_30:
    *(v58 + 2) = v37;
    v77 = &v58[16 * v55];
    *(v77 + 4) = sub_1D63106DC;
    *(v77 + 5) = 0;
    *v60 = v58;
    swift_endAccess();
    if (!*(*&v118[v57] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v78 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v79);

    if (!v37)
    {
      break;
    }

    v116 = v36;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v58 = MEMORY[0x1E69E7CC0];
LABEL_49:
      v86 = v118;
      if ((*v118 & 1) == 0)
      {

        sub_1D62F071C(v58);
        v88 = v87;

        v58 = v88;
      }

      v89 = *&v86[v117[18]];
      v90 = *&v86[v117[19]];
      if (__OFSUB__(v89, v90))
      {
        goto LABEL_71;
      }

      v91 = sub_1D5C0FAD4(v58, v89 - v90);
      v85 = sub_1D5C11E10(&unk_1F5113BF8, v91, v37);

      if (v85)
      {

LABEL_55:
        strcpy(v120, "FeedHeadline");
        BYTE5(v120[1]) = 0;
        HIWORD(v120[1]) = -5120;
        v121 = 0;
        v122 = 0;

        v93 = sub_1D5C107C4(v92);

        sub_1D5BDACA8(v120, v93);
        swift_setDeallocating();

        v43 = v112;
        v36 = v116;
        goto LABEL_56;
      }

      v85 = sub_1D5C11E10(&unk_1F5113BF8, v58, v37);

      if (v85)
      {
        goto LABEL_55;
      }

      v120[0] = &unk_1F5113BF8;
      v4 = v104;
      sub_1D5E239F4(v120);
      if (v4)
      {
        goto LABEL_74;
      }

      v43 = v112;
      if (!*(v120[0] + 2))
      {
        goto LABEL_73;
      }

      v100 = *(v120[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v101, "FeedHeadline");
      v101[13] = 0;
      *(v101 + 7) = -5120;
      *(v101 + 2) = 0;
      *(v101 + 3) = 0;
      *(v101 + 4) = 0;
      *(v101 + 5) = v100;
      *(v101 + 6) = 0;
      *(v101 + 7) = 0;
      v101[64] = 0;
      swift_willThrow();
LABEL_63:
      swift_setDeallocating();
      goto LABEL_46;
    }

    v36 = 0;
    v58 = MEMORY[0x1E69E7CC0];
    v54 = v115;
    while (1)
    {
      v56 = *(v37 + 16);
      if (v36 >= v56)
      {
        break;
      }

      v53 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v51 = *(v54 + 72);
      v80 = v113;
      sub_1D5BE3ED8(v37 + v53 + v51 * v36, v113, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v80, v119, type metadata accessor for FeedHeadline);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v120[0] = v58;
      if ((v81 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v58 + 2) + 1, 1);
        v54 = v115;
        v58 = v120[0];
      }

      v55 = *(v58 + 2);
      v82 = *(v58 + 3);
      v57 = v55 + 1;
      if (v55 >= v82 >> 1)
      {
        sub_1D5C0F91C((v82 > 1), v55 + 1, 1);
        v54 = v115;
        v58 = v120[0];
      }

      ++v36;
      *(v58 + 2) = v57;
      sub_1D5BDA904(v119, &v58[v53 + v55 * v51], type metadata accessor for FeedHeadline);
      if (v43 == v36)
      {
        goto LABEL_49;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    v55 = sub_1D5C0F8FC((v56 > 1), v58, 1, v55);
  }

  if (!qword_1F5113C18)
  {

    v85 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v120[0] = v36;
    sub_1D5C122E4(v85);
    v94 = v120[0];
    v95 = type metadata accessor for A12_V11.Bound(0);
    v96 = v103;
    v103[3] = v95;
    v96[4] = sub_1D6EE145C(&qword_1EC897DB8, type metadata accessor for A12_V11.Bound, &unk_1D736C820);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
    *boxed_opaque_existential_1 = v110;
    sub_1D5B63F14(&v127, (boxed_opaque_existential_1 + 1));
    sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v95 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v95 + 28)) = v94;
    return;
  }

  v120[0] = &unk_1F5113BF8;
  v4 = v104;
  sub_1D5E239F4(v120);
  if (!v4)
  {

    if (*(v120[0] + 2))
    {
      v83 = *(v120[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v84, "FeedHeadline");
      v84[13] = 0;
      *(v84 + 7) = -5120;
      *(v84 + 2) = 0;
      *(v84 + 3) = 0;
      *(v84 + 4) = 0;
      *(v84 + 5) = v83;
      *(v84 + 6) = 0;
      *(v84 + 7) = 0;
      v84[64] = 0;
      swift_willThrow();
      goto LABEL_46;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

LABEL_74:

  __break(1u);
}

void sub_1D6EDEA38(_BYTE *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_1D725A36C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V11.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v43);
  sub_1D5B68374(v12 + 56, v42);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v43, v15 + 16);
  sub_1D5B63F14(v42, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v41[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v41, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  __swift_destroy_boxed_opaque_existential_1((v15 + 56));
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v42);
  sub_1D5B68374(v16 + 56, v41);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v42, v18 + 16);
  sub_1D5B63F14(v41, v18 + 56);
  *(v18 + 96) = v17;
  v40[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v40, v43);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v43, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v43[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v43[0];
  v39[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6EE0D3C, v39);

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v35);
  v37 = v22;
  v38 = v2;
  sub_1D6EE0E48(0, &qword_1EC897DD8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v35 = sub_1D725A4CC();
  sub_1D725A4DC();
  v25 = v44;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5BD48FC();
  v26 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v33 = v43[1];
  v34 = v43[0];
  *&v43[0] = v22;
  *&v42[0] = v25;
  MEMORY[0x1EEE9AC00](v26, v27);

  v28 = sub_1D725C00C();

  v29 = v36;
  *v36 = 0;
  v30 = v34;
  *(v29 + 24) = v33;
  *(v29 + 8) = v30;
  *&v43[0] = v28;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v31 = sub_1D72623BC();

  v32 = MEMORY[0x1E69E7CC0];
  *(v29 + 5) = v31;
  *(v29 + 6) = v32;
}

uint64_t sub_1D6EDEF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6EDF054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D6EE0E48(0, &qword_1EC897DF8, MEMORY[0x1E69D7150]);
  sub_1D6EE0E04(&qword_1EC897E00, &qword_1EC897DF8, v13, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6EDF244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v64 = a2;
  v61 = sub_1D6EE0D4C;
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v46 - v8);
  v67 = a1;
  v10 = a1;
  v47 = a1;
  v11 = sub_1D725994C();
  v56 = v11;
  v12 = swift_allocBox();
  v59 = *MEMORY[0x1E69D6F50];
  v13 = *(v11 - 8);
  v58 = *(v13 + 104);
  v60 = v13 + 104;
  v58(v14);
  *v9 = v12;
  v57 = *MEMORY[0x1E69D73C0];
  v15 = *(v6 + 104);
  v15(v9);
  v46[1] = v6 + 104;
  v16 = MEMORY[0x1E69D6F38];
  sub_1D6EE0E48(0, &qword_1EC897E08, MEMORY[0x1E69D6F38]);
  v18 = v17;
  sub_1D6EE0E04(&qword_1EC897E10, &qword_1EC897E08, v16, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v19 = *(v6 + 8);
  v63 = v6 + 8;
  v48 = v19;
  v19(v9, v5);
  v67 = v10;
  sub_1D60DF7C0(0);
  v21 = v20;
  v54 = v20;
  v22 = swift_allocBox();
  v24 = v23;
  v25 = *(v21 + 48);
  *v23 = 7;
  v52 = *MEMORY[0x1E69D7348];
  v26 = v52;
  v51 = sub_1D725A34C();
  v27 = *(v51 - 8);
  v50 = *(v27 + 104);
  v53 = v27 + 104;
  v50(&v24[v25], v26, v51);
  *v9 = v22;
  v49 = *MEMORY[0x1E69D73E0];
  v28 = v5;
  v15(v9);
  v66 = v64;
  v55 = v18;
  sub_1D72599EC();
  v29 = v48;
  v48(v9, v5);
  v30 = v47;
  v67 = v47;
  v31 = v56;
  v32 = swift_allocBox();
  (v58)(v33, v59, v31);
  *v9 = v32;
  (v15)(v9, v57, v5);
  sub_1D7259A9C();
  v29(v9, v5);
  v67 = v30;
  v34 = v54;
  v35 = swift_allocBox();
  v36 = *(v34 + 48);
  *v37 = 2;
  v50(&v37[v36], v52, v51);
  *v9 = v35;
  v38 = v28;
  (v15)(v9, v49, v28);
  sub_1D6EE0ED4(0);
  sub_1D6EE13F4(0, &qword_1EC897E20, v61, &type metadata for A12_V11.Layout, MEMORY[0x1E69D70D8]);
  v40 = v39;
  v41 = *(v39 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  v44 = v62 + *(type metadata accessor for A12_V11.Bound(0) + 24);
  *(v43 + v42) = *(v44 + *(type metadata accessor for GroupLayoutContext(0) + 32)) * 135.0;
  (*(v41 + 104))(v43 + v42, *MEMORY[0x1E69D70D0], v40);
  v65 = v64;
  sub_1D72599EC();

  return (v29)(v9, v38);
}

uint64_t sub_1D6EDF834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadlineViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v27 - v17;
  v27[1] = a1;
  swift_getKeyPath();
  result = (*(v15 + 104))(v18, *MEMORY[0x1E69D7460], v14);
  if (*(a2 + 16))
  {
    sub_1D5BE3ED8(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for HeadlineViewLayout.Context);
    v27[0] = v14;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v23 + 56))(&v7[v20], 0, 1, v22);
    v24 = *MEMORY[0x1E69DDC70];
    *v7 = 1;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v24;
    v25 = v24;
    sub_1D61F750C(v12, v7);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE780C(v12, type metadata accessor for HeadlineViewLayout.Context);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D6EE0E48(0, &qword_1EC897E08, MEMORY[0x1E69D6F38]);
    sub_1D6EE0E04(&qword_1EC897E10, &qword_1EC897E08, v26, MEMORY[0x1E69D6F40]);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v15 + 8))(v18, v27[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6EDFC10(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6EE0E48(0, &qword_1EC897E08, MEMORY[0x1E69D6F38]);
  sub_1D6EE0E04(&qword_1EC897E10, &qword_1EC897E08, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 6;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D6EDFEB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v50 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v43 = KeyPath;
  v44 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = *MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 0;
  *&v14[v11[7]] = v31;
  v32 = *MEMORY[0x1E69DDCE0];
  v41 = *(MEMORY[0x1E69DDCE0] + 16);
  v42 = v32;
  v33 = qword_1EDF386E8;
  v34 = v31;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  MEMORY[0x1EEE9AC00](v35, v36);
  v37 = v41;
  *(&v41 - 4) = v42;
  *(&v41 - 3) = v37;
  *(&v41 - 4) = v10;
  *(&v41 - 3) = v19;
  v40 = v14;
  (*(v45 + 104))(v47, *MEMORY[0x1E69D7378], v46);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v48 + 8))(v10, v49);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6EE0E48(0, &qword_1EC897E08, MEMORY[0x1E69D6F38]);
  sub_1D6EE0E04(&qword_1EC897E10, &qword_1EC897E08, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v44);
}

uint64_t sub_1D6EE049C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v50 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v43 = KeyPath;
  v44 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = *MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 0;
  *&v14[v11[7]] = v31;
  v32 = *MEMORY[0x1E69DDCE0];
  v41 = *(MEMORY[0x1E69DDCE0] + 16);
  v42 = v32;
  v33 = qword_1EDF386E8;
  v34 = v31;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  MEMORY[0x1EEE9AC00](v35, v36);
  v37 = v41;
  *(&v41 - 4) = v42;
  *(&v41 - 3) = v37;
  *(&v41 - 4) = v10;
  *(&v41 - 3) = v19;
  v40 = v14;
  (*(v45 + 104))(v47, *MEMORY[0x1E69D7378], v46);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v48 + 8))(v10, v49);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6EE0E48(0, &qword_1EC897E08, MEMORY[0x1E69D6F38]);
  sub_1D6EE0E04(&qword_1EC897E10, &qword_1EC897E08, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v44);
}

uint64_t sub_1D6EE0A84@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V11.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6EE0B98(uint64_t a1)
{
  *(a1 + 8) = sub_1D6EE0BC8();
  result = sub_1D6EE0C1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6EE0BC8()
{
  result = qword_1EC897DA8;
  if (!qword_1EC897DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897DA8);
  }

  return result;
}

unint64_t sub_1D6EE0C1C()
{
  result = qword_1EC897DB0;
  if (!qword_1EC897DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897DB0);
  }

  return result;
}

uint64_t type metadata accessor for A12_V11.Bound(uint64_t a1)
{
  result = qword_1EC897DC0;
  if (!qword_1EC897DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6EE0CE4(uint64_t a1)
{
  result = sub_1D6EE145C(&qword_1EC897DD0, type metadata accessor for A12_V11.Bound, &unk_1D736C7F8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EE0D4C()
{
  result = qword_1EC897DE0;
  if (!qword_1EC897DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897DE0);
  }

  return result;
}

unint64_t sub_1D6EE0DA0()
{
  result = qword_1EC897DE8;
  if (!qword_1EC897DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897DE8);
  }

  return result;
}

uint64_t sub_1D6EE0E04(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6EE0E48(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6EE0E48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V11.Layout;
    v8[1] = &type metadata for A12_V11.Layout.Attributes;
    v8[2] = sub_1D6EE0D4C();
    v8[3] = sub_1D6EE0DA0();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6EE0ED4(uint64_t a1)
{
  if (!qword_1EC897E18)
  {
    sub_1D6EE13F4(255, &qword_1EC897E20, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC897E18);
    }
  }
}

unint64_t sub_1D6EE0FA4()
{
  result = qword_1EC897E28;
  if (!qword_1EC897E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E28);
  }

  return result;
}

unint64_t sub_1D6EE0FFC()
{
  result = qword_1EC897E30;
  if (!qword_1EC897E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E30);
  }

  return result;
}

unint64_t sub_1D6EE1054()
{
  result = qword_1EC897E38;
  if (!qword_1EC897E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E38);
  }

  return result;
}

unint64_t sub_1D6EE10AC()
{
  result = qword_1EC897E40;
  if (!qword_1EC897E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E40);
  }

  return result;
}

uint64_t sub_1D6EE1100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6EE13F4(0, &qword_1EC897E48, sub_1D6EE13A0, &type metadata for A12_V11.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EE13A0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6EE145C(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6EE13A0()
{
  result = qword_1EC897E50;
  if (!qword_1EC897E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E50);
  }

  return result;
}

void sub_1D6EE13F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6EE145C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6EE14B8()
{
  result = qword_1EC897E60;
  if (!qword_1EC897E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E60);
  }

  return result;
}

unint64_t sub_1D6EE1510()
{
  result = qword_1EC897E68;
  if (!qword_1EC897E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E68);
  }

  return result;
}

unint64_t sub_1D6EE1568()
{
  result = qword_1EC897E70;
  if (!qword_1EC897E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E70);
  }

  return result;
}

uint64_t sub_1D6EE15C0()
{

  return swift_deallocClassInstance();
}

uint64_t FormatGroupItemKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 6775156;
  v3 = 0x6465626D45626577;
  if (v1 != 5)
  {
    v3 = 1684366694;
  }

  v4 = 0x656E696C64616568;
  if (v1 != 3)
  {
    v4 = 0x6575737369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x72656874616577;
  if (v1 != 1)
  {
    v5 = 0x6C6C6177796170;
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

void sub_1D6EE16F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6775156;
  v5 = 0xE800000000000000;
  v6 = 0x6465626D45626577;
  if (v2 != 5)
  {
    v6 = 1684366694;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656E696C64616568;
  if (v2 != 3)
  {
    v8 = 0x6575737369;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x72656874616577;
  if (v2 != 1)
  {
    v9 = 0x6C6C6177796170;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
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

double sub_1D6EE17C8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

BOOL sub_1D6EE18E4(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s8NewsFeed19FormatGroupItemKindO1loiySbAC_ACtFZ_0(&v4, &v5) & 1) == 0;
}

BOOL sub_1D6EE1924(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s8NewsFeed19FormatGroupItemKindO1loiySbAC_ACtFZ_0(&v5, &v4) & 1) == 0;
}

uint64_t sub_1D6EE1964(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s8NewsFeed19FormatGroupItemKindO1loiySbAC_ACtFZ_0(&v4, &v5) & 1;
}

uint64_t _s8NewsFeed19FormatGroupItemKindO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 6775156;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 2)
  {
    v7 = 0x72656874616577;
    if (v3 != 1)
    {
      v7 = 0x6C6C6177796170;
    }

    if (*a1)
    {
      v6 = v7;
    }

    else
    {
      v6 = 6775156;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else if (*a1 > 4u)
  {
    if (v3 == 5)
    {
      v5 = 0xE800000000000000;
      v6 = 0x6465626D45626577;
    }

    else
    {
      v5 = 0xE400000000000000;
      v6 = 1684366694;
    }
  }

  else if (v3 == 3)
  {
    v5 = 0xE800000000000000;
    v6 = 0x656E696C64616568;
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x6575737369;
  }

  v8 = 0xE300000000000000;
  v9 = 0xE800000000000000;
  v10 = 0x6465626D45626577;
  if (v4 != 5)
  {
    v10 = 1684366694;
    v9 = 0xE400000000000000;
  }

  v11 = 0xE800000000000000;
  v12 = 0x656E696C64616568;
  if (v4 != 3)
  {
    v12 = 0x6575737369;
    v11 = 0xE500000000000000;
  }

  if (*a2 <= 4u)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = 0x72656874616577;
  if (v4 != 1)
  {
    v13 = 0x6C6C6177796170;
  }

  if (*a2)
  {
    v2 = v13;
    v8 = 0xE700000000000000;
  }

  if (*a2 <= 2u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v10;
  }

  if (*a2 <= 2u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v9;
  }

  if (v6 == v14 && v5 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_1D72646CC();
  }

  return v16 & 1;
}

unint64_t sub_1D6EE1B84(uint64_t a1)
{
  *(a1 + 8) = sub_1D6EE1BB4();
  result = sub_1D5C9F354();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6EE1BB4()
{
  result = qword_1EC897E78;
  if (!qword_1EC897E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E78);
  }

  return result;
}

unint64_t sub_1D6EE1C08(uint64_t a1)
{
  result = sub_1D6EE1C30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EE1C30()
{
  result = qword_1EC897E80;
  if (!qword_1EC897E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E80);
  }

  return result;
}

unint64_t sub_1D6EE1C84(void *a1)
{
  a1[1] = sub_1D5C9F19C();
  a1[2] = sub_1D5C9F1F0();
  result = sub_1D5C9F2A0();
  a1[3] = result;
  return result;
}

uint64_t SharingRecipeActivityTypeProvider.__allocating_init(supportedActivityTypes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SharingRecipeActivityTypeProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatItemNodeDataLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 64);

  return v1;
}

double FormatItemNodeDataLayoutAttributes.frame.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t FormatItemNodeDataLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 48);

  return v1;
}

uint64_t FormatItemNodeDataLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 80);

  return v1;
}

uint64_t FormatItemNodeDataLayoutAttributes.resizingIdentifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 48);

  return v1;
}

uint64_t FormatItemNodeDataLayoutAttributes.renderKeyIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double FormatItemNodeDataLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

uint64_t FormatItemNodeDataLayoutAttributes.resizingGroupIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D6EE20C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double FormatItemNodeDataLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_visibility);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t FormatItemNodeDataLayoutAttributes.reuseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_reuseIdentifier);

  return v1;
}

uint64_t FormatItemNodeDataLayoutAttributes.deinit()
{

  sub_1D5BCAAAC(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem, type metadata accessor for FeedItem);
  sub_1D5EB15C4(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_visibility));

  return v0;
}

uint64_t FormatItemNodeDataLayoutAttributes.__deallocating_deinit()
{
  FormatItemNodeDataLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6EE22B8()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 48);

  return v1;
}

void FormatItemNodeDataLayoutAttributes.auxiliaryFeedItems.getter()
{
  v1 = type metadata accessor for FormatItemNodeData(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v132 = v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 96) + 16);
  v149 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 96);

  v148 = v4;
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v147 = v149 + 32;
    v131 = xmmword_1D7273AE0;
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v149 + 16))
    {
      v8 = *(v147 + 8 * v5++);
      v9 = v6;
      if (((1 << ((v8 >> 59) & 0x1E | ((v8 & 4) != 0))) & 0x6FFEF) != 0)
      {
        goto LABEL_7;
      }

      if (((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 4)
      {
        v19 = (v8 & 0xFFFFFFFFFFFFFFBLL);
        v20 = v19[2];
        v21 = v19[4];
        v22 = v19[5];
        v23 = v19[6];
        v24 = *(*(v20 + 64) + 96);
        v25 = *(v24 + 16);
        v120 = v19[3];

        v125 = v19;

        v121 = v20;

        v124 = v21;
        v123 = v22;
        v122 = v23;
        sub_1D5EBC314(v21, v22, v23);

        v146 = v25;
        if (v25)
        {
          v26 = 0;
          v144 = v24;
          v145 = v24 + 32;
          v9 = v6;
          while (1)
          {
            if (v26 >= *(v24 + 16))
            {
              goto LABEL_114;
            }

            v27 = *(v145 + 8 * v26++);
            v28 = v6;
            if (((1 << ((v27 >> 59) & 0x1E | ((v27 & 4) != 0))) & 0x6FFEF) == 0)
            {
              break;
            }

LABEL_27:
            v29 = v28[2];
            v30 = v9[2];
            v31 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_115;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v31 <= v9[3] >> 1)
            {
              if (!v28[2])
              {
                goto LABEL_23;
              }
            }

            else
            {
              if (v30 <= v31)
              {
                v33 = v30 + v29;
              }

              else
              {
                v33 = v30;
              }

              v9 = sub_1D6991604(isUniquelyReferenced_nonNull_native, v33, 1, v9);
              if (!v28[2])
              {
LABEL_23:

                if (v29)
                {
                  goto LABEL_116;
                }

                goto LABEL_24;
              }
            }

            v34 = (v9[3] >> 1) - v9[2];
            type metadata accessor for FeedItem(0);
            if (v34 < v29)
            {
              goto LABEL_127;
            }

            swift_arrayInitWithCopy();

            if (v29)
            {
              v35 = v9[2];
              v17 = __OFADD__(v35, v29);
              v36 = v35 + v29;
              if (v17)
              {
                goto LABEL_132;
              }

              v9[2] = v36;
            }

LABEL_24:
            v24 = v144;
            if (v26 == v146)
            {
              goto LABEL_109;
            }
          }

          if (((v27 >> 59) & 0x1E | (v27 >> 2) & 1) != 4)
          {
            sub_1D5EBC240(0);
            v100 = swift_projectBox();
            v101 = v132;
            sub_1D6EE20C0(v100, v132, type metadata accessor for FormatItemNodeData);
            sub_1D6EE3308(0);
            v102 = *(type metadata accessor for FeedItem(0) - 8);
            v103 = (*(v102 + 80) + 32) & ~*(v102 + 80);
            v28 = swift_allocObject();
            *(v28 + 1) = v131;
            sub_1D6EE20C0(v101, v28 + v103, type metadata accessor for FeedItem);
            sub_1D5BCAAAC(v101, type metadata accessor for FormatItemNodeData);
            goto LABEL_27;
          }

          v37 = (v27 & 0xFFFFFFFFFFFFFFBLL);
          v39 = v37[2];
          v38 = v37[3];
          v40 = v37[5];
          v130 = v37[4];
          v41 = v37[6];
          v42 = *(*(v39 + 64) + 96);
          v143 = *(v42 + 16);
          v115 = v38;

          v119 = v37;

          v116 = v39;
          v43 = v42;

          v118 = v40;
          v117 = v41;
          sub_1D5EBC314(v130, v40, v41);

          if (!v143)
          {
            v28 = v6;
LABEL_106:

            sub_1D5EBC358(v130, v118, v117);

            goto LABEL_27;
          }

          v44 = 0;
          v140 = v7;
          v141 = v42 + 32;
          v28 = v6;
          while (2)
          {
            if (v44 >= *(v43 + 16))
            {
              goto LABEL_117;
            }

            v45 = *(v141 + 8 * v44);
            v151 = v44 + 1;
            v46 = v6;
            if (((1 << ((v45 >> 59) & 0x1E | ((v45 & 4) != 0))) & 0x6FFEF) != 0)
            {
LABEL_47:
              v47 = v46[2];
              v48 = v28[2];
              v49 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                goto LABEL_118;
              }

              v50 = swift_isUniquelyReferenced_nonNull_native();
              if ((v50 & 1) != 0 && v49 <= v28[3] >> 1)
              {
                if (!v46[2])
                {
LABEL_43:

                  v7 = v140;
                  v44 = v151;
                  if (v47)
                  {
                    goto LABEL_119;
                  }

LABEL_44:
                  if (v44 == v143)
                  {
                    goto LABEL_106;
                  }

                  continue;
                }
              }

              else
              {
                if (v48 <= v49)
                {
                  v51 = v48 + v47;
                }

                else
                {
                  v51 = v48;
                }

                v28 = sub_1D6991604(v50, v51, 1, v28);
                if (!v46[2])
                {
                  goto LABEL_43;
                }
              }

              v52 = (v28[3] >> 1) - v28[2];
              type metadata accessor for FeedItem(0);
              if (v52 < v47)
              {
                goto LABEL_128;
              }

              swift_arrayInitWithCopy();

              v7 = v140;
              v44 = v151;
              if (v47)
              {
                v53 = v28[2];
                v17 = __OFADD__(v53, v47);
                v54 = v53 + v47;
                if (v17)
                {
                  goto LABEL_133;
                }

                v28[2] = v54;
              }

              goto LABEL_44;
            }

            break;
          }

          if (((v45 >> 59) & 0x1E | (v45 >> 2) & 1) != 4)
          {
            sub_1D5EBC240(0);
            v96 = swift_projectBox();
            v97 = v132;
            sub_1D6EE20C0(v96, v132, type metadata accessor for FormatItemNodeData);
            sub_1D6EE3308(0);
            v98 = *(type metadata accessor for FeedItem(0) - 8);
            v99 = (*(v98 + 80) + 32) & ~*(v98 + 80);
            v46 = swift_allocObject();
            *(v46 + 1) = v131;
            sub_1D6EE20C0(v97, v46 + v99, type metadata accessor for FeedItem);
            sub_1D5BCAAAC(v97, type metadata accessor for FormatItemNodeData);
            goto LABEL_47;
          }

          v55 = (v45 & 0xFFFFFFFFFFFFFFBLL);
          v57 = v55[2];
          v56 = v55[3];
          v58 = v55[5];
          v129 = v55[4];
          v128 = v58;
          v59 = v55[6];
          v60 = *(*(v57 + 64) + 96);
          v142 = *(v60 + 16);
          v111 = v56;

          v114 = v55;

          v112 = v57;

          v113 = v59;
          sub_1D5EBC314(v129, v128, v59);

          if (!v142)
          {
            v46 = v6;
LABEL_103:

            sub_1D5EBC358(v129, v128, v113);

            goto LABEL_47;
          }

          v61 = 0;
          v137 = v60;
          v138 = v60 + 32;
          v46 = v6;
          while (2)
          {
            if (v61 >= *(v60 + 16))
            {
              goto LABEL_120;
            }

            v62 = *(v138 + 8 * v61);
            v150 = v61 + 1;
            if (((1 << ((v62 >> 59) & 0x1E | ((v62 & 4) != 0))) & 0x6FFEF) != 0)
            {
LABEL_67:
              v63 = v6[2];
              v64 = v46[2];
              v65 = v64 + v63;
              if (__OFADD__(v64, v63))
              {
                goto LABEL_121;
              }

              v66 = swift_isUniquelyReferenced_nonNull_native();
              if (v66 && v65 <= v46[3] >> 1)
              {
                if (!v6[2])
                {
LABEL_63:

                  v6 = MEMORY[0x1E69E7CC0];
                  v61 = v150;
                  if (v63)
                  {
                    goto LABEL_122;
                  }

LABEL_64:
                  v60 = v137;
                  if (v61 == v142)
                  {
                    goto LABEL_103;
                  }

                  continue;
                }
              }

              else
              {
                if (v64 <= v65)
                {
                  v67 = v64 + v63;
                }

                else
                {
                  v67 = v64;
                }

                v46 = sub_1D6991604(v66, v67, 1, v46);
                if (!v6[2])
                {
                  goto LABEL_63;
                }
              }

              v68 = (v46[3] >> 1) - v46[2];
              type metadata accessor for FeedItem(0);
              if (v68 < v63)
              {
                goto LABEL_129;
              }

              swift_arrayInitWithCopy();

              v6 = MEMORY[0x1E69E7CC0];
              v61 = v150;
              if (v63)
              {
                v69 = v46[2];
                v17 = __OFADD__(v69, v63);
                v70 = v69 + v63;
                if (v17)
                {
                  goto LABEL_134;
                }

                v46[2] = v70;
              }

              goto LABEL_64;
            }

            break;
          }

          if (((v62 >> 59) & 0x1E | (v62 >> 2) & 1) != 4)
          {
            sub_1D5EBC240(0);
            v92 = swift_projectBox();
            v93 = v132;
            sub_1D6EE20C0(v92, v132, type metadata accessor for FormatItemNodeData);
            sub_1D6EE3308(0);
            v94 = *(type metadata accessor for FeedItem(0) - 8);
            v95 = (*(v94 + 80) + 32) & ~*(v94 + 80);
            v6 = swift_allocObject();
            *(v6 + 1) = v131;
            sub_1D6EE20C0(v93, v6 + v95, type metadata accessor for FeedItem);
            sub_1D5BCAAAC(v93, type metadata accessor for FormatItemNodeData);
            goto LABEL_67;
          }

          v71 = (v62 & 0xFFFFFFFFFFFFFFBLL);
          v73 = v71[2];
          v72 = v71[3];
          v74 = v71[5];
          v127 = v71[4];
          v126 = v74;
          v75 = v71[6];
          v76 = *(*(v73 + 64) + 96);
          v139 = *(v76 + 16);
          v108[0] = v72;

          v110 = v71;

          v108[1] = v73;

          v109 = v75;
          sub_1D5EBC314(v127, v126, v75);

          v6 = MEMORY[0x1E69E7CC0];
          if (!v139)
          {
LABEL_100:

            sub_1D5EBC358(v127, v126, v109);

            goto LABEL_67;
          }

          v77 = 0;
          v135 = v43;
          v136 = v76 + 32;
          v133 = v76;
          v134 = v46;
          while (2)
          {
            if (v77 >= *(v76 + 16))
            {
              goto LABEL_123;
            }

            v78 = v28;
            v79 = v9;
            v80 = v26;
            v81 = v5;
            v152 = *(v136 + 8 * v77);
            sub_1D6EE718C();
            v83 = *(v82 + 16);
            v84 = v6[2];
            v85 = v84 + v83;
            if (__OFADD__(v84, v83))
            {
              goto LABEL_124;
            }

            v86 = v82;
            v87 = swift_isUniquelyReferenced_nonNull_native();
            if (v87 && v85 <= v6[3] >> 1)
            {
              if (!*(v86 + 16))
              {
LABEL_83:

                v5 = v81;
                v26 = v80;
                v9 = v79;
                v28 = v78;
                v46 = v134;
                v43 = v135;
                if (v83)
                {
                  goto LABEL_125;
                }

LABEL_84:
                ++v77;
                v76 = v133;
                if (v139 == v77)
                {
                  goto LABEL_100;
                }

                continue;
              }
            }

            else
            {
              if (v84 <= v85)
              {
                v88 = v84 + v83;
              }

              else
              {
                v88 = v84;
              }

              v6 = sub_1D6991604(v87, v88, 1, v6);
              if (!*(v86 + 16))
              {
                goto LABEL_83;
              }
            }

            break;
          }

          v89 = (v6[3] >> 1) - v6[2];
          type metadata accessor for FeedItem(0);
          if (v89 < v83)
          {
            goto LABEL_130;
          }

          swift_arrayInitWithCopy();

          v5 = v81;
          v26 = v80;
          v9 = v79;
          v28 = v78;
          v46 = v134;
          v43 = v135;
          if (v83)
          {
            v90 = v6[2];
            v17 = __OFADD__(v90, v83);
            v91 = v90 + v83;
            if (v17)
            {
              goto LABEL_135;
            }

            v6[2] = v91;
          }

          goto LABEL_84;
        }

        v9 = v6;
LABEL_109:

        sub_1D5EBC358(v124, v123, v122);
      }

      else
      {
        sub_1D5EBC240(0);
        v104 = swift_projectBox();
        v105 = v132;
        sub_1D6EE20C0(v104, v132, type metadata accessor for FormatItemNodeData);
        sub_1D6EE3308(0);
        v106 = *(type metadata accessor for FeedItem(0) - 8);
        v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v9 = swift_allocObject();
        *(v9 + 1) = v131;
        sub_1D6EE20C0(v105, v9 + v107, type metadata accessor for FeedItem);
        sub_1D5BCAAAC(v105, type metadata accessor for FormatItemNodeData);
      }

LABEL_7:
      v10 = v9[2];
      v11 = v7[2];
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_112;
      }

      v13 = swift_isUniquelyReferenced_nonNull_native();
      if (v13 && v12 <= v7[3] >> 1)
      {
        if (!v9[2])
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        v7 = sub_1D6991604(v13, v14, 1, v7);
        if (!v9[2])
        {
LABEL_3:

          if (v10)
          {
            goto LABEL_113;
          }

          goto LABEL_4;
        }
      }

      v15 = (v7[3] >> 1) - v7[2];
      type metadata accessor for FeedItem(0);
      if (v15 < v10)
      {
        goto LABEL_126;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v16 = v7[2];
        v17 = __OFADD__(v16, v10);
        v18 = v16 + v10;
        if (v17)
        {
          goto LABEL_131;
        }

        v7[2] = v18;
      }

LABEL_4:
      if (v5 == v148)
      {
        goto LABEL_110;
      }
    }

    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
  }

  else
  {
LABEL_110:
  }
}

uint64_t type metadata accessor for FormatItemNodeDataLayoutAttributes(uint64_t a1)
{
  result = qword_1EDF1DE60;
  if (!qword_1EDF1DE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6EE3308(uint64_t a1)
{
  if (!qword_1EDF02218)
  {
    type metadata accessor for FeedItem(255);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02218);
    }
  }
}

uint64_t sub_1D6EE3368(uint64_t a1)
{
  result = type metadata accessor for FeedItem(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_1D6EE346C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_separatorView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_editor] = a1;
  v12 = type metadata accessor for DebugFormatNavigationController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section] = 0;
  v22.receiver = v13;
  v22.super_class = v12;

  *&v4[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController] = objc_msgSendSuper2(&v22, sel_initWithRootViewController_, a2);
  v14 = objc_allocWithZone(v12);
  *&v14[OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section] = 0;
  v21.receiver = v14;
  v21.super_class = v12;
  *&v4[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_debuggerPaneViewController] = objc_msgSendSuper2(&v21, sel_initWithRootViewController_, a3);
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  v16 = OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController;
  v17 = *&v15[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController];
  v18 = v15;
  [v17 setNavigationBarHidden:1 animated:0];
  [*&v15[v16] setToolbarHidden:0 animated:0];
  [*&v18[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_debuggerPaneViewController] setToolbarHidden:0 animated:0];

  return v18;
}

void sub_1D6EE36F8()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_debuggerPaneViewController];
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  v19 = *&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController];
  [v1 addChildViewController_];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v19 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  [v21 addSubview_];

  [v19 didMoveToParentViewController_];
  v24 = [v19 view];
  if (!v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = v24;
  v26 = [v1 view];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = v26;
  [v26 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [v25 setFrame_];
  v36 = *&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_separatorView];
  v37 = [objc_opt_self() separatorColor];
  [v36 setBackgroundColor_];

  v38 = [v1 view];
  if (v38)
  {
    v39 = v38;
    [v38 addSubview_];

    sub_1D725974C();

    sub_1D725975C();

    return;
  }

LABEL_19:
  __break(1u);
}

double sub_1D6EE3A64(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_editor);
  type metadata accessor for DebugFormatConsoleAnimator();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 16) = v1;
  swift_unknownObjectWeakAssign();

  sub_1D5ED3714();

  return result;
}

void sub_1D6EE3BF0()
{
  v1 = v0;
  *&v44[1] = v0;
  *&v44[9] = swift_getObjectType();
  objc_msgSendSuper2(&v44[1], sel_viewWillLayoutSubviews);
  v2 = [*&v0[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_debuggerPaneViewController] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;

  sub_1D725972C();

  v4 = sub_1D6EE3F48(v44[0], v0);
  v5 = [v0 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v45.origin.x = v8;
  v45.origin.y = v10;
  v45.size.width = v12;
  v45.size.height = v14;
  [v3 setFrame_];

  v15 = *&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_separatorView];

  sub_1D725972C();

  v16 = sub_1D6EE4214(v44[0], v1);
  v17 = [v1 traitCollection];
  [v17 displayScale];
  v19 = v18;

  v20 = [v1 view];
  if (!v20)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = v20;
  [v20 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v46.origin.x = v23;
  v46.origin.y = v25;
  v46.size.width = v27;
  v46.size.height = v29;
  [v15 setFrame_];
  v30 = [*&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController] view];
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v31 = v30;

  sub_1D725972C();

  v32 = sub_1D6EE4214(v44[0], v1);
  v33 = sub_1D6EE40D0(v44[0], v1);
  v34 = [v1 view];
  if (v34)
  {
    v35 = v34;
    [v34 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v47.origin.x = v37;
    v47.origin.y = v39;
    v47.size.width = v41;
    v47.size.height = v43;
    [v31 setFrame_];

    return;
  }

LABEL_11:
  __break(1u);
}

CGFloat sub_1D6EE3F48(unsigned __int8 a1, id a2)
{
  v3 = a1;
  v4 = [a2 view];
  v6 = v4;
  if (v3 <= 1)
  {
    if (v4)
    {
      [v4 safeAreaInsets];
      v8 = v7;

      v9 = [a2 view];
      if (v9)
      {
        v10 = v9;
        [v9 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v37.origin.x = v12;
        v37.origin.y = v14;
        v37.size.width = v16;
        v37.size.height = v18;
        Width = CGRectGetWidth(v37);
        v20 = [a2 view];
        if (v20)
        {
          v21 = v20;
          [v20 safeAreaInsets];
          v23 = v22;

          return v8 + (Width - v23) * 0.5;
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  [v4 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;

  return CGRectGetWidth(*&v32);
}

CGFloat sub_1D6EE40D0(unsigned __int8 a1, id a2)
{
  v3 = a1;
  v4 = [a2 view];
  v6 = v4;
  if (v3)
  {
    if (v4)
    {
      [v4 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v33.origin.x = v8;
      v33.origin.y = v10;
      v33.size.width = v12;
      v33.size.height = v14;
      Width = CGRectGetWidth(v33);
      v16 = [a2 view];
      if (v16)
      {
        v17 = v16;
        [v16 safeAreaInsets];
        v19 = v18;

        return (Width - v19) * 0.5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  if (!v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  [v4 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;

  return CGRectGetWidth(*&v28);
}

CGFloat sub_1D6EE4214(char a1, id a2)
{
  if (!a1)
  {
    return 0.0;
  }

  if (a1 == 1)
  {
    v3 = [a2 view];
    if (v3)
    {
      v5 = v3;
      [v3 safeAreaInsets];
      v7 = v6;

      v8 = [a2 view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v38.origin.x = v11;
        v38.origin.y = v13;
        v38.size.width = v15;
        v38.size.height = v17;
        Width = CGRectGetWidth(v38);
        v19 = [a2 view];
        if (v19)
        {
          v20 = v19;
          [v19 safeAreaInsets];
          v22 = v21;

          return v7 + (Width - v22) * 0.5;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = [a2 view];
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = v23;
  [v23 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = v26;
  v34 = v28;
  v35 = v30;
  v36 = v32;

  return CGRectGetWidth(*&v33);
}

uint64_t FormatSelector.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatSelector.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

BOOL FormatSelector.matches(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  if (qword_1EDF2AB18 != -1)
  {
LABEL_8:
    swift_once();
  }

  *&v16[0] = v3;
  *(&v16[0] + 1) = v4;
  v3 = sub_1D6844380(v16);
  v4 = -*(v3 + 16);
  v5 = -1;
  v6 = 32;
  do
  {
    v7 = v4 + v5;
    if (v4 + v5 == -1)
    {
      break;
    }

    if (++v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    v8 = v6 + 56;
    v9 = v3 + v6;
    v10 = *v9;
    v11 = *(v9 + 16);
    v12 = *(v9 + 32);
    v17 = *(v9 + 48);
    v16[1] = v11;
    v16[2] = v12;
    v16[0] = v10;
    sub_1D5E3B610(v16, v15);
    v13 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v16);
    v6 = v8;
  }

  while ((v13 & 1) == 0);

  return v7 != -1;
}

void sub_1D6EE4610(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v11[0] = v4;
    v11[1] = v5;
    v4 = sub_1D6844380(v11);
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = 0;
    v7 = 32;
    while (v6 < *(v4 + 16))
    {
      v8 = *(v4 + v7);
      v9 = *(v4 + v7 + 16);
      v10 = *(v4 + v7 + 32);
      v13 = *(v4 + v7 + 48);
      v12[1] = v9;
      v12[2] = v10;
      v12[0] = v8;
      sub_1D5E3B610(v12, v11);
      sub_1D6844F60(a1);
      if (v2)
      {

        sub_1D5E3B66C(v12);
        return;
      }

      ++v6;
      sub_1D5E3B66C(v12);
      v7 += 56;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

LABEL_7:
}

uint64_t FormatSelector.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_1D72646FC();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSelector.hashValue.getter()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6EE486C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  strcpy(v4, "not selector ");
  MEMORY[0x1DA6F9910](v1, v2);
  return v4[0];
}

unint64_t sub_1D6EE48C4(uint64_t a1)
{
  result = sub_1D666D9FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EE48EC(void *a1)
{
  a1[1] = sub_1D5C36978();
  a1[2] = sub_1D5D3E60C();
  result = sub_1D6EE4924();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EE4924()
{
  result = qword_1EDF32420;
  if (!qword_1EDF32420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32420);
  }

  return result;
}

unint64_t sub_1D6EE497C()
{
  result = qword_1EC897EB0;
  if (!qword_1EC897EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897EB0);
  }

  return result;
}

unint64_t sub_1D6EE49E0()
{
  result = qword_1EC897EB8;
  if (!qword_1EC897EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897EB8);
  }

  return result;
}

uint64_t sub_1D6EE4A6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1D6999CBC(0, v1, 0);
  v2 = v25;
  v3 = a1 + 64;
  result = sub_1D7263B7C();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v23 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(v6 + 36);
    v11 = *(*(v6 + 56) + 8 * v5);
    v12 = swift_allocObject();
    *(v12 + 16) = *(*(v11 + 32) + 96);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v14 >= v13 >> 1)
    {
      result = sub_1D6999CBC((v13 > 1), v14 + 1, 1);
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v12 | 0xB000000000000000;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v10);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v23;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 72 + 8 * v10);
      v9 = v23;
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D5C25E1C(v5, v24, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v5, v24, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void FormatDataLayoutValue.formatImageRequests(options:inventory:)(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatVideoPlayerData(0);
  v8 = MEMORY[0x1EEE9AC00](v5, v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = (*v2 >> 59) & 0x1E | (*v2 >> 2) & 1;
  if (v12 <= 4)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v27 = (swift_projectBox() + *(v26 + 48));
        v28 = v27[2];
        v29 = v27[3];
        v30 = v27[4];
      }

      else
      {
        v28 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v29 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v30 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      }

      sub_1D5EBC314(v28, v29, v30);

      sub_1D5EBC6B4();

      sub_1D5EBC358(v28, v29, v30);
    }

    else if ((v12 - 1) >= 2)
    {
      v22 = *(v11 + 16);
      v23 = *(v11 + 24);
      if (v22 >> 61 == 5)
      {
        v24 = v22 & 0x1FFFFFFFFFFFFFFFLL;
        v25 = *(v24 + 24);
        v33 = *(v24 + 16);
      }

      else
      {
        v33 = *(v11 + 16);
        v25 = *(v23 + 96);
      }

      sub_1D7147F08(a1, a2, &v33, v25, &v34, v8);
      if (v35)
      {
        sub_1D5B63F14(&v34, v36);
        sub_1D6EE9640(0, &qword_1EDF19AD0, sub_1D61BA350, MEMORY[0x1E69E6F90]);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1D7273AE0;
        sub_1D5B63F14(v36, v31 + 32);
      }

      else
      {
        sub_1D5C1661C(&v34);
      }
    }
  }

  else
  {
    if (v12 > 0x12)
    {
      goto LABEL_16;
    }

    if (((1 << v12) & 0x6BF80) != 0)
    {
      return;
    }

    if (v12 == 14)
    {
      v13 = v7;
      sub_1D6EE70EC(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
      v15 = v14;
      v16 = swift_projectBox();
      v17 = (v16 + *(v15 + 48));
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      sub_1D6EE96A4(v16, v10, type metadata accessor for FormatVideoPlayerData);
      *&v36[0] = *&v10[*(v13 + 40)];

      sub_1D5EBC314(v18, v19, v20);

      sub_1D6F05BC0(a1, a2, v36, v21);

      sub_1D5EBC358(v18, v19, v20);

      sub_1D6EE970C(v10, type metadata accessor for FormatVideoPlayerData);
      return;
    }

    if (v12 == 16)
    {
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      swift_projectBox();

      sub_1D5EBC6B4();
    }

    else
    {
LABEL_16:
      if (v12 != 5)
      {
        FormatStateViewNodeDataLayoutAttributes.formatImageRequests(options:inventory:)(a1, a2);
      }
    }
  }
}

void FormatDataLayoutValue.issueCoverImageRequests(options:inventory:)(double *a1, uint64_t a2, __n128 a3)
{
  v4 = *v3;
  v5 = (*v3 >> 59) & 0x1E | (*v3 >> 2) & 1;
  if (v5 <= 4)
  {
    if (v5 >= 3)
    {
      if (v5 == 3)
      {
        sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v15 = (swift_projectBox() + *(v14 + 48));
        v17 = v15[2];
        v18 = v15[3];
        v19 = v15[4];
      }

      else
      {
        v16 = v4 & 0xFFFFFFFFFFFFFFBLL;
        v17 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v18 = *(v16 + 40);
        v19 = *(v16 + 48);
      }

      sub_1D5EBC314(v17, v18, v19);

      sub_1D5EBC6B8();

      sub_1D5EBC358(v17, v18, v19);
    }

    return;
  }

  if (v5 > 0x12)
  {
LABEL_15:
    if (v5 != 5)
    {
      FormatStateViewNodeDataLayoutAttributes.issueCoverImageRequests(options:inventory:)(a1, a2);
    }

    return;
  }

  if (((1 << v5) & 0x6EF80) != 0)
  {
    return;
  }

  if (v5 != 12)
  {
    if (v5 == 16)
    {
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      swift_projectBox();

      sub_1D5EBC6B8();

      return;
    }

    goto LABEL_15;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
  v6 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
  v8 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  *(v33 + 9) = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x39);
  v31 = v8;
  v32 = v7;
  v33[0] = v6;
  v9 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
  v10 = v8;
  if (BYTE8(v33[1]))
  {
    if (BYTE8(v33[1]) != 1)
    {
      return;
    }

    v11 = a1;
    v12 = *&v33[1];
    v13 = *&v33[0];
    sub_1D5EBC4A0(&v31, v30);

    v10 = v13;
  }

  else
  {
    v11 = a1;
    v12 = v32;
    sub_1D5EBC4A0(&v31, v30);
  }

  sub_1D6EE9640(0, &qword_1EDF19AD0, sub_1D61BA350, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  v21 = *(v9 + 192);
  v22 = *(v9 + 200);
  v23 = *v11;
  v24 = v12;
  sub_1D726327C();
  if (v21 > 0.0)
  {
    v27 = *&v21;
  }

  else
  {
    v27 = 0;
  }

  if (v21 > 0.0)
  {
    v28 = v22;
  }

  else
  {
    v28 = 0;
  }

  v29 = sub_1D5EBBF10(v24, v27, v28, v21 <= 0.0, v25, v26, v23);

  *(v20 + 56) = type metadata accessor for IssueCoverImageProcessorRequest();
  *(v20 + 64) = sub_1D6EE95F8(&qword_1EDF093A8, type metadata accessor for IssueCoverImageProcessorRequest, &protocol conformance descriptor for IssueCoverImageProcessorRequest);
  *(v20 + 32) = v29;
}

BOOL FormatDataLayoutValue.isResizing.getter(__n128 a1)
{
  result = 0;
  v3 = *v1;
  v4 = (v3 >> 59) & 0x1E | (v3 >> 2) & 1;
  if (v4 <= 15)
  {
    if ((v4 - 6) >= 0xA && v4 >= 5)
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (*(v5 + 161))
      {
LABEL_5:
        swift_beginAccess();
        return CGRectGetHeight(*(v5 + 64)) <= 1.0;
      }

      return 0;
    }
  }

  else
  {
    if (v4 != 16)
    {
      if (v4 != 17)
      {
        return result;
      }

      v5 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (*(v5 + 209))
      {
        goto LABEL_5;
      }

      return 0;
    }

    sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
    swift_projectBox();

    sub_1D5EBBBE0();
    v8 = v7;

    return v8 & 1;
  }

  return result;
}

uint64_t FormatDataLayoutValue.identifier.getter(uint64_t a1, __n128 a2)
{
  v2 = sub_1D6EE8B60(a2);

  return v2;
}

double sub_1D6EE5698@<D0>(unint64_t *a1@<X8>)
{
  v4 = *v2;
  switch((*v2 >> 59) & 0x1E | (*v2 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 120);
      break;
    case 2uLL:
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v5 = (*(swift_projectBox() + *(v12 + 48)) + 48);
      break;
    case 4uLL:
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 120);
      break;
    case 6uLL:
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 48);
      break;
    case 7uLL:
      v13 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      goto LABEL_23;
    case 8uLL:
      sub_1D61CAFE8(0);
      goto LABEL_22;
    case 9uLL:
      sub_1D6EE9528(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
LABEL_13:
      v5 = (*(swift_projectBox() + *(v14 + 48)) + 120);
      break;
    case 0xAuLL:
      v13 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      goto LABEL_23;
    case 0xBuLL:
      v7 = &qword_1EC884E78;
      v8 = &unk_1EC884E80;
      v9 = type metadata accessor for FormatVideoData;
      v10 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_6;
    case 0xCuLL:
      v13 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      goto LABEL_23;
    case 0xDuLL:
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v5 = (*(swift_projectBox() + *(v15 + 48)) + 128);
      break;
    case 0xEuLL:
      v7 = &qword_1EC880340;
      v8 = &qword_1EC880348;
      v9 = type metadata accessor for FormatVideoPlayerData;
      v10 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_6:
      sub_1D6EE70EC(0, v7, v9, v8, v10);
      goto LABEL_22;
    case 0xFuLL:
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x20) + 168);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v5 = (*(swift_projectBox() + *(v6 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_visibility);
      break;
    case 0x11uLL:
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 176);
      break;
    case 0x12uLL:
      sub_1D6EE9528(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
LABEL_22:
      v13 = *(swift_projectBox() + *(v11 + 48));
LABEL_23:
      v5 = (v13 + 112);
      break;
    default:
      v5 = (*(v4 + 24) + 120);
      break;
  }

  v16 = *v5;
  *a1 = *v5;

  return sub_1D5EB1500(v16);
}

uint64_t sub_1D6EE5A3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v3 = (a1 + 32);
    v4 = v15;
    v5 = 0x6567616D69;
    do
    {
      v6 = *v3++;
      v7 = 0xE400000000000000;
      v8 = 1954047348;
      switch((v6 >> 59) & 0x1E | (v6 >> 2) & 1)
      {
        case 1uLL:
          break;
        case 2uLL:
          v8 = 2003134838;
          break;
        case 3uLL:
          v7 = 0xE600000000000000;
          v8 = 0x6E6F74747562;
          break;
        case 4uLL:
          v7 = 0xE500000000000000;
          v8 = 0x70756F7267;
          break;
        case 5uLL:
          v7 = 0xE800000000000000;
          v8 = 0x6465626D45626577;
          break;
        case 6uLL:
          v7 = 0xE900000000000077;
          v8 = 0x6569566574617473;
          break;
        case 7uLL:
          v7 = 0xE600000000000000;
          v8 = 0x6D6F74737563;
          break;
        case 8uLL:
          v8 = 0x63697274654D6461;
          v7 = 0xE900000000000073;
          break;
        case 9uLL:
          v8 = 1633905005;
          break;
        case 0xAuLL:
          v8 = 0x4D6465726579616CLL;
          v7 = 0xEC00000061696465;
          break;
        case 0xBuLL:
          v7 = 0xE500000000000000;
          v8 = 0x6F65646976;
          break;
        case 0xCuLL:
          v7 = 0xEA00000000007265;
          v8 = 0x766F436575737369;
          break;
        case 0xDuLL:
          v8 = 0xD000000000000010;
          v7 = 0x80000001D73B9E90;
          break;
        case 0xEuLL:
          v8 = 0x616C506F65646976;
          v7 = 0xEB00000000726579;
          break;
        case 0xFuLL:
          v8 = 0x73736572676F7270;
          v7 = 0xEC00000077656956;
          break;
        case 0x10uLL:
          v8 = 1835365481;
          break;
        case 0x11uLL:
          v8 = 0x6D45656C7A7A7570;
          v7 = 0xEB00000000646562;
          break;
        case 0x12uLL:
          v8 = 0x65726F736E6F7073;
          v7 = 0xEF72656E6E614264;
          break;
        default:
          v7 = 0xE500000000000000;
          v8 = v5;
          break;
      }

      v16 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v5;
        sub_1D5BFC364((v9 > 1), v10 + 1, 1);
        v5 = v12;
        v4 = v16;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      --v1;
    }

    while (v1);
  }

  sub_1D5B58150(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v13 = sub_1D7261F3C();

  return v13;
}

double sub_1D6EE5E70()
{
  v1 = *v0;
  switch((v1 >> 59) & 0x1E | (v1 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 0x11uLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      break;
    case 2uLL:
      v5 = qword_1EDF31DD0;
      v6 = &qword_1EDF1C800;
      v7 = type metadata accessor for FormatViewData;
      v8 = type metadata accessor for FormatViewNodeLayoutAttributes;
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v13 = *(swift_projectBox() + *(v12 + 48));
      goto LABEL_23;
    case 4uLL:
      v4 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 72;
      return *v4;
    case 6uLL:
      v13 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
LABEL_23:
      v11 = *(v13 + 16);
      goto LABEL_24;
    case 8uLL:
      sub_1D61CAFE8(0);
      goto LABEL_19;
    case 9uLL:
      v14 = &qword_1EC884E90;
      v15 = type metadata accessor for FormatMicaData;
      v16 = type metadata accessor for FormatMicaNodeLayoutAttributes;
      goto LABEL_18;
    case 0xAuLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      break;
    case 0xBuLL:
      v5 = &qword_1EC884E78;
      v6 = &qword_1EC884E80;
      v7 = type metadata accessor for FormatVideoData;
      v8 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_13;
    case 0xCuLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      break;
    case 0xDuLL:
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v4 = *(swift_projectBox() + *(v3 + 48)) + 80;
      swift_beginAccess();
      return *v4;
    case 0xEuLL:
      v5 = &qword_1EC880340;
      v6 = &qword_1EC880348;
      v7 = type metadata accessor for FormatVideoPlayerData;
      v8 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_13:
      sub_1D6EE70EC(0, v5, v7, v6, v8);
      goto LABEL_19;
    case 0xFuLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v11 = *(*(swift_projectBox() + *(v10 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
LABEL_24:
      v4 = v11 + 16;
      swift_beginAccess();
      return *v4;
    case 0x12uLL:
      v14 = qword_1EDF24398;
      v15 = type metadata accessor for FormatSponsoredBannerData;
      v16 = type metadata accessor for FormatSponsoredBannerLayoutAttributes;
LABEL_18:
      sub_1D6EE9528(0, v14, v15, v16);
LABEL_19:
      v2 = *(swift_projectBox() + *(v9 + 48));
      break;
    default:
      v2 = *(v1 + 24);
      break;
  }

  v4 = v2 + 64;
  swift_beginAccess();
  return *v4;
}

double sub_1D6EE6210@<D0>(void *a1@<X8>)
{
  v4 = *v2;
  switch((*v2 >> 59) & 0x1E | (*v2 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
      v5 = ((v4 & 0xFFFFFFFFFFFFFFBLL) + 24);
      v6 = 104;
      break;
    case 2uLL:
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v5 = (swift_projectBox() + *(v13 + 48));
      v6 = 32;
      break;
    case 4uLL:
      v5 = ((v4 & 0xFFFFFFFFFFFFFFBLL) + 16);
      v6 = 104;
      break;
    case 6uLL:
      v5 = ((v4 & 0xFFFFFFFFFFFFFFBLL) + 24);
      v6 = 32;
      break;
    case 7uLL:
      v5 = ((v4 & 0xFFFFFFFFFFFFFFBLL) + 24);
      goto LABEL_23;
    case 8uLL:
      sub_1D61CAFE8(0);
      goto LABEL_22;
    case 9uLL:
      sub_1D6EE9528(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
LABEL_13:
      v5 = (swift_projectBox() + *(v14 + 48));
      v6 = 104;
      break;
    case 0xAuLL:
      v5 = ((v4 & 0xFFFFFFFFFFFFFFBLL) + 56);
      goto LABEL_23;
    case 0xBuLL:
      v8 = &qword_1EC884E78;
      v9 = &qword_1EC884E80;
      v10 = type metadata accessor for FormatVideoData;
      v11 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_6;
    case 0xCuLL:
      v5 = ((v4 & 0xFFFFFFFFFFFFFFBLL) + 80);
      goto LABEL_23;
    case 0xDuLL:
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v5 = (swift_projectBox() + *(v15 + 48));
      v6 = 112;
      break;
    case 0xEuLL:
      v8 = &qword_1EC880340;
      v9 = &qword_1EC880348;
      v10 = type metadata accessor for FormatVideoPlayerData;
      v11 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_6:
      sub_1D6EE70EC(0, v8, v10, v9, v11);
      goto LABEL_22;
    case 0xFuLL:
      v5 = ((v4 & 0xFFFFFFFFFFFFFFBLL) + 32);
      v6 = 104;
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v5 = (swift_projectBox() + *(v7 + 48));
      v6 = 40;
      break;
    case 0x11uLL:
      v5 = ((v4 & 0xFFFFFFFFFFFFFFBLL) + 24);
      v6 = 160;
      break;
    case 0x12uLL:
      sub_1D6EE9528(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
LABEL_22:
      v5 = (swift_projectBox() + *(v12 + 48));
LABEL_23:
      v6 = 96;
      break;
    default:
      v5 = (v4 + 24);
      v6 = 104;
      break;
  }

  *a1 = *(*v5 + v6);

  return result;
}

uint64_t sub_1D6EE65AC(__n128 a1)
{
  v2 = *v1;
  switch((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
      v3 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 112;
      return *v3;
    case 2uLL:
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v3 = *(swift_projectBox() + *(v10 + 48)) + 40;
      return *v3;
    case 4uLL:
      v3 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 112;
      return *v3;
    case 6uLL:
      v3 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 40;
      return *v3;
    case 7uLL:
      v11 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      goto LABEL_23;
    case 8uLL:
      sub_1D61CAFE8(0);
      goto LABEL_22;
    case 9uLL:
      sub_1D6EE9528(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
LABEL_13:
      v3 = *(swift_projectBox() + *(v12 + 48)) + 112;
      return *v3;
    case 0xAuLL:
      v11 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      goto LABEL_23;
    case 0xBuLL:
      v5 = &qword_1EC884E78;
      v6 = &qword_1EC884E80;
      v7 = type metadata accessor for FormatVideoData;
      v8 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_6;
    case 0xCuLL:
      v11 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      goto LABEL_23;
    case 0xDuLL:
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v3 = *(swift_projectBox() + *(v13 + 48)) + 120;
      return *v3;
    case 0xEuLL:
      v5 = &qword_1EC880340;
      v6 = &qword_1EC880348;
      v7 = type metadata accessor for FormatVideoPlayerData;
      v8 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_6:
      sub_1D6EE70EC(0, v5, v7, v6, v8);
      goto LABEL_22;
    case 0xFuLL:
      v3 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20) + 160;
      return *v3;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v3 = *(swift_projectBox() + *(v4 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_zIndex;
      return *v3;
    case 0x11uLL:
      v3 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 168;
      return *v3;
    case 0x12uLL:
      sub_1D6EE9528(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
LABEL_22:
      v11 = *(swift_projectBox() + *(v9 + 48));
LABEL_23:
      v3 = v11 + 104;
      break;
    default:
      v3 = *(v2 + 24) + 112;
      break;
  }

  return *v3;
}

BOOL sub_1D6EE6930(__n128 a1)
{
  v2 = *v1;
  v3 = (v2 >> 59) & 0x1E | (v2 >> 2) & 1;
  switch(v3)
  {
    case 6:
      v29 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5B58150(0, &unk_1EDF19900, &type metadata for FormatDisplay.Check, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7270C10;
      v31 = swift_allocObject();
      v32 = *(v29 + 16);
      swift_beginAccess();
      v33 = *(v32 + 32);
      *(v31 + 16) = *(v32 + 16);
      *(v31 + 32) = v33;
      *(inited + 32) = v31 | 0x3000000000000000;

      v35 = sub_1D6EE4A6C(v34);

      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(inited + 40) = v36 | 0x8000000000000000;
      v37 = sub_1D6DFBE58(inited);
      swift_setDeallocating();
LABEL_14:
      swift_arrayDestroy();
      return v37;
    case 4:
      v14 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D5B58150(0, &unk_1EDF19900, &type metadata for FormatDisplay.Check, MEMORY[0x1E69E6F90]);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_1D7270C10;
      v16 = swift_allocObject();
      v17 = *(v14 + 88);
      *(v16 + 16) = *(v14 + 72);
      *(v16 + 32) = v17;
      *(v15 + 32) = v16 | 0x3000000000000000;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D7279970;
      v19 = swift_allocObject();
      v20 = *(v14 + 160);
      v21 = *(v14 + 168);
      v22 = *(v14 + 176);
      v23 = *(v14 + 184);
      v46 = *(v14 + 152);
      *(v19 + 16) = v46;
      *(v19 + 24) = v20;
      *(v19 + 32) = v21;
      *(v19 + 40) = v22;
      *(v19 + 48) = v23;
      *(v18 + 32) = v19 | 0x9000000000000000;
      v24 = swift_allocObject();
      *(v24 + 16) = *(*(v14 + 64) + 96);
      *(v18 + 40) = v24 | 0xB000000000000000;
      v25 = swift_allocObject();
      v26 = *(v14 + 192);
      if (v26)
      {
        v27 = type metadata accessor for FormatGroupNodeStyle();
        v28 = sub_1D6EE95F8(&qword_1EDF0F100, type metadata accessor for FormatGroupNodeStyle, &unk_1D728D804);
      }

      else
      {
        v27 = 0;
        v28 = 0;
        *(v25 + 24) = 0;
        *(v25 + 32) = 0;
      }

      *(v25 + 16) = v26;
      *(v25 + 40) = v27;
      *(v25 + 48) = v28;
      *(v18 + 48) = v25 | 0xA000000000000000;
      v43 = swift_allocObject();
      *(v43 + 16) = v18;
      *(v15 + 40) = v43 | 0x8000000000000000;
      sub_1D61CC60C(v46, v20, v21, v22, v23);

      v37 = sub_1D6DFBE58(v15);
      swift_setDeallocating();
      goto LABEL_14;
    case 2:
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      v5 = *(swift_projectBox() + *(v4 + 48));
      sub_1D5B58150(0, &unk_1EDF19900, &type metadata for FormatDisplay.Check, MEMORY[0x1E69E6F90]);
      v6 = swift_initStackObject();
      *(v6 + 16) = xmmword_1D7270C10;
      v7 = swift_allocObject();
      swift_beginAccess();
      v8 = *(v5 + 80);
      *(v7 + 16) = *(v5 + 64);
      *(v7 + 32) = v8;
      *(v6 + 32) = v7 | 0x3000000000000000;
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      v10 = swift_allocObject();
      v11 = *(v5 + 96);
      if (v11)
      {
        v12 = type metadata accessor for FormatViewNodeStyle();
        v13 = sub_1D6EE95F8(&qword_1EDF2BA88, type metadata accessor for FormatViewNodeStyle, &unk_1D72EA454);
      }

      else
      {
        v12 = 0;
        v13 = 0;
        *(v10 + 24) = 0;
        *(v10 + 32) = 0;
      }

      *(v10 + 16) = v11;
      *(v10 + 40) = v12;
      *(v10 + 48) = v13;
      *(v9 + 32) = v10 | 0xA000000000000000;
      v44 = swift_allocObject();
      *(v44 + 16) = v9;
      *(v6 + 40) = v44 | 0x8000000000000000;

      v37 = sub_1D6DFBE58(v6);
      swift_setDeallocating();
      goto LABEL_14;
  }

  sub_1D5B58150(0, &unk_1EDF19900, &type metadata for FormatDisplay.Check, MEMORY[0x1E69E6F90]);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1D7273AE0;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1D6EE5E70();
  *(v39 + 24) = v40;
  *(v39 + 32) = v41;
  *(v39 + 40) = v42;
  *(v38 + 32) = v39 | 0x3000000000000000;
  v37 = sub_1D6DFBE58(v38);
  swift_setDeallocating();
  sub_1D6EE95A4(v38 + 32);
  return v37;
}

uint64_t FormatDataLayoutValue.nodeIdentifier.getter(__n128 a1)
{
  v1 = sub_1D6EE9168(a1);

  return v1;
}

void sub_1D6EE6F40(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = (*v1 >> 59) & 0x1E | (*v1 >> 2) & 1;
  v4 = 0uLL;
  v5 = 1;
  v6 = 0;
  if (v3 <= 5)
  {
    if (v3 < 4)
    {
      v8 = 0;
      goto LABEL_17;
    }

    if (v3 == 4)
    {
      v12 = *(*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 152);
      if (v12)
      {
        v5 = 0;
        v13 = *(v12 + 16);
        v6 = *(v13 + 48);
        v8 = *(v13 + 56);
        v4 = *(v13 + 64);
      }

      else
      {
        v5 = 1;
        v8 = 0;
      }

      goto LABEL_17;
    }

    v9 = a1;
    v10 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    if (*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x40))
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v7 = (v3 - 6) >= 0xB && v3 == 17;
  v8 = 0;
  if (v7)
  {
    v9 = a1;
    v10 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    if (*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
    {
LABEL_8:
      swift_beginAccess();
      swift_beginAccess();
      CGRectGetMinX(*(v10 + 64));
      sub_1D726328C();
      CGRectGetMinY(*(v10 + 64));
      sub_1D726329C();
      *(&v4 + 1) = v11;
LABEL_16:
      v5 = 0;
      a1 = v9;
      goto LABEL_17;
    }

LABEL_15:
    swift_beginAccess();
    v4 = *(v10 + 80);
    v6 = 0;
    v8 = 0;
    goto LABEL_16;
  }

LABEL_17:
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
}

void sub_1D6EE70EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D6EE9640(255, a4, a5, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D6EE718C()
{
  v1 = type metadata accessor for FormatItemNodeData(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (((1 << ((v5 >> 59) & 0x1E | ((v5 & 4) != 0))) & 0x6FFEF) != 0)
  {
    return;
  }

  if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) != 4)
  {
    sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
    v27 = swift_projectBox();
    sub_1D6EE96A4(v27, v4, type metadata accessor for FormatItemNodeData);
    sub_1D6EE9640(0, &qword_1EDF02218, type metadata accessor for FeedItem, MEMORY[0x1E69E6F90]);
    v28 = *(type metadata accessor for FeedItem(0) - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1D7273AE0;
    sub_1D6EE96A4(v4, v30 + v29, type metadata accessor for FeedItem);
    sub_1D6EE970C(v4, type metadata accessor for FormatItemNodeData);
    return;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFBLL;
  v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v7 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v9 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
  v10 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
  v11 = *(v6 + 48);
  v12 = *(*(v8 + 64) + 96);
  v13 = *(v12 + 16);
  v31[1] = v7;

  v33 = v10;
  v34 = v9;
  v32 = v11;
  sub_1D5EBC314(v9, v10, v11);

  if (!v13)
  {
LABEL_22:

    sub_1D5EBC358(v34, v33, v32);
    return;
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (v14 < *(v12 + 16))
  {
    v35 = *(v12 + 32 + 8 * v14);
    sub_1D6EE718C();
    v17 = *(v16 + 16);
    v18 = v15[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_24;
    }

    v20 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= v15[3] >> 1)
    {
      if (*(v20 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v22 = v18 + v17;
      }

      else
      {
        v22 = v18;
      }

      v15 = sub_1D6991604(isUniquelyReferenced_nonNull_native, v22, 1, v15);
      if (*(v20 + 16))
      {
LABEL_17:
        v23 = (v15[3] >> 1) - v15[2];
        type metadata accessor for FeedItem(0);
        if (v23 < v17)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v24 = v15[2];
          v25 = __OFADD__(v24, v17);
          v26 = v24 + v17;
          if (v25)
          {
            goto LABEL_27;
          }

          v15[2] = v26;
        }

        goto LABEL_6;
      }
    }

    if (v17)
    {
      goto LABEL_25;
    }

LABEL_6:
    if (v13 == ++v14)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1D6EE7560(uint64_t a1@<X8>)
{
  v4 = *v2;
  switch((*v2 >> 59) & 0x1E | (*v2 >> 2) & 1)
  {
    case 1uLL:
      v16 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      goto LABEL_21;
    case 2uLL:
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      goto LABEL_16;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v20 = *(swift_projectBox() + *(v19 + 48));
      v18 = *(v20 + 64);
      v5 = *(v20 + 72);
      break;
    case 4uLL:
      v16 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      goto LABEL_21;
    case 5uLL:
      v24 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v18 = *(v24 + 152);
      v5 = *(v24 + 160);
      break;
    case 6uLL:
    case 7uLL:
    case 8uLL:
      *a1 = 0;
      goto LABEL_3;
    case 9uLL:
      sub_1D6EE9528(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
LABEL_16:
      v16 = *(swift_projectBox() + *(v15 + 48));
      goto LABEL_21;
    case 0xAuLL:
      v14 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      goto LABEL_26;
    case 0xBuLL:
      v9 = &qword_1EC884E78;
      v10 = &qword_1EC884E80;
      v11 = type metadata accessor for FormatVideoData;
      v12 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_10;
    case 0xCuLL:
      v14 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      goto LABEL_26;
    case 0xDuLL:
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v23 = *(swift_projectBox() + *(v22 + 48));
      v18 = *(v23 + 144);
      v5 = *(v23 + 152);
      break;
    case 0xEuLL:
      v9 = &qword_1EC880340;
      v10 = &qword_1EC880348;
      v11 = type metadata accessor for FormatVideoPlayerData;
      v12 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_10:
      sub_1D6EE70EC(0, v9, v11, v10, v12);
      goto LABEL_24;
    case 0xFuLL:
      v17 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v18 = *(v17 + 176);
      v5 = *(v17 + 184);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v7 = *(*(swift_projectBox() + *(v6 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
      v8 = *(v7 + *(*v7 + 144));
      *a1 = 0;
      switch(v8)
      {
        case 5:
          v5 = 1;
          break;
        case 6:
          v5 = 65;
          break;
        case 7:
LABEL_3:
          v5 = -2;
          break;
        default:
          v5 = 0x80;
          break;
      }

      goto LABEL_28;
    case 0x11uLL:
      v21 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v18 = *(v21 + 200);
      v5 = *(v21 + 208);
      break;
    case 0x12uLL:
      sub_1D6EE9528(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
LABEL_24:
      v14 = *(swift_projectBox() + *(v13 + 48));
LABEL_26:
      v18 = *(v14 + 128);
      v5 = *(v14 + 136);
      break;
    default:
      v16 = *(v4 + 24);
LABEL_21:
      v18 = *(v16 + 136);
      v5 = *(v16 + 144);
      break;
  }

  *a1 = v18;
LABEL_28:
  *(a1 + 8) = v5;
}

uint64_t sub_1D6EE793C(uint64_t a1, __n128 a2)
{
  v2 = sub_1D6EE8B60(a2);

  return v2;
}

void sub_1D6EE7974(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = *v2;
  switch((*v2 >> 59) & 0x1E | (*v2 >> 2) & 1)
  {
    case 1uLL:
      v4 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v51 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v73 = v4;
      v74 = v51;
      *&v75 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v6 = 0xC000000000000008;
      goto LABEL_18;
    case 2uLL:
      v43 = a1;
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      v45 = swift_projectBox() + *(v44 + 48);
      v73 = *v45;
      v20 = *(v45 + 16);
      v74 = v20;
      *&v75 = *(v45 + 32);
      a1 = v43;
      v21 = 0xC000000000000000;
      goto LABEL_29;
    case 3uLL:
      v85 = *v2;
      v7 = a1;
      v47 = sub_1D6EE8E64(a2);
      v49 = v48;
      v84 = v3;
      sub_1D6EE7560(&v73);
      v11 = v73.n128_u64[0];
      v12 = v73.n128_u8[8];
      *v7 = v47;
      *(v7 + 8) = v49;
      v13 = 0xC000000000000018;
      goto LABEL_32;
    case 4uLL:
      v22 = a1;
      v23 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v85 = *v2;
      v24 = sub_1D6EE8E64(a2);
      v26 = v25;
      v27 = swift_allocObject();
      v28 = *(v23 + 192);
      if (v28)
      {
        v29 = *(v28 + 232);
        v30 = *(v28 + 248);
        v31 = *(v28 + 200);
        v73 = *(v28 + 184);
        v74 = v31;
        v75 = *(v28 + 216);
        v76 = v29;
        v32 = *(v28 + 296);
        v33 = *(v28 + 328);
        v81 = *(v28 + 312);
        v82 = v33;
        v34 = *(v28 + 264);
        v35 = *(v28 + 280);
        v77 = v30;
        v78 = v34;
        v83 = *(v28 + 344);
        v79 = v35;
        v80 = v32;
        LOBYTE(v28) = sub_1D60081E0(&v73) == 0;
      }

      *(v27 + 16) = v28;
      v84 = v3;
      sub_1D6EE7560(&v73);
      v36 = v73.n128_u64[0];
      v37 = v73.n128_u8[8];
      *v22 = v24;
      *(v22 + 8) = v26;
      *(v22 + 16) = v27;
      *(v22 + 24) = v36;
      *(v22 + 32) = v37;

      return;
    case 5uLL:
      v54 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v73 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v74 = v54;
      *&v75 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      sub_1D6EE81FC(0xC000000000000020, &v73, v3, a1, v73);
      return;
    case 6uLL:
      v85 = *v2;
      v59 = a1;
      v60 = sub_1D6EE8E64(a2);
      v62 = v61;
      v63 = swift_allocObject();

      *(v63 + 16) = sub_1D5C44E90();
      v84 = v3;
      sub_1D6EE7560(&v73);
      v64 = v73.n128_u64[0];
      v65 = v73.n128_u8[8];
      *v59 = v60;
      *(v59 + 8) = v62;
      *(v59 + 16) = v63 | 0x8000000000000000;
      *(v59 + 24) = v64;
      *(v59 + 32) = v65;
      return;
    case 7uLL:
      v50 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v73 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v74 = v50;
      *&v75 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      sub_1D6EE8308(0xC000000000000028, &v73, v3, a1, v73);
      return;
    case 8uLL:
      v85 = *v2;
      v7 = a1;
      v70 = sub_1D6EE8E64(a2);
      v72 = v71;
      v84 = v3;
      sub_1D6EE7560(&v73);
      v11 = v73.n128_u64[0];
      v12 = v73.n128_u8[8];
      *v7 = v70;
      *(v7 + 8) = v72;
      v13 = 0xC000000000000030;
      goto LABEL_32;
    case 9uLL:
      v39 = a1;
      sub_1D6EE9528(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
      v41 = *(swift_projectBox() + *(v40 + 48));

      sub_1D6EE8414(0xC000000000000038, v41, v3, v39, v42);
      return;
    case 0xAuLL:
      v20 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v69 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x48);
      v73 = v20;
      v74 = v69;
      *&v75 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x58);
      v21 = 0xC000000000000040;
      goto LABEL_29;
    case 0xBuLL:
      v17 = a1;
      sub_1D6EE70EC(0, &qword_1EC884E78, type metadata accessor for FormatVideoData, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes);
      v19 = swift_projectBox() + *(v18 + 48);
      v73 = *v19;
      v20 = *(v19 + 16);
      v74 = v20;
      *&v75 = *(v19 + 32);
      v21 = 0xC000000000000048;
      a1 = v17;
LABEL_29:
      sub_1D6EE851C(v21, &v73, v3, a1, v20);
      return;
    case 0xCuLL:
      v38 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v73 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v74 = v38;
      *&v75 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      sub_1D6EE8628(0xC000000000000050, &v73, v3, a1, v73);
      return;
    case 0xDuLL:
      v55 = a1;
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v57 = *(swift_projectBox() + *(v56 + 48));

      sub_1D6EE8734(0xC000000000000058, v57, v3, v55, v58);
      return;
    case 0xEuLL:
      v14 = a1;
      sub_1D6EE70EC(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
      v16 = (swift_projectBox() + *(v15 + 48));
      v73 = *v16;
      v74 = v16[1];
      *&v75 = v16[2].n128_u64[0];
      sub_1D6EE883C(0xC000000000000060, &v73, v3, v14, v74);
      return;
    case 0xFuLL:
      v46 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v73 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v74 = v46;
      *&v75 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      sub_1D6EE8948(0xC000000000000068, &v73, v3, a1, v73);
      return;
    case 0x10uLL:
      v85 = *v2;
      v7 = a1;
      v8 = sub_1D6EE8E64(a2);
      v10 = v9;
      v84 = v3;
      sub_1D6EE7560(&v73);
      v11 = v73.n128_u64[0];
      v12 = v73.n128_u8[8];
      *v7 = v8;
      *(v7 + 8) = v10;
      v13 = 0xC000000000000070;
      goto LABEL_32;
    case 0x11uLL:
      v52 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v53 = *v2;

      sub_1D6EE8A54(0xC000000000000078, v52, v53, a1, a2);
      return;
    case 0x12uLL:
      v85 = *v2;
      v7 = a1;
      v66 = sub_1D6EE8E64(a2);
      v68 = v67;
      v84 = v3;
      sub_1D6EE7560(&v73);
      v11 = v73.n128_u64[0];
      v12 = v73.n128_u8[8];
      *v7 = v66;
      *(v7 + 8) = v68;
      v13 = 0xC000000000000080;
LABEL_32:
      *(v7 + 16) = v13;
      *(v7 + 24) = v11;
      *(v7 + 32) = v12;

      break;
    default:
      v4 = *(v3 + 24);
      v5 = *(v3 + 40);
      v73 = v4;
      v74 = v5;
      *&v75 = *(v3 + 56);
      v6 = 0xC000000000000010;
LABEL_18:
      sub_1D6EE80F0(v6, &v73, v3, a1, v4);
      break;
  }
}

double sub_1D6EE80F0@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(*a2 + 168);
  if (*(v8 + 16))
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v8;
    v13 = v12 | 0x4000000000000000;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v16;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;

    v13 = a1;
  }

  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;

  return sub_1D5F33D5C(a1);
}

double sub_1D6EE81FC@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(*a2 + 208);
  if (*(v8 + 16))
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v8;
    v13 = v12 | 0x4000000000000000;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v16;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;

    v13 = a1;
  }

  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;

  return sub_1D5F33D5C(a1);
}

double sub_1D6EE8308@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(*a2 + 136);
  if (*(v8 + 16))
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v8;
    v13 = v12 | 0x4000000000000000;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v16;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;

    v13 = a1;
  }

  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;

  return sub_1D5F33D5C(a1);
}

double sub_1D6EE8414@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(a2 + 152);
  if (*(v8 + 16))
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v8;
    v13 = v12 | 0x4000000000000000;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v16;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;

    v13 = a1;
  }

  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;

  return sub_1D5F33D5C(a1);
}

double sub_1D6EE851C@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(*a2 + 152);
  if (*(v8 + 16))
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v8;
    v13 = v12 | 0x4000000000000000;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v16;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;

    v13 = a1;
  }

  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;

  return sub_1D5F33D5C(a1);
}

double sub_1D6EE8628@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(*a2 + 216);
  if (*(v8 + 16))
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v8;
    v13 = v12 | 0x4000000000000000;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v16;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;

    v13 = a1;
  }

  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;

  return sub_1D5F33D5C(a1);
}

double sub_1D6EE8734@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(a2 + 160);
  if (*(v8 + 16))
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v8;
    v13 = v12 | 0x4000000000000000;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v16;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;

    v13 = a1;
  }

  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;

  return sub_1D5F33D5C(a1);
}

double sub_1D6EE883C@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(*a2 + 176);
  if (*(v8 + 16))
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v8;
    v13 = v12 | 0x4000000000000000;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v16;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;

    v13 = a1;
  }

  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;

  return sub_1D5F33D5C(a1);
}

double sub_1D6EE8948@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(*a2 + 192);
  if (*(v8 + 16))
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v8;
    v13 = v12 | 0x4000000000000000;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v16;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;

    v13 = a1;
  }

  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;

  return sub_1D5F33D5C(a1);
}

double sub_1D6EE8A54@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(a2 + 248);
  if (*(v8 + 16))
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v8;
    v13 = v12 | 0x4000000000000000;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v21 = a3;
    v9 = sub_1D6EE8E64(a5);
    v11 = v16;
    v20 = a3;
    sub_1D6EE7560(&v18);
    v14 = v18;
    v15 = v19;

    v13 = a1;
  }

  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;

  return sub_1D5F33D5C(a1);
}

uint64_t sub_1D6EE8B60(__n128 a1)
{
  v2 = *v1;
  switch((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 0x11uLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 24);
      break;
    case 2uLL:
      v7 = qword_1EDF31DD0;
      v8 = &qword_1EDF1C800;
      v9 = type metadata accessor for FormatViewData;
      v10 = type metadata accessor for FormatViewNodeLayoutAttributes;
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v14 = *(swift_projectBox() + *(v13 + 48));
      goto LABEL_23;
    case 4uLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 16);
      break;
    case 6uLL:
      v14 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
LABEL_23:
      v3 = (v14 + 16);
      goto LABEL_24;
    case 8uLL:
      sub_1D61CAFE8(0);
      goto LABEL_19;
    case 9uLL:
      v4 = &qword_1EC884E90;
      v5 = type metadata accessor for FormatMicaData;
      v6 = type metadata accessor for FormatMicaNodeLayoutAttributes;
      goto LABEL_18;
    case 0xAuLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 56);
      break;
    case 0xBuLL:
      v7 = &qword_1EC884E78;
      v8 = &unk_1EC884E80;
      v9 = type metadata accessor for FormatVideoData;
      v10 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_13;
    case 0xCuLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 80);
      break;
    case 0xDuLL:
      v4 = &qword_1EC899970;
      v5 = type metadata accessor for FormatShareAttributionData;
      v6 = type metadata accessor for FormatShareAttributionNodeLayoutAttributes;
      goto LABEL_18;
    case 0xEuLL:
      v7 = &qword_1EC880340;
      v8 = &qword_1EC880348;
      v9 = type metadata accessor for FormatVideoPlayerData;
      v10 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_13:
      sub_1D6EE70EC(0, v7, v9, v8, v10);
      goto LABEL_19;
    case 0xFuLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 32);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v3 = (*(swift_projectBox() + *(v12 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
LABEL_24:
      v15 = 48;
      return *(*v3 + v15);
    case 0x12uLL:
      v4 = qword_1EDF24398;
      v5 = type metadata accessor for FormatSponsoredBannerData;
      v6 = type metadata accessor for FormatSponsoredBannerLayoutAttributes;
LABEL_18:
      sub_1D6EE9528(0, v4, v5, v6);
LABEL_19:
      v3 = (swift_projectBox() + *(v11 + 48));
      break;
    default:
      v3 = (v2 + 24);
      break;
  }

  v15 = 16;
  return *(*v3 + v15);
}

uint64_t sub_1D6EE8E64(__n128 a1)
{
  v2 = *v1;
  switch((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 0x11uLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 24);
      break;
    case 2uLL:
      v7 = qword_1EDF31DD0;
      v8 = &qword_1EDF1C800;
      v9 = type metadata accessor for FormatViewData;
      v10 = type metadata accessor for FormatViewNodeLayoutAttributes;
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v14 = *(swift_projectBox() + *(v13 + 48));
      goto LABEL_23;
    case 4uLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 16);
      break;
    case 6uLL:
      v14 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
LABEL_23:
      v3 = (v14 + 16);
      goto LABEL_24;
    case 8uLL:
      sub_1D61CAFE8(0);
      goto LABEL_19;
    case 9uLL:
      v4 = &qword_1EC884E90;
      v5 = type metadata accessor for FormatMicaData;
      v6 = type metadata accessor for FormatMicaNodeLayoutAttributes;
      goto LABEL_18;
    case 0xAuLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 56);
      break;
    case 0xBuLL:
      v7 = &qword_1EC884E78;
      v8 = &qword_1EC884E80;
      v9 = type metadata accessor for FormatVideoData;
      v10 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_13;
    case 0xCuLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 80);
      break;
    case 0xDuLL:
      v4 = &qword_1EC899970;
      v5 = type metadata accessor for FormatShareAttributionData;
      v6 = type metadata accessor for FormatShareAttributionNodeLayoutAttributes;
      goto LABEL_18;
    case 0xEuLL:
      v7 = &qword_1EC880340;
      v8 = &qword_1EC880348;
      v9 = type metadata accessor for FormatVideoPlayerData;
      v10 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_13:
      sub_1D6EE70EC(0, v7, v9, v8, v10);
      goto LABEL_19;
    case 0xFuLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 32);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v3 = (*(swift_projectBox() + *(v12 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
LABEL_24:
      v15 = 64;
      return *(*v3 + v15);
    case 0x12uLL:
      v4 = qword_1EDF24398;
      v5 = type metadata accessor for FormatSponsoredBannerData;
      v6 = type metadata accessor for FormatSponsoredBannerLayoutAttributes;
LABEL_18:
      sub_1D6EE9528(0, v4, v5, v6);
LABEL_19:
      v3 = (swift_projectBox() + *(v11 + 48));
      break;
    default:
      v3 = (v2 + 24);
      break;
  }

  v15 = 32;
  return *(*v3 + v15);
}

uint64_t sub_1D6EE9168(__n128 a1)
{
  v2 = *v1;
  switch((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 0x11uLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 24);
      break;
    case 2uLL:
      v7 = qword_1EDF31DD0;
      v8 = &qword_1EDF1C800;
      v9 = type metadata accessor for FormatViewData;
      v10 = type metadata accessor for FormatViewNodeLayoutAttributes;
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v14 = *(swift_projectBox() + *(v13 + 48));
      goto LABEL_23;
    case 4uLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 16);
      break;
    case 6uLL:
      v14 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
LABEL_23:
      v3 = (v14 + 16);
      goto LABEL_24;
    case 8uLL:
      sub_1D61CAFE8(0);
      goto LABEL_19;
    case 9uLL:
      v4 = &qword_1EC884E90;
      v5 = type metadata accessor for FormatMicaData;
      v6 = type metadata accessor for FormatMicaNodeLayoutAttributes;
      goto LABEL_18;
    case 0xAuLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 56);
      break;
    case 0xBuLL:
      v7 = &qword_1EC884E78;
      v8 = &qword_1EC884E80;
      v9 = type metadata accessor for FormatVideoData;
      v10 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_13;
    case 0xCuLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 80);
      break;
    case 0xDuLL:
      v4 = &qword_1EC899970;
      v5 = type metadata accessor for FormatShareAttributionData;
      v6 = type metadata accessor for FormatShareAttributionNodeLayoutAttributes;
      goto LABEL_18;
    case 0xEuLL:
      v7 = &qword_1EC880340;
      v8 = &qword_1EC880348;
      v9 = type metadata accessor for FormatVideoPlayerData;
      v10 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_13:
      sub_1D6EE70EC(0, v7, v9, v8, v10);
      goto LABEL_19;
    case 0xFuLL:
      v3 = ((v2 & 0xFFFFFFFFFFFFFFBLL) + 32);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v3 = (*(swift_projectBox() + *(v12 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
LABEL_24:
      v15 = 80;
      return *(*v3 + v15);
    case 0x12uLL:
      v4 = qword_1EDF24398;
      v5 = type metadata accessor for FormatSponsoredBannerData;
      v6 = type metadata accessor for FormatSponsoredBannerLayoutAttributes;
LABEL_18:
      sub_1D6EE9528(0, v4, v5, v6);
LABEL_19:
      v3 = (swift_projectBox() + *(v11 + 48));
      break;
    default:
      v3 = (v2 + 24);
      break;
  }

  v15 = 48;
  return *(*v3 + v15);
}