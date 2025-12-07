void sub_1D68E1520(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v26 = MEMORY[0x1E69E7CC8];
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v11)) | (v14 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(a1 + 56) + 8 * v15);

      v5 = v19;
      sub_1D68E16B8(&v26, v18, v17, v5, a2);
      if (v6)
      {
        break;
      }

      v11 &= v11 - 1;

      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        v20 = v26;
        sub_1D68FF774(a3, a4, type metadata accessor for SportsDataServiceBatchResourceRequest);
        sub_1D68FE7F8(0, v21);
        *(a4 + *(v22 + 52)) = v20;
        return;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1D68E16B8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v69 = a5;
  v67 = a1;
  v8 = MEMORY[0x1E69E6720];
  sub_1D68FD964(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v66 = &v63 - v11;
  v12 = sub_1D725891C();
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D72585BC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v63 - v22;
  sub_1D68FD964(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, v8);
  *&v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25).n128_u64[0];
  v28 = &v63 - v27;
  v68 = a4;
  v29 = [a4 fileURL];
  if (!v29)
  {
    sub_1D68FEC44();
    v34 = swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  v63 = v12;
  v70 = a2;
  v30 = v29;
  sub_1D72584EC();

  (*(v16 + 32))(v23, v19, v15);
  v31 = v71;
  v32 = sub_1D72585DC();
  v34 = v31;
  if (v31)
  {
    (*(v16 + 8))(v23, v15);
    a2 = v70;
LABEL_6:
    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v38 = sub_1D725C42C();
    __swift_project_value_buffer(v38, qword_1EDF17598);

    v39 = v34;
    v40 = sub_1D725C3FC();
    v41 = sub_1D7262EBC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73 = v43;
      *v42 = 136446466;
      *(v42 + 4) = sub_1D5BC5100(a2, a3, &v73);
      *(v42 + 12) = 2082;
      v72 = v34;
      v44 = v34;
      sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
      v45 = sub_1D72620FC();
      v47 = sub_1D5BC5100(v45, v46, &v73);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_1D5B42000, v40, v41, "Sports data service failed to decode resource %{public}s, error=%{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v43, -1, -1);
      MEMORY[0x1DA6FD500](v42, -1, -1);
    }

    else
    {
    }

    return;
  }

  v35 = v32;
  v36 = v33;
  v71 = a3;
  v37 = type metadata accessor for SportsRoster(0);
  sub_1D68FE974();
  sub_1D725A69C();
  (*(v16 + 8))(v23, v15);
  sub_1D5B952F8(v35, v36);
  (*(*(v37 - 8) + 56))(v28, 0, 1, v37);
  v48 = v71;

  sub_1D6D619CC(v28, v70, v48);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v49 = sub_1D725C42C();
  __swift_project_value_buffer(v49, qword_1EDF17598);

  v50 = v68;
  v51 = sub_1D725C3FC();
  v52 = sub_1D7262EDC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v73 = v54;
    *v53 = 136446466;
    *(v53 + 4) = sub_1D5BC5100(v70, v48, &v73);
    *(v53 + 12) = 2082;
    v55 = [v50 fetchDate];
    v56 = v64;
    sub_1D72588BC();

    v57 = v66;
    sub_1D7258A4C();
    v58 = sub_1D7258AAC();
    (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
    v59 = sub_1D725879C();
    v61 = v60;
    sub_1D6900328(v57, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D68FD964);
    (*(v65 + 8))(v56, v63);
    v62 = sub_1D5BC5100(v59, v61, &v73);

    *(v53 + 14) = v62;
    _os_log_impl(&dword_1D5B42000, v51, v52, "Sports data service resolved resource %{public}s with fetch date=%{public}s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v54, -1, -1);
    MEMORY[0x1DA6FD500](v53, -1, -1);
  }
}

void sub_1D68E1EA4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
    return;
  }

  if (a3)
  {
    sub_1D5F13DE4(a1, a2);
    v12 = a3;
    if ([v12 statusCode] == 403)
    {
      sub_1D5F82C30();
      swift_allocError();
      *v13 = 18;
      swift_willThrow();

      sub_1D5B952E4(a1, a2);
      return;
    }
  }

  else
  {
    sub_1D5E3E824(a1, a2);
  }

  sub_1D6900A98();
  sub_1D725A69C();
  sub_1D5B952E4(a1, a2);
  if (!v5)
  {
    sub_1D68FF774(a4, a5, type metadata accessor for SportsDataServiceURLRequest);
    type metadata accessor for SportsDataServiceRequest(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC, &type metadata for SportsTaxonomyGraphResource);
    v15 = a5 + *(v14 + 52);
    *v15 = v16;
    *(v15 + 16) = v17;
  }
}

void sub_1D68E208C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
    return;
  }

  if (a3)
  {
    sub_1D5F13DE4(a1, a2);
    v12 = a3;
    if ([v12 statusCode] == 403)
    {
      sub_1D5F82C30();
      swift_allocError();
      *v13 = 18;
      swift_willThrow();

      sub_1D5B952E4(a1, a2);
      return;
    }
  }

  else
  {
    sub_1D5E3E824(a1, a2);
  }

  sub_1D6900768();
  sub_1D725A69C();
  sub_1D5B952E4(a1, a2);
  if (!v5)
  {
    sub_1D68FF774(a4, a5, type metadata accessor for SportsDataServiceURLRequest);
    type metadata accessor for SportsDataServiceRequest(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC, &type metadata for SportsEmbedConfigResource);
    *(a5 + *(v14 + 52)) = v15;
  }
}

void sub_1D68E2258(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
    return;
  }

  if (a3)
  {
    sub_1D5F13DE4(a1, a2);
    v12 = a3;
    if ([v12 statusCode] == 403)
    {
      sub_1D5F82C30();
      swift_allocError();
      *v13 = 18;
      swift_willThrow();

      sub_1D5B952E4(a1, a2);
      return;
    }
  }

  else
  {
    sub_1D5E3E824(a1, a2);
  }

  type metadata accessor for SportsSyncingConfigResource();
  sub_1D6900474();
  sub_1D725A69C();
  sub_1D5B952E4(a1, a2);
  if (!v5)
  {
    sub_1D68FF774(a4, a5, type metadata accessor for SportsDataServiceURLRequest);
    type metadata accessor for SportsDataServiceRequest(0);
    swift_storeEnumTagMultiPayload();
    sub_1D690042C(0);
    *(a5 + *(v14 + 52)) = v15;
  }
}

uint64_t sub_1D68E23F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(__n128)@<X6>, uint64_t (*a7)(void, __n128)@<X7>, uint64_t a8@<X8>, uint64_t (*a9)(char *, uint64_t))
{
  v27 = a4;
  v28 = a8;
  v15 = a5(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v26 - v17;
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v19 = 5;
    return swift_willThrow();
  }

  if (a3)
  {
    sub_1D5F13DE4(a1, a2);
    v21 = a3;
    if ([v21 statusCode] == 403)
    {
      sub_1D5F82C30();
      swift_allocError();
      *v22 = 18;
      swift_willThrow();

      return sub_1D5B952E4(a1, a2);
    }

    v26 = a7;
  }

  else
  {
    v26 = a7;
    v23.n128_f64[0] = sub_1D5E3E824(a1, a2);
  }

  a6(v23);
  sub_1D725A69C();
  result = sub_1D5B952E4(a1, a2);
  if (!v9)
  {
    v24 = v28;
    sub_1D68FF774(v27, v28, type metadata accessor for SportsDataServiceURLRequest);
    type metadata accessor for SportsDataServiceRequest(0);
    swift_storeEnumTagMultiPayload();
    v25 = v26(0);
    return a9(v18, v24 + *(v25 + 52));
  }

  return result;
}

char *sub_1D68E261C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v34 = a6;
  v35 = a4;
  v32 = a2;
  v8 = type metadata accessor for SportsDataServiceURLRequest(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v15 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) != 0 && (v38 = a1, v16 = a1, sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]), swift_dynamicCast()) && v37 == 18)
  {
    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v17 = sub_1D725C42C();
    __swift_project_value_buffer(v17, qword_1EDF17598);
    v18 = sub_1D725C3FC();
    v19 = sub_1D7262EDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = v18;
      v21 = v20;
      *v20 = 0;
      _os_log_impl(&dword_1D5B42000, v31, v19, "Refreshing access token for sports visualizations", v20, 2u);
      v22 = v21;
      v18 = v31;
      MEMORY[0x1DA6FD500](v22, -1, -1);
    }

    v23 = v32[12];
    v31 = v32[13];
    __swift_project_boxed_opaque_existential_1(v32 + 9, v23);
    v24 = v35;
    sub_1D725B43C();
    (*(v12 + 16))(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v11);
    sub_1D68FF774(v24, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsDataServiceURLRequest);
    v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v26 = (v13 + *(v33 + 80) + v25) & ~*(v33 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v25, v15, v11);
    sub_1D68FFE38(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for SportsDataServiceURLRequest);
    v28 = sub_1D725B92C();
    sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC, &type metadata for SportsTaxonomyGraphResource);
    type metadata accessor for SportsDataServiceRequestFetcher();
    v15 = sub_1D725BA9C();
  }

  else
  {
    swift_willThrow();
    v29 = a1;
  }

  return v15;
}

char *sub_1D68E2A1C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v34 = a6;
  v35 = a4;
  v32 = a2;
  v8 = type metadata accessor for SportsDataServiceURLRequest(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v15 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) != 0 && (v38 = a1, v16 = a1, sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]), swift_dynamicCast()) && v37 == 18)
  {
    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v17 = sub_1D725C42C();
    __swift_project_value_buffer(v17, qword_1EDF17598);
    v18 = sub_1D725C3FC();
    v19 = sub_1D7262EDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = v18;
      v21 = v20;
      *v20 = 0;
      _os_log_impl(&dword_1D5B42000, v31, v19, "Refreshing access token for sports visualizations", v20, 2u);
      v22 = v21;
      v18 = v31;
      MEMORY[0x1DA6FD500](v22, -1, -1);
    }

    v23 = v32[12];
    v31 = v32[13];
    __swift_project_boxed_opaque_existential_1(v32 + 9, v23);
    v24 = v35;
    sub_1D725B43C();
    (*(v12 + 16))(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v11);
    sub_1D68FF774(v24, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsDataServiceURLRequest);
    v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v26 = (v13 + *(v33 + 80) + v25) & ~*(v33 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v25, v15, v11);
    sub_1D68FFE38(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for SportsDataServiceURLRequest);
    v28 = sub_1D725B92C();
    sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC, &type metadata for SportsEmbedConfigResource);
    type metadata accessor for SportsDataServiceRequestFetcher();
    v15 = sub_1D725BA9C();
  }

  else
  {
    swift_willThrow();
    v29 = a1;
  }

  return v15;
}

uint64_t sub_1D68E2E1C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v41 = a7;
  v42 = a8;
  v43 = a5;
  v39 = a6;
  v40 = a4;
  v37 = a2;
  v11 = type metadata accessor for SportsDataServiceURLRequest(0);
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v18 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) != 0 && (v45 = a1, v19 = a1, sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]), swift_dynamicCast()) && v44 == 18)
  {
    v36 = a9;
    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725C42C();
    __swift_project_value_buffer(v20, qword_1EDF17598);
    v21 = sub_1D725C3FC();
    v22 = sub_1D7262EDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = v21;
      v24 = v23;
      *v23 = 0;
      _os_log_impl(&dword_1D5B42000, v35, v22, "Refreshing access token for sports visualizations", v23, 2u);
      v25 = v24;
      v21 = v35;
      MEMORY[0x1DA6FD500](v25, -1, -1);
    }

    v26 = v37[12];
    v35 = v37[13];
    __swift_project_boxed_opaque_existential_1(v37 + 9, v26);
    v27 = v40;
    sub_1D725B43C();
    (*(v15 + 16))(&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v14);
    sub_1D68FF774(v27, &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsDataServiceURLRequest);
    v28 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v29 = (v16 + *(v38 + 80) + v28) & ~*(v38 + 80);
    v30 = swift_allocObject();
    (*(v15 + 32))(v30 + v28, v18, v14);
    sub_1D68FFE38(&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for SportsDataServiceURLRequest);
    v31 = sub_1D725B92C();
    v42(0);
    type metadata accessor for SportsDataServiceRequestFetcher();
    v11 = sub_1D725BA9C();
  }

  else
  {
    swift_willThrow();
    v32 = a1;
  }

  return v11;
}

void sub_1D68E31E4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
  }

  else
  {
    sub_1D5E3E824(a1, a2);
    sub_1D6900A98();
    sub_1D725A69C();
    sub_1D5B952E4(a1, a2);
    if (!v4)
    {
      sub_1D68FF774(a3, a4, type metadata accessor for SportsDataServiceRequest);
      sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC, &type metadata for SportsTaxonomyGraphResource);
      v11 = a4 + *(v10 + 52);
      *v11 = v12;
      *(v11 + 16) = v13;
    }
  }
}

void sub_1D68E3334(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
  }

  else
  {
    sub_1D5E3E824(a1, a2);
    sub_1D6900768();
    sub_1D725A69C();
    sub_1D5B952E4(a1, a2);
    if (!v4)
    {
      sub_1D68FF774(a3, a4, type metadata accessor for SportsDataServiceRequest);
      sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC, &type metadata for SportsEmbedConfigResource);
      *(a4 + *(v10 + 52)) = v11;
    }
  }
}

void sub_1D68E3470(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for SportsSyncingConfigResource();
    sub_1D5E3E824(a1, a2);
    sub_1D6900474();
    sub_1D725A69C();
    sub_1D5B952E4(a1, a2);
    if (!v4)
    {
      sub_1D68FF774(a3, a4, type metadata accessor for SportsDataServiceRequest);
      sub_1D690042C(0);
      *(a4 + *(v10 + 52)) = v11;
    }
  }
}

uint64_t sub_1D68E3584@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t (*a5)(double)@<X6>, uint64_t (*a6)(void)@<X7>, uint64_t a7@<X8>, uint64_t (*a8)(char *, uint64_t))
{
  v24 = a3;
  v14 = a4(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v18 = 5;
    return swift_willThrow();
  }

  else
  {
    v23 = a6;
    v20 = sub_1D5E3E824(a1, a2);
    a5(v20);
    sub_1D725A69C();
    result = sub_1D5B952E4(a1, a2);
    if (!v8)
    {
      sub_1D68FF774(v24, a7, type metadata accessor for SportsDataServiceRequest);
      v21 = v23(0);
      return a8(v17, a7 + *(v21 + 52));
    }
  }

  return result;
}

uint64_t sub_1D68E3710@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v65 = a2;
  v6 = sub_1D72585BC();
  *&v71 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v68 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v74 = &v60[-v11];
  v12 = type metadata accessor for SportsDataServiceRequest(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D68FD964(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v60[-v18];
  v20 = sub_1D725891C();
  v66 = *(v20 - 8);
  v67 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v60[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725C42C();
  __swift_project_value_buffer(v24, qword_1EDF17598);
  v25 = a1;
  v26 = sub_1D725C3FC();
  v27 = sub_1D7262EDC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v63 = v6;
    v29 = v28;
    v62 = swift_slowAlloc();
    *&v72 = v62;
    *v29 = 136446466;
    v30 = [v25 resourceID];
    v31 = sub_1D726207C();
    v61 = v27;
    v32 = a4;
    v33 = v31;
    v64 = v15;
    v35 = v34;

    v36 = v33;
    a4 = v32;
    v37 = sub_1D5BC5100(v36, v35, &v72);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2082;
    v38 = [v25 fetchDate];
    sub_1D72588BC();

    sub_1D7258A4C();
    v39 = sub_1D7258AAC();
    (*(*(v39 - 8) + 56))(v19, 0, 1, v39);
    v40 = sub_1D725879C();
    v42 = v41;
    sub_1D6900328(v19, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D68FD964);
    (*(v66 + 8))(v23, v67);
    v43 = sub_1D5BC5100(v40, v42, &v72);
    v15 = v64;

    *(v29 + 14) = v43;
    _os_log_impl(&dword_1D5B42000, v26, v61, "Sports data service resolved resource %{public}s with fetch date=%{public}s", v29, 0x16u);
    v44 = v62;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v44, -1, -1);
    v45 = v29;
    v6 = v63;
    MEMORY[0x1DA6FD500](v45, -1, -1);
  }

  v46 = v74;
  sub_1D68FF774(v70, v15, type metadata accessor for SportsDataServiceRequest);
  v47 = [v25 fileURL];
  v48 = v71;
  if (v47)
  {
    v49 = v68;
    v50 = v47;
    sub_1D72584EC();

    (*(v48 + 32))(v46, v49, v6);
    v51 = v69;
    v52 = sub_1D72585DC();
    if (!v51)
    {
      v54 = v52;
      v55 = v53;
      sub_1D6900A98();
      sub_1D725A69C();
      (*(v48 + 8))(v46, v6);
      sub_1D5B952F8(v54, v55);
      v71 = v72;
      v56 = v73;
      sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC, &type metadata for SportsTaxonomyGraphResource);
      v58 = a4 + *(v57 + 52);
      *v58 = v71;
      *(v58 + 16) = v56;
      return sub_1D68FFE38(v15, a4, type metadata accessor for SportsDataServiceRequest);
    }

    (*(v48 + 8))(v46, v6);
  }

  else
  {
    sub_1D68FEC44();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1D68FF714(v15, type metadata accessor for SportsDataServiceRequest);
}

uint64_t sub_1D68E3D98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v64 = a2;
  v6 = sub_1D72585BC();
  v71 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v67 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v70 = &v59[-v11];
  v12 = type metadata accessor for SportsDataServiceRequest(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D68FD964(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v59[-v18];
  v20 = sub_1D725891C();
  v65 = *(v20 - 8);
  v66 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v59[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725C42C();
  __swift_project_value_buffer(v24, qword_1EDF17598);
  v25 = a1;
  v26 = sub_1D725C3FC();
  v27 = sub_1D7262EDC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v62 = v6;
    v29 = v28;
    v61 = swift_slowAlloc();
    v72 = v61;
    *v29 = 136446466;
    v30 = [v25 resourceID];
    v31 = sub_1D726207C();
    v60 = v27;
    v32 = a4;
    v33 = v31;
    v63 = v15;
    v35 = v34;

    v36 = v33;
    a4 = v32;
    v37 = sub_1D5BC5100(v36, v35, &v72);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2082;
    v38 = [v25 fetchDate];
    sub_1D72588BC();

    sub_1D7258A4C();
    v39 = sub_1D7258AAC();
    (*(*(v39 - 8) + 56))(v19, 0, 1, v39);
    v40 = sub_1D725879C();
    v42 = v41;
    sub_1D6900328(v19, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D68FD964);
    (*(v65 + 8))(v23, v66);
    v43 = sub_1D5BC5100(v40, v42, &v72);
    v15 = v63;

    *(v29 + 14) = v43;
    _os_log_impl(&dword_1D5B42000, v26, v60, "Sports data service resolved resource %{public}s with fetch date=%{public}s", v29, 0x16u);
    v44 = v61;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v44, -1, -1);
    v45 = v29;
    v6 = v62;
    MEMORY[0x1DA6FD500](v45, -1, -1);
  }

  v46 = v70;
  sub_1D68FF774(v69, v15, type metadata accessor for SportsDataServiceRequest);
  v47 = [v25 fileURL];
  v48 = v71;
  if (v47)
  {
    v49 = v67;
    v50 = v47;
    sub_1D72584EC();

    (*(v48 + 32))(v46, v49, v6);
    v51 = v68;
    v52 = sub_1D72585DC();
    if (!v51)
    {
      v54 = v52;
      v55 = v53;
      sub_1D6900768();
      sub_1D725A69C();
      (*(v48 + 8))(v46, v6);
      sub_1D5B952F8(v54, v55);
      v56 = v72;
      sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC, &type metadata for SportsEmbedConfigResource);
      *(a4 + *(v57 + 52)) = v56;
      return sub_1D68FFE38(v15, a4, type metadata accessor for SportsDataServiceRequest);
    }

    (*(v48 + 8))(v46, v6);
  }

  else
  {
    sub_1D68FEC44();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1D68FF714(v15, type metadata accessor for SportsDataServiceRequest);
}

uint64_t sub_1D68E4408@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v64 = a2;
  v6 = sub_1D72585BC();
  v70 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v67 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v71 = &v59[-v11];
  v12 = type metadata accessor for SportsDataServiceRequest(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D68FD964(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v59[-v18];
  v20 = sub_1D725891C();
  v65 = *(v20 - 8);
  v66 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v59[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725C42C();
  __swift_project_value_buffer(v24, qword_1EDF17598);
  v25 = a1;
  v26 = sub_1D725C3FC();
  v27 = sub_1D7262EDC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v63 = a4;
    v29 = v28;
    v61 = swift_slowAlloc();
    v72 = v61;
    *v29 = 136446466;
    v30 = [v25 resourceID];
    v31 = sub_1D726207C();
    v60 = v27;
    v32 = v15;
    v33 = v31;
    v62 = v6;
    v35 = v34;

    v36 = v33;
    v15 = v32;
    v37 = sub_1D5BC5100(v36, v35, &v72);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2082;
    v38 = [v25 fetchDate];
    sub_1D72588BC();

    sub_1D7258A4C();
    v39 = sub_1D7258AAC();
    (*(*(v39 - 8) + 56))(v19, 0, 1, v39);
    v40 = sub_1D725879C();
    v42 = v41;
    sub_1D6900328(v19, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D68FD964);
    (*(v65 + 8))(v23, v66);
    v43 = sub_1D5BC5100(v40, v42, &v72);
    v6 = v62;

    *(v29 + 14) = v43;
    _os_log_impl(&dword_1D5B42000, v26, v60, "Sports data service resolved resource %{public}s with fetch date=%{public}s", v29, 0x16u);
    v44 = v61;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v44, -1, -1);
    v45 = v29;
    a4 = v63;
    MEMORY[0x1DA6FD500](v45, -1, -1);
  }

  v46 = v70;
  sub_1D68FF774(v69, v15, type metadata accessor for SportsDataServiceRequest);
  v47 = [v25 fileURL];
  v48 = v71;
  if (v47)
  {
    v49 = v67;
    v50 = v47;
    sub_1D72584EC();

    (*(v46 + 32))(v48, v49, v6);
    v51 = v68;
    v52 = sub_1D72585DC();
    if (!v51)
    {
      v54 = v52;
      v55 = v53;
      type metadata accessor for SportsSyncingConfigResource();
      sub_1D6900474();
      sub_1D725A69C();
      (*(v46 + 8))(v71, v6);
      sub_1D5B952F8(v54, v55);
      v56 = v72;
      sub_1D690042C(0);
      *(a4 + *(v57 + 52)) = v56;
      return sub_1D68FFE38(v15, a4, type metadata accessor for SportsDataServiceRequest);
    }

    (*(v46 + 8))(v48, v6);
  }

  else
  {
    sub_1D68FEC44();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1D68FF714(v15, type metadata accessor for SportsDataServiceRequest);
}

uint64_t sub_1D68E4B2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, __n128)@<X3>, void (*a5)(void)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(char *, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v71 = a6;
  v72 = a7;
  v75 = a5;
  v80 = a3;
  v70 = a8;
  v11 = sub_1D72585BC();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v78 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v81 = &v67 - v17;
  v73 = a4(0, v16);
  MEMORY[0x1EEE9AC00](v73, v18);
  v20 = &v67 - v19;
  v21 = type metadata accessor for SportsDataServiceRequest(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v82 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FD964(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v67 - v26;
  v28 = sub_1D725891C();
  v76 = *(v28 - 8);
  v77 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725C42C();
  __swift_project_value_buffer(v32, qword_1EDF17598);
  v33 = a1;
  v34 = sub_1D725C3FC();
  v35 = sub_1D7262EDC();

  v36 = os_log_type_enabled(v34, v35);
  v74 = v20;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v69 = a2;
    v38 = v37;
    v68 = swift_slowAlloc();
    v85 = v68;
    *v38 = 136446466;
    v39 = [v33 resourceID];
    v40 = sub_1D726207C();
    v42 = v41;

    v43 = sub_1D5BC5100(v40, v42, &v85);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2082;
    v44 = [v33 fetchDate];
    sub_1D72588BC();

    sub_1D7258A4C();
    v45 = sub_1D7258AAC();
    (*(*(v45 - 8) + 56))(v27, 0, 1, v45);
    v46 = sub_1D725879C();
    v48 = v47;
    sub_1D6900328(v27, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D68FD964);
    (*(v76 + 8))(v31, v77);
    v49 = sub_1D5BC5100(v46, v48, &v85);

    *(v38 + 14) = v49;
    _os_log_impl(&dword_1D5B42000, v34, v35, "Sports data service resolved resource %{public}s with fetch date=%{public}s", v38, 0x16u);
    v50 = v68;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v50, -1, -1);
    MEMORY[0x1DA6FD500](v38, -1, -1);
  }

  v51 = v84;
  v52 = v82;
  sub_1D68FF774(v80, v82, type metadata accessor for SportsDataServiceRequest);
  v53 = [v33 fileURL];
  v54 = v83;
  v55 = v81;
  if (v53)
  {
    v56 = v78;
    v57 = v53;
    sub_1D72584EC();

    (*(v54 + 32))(v55, v56, v51);
    v58 = v79;
    v59 = sub_1D72585DC();
    if (!v58)
    {
      v61 = v59;
      v62 = v60;
      v75();
      v63 = v74;
      sub_1D725A69C();
      (*(v54 + 8))(v55, v51);
      sub_1D5B952F8(v61, v62);
      v64 = v70;
      sub_1D68FFE38(v52, v70, type metadata accessor for SportsDataServiceRequest);
      v65 = v71(0);
      return v72(v63, v64 + *(v65 + 52));
    }

    (*(v54 + 8))(v55, v51);
  }

  else
  {
    sub_1D68FEC44();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1D68FF714(v52, type metadata accessor for SportsDataServiceRequest);
}

uint64_t SportsDataServiceType.fetchDataVisualizations(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = v3;
  v6 = 0;
  return (*(a3 + 88))(v7, &v6, a2);
}

uint64_t SportsDataServiceType.fetchDataVisualizations(requests:context:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  sub_1D6901918(0, &qword_1EDF179F0, &type metadata for SportsDataVisualizationResult, MEMORY[0x1E69D6B18]);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a1;
  *(v9 + 40) = v4;
  *(v9 + 48) = v8;

  swift_unknownObjectRetain();
  return sub_1D725BA6C();
}

uint64_t sub_1D68E5394(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 96) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D68E53C0, 0, 0);
}

uint64_t sub_1D68E53C0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D68E54C8;
  v5 = *(v0 + 32);

  return MEMORY[0x1EEE451E8](v5, &unk_1D7303780, v3, &type metadata for SportsDataVisualizationRequest, &type metadata for SportsDataVisualizationResult);
}

uint64_t sub_1D68E54C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_1D68E582C;
  }

  else
  {

    v4 = sub_1D68E55E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D68E55E4()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v14 = v0[3];

    v0[2] = v4;
    sub_1D6901918(0, &qword_1EDF1B050, &type metadata for SportsDataVisualization, MEMORY[0x1E69E62F8]);
    sub_1D68FEDDC(&qword_1EDF04D48, &qword_1EDF1B050, &type metadata for SportsDataVisualization);
    v15 = sub_1D72623CC();

    *v14 = v15;
    v16 = v0[1];

    v16();
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v1 + 32 + 8 * v3);
    v6 = *(v5 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_1D698BA80(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_15:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = *(v4 + 2);
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_28;
          }

          *(v4 + 2) = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_26;
    }

LABEL_4:
    if (v2 == ++v3)
    {
      v0 = v17;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1D68E582C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E5890(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D68E5394(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_1D68E5A34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 104) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v7 = *(a2 + 16);
  *(v6 + 48) = *a2;
  *(v6 + 64) = v7;
  *(v6 + 105) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1D68E5A6C, 0, 0);
}

uint64_t sub_1D68E5A6C()
{
  v12 = v0;
  v1 = *(v0 + 105);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  v9[0] = *(v0 + 48);
  v9[1] = v5;
  v10 = v1;
  v11 = v4;
  *(v0 + 80) = (*(v3 + 88))(v9, &v11, v2);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1D68E5B48;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v7);
}

uint64_t sub_1D68E5B48()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D68E5C84, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D68E5C84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E5CE8@<X0>(uint64_t *a2@<X8>)
{
  result = SportsDataVisualization.identifier.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D68E5D2C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);

  return swift_deallocClassInstance();
}

uint64_t sub_1D68E5D9C(uint64_t a1)
{
  type metadata accessor for SportsDataServiceRequest(0);
  sub_1D725BDCC();
  v1 = sub_1D725B92C();
  sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC, &type metadata for SportsTaxonomyGraphResource);
  sub_1D725BA9C();

  v2 = sub_1D725B92C();
  sub_1D725BA8C();

  v3 = sub_1D725B92C();
  v4 = sub_1D725BACC();

  return v4;
}

uint64_t sub_1D68E5FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SportsDataServiceRequest(0);
  sub_1D725BDCC();
  v6 = sub_1D725B92C();
  sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC, &type metadata for SportsEmbedConfigResource);
  sub_1D725BA9C();

  v7 = sub_1D725B92C();
  sub_1D725BA8C();

  v8 = sub_1D725B92C();
  v9 = sub_1D725BACC();

  return v9;
}

uint64_t sub_1D68E62CC()
{
  type metadata accessor for SportsDataServiceRequest(0);
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  sub_1D690042C(0);
  sub_1D725BA9C();

  v1 = sub_1D725B92C();
  sub_1D5B49474(0, &qword_1EC88DFB8, &protocol descriptor for SportsSyncingConfigResourceType);
  sub_1D725BA8C();

  v2 = sub_1D725B92C();
  v3 = sub_1D725BACC();

  return v3;
}

uint64_t sub_1D68E6428(void *a1, unsigned __int8 *a2)
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDFFC538;
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  v5 = [a1 identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v4 + 64) = v9;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v10 = sub_1D7262EDC();
  sub_1D725C30C("Sports data service fetching event rosters for %{public}@", 57, 2, &dword_1D5B42000, v3, v10, v4);

  v11 = [a1 identifier];
  sub_1D726207C();

  sub_1D725B85C();

  if (v26)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7273AE0;
    v15 = [a1 identifier];
    v16 = sub_1D726207C();
    v18 = v17;

    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = v9;
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v19 = sub_1D7262EDC();
    sub_1D725C30C("Sports data service resolved cached rosters for %{public}@", 58, 2, &dword_1D5B42000, v3, v19, v14);

    sub_1D6901918(0, &qword_1EC88DF90, &type metadata for SportsEventRoster, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12, v13);
    type metadata accessor for SportsDataServiceBatchResourceRequest(0);
    sub_1D725BDCC();
    v21 = sub_1D725B92C();
    sub_1D68FE7F8(0, v22);
    sub_1D725BA9C();

    *(swift_allocObject() + 16) = a1;
    swift_unknownObjectRetain();
    v23 = sub_1D725B92C();
    sub_1D725BAAC();

    *(swift_allocObject() + 16) = a1;
    swift_unknownObjectRetain();
    v24 = sub_1D725B92C();
    v25 = sub_1D725BACC();

    return v25;
  }
}

uint64_t sub_1D68E686C(__int128 *a1, char *a2)
{
  v3 = a1[1];
  v28 = *a1;
  v29 = v3;
  v30 = *(a1 + 32);
  v4 = *a2;
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDFFC538;
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1D7263F9C();
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1D5B7E2C0();
  *(v6 + 64) = v8;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  v9 = sub_1D7262EDC();
  sub_1D725C30C("Sports data service fetching data visualizations for request %{public}@", 71, 2, &dword_1D5B42000, v5, v9, v6);

  v25 = v28;
  v26 = v29;
  v27 = v30;
  sub_1D5F82F38(&v28, &v22);
  sub_1D725B85C();
  sub_1D5F82E88(v25, *(&v25 + 1), v26, *(&v26 + 1), v27);
  v10 = v24;
  if (v24)
  {
    v11 = sub_1D7262E9C();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    v22 = 0;
    v23 = 0xE000000000000000;
    v25 = v28;
    v26 = v29;
    v27 = v30;
    sub_1D7263F9C();
    v13 = v22;
    v14 = v23;
    *(v12 + 56) = v7;
    *(v12 + 64) = v8;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    sub_1D725C30C("Sports data service resolved cached data visualizations for request %{public}@", 78, 2, &dword_1D5B42000, v5, v11, v12);

    *&v25 = v10;
    sub_1D6901918(0, &qword_1EDF179F0, &type metadata for SportsDataVisualizationResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    sub_1D6901918(0, &qword_1EDF179F0, &type metadata for SportsDataVisualizationResult, MEMORY[0x1E69D6B18]);
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    v17 = v29;
    *(v16 + 24) = v28;
    *(v16 + 40) = v17;
    *(v16 + 56) = v30;
    *(v16 + 57) = v4;
    sub_1D5F82F38(&v28, &v25);

    sub_1D725BA6C();
    v18 = swift_allocObject();
    v19 = v29;
    *(v18 + 16) = v28;
    *(v18 + 32) = v19;
    *(v18 + 48) = v30;
    sub_1D5F82F38(&v28, &v25);
    v20 = sub_1D725B92C();
    v21 = sub_1D725BAAC();

    return v21;
  }
}

uint64_t sub_1D68E6C7C(uint64_t a1, uint64_t a2)
{
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_1D725BDCC();
  sub_1D5C41360(a2, v8);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1D5F82FB8(v8, v10 + v9);
  v11 = sub_1D725B92C();
  type metadata accessor for SportsDataServiceRequest(0);
  v12 = sub_1D725BA8C();

  return v12;
}

uint64_t sub_1D68E6E4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC, &type metadata for SportsTaxonomyGraphResource);
  v5 = (a1 + *(v4 + 52));
  v6 = v5[1];
  v7 = v5[2];
  *a2 = *v5;
  a2[1] = v6;
  a2[2] = v7;
}

uint64_t sub_1D68E6F58(uint64_t a1, unsigned __int8 a2)
{
  v4 = MEMORY[0x1E69D63E8];
  v5 = MEMORY[0x1E69E6720];
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v10 = sub_1D725A82C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_1D5F7F408(a2, v9);
  sub_1D6900328(v9, &unk_1EDF3BDC0, v4, v5, sub_1D68FD964);
  return v11;
}

uint64_t sub_1D68E70B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC, &type metadata for SportsEmbedConfigResource);
  *a2 = *(a1 + *(v4 + 52));
}

double sub_1D68E71C0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D690042C(0);
  v5 = *(a1 + *(v4 + 52));
  a2[3] = type metadata accessor for SportsSyncingConfigResource();
  a2[4] = &protocol witness table for SportsSyncingConfigResource;
  *a2 = v5;

  return result;
}

double sub_1D68E7234(uint64_t a1, const char *a2, uint64_t a3, __n128 a4, uint64_t a5, ...)
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDFFC538;
  v8 = sub_1D7262EBC();
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7273AE0;
  swift_getErrorValue();
  v10 = sub_1D726497C();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D5B7E2C0();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_1D725C30C(a2, a3, 2, &dword_1D5B42000, v7, v8, v9);

  return result;
}

uint64_t sub_1D68E73A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for SportsRoster(0);
  v110 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v99[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v109 = &v99[-v15];
  *&v18 = MEMORY[0x1EEE9AC00](v16, v17).n128_u64[0];
  v111 = &v99[-v19];
  v20 = [a3 rosterResourceIDs];
  if (!v20)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v98 = 16;
    return swift_willThrow();
  }

  v103 = v12;
  v104 = a2;
  v105 = a3;
  v106 = a4;
  v107 = v4;
  v21 = v20;
  v22 = sub_1D7261D3C();

  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = (v23 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v27 = 0;
  v112 = MEMORY[0x1E69E7CC8];
  while (v25)
  {
    v28 = v25;
LABEL_11:
    v25 = (v28 - 1) & v28;
    if (*(v22 + 16))
    {
      v30 = (*(v22 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v28)))));
      v31 = *v30;
      v32 = v30[1];

      v33 = sub_1D5B69D90(v31, v32);
      if (v34)
      {
        v101 = a1;
        v35 = (*(v22 + 56) + 16 * v33);
        v36 = v35[1];
        v108 = *v35;

        v37 = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113 = v37;
        v102 = v36;
        v39 = sub_1D5B69D90(v108, v36);
        v40 = *(v37 + 16);
        v41 = (v38 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_55;
        }

        if (*(v37 + 24) >= v42)
        {
          a1 = v101;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v38 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v112 = v39;
            isUniquelyReferenced_nonNull_native = v38;
            sub_1D6D7DE64();
            v39 = v112;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_23;
            }
          }

LABEL_21:
          v49 = v39;

          v112 = v113;
          v50 = (*(v113 + 56) + 16 * v49);
          *v50 = v31;
          v50[1] = v32;
        }

        else
        {
          v43 = v38;
          sub_1D6D666FC(v42, isUniquelyReferenced_nonNull_native);
          v44 = sub_1D5B69D90(v108, v102);
          v46 = v45 & 1;
          v47 = v43;
          v48 = v43 & 1;
          a1 = v101;
          if (v48 != v46)
          {
            goto LABEL_59;
          }

          v39 = v44;
          if (v47)
          {
            goto LABEL_21;
          }

LABEL_23:
          v51 = v113;
          *(v113 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v52 = (v51[6] + 16 * v39);
          v53 = v102;
          *v52 = v108;
          v52[1] = v53;
          v54 = (v51[7] + 16 * v39);
          *v54 = v31;
          v54[1] = v32;

          v55 = v51[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_56;
          }

          v112 = v51;
          v51[2] = v57;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v29 >= v26)
    {
      break;
    }

    v28 = *(v22 + 64 + 8 * v29);
    ++v27;
    if (v28)
    {
      v27 = v29;
      goto LABEL_11;
    }
  }

  swift_bridgeObjectRelease_n();
  sub_1D68FE7F8(0, v58);
  v60 = *(a1 + *(v59 + 52));
  v61 = 1 << *(v60 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v60 + 64);
  v64 = (v61 + 63) >> 6;

  v65 = 0;
  v108 = MEMORY[0x1E69E7CC8];
  while (v63)
  {
    v66 = v63;
LABEL_35:
    v63 = (v66 - 1) & v66;
    if (*(v60 + 16))
    {
      v68 = (*(v60 + 48) + ((v65 << 10) | (16 * __clz(__rbit64(v66)))));
      v69 = *v68;
      v70 = v68[1];

      v71 = sub_1D5B69D90(v69, v70);
      if ((v72 & 1) == 0)
      {

        continue;
      }

      v73 = v109;
      v74 = *(v110 + 72);
      sub_1D68FF774(*(v60 + 56) + v74 * v71, v109, type metadata accessor for SportsRoster);
      sub_1D68FFE38(v73, v111, type metadata accessor for SportsRoster);
      if (!v112[2])
      {
        goto LABEL_39;
      }

      v75 = sub_1D5B69D90(v69, v70);
      if ((v76 & 1) == 0)
      {
        goto LABEL_39;
      }

      v77 = (v112[7] + 16 * v75);
      v78 = v77[1];
      v102 = *v77;
      sub_1D68FF774(v111, v103, type metadata accessor for SportsRoster);

      v79 = v108;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v79;
      v101 = v78;
      v81 = sub_1D5B69D90(v102, v78);
      v82 = *(v79 + 16);
      v83 = (v80 & 1) == 0;
      v84 = v82 + v83;
      if (__OFADD__(v82, v83))
      {
        goto LABEL_57;
      }

      if (*(v79 + 24) >= v84)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v80)
          {
            goto LABEL_47;
          }
        }

        else
        {
          LODWORD(v108) = v80;
          sub_1D6D857C4();
          if (v108)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        LODWORD(v108) = v80;
        sub_1D6D73C08(v84, isUniquelyReferenced_nonNull_native);
        v85 = sub_1D5B69D90(v102, v101);
        if ((v108 & 1) != (v86 & 1))
        {
          goto LABEL_59;
        }

        v81 = v85;
        if (v108)
        {
LABEL_47:

          v108 = v113;
          sub_1D68FEE9C(v103, *(v113 + 56) + v81 * v74, type metadata accessor for SportsRoster);
LABEL_39:

          sub_1D68FF714(v111, type metadata accessor for SportsRoster);
          continue;
        }
      }

      v87 = v113;
      *(v113 + 8 * (v81 >> 6) + 64) |= 1 << v81;
      v88 = (v87[6] + 16 * v81);
      v89 = v101;
      *v88 = v102;
      v88[1] = v89;
      sub_1D68FFE38(v103, v87[7] + v81 * v74, type metadata accessor for SportsRoster);

      sub_1D68FF714(v111, type metadata accessor for SportsRoster);
      v90 = v87[2];
      v56 = __OFADD__(v90, 1);
      v91 = v90 + 1;
      if (v56)
      {
        goto LABEL_58;
      }

      v108 = v87;
      v87[2] = v91;
    }
  }

  while (1)
  {
    v67 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v67 >= v64)
    {

      v92 = [v105 identifier];
      v93 = sub_1D726207C();
      v95 = v94;

      v96 = v108;
      v115 = v108;
      v113 = v93;
      v114 = v95;

      result = sub_1D725B87C();
      *v106 = v96;
      return result;
    }

    v66 = *(v60 + 64 + 8 * v67);
    ++v65;
    if (v66)
    {
      v65 = v67;
      goto LABEL_35;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D68E7B30(void *a1, void *a2)
{
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v4 = sub_1D725C42C();
  __swift_project_value_buffer(v4, qword_1EDF17598);
  swift_unknownObjectRetain();
  v5 = a1;
  oslog = sub_1D725C3FC();
  v6 = sub_1D7262EBC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446466;
    v9 = [a2 UMCCanonicalID];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D726207C();
      v13 = v12;
    }

    else
    {
      v13 = 0xEE00444920434D55;
      v11 = 0x206E776F6E6B6E75;
    }

    v14 = sub_1D5BC5100(v11, v13, &v19);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v15 = sub_1D726497C();
    v17 = sub_1D5BC5100(v15, v16, &v19);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_1D5B42000, oslog, v6, "Sports data service failed to fetch roster resource for event=%{public}s; error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v8, -1, -1);
    MEMORY[0x1DA6FD500](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D68E7D74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v6;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 49) = a4;
  v7 = swift_task_alloc();
  *(v4 + 56) = v7;
  *v7 = v4;
  v7[1] = sub_1D68E7E38;

  return sub_1D68E7F84(a1, v4 + 16, (v4 + 49));
}

uint64_t sub_1D68E7E38()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D68E7F6C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D68E7F84(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 2952) = v3;
  *(v4 + 2904) = a2;
  *(v4 + 2856) = a1;
  *(v4 + 3000) = type metadata accessor for SportsDataConfiguration(0);
  *(v4 + 3048) = swift_task_alloc();
  *(v4 + 3096) = swift_task_alloc();
  sub_1D68FC384(0);
  *(v4 + 3144) = v7;
  *(v4 + 3192) = swift_task_alloc();
  *(v4 + 3200) = swift_task_alloc();
  v8 = *(a2 + 16);
  *(v4 + 2632) = *a2;
  *(v4 + 2648) = v8;
  *(v4 + 2664) = *(a2 + 32);
  *(v4 + 2106) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1D68E8094, 0, 0);
}

uint64_t sub_1D68E8094()
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2952);
  v2 = *(v0 + 2904);
  v3 = qword_1EDFFC538;
  *(v0 + 3208) = qword_1EDFFC538;
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  *(v0 + 3216) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  *(v0 + 2792) = 0;
  *(v0 + 2800) = 0xE000000000000000;
  v7 = *v2;
  v6 = v2[1];
  *(v0 + 2584) = *(v2 + 32);
  *(v0 + 2552) = v7;
  *(v0 + 2568) = v6;
  sub_1D7263F9C();
  v8 = *(v0 + 2792);
  v9 = *(v0 + 2800);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D5B7E2C0();
  *(v0 + 3224) = v10;
  *(v5 + 64) = v10;
  *(v5 + 32) = v8;
  *(v5 + 40) = v9;
  v11 = sub_1D7262EDC();
  sub_1D725C30C("Sports data service fetching data visualizations for request %{public}@", 71, 2, &dword_1D5B42000, v3, v11, v5);

  v12 = swift_allocObject();
  *(v0 + 3232) = v12;
  *(v12 + 16) = v1;
  v13 = *(v0 + 2648);
  *(v12 + 24) = *(v0 + 2632);
  *(v12 + 40) = v13;
  *(v12 + 56) = *(v0 + 2664);

  sub_1D5F82F38(v0 + 2632, v0 + 2472);
  swift_asyncLet_begin();
  v14 = swift_allocObject();
  *(v0 + 3240) = v14;
  *(v14 + 16) = v1;
  v15 = *(v0 + 2648);
  *(v14 + 24) = *(v0 + 2632);
  *(v14 + 40) = v15;
  *(v14 + 56) = *(v0 + 2664);

  sub_1D5F82F38(v0 + 2632, v0 + 2392);
  swift_asyncLet_begin();

  swift_asyncLet_begin();
  v16 = *(v0 + 3200);

  return MEMORY[0x1EEE6DEC0](v0 + 16, v16, sub_1D68E8384, v0 + 2432);
}

uint64_t sub_1D68E8384(__n128 a1)
{
  v2[406] = v1;
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D68E8E80, 0, 0);
  }

  else
  {
    sub_1D68FF774(v2[400], v2[399], sub_1D68FC384);

    return MEMORY[0x1EEE6DEC0](v2 + 82, v2 + 347, sub_1D68E8448, v2 + 352);
  }
}

uint64_t sub_1D68E8448()
{
  *(v1 + 3256) = v0;
  if (v0)
  {
    v2 = sub_1D68E8FF8;
  }

  else
  {
    v2 = sub_1D68E847C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68E847C()
{
  v27 = v0;
  v1 = *(v0 + 3224);
  v2 = *(v0 + 3208);
  v3 = *(v0 + 3192);
  v4 = *(v0 + 3144);
  *(v0 + 3264) = *(v0 + 2776);
  *(v0 + 3272) = *(v0 + 2784);
  v5 = *(v0 + 2648);
  v24 = *(v0 + 2632);
  v25 = v5;
  LOBYTE(v26) = *(v0 + 2664);

  sub_1D68FCAB8(&v24, v3);
  *(v0 + 3280) = v6;
  sub_1D6C22F94(v6, (v0 + 1976));
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7283D60;
  v8 = *(v0 + 1976);
  v9 = MEMORY[0x1E69E6530];
  v10 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = MEMORY[0x1E69E6530];
  *(v7 + 64) = v10;
  *(v7 + 32) = v8;
  v11 = *(v0 + 1984);
  *(v7 + 96) = v9;
  *(v7 + 104) = v10;
  *(v7 + 72) = v11;
  v12 = *(v0 + 1992);
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  *(v7 + 112) = v12;
  v13 = *(v0 + 2000);
  *(v7 + 176) = v9;
  *(v7 + 184) = v10;
  *(v7 + 152) = v13;
  v14 = *(v0 + 2008);
  *(v7 + 216) = v9;
  *(v7 + 224) = v10;
  *(v7 + 192) = v14;
  v15 = *(v0 + 2024);
  *(v7 + 256) = v9;
  *(v7 + 264) = v10;
  *(v7 + 232) = v15;
  v16 = *(v0 + 2016);
  *(v7 + 296) = v9;
  *(v7 + 304) = v10;
  *(v7 + 272) = v16;
  v17 = *(*(v3 + *(v4 + 44)) + 16);
  *(v7 + 336) = v9;
  *(v7 + 344) = v10;
  *(v7 + 312) = v17;
  *(v0 + 2712) = 0;
  *(v0 + 2720) = 0xE000000000000000;
  v18 = *(v0 + 2648);
  *(v0 + 2072) = *(v0 + 2632);
  *(v0 + 2088) = v18;
  *(v0 + 2104) = *(v0 + 2664);
  sub_1D7263F9C();
  v19 = *(v0 + 2712);
  v20 = *(v0 + 2720);
  *(v7 + 376) = MEMORY[0x1E69E6158];
  *(v7 + 384) = v1;
  *(v7 + 352) = v19;
  *(v7 + 360) = v20;
  v21 = sub_1D7262EDC();
  sub_1D725C30C("Sports data service fetched %ld score, %ld standing, %ld bracket, %ld box score, %ld line score, %ld key players and %ld injury report visualizations in %ld batches for request %{public}@", 187, 2, &dword_1D5B42000, v2, v21, v7, v24, v25, v26);

  v22 = *(v0 + 3096);

  return MEMORY[0x1EEE6DEC0](v0 + 1296, v22, sub_1D68E8684, v0 + 3104);
}

uint64_t sub_1D68E8684()
{
  *(v1 + 3288) = v0;
  if (v0)
  {

    v2 = sub_1D68E91D0;
  }

  else
  {
    v2 = sub_1D68E871C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68E871C(__n128 a1)
{
  v2 = v1[410];
  v3 = v1[381];
  v4 = v1[375];
  sub_1D68FF774(v1[387], v3, type metadata accessor for SportsDataConfiguration);
  v5 = *(v3 + *(v4 + 20));
  v6 = sub_1D68FCF04(v2, v5, MEMORY[0x1E69E7CD0]);
  v1[412] = v6;

  v1[413] = sub_1D68FCF04(v6, v5, *(v3 + *(v4 + 24)));
  v7 = swift_task_alloc();
  v1[414] = v7;
  *v7 = v1;
  v7[1] = sub_1D68E8830;

  return sub_1D68EA428(v6);
}

uint64_t sub_1D68E8830(uint64_t a1)
{
  *(*v1 + 3320) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D68E8950, 0, 0);
}

uint64_t sub_1D68E8950()
{
  v1 = *(v0 + 3320);
  v2 = *(v0 + 3224);
  v3 = *(v0 + 3208);
  v4 = *(v0 + 2106);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7270C10;
  v6 = *(v1 + 16);
  v7 = MEMORY[0x1E69E65A8];
  *(v5 + 56) = MEMORY[0x1E69E6530];
  *(v5 + 64) = v7;
  *(v5 + 32) = v6;
  *(v0 + 2728) = 0;
  *(v0 + 2736) = 0xE000000000000000;
  *(v0 + 2184) = *(v0 + 2664);
  v8 = *(v0 + 2648);
  *(v0 + 2152) = *(v0 + 2632);
  *(v0 + 2168) = v8;
  sub_1D7263F9C();
  v9 = *(v0 + 2728);
  v10 = *(v0 + 2736);
  *(v5 + 96) = MEMORY[0x1E69E6158];
  *(v5 + 104) = v2;
  *(v5 + 72) = v9;
  *(v5 + 80) = v10;
  v11 = sub_1D7262EDC();
  sub_1D725C30C("Sports data service updated event statuses for %ld data visualizations for request %{public}@", 93, 2, &dword_1D5B42000, v3, v11, v5);

  *(v0 + 2105) = v4;
  v12 = *(v0 + 2648);
  *(v0 + 2232) = *(v0 + 2632);
  *(v0 + 2248) = v12;
  *(v0 + 2264) = *(v0 + 2664);
  v13 = swift_task_alloc();
  *(v0 + 3328) = v13;
  *v13 = v0;
  v13[1] = sub_1D68E8B1C;
  v14 = *(v0 + 3320);
  v15 = *(v0 + 3304);
  v16 = *(v0 + 3272);
  v17 = *(v0 + 3264);
  v18 = *(v0 + 3192);
  v19 = *(v0 + 3048);
  v20 = *(v0 + 2856);

  return sub_1D68EACE8(v20, (v0 + 2105), v15, v17, v16, v18, v19, v14);
}

uint64_t sub_1D68E8B1C()
{
  *(*v1 + 3336) = v0;

  if (v0)
  {
    v2 = sub_1D68E93A8;
  }

  else
  {
    v2 = sub_1D68E8C90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68E8C90()
{
  v1 = v0[399];
  sub_1D68FF714(v0[381], type metadata accessor for SportsDataConfiguration);
  sub_1D68FF714(v1, sub_1D68FC384);
  v2 = v0[387];

  return MEMORY[0x1EEE6DEB0](v0 + 162, v2, sub_1D68E8D30, v0 + 264);
}

uint64_t sub_1D68E8DC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E8F34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E8FF8()
{
  sub_1D68FF714(*(v0 + 3192), sub_1D68FC384);
  v1 = *(v0 + 3096);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v1, sub_1D68E9078, v0 + 2864);
}

uint64_t sub_1D68E910C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E91D0()
{
  sub_1D68FF714(*(v0 + 3192), sub_1D68FC384);
  v1 = *(v0 + 3096);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v1, sub_1D68E9250, v0 + 3152);
}

uint64_t sub_1D68E92E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E93A8(__n128 a1)
{
  v2 = *(v1 + 3336);
  v3 = *(v1 + 3224);
  v4 = *(v1 + 3208);
  v15 = *(v1 + 3048);
  v16 = *(v1 + 3192);
  v5 = sub_1D7262EBC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7270C10;
  *(v1 + 2744) = 0;
  *(v1 + 2752) = 0xE000000000000000;
  v7 = *(v1 + 2648);
  *(v1 + 2312) = *(v1 + 2632);
  *(v1 + 2328) = v7;
  *(v1 + 2344) = *(v1 + 2664);
  sub_1D7263F9C();
  v8 = *(v1 + 2744);
  v9 = *(v1 + 2752);
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = v3;
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  *(v1 + 2760) = 0;
  *(v1 + 2768) = 0xE000000000000000;
  *(v1 + 2808) = v2;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v11 = *(v1 + 2760);
  v12 = *(v1 + 2768);
  *(v6 + 96) = v10;
  *(v6 + 104) = v3;
  *(v6 + 72) = v11;
  *(v6 + 80) = v12;
  sub_1D725C30C("Sports data service failed to fetch data visualizations for request=%{public}@, error=%{public}@", 96, 2, &dword_1D5B42000, v4, v5, v6);

  swift_willThrow();
  sub_1D68FF714(v15, type metadata accessor for SportsDataConfiguration);
  sub_1D68FF714(v16, sub_1D68FC384);
  v13 = *(v1 + 3096);

  return MEMORY[0x1EEE6DEB0](v1 + 1296, v13, sub_1D68E9590, v1 + 2352);
}

uint64_t sub_1D68E9624()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E96E8@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v11 = *a1;
  v4 = v11;
  v5 = a2[1];
  v8 = *a2;
  v9 = v5;
  v10 = *(a2 + 32);
  sub_1D5F82F38(a2, v7);

  sub_1D725B87C();
  *a3 = v4;
}

uint64_t sub_1D68E9768(unint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (a1 >> 62)
  {
    v4 = sub_1D7263BFC();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
LABEL_10:
    v9 = sub_1D725B92C();
    sub_1D68FE764(0);
    sub_1D725BEFC();

    v10 = sub_1D725B92C();
    sub_1D5B49A6C(0, &qword_1EDF05758, &type metadata for SportsEventRoster, MEMORY[0x1E69E6168], MEMORY[0x1E69E5E28]);
    v11 = sub_1D725BA8C();

    return v11;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1D7263ECC();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6FB460](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      ++v6;
      v12 = v3;
      sub_1D68E6428(v7, &v12);
      *(swift_allocObject() + 16) = v7;
      swift_unknownObjectRetain();
      v8 = sub_1D725B92C();
      sub_1D68FE764(0);
      sub_1D725BA8C();
      swift_unknownObjectRelease();

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v4 != v6);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *sub_1D68E99B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D68FE46C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D68E99E8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D68E9A08, 0, 0);
}

uint64_t sub_1D68E9A08()
{
  v14 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v1[26];
  v4 = v1[27];
  __swift_project_boxed_opaque_existential_1(v1 + 23, v3);
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v0[3];
    v7 = sub_1D5B9A6D8(v5, 0);
    v12 = sub_1D5B9A6EC(&v13, v7 + 4, v5, v6);
    v8 = v13;

    v9 = sub_1D5BA45DC(v8);
    if (v12 != v5)
    {
      __break(1u);
      return MEMORY[0x1EEE44EE0](v9);
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v0[5] = (*(v4 + 16))(v7, v3, v4);

  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_1D68E9B90;
  v9 = (v0 + 2);

  return MEMORY[0x1EEE44EE0](v9);
}

uint64_t sub_1D68E9B90()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D68E9CC4;
  }

  else
  {

    v2 = sub_1D68E9CAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68E9CC4()
{
  v1 = *(v0 + 56);

  v2 = sub_1D605E094(MEMORY[0x1E69E7CC0]);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D68E9D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D68E9D68, 0, 0);
}

uint64_t sub_1D68E9D68()
{
  *(swift_task_alloc() + 16) = *(v0 + 24);
  type metadata accessor for SportsDataServiceBatchRequest(0);
  sub_1D725BDCC();

  v1 = sub_1D725B92C();
  sub_1D68FC384(0);
  type metadata accessor for SportsDataService();
  *(v0 + 40) = sub_1D725BA9C();

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1D5FE1C4C;
  v3 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v3);
}

uint64_t sub_1D68E9EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D68E9ED8, 0, 0);
}

uint64_t sub_1D68E9ED8()
{
  v8 = v0;
  v1 = v0[4];
  v2 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v2;
  v7 = *(v1 + 32);
  v0[5] = sub_1D68E9F94(v6);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1D5FE0118;
  v4 = v0[2];

  return MEMORY[0x1EEE44EE0](v4);
}

uint64_t sub_1D68E9F94(__int128 *a1)
{
  v1 = a1[1];
  v26 = *a1;
  v27 = v1;
  v28 = *(a1 + 32);
  if (v28)
  {
    if (v28 == 1 && *(v26 + 33) == 1)
    {
      goto LABEL_4;
    }
  }

  else if (BYTE9(v26))
  {
LABEL_4:
    type metadata accessor for SportsFeaturedEventsResource(0);
    sub_1D725BDCC();
    v2 = swift_allocObject();
    v3 = v27;
    *(v2 + 16) = v26;
    *(v2 + 32) = v3;
    *(v2 + 48) = v28;
    sub_1D5F82F38(&v26, v24);
    v4 = sub_1D725B92C();
    sub_1D68FF448(0);
    sub_1D725BA9C();

    v5 = swift_allocObject();
    v6 = v27;
    *(v5 + 16) = v26;
    *(v5 + 32) = v6;
    *(v5 + 48) = v28;
    sub_1D5F82F38(&v26, v24);
    v7 = sub_1D725B92C();
    sub_1D725BAAC();

    v8 = sub_1D725B92C();
    v9 = sub_1D725BB6C();

    return v9;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v11 = sub_1D725C42C();
  __swift_project_value_buffer(v11, qword_1EDF17598);
  sub_1D5F82F38(&v26, v24);
  v12 = sub_1D725C3FC();
  v13 = sub_1D7262EDC();
  sub_1D68FF3BC(&v26);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v24[0] = v26;
    v24[1] = v27;
    v25 = v28;
    SportsDataVisualizationRequest.tagIds.getter(v15, v16, v17, v18);
    v19 = MEMORY[0x1DA6F9D20]();
    v21 = v20;

    v22 = sub_1D5BC5100(v19, v21, &v23);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_1D5B42000, v12, v13, "Skipping featured events fetch for request with tagIds=%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1DA6FD500](v15, -1, -1);
    MEMORY[0x1DA6FD500](v14, -1, -1);
  }

  *&v24[0] = MEMORY[0x1E69E7CC0];
  *(&v24[0] + 1) = MEMORY[0x1E69E7CD0];
  sub_1D6901918(0, &qword_1EDF17A08, &type metadata for SportsFeaturedEventsResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D68EA350(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D68EA370, 0, 0);
}

uint64_t sub_1D68EA370()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + 136), *(v0[3] + 160));
  v0[4] = sub_1D6917FE8();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1D5FE2178;
  v2 = v0[2];

  return MEMORY[0x1EEE44EE0](v2);
}

uint64_t sub_1D68EA428(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  sub_1D68FECB4(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = *(type metadata accessor for SportsEventStatusResponse(0) - 8);
  v2[14] = swift_task_alloc();
  sub_1D68FED64(0);
  v2[15] = v4;
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D68EA598, 0, 0);
}

uint64_t sub_1D68EA598()
{
  sub_1D68FDE64(v0[7]);
  v0[5] = v1;
  v2 = MEMORY[0x1E69E6158];
  sub_1D6901918(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D68FEDDC(&qword_1EDF3C838, &qword_1EDF43BA0, v2);
  v3 = sub_1D72623CC();

  if (*(v3 + 16))
  {
    v4 = v0[8];
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = xmmword_1D7303640;
    type metadata accessor for SportsDataServiceBatchRequest(0);
    sub_1D725BDCC();

    v6 = sub_1D725B92C();
    v0[17] = sub_1D725BA9C();

    v7 = swift_task_alloc();
    v0[18] = v7;
    *v7 = v0;
    v7[1] = sub_1D68EA810;
    v8 = v0[16];

    return MEMORY[0x1EEE44EE0](v8);
  }

  else
  {

    v9 = sub_1D605DE6C(MEMORY[0x1E69E7CC0]);

    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_1D68EA810()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1D68EAB40;
  }

  else
  {

    v2 = sub_1D68EA92C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68EA92C()
{
  v1 = v0[16];
  v2 = *(v1 + *(v0[15] + 44));

  sub_1D68FF714(v1, sub_1D68FED64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D6999988(0, v3, 0);
    v7 = v18;
    v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v9 = *(v5 + 72);
    do
    {
      v10 = v0[14];
      v11 = v0[12];
      sub_1D68FF774(v8, v11, sub_1D68FECB4);
      sub_1D68FF774(v11 + *(v6 + 52), v10, type metadata accessor for SportsEventStatusResponse);
      sub_1D68FF714(v11, sub_1D68FECB4);
      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D6999988((v12 > 1), v13 + 1, 1);
      }

      v14 = v0[14];
      *(v18 + 16) = v13 + 1;
      sub_1D6200774(v14, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13);
      v8 += v9;
      --v3;
    }

    while (v3);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1D68FE008(v7);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_1D68EAB40()
{

  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = qword_1EDFFC538;
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  swift_getErrorValue();
  v4 = sub_1D726497C();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D5B7E2C0();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_1D7262EDC();
  sub_1D725C30C("Error while fetching latest event status; falling back to visualization response status data. Error=%{public}@", 110, 2, &dword_1D5B42000, v2, v7, v3);

  v8 = sub_1D605DE6C(MEMORY[0x1E69E7CC0]);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_1D68EACE8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1800) = v8;
  *(v9 + 1792) = a8;
  *(v9 + 1784) = a7;
  *(v9 + 1776) = a6;
  *(v9 + 1768) = a5;
  *(v9 + 1760) = a4;
  *(v9 + 1752) = a3;
  *(v9 + 1744) = a1;
  sub_1D68FD964(0, &qword_1EDF17888, sub_1D5E4CF90, MEMORY[0x1E69E6720]);
  *(v9 + 1808) = swift_task_alloc();
  sub_1D5E4CF90(0);
  *(v9 + 1816) = v11;
  *(v9 + 1824) = *(v11 - 8);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  v12 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  *(v9 + 1848) = v12;
  *(v9 + 1856) = *(v12 - 8);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  *(v9 + 1880) = swift_task_alloc();
  *(v9 + 1888) = swift_task_alloc();
  *(v9 + 1449) = *a2;
  v13 = *(v16 + 16);
  *(v9 + 1416) = *v16;
  *(v9 + 1432) = v13;
  *(v9 + 1448) = *(v16 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D68EAEDC, 0, 0);
}

uint64_t sub_1D68EAEDC()
{
  v1 = v0[220];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[232];
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D6999938(0, v2, 0);
    v3 = v49;
    v5 = *(type metadata accessor for SportsDataVisualizationResponseScoreItem(0) - 8);
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      sub_1D68FF774(v6, v0[235], type metadata accessor for SportsDataVisualizationResponseScoreItem);
      swift_storeEnumTagMultiPayload();
      v9 = *(v49 + 16);
      v8 = *(v49 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D6999938((v8 > 1), v9 + 1, 1);
      }

      v10 = v0[235];
      *(v49 + 16) = v9 + 1;
      sub_1D68FFE38(v10, v49 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, type metadata accessor for SportsDataVisualizationResponseItem);
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  v50 = v0[219];

  sub_1D6988404(v3);
  v0[187] = v50;
  sub_1D68FD964(0, &qword_1EDF04AD8, type metadata accessor for SportsDataVisualizationResponseItem, MEMORY[0x1E69E62F8]);
  sub_1D68FD9C8(&qword_1EDF04AD0, &qword_1EDF04AD8, type metadata accessor for SportsDataVisualizationResponseItem, MEMORY[0x1E69E6328]);
  v11 = sub_1D72623CC();
  v0[237] = v11;

  v12 = *(v11 + 16);
  v48 = v11;
  if (!v12)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v47 = sub_1D5B86020(v16);

    if (v12)
    {
      v31 = v0[233];
      v32 = v0[232];
      v33 = v48 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v34 = *(v32 + 72);
      v35 = MEMORY[0x1E69E7CC0];
      do
      {
        v36 = v0[234];
        v37 = v0[233];
        sub_1D68FF774(v33, v36, type metadata accessor for SportsDataVisualizationResponseItem);
        sub_1D68FFE38(v36, v37, type metadata accessor for SportsDataVisualizationResponseItem);
        if (swift_getEnumCaseMultiPayload() < 3)
        {
          sub_1D68FF714(v0[233], type metadata accessor for SportsDataVisualizationResponseItem);
        }

        else
        {
          v38 = *(v31 + 16);
          v39 = *(v31 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_1D5B858EC(0, *(v35 + 2) + 1, 1, v35);
          }

          v41 = *(v35 + 2);
          v40 = *(v35 + 3);
          if (v41 >= v40 >> 1)
          {
            v35 = sub_1D5B858EC((v40 > 1), v41 + 1, 1, v35);
          }

          *(v35 + 2) = v41 + 1;
          v42 = &v35[16 * v41];
          *(v42 + 4) = v38;
          *(v42 + 5) = v39;
        }

        v33 += v34;
        --v12;
      }

      while (v12);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    v43 = v0[225];
    v0[238] = sub_1D5B86020(v35);

    v44 = swift_allocObject();
    v0[239] = v44;
    *(v44 + 16) = v43;
    *(v44 + 24) = v48;

    sub_1D68FDBB8(0, &unk_1EDF05658, &qword_1EDF04500, &protocolRef_FCSportsProviding);
    swift_asyncLet_begin();
    v45 = swift_allocObject();
    v0[240] = v45;
    *(v45 + 16) = v43;
    *(v45 + 24) = v47;

    sub_1D68FDBB8(0, &qword_1EDF05650, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding);
    swift_asyncLet_begin();
    v20 = sub_1D68EB538;
    isUniquelyReferenced_nonNull_native = (v0 + 2);
    v19 = v0 + 193;
    v21 = v0 + 162;

    return MEMORY[0x1EEE6DEC0](isUniquelyReferenced_nonNull_native, v19, v20, v21);
  }

  v13 = v0[232];
  v14 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v15 = *(v13 + 72);
  v16 = MEMORY[0x1E69E7CC0];
  v17 = *(v11 + 16);
  while (1)
  {
    v22 = v0[236];
    sub_1D68FF774(v14, v22, type metadata accessor for SportsDataVisualizationResponseItem);
    v23 = sub_1D6792A50();
    isUniquelyReferenced_nonNull_native = sub_1D68FF714(v22, type metadata accessor for SportsDataVisualizationResponseItem);
    v24 = *(v23 + 2);
    v25 = *(v16 + 16);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v26 <= *(v16 + 24) >> 1)
    {
      if (*(v23 + 2))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      isUniquelyReferenced_nonNull_native = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v27, 1, v16);
      v16 = isUniquelyReferenced_nonNull_native;
      if (*(v23 + 2))
      {
LABEL_19:
        if ((*(v16 + 24) >> 1) - *(v16 + 16) < v24)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        if (v24)
        {
          v28 = *(v16 + 16);
          v29 = __OFADD__(v28, v24);
          v30 = v28 + v24;
          if (v29)
          {
            goto LABEL_41;
          }

          *(v16 + 16) = v30;
        }

        goto LABEL_9;
      }
    }

    if (v24)
    {
      goto LABEL_39;
    }

LABEL_9:
    v14 += v15;
    if (!--v17)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return MEMORY[0x1EEE6DEC0](isUniquelyReferenced_nonNull_native, v19, v20, v21);
}

uint64_t sub_1D68EB538()
{
  v1[241] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 199, sub_1D68EBF88, v1 + 172);
  }

  else
  {
    v1[242] = v1[193];

    return MEMORY[0x1EEE6DEB8](v1 + 82);
  }
}

uint64_t sub_1D68EB61C()
{
  v22 = v0;
  v1 = *(v0 + 1904);
  v2 = *(v0 + 1592);
  *(v0 + 1944) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 56);
  v7 = (63 - v5) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v6;
LABEL_10:
    v6 = (v10 - 1) & v10;
    if (*(v2 + 16))
    {
      v12 = (*(v1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v10)))));
      v13 = *v12;
      v14 = v12[1];

      sub_1D5B69D90(v13, v14);
      if (v15)
      {
        swift_unknownObjectRetain();

        MEMORY[0x1DA6F9CE0](v16);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        v8 = sub_1D726278C();
        v3 = v20;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE44EE0](v8);
    }

    if (v11 >= v7)
    {
      break;
    }

    v10 = *(v1 + 56 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  v17 = *(v0 + 1449);

  v21 = v17;
  *(v0 + 1952) = sub_1D68E9768(v3, &v21);

  v18 = swift_task_alloc();
  *(v0 + 1960) = v18;
  *v18 = v0;
  v18[1] = sub_1D68EB864;
  v8 = v0 + 1640;

  return MEMORY[0x1EEE44EE0](v8);
}

uint64_t sub_1D68EB864()
{
  *(*v1 + 1968) = v0;

  if (v0)
  {

    v2 = sub_1D68EC0C4;
  }

  else
  {
    v2 = sub_1D68EB9C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68EB9C0()
{
  v1 = v0[243];
  v2 = v0[242];
  v28 = v0[237];
  v31 = v0[228];
  v32 = v0[227];
  v3 = v0[225];
  v4 = v0[224];
  v30 = v0[226];
  v5 = v0[223];
  v6 = v0[222];
  v29 = v6;
  v7 = v0[221];
  v27 = v0[220];
  v8 = v0[205];
  v0[211] = MEMORY[0x1E69E7CC0];
  v9 = swift_task_alloc();
  v9[2] = v3;
  v9[3] = v6;
  v9[4] = v5;
  v9[5] = v4;
  v9[6] = v2;
  v9[7] = v27;
  v9[8] = v7;
  v9[9] = v1;
  v9[10] = v0 + 177;
  v9[11] = v8;
  v9[12] = v0 + 211;
  v10 = sub_1D5FBE174(sub_1D68FDC20, v9, v28);

  v11 = v0[211];
  sub_1D5B6B7A4(0);
  v12 = sub_1D725B45C();
  v13 = swift_task_alloc();
  v13[2] = v3;
  v13[3] = v29;
  v13[4] = v12;
  v13[5] = v4;
  v13[6] = v2;
  v13[7] = v7;
  v13[8] = v1;
  v14 = sub_1D5FBDFF4(sub_1D68FDC60, v13, v11);

  v0[217] = v14;
  sub_1D68FD964(0, &qword_1EDF1AF90, type metadata accessor for SportsBracketDataVisualization, MEMORY[0x1E69E62F8]);
  sub_1D68FD9C8(&qword_1EDF1AF80, &qword_1EDF1AF90, type metadata accessor for SportsBracketDataVisualization, MEMORY[0x1E69E6340]);
  sub_1D725BEBC();
  if ((*(v31 + 48))(v30, 1, v32) == 1)
  {
    sub_1D6900328(v0[226], &unk_1EDF17888, sub_1D5E4CF90, MEMORY[0x1E69E6720], sub_1D68FD964);
    v15 = 0xF000000000000007;
  }

  else
  {
    v16 = v0[230];
    v17 = v0[229];
    v18 = v0[228];
    v19 = v0[227];
    (*(v18 + 32))(v16, v0[226], v19);
    v20 = swift_allocObject();
    (*(v18 + 16))(v17, v16, v19);
    type metadata accessor for SportsBracketGroupDataVisualization(0);
    swift_allocObject();
    v21 = SportsBracketGroupDataVisualization.init(visualizations:)(v17);
    (*(v18 + 8))(v16, v19);
    *(v20 + 16) = v21;
    v15 = v20 | 0x4000000000000000;
  }

  v0[171] = v15;
  sub_1D5D04BD4(v15);
  if ((~v15 & 0xF000000000000007) != 0)
  {

    v22 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1D698BA80(0, *(v22 + 2) + 1, 1, v22);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1D698BA80((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    *&v22[8 * v24 + 32] = v15;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v25 = v0[218];
  sub_1D6900328((v0 + 171), &unk_1EDF3F3E0, &type metadata for SportsDataVisualization, MEMORY[0x1E69E6720], sub_1D6901918);
  sub_1D6985104(v22);
  sub_1D5FC5034(v15);

  *v25 = v10;

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 199, sub_1D68EBE54, v0 + 206);
}

uint64_t sub_1D68EBEAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68EBFE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68EC13C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68EC220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataServiceResourceRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v69 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D72585BC();
  v7 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v8);
  v70 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SportsDataServiceURLRequest(0);
  MEMORY[0x1EEE9AC00](v68, v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SportsDataServiceRequest(0);
  v12 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v13);
  v65 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v54 - v17;
  v66 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for SportsDataServiceBatchRequest(0);
  v55 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v56 = v26;
  v57 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v27 + 28);
  v58 = a1;
  v29 = *(a1 + v28);
  v30 = *(v29 + 16);
  if (v30)
  {
    v73 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v31 = *(v12 + 80);
    v32 = v29 + ((v31 + 32) & ~v31);
    v33 = *(v12 + 72);
    v63 = v31;
    v64 = v18;
    v60 = (v31 + 16) & ~v31;
    v61 = (v7 + 32);
    v59 = (v7 + 8);
    v62 = v33;
    while (1)
    {
      sub_1D68FF774(v32, v23, type metadata accessor for SportsDataServiceRequest);
      v42 = *__swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
      sub_1D68FF774(v23, v18, type metadata accessor for SportsDataServiceRequest);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v44 = v69;
        sub_1D68FFE38(v18, v69, type metadata accessor for SportsDataServiceResourceRequest);
        sub_1D68DFD48(v44, v23);
        v45 = type metadata accessor for SportsDataServiceResourceRequest;
LABEL_9:
        sub_1D68FF714(v44, v45);
        sub_1D68FF714(v23, type metadata accessor for SportsDataServiceRequest);
        goto LABEL_4;
      }

      v34 = v70;
      v35 = (*v61)();
      MEMORY[0x1EEE9AC00](v35, v36);
      *(&v54 - 2) = v42;
      *(&v54 - 1) = v34;
      sub_1D725BDCC();
      v37 = v65;
      sub_1D68FF774(v23, v65, type metadata accessor for SportsDataServiceRequest);
      v38 = v60;
      v39 = swift_allocObject();
      sub_1D68FFE38(v37, v39 + v38, type metadata accessor for SportsDataServiceRequest);
      v40 = a2;
      v41 = sub_1D725B92C();
      sub_1D68FF208(0);
      type metadata accessor for SportsDataServiceRequestFetcher();
      sub_1D725BAAC();
      v33 = v62;

      a2 = v40;
      v18 = v64;
      sub_1D68FF714(v23, type metadata accessor for SportsDataServiceRequest);
      (*v59)(v70, v71);
LABEL_4:
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v32 += v33;
      if (!--v30)
      {
        goto LABEL_10;
      }
    }

    v44 = v67;
    sub_1D68FFE38(v18, v67, type metadata accessor for SportsDataServiceURLRequest);
    sub_1D68DDCF4(v44 + *(v68 + 24), v44, 1);
    v45 = type metadata accessor for SportsDataServiceURLRequest;
    goto LABEL_9;
  }

LABEL_10:
  v46 = sub_1D725B92C();
  sub_1D68FF208(0);
  sub_1D725BEFC();

  v47 = v57;
  sub_1D68FF774(v58, v57, type metadata accessor for SportsDataServiceBatchRequest);
  v48 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v49 = swift_allocObject();
  sub_1D68FFE38(v47, v49 + v48, type metadata accessor for SportsDataServiceBatchRequest);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1D68FFB48;
  *(v50 + 24) = v49;
  v51 = sub_1D725B92C();
  sub_1D68FC384(0);
  v52 = sub_1D725BA8C();

  return v52;
}

uint64_t sub_1D68EC918(uint64_t *a1)
{
  type metadata accessor for SportsDataServiceRequest(0);
  sub_1D725BDCC();
  v1 = sub_1D725B92C();
  sub_1D68FFF2C(0);
  sub_1D725BA9C();

  v2 = sub_1D725B92C();
  type metadata accessor for SportsFeaturedEventsResource(0);
  sub_1D725BA8C();

  v3 = sub_1D725B92C();
  v4 = sub_1D725BACC();

  return v4;
}

uint64_t sub_1D68ECA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v75 = a2;
  v4 = type metadata accessor for SportsFeaturedEventsResource(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v74[-v10];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v74[-v14];
  if (qword_1EDF17590 != -1)
  {
LABEL_56:
    swift_once();
  }

  v16 = sub_1D725C42C();
  __swift_project_value_buffer(v16, qword_1EDF17598);
  sub_1D68FF774(a1, v15, type metadata accessor for SportsFeaturedEventsResource);
  sub_1D68FF774(a1, v11, type metadata accessor for SportsFeaturedEventsResource);
  v17 = sub_1D725C3FC();
  v18 = sub_1D7262EDC();
  v19 = os_log_type_enabled(v17, v18);
  v80 = a1;
  v76 = v7;
  if (v19)
  {
    v7 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v97 = v96;
    *v7 = 136446466;
    sub_1D68FF5FC(0);
    v95 = v17;
    sub_1D725B45C();
    v20 = MEMORY[0x1E69E62F8];
    sub_1D6901918(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v21 = sub_1D7261DBC();
    v23 = v22;

    LODWORD(v94) = v18;
    sub_1D68FF714(v15, type metadata accessor for SportsFeaturedEventsResource);
    v24 = sub_1D5BC5100(v21, v23, &v97);

    *(v7 + 4) = v24;
    *(v7 + 12) = 2082;
    sub_1D68FF7DC(0);
    sub_1D725B45C();
    v25 = v20;
    a1 = v80;
    sub_1D6901918(0, &qword_1EDF04BF8, &type metadata for SportsFeaturedAffinityEvent, v25);
    v26 = sub_1D7261DBC();
    v28 = v27;

    sub_1D68FF714(v11, type metadata accessor for SportsFeaturedEventsResource);
    v29 = sub_1D5BC5100(v26, v28, &v97);

    *(v7 + 14) = v29;
    v30 = v95;
    _os_log_impl(&dword_1D5B42000, v95, v94, "Fetch featured events, featured tagIds=%{public}s, affinity tagIds=%{public}s", v7, 0x16u);
    v31 = v96;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v31, -1, -1);
    MEMORY[0x1DA6FD500](v7, -1, -1);
  }

  else
  {

    sub_1D68FF714(v11, type metadata accessor for SportsFeaturedEventsResource);
    sub_1D68FF714(v15, type metadata accessor for SportsFeaturedEventsResource);
  }

  sub_1D68FF5FC(0);
  sub_1D725B45C();
  v98 = sub_1D5C44E90();
  sub_1D68FF7DC(0);
  v32 = sub_1D725B45C();
  v33 = 0;
  v34 = *(v32 + 64);
  v77 = v32 + 64;
  v35 = 1 << *(v32 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v11 = (v86 + 16);
  v79 = v32;
  v78 = v38;
  v87 = (v86 + 16);
LABEL_10:
  while (v37)
  {
LABEL_15:
    v40 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v41 = v40 | (v33 << 6);
    v42 = *(*(v32 + 56) + 8 * v41);
    v43 = *(v42 + 16);
    if (v43)
    {
      v82 = v37;
      v83 = v33;
      v44 = (*(v32 + 48) + 16 * v41);
      v45 = v44[1];
      v84 = *v44;
      v46 = v42 + 32;
      v85 = v45;

      v81 = v42;

      a1 = 0;
      v7 = *(v86 + 32);
      v89 = v42 + 32;
      v90 = v43;
      v88 = v7;
      while (1)
      {
        v47 = v46 + 16 * a1;
        v48 = *v47;
        v15 = *(v47 + 8);
        if (!v7 || (v49 = MEMORY[0x1E69E7CD0], v7 == 1))
        {
        }

        isa = v48[2].isa;
        if (isa)
        {
          v51 = *(v49 + 16);
          if (v51)
          {
            break;
          }
        }

LABEL_18:
        if (++a1 == v43)
        {

          a1 = v80;
          v32 = v79;
          v33 = v83;
          v38 = v78;
          v37 = v82;
          goto LABEL_10;
        }
      }

      if (isa >= v51)
      {
        v11 = v49;
      }

      else
      {
        v11 = v48;
      }

      v92 = v49;
      if (isa >= v51)
      {
        v52 = v48;
      }

      else
      {
        v52 = v49;
      }

      v53 = v11 + 56;
      v54 = 1 << v11[32];
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      else
      {
        v55 = -1;
      }

      v56 = v55 & *(v11 + 7);
      v7 = (v54 + 63) >> 6;
      v96 = v52 + 56;

      v57 = 0;
      v94 = v15;
      v95 = v48;
      v93 = v11;
      while (v56)
      {
        v58 = v56;
LABEL_40:
        v56 = (v58 - 1) & v58;
        if (*(v52 + 16))
        {
          v91 = (v58 - 1) & v58;
          v60 = (*(v11 + 6) + ((v57 << 10) | (16 * __clz(__rbit64(v58)))));
          v61 = *v60;
          v15 = v60[1];
          sub_1D7264A0C();

          sub_1D72621EC();
          v62 = sub_1D7264A5C();
          v63 = -1 << *(v52 + 32);
          v64 = v62 & ~v63;
          if ((*(v96 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
          {
            v65 = ~v63;
            while (1)
            {
              v66 = (*(v52 + 48) + 16 * v64);
              v67 = *v66 == v61 && v66[1] == v15;
              if (v67 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              v64 = (v64 + 1) & v65;
              if (((*(v96 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            v68 = v85;

            sub_1D5B860D0(&v97, v84, v68);

LABEL_52:
            v11 = v87;
            v46 = v89;
            v43 = v90;
            v7 = v88;
            goto LABEL_18;
          }

LABEL_49:

          v15 = v94;
          v11 = v93;
          v56 = v91;
        }
      }

      while (1)
      {
        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        if (v59 >= v7)
        {

          goto LABEL_52;
        }

        v58 = *&v53[8 * v59];
        ++v57;
        if (v58)
        {
          v57 = v59;
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }
  }

  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_55;
    }

    if (v39 >= v38)
    {
      break;
    }

    v37 = *(v77 + 8 * v39);
    ++v33;
    if (v37)
    {
      v33 = v39;
      goto LABEL_15;
    }
  }

  v69 = v98;
  v70 = v75;

  sub_1D68FC6AC(v69, v70);

  v71 = sub_1D725B92C();
  sub_1D68FC384(0);
  sub_1D725BEFC();

  sub_1D68FF774(a1, v76, type metadata accessor for SportsFeaturedEventsResource);
  sub_1D68FD964(0, &qword_1EDF17A00, type metadata accessor for SportsFeaturedEventsResource, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D725BB1C();
  v72 = sub_1D725BD9C();

  return v72;
}

uint64_t sub_1D68ED334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v132 = a2;
  v128 = a3;
  sub_1D68FD964(0, qword_1EDF06300, type metadata accessor for SportsDataVisualizationResponseScoreItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v131 = &v127 - v6;
  v143 = type metadata accessor for SportsDataVisualizationResponseScoreItem(0);
  v133 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v7);
  v144 = (&v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v139 = &v127 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v135 = &v127 - v14;
  v145 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  v148 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145, v15);
  v137 = (&v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v138 = (&v127 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v127 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v127 - v26;
  sub_1D68FC384(0);
  v141 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v146 = (&v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D68FF448(0);
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = (&v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for SportsFeaturedEventsResource(0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FF774(a1, v35, sub_1D68FF448);
  v142 = *v35;

  v40 = v35 + *(v32 + 56);
  v41 = v23;
  sub_1D68FF5E4(v40, v39);
  sub_1D68FF5FC(0);
  v130 = v39;
  v42 = sub_1D725B45C();
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 64);
  v47 = (v44 + 63) >> 6;
  v149 = v42;

  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v147 = v23;
  v152 = v27;
LABEL_5:
  if (v46)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v50 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      swift_once();
      goto LABEL_100;
    }

    if (v50 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v50);
    ++v48;
    if (v46)
    {
      v48 = v50;
LABEL_10:
      v51 = *(v149[7] + ((v48 << 9) | (8 * __clz(__rbit64(v46)))));
      v52 = *(v51 + 16);
      v53 = *(v49 + 2);
      v54 = v53 + v52;
      if (__OFADD__(v53, v52))
      {
        goto LABEL_109;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v54 > *(v49 + 3) >> 1)
      {
        if (v53 <= v54)
        {
          v56 = v53 + v52;
        }

        else
        {
          v56 = v53;
        }

        v49 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v56, 1, v49);
      }

      v27 = v152;
      v46 &= v46 - 1;
      if (*(v51 + 16))
      {
        if ((*(v49 + 3) >> 1) - *(v49 + 2) < v52)
        {
          goto LABEL_111;
        }

        swift_arrayInitWithCopy();

        v41 = v147;
        if (v52)
        {
          v57 = *(v49 + 2);
          v58 = __OFADD__(v57, v52);
          v59 = v57 + v52;
          if (v58)
          {
            goto LABEL_112;
          }

          *(v49 + 2) = v59;
        }
      }

      else
      {

        v41 = v147;
        if (v52)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_5;
    }
  }

  v46 = v149;

  v149 = sub_1D5B86020(v49);

  v136 = sub_1D7228310();
  v60 = *(v142 + 16);
  if (v60)
  {
    v46 = v142 + ((v141[80] + 32) & ~v141[80]);
    v61 = *(v141 + 9);
    v62 = MEMORY[0x1E69E7CC0];
    v63 = v132;
    do
    {
      v64 = v146;
      sub_1D68FF774(v46, v146, sub_1D68FC384);
      v65 = *(v63 + 16);
      v150[0] = *v63;
      v150[1] = v65;
      v151 = *(v63 + 32);
      sub_1D68FCAB8(v150, v64);
      v67 = v66;
      sub_1D68FF714(v64, sub_1D68FC384);
      v68 = *(v67 + 16);
      v69 = v62[2];
      v70 = v69 + v68;
      if (__OFADD__(v69, v68))
      {
        goto LABEL_105;
      }

      v71 = swift_isUniquelyReferenced_nonNull_native();
      if (!v71 || v70 > v62[3] >> 1)
      {
        if (v69 <= v70)
        {
          v72 = v69 + v68;
        }

        else
        {
          v72 = v69;
        }

        v62 = sub_1D69952EC(v71, v72, 1, v62);
      }

      v27 = v152;
      if (*(v67 + 16))
      {
        if ((v62[3] >> 1) - v62[2] < v68)
        {
          goto LABEL_107;
        }

        swift_arrayInitWithCopy();

        v41 = v147;
        if (v68)
        {
          v73 = v62[2];
          v58 = __OFADD__(v73, v68);
          v74 = v73 + v68;
          if (v58)
          {
            goto LABEL_108;
          }

          v62[2] = v74;
        }
      }

      else
      {

        v41 = v147;
        if (v68)
        {
          goto LABEL_106;
        }
      }

      v46 += v61;
      --v60;
    }

    while (v60);
  }

  else
  {

    v62 = MEMORY[0x1E69E7CC0];
    v63 = v132;
  }

  v75 = v133;
  v76 = v131;
  v142 = v62[2];
  if (v142)
  {
    v77 = 0;
    v141 = v62 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
    v140 = (v133 + 56);
    v129 = (v63 + 16);
    v146 = v149 + 7;
    v78 = MEMORY[0x1E69E7CC0];
    v134 = (v133 + 48);
    while (1)
    {
      if (v77 >= v62[2])
      {
        goto LABEL_104;
      }

      sub_1D68FF774(&v141[*(v148 + 72) * v77], v27, type metadata accessor for SportsDataVisualizationResponseItem);
      sub_1D68FF774(v27, v41, type metadata accessor for SportsDataVisualizationResponseItem);
      if (swift_getEnumCaseMultiPayload())
      {
        v46 = type metadata accessor for SportsDataVisualizationResponseItem;
        sub_1D68FF714(v27, type metadata accessor for SportsDataVisualizationResponseItem);
        sub_1D68FF714(v41, type metadata accessor for SportsDataVisualizationResponseItem);
        (*v140)(v76, 1, 1, v143);
        goto LABEL_43;
      }

      sub_1D68FFE38(v41, v139, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      sub_1D68FF774(v27, v138, type metadata accessor for SportsDataVisualizationResponseItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v80 = *v138;
          v81 = v138[1];

LABEL_53:

          goto LABEL_54;
        }

        v80 = *v138;
        v81 = v138[1];

        v63 = v132;

        v76 = v131;
LABEL_52:

        goto LABEL_53;
      }

      v101 = v144;
      sub_1D68FFE38(v138, v144, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v80 = *v101;
      v81 = v101[1];

      sub_1D68FF714(v101, type metadata accessor for SportsDataVisualizationResponseScoreItem);
LABEL_54:
      if (!*(v136 + 16))
      {

        v27 = v152;
        goto LABEL_63;
      }

      v82 = sub_1D5B69D90(v80, v81);
      v84 = v83;

      v27 = v152;
      if ((v84 & 1) == 0)
      {
        goto LABEL_63;
      }

      v85 = *(*(v136 + 56) + 8 * v82);
      v86 = v129;
      if (*(v63 + 32))
      {
        v87 = MEMORY[0x1E69E7CD0];
        if (*(v63 + 32) != 1)
        {
          goto LABEL_60;
        }

        v86 = (*v63 + 40);
      }

      v87 = *v86;

LABEL_60:

      sub_1D670EDB8(v87, v85);
      v89 = v88;

      if ((v89 & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_63:
      sub_1D68FF774(v27, v137, type metadata accessor for SportsDataVisualizationResponseItem);
      v90 = swift_getEnumCaseMultiPayload();
      if (v90 > 2)
      {
        v93 = *v137;
        v92 = v137[1];
        goto LABEL_68;
      }

      v91 = v149;
      if (v90)
      {
        if (v90 == 1)
        {
          v93 = *v137;
          v92 = v137[1];

          goto LABEL_69;
        }

        v93 = *v137;
        v92 = v137[1];

        v63 = v132;

        v76 = v131;
LABEL_68:

LABEL_69:

        v91 = v149;
        if (!v149[2])
        {
          goto LABEL_84;
        }

        goto LABEL_70;
      }

      v102 = v144;
      sub_1D68FFE38(v137, v144, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v93 = *v102;
      v92 = v102[1];

      sub_1D68FF714(v102, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      if (!v91[2])
      {
        goto LABEL_84;
      }

LABEL_70:
      sub_1D7264A0C();
      sub_1D72621EC();
      v94 = sub_1D7264A5C();
      v95 = -1 << *(v91 + 32);
      v96 = v94 & ~v95;
      if ((*(v146 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
      {
        v97 = ~v95;
        while (1)
        {
          v98 = (v149[6] + 16 * v96);
          v99 = *v98 == v93 && v98[1] == v92;
          if (v99 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v96 = (v96 + 1) & v97;
          if (((*(v146 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
          {
            goto LABEL_84;
          }
        }

        v27 = v152;
LABEL_80:
        sub_1D68FF714(v27, type metadata accessor for SportsDataVisualizationResponseItem);
        sub_1D68FFE38(v139, v76, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        v100 = 0;
        goto LABEL_85;
      }

LABEL_84:

      sub_1D68FF714(v139, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v27 = v152;
      sub_1D68FF714(v152, type metadata accessor for SportsDataVisualizationResponseItem);
      v100 = 1;
LABEL_85:
      v46 = v143;
      (*v140)(v76, v100, 1, v143);
      v103 = (*v134)(v76, 1, v46);
      v41 = v147;
      if (v103 != 1)
      {
        sub_1D68FFE38(v76, v135, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1D6995320(0, v78[2] + 1, 1, v78);
        }

        v105 = v78[2];
        v104 = v78[3];
        v46 = v105 + 1;
        if (v105 >= v104 >> 1)
        {
          v78 = sub_1D6995320((v104 > 1), v105 + 1, 1, v78);
        }

        v78[2] = v46;
        sub_1D68FFE38(v135, v78 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v105, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        goto LABEL_44;
      }

LABEL_43:
      sub_1D6900328(v76, qword_1EDF06300, type metadata accessor for SportsDataVisualizationResponseScoreItem, MEMORY[0x1E69E6720], sub_1D68FD964);
LABEL_44:
      if (++v77 == v142)
      {

        v106 = v78;
        v75 = v133;
        goto LABEL_94;
      }
    }

    v80 = *v138;
    v81 = v138[1];
    goto LABEL_52;
  }

  v106 = MEMORY[0x1E69E7CC0];
LABEL_94:

  v107 = *(v106 + 16);
  v108 = MEMORY[0x1E69E7CC0];
  v152 = v106;
  if (v107)
  {
    *&v150[0] = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v107, 0);
    v108 = *&v150[0];
    v109 = v106 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v110 = *(v75 + 72);
    do
    {
      v111 = v144;
      sub_1D68FF774(v109, v144, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v113 = *v111;
      v112 = v111[1];

      sub_1D68FF714(v111, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      *&v150[0] = v108;
      v115 = *(v108 + 16);
      v114 = *(v108 + 24);
      if (v115 >= v114 >> 1)
      {
        sub_1D5BFC364((v114 > 1), v115 + 1, 1);
        v108 = *&v150[0];
      }

      *(v108 + 16) = v115 + 1;
      v116 = v108 + 16 * v115;
      *(v116 + 32) = v113;
      *(v116 + 40) = v112;
      v109 += v110;
      --v107;
    }

    while (v107);
  }

  v46 = sub_1D5B86020(v108);

  if (qword_1EDF17590 != -1)
  {
    goto LABEL_113;
  }

LABEL_100:
  v117 = sub_1D725C42C();
  __swift_project_value_buffer(v117, qword_1EDF17598);

  v118 = sub_1D725C3FC();
  v119 = sub_1D7262EDC();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *&v150[0] = v121;
    *v120 = 136446210;
    v122 = sub_1D7262B1C();
    v124 = sub_1D5BC5100(v122, v123, v150);

    *(v120 + 4) = v124;
    _os_log_impl(&dword_1D5B42000, v118, v119, "Successfully fetched featured events=%{public}s", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v121);
    MEMORY[0x1DA6FD500](v121, -1, -1);
    MEMORY[0x1DA6FD500](v120, -1, -1);
  }

  result = sub_1D68FF714(v130, type metadata accessor for SportsFeaturedEventsResource);
  v126 = v128;
  *v128 = v152;
  v126[1] = v46;
  return result;
}

void sub_1D68EE428(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v4 = sub_1D725C42C();
  __swift_project_value_buffer(v4, qword_1EDF17598);
  v5 = a1;
  v6 = sub_1D725C3FC();
  v7 = sub_1D7262EBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_1D726497C();
    v12 = sub_1D5BC5100(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D5B42000, v6, v7, "Failed to fetch featured events; error=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);
  }

  v13 = MEMORY[0x1E69E7CD0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v13;
}

uint64_t sub_1D68EE5B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D679250C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D68EE5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D68EE618, 0, 0);
}

uint64_t sub_1D68EE618()
{
  v0[5] = sub_1D68EE6C0(v0[4]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D5FE1C4C;
  v2 = v0[2];

  return MEMORY[0x1EEE44EE0](v2);
}

uint64_t sub_1D68EE6C0(uint64_t a1)
{
  v2 = type metadata accessor for SportsDataVisualizationResponseScoreItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v23 = &v44 - v22;
  v53 = MEMORY[0x1E69E7CD0];
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    v46 = v5;
    v47 = v26;
    do
    {
      sub_1D68FF774(v25, v23, type metadata accessor for SportsDataVisualizationResponseItem);
      sub_1D68FF774(v23, v16, type metadata accessor for SportsDataVisualizationResponseItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v28 = *(v16 + 4);
          }

          else
          {
            v37 = *(v16 + 3);
            v51 = *(v16 + 2);
            v52[0] = v37;
            *(v52 + 9) = *(v16 + 57);
            v38 = *(v16 + 1);
            v49 = *v16;
            v50 = v38;
            v28 = *&v52[0];

            sub_1D5FC4DE4(&v49);
          }
        }

        else
        {
          v35 = v45;
          sub_1D68FFE38(v16, v45, type metadata accessor for SportsDataVisualizationResponseScoreItem);
          v28 = *(v35 + 48);

          sub_1D68FF714(v35, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        }
      }

      else
      {
        sub_1D68FF714(v16, type metadata accessor for SportsDataVisualizationResponseItem);
        v28 = MEMORY[0x1E69E7CC0];
      }

      sub_1D5B87D50(v28);

      sub_1D68FF774(v23, v12, type metadata accessor for SportsDataVisualizationResponseItem);
      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 2)
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v30 = *(v12 + 2);
            v31 = *(v12 + 3);
          }

          else
          {
            v39 = *(v12 + 3);
            v51 = *(v12 + 2);
            v52[0] = v39;
            *(v52 + 9) = *(v12 + 57);
            v40 = *(v12 + 1);
            v49 = *v12;
            v50 = v40;
            v31 = *(&v40 + 1);
            v30 = v40;

            sub_1D5FC4DE4(&v49);
          }
        }

        else
        {
          v36 = v45;
          sub_1D68FFE38(v12, v45, type metadata accessor for SportsDataVisualizationResponseScoreItem);
          v30 = *(v36 + 32);
          v31 = *(v36 + 40);

          sub_1D68FF714(v36, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        }
      }

      else
      {
        v30 = *(v12 + 4);
        v31 = *(v12 + 5);
      }

      if (v31)
      {
        sub_1D5B860D0(&v49, v30, v31);
      }

      sub_1D68FF774(v23, v8, type metadata accessor for SportsDataVisualizationResponseItem);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v32 = v8[3];
        v51 = v8[2];
        v52[0] = v32;
        *(v52 + 9) = *(v8 + 57);
        v33 = v8[1];
        v49 = *v8;
        v50 = v33;
        v34 = v51;

        sub_1D5FC4DE4(&v49);
        if (*(&v34 + 1))
        {
          sub_1D5B860D0(&v48, v34, *(&v34 + 1));
        }
      }

      else
      {
        sub_1D68FF714(v8, type metadata accessor for SportsDataVisualizationResponseItem);
      }

      v19 = sub_1D68FF714(v23, type metadata accessor for SportsDataVisualizationResponseItem);
      v25 += v47;
      --v24;
    }

    while (v24);
  }

  MEMORY[0x1EEE9AC00](v19, v20);
  *(&v44 - 2) = v44;
  *(&v44 - 1) = &v53;
  sub_1D5C44878(0);
  sub_1D725BDCC();
  v41 = sub_1D725B92C();
  sub_1D68FDBB8(0, &unk_1EDF05658, &qword_1EDF04500, &protocolRef_FCSportsProviding);
  v42 = sub_1D725BA8C();

  return v42;
}

uint64_t sub_1D68EEC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D68EED00;

  return sub_1D68E99E8(a3);
}

uint64_t sub_1D68EED00(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D5E6D694, 0, 0);
}

void sub_1D68EEE00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, __int128 *a9, uint64_t a10, char **a11)
{
  v54 = a5;
  v53 = a3;
  v55 = a2;
  v62 = a7;
  v14 = type metadata accessor for SportsDataVisualizationResponseScoreItem(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FF774(a1, v21, type metadata accessor for SportsDataVisualizationResponseItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v27 = *(v21 + 1);
        v28 = *(v21 + 2);
        v29 = *(v21 + 3);
        v30 = *(v21 + 4);
        v31 = *(v21 + 5);
        v32 = v21[48];
        *&v56 = *v21;
        *(&v56 + 1) = v27;
        *&v57 = v28;
        *(&v57 + 1) = v29;
        *v58 = v30;
        *&v58[8] = v31;
        v58[16] = v32;
        sub_1D5B6B7A4(0);
        v33 = sub_1D725B45C();
        sub_1D68F37EC(&v56, v53, v33, v54, v62);
      }

      else
      {
        v40 = *(v21 + 3);
        *v58 = *(v21 + 2);
        *&v58[16] = v40;
        *&v58[25] = *(v21 + 57);
        v41 = *(v21 + 1);
        v56 = *v21;
        v57 = v41;
        v42 = *a11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a11 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = sub_1D6995354(0, *(v42 + 2) + 1, 1, v42);
          *a11 = v42;
        }

        v45 = *(v42 + 2);
        v44 = *(v42 + 3);
        if (v45 >= v44 >> 1)
        {
          v42 = sub_1D6995354((v44 > 1), v45 + 1, 1, v42);
          *a11 = v42;
        }

        *(v42 + 2) = v45 + 1;
        v46 = &v42[80 * v45];
        *(v46 + 2) = v56;
        v47 = v57;
        v48 = *v58;
        v49 = *&v58[16];
        *(v46 + 89) = *&v58[25];
        *(v46 + 4) = v48;
        *(v46 + 5) = v49;
        *(v46 + 3) = v47;
        *v62 = 0xF000000000000007;
      }
    }

    else
    {
      sub_1D68FFE38(v21, v17, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      sub_1D5B6B7A4(0);
      v38 = sub_1D725B45C();
      v39 = a9[1];
      v56 = *a9;
      v57 = v39;
      v58[0] = *(a9 + 32);
      sub_1D68EF31C(v17, v53, v38, a4, v54, a6, a8, &v56, v62);

      sub_1D68FF714(v17, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    v34 = *(v21 + 1);
    v56 = *v21;
    v57 = v34;
    v36 = *v21;
    v35 = *(v21 + 1);
    *v58 = *(v21 + 2);
    *&v58[9] = *(v21 + 41);
    v59 = v36;
    v60 = v35;
    v61[0] = *(v21 + 2);
    *(v61 + 9) = *(v21 + 41);
    if (EnumCaseMultiPayload == 5)
    {
      sub_1D5B6B7A4(0);
      v37 = sub_1D725B45C();
      sub_1D68F2840(&v59, v53, v37, a8, a10, v62);

      sub_1D5F0E674(&v56);
    }

    else
    {
      sub_1D5B6B7A4(0);
      v51 = sub_1D725B45C();
      sub_1D68F4444(&v59, v53, v51, a8, a10, v62);

      sub_1D6726074(&v56);
    }
  }

  else
  {
    v23 = *(v21 + 1);
    v56 = *v21;
    v57 = v23;
    v25 = *v21;
    v24 = *(v21 + 1);
    *v58 = *(v21 + 2);
    *&v58[9] = *(v21 + 41);
    v59 = v25;
    v60 = v24;
    v61[0] = *(v21 + 2);
    *(v61 + 9) = *(v21 + 41);
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5B6B7A4(0);
      v26 = sub_1D725B45C();
      sub_1D68F0B40(&v59, v53, v26, a8, a10, v62);

      sub_1D6794A44(&v56);
    }

    else
    {
      sub_1D5B6B7A4(0);
      v50 = sub_1D725B45C();
      sub_1D68F1AE8(&v59, v53, v50, a8, a10, v62);

      sub_1D67949F0(&v56);
    }
  }
}

void sub_1D68EF31C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v208 = a7;
  v204 = a5;
  v211 = a4;
  v219 = a3;
  v213 = a2;
  v221 = a9;
  v12 = type metadata accessor for SportsDataVisualizationResponseMetadata(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v203 = &v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for SportsEventStatusResponseEmbed(0);
  v199 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201, v15);
  v200 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v207 = &v196 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v198 = &v196 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v196 - v25;
  v218 = type metadata accessor for SportsDataVisualizationResponseScoreItem(0);
  MEMORY[0x1EEE9AC00](v218, v27);
  v215 = &v196 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v214 = &v196 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v210 = &v196 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v209 = (&v196 - v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v202 = (&v196 - v40);
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v196 - v43;
  v45 = sub_1D72585BC();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v196 - v50;
  v52 = *(a8 + 24);
  v53 = *(a8 + 32);
  v206 = v54;
  v205 = a6;
  if (v53 == 1)
  {
    v52 = *(*a8 + 48);
  }

  v56 = *a1;
  v55 = a1[1];
  v57 = *(v52 + 16);
  v212 = v55;
  if (v57 && (v58 = sub_1D5B69D90(v56, v55), (v59 & 1) != 0))
  {
    v223 = *(*(v52 + 56) + 8 * v58);
  }

  else
  {
    v223 = MEMORY[0x1E69E7CD0];
  }

  v222 = v51;
  if (v53 == 2)
  {
    v60 = 1;
    v61 = 1;
  }

  else
  {
    v216 = v56;
    v217 = v26;
    v62 = a1;
    v63 = v46;
    v64 = v45;
    if (*(v223 + 16) && (v65 = v223, sub_1D7264A0C(), sub_1D72621EC(), v66 = sub_1D7264A5C(), v67 = v65 + 56, v68 = -1 << *(v65 + 32), v69 = v66 & ~v68, ((*(v67 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) != 0))
    {
      v70 = ~v68;
      v71 = *(v223 + 48);
      while ((*(v71 + v69) & 1) == 0 && (sub_1D72646CC() & 1) == 0)
      {
        v69 = (v69 + 1) & v70;
        if (((*(v67 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v60 = 1;
      v61 = 1;
      v45 = v64;
      v46 = v63;
      v51 = v222;
      v26 = v217;
      a1 = v62;
    }

    else
    {
LABEL_15:
      v60 = 0;
      a1 = v62;
      v61 = *(v62 + *(v218 + 40));
      v45 = v64;
      v46 = v63;
      v51 = v222;
      v26 = v217;
    }

    v56 = v216;
  }

  LOBYTE(v225) = v61;
  sub_1D68F7D24(&v225, v219, v44);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    v72 = a1;

    sub_1D6900328(v44, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v73 = 0xEC00000045524F43;
    v74 = 0x535F5354524F5053;
    v75 = qword_1EDFFC538;
    v76 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1D7273AE0;
    v225 = 0;
    v226 = 0xE000000000000000;
    if (v61 > 3)
    {
      v114 = 0x80000001D73BCEC0;
      v115 = 0xD000000000000013;
      if (v61 == 6)
      {
        v115 = 0xD000000000000014;
      }

      else
      {
        v114 = 0x80000001D73BCEE0;
      }

      v116 = 0xD000000000000010;
      v117 = 0x80000001D73BCE80;
      if (v61 != 4)
      {
        v116 = 0xD000000000000011;
        v117 = 0x80000001D73BCEA0;
      }

      if (v61 <= 5)
      {
        v82 = v116;
      }

      else
      {
        v82 = v115;
      }

      if (v61 <= 5)
      {
        v83 = v117;
      }

      else
      {
        v83 = v114;
      }
    }

    else
    {
      v78 = 0xEF474E49444E4154;
      v79 = 0x425F5354524F5053;
      if (v61 == 2)
      {
        v79 = 0x535F5354524F5053;
      }

      else
      {
        v78 = 0xEE0054454B434152;
      }

      v80 = 0x80000001D73BCF90;
      v81 = 0xD000000000000015;
      if (!v61)
      {
        v81 = 0x535F5354524F5053;
        v80 = 0xEC00000045524F43;
      }

      if (v61 <= 1)
      {
        v82 = v81;
      }

      else
      {
        v82 = v79;
      }

      if (v61 <= 1)
      {
        v83 = v80;
      }

      else
      {
        v83 = v78;
      }
    }

    MEMORY[0x1DA6F9910](v82, v83);

    v118 = v225;
    v119 = v226;
    *(v77 + 56) = MEMORY[0x1E69E6158];
    *(v77 + 64) = sub_1D5B7E2C0();
    *(v77 + 32) = v118;
    *(v77 + 40) = v119;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v75, v76, v77);

    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v120 = sub_1D725C42C();
    __swift_project_value_buffer(v120, qword_1EDF17598);
    v121 = v72;
    v122 = v72;
    v123 = v214;
    sub_1D68FF774(v122, v214, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v124 = v121;
    v125 = v215;
    sub_1D68FF774(v124, v215, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v126 = sub_1D725C3FC();
    v127 = sub_1D7262EBC();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v225 = v129;
      *v128 = 136446466;
      v130 = *v123;
      v131 = v123[1];

      sub_1D68FF714(v123, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v132 = sub_1D5BC5100(v130, v131, &v225);

      *(v128 + 4) = v132;
      *(v128 + 12) = 2082;
      v133 = *(v125 + *(v218 + 40));
      if (v133 > 3)
      {
        v134 = v221;
        if (*(v125 + *(v218 + 40)) > 5u)
        {
          if (v133 == 6)
          {
            v73 = 0x80000001D73BCEC0;
            v74 = 0xD000000000000014;
          }

          else
          {
            v73 = 0x80000001D73BCEE0;
            v74 = 0xD000000000000013;
          }
        }

        else if (v133 == 4)
        {
          v74 = 0xD000000000000010;
          v73 = 0x80000001D73BCE80;
        }

        else
        {
          v73 = 0x80000001D73BCEA0;
          v74 = 0xD000000000000011;
        }
      }

      else
      {
        v134 = v221;
        if (*(v125 + *(v218 + 40)) > 1u)
        {
          if (v133 == 2)
          {
            v73 = 0xEF474E49444E4154;
          }

          else
          {
            v74 = 0x425F5354524F5053;
            v73 = 0xEE0054454B434152;
          }
        }

        else if (*(v125 + *(v218 + 40)))
        {
          v73 = 0x80000001D73BCF90;
          v74 = 0xD000000000000015;
        }
      }

      sub_1D68FF714(v125, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v175 = sub_1D5BC5100(v74, v73, &v225);

      *(v128 + 14) = v175;
      _os_log_impl(&dword_1D5B42000, v126, v127, "Sports data service no embed mapping found for id=%{public}s, embedType=%{public}s", v128, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v129, -1, -1);
      MEMORY[0x1DA6FD500](v128, -1, -1);

      v174 = 0xF000000000000007;
      goto LABEL_136;
    }

    sub_1D68FF714(v125, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    sub_1D68FF714(v123, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    goto LABEL_120;
  }

  v220 = v46;
  v84 = (*(v46 + 32))(v51, v44, v45);
  v86 = MEMORY[0x1E69E7CD0];
  if (v60)
  {
    v87 = a1;
    sub_1D7264A0C();
    sub_1D72621EC();
    v84 = sub_1D7264A5C();
    v88 = -1 << *(v86 + 32);
    v89 = v84 & ~v88;
    if ((*(v86 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v89))
    {
      v90 = ~v88;
      v91 = *(v86 + 48);
      while ((*(v91 + v89) & 1) == 0)
      {
        v84 = sub_1D72646CC();
        if (v84)
        {
          break;
        }

        v89 = (v89 + 1) & v90;
        if (((*(v86 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v89) & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v225 = v86;
      sub_1D5FF7EF4(1, v89, isUniquelyReferenced_nonNull_native);
      v86 = v225;
    }

    a1 = v87;
  }

  v93 = a1[7];
  MEMORY[0x1EEE9AC00](v84, v85);
  *(&v196 - 2) = v213;
  v94 = sub_1D5FBE1C8(sub_1D68FE660, (&v196 - 4), v93);
  v96 = v94;
  v97 = v223;
  if (v94 >> 62)
  {
    v98 = sub_1D7263BFC();
  }

  else
  {
    v98 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v98 == *(v93 + 16))
  {
    v99 = sub_1D68F53EC(a1, v208, v95);
    if (v99)
    {
      if ([swift_unknownObjectRetain() isDeprecated])
      {

        if (qword_1EDF17590 != -1)
        {
          swift_once();
        }

        v100 = sub_1D725C42C();
        __swift_project_value_buffer(v100, qword_1EDF17598);
        v101 = v202;
        sub_1D68FF774(a1, v202, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        swift_unknownObjectRetain();
        v102 = sub_1D725C3FC();
        v103 = sub_1D7262EDC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v225 = v105;
          *v104 = 136446466;
          v106 = *v101;
          v107 = v101[1];

          sub_1D68FF714(v101, type metadata accessor for SportsDataVisualizationResponseScoreItem);
          v108 = sub_1D5BC5100(v106, v107, &v225);

          *(v104 + 4) = v108;
          *(v104 + 12) = 2082;
          v109 = [v99 description];
          v110 = sub_1D726207C();
          v112 = v111;

          v113 = sub_1D5BC5100(v110, v112, &v225);

          *(v104 + 14) = v113;
          _os_log_impl(&dword_1D5B42000, v102, v103, "Sports data service not created score for deprecated id=%{public}s, event=%{public}s", v104, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA6FD500](v105, -1, -1);
          MEMORY[0x1DA6FD500](v104, -1, -1);
          swift_unknownObjectRelease_n();

LABEL_119:
          (*(v220 + 8))(v222, v45);
LABEL_120:
          v174 = 0xF000000000000007;
LABEL_135:
          v134 = v221;
          goto LABEL_136;
        }

        swift_unknownObjectRelease_n();

        v152 = v101;
LABEL_118:
        sub_1D68FF714(v152, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        goto LABEL_119;
      }

      swift_unknownObjectRelease();
    }

    v153 = v204;
    v154 = sub_1D68F5644(a1, v204, v99);
    v214 = sub_1D68F59AC(a1, v153, v99, v155);
    if (*(v211 + 16) && (v156 = sub_1D5B69D90(v56, v212), (v157 & 1) != 0))
    {
      v158 = v200;
      sub_1D68FF774(*(v211 + 56) + *(v199 + 72) * v156, v200, type metadata accessor for SportsEventStatusResponseEmbed);
      v159 = v154;
      v160 = v198;
      sub_1D68FF774(v158 + *(v201 + 20), v198, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      sub_1D68FF714(v158, type metadata accessor for SportsEventStatusResponseEmbed);
      v161 = v160;
      v154 = v159;
    }

    else
    {
      v161 = v203;
      sub_1D68FF774(a1 + *(v218 + 36), v203, type metadata accessor for SportsDataVisualizationResponseMetadata);
    }

    v219 = v99;
    sub_1D68FFE38(v161, v26, type metadata accessor for SportsDataVisualizationResponseEventStatus);
    v162 = sub_1D5BE240C(v56, v212, v205);
    v197 = v45;
    v216 = v56;
    v217 = v26;
    v215 = v96;
    if ((v162 & 1) == 0)
    {
      if (!*(v97 + 16))
      {

LABEL_134:
        v182 = v222;
        v174 = swift_allocObject();
        v183 = *(v220 + 16);
        v184 = v206;
        v183(v206, v182, v45);
        v185 = v45;
        v186 = v207;
        sub_1D68FF774(v217, v207, type metadata accessor for SportsDataVisualizationResponseEventStatus);
        sub_1D6F14BD8(v186, &v224);
        v223 = v224;
        type metadata accessor for SportsScoreDataVisualization(0);
        v187 = swift_allocObject();
        v188 = v216;
        v187[4] = v214;
        v187[5] = v188;
        v189 = v212;
        v187[6] = v212;
        v187[7] = v219;
        v187[8] = v154;
        v183(v187 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl, v184, v185);
        *(v187 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources) = v215;
        *(v187 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus) = v223;
        *(v187 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata) = 0;
        *(v187 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits) = v86;
        *(v187 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData) = 0;
        v190 = (v187 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
        *v190 = 0u;
        v190[1] = 0u;
        v190[2] = 0u;
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        v225 = sub_1D72583DC();
        v226 = v191;
        MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
        MEMORY[0x1DA6F9910](v216, v189);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v192 = v225;
        v193 = v226;
        v194 = *(v220 + 8);
        v195 = v197;
        v194(v184, v197);
        sub_1D68FF714(v217, type metadata accessor for SportsDataVisualizationResponseEventStatus);
        v194(v222, v195);
        v187[2] = v192;
        v187[3] = v193;
        *(v174 + 16) = v187;
        goto LABEL_135;
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v163 = sub_1D7264A5C();
      v164 = v97 + 56;
      v165 = -1 << *(v97 + 32);
      v166 = v163 & ~v165;
      if (((*(v97 + 56 + ((v166 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v166) & 1) == 0)
      {
LABEL_132:

LABEL_133:
        v45 = v197;
        goto LABEL_134;
      }

      v167 = ~v165;
      v168 = *(v97 + 48);
      while ((*(v168 + v166) & 1) != 0 && (sub_1D72646CC() & 1) == 0)
      {
        v166 = (v166 + 1) & v167;
        if (((*(v164 + ((v166 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v166) & 1) == 0)
        {
          goto LABEL_132;
        }
      }
    }

    sub_1D7264A0C();
    sub_1D72621EC();
    v176 = sub_1D7264A5C();
    v177 = -1 << *(v86 + 32);
    v178 = v176 & ~v177;
    if ((*(v86 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178))
    {
      v179 = ~v177;
      v180 = *(v86 + 48);
      while (*(v180 + v178) == 1 && (sub_1D72646CC() & 1) == 0)
      {
        v178 = (v178 + 1) & v179;
        if (((*(v86 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) == 0)
        {
          goto LABEL_131;
        }
      }
    }

    else
    {
LABEL_131:
      v181 = swift_isUniquelyReferenced_nonNull_native();
      v225 = v86;
      sub_1D5FF7EF4(0, v178, v181);
      v86 = v225;
    }

    goto LABEL_133;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v135 = sub_1D725C42C();
  __swift_project_value_buffer(v135, qword_1EDF17598);
  v136 = v209;
  sub_1D68FF774(a1, v209, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  v137 = v210;
  sub_1D68FF774(a1, v210, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  v138 = sub_1D725C3FC();
  v139 = sub_1D7262EBC();
  if (!os_log_type_enabled(v138, v139))
  {

    sub_1D68FF714(v137, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v152 = v136;
    goto LABEL_118;
  }

  v140 = swift_slowAlloc();
  v141 = swift_slowAlloc();
  v225 = v141;
  *v140 = 136446466;
  v142 = *v136;
  v143 = v136[1];

  sub_1D68FF714(v136, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  v144 = sub_1D5BC5100(v142, v143, &v225);

  *(v140 + 4) = v144;
  *(v140 + 12) = 2082;
  v145 = *(v137 + *(v218 + 40));
  if (v145 > 3)
  {
    v169 = 0x80000001D73BCEC0;
    v170 = 0xD000000000000013;
    if (v145 == 6)
    {
      v170 = 0xD000000000000014;
    }

    else
    {
      v169 = 0x80000001D73BCEE0;
    }

    v171 = 0xD000000000000010;
    v172 = 0x80000001D73BCE80;
    if (v145 != 4)
    {
      v171 = 0xD000000000000011;
      v172 = 0x80000001D73BCEA0;
    }

    if (*(v137 + *(v218 + 40)) <= 5u)
    {
      v150 = v171;
    }

    else
    {
      v150 = v170;
    }

    if (*(v137 + *(v218 + 40)) <= 5u)
    {
      v151 = v172;
    }

    else
    {
      v151 = v169;
    }
  }

  else
  {
    v146 = 0x535F5354524F5053;
    v147 = 0xEC00000045524F43;
    v148 = 0xEF474E49444E4154;
    v149 = 0x425F5354524F5053;
    if (v145 == 2)
    {
      v149 = 0x535F5354524F5053;
    }

    else
    {
      v148 = 0xEE0054454B434152;
    }

    if (*(v137 + *(v218 + 40)))
    {
      v146 = 0xD000000000000015;
      v147 = 0x80000001D73BCF90;
    }

    if (*(v137 + *(v218 + 40)) <= 1u)
    {
      v150 = v146;
    }

    else
    {
      v150 = v149;
    }

    if (*(v137 + *(v218 + 40)) <= 1u)
    {
      v151 = v147;
    }

    else
    {
      v151 = v148;
    }
  }

  v134 = v221;
  sub_1D68FF714(v137, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  v173 = sub_1D5BC5100(v150, v151, &v225);

  *(v140 + 14) = v173;
  _os_log_impl(&dword_1D5B42000, v138, v139, "Sports data service could not create all data sources for id=%{public}s, embedType=%{public}s", v140, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1DA6FD500](v141, -1, -1);
  MEMORY[0x1DA6FD500](v140, -1, -1);

  (*(v220 + 8))(v222, v45);
  v174 = 0xF000000000000007;
LABEL_136:
  *v134 = v174;
}

void sub_1D68F0B40(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v123 = a2;
  v126 = a6;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v117 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v122 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v117 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  *&v125 = &v117 - v24;
  v25 = a1[2];
  v26 = a1[3];
  LODWORD(v127) = *(a1 + 56);
  if (!*(a4 + 16) || (v27 = a1[1], v120 = *a1, v121 = v27, v28 = a1[5], v29 = a1[6], v119 = v28, v30 = sub_1D5B69D90(v25, v26), (v31 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v49 = qword_1EDFFC538;
    v50 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1D7270C10;
    v128 = 0;
    v129 = 0xE000000000000000;
    if (v127 > 3)
    {
      v58 = 0x80000001D73BCEC0;
      v59 = 0xD000000000000013;
      if (v127 == 6)
      {
        v59 = 0xD000000000000014;
      }

      else
      {
        v58 = 0x80000001D73BCEE0;
      }

      v60 = 0xD000000000000010;
      v61 = 0x80000001D73BCE80;
      if (v127 != 4)
      {
        v60 = 0xD000000000000011;
        v61 = 0x80000001D73BCEA0;
      }

      if (v127 <= 5)
      {
        v56 = v60;
      }

      else
      {
        v56 = v59;
      }

      if (v127 <= 5)
      {
        v57 = v61;
      }

      else
      {
        v57 = v58;
      }
    }

    else
    {
      v52 = 0x535F5354524F5053;
      v53 = 0xEC00000045524F43;
      v54 = 0xEF474E49444E4154;
      v55 = 0x425F5354524F5053;
      if (v127 == 2)
      {
        v55 = 0x535F5354524F5053;
      }

      else
      {
        v54 = 0xEE0054454B434152;
      }

      if (v127)
      {
        v52 = 0xD000000000000015;
        v53 = 0x80000001D73BCF90;
      }

      if (v127 <= 1)
      {
        v56 = v52;
      }

      else
      {
        v56 = v55;
      }

      if (v127 <= 1)
      {
        v57 = v53;
      }

      else
      {
        v57 = v54;
      }
    }

    MEMORY[0x1DA6F9910](v56, v57);

    v62 = v128;
    v63 = v129;
    v64 = MEMORY[0x1E69E6158];
    *(v51 + 56) = MEMORY[0x1E69E6158];
    v65 = sub_1D5B7E2C0();
    *(v51 + 32) = v62;
    *(v51 + 40) = v63;
    *(v51 + 96) = v64;
    *(v51 + 104) = v65;
    *(v51 + 64) = v65;
    *(v51 + 72) = v25;
    *(v51 + 80) = v26;

    sub_1D725C30C("Sports data service found no event for embedType=%{public}@, eventId=%{public}@", 79, 2, &dword_1D5B42000, v49, v50, v51);

    goto LABEL_70;
  }

  v117 = v29;
  v32 = *(*(a4 + 56) + 8 * v30);
  v33 = *(a5 + 16);
  v118 = v32;
  swift_unknownObjectRetain();
  if (!v33 || (v34 = sub_1D5B69D90(v25, v26), (v35 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v66 = qword_1EDFFC538;
    v67 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1D7270C10;
    v128 = 0;
    v129 = 0xE000000000000000;
    if (v127 > 3)
    {
      v75 = 0x80000001D73BCEC0;
      v76 = 0xD000000000000013;
      if (v127 == 6)
      {
        v76 = 0xD000000000000014;
      }

      else
      {
        v75 = 0x80000001D73BCEE0;
      }

      v77 = 0xD000000000000010;
      v78 = 0x80000001D73BCE80;
      if (v127 != 4)
      {
        v77 = 0xD000000000000011;
        v78 = 0x80000001D73BCEA0;
      }

      if (v127 <= 5)
      {
        v73 = v77;
      }

      else
      {
        v73 = v76;
      }

      if (v127 <= 5)
      {
        v74 = v78;
      }

      else
      {
        v74 = v75;
      }
    }

    else
    {
      v69 = 0x535F5354524F5053;
      v70 = 0xEC00000045524F43;
      v71 = 0xEF474E49444E4154;
      v72 = 0x425F5354524F5053;
      if (v127 == 2)
      {
        v72 = 0x535F5354524F5053;
      }

      else
      {
        v71 = 0xEE0054454B434152;
      }

      if (v127)
      {
        v69 = 0xD000000000000015;
        v70 = 0x80000001D73BCF90;
      }

      if (v127 <= 1)
      {
        v73 = v69;
      }

      else
      {
        v73 = v72;
      }

      if (v127 <= 1)
      {
        v74 = v70;
      }

      else
      {
        v74 = v71;
      }
    }

    MEMORY[0x1DA6F9910](v73, v74);

    v79 = v128;
    v80 = v129;
    v81 = MEMORY[0x1E69E6158];
    *(v68 + 56) = MEMORY[0x1E69E6158];
    v82 = sub_1D5B7E2C0();
    *(v68 + 32) = v79;
    *(v68 + 40) = v80;
    *(v68 + 96) = v81;
    *(v68 + 104) = v82;
    *(v68 + 64) = v82;
    *(v68 + 72) = v25;
    *(v68 + 80) = v26;

    sub_1D725C30C("Sports data service found no event roster for embedType=%{public}@, eventId=%{public}@", 86, 2, &dword_1D5B42000, v66, v67, v68);
    goto LABEL_69;
  }

  v36 = *(*(a5 + 56) + 8 * v34);
  LOBYTE(v128) = v127;

  sub_1D68F7D24(&v128, a3, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_1D6900328(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v37 = 0xEC00000045524F43;
    v38 = 0x535F5354524F5053;
    v39 = qword_1EDFFC538;
    v40 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    v125 = xmmword_1D7273AE0;
    *(v41 + 16) = xmmword_1D7273AE0;
    v128 = 0;
    v129 = 0xE000000000000000;
    v42 = v127;
    if (v127 > 3)
    {
      v43 = 0x80000001D73BCEC0;
      v98 = 0xD000000000000014;
      if (v127 != 6)
      {
        v98 = 0xD000000000000013;
        v43 = 0x80000001D73BCEE0;
      }

      v45 = 0x80000001D73BCE80;
      if (v127 == 4)
      {
        v99 = 0xD000000000000010;
      }

      else
      {
        v99 = 0xD000000000000011;
      }

      if (v127 != 4)
      {
        v45 = 0x80000001D73BCEA0;
      }

      v47 = v127 <= 5;
      if (v127 <= 5)
      {
        v48 = v99;
      }

      else
      {
        v48 = v98;
      }
    }

    else
    {
      v43 = 0xEF474E49444E4154;
      v44 = 0x425F5354524F5053;
      if (v127 == 2)
      {
        v44 = 0x535F5354524F5053;
      }

      else
      {
        v43 = 0xEE0054454B434152;
      }

      v45 = 0x80000001D73BCF90;
      v46 = 0xD000000000000015;
      if (!v127)
      {
        v46 = 0x535F5354524F5053;
        v45 = 0xEC00000045524F43;
      }

      v47 = v127 <= 1;
      if (v127 <= 1)
      {
        v48 = v46;
      }

      else
      {
        v48 = v44;
      }
    }

    if (v47)
    {
      v100 = v45;
    }

    else
    {
      v100 = v43;
    }

    MEMORY[0x1DA6F9910](v48, v100);

    v101 = v128;
    v102 = v129;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    v103 = sub_1D5B7E2C0();
    *(v41 + 64) = v103;
    *(v41 + 32) = v101;
    *(v41 + 40) = v102;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v39, v40, v41);

    v104 = sub_1D7262EBC();
    v105 = swift_allocObject();
    *(v105 + 16) = v125;
    v128 = 0;
    v129 = 0xE000000000000000;
    if (v42 > 3)
    {
      if (v42 > 5)
      {
        if (v42 == 6)
        {
          v37 = 0x80000001D73BCEC0;
          v38 = 0xD000000000000014;
        }

        else
        {
          v37 = 0x80000001D73BCEE0;
          v38 = 0xD000000000000013;
        }
      }

      else if (v42 == 4)
      {
        v37 = 0x80000001D73BCE80;
        v38 = 0xD000000000000010;
      }

      else
      {
        v37 = 0x80000001D73BCEA0;
        v38 = 0xD000000000000011;
      }
    }

    else if (v42 > 1)
    {
      if (v42 == 2)
      {
        v37 = 0xEF474E49444E4154;
      }

      else
      {
        v38 = 0x425F5354524F5053;
        v37 = 0xEE0054454B434152;
      }
    }

    else if (v42)
    {
      v37 = 0x80000001D73BCF90;
      v38 = 0xD000000000000015;
    }

    MEMORY[0x1DA6F9910](v38, v37);

    v113 = v128;
    v114 = v129;
    *(v105 + 56) = MEMORY[0x1E69E6158];
    *(v105 + 64) = v103;
    *(v105 + 32) = v113;
    *(v105 + 40) = v114;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v39, v104, v105);
LABEL_69:

    swift_unknownObjectRelease();
    goto LABEL_70;
  }

  v84 = *(v15 + 32);
  v85 = (v84)(v125, v13, v14);
  MEMORY[0x1EEE9AC00](v85, v86);
  *(&v117 - 2) = v123;
  v87 = sub_1D5FBE1C8(sub_1D69019B0, (&v117 - 4), v117);
  if (v87 >> 62)
  {
    v116 = v87;
    v88 = sub_1D7263BFC();
    v87 = v116;
  }

  else
  {
    v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v88 == *(v117 + 16))
  {
    v127 = v84;
    v123 = v87;
    v124 = swift_allocObject();
    v89 = *(v15 + 16);
    v89(v21, v125, v14);
    type metadata accessor for SportsBoxScoreDataVisualization(0);
    v90 = swift_allocObject();
    v91 = v121;
    *(v90 + 4) = v120;
    *(v90 + 5) = v91;
    *(v90 + 6) = v118;
    v89(&v90[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_embedUrl], v21, v14);
    *&v90[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources] = v123;
    *&v90[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_roster] = v36;
    v92 = &v90[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config];
    *(v92 + 1) = 0u;
    *(v92 + 2) = 0u;
    *v92 = 0u;
    swift_unknownObjectRetain();

    v128 = sub_1D72583DC();
    v129 = v93;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v120, v91);
    v94 = v129;
    *(v90 + 2) = v128;
    *(v90 + 3) = v94;
    v95 = v122;
    v89(v122, v21, v14);
    swift_unknownObjectRelease();
    v96 = *(v15 + 8);
    v96(v21, v14);
    v96(v125, v14);
    v127(&v90[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_configuredEmbedUrl], v95, v14);
    v97 = v124;
    *(v124 + 16) = v90;
    v83 = v97 | 0x6000000000000000;
    goto LABEL_71;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v106 = sub_1D725C42C();
  __swift_project_value_buffer(v106, qword_1EDF17598);

  v107 = sub_1D725C3FC();
  v108 = sub_1D7262EBC();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v128 = v110;
    *v109 = 136446210;
    if (v127 > 3)
    {
      if (v127 > 5)
      {
        if (v127 == 6)
        {
          v112 = 0x80000001D73BCEC0;
          v111 = 0xD000000000000014;
        }

        else
        {
          v112 = 0x80000001D73BCEE0;
          v111 = 0xD000000000000013;
        }
      }

      else if (v127 == 4)
      {
        v111 = 0xD000000000000010;
        v112 = 0x80000001D73BCE80;
      }

      else
      {
        v112 = 0x80000001D73BCEA0;
        v111 = 0xD000000000000011;
      }
    }

    else
    {
      v111 = 0x535F5354524F5053;
      if (v127 > 1)
      {
        if (v127 == 2)
        {
          v112 = 0xEF474E49444E4154;
        }

        else
        {
          v111 = 0x425F5354524F5053;
          v112 = 0xEE0054454B434152;
        }
      }

      else if (v127)
      {
        v112 = 0x80000001D73BCF90;
        v111 = 0xD000000000000015;
      }

      else
      {
        v112 = 0xEC00000045524F43;
      }
    }

    v115 = sub_1D5BC5100(v111, v112, &v128);

    *(v109 + 4) = v115;
    _os_log_impl(&dword_1D5B42000, v107, v108, "Sports data service could not create all data sources for embedType=%{public}s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1DA6FD500](v110, -1, -1);
    MEMORY[0x1DA6FD500](v109, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v15 + 8))(v125, v14);
LABEL_70:
  v83 = 0xF000000000000007;
LABEL_71:
  *v126 = v83;
}

void sub_1D68F1AE8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, unint64_t *a6@<X8>)
{
  v115 = a5;
  v120 = a6;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v109 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  v118 = v14;
  *&v119 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v116 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v109 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v117 = &v109 - v24;
  v26 = a1[2];
  v25 = a1[3];
  v27 = *(a1 + 56);
  if (!*(a4 + 16) || (v28 = a1[1], v113 = *a1, v114 = v28, v29 = a1[5], v30 = a1[6], v112 = v29, v31 = sub_1D5B69D90(v26, v25), (v32 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v47 = qword_1EDFFC538;
    v48 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1D7270C10;
    v121 = 0;
    v122 = 0xE000000000000000;
    if (v27 > 3)
    {
      v56 = 0x80000001D73BCEC0;
      v57 = 0xD000000000000013;
      if (v27 == 6)
      {
        v57 = 0xD000000000000014;
      }

      else
      {
        v56 = 0x80000001D73BCEE0;
      }

      v58 = 0xD000000000000010;
      v59 = 0x80000001D73BCE80;
      if (v27 != 4)
      {
        v58 = 0xD000000000000011;
        v59 = 0x80000001D73BCEA0;
      }

      if (v27 <= 5)
      {
        v54 = v58;
      }

      else
      {
        v54 = v57;
      }

      if (v27 <= 5)
      {
        v55 = v59;
      }

      else
      {
        v55 = v56;
      }
    }

    else
    {
      v50 = 0x535F5354524F5053;
      v51 = 0xEC00000045524F43;
      v52 = 0xEF474E49444E4154;
      v53 = 0x425F5354524F5053;
      if (v27 == 2)
      {
        v53 = 0x535F5354524F5053;
      }

      else
      {
        v52 = 0xEE0054454B434152;
      }

      if (v27)
      {
        v50 = 0xD000000000000015;
        v51 = 0x80000001D73BCF90;
      }

      if (v27 <= 1)
      {
        v54 = v50;
      }

      else
      {
        v54 = v53;
      }

      if (v27 <= 1)
      {
        v55 = v51;
      }

      else
      {
        v55 = v52;
      }
    }

    MEMORY[0x1DA6F9910](v54, v55);

    v60 = v121;
    v61 = v122;
    v62 = MEMORY[0x1E69E6158];
    *(v49 + 56) = MEMORY[0x1E69E6158];
    v63 = sub_1D5B7E2C0();
    *(v49 + 32) = v60;
    *(v49 + 40) = v61;
    *(v49 + 96) = v62;
    *(v49 + 104) = v63;
    *(v49 + 64) = v63;
    *(v49 + 72) = v26;
    *(v49 + 80) = v25;

    sub_1D725C30C("Sports data service found no event for embedType=%{public}@, eventId=%{public}@", 79, 2, &dword_1D5B42000, v47, v48, v49);

    goto LABEL_41;
  }

  v33 = *(*(a4 + 56) + 8 * v31);
  LOBYTE(v121) = v27;
  v111 = v33;
  swift_unknownObjectRetain();
  sub_1D68F7D24(&v121, a3, v13);
  v35 = v118;
  v34 = v119;
  if ((*(v119 + 48))(v13, 1, v118) == 1)
  {
    sub_1D6900328(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v36 = 0xEC00000045524F43;
    v37 = 0x535F5354524F5053;
    v38 = qword_1EDFFC538;
    v39 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    v119 = xmmword_1D7273AE0;
    *(v40 + 16) = xmmword_1D7273AE0;
    v121 = 0;
    v122 = 0xE000000000000000;
    if (v27 > 3)
    {
      v41 = 0x80000001D73BCEC0;
      v74 = 0xD000000000000014;
      if (v27 != 6)
      {
        v74 = 0xD000000000000013;
        v41 = 0x80000001D73BCEE0;
      }

      v43 = 0x80000001D73BCE80;
      if (v27 == 4)
      {
        v75 = 0xD000000000000010;
      }

      else
      {
        v75 = 0xD000000000000011;
      }

      if (v27 != 4)
      {
        v43 = 0x80000001D73BCEA0;
      }

      v45 = v27 <= 5;
      if (v27 <= 5)
      {
        v46 = v75;
      }

      else
      {
        v46 = v74;
      }
    }

    else
    {
      v41 = 0xEF474E49444E4154;
      v42 = 0x425F5354524F5053;
      if (v27 == 2)
      {
        v42 = 0x535F5354524F5053;
      }

      else
      {
        v41 = 0xEE0054454B434152;
      }

      v43 = 0x80000001D73BCF90;
      v44 = 0xD000000000000015;
      if (!v27)
      {
        v44 = 0x535F5354524F5053;
        v43 = 0xEC00000045524F43;
      }

      v45 = v27 <= 1;
      if (v27 <= 1)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }
    }

    if (v45)
    {
      v76 = v43;
    }

    else
    {
      v76 = v41;
    }

    MEMORY[0x1DA6F9910](v46, v76);

    v77 = v121;
    v78 = v122;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v79 = sub_1D5B7E2C0();
    *(v40 + 64) = v79;
    *(v40 + 32) = v77;
    *(v40 + 40) = v78;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v38, v39, v40);

    v80 = sub_1D7262EBC();
    v81 = swift_allocObject();
    *(v81 + 16) = v119;
    v121 = 0;
    v122 = 0xE000000000000000;
    if (v27 > 3)
    {
      if (v27 > 5)
      {
        if (v27 == 6)
        {
          v36 = 0x80000001D73BCEC0;
          v37 = 0xD000000000000014;
        }

        else
        {
          v36 = 0x80000001D73BCEE0;
          v37 = 0xD000000000000013;
        }
      }

      else if (v27 == 4)
      {
        v36 = 0x80000001D73BCE80;
        v37 = 0xD000000000000010;
      }

      else
      {
        v36 = 0x80000001D73BCEA0;
        v37 = 0xD000000000000011;
      }
    }

    else if (v27 > 1)
    {
      if (v27 == 2)
      {
        v36 = 0xEF474E49444E4154;
      }

      else
      {
        v37 = 0x425F5354524F5053;
        v36 = 0xEE0054454B434152;
      }
    }

    else if (v27)
    {
      v36 = 0x80000001D73BCF90;
      v37 = 0xD000000000000015;
    }

    MEMORY[0x1DA6F9910](v37, v36);

    v106 = v121;
    v107 = v122;
    *(v81 + 56) = MEMORY[0x1E69E6158];
    *(v81 + 64) = v79;
    *(v81 + 32) = v106;
    *(v81 + 40) = v107;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v38, v80, v81);

    swift_unknownObjectRelease();
LABEL_41:
    v64 = 0xF000000000000007;
    goto LABEL_42;
  }

  v110 = *(v34 + 32);
  v65 = v110(v117, v13, v35);
  MEMORY[0x1EEE9AC00](v65, v66);
  *(&v109 - 2) = a2;
  v67 = sub_1D5FBE1C8(sub_1D69019B0, (&v109 - 4), v30);
  if (v67 >> 62)
  {
    v108 = v67;
    v68 = sub_1D7263BFC();
    v67 = v108;
  }

  else
  {
    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v68 != *(v30 + 16))
  {

    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v82 = sub_1D725C42C();
    __swift_project_value_buffer(v82, qword_1EDF17598);

    v83 = sub_1D725C3FC();
    v84 = sub_1D7262EBC();

    v85 = os_log_type_enabled(v83, v84);
    v86 = v119;
    if (v85)
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v121 = v88;
      *v87 = 136446210;
      if (v27 > 3)
      {
        v101 = 0x80000001D73BCEC0;
        v102 = 0xD000000000000013;
        if (v27 == 6)
        {
          v102 = 0xD000000000000014;
        }

        else
        {
          v101 = 0x80000001D73BCEE0;
        }

        v103 = 0xD000000000000010;
        v104 = 0x80000001D73BCE80;
        if (v27 != 4)
        {
          v103 = 0xD000000000000011;
          v104 = 0x80000001D73BCEA0;
        }

        if (v27 <= 5)
        {
          v89 = v103;
        }

        else
        {
          v89 = v102;
        }

        if (v27 <= 5)
        {
          v90 = v104;
        }

        else
        {
          v90 = v101;
        }
      }

      else
      {
        v89 = 0x535F5354524F5053;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v90 = 0xEF474E49444E4154;
          }

          else
          {
            v89 = 0x425F5354524F5053;
            v90 = 0xEE0054454B434152;
          }
        }

        else if (v27)
        {
          v90 = 0x80000001D73BCF90;
          v89 = 0xD000000000000015;
        }

        else
        {
          v90 = 0xEC00000045524F43;
        }
      }

      v105 = sub_1D5BC5100(v89, v90, &v121);

      *(v87 + 4) = v105;
      _os_log_impl(&dword_1D5B42000, v83, v84, "Sports data service could not create all data sources for embedType=%{public}s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x1DA6FD500](v88, -1, -1);
      MEMORY[0x1DA6FD500](v87, -1, -1);
      swift_unknownObjectRelease();

      (*(v119 + 8))(v117, v118);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v86 + 8))(v117, v118);
    }

    goto LABEL_41;
  }

  v112 = v67;
  v69 = *(v119 + 16);
  v69(v21, v117, v35);
  v70 = v115;
  if (*(v115 + 16) && (v71 = sub_1D5B69D90(v26, v25), (v72 & 1) != 0))
  {
    v73 = *(*(v70 + 56) + 8 * v71);
  }

  else
  {
    v73 = 0;
  }

  v115 = swift_allocObject();
  type metadata accessor for SportsLineScoreDataVisualization(0);
  v91 = swift_allocObject();
  v92 = v113;
  v93 = v114;
  *(v91 + 4) = v113;
  *(v91 + 5) = v93;
  *(v91 + 6) = v111;
  v94 = v118;
  v69(&v91[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl], v21, v118);
  *&v91[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources] = v112;
  *&v91[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster] = v73;
  v95 = &v91[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config];
  *(v95 + 1) = 0u;
  *(v95 + 2) = 0u;
  *v95 = 0u;
  swift_unknownObjectRetain();

  v121 = sub_1D72583DC();
  v122 = v96;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v92, v93);
  v97 = v122;
  *(v91 + 2) = v121;
  *(v91 + 3) = v97;
  v98 = v116;
  v69(v116, v21, v94);
  swift_unknownObjectRelease();
  v99 = *(v119 + 8);
  v99(v21, v94);
  v99(v117, v94);
  v110(&v91[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl], v98, v94);
  v100 = v115;
  *(v115 + 16) = v91;
  v64 = v100 | 0x8000000000000000;
LABEL_42:
  *v120 = v64;
}

void sub_1D68F2840(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, unint64_t *a6@<X8>)
{
  v123 = a2;
  v126 = a6;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v117 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v122 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v117 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  *&v125 = &v117 - v24;
  v25 = a1[2];
  v26 = a1[3];
  LODWORD(v127) = *(a1 + 56);
  if (!*(a4 + 16) || (v27 = a1[1], v120 = *a1, v121 = v27, v28 = a1[5], v29 = a1[6], v119 = v28, v30 = sub_1D5B69D90(v25, v26), (v31 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v49 = qword_1EDFFC538;
    v50 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1D7270C10;
    v128 = 0;
    v129 = 0xE000000000000000;
    if (v127 > 3)
    {
      v58 = 0x80000001D73BCEC0;
      v59 = 0xD000000000000013;
      if (v127 == 6)
      {
        v59 = 0xD000000000000014;
      }

      else
      {
        v58 = 0x80000001D73BCEE0;
      }

      v60 = 0xD000000000000010;
      v61 = 0x80000001D73BCE80;
      if (v127 != 4)
      {
        v60 = 0xD000000000000011;
        v61 = 0x80000001D73BCEA0;
      }

      if (v127 <= 5)
      {
        v56 = v60;
      }

      else
      {
        v56 = v59;
      }

      if (v127 <= 5)
      {
        v57 = v61;
      }

      else
      {
        v57 = v58;
      }
    }

    else
    {
      v52 = 0x535F5354524F5053;
      v53 = 0xEC00000045524F43;
      v54 = 0xEF474E49444E4154;
      v55 = 0x425F5354524F5053;
      if (v127 == 2)
      {
        v55 = 0x535F5354524F5053;
      }

      else
      {
        v54 = 0xEE0054454B434152;
      }

      if (v127)
      {
        v52 = 0xD000000000000015;
        v53 = 0x80000001D73BCF90;
      }

      if (v127 <= 1)
      {
        v56 = v52;
      }

      else
      {
        v56 = v55;
      }

      if (v127 <= 1)
      {
        v57 = v53;
      }

      else
      {
        v57 = v54;
      }
    }

    MEMORY[0x1DA6F9910](v56, v57);

    v62 = v128;
    v63 = v129;
    v64 = MEMORY[0x1E69E6158];
    *(v51 + 56) = MEMORY[0x1E69E6158];
    v65 = sub_1D5B7E2C0();
    *(v51 + 32) = v62;
    *(v51 + 40) = v63;
    *(v51 + 96) = v64;
    *(v51 + 104) = v65;
    *(v51 + 64) = v65;
    *(v51 + 72) = v25;
    *(v51 + 80) = v26;

    sub_1D725C30C("Sports data service found no event for embedType=%{public}@, eventId=%{public}@", 79, 2, &dword_1D5B42000, v49, v50, v51);

    goto LABEL_70;
  }

  v117 = v29;
  v32 = *(*(a4 + 56) + 8 * v30);
  v33 = *(a5 + 16);
  v118 = v32;
  swift_unknownObjectRetain();
  if (!v33 || (v34 = sub_1D5B69D90(v25, v26), (v35 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v66 = qword_1EDFFC538;
    v67 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1D7270C10;
    v128 = 0;
    v129 = 0xE000000000000000;
    if (v127 > 3)
    {
      v75 = 0x80000001D73BCEC0;
      v76 = 0xD000000000000013;
      if (v127 == 6)
      {
        v76 = 0xD000000000000014;
      }

      else
      {
        v75 = 0x80000001D73BCEE0;
      }

      v77 = 0xD000000000000010;
      v78 = 0x80000001D73BCE80;
      if (v127 != 4)
      {
        v77 = 0xD000000000000011;
        v78 = 0x80000001D73BCEA0;
      }

      if (v127 <= 5)
      {
        v73 = v77;
      }

      else
      {
        v73 = v76;
      }

      if (v127 <= 5)
      {
        v74 = v78;
      }

      else
      {
        v74 = v75;
      }
    }

    else
    {
      v69 = 0x535F5354524F5053;
      v70 = 0xEC00000045524F43;
      v71 = 0xEF474E49444E4154;
      v72 = 0x425F5354524F5053;
      if (v127 == 2)
      {
        v72 = 0x535F5354524F5053;
      }

      else
      {
        v71 = 0xEE0054454B434152;
      }

      if (v127)
      {
        v69 = 0xD000000000000015;
        v70 = 0x80000001D73BCF90;
      }

      if (v127 <= 1)
      {
        v73 = v69;
      }

      else
      {
        v73 = v72;
      }

      if (v127 <= 1)
      {
        v74 = v70;
      }

      else
      {
        v74 = v71;
      }
    }

    MEMORY[0x1DA6F9910](v73, v74);

    v79 = v128;
    v80 = v129;
    v81 = MEMORY[0x1E69E6158];
    *(v68 + 56) = MEMORY[0x1E69E6158];
    v82 = sub_1D5B7E2C0();
    *(v68 + 32) = v79;
    *(v68 + 40) = v80;
    *(v68 + 96) = v81;
    *(v68 + 104) = v82;
    *(v68 + 64) = v82;
    *(v68 + 72) = v25;
    *(v68 + 80) = v26;

    sub_1D725C30C("Sports data service found no event roster for embedType=%{public}@, eventId=%{public}@", 86, 2, &dword_1D5B42000, v66, v67, v68);
    goto LABEL_69;
  }

  v36 = *(*(a5 + 56) + 8 * v34);
  LOBYTE(v128) = v127;

  sub_1D68F7D24(&v128, a3, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_1D6900328(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v37 = 0xEC00000045524F43;
    v38 = 0x535F5354524F5053;
    v39 = qword_1EDFFC538;
    v40 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    v125 = xmmword_1D7273AE0;
    *(v41 + 16) = xmmword_1D7273AE0;
    v128 = 0;
    v129 = 0xE000000000000000;
    v42 = v127;
    if (v127 > 3)
    {
      v43 = 0x80000001D73BCEC0;
      v98 = 0xD000000000000014;
      if (v127 != 6)
      {
        v98 = 0xD000000000000013;
        v43 = 0x80000001D73BCEE0;
      }

      v45 = 0x80000001D73BCE80;
      if (v127 == 4)
      {
        v99 = 0xD000000000000010;
      }

      else
      {
        v99 = 0xD000000000000011;
      }

      if (v127 != 4)
      {
        v45 = 0x80000001D73BCEA0;
      }

      v47 = v127 <= 5;
      if (v127 <= 5)
      {
        v48 = v99;
      }

      else
      {
        v48 = v98;
      }
    }

    else
    {
      v43 = 0xEF474E49444E4154;
      v44 = 0x425F5354524F5053;
      if (v127 == 2)
      {
        v44 = 0x535F5354524F5053;
      }

      else
      {
        v43 = 0xEE0054454B434152;
      }

      v45 = 0x80000001D73BCF90;
      v46 = 0xD000000000000015;
      if (!v127)
      {
        v46 = 0x535F5354524F5053;
        v45 = 0xEC00000045524F43;
      }

      v47 = v127 <= 1;
      if (v127 <= 1)
      {
        v48 = v46;
      }

      else
      {
        v48 = v44;
      }
    }

    if (v47)
    {
      v100 = v45;
    }

    else
    {
      v100 = v43;
    }

    MEMORY[0x1DA6F9910](v48, v100);

    v101 = v128;
    v102 = v129;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    v103 = sub_1D5B7E2C0();
    *(v41 + 64) = v103;
    *(v41 + 32) = v101;
    *(v41 + 40) = v102;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v39, v40, v41);

    v104 = sub_1D7262EBC();
    v105 = swift_allocObject();
    *(v105 + 16) = v125;
    v128 = 0;
    v129 = 0xE000000000000000;
    if (v42 > 3)
    {
      if (v42 > 5)
      {
        if (v42 == 6)
        {
          v37 = 0x80000001D73BCEC0;
          v38 = 0xD000000000000014;
        }

        else
        {
          v37 = 0x80000001D73BCEE0;
          v38 = 0xD000000000000013;
        }
      }

      else if (v42 == 4)
      {
        v37 = 0x80000001D73BCE80;
        v38 = 0xD000000000000010;
      }

      else
      {
        v37 = 0x80000001D73BCEA0;
        v38 = 0xD000000000000011;
      }
    }

    else if (v42 > 1)
    {
      if (v42 == 2)
      {
        v37 = 0xEF474E49444E4154;
      }

      else
      {
        v38 = 0x425F5354524F5053;
        v37 = 0xEE0054454B434152;
      }
    }

    else if (v42)
    {
      v37 = 0x80000001D73BCF90;
      v38 = 0xD000000000000015;
    }

    MEMORY[0x1DA6F9910](v38, v37);

    v113 = v128;
    v114 = v129;
    *(v105 + 56) = MEMORY[0x1E69E6158];
    *(v105 + 64) = v103;
    *(v105 + 32) = v113;
    *(v105 + 40) = v114;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v39, v104, v105);
LABEL_69:

    swift_unknownObjectRelease();
    goto LABEL_70;
  }

  v84 = *(v15 + 32);
  v85 = (v84)(v125, v13, v14);
  MEMORY[0x1EEE9AC00](v85, v86);
  *(&v117 - 2) = v123;
  v87 = sub_1D5FBE1C8(sub_1D69019B0, (&v117 - 4), v117);
  if (v87 >> 62)
  {
    v116 = v87;
    v88 = sub_1D7263BFC();
    v87 = v116;
  }

  else
  {
    v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v88 == *(v117 + 16))
  {
    v127 = v84;
    v123 = v87;
    v124 = swift_allocObject();
    v89 = *(v15 + 16);
    v89(v21, v125, v14);
    type metadata accessor for SportsInjuryReportDataVisualization(0);
    v90 = swift_allocObject();
    v91 = v121;
    *(v90 + 4) = v120;
    *(v90 + 5) = v91;
    *(v90 + 6) = v118;
    v89(&v90[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_embedUrl], v21, v14);
    *&v90[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources] = v123;
    *&v90[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_roster] = v36;
    v92 = &v90[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config];
    *(v92 + 1) = 0u;
    *(v92 + 2) = 0u;
    *v92 = 0u;
    swift_unknownObjectRetain();

    v128 = sub_1D72583DC();
    v129 = v93;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v120, v91);
    v94 = v129;
    *(v90 + 2) = v128;
    *(v90 + 3) = v94;
    v95 = v122;
    v89(v122, v21, v14);
    swift_unknownObjectRelease();
    v96 = *(v15 + 8);
    v96(v21, v14);
    v96(v125, v14);
    v127(&v90[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_configuredEmbedUrl], v95, v14);
    v97 = v124;
    *(v124 + 16) = v90;
    v83 = v97 | 0xA000000000000000;
    goto LABEL_71;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v106 = sub_1D725C42C();
  __swift_project_value_buffer(v106, qword_1EDF17598);

  v107 = sub_1D725C3FC();
  v108 = sub_1D7262EBC();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v128 = v110;
    *v109 = 136446210;
    if (v127 > 3)
    {
      if (v127 > 5)
      {
        if (v127 == 6)
        {
          v112 = 0x80000001D73BCEC0;
          v111 = 0xD000000000000014;
        }

        else
        {
          v112 = 0x80000001D73BCEE0;
          v111 = 0xD000000000000013;
        }
      }

      else if (v127 == 4)
      {
        v111 = 0xD000000000000010;
        v112 = 0x80000001D73BCE80;
      }

      else
      {
        v112 = 0x80000001D73BCEA0;
        v111 = 0xD000000000000011;
      }
    }

    else
    {
      v111 = 0x535F5354524F5053;
      if (v127 > 1)
      {
        if (v127 == 2)
        {
          v112 = 0xEF474E49444E4154;
        }

        else
        {
          v111 = 0x425F5354524F5053;
          v112 = 0xEE0054454B434152;
        }
      }

      else if (v127)
      {
        v112 = 0x80000001D73BCF90;
        v111 = 0xD000000000000015;
      }

      else
      {
        v112 = 0xEC00000045524F43;
      }
    }

    v115 = sub_1D5BC5100(v111, v112, &v128);

    *(v109 + 4) = v115;
    _os_log_impl(&dword_1D5B42000, v107, v108, "Sports data service could not create all data sources for embedType=%{public}s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1DA6FD500](v110, -1, -1);
    MEMORY[0x1DA6FD500](v109, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v15 + 8))(v125, v14);
LABEL_70:
  v83 = 0xF000000000000007;
LABEL_71:
  *v126 = v83;
}

void sub_1D68F37EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v98 - v11;
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v105 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v104 = &v98 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v98 - v22;
  v24 = *(a1 + 16);
  v111[0] = *a1;
  v111[1] = v24;
  v112 = *(a1 + 32);
  LODWORD(a1) = *(a1 + 48);
  v113 = a1;
  LOBYTE(v109) = a1;
  sub_1D68F7D24(&v109, a3, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v107 = a5;
    sub_1D6900328(v12, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
LABEL_89:
      swift_once();
    }

    v26 = 0xEC00000045524F43;
    v27 = 0x535F5354524F5053;
    v28 = qword_1EDFFC538;
    v29 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    v106 = xmmword_1D7273AE0;
    *(v30 + 16) = xmmword_1D7273AE0;
    v109 = 0;
    v110 = 0xE000000000000000;
    if (a1 > 3)
    {
      v31 = 0x80000001D73BCEC0;
      v54 = 0xD000000000000014;
      if (a1 != 6)
      {
        v54 = 0xD000000000000013;
        v31 = 0x80000001D73BCEE0;
      }

      v33 = 0x80000001D73BCE80;
      if (a1 == 4)
      {
        v55 = 0xD000000000000010;
      }

      else
      {
        v55 = 0xD000000000000011;
      }

      if (a1 != 4)
      {
        v33 = 0x80000001D73BCEA0;
      }

      v35 = a1 <= 5;
      if (a1 <= 5)
      {
        v36 = v55;
      }

      else
      {
        v36 = v54;
      }
    }

    else
    {
      v31 = 0xEF474E49444E4154;
      v32 = 0x425F5354524F5053;
      if (a1 == 2)
      {
        v32 = 0x535F5354524F5053;
      }

      else
      {
        v31 = 0xEE0054454B434152;
      }

      v33 = 0x80000001D73BCF90;
      v34 = 0xD000000000000015;
      if (!a1)
      {
        v34 = 0x535F5354524F5053;
        v33 = 0xEC00000045524F43;
      }

      v35 = a1 <= 1;
      if (a1 <= 1)
      {
        v36 = v34;
      }

      else
      {
        v36 = v32;
      }
    }

    if (v35)
    {
      v56 = v33;
    }

    else
    {
      v56 = v31;
    }

    MEMORY[0x1DA6F9910](v36, v56);

    v58 = v109;
    v57 = v110;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v59 = sub_1D5B7E2C0();
    *(v30 + 64) = v59;
    *(v30 + 32) = v58;
    *(v30 + 40) = v57;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v28, v29, v30);

    v60 = sub_1D7262EBC();
    v61 = swift_allocObject();
    *(v61 + 16) = v106;
    v109 = 0;
    v110 = 0xE000000000000000;
    if (a1 > 3)
    {
      if (a1 > 5)
      {
        if (a1 == 6)
        {
          v26 = 0x80000001D73BCEC0;
          v27 = 0xD000000000000014;
        }

        else
        {
          v26 = 0x80000001D73BCEE0;
          v27 = 0xD000000000000013;
        }
      }

      else if (a1 == 4)
      {
        v26 = 0x80000001D73BCE80;
        v27 = 0xD000000000000010;
      }

      else
      {
        v26 = 0x80000001D73BCEA0;
        v27 = 0xD000000000000011;
      }
    }

    else if (a1 > 1)
    {
      if (a1 == 2)
      {
        v26 = 0xEF474E49444E4154;
      }

      else
      {
        v27 = 0x425F5354524F5053;
        v26 = 0xEE0054454B434152;
      }
    }

    else if (a1)
    {
      v26 = 0x80000001D73BCF90;
      v27 = 0xD000000000000015;
    }

    v94 = MEMORY[0x1E69E6158];
    MEMORY[0x1DA6F9910](v27, v26);

    v95 = v109;
    v96 = v110;
    *(v61 + 56) = v94;
    *(v61 + 64) = v59;
    *(v61 + 32) = v95;
    *(v61 + 40) = v96;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v28, v60, v61);

    v88 = 0xF000000000000007;
    goto LABEL_86;
  }

  v37 = *(v14 + 32);
  *&v106 = v23;
  v103 = v14 + 32;
  v102 = v37;
  v38 = (v37)(v23, v12, v13);
  v39 = *(&v112 + 1);
  MEMORY[0x1EEE9AC00](v38, v40);
  *(&v98 - 2) = a2;
  v41 = sub_1D5FBE1C8(sub_1D69019B0, (&v98 - 4), v39);
  if (v41 >> 62)
  {
    v97 = v41;
    v42 = sub_1D7263BFC();
    v41 = v97;
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 == *(v39 + 16))
  {
    v107 = a5;
    v101 = v41;
    v43 = v112;
    v114[0] = v112;
    v44 = MEMORY[0x1E69E7CC0];
    v109 = MEMORY[0x1E69E7CC0];
    a1 = *(v112 + 16);
    sub_1D68FF774(v114, v108, sub_1D5B499C4);
    if (!a1)
    {
LABEL_64:
      v100 = swift_allocObject();
      sub_1D68FF714(v114, sub_1D5B499C4);
      v76 = v111[0];
      v77 = sub_1D68F5E28(v111, a4);
      v78 = *(v14 + 16);
      v79 = v44;
      v80 = v104;
      v78(v104, v106, v13);
      type metadata accessor for SportsStandingDataVisualization(0);
      v81 = swift_allocObject();
      *(v81 + 32) = v79;
      *(v81 + 40) = v76;
      *(v81 + 56) = v77;
      v78((v81 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl), v80, v13);
      *(v81 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources) = v101;
      *(v81 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_metadata) = 1;
      v82 = (v81 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config);
      v82[1] = 0u;
      v82[2] = 0u;
      *v82 = 0u;
      swift_unknownObjectRetain();

      v109 = sub_1D72583DC();
      v110 = v83;
      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v76, *(&v76 + 1));
      v84 = v110;
      *(v81 + 16) = v109;
      *(v81 + 24) = v84;
      v85 = v105;
      v78(v105, v80, v13);
      swift_unknownObjectRelease();
      v86 = *(v14 + 8);
      v86(v80, v13);
      v86(v106, v13);
      v102(v81 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_configuredEmbedUrl, v85, v13);
      v87 = v100;
      *(v100 + 16) = v81;
      v88 = v87 | 0x2000000000000000;
LABEL_86:
      a5 = v107;
      goto LABEL_87;
    }

    v45 = 0;
    v46 = v43 + 40;
    v98 = a1 - 1;
    v99 = v14;
    v100 = v43 + 40;
LABEL_17:
    v47 = (v46 + 16 * v45);
    v48 = v45;
    while (1)
    {
      if (v48 >= *(v43 + 16))
      {
        __break(1u);
        goto LABEL_89;
      }

      if (*(a4 + 16))
      {
        v49 = *(v47 - 1);
        v50 = *v47;

        sub_1D5B69D90(v49, v50);
        if (v51)
        {
          swift_unknownObjectRetain();

          MEMORY[0x1DA6F9CE0](v52);
          if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          v45 = v48 + 1;
          sub_1D726278C();
          v44 = v109;
          v53 = v98 == v48;
          v14 = v99;
          v46 = v100;
          if (v53)
          {
            goto LABEL_64;
          }

          goto LABEL_17;
        }
      }

      ++v48;
      v47 += 2;
      if (a1 == v48)
      {
        v14 = v99;
        goto LABEL_64;
      }
    }
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v62 = sub_1D725C42C();
  __swift_project_value_buffer(v62, qword_1EDF17598);
  sub_1D68FE67C(v111, &v109);
  v63 = sub_1D725C3FC();
  v64 = sub_1D7262EBC();
  sub_1D68FE6D8(v111);
  v65 = os_log_type_enabled(v63, v64);
  v66 = v106;
  if (v65)
  {
    v67 = v14;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v109 = v69;
    *v68 = 136446210;
    if (a1 > 3)
    {
      v89 = 0x80000001D73BCEC0;
      v90 = 0xD000000000000013;
      if (a1 == 6)
      {
        v90 = 0xD000000000000014;
      }

      else
      {
        v89 = 0x80000001D73BCEE0;
      }

      v91 = 0xD000000000000010;
      v92 = 0x80000001D73BCE80;
      if (a1 != 4)
      {
        v91 = 0xD000000000000011;
        v92 = 0x80000001D73BCEA0;
      }

      if (a1 <= 5)
      {
        v74 = v91;
      }

      else
      {
        v74 = v90;
      }

      if (a1 <= 5)
      {
        v75 = v92;
      }

      else
      {
        v75 = v89;
      }
    }

    else
    {
      v70 = 0x535F5354524F5053;
      v71 = 0xEC00000045524F43;
      v72 = 0xEF474E49444E4154;
      v73 = 0x425F5354524F5053;
      if (a1 == 2)
      {
        v73 = 0x535F5354524F5053;
      }

      else
      {
        v72 = 0xEE0054454B434152;
      }

      if (a1)
      {
        v70 = 0xD000000000000015;
        v71 = 0x80000001D73BCF90;
      }

      if (a1 <= 1)
      {
        v74 = v70;
      }

      else
      {
        v74 = v73;
      }

      if (a1 <= 1)
      {
        v75 = v71;
      }

      else
      {
        v75 = v72;
      }
    }

    v93 = sub_1D5BC5100(v74, v75, &v109);

    *(v68 + 4) = v93;
    _os_log_impl(&dword_1D5B42000, v63, v64, "Sports data service could not create all data sources for embedType=%{public}s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x1DA6FD500](v69, -1, -1);
    MEMORY[0x1DA6FD500](v68, -1, -1);

    (*(v67 + 8))(v106, v13);
    v88 = 0xF000000000000007;
  }

  else
  {

    (*(v14 + 8))(v66, v13);
    v88 = 0xF000000000000007;
  }

LABEL_87:
  *a5 = v88;
}

void sub_1D68F4444(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t *a6@<X8>)
{
  v123 = a2;
  v126 = a6;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v117 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v122 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v117 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  *&v125 = &v117 - v24;
  v25 = a1[2];
  v26 = a1[3];
  LODWORD(v127) = *(a1 + 56);
  if (!*(a4 + 16) || (v27 = a1[1], v120 = *a1, v121 = v27, v28 = a1[5], v29 = a1[6], v119 = v28, v30 = sub_1D5B69D90(v25, v26), (v31 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v49 = qword_1EDFFC538;
    v50 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1D7270C10;
    v128 = 0;
    v129 = 0xE000000000000000;
    if (v127 > 3)
    {
      v58 = 0x80000001D73BCEC0;
      v59 = 0xD000000000000013;
      if (v127 == 6)
      {
        v59 = 0xD000000000000014;
      }

      else
      {
        v58 = 0x80000001D73BCEE0;
      }

      v60 = 0xD000000000000010;
      v61 = 0x80000001D73BCE80;
      if (v127 != 4)
      {
        v60 = 0xD000000000000011;
        v61 = 0x80000001D73BCEA0;
      }

      if (v127 <= 5)
      {
        v56 = v60;
      }

      else
      {
        v56 = v59;
      }

      if (v127 <= 5)
      {
        v57 = v61;
      }

      else
      {
        v57 = v58;
      }
    }

    else
    {
      v52 = 0x535F5354524F5053;
      v53 = 0xEC00000045524F43;
      v54 = 0xEF474E49444E4154;
      v55 = 0x425F5354524F5053;
      if (v127 == 2)
      {
        v55 = 0x535F5354524F5053;
      }

      else
      {
        v54 = 0xEE0054454B434152;
      }

      if (v127)
      {
        v52 = 0xD000000000000015;
        v53 = 0x80000001D73BCF90;
      }

      if (v127 <= 1)
      {
        v56 = v52;
      }

      else
      {
        v56 = v55;
      }

      if (v127 <= 1)
      {
        v57 = v53;
      }

      else
      {
        v57 = v54;
      }
    }

    MEMORY[0x1DA6F9910](v56, v57);

    v62 = v128;
    v63 = v129;
    v64 = MEMORY[0x1E69E6158];
    *(v51 + 56) = MEMORY[0x1E69E6158];
    v65 = sub_1D5B7E2C0();
    *(v51 + 32) = v62;
    *(v51 + 40) = v63;
    *(v51 + 96) = v64;
    *(v51 + 104) = v65;
    *(v51 + 64) = v65;
    *(v51 + 72) = v25;
    *(v51 + 80) = v26;

    sub_1D725C30C("Sports data service found no event for embedType=%{public}@, eventId=%{public}@", 79, 2, &dword_1D5B42000, v49, v50, v51);

    goto LABEL_70;
  }

  v117 = v29;
  v32 = *(*(a4 + 56) + 8 * v30);
  v33 = *(a5 + 16);
  v118 = v32;
  swift_unknownObjectRetain();
  if (!v33 || (v34 = sub_1D5B69D90(v25, v26), (v35 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v66 = qword_1EDFFC538;
    v67 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1D7270C10;
    v128 = 0;
    v129 = 0xE000000000000000;
    if (v127 > 3)
    {
      v75 = 0x80000001D73BCEC0;
      v76 = 0xD000000000000013;
      if (v127 == 6)
      {
        v76 = 0xD000000000000014;
      }

      else
      {
        v75 = 0x80000001D73BCEE0;
      }

      v77 = 0xD000000000000010;
      v78 = 0x80000001D73BCE80;
      if (v127 != 4)
      {
        v77 = 0xD000000000000011;
        v78 = 0x80000001D73BCEA0;
      }

      if (v127 <= 5)
      {
        v73 = v77;
      }

      else
      {
        v73 = v76;
      }

      if (v127 <= 5)
      {
        v74 = v78;
      }

      else
      {
        v74 = v75;
      }
    }

    else
    {
      v69 = 0x535F5354524F5053;
      v70 = 0xEC00000045524F43;
      v71 = 0xEF474E49444E4154;
      v72 = 0x425F5354524F5053;
      if (v127 == 2)
      {
        v72 = 0x535F5354524F5053;
      }

      else
      {
        v71 = 0xEE0054454B434152;
      }

      if (v127)
      {
        v69 = 0xD000000000000015;
        v70 = 0x80000001D73BCF90;
      }

      if (v127 <= 1)
      {
        v73 = v69;
      }

      else
      {
        v73 = v72;
      }

      if (v127 <= 1)
      {
        v74 = v70;
      }

      else
      {
        v74 = v71;
      }
    }

    MEMORY[0x1DA6F9910](v73, v74);

    v79 = v128;
    v80 = v129;
    v81 = MEMORY[0x1E69E6158];
    *(v68 + 56) = MEMORY[0x1E69E6158];
    v82 = sub_1D5B7E2C0();
    *(v68 + 32) = v79;
    *(v68 + 40) = v80;
    *(v68 + 96) = v81;
    *(v68 + 104) = v82;
    *(v68 + 64) = v82;
    *(v68 + 72) = v25;
    *(v68 + 80) = v26;

    sub_1D725C30C("Sports data service found no event roster for embedType=%{public}@, eventId=%{public}@", 86, 2, &dword_1D5B42000, v66, v67, v68);
    goto LABEL_69;
  }

  v36 = *(*(a5 + 56) + 8 * v34);
  LOBYTE(v128) = v127;

  sub_1D68F7D24(&v128, a3, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_1D6900328(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v37 = 0xEC00000045524F43;
    v38 = 0x535F5354524F5053;
    v39 = qword_1EDFFC538;
    v40 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    v125 = xmmword_1D7273AE0;
    *(v41 + 16) = xmmword_1D7273AE0;
    v128 = 0;
    v129 = 0xE000000000000000;
    v42 = v127;
    if (v127 > 3)
    {
      v43 = 0x80000001D73BCEC0;
      v98 = 0xD000000000000014;
      if (v127 != 6)
      {
        v98 = 0xD000000000000013;
        v43 = 0x80000001D73BCEE0;
      }

      v45 = 0x80000001D73BCE80;
      if (v127 == 4)
      {
        v99 = 0xD000000000000010;
      }

      else
      {
        v99 = 0xD000000000000011;
      }

      if (v127 != 4)
      {
        v45 = 0x80000001D73BCEA0;
      }

      v47 = v127 <= 5;
      if (v127 <= 5)
      {
        v48 = v99;
      }

      else
      {
        v48 = v98;
      }
    }

    else
    {
      v43 = 0xEF474E49444E4154;
      v44 = 0x425F5354524F5053;
      if (v127 == 2)
      {
        v44 = 0x535F5354524F5053;
      }

      else
      {
        v43 = 0xEE0054454B434152;
      }

      v45 = 0x80000001D73BCF90;
      v46 = 0xD000000000000015;
      if (!v127)
      {
        v46 = 0x535F5354524F5053;
        v45 = 0xEC00000045524F43;
      }

      v47 = v127 <= 1;
      if (v127 <= 1)
      {
        v48 = v46;
      }

      else
      {
        v48 = v44;
      }
    }

    if (v47)
    {
      v100 = v45;
    }

    else
    {
      v100 = v43;
    }

    MEMORY[0x1DA6F9910](v48, v100);

    v101 = v128;
    v102 = v129;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    v103 = sub_1D5B7E2C0();
    *(v41 + 64) = v103;
    *(v41 + 32) = v101;
    *(v41 + 40) = v102;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v39, v40, v41);

    v104 = sub_1D7262EBC();
    v105 = swift_allocObject();
    *(v105 + 16) = v125;
    v128 = 0;
    v129 = 0xE000000000000000;
    if (v42 > 3)
    {
      if (v42 > 5)
      {
        if (v42 == 6)
        {
          v37 = 0x80000001D73BCEC0;
          v38 = 0xD000000000000014;
        }

        else
        {
          v37 = 0x80000001D73BCEE0;
          v38 = 0xD000000000000013;
        }
      }

      else if (v42 == 4)
      {
        v37 = 0x80000001D73BCE80;
        v38 = 0xD000000000000010;
      }

      else
      {
        v37 = 0x80000001D73BCEA0;
        v38 = 0xD000000000000011;
      }
    }

    else if (v42 > 1)
    {
      if (v42 == 2)
      {
        v37 = 0xEF474E49444E4154;
      }

      else
      {
        v38 = 0x425F5354524F5053;
        v37 = 0xEE0054454B434152;
      }
    }

    else if (v42)
    {
      v37 = 0x80000001D73BCF90;
      v38 = 0xD000000000000015;
    }

    MEMORY[0x1DA6F9910](v38, v37);

    v113 = v128;
    v114 = v129;
    *(v105 + 56) = MEMORY[0x1E69E6158];
    *(v105 + 64) = v103;
    *(v105 + 32) = v113;
    *(v105 + 40) = v114;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v39, v104, v105);
LABEL_69:

    swift_unknownObjectRelease();
    goto LABEL_70;
  }

  v84 = *(v15 + 32);
  v85 = (v84)(v125, v13, v14);
  MEMORY[0x1EEE9AC00](v85, v86);
  *(&v117 - 2) = v123;
  v87 = sub_1D5FBE1C8(sub_1D69019B0, (&v117 - 4), v117);
  if (v87 >> 62)
  {
    v116 = v87;
    v88 = sub_1D7263BFC();
    v87 = v116;
  }

  else
  {
    v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v88 == *(v117 + 16))
  {
    v127 = v84;
    v123 = v87;
    v124 = swift_allocObject();
    v89 = *(v15 + 16);
    v89(v21, v125, v14);
    type metadata accessor for SportsKeyPlayerDataVisualization(0);
    v90 = swift_allocObject();
    v91 = v121;
    *(v90 + 4) = v120;
    *(v90 + 5) = v91;
    *(v90 + 6) = v118;
    v89(&v90[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl], v21, v14);
    *&v90[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources] = v123;
    v92 = &v90[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config];
    *v92 = 0u;
    *(v92 + 1) = 0u;
    *(v92 + 2) = 0u;
    *&v90[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster] = v36;
    swift_unknownObjectRetain();

    v128 = sub_1D72583DC();
    v129 = v93;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v120, v91);
    v94 = v129;
    *(v90 + 2) = v128;
    *(v90 + 3) = v94;
    v95 = v122;
    v89(v122, v21, v14);
    swift_unknownObjectRelease();
    v96 = *(v15 + 8);
    v96(v21, v14);
    v96(v125, v14);
    v127(&v90[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl], v95, v14);
    v97 = v124;
    *(v124 + 16) = v90;
    v83 = v97 | 0xC000000000000000;
    goto LABEL_71;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v106 = sub_1D725C42C();
  __swift_project_value_buffer(v106, qword_1EDF17598);

  v107 = sub_1D725C3FC();
  v108 = sub_1D7262EBC();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v128 = v110;
    *v109 = 136446210;
    if (v127 > 3)
    {
      if (v127 > 5)
      {
        if (v127 == 6)
        {
          v112 = 0x80000001D73BCEC0;
          v111 = 0xD000000000000014;
        }

        else
        {
          v112 = 0x80000001D73BCEE0;
          v111 = 0xD000000000000013;
        }
      }

      else if (v127 == 4)
      {
        v111 = 0xD000000000000010;
        v112 = 0x80000001D73BCE80;
      }

      else
      {
        v112 = 0x80000001D73BCEA0;
        v111 = 0xD000000000000011;
      }
    }

    else
    {
      v111 = 0x535F5354524F5053;
      if (v127 > 1)
      {
        if (v127 == 2)
        {
          v112 = 0xEF474E49444E4154;
        }

        else
        {
          v111 = 0x425F5354524F5053;
          v112 = 0xEE0054454B434152;
        }
      }

      else if (v127)
      {
        v112 = 0x80000001D73BCF90;
        v111 = 0xD000000000000015;
      }

      else
      {
        v112 = 0xEC00000045524F43;
      }
    }

    v115 = sub_1D5BC5100(v111, v112, &v128);

    *(v109 + 4) = v115;
    _os_log_impl(&dword_1D5B42000, v107, v108, "Sports data service could not create all data sources for embedType=%{public}s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1DA6FD500](v110, -1, -1);
    MEMORY[0x1DA6FD500](v109, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v15 + 8))(v125, v14);
LABEL_70:
  v83 = 0xF000000000000007;
LABEL_71:
  *v126 = v83;
}

uint64_t sub_1D68F53EC(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    v6 = *(a2 + 16);

    if (v6)
    {
      sub_1D5B69D90(v5, v4);
      if (v7)
      {

        return swift_unknownObjectRetain();
      }
    }

    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v9 = qword_1EDFFC538;
    v10 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7270C10;
    v13 = *a1;
    v12 = a1[1];
    v14 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1D5B7E2C0();
    *(v11 + 32) = v13;
    *(v11 + 40) = v12;
    *(v11 + 96) = v14;
    *(v11 + 104) = v15;
    *(v11 + 64) = v15;
    *(v11 + 72) = v5;
    *(v11 + 80) = v4;

    sub_1D725C30C("Score has event but the event was not fetched, score=%{public}@, event=%{public}@", 81, 2, &dword_1D5B42000, v9, v10, v11);
  }

  else
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDFFC538;
    v17 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    v20 = *a1;
    v19 = a1[1];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D5B7E2C0();
    *(v18 + 32) = v20;
    *(v18 + 40) = v19;

    sub_1D725C30C("Sports data resolving a score without an event, score=%{public}@", 64, 2, &dword_1D5B42000, v16, v17, v18);
  }

  return 0;
}

id sub_1D68F5644(uint64_t *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    v18 = a1[5];
    if (v18)
    {
      v20 = a1[4];
      v21 = qword_1EDF05878;

      if (v21 != -1)
      {
        swift_once();
      }

      v22 = qword_1EDFFC538;
      v35 = sub_1D7262EBC();
      sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D7270C10;
      v24 = MEMORY[0x1E69E6158];
      *(v23 + 56) = MEMORY[0x1E69E6158];
      v25 = sub_1D5B7E2C0();
      *(v23 + 32) = v20;
      *(v23 + 40) = v18;
      v27 = *a1;
      v26 = a1[1];
      *(v23 + 96) = v24;
      *(v23 + 104) = v25;
      *(v23 + 64) = v25;
      *(v23 + 72) = v27;
      *(v23 + 80) = v26;

      sub_1D725C30C("Sports data score requires league tag %{public}@ but there was no event associated, score=%{public}@", 100, 2, &dword_1D5B42000, v22, v35, v23);

      if (*(a2 + 16))
      {
        v28 = sub_1D5B69D90(v20, v18);
        if (v29)
        {
          v30 = v28;

          v17 = *(*(a2 + 56) + 8 * v30);
          swift_unknownObjectRetain();
          return v17;
        }
      }

      v31 = sub_1D7262EBC();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D7270C10;
      v33 = MEMORY[0x1E69E6158];
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = v25;
      *(v32 + 32) = v20;
      *(v32 + 40) = v18;
      *(v32 + 96) = v33;
      *(v32 + 104) = v25;
      *(v32 + 72) = v27;
      *(v32 + 80) = v26;

      sub_1D725C30C("Sports data score requires league tag %{public}@ but there was no event or tag fetched, score=%{public}@", 104, 2, &dword_1D5B42000, v22, v31, v32);
    }

    return 0;
  }

  v5 = qword_1EDF05878;
  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDFFC538;
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7270C10;
  v8 = [a3 identifier];
  v9 = sub_1D726207C();
  v11 = v10;

  v12 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1D5B7E2C0();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v15 = *a1;
  v14 = a1[1];
  *(v7 + 96) = v12;
  *(v7 + 104) = v13;
  *(v7 + 64) = v13;
  *(v7 + 72) = v15;
  *(v7 + 80) = v14;

  v16 = sub_1D7262EDC();
  sub_1D725C30C("Sports data score resolving league tag %{public}@ from event, score=%{public}@", 78, 2, &dword_1D5B42000, v6, v16, v7);

  v17 = [a3 eventLeagueTag];
  swift_unknownObjectRelease();
  return v17;
}

unint64_t sub_1D68F59AC(uint64_t a1, uint64_t a2, id a3, __n128 a4)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v7 = [a3 eventCompetitorTags];
    if (v7)
    {
      v8 = v7;
      sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
      v9 = sub_1D726267C();
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(a1 + 48);
  v46 = v6;
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = 0;
  do
  {
    v13 = (v10 + 40 + 16 * v12);
    v14 = v12;
    while (1)
    {
      if (v14 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (*(a2 + 16))
      {
        break;
      }

LABEL_9:
      ++v14;
      v13 += 2;
      if (v11 == v14)
      {
        goto LABEL_17;
      }
    }

    v15 = *(v13 - 1);
    v16 = *v13;

    sub_1D5B69D90(v15, v16);
    if ((v17 & 1) == 0)
    {

      goto LABEL_9;
    }

    swift_unknownObjectRetain();

    MEMORY[0x1DA6F9CE0](v18);
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    v12 = v14 + 1;
    sub_1D726278C();
    v6 = v46;
  }

  while (v11 - 1 != v14);
LABEL_17:
  if (v9 >> 62)
  {
LABEL_24:
    v19 = sub_1D7263BFC();
    if (v6 >> 62)
    {
      goto LABEL_25;
    }

LABEL_19:
    if (v19 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

LABEL_26:

    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDFFC538;
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7270C10;
    v35 = sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
    v36 = MEMORY[0x1DA6F9D20](v9, v35);
    v38 = v37;
    v39 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v40 = sub_1D5B7E2C0();
    *(v34 + 64) = v40;
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    v41 = MEMORY[0x1DA6F9D20](v10, v39);
    *(v34 + 96) = v39;
    *(v34 + 104) = v40;
    *(v34 + 72) = v41;
    *(v34 + 80) = v42;
    v43 = sub_1D7262EDC();
    sub_1D725C30C("Sports data resolving score from event with %{public}@ from requirements %{public}@", 83, 2, &dword_1D5B42000, v33, v43, v34);
  }

  else
  {
    v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v6 >> 62))
    {
      goto LABEL_19;
    }

LABEL_25:
    if (v19 >= sub_1D7263BFC())
    {
      goto LABEL_26;
    }

LABEL_20:
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v45 = qword_1EDFFC538;
    v20 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D7279970;
    v22 = sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
    v23 = MEMORY[0x1DA6F9D20](v6, v22);
    v25 = v24;
    v26 = MEMORY[0x1E69E6158];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v27 = sub_1D5B7E2C0();
    *(v21 + 64) = v27;
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    v28 = MEMORY[0x1DA6F9D20](v10, v26);
    *(v21 + 96) = v26;
    *(v21 + 104) = v27;
    *(v21 + 72) = v28;
    *(v21 + 80) = v29;
    v30 = MEMORY[0x1DA6F9D20](v9, v22);
    v32 = v31;

    *(v21 + 136) = v26;
    *(v21 + 144) = v27;
    *(v21 + 112) = v30;
    *(v21 + 120) = v32;
    sub_1D725C30C("Sports data resolving score from legacy fetch with %{public}@ from requirements %{public}@, event contained %{public}@", 118, 2, &dword_1D5B42000, v45, v20, v21);
    v9 = v6;
  }

  return v9;
}

uint64_t sub_1D68F5E28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3 && *(a2 + 16) && (sub_1D5B69D90(*(a1 + 16), v3), (v4 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D68F5E78(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v106 = a6;
  v105 = a4;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v98 - v15;
  v17 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v17, v18);
  v103 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v98 - v22;
  *&v111[9] = *(a1 + 57);
  v24 = a1[3];
  v110[2] = a1[2];
  *v111 = v24;
  v26 = *a1;
  v25 = a1[1];
  v28 = v27;
  v110[0] = v26;
  v110[1] = v25;
  LODWORD(v29) = v111[24];
  LOBYTE(v108) = v111[24];
  sub_1D68F7D24(&v108, a3, v16);
  if ((*(v28 + 48))(v16, 1, v17) == 1)
  {
    sub_1D6900328(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
LABEL_79:
      swift_once();
    }

    v30 = 0xEC00000045524F43;
    v31 = 0x535F5354524F5053;
    v32 = qword_1EDFFC538;
    v33 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    v106 = xmmword_1D7273AE0;
    *(v34 + 16) = xmmword_1D7273AE0;
    v108 = 0;
    v109 = 0xE000000000000000;
    if (v29 > 3)
    {
      v35 = 0x80000001D73BCEC0;
      v64 = 0xD000000000000014;
      if (v29 != 6)
      {
        v64 = 0xD000000000000013;
        v35 = 0x80000001D73BCEE0;
      }

      v37 = 0x80000001D73BCE80;
      if (v29 == 4)
      {
        v65 = 0xD000000000000010;
      }

      else
      {
        v65 = 0xD000000000000011;
      }

      if (v29 != 4)
      {
        v37 = 0x80000001D73BCEA0;
      }

      v39 = v29 <= 5;
      if (v29 <= 5)
      {
        v40 = v65;
      }

      else
      {
        v40 = v64;
      }
    }

    else
    {
      v35 = 0xEF474E49444E4154;
      v36 = 0x425F5354524F5053;
      if (v29 == 2)
      {
        v36 = 0x535F5354524F5053;
      }

      else
      {
        v35 = 0xEE0054454B434152;
      }

      v37 = 0x80000001D73BCF90;
      v38 = 0xD000000000000015;
      if (!v29)
      {
        v38 = 0x535F5354524F5053;
        v37 = 0xEC00000045524F43;
      }

      v39 = v29 <= 1;
      if (v29 <= 1)
      {
        v40 = v38;
      }

      else
      {
        v40 = v36;
      }
    }

    if (v39)
    {
      v66 = v37;
    }

    else
    {
      v66 = v35;
    }

    MEMORY[0x1DA6F9910](v40, v66);

    v67 = v108;
    v68 = v109;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v69 = sub_1D5B7E2C0();
    *(v34 + 64) = v69;
    *(v34 + 32) = v67;
    *(v34 + 40) = v68;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v32, v33, v34);

    v70 = sub_1D7262EBC();
    v71 = swift_allocObject();
    *(v71 + 16) = v106;
    v108 = 0;
    v109 = 0xE000000000000000;
    if (v29 > 3)
    {
      if (v29 > 5)
      {
        if (v29 == 6)
        {
          v30 = 0x80000001D73BCEC0;
          v31 = 0xD000000000000014;
        }

        else
        {
          v30 = 0x80000001D73BCEE0;
          v31 = 0xD000000000000013;
        }
      }

      else if (v29 == 4)
      {
        v30 = 0x80000001D73BCE80;
        v31 = 0xD000000000000010;
      }

      else
      {
        v30 = 0x80000001D73BCEA0;
        v31 = 0xD000000000000011;
      }
    }

    else if (v29 > 1)
    {
      if (v29 == 2)
      {
        v30 = 0xEF474E49444E4154;
      }

      else
      {
        v31 = 0x425F5354524F5053;
        v30 = 0xEE0054454B434152;
      }
    }

    else if (v29)
    {
      v30 = 0x80000001D73BCF90;
      v31 = 0xD000000000000015;
    }

    v92 = MEMORY[0x1E69E6158];
    MEMORY[0x1DA6F9910](v31, v30);

    v93 = v108;
    v94 = v109;
    *(v71 + 56) = v92;
    *(v71 + 64) = v69;
    *(v71 + 32) = v93;
    *(v71 + 40) = v94;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v32, v70, v71);

    return 0;
  }

  v101 = v28;
  v41 = *(v28 + 32);
  v102 = v23;
  v104 = v17;
  v100 = v28 + 32;
  v99 = v41;
  v42 = (v41)(v23, v16, v17);
  v43 = *&v111[16];
  v112 = *&v111[16];
  MEMORY[0x1EEE9AC00](v42, v44);
  *(&v98 - 8) = v7;
  *(&v98 - 7) = a3;
  *(&v98 - 6) = v110;
  *(&v98 - 5) = a7;
  *(&v98 - 4) = a5;
  *(&v98 - 3) = a2;
  v45 = v105;
  *(&v98 - 2) = v106;
  *(&v98 - 1) = v45;
  sub_1D68FF774(&v112, &v108, sub_1D68FDD04);
  v46 = sub_1D5FBE34C(sub_1D68FDCD0, (&v98 - 10), v43);
  v47 = sub_1D68FF714(&v112, sub_1D68FDD04);
  v48 = *&v111[8];
  MEMORY[0x1EEE9AC00](v47, v49);
  *(&v98 - 2) = a2;
  v50 = sub_1D5FBE1C8(sub_1D69019B0, (&v98 - 4), v48);
  if (v50 >> 62)
  {
    v97 = v50;
    v51 = sub_1D7263BFC();
    v50 = v97;
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v104;
  if (v51 == *(v48 + 16))
  {
    v105 = v46;
    *&v106 = v50;
    v53 = *v111;
    v113 = *v111;
    v29 = MEMORY[0x1E69E7CC0];
    v108 = MEMORY[0x1E69E7CC0];
    v54 = *(*v111 + 16);
    sub_1D68FF774(&v113, v107, sub_1D5B499C4);
    if (!v54)
    {
      goto LABEL_55;
    }

    v55 = 0;
    v56 = v53 + 40;
    v98 = v54 - 1;
    while (1)
    {
      v57 = v56;
      v58 = (v56 + 16 * v55);
      v59 = v55;
      while (1)
      {
        if (v59 >= *(v53 + 16))
        {
          __break(1u);
          goto LABEL_79;
        }

        if (*(a5 + 16))
        {
          break;
        }

LABEL_19:
        ++v59;
        v58 += 2;
        if (v54 == v59)
        {
          goto LABEL_55;
        }
      }

      v60 = *(v58 - 1);
      v61 = *v58;

      sub_1D5B69D90(v60, v61);
      if ((v62 & 1) == 0)
      {
        break;
      }

      swift_unknownObjectRetain();

      MEMORY[0x1DA6F9CE0](v63);
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      v55 = v59 + 1;
      sub_1D726278C();
      v29 = v108;
      v56 = v57;
      if (v98 == v59)
      {
LABEL_55:
        v98 = v29;
        sub_1D68FF714(&v113, sub_1D5B499C4);
        v80 = v110[0];
        v81 = sub_1D68F5E28(v110, a5);
        v82 = sub_1D68F7CD4(v110, a5);
        v83 = v101;
        v84 = *(v101 + 16);
        v85 = v103;
        v86 = v104;
        v84(v103, v102, v104);
        type metadata accessor for SportsBracketDataVisualization(0);
        v87 = swift_allocObject();
        *(v87 + 32) = v98;
        *(v87 + 40) = v80;
        *(v87 + 56) = v81;
        *(v87 + 64) = v82;
        v84((v87 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl), v85, v86);
        *(v87 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources) = v106;
        *(v87 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events) = v105;
        *(v87 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_metadata) = 1;
        v88 = (v87 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
        *v88 = 0u;
        v88[1] = 0u;
        v88[2] = 0u;

        v108 = sub_1D72583DC();
        v109 = v89;
        MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
        MEMORY[0x1DA6F9910](v80, *(&v80 + 1));
        v90 = v109;
        *(v87 + 16) = v108;
        *(v87 + 24) = v90;
        v99(v87 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_configuredEmbedUrl, v85, v86);
        (*(v83 + 8))(v102, v86);
        return v87;
      }
    }

    goto LABEL_19;
  }

  v72 = v101;
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v73 = sub_1D725C42C();
  __swift_project_value_buffer(v73, qword_1EDF17598);
  sub_1D5FC4D88(v110, &v108);
  v74 = sub_1D725C3FC();
  v75 = sub_1D7262EBC();
  sub_1D5FC4DE4(v110);
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v108 = v77;
    *v76 = 136446210;
    if (v29 > 3)
    {
      if (v29 > 5)
      {
        if (v29 == 6)
        {
          v79 = 0x80000001D73BCEC0;
          v78 = 0xD000000000000014;
        }

        else
        {
          v79 = 0x80000001D73BCEE0;
          v78 = 0xD000000000000013;
        }
      }

      else if (v29 == 4)
      {
        v78 = 0xD000000000000010;
        v79 = 0x80000001D73BCE80;
      }

      else
      {
        v79 = 0x80000001D73BCEA0;
        v78 = 0xD000000000000011;
      }
    }

    else
    {
      v78 = 0x535F5354524F5053;
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v79 = 0xEF474E49444E4154;
        }

        else
        {
          v78 = 0x425F5354524F5053;
          v79 = 0xEE0054454B434152;
        }
      }

      else if (v29)
      {
        v79 = 0x80000001D73BCF90;
        v78 = 0xD000000000000015;
      }

      else
      {
        v79 = 0xEC00000045524F43;
      }
    }

    v95 = v102;
    v96 = sub_1D5BC5100(v78, v79, &v108);

    *(v76 + 4) = v96;
    _os_log_impl(&dword_1D5B42000, v74, v75, "Sports data service could not create all data sources for embedType=%{public}s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    MEMORY[0x1DA6FD500](v77, -1, -1);
    MEMORY[0x1DA6FD500](v76, -1, -1);

    (*(v101 + 8))(v95, v52);
  }

  else
  {

    (*(v72 + 8))(v102, v52);
  }

  return 0;
}

void sub_1D68F6BCC(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, void *a7@<X7>, char **a8@<X8>, uint64_t a9)
{
  v117 = a7;
  v123 = a4;
  v124 = a6;
  v125 = a3;
  v127 = a8;
  v12 = type metadata accessor for SportsDataVisualizationResponseScoreItem(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v122 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsDataVisualizationResponseMetadata(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v116 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for SportsEventStatusResponseEmbed(0);
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v18);
  v114 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v118 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v112 = &v110 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v126 = &v110 - v28;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v110 - v31;
  v33 = sub_1D72585BC();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v119 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v110 - v39;
  v121 = v12;
  v41 = *(a1 + *(v12 + 40));
  LOBYTE(v130) = v41;
  sub_1D68F7D24(&v130, a2, v32);
  *&v128 = v34;
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_1D6900328(v32, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v42 = 0xEC00000045524F43;
    v43 = 0x535F5354524F5053;
    v44 = qword_1EDFFC538;
    v45 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    v128 = xmmword_1D7273AE0;
    *(v46 + 16) = xmmword_1D7273AE0;
    v130 = 0;
    v131 = 0xE000000000000000;
    if (v41 > 3)
    {
      if (v41 > 5)
      {
        if (v41 == 6)
        {
          v48 = 0x80000001D73BCEC0;
          v47 = 0xD000000000000014;
        }

        else
        {
          v48 = 0x80000001D73BCEE0;
          v47 = 0xD000000000000013;
        }
      }

      else if (v41 == 4)
      {
        v48 = 0x80000001D73BCE80;
        v47 = 0xD000000000000010;
      }

      else
      {
        v48 = 0x80000001D73BCEA0;
        v47 = 0xD000000000000011;
      }
    }

    else if (v41 > 1)
    {
      if (v41 == 2)
      {
        v48 = 0xEF474E49444E4154;
        v47 = 0x535F5354524F5053;
      }

      else
      {
        v47 = 0x425F5354524F5053;
        v48 = 0xEE0054454B434152;
      }
    }

    else
    {
      v47 = 0x535F5354524F5053;
      v48 = 0xEC00000045524F43;
      if (v41)
      {
        v48 = 0x80000001D73BCF90;
        v47 = 0xD000000000000015;
      }
    }

    MEMORY[0x1DA6F9910](v47, v48);

    v84 = v130;
    v83 = v131;
    *(v46 + 56) = MEMORY[0x1E69E6158];
    v85 = sub_1D5B7E2C0();
    *(v46 + 64) = v85;
    *(v46 + 32) = v84;
    *(v46 + 40) = v83;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v44, v45, v46);

    v86 = sub_1D7262EBC();
    v87 = swift_allocObject();
    *(v87 + 16) = v128;
    v130 = 0;
    v131 = 0xE000000000000000;
    v88 = *(v125 + 72);
    if (v88 > 3)
    {
      if (*(v125 + 72) > 5u)
      {
        if (v88 == 6)
        {
          v42 = 0x80000001D73BCEC0;
          v43 = 0xD000000000000014;
        }

        else
        {
          v42 = 0x80000001D73BCEE0;
          v43 = 0xD000000000000013;
        }
      }

      else if (v88 == 4)
      {
        v42 = 0x80000001D73BCE80;
        v43 = 0xD000000000000010;
      }

      else
      {
        v42 = 0x80000001D73BCEA0;
        v43 = 0xD000000000000011;
      }
    }

    else if (*(v125 + 72) > 1u)
    {
      if (v88 == 2)
      {
        v42 = 0xEF474E49444E4154;
      }

      else
      {
        v43 = 0x425F5354524F5053;
        v42 = 0xEE0054454B434152;
      }
    }

    else if (*(v125 + 72))
    {
      v42 = 0x80000001D73BCF90;
      v43 = 0xD000000000000015;
    }

    MEMORY[0x1DA6F9910](v43, v42);

    v89 = v130;
    v90 = v131;
    *(v87 + 56) = MEMORY[0x1E69E6158];
    *(v87 + 64) = v85;
    *(v87 + 32) = v89;
    *(v87 + 40) = v90;
    sub_1D725C30C("Sports data service no embed mapping found for embedType=%{public}@", 67, 2, &dword_1D5B42000, v44, v86, v87);

    goto LABEL_57;
  }

  v49 = *(v128 + 32);
  v125 = v33;
  v50.n128_f64[0] = v49(v40, v32, v33);
  v51 = sub_1D68F53EC(a1, v123, v50);
  v52 = sub_1D68F5644(a1, a5, v51);
  v54 = sub_1D68F59AC(a1, a5, v51, v53);
  v55 = a1[7];
  MEMORY[0x1EEE9AC00](v54, v56);
  *(&v110 - 2) = v124;
  v57 = v129;
  v58 = sub_1D5FBE1C8(sub_1D69019B0, (&v110 - 4), v55);
  v59 = v58;
  if (v58 >> 62)
  {
    v109 = v58;
    v60 = sub_1D7263BFC();
    v59 = v109;
  }

  else
  {
    v60 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = *(v55 + 16);
  v120 = v40;
  if (v60 == v61)
  {
    v110 = v59;
    v122 = v54;
    v62 = a1[1];
    v124 = *a1;
    v63 = sub_1D5BE240C(v124, v62, v117);
    v64 = MEMORY[0x1E69E7CD0];
    v129 = v57;
    v123 = v51;
    v111 = v52;
    if (v63)
    {
      sub_1D7264A0C();
      sub_1D72621EC();
      v65 = sub_1D7264A5C();
      v66 = -1 << *(v64 + 32);
      v67 = v65 & ~v66;
      v68 = v64;
      if ((*(v64 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v67))
      {
        v69 = ~v66;
        v70 = *(v68 + 48);
        while (*(v70 + v67) == 1 && (sub_1D72646CC() & 1) == 0)
        {
          v67 = (v67 + 1) & v69;
          if (((*(v68 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v67) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v117 = v68;
        if (!*(a9 + 16))
        {
          goto LABEL_61;
        }
      }

      else
      {
LABEL_17:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v130 = v68;
        sub_1D5FF7EF4(0, v67, isUniquelyReferenced_nonNull_native);
        v117 = v130;
        if (!*(a9 + 16))
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v117 = MEMORY[0x1E69E7CD0];
      if (!*(a9 + 16))
      {
        goto LABEL_61;
      }
    }

    v91 = sub_1D5B69D90(v124, v62);
    if (v92)
    {
      v93 = v62;
      v94 = v114;
      sub_1D68FF774(*(a9 + 56) + *(v113 + 72) * v91, v114, type metadata accessor for SportsEventStatusResponseEmbed);
      v95 = v112;
      sub_1D68FF774(v94 + *(v115 + 20), v112, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      sub_1D68FF714(v94, type metadata accessor for SportsEventStatusResponseEmbed);
LABEL_62:
      v96 = v126;
      sub_1D68FFE38(v95, v126, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      v97 = *(v128 + 16);
      v98 = v119;
      v99 = v125;
      v97(v119, v120, v125);
      v100 = v118;
      sub_1D68FF774(v96, v118, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      sub_1D6F14BD8(v100, &v132);
      v121 = v132;
      type metadata accessor for SportsScoreDataVisualization(0);
      v82 = swift_allocObject();
      v101 = v111;
      v102 = v124;
      *(v82 + 4) = v122;
      *(v82 + 5) = v102;
      *(v82 + 6) = v93;
      *(v82 + 7) = v123;
      *(v82 + 8) = v101;
      v97(&v82[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl], v98, v99);
      *&v82[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources] = v110;
      *&v82[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus] = v121;
      *&v82[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata] = 0;
      *&v82[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits] = v117;
      *&v82[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData] = 0;
      v103 = &v82[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config];
      *v103 = 0u;
      *(v103 + 1) = 0u;
      *(v103 + 2) = 0u;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v130 = sub_1D72583DC();
      v131 = v104;
      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v102, v93);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v105 = v130;
      v106 = v131;
      v107 = *(v128 + 8);
      v107(v98, v99);
      sub_1D68FF714(v126, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      v107(v120, v99);
      *(v82 + 2) = v105;
      *(v82 + 3) = v106;
      goto LABEL_63;
    }

LABEL_61:
    v93 = v62;
    v95 = v116;
    sub_1D68FF774(a1 + *(v121 + 36), v116, type metadata accessor for SportsDataVisualizationResponseMetadata);
    goto LABEL_62;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v72 = sub_1D725C42C();
  __swift_project_value_buffer(v72, qword_1EDF17598);
  v73 = a1;
  v74 = v122;
  sub_1D68FF774(v73, v122, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  v75 = sub_1D725C3FC();
  v76 = sub_1D7262EBC();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 136446210;
    v79 = *(v74 + *(v121 + 40));
    v129 = v57;
    v130 = v78;
    if (v79 > 3)
    {
      if (v79 > 5)
      {
        if (v79 == 6)
        {
          v81 = 0x80000001D73BCEC0;
          v80 = 0xD000000000000014;
        }

        else
        {
          v81 = 0x80000001D73BCEE0;
          v80 = 0xD000000000000013;
        }
      }

      else if (v79 == 4)
      {
        v80 = 0xD000000000000010;
        v81 = 0x80000001D73BCE80;
      }

      else
      {
        v81 = 0x80000001D73BCEA0;
        v80 = 0xD000000000000011;
      }
    }

    else
    {
      v80 = 0x535F5354524F5053;
      if (v79 > 1)
      {
        if (v79 == 2)
        {
          v81 = 0xEF474E49444E4154;
        }

        else
        {
          v80 = 0x425F5354524F5053;
          v81 = 0xEE0054454B434152;
        }
      }

      else if (v79)
      {
        v81 = 0x80000001D73BCF90;
        v80 = 0xD000000000000015;
      }

      else
      {
        v81 = 0xEC00000045524F43;
      }
    }

    sub_1D68FF714(v122, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v108 = sub_1D5BC5100(v80, v81, &v130);

    *(v77 + 4) = v108;
    _os_log_impl(&dword_1D5B42000, v75, v76, "Sports data service could not create all data sources for embedType=%{public}s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x1DA6FD500](v78, -1, -1);
    MEMORY[0x1DA6FD500](v77, -1, -1);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v128 + 8))(v120, v125);
LABEL_57:
    v82 = 0;
    goto LABEL_63;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D68FF714(v74, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  (*(v128 + 8))(v120, v125);
  v82 = 0;
LABEL_63:
  *v127 = v82;
}