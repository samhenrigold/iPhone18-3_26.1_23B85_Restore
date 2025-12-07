uint64_t sub_1C6CBB5D0(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CB528C(0, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - v11;
  sub_1C6CBBAB4(0, &qword_1EC1D6BC8, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - v16;
  if (*a1 != *a2 && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_9;
  }

  v26 = v8;
  v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v18 = *(v27 + 24);
  v19 = *(v14 + 48);
  sub_1C6CBB9C4(a1 + v18, v17, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6CBB9C4(a2 + v18, &v17[v19], &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6CBBA44(v17, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6CB95FC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v22 = sub_1C6D79560();
      return v22 & 1;
    }

    goto LABEL_8;
  }

  sub_1C6CBB9C4(v17, v12, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6CBAF7C(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
LABEL_8:
    sub_1C6CBAF20(v17, &qword_1EC1D6BC8, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, v21);
    goto LABEL_9;
  }

  v23 = v26;
  sub_1C6CBAFDC(&v17[v19], v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  v24 = sub_1C6CBB114(v12, v23);
  sub_1C6CBAF7C(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6CBAF7C(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6CBBA44(v17, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_9:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6CBB9C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6CB528C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6CBBA44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6CB528C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6CBBAB4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6CB528C(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C6CBBB54(uint64_t a1)
{
  sub_1C6CB528C(319, &qword_1EC1D9168, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      sub_1C6CB528C(319, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6CBBC78(uint64_t a1)
{
  sub_1C6CBBD54(319);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      sub_1C6CB528C(319, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6CBBD54(uint64_t a1)
{
  if (!qword_1EC1D9180)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(255);
    v1 = sub_1C6D794F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D9180);
    }
  }
}

void sub_1C6CBBDE4(uint64_t a1)
{
  sub_1C6CB528C(319, &qword_1EC1D9198, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6CBBECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C6D78A40();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 PersonalizedPaywallContext.init(location:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t PersonalizedPaywallDataServiceResult.clause.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization26PersonalizedPaywallContextV8LocationO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C6CBBFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v64 = a6;
  v65 = a7;
  *&v60 = a4;
  v59 = a3;
  v62 = a2;
  v67 = a8;
  v66 = sub_1C6D783E0();
  v11 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v12);
  v61 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6D78810();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6CBC624(*a1, *(a1 + 8), *(a1 + 16));
  v58 = a5;
  if (a5)
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v19 = (v8 + *(*v8 + 112));
    v20 = v19[3];
    v21 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v21 + 8))(v69, 0, v20, v21);
    __swift_project_boxed_opaque_existential_1(v69, v69[3]);
    v22 = sub_1C6D76070();
    v23 = *(v22 + 16);
    if (v23)
    {
      v57 = v17;
      v24 = sub_1C6B6732C(v23, 0);
      v25 = sub_1C6B67FC8(&v68, v24 + 4, v23, v22);
      v26 = v68;

      sub_1C6B688C4(v26);
      if (v25 != v23)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v17 = v57;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v68 = v24;
    sub_1C6CBEAC0(&v68);

    v18 = v68;
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  if (qword_1EDCE1AD0 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDCE1AD8;
  v28 = MEMORY[0x1E69E6F90];
  sub_1C6CBF4F8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C6D807C0;
  v30 = MEMORY[0x1E69E6158];
  v31 = MEMORY[0x1CCA55C60](v17, MEMORY[0x1E69E6158]);
  v33 = v32;
  *(v29 + 56) = v30;
  v34 = sub_1C6B2064C();
  *(v29 + 64) = v34;
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  v35 = MEMORY[0x1E69E63A8];
  *(v29 + 96) = MEMORY[0x1E69E6370];
  *(v29 + 104) = v35;
  *(v29 + 72) = v58 & 1;
  v36 = MEMORY[0x1CCA55C60](v18, v30);
  *(v29 + 136) = v30;
  *(v29 + 144) = v34;
  *(v29 + 112) = v36;
  *(v29 + 120) = v37;
  v38 = sub_1C6D79AC0();
  sub_1C6D78D30("Build context for personalized paywall request with headline tags=%{public}@, omit hard follows=%d subscribed tags=%{public}@", 125, 2, &dword_1C6B09000, v27, v38, v29);

  v69[0] = v17;
  sub_1C6B38560(v18);
  v39 = v69[0];

  v40 = v61;
  sub_1C6D783C0();
  sub_1C6B9656C(v39);
  v42 = v41;

  sub_1C6CBF4F8(0, &qword_1EDCE7D20, sub_1C6B9F304, v28);
  sub_1C6B9F304(0);
  v44 = v43 - 8;
  v45 = (*(*(v43 - 8) + 80) + 32) & ~*(*(v43 - 8) + 80);
  v46 = swift_allocObject();
  v60 = xmmword_1C6D7E630;
  *(v46 + 16) = xmmword_1C6D7E630;
  v47 = v46 + v45;
  v48 = *(v44 + 56);
  v49 = v66;
  (*(v11 + 16))(v47, v40, v66);
  *(v47 + v48) = v42;
  v50 = *MEMORY[0x1E6996130];
  v51 = sub_1C6D78760();
  (*(*(v51 - 8) + 104))(v47 + v48, v50, v51);
  sub_1C6D787D0();
  v52 = *(v11 + 8);
  v52(v40, v49);
  sub_1C6D75F60();
  sub_1C6CBF4F8(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], v28);
  v53 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v60;

  sub_1C6D783C0();
  sub_1C6B68E34(v54);
  swift_setDeallocating();
  v52((v54 + v53), v49);
  swift_deallocClassInstance();
  return sub_1C6D78790();
}

void *sub_1C6CBC624(void *a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1C6CBE8FC(a1, a2, 0);
    v6 = [a1 publisherID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1C6D795A0();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v11 = [a1 topicIDs];
    if (v11)
    {
      v12 = MEMORY[0x1E69E6158];
      v13 = v11;
      v5 = sub_1C6D79780();

      if (v10)
      {
        if (v5)
        {
          sub_1C6B18D08(0, &qword_1EDCEA8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1C6D7E630;
          *(v14 + 32) = v8;
          *(v14 + 40) = v10;
          if (v5[2] >= 3uLL)
          {
            sub_1C6B6E3BC(v5, (v5 + 4), 0, 5uLL);
            v16 = v15;

            v5 = v16;
          }

          sub_1C6B38560(v5);
          sub_1C6CBE86C(a1, a2, 0);
          return v14;
        }

        goto LABEL_14;
      }

      if (v5)
      {
        if (qword_1EDCE1AD0 != -1)
        {
          swift_once();
        }

        v25 = qword_1EDCE1AD8;
        v26 = sub_1C6D79AA0();
        sub_1C6CBF4F8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1C6D7E630;
        v28 = [a1 identifier];
        v29 = sub_1C6D795A0();
        v31 = v30;

        *(v27 + 56) = v12;
        *(v27 + 64) = sub_1C6B2064C();
        *(v27 + 32) = v29;
        *(v27 + 40) = v31;
        sub_1C6D78D30("Found no publisher when building context for headline %{public}@", 64, 2, &dword_1C6B09000, v25, v26, v27);

        if (v5[2] > 2uLL)
        {
          sub_1C6B6E3BC(v5, (v5 + 4), 0, 5uLL);
          v33 = v32;
          sub_1C6CBE86C(a1, a2, 0);

          return v33;
        }

        goto LABEL_17;
      }
    }

    else if (v10)
    {
LABEL_14:
      if (qword_1EDCE1AD0 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDCE1AD8;
      v18 = sub_1C6D79AA0();
      sub_1C6CBF4F8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C6D7E630;
      v20 = [a1 identifier];
      v21 = sub_1C6D795A0();
      v23 = v22;

      v24 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1C6B2064C();
      *(v19 + 32) = v21;
      *(v19 + 40) = v23;
      sub_1C6D78D30("Found no topicIDs when building context for headline %{public}@", 63, 2, &dword_1C6B09000, v17, v18, v19);

      sub_1C6B18D08(0, &qword_1EDCEA8B0, v24, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 1) = xmmword_1C6D7E630;
      v5[4] = v8;
      v5[5] = v10;
LABEL_17:
      sub_1C6CBE86C(a1, a2, 0);
      return v5;
    }

    if (qword_1EDCE1AD0 != -1)
    {
      swift_once();
    }

    v35 = qword_1EDCE1AD8;
    v36 = sub_1C6D79AA0();
    sub_1C6CBF4F8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C6D7E630;
    v38 = [a1 identifier];
    v39 = sub_1C6D795A0();
    v41 = v40;

    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1C6B2064C();
    *(v37 + 32) = v39;
    *(v37 + 40) = v41;
    sub_1C6D78D30("Found no publisher or topicIDs when building context for headline %{public}@", 76, 2, &dword_1C6B09000, v35, v36, v37);

    sub_1C6CBE86C(a1, a2, 0);
    return MEMORY[0x1E69E7CC0];
  }

  if (a3 != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C6B18D08(0, &qword_1EDCEA8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 1) = xmmword_1C6D7E630;
  v5[4] = a1;
  v5[5] = a2;
  sub_1C6CBE8FC(a1, a2, 1);
  return v5;
}

uint64_t sub_1C6CBCBE4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 104)));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 112)));
  return v0;
}

uint64_t sub_1C6CBCC8C()
{
  sub_1C6CBCBE4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CBCCE4(uint64_t *a1)
{
  v2 = v1;
  v34 = *v2;
  v4 = sub_1C6D75F80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = *(a1 + 16);
  v37 = &v32 - v11;
  sub_1C6D75F70();
  sub_1C6B761BC();
  v33 = MEMORY[0x1CCA56010](25);
  v16 = v5;
  v17 = v12;
  v18 = v4;
  (*(v5 + 16))(v8, v17, v4);
  v19 = *(v5 + 80);
  v35 = v5;
  v20 = (v19 + 57) & ~v19;
  v21 = swift_allocObject();
  v22 = v34;
  v36 = *(v34 + 80);
  *(v21 + 16) = v36;
  v23 = *(v22 + 88);
  *(v21 + 24) = v23;
  *(v21 + 32) = v2;
  *(v21 + 40) = v13;
  *(v21 + 48) = v14;
  *(v21 + 56) = v15;
  (*(v16 + 32))(v21 + v20, v8, v18);

  sub_1C6CBE8FC(v13, v14, v15);
  sub_1C6B18D08(0, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v24 = v33;
  sub_1C6D78390();

  v25 = swift_allocObject();
  *(v25 + 16) = sub_1C6CBE91C;
  *(v25 + 24) = v2;

  v26 = sub_1C6D78210();
  sub_1C6CBE958(0);
  sub_1C6D782A0();

  v27 = swift_allocObject();
  *(v27 + 16) = v36;
  *(v27 + 24) = v23;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1C6CBEA80;
  *(v28 + 24) = v27;
  v29 = sub_1C6D78210();
  sub_1C6B18D08(0, qword_1EDCE0238, &type metadata for PersonalizedPaywallDataServiceResult, MEMORY[0x1E69E6720]);
  v30 = sub_1C6D782A0();

  (*(v35 + 8))(v37, v18);
  return v30;
}

uint64_t sub_1C6CBD088(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1C6CBF55C(0, &qword_1EDCE5D78, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  swift_allocObject();
  return sub_1C6D78350();
}

void sub_1C6CBD124(void (*a1)(void *), uint64_t a2, void (*a3)(void *), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v42 = a4;
  v43 = a3;
  v39 = a2;
  v40 = a1;
  v13 = *a5;
  v14 = sub_1C6D783E0();
  v41 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v19 = v18;
  v20 = *(v18 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v45 = a5;
  v46 = a6;
  v47 = a7;
  v48 = a8;
  v49 = a9;
  v24 = *(v13 + 88);
  v25 = *(v13 + 80);
  v26 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 24))(sub_1C6CBF604, v44, v25, v24, v22);
  v36 = v17;
  v37 = v14;
  v38 = v20;
  v27 = v26;
  sub_1C6D78500();
  v28 = v50[3];

  v29 = [v28 personalizedPaywallsConfiguration];

  if (v29)
  {
    v31 = [v29 channelIDsOutputName];
    sub_1C6D795A0();

    v32 = v36;
    sub_1C6D783C0();
    sub_1C6CBF62C(&qword_1EDCE7A60, sub_1C6B7A08C, MEMORY[0x1E69960C0]);
    v35 = sub_1C6D786C0();
    (*(v41 + 8))(v32, v37);
    v50[0] = v35;
    v40(v50);

    (*(v38 + 8))(v27, v19);
  }

  else
  {
    type metadata accessor for PersonalizedPaywallDataService.Errors(0, v25, v24, v30);
    swift_getWitnessTable();
    v33 = swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    swift_willThrow();
    (*(v38 + 8))(v27, v19);
    v43(v33);
  }
}

void sub_1C6CBD508(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = [*(a1 + 24) personalizedPaywallsConfiguration];
  if (v14)
  {
    v41 = v7;
    v39[0] = a3;
    v39[1] = a4;
    v40 = a5;
    v16 = v14;
    v17 = [v14 contextFeatureKey];
    v18 = sub_1C6D795A0();
    v20 = v19;

    LODWORD(v17) = [v16 omitHardFollows];
    v38 = v16;
    v21 = [v16 channelIDsOutputName];
    v22 = sub_1C6D795A0();
    v23 = a7;
    v24 = a6;
    v26 = v25;

    sub_1C6CBBFFC(v39, v24, v18, v20, v17, v22, v26, v23);

    if (qword_1EDCE1AD0 != -1)
    {
      swift_once();
    }

    v27 = qword_1EDCE1AD8;
    sub_1C6CBF4F8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C6D7EB10;
    sub_1C6D75F80();
    sub_1C6CBF62C(&qword_1EDCEA390, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v29 = sub_1C6D7A0E0();
    v31 = v30;
    v32 = MEMORY[0x1E69E6158];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v33 = sub_1C6B2064C();
    *(v28 + 64) = v33;
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    sub_1C6D787B0();
    sub_1C6CBF62C(&qword_1EDCE5CD0, MEMORY[0x1E6996158], MEMORY[0x1E6996160]);
    v34 = sub_1C6D7A0E0();
    *(v28 + 96) = v32;
    *(v28 + 104) = v33;
    *(v28 + 72) = v34;
    *(v28 + 80) = v35;
    v36 = sub_1C6D79AC0();
    sub_1C6D78D30("Running on global graph with request ID %{public}@ with request %{public}@", 74, 2, &dword_1C6B09000, v27, v36, v28);
  }

  else
  {
    type metadata accessor for PersonalizedPaywallDataService.Errors(0, *(v13 + 80), *(v13 + 88), v15);
    swift_getWitnessTable();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1C6CBD858(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (!a1)
  {
    type metadata accessor for PersonalizedPaywallDataService.Errors(0, *(*a2 + 80), *(*a2 + 88), a4);
    swift_getWitnessTable();
    swift_allocError();
    *v17 = xmmword_1C6D90F30;
    *(v17 + 16) = 1;
    goto LABEL_7;
  }

  if (qword_1EDCE1AD0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDCE1AD8;
  sub_1C6CBF4F8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7E630;
  v9 = MEMORY[0x1E69E6158];
  v10 = MEMORY[0x1CCA55C60](a1, MEMORY[0x1E69E6158]);
  v12 = v11;
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_1C6B2064C();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = sub_1C6D79AC0();
  sub_1C6D78D30("Got back channelIDs %{public}@", 30, 2, &dword_1C6B09000, v7, v13, v8);

  v15 = *(a1 + 16);
  if (v15 < 3)
  {
    type metadata accessor for PersonalizedPaywallDataService.Errors(0, *(v4 + 80), *(v4 + 88), v14);
    swift_getWitnessTable();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
LABEL_7:
    sub_1C6CBF4F8(0, &qword_1EDCE5D70, sub_1C6CBE958, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1C6D782F0();
  }

  sub_1C6CBF55C(0, &qword_1EDCE5D78, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  swift_allocObject();

  sub_1C6D78300();
  __swift_project_boxed_opaque_existential_1((a2 + *(*a2 + 104)), *(a2 + *(*a2 + 104) + 24));
  sub_1C6D79320();
  v19 = sub_1C6D78210();
  v20 = sub_1C6D781F0();

  return v20;
}

uint64_t sub_1C6CBDB84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (!(a2 >> 62))
  {
    v89 = a2 & 0xFFFFFFFFFFFFFF8;
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = &off_1C6D7E000;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_32:
    v87 = MEMORY[0x1E69E7CC8];
    goto LABEL_33;
  }

LABEL_31:
  v89 = v5 & 0xFFFFFFFFFFFFFF8;
  v6 = sub_1C6D79E90();
  v7 = &off_1C6D7E000;
  if (!v6)
  {
    goto LABEL_32;
  }

LABEL_3:
  v8 = 0;
  v87 = MEMORY[0x1E69E7CC8];
  v88 = *(v7 + 99);
  while (2)
  {
    v9 = v8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1CCA56240](v9, v5);
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v9 >= *(v89 + 16))
        {
          goto LABEL_30;
        }

        v10 = *(v5 + 8 * v9 + 32);
        swift_unknownObjectRetain();
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      v11 = [v10 asChannel];
      if (v11)
      {
        break;
      }

      if (qword_1EDCE1AD0 != -1)
      {
        swift_once();
      }

      v12 = qword_1EDCE1AD8;
      v13 = sub_1C6D79AA0();
      sub_1C6CBF4F8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      isUniquelyReferenced_nonNull_native = swift_allocObject();
      *(isUniquelyReferenced_nonNull_native + 16) = v88;
      v90 = 0;
      v91 = 0xE000000000000000;
      v94[0] = v10;
      sub_1C6CBEA1C();
      sub_1C6D79E60();
      *(isUniquelyReferenced_nonNull_native + 56) = MEMORY[0x1E69E6158];
      *(isUniquelyReferenced_nonNull_native + 64) = sub_1C6B2064C();
      *(isUniquelyReferenced_nonNull_native + 32) = 0;
      *(isUniquelyReferenced_nonNull_native + 40) = 0xE000000000000000;
      sub_1C6D78D30("Found unexpected non-channel tag when building suggestions %{public}@", 69, 2, &dword_1C6B09000, v12, v13, isUniquelyReferenced_nonNull_native);

      swift_unknownObjectRelease();
      ++v9;
      if (v8 == v6)
      {
        goto LABEL_33;
      }
    }

    v14 = v11;
    v15 = [v11 identifier];
    v16 = sub_1C6D795A0();
    v18 = v17;

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v87;
    v83 = v16;
    v20 = sub_1C6B5DEA8(v16, v18);
    v21 = v87[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
LABEL_59:
      sub_1C6B39280((v14 > 1), v18, 1);
      v47 = v90;
      goto LABEL_45;
    }

    v24 = v19;
    if (v87[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v19 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_1C6B74CE8();
        if ((v24 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_23:

      v87 = v90;
      *(v90[7] + 8 * v20) = v14;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    sub_1C6B7202C(v23, isUniquelyReferenced_nonNull_native);
    v25 = sub_1C6B5DEA8(v83, v18);
    if ((v24 & 1) != (v26 & 1))
    {
LABEL_63:
      result = sub_1C6D7A1C0();
      __break(1u);
      return result;
    }

    v20 = v25;
    if (v24)
    {
      goto LABEL_23;
    }

LABEL_25:
    v27 = v18;
    v28 = v90;
    v90[(v20 >> 6) + 8] |= 1 << v20;
    v29 = (v28[6] + 16 * v20);
    *v29 = v83;
    v29[1] = v27;
    *(v28[7] + 8 * v20) = v14;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v30 = v28[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      __break(1u);
      goto LABEL_63;
    }

    v87 = v28;
    v28[2] = v32;
LABEL_27:
    if (v8 != v6)
    {
      continue;
    }

    break;
  }

LABEL_33:
  v33 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    v34 = v87;
    v35 = (a1 + 40);
    do
    {
      v37 = *v35;
      v94[0] = *(v35 - 1);
      v94[1] = v37;

      sub_1C6CBE4AC(v94, v34, &v90);

      v38 = v91;
      if (v91)
      {
        v39 = v90;
        isUniquelyReferenced_nonNull_native = v92;
        v40 = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1C6B66FA8(0, *(v5 + 16) + 1, 1, v5);
        }

        v42 = *(v5 + 16);
        v41 = *(v5 + 24);
        if (v42 >= v41 >> 1)
        {
          v5 = sub_1C6B66FA8((v41 > 1), v42 + 1, 1, v5);
        }

        *(v5 + 16) = v42 + 1;
        v36 = (v5 + 32 * v42);
        v36[4] = v39;
        v36[5] = v38;
        v36[6] = isUniquelyReferenced_nonNull_native;
        v36[7] = v40;
        v34 = v87;
      }

      v35 += 2;
      --v33;
    }

    while (v33);
  }

  v43 = *(v5 + 16);
  if (v43 < 3)
  {

    type metadata accessor for PersonalizedPaywallDataService.Errors(0, a3, a4, v44);
    swift_getWitnessTable();
    swift_allocError();
    *v45 = 3;
    *(v45 + 8) = v43;
    *(v45 + 16) = 0;
    sub_1C6CBF55C(0, &qword_1EDCE5D88, qword_1EDCE0238, &type metadata for PersonalizedPaywallDataServiceResult, MEMORY[0x1E69E6720]);
    swift_allocObject();
    return sub_1C6D782F0();
  }

  v90 = MEMORY[0x1E69E7CC0];

  sub_1C6B39280(0, 3, 0);
  v47 = v90;
  v6 = *(v5 + 48);
  v20 = *(v5 + 56);
  v10 = v90[2];
  v14 = v90[3];
  v18 = v10 + 1;

  if (v10 >= v14 >> 1)
  {
    goto LABEL_59;
  }

LABEL_45:
  v47[2] = v18;
  v48 = &v47[2 * v10];
  v48[4] = v6;
  v48[5] = v20;
  v50 = *(v5 + 80);
  v49 = *(v5 + 88);
  v51 = v47[3];
  v52 = v10 + 2;

  if (v18 >= v51 >> 1)
  {
    sub_1C6B39280((v51 > 1), v52, 1);
    v47 = v90;
  }

  v47[2] = v52;
  v53 = &v47[2 * v18];
  v53[4] = v50;
  v53[5] = v49;
  v55 = *(v5 + 112);
  v54 = *(v5 + 120);
  v57 = v47[2];
  v56 = v47[3];

  if (v57 >= v56 >> 1)
  {
    sub_1C6B39280((v56 > 1), v57 + 1, 1);
  }

  v58 = objc_opt_self();
  v59 = v90;
  v90[2] = v57 + 1;
  v60 = &v59[2 * v57];
  v60[4] = v55;
  v60[5] = v54;

  v61 = MEMORY[0x1E69E6158];
  v62 = sub_1C6D79760();

  v63 = [v58 localizedStringByJoiningStrings_];

  v64 = sub_1C6D795A0();
  v66 = v65;

  if (qword_1EDCE1AD0 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDCE1AD8;
  sub_1C6CBF4F8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1C6D7E630;
  *(v68 + 56) = v61;
  *(v68 + 64) = sub_1C6B2064C();
  *(v68 + 32) = v64;
  *(v68 + 40) = v66;

  v69 = sub_1C6D79AC0();
  sub_1C6D78D30("Returning result with clause %{public}@", 39, 2, &dword_1C6B09000, v67, v69, v68);

  if (*(v5 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_61;
  }

  v90 = MEMORY[0x1E69E7CC0];
  sub_1C6B39280(0, 3, 0);
  v70 = v90;
  v57 = *(v5 + 32);
  v68 = *(v5 + 40);
  v55 = v90[2];
  isUniquelyReferenced_nonNull_native = v90[3];
  v67 = v55 + 1;

  if (v55 >= isUniquelyReferenced_nonNull_native >> 1)
  {
LABEL_61:
    sub_1C6B39280((isUniquelyReferenced_nonNull_native > 1), v67, 1);
    v70 = v90;
  }

  v70[2] = v67;
  v71 = &v70[2 * v55];
  v71[4] = v57;
  v71[5] = v68;
  v73 = *(v5 + 64);
  v72 = *(v5 + 72);
  v74 = v70[3];
  v75 = v55 + 2;

  if (v67 >= v74 >> 1)
  {
    sub_1C6B39280((v74 > 1), v75, 1);
    v70 = v90;
  }

  v70[2] = v75;
  v76 = &v70[2 * v67];
  v76[4] = v73;
  v76[5] = v72;
  v78 = *(v5 + 96);
  v77 = *(v5 + 104);
  v80 = v70[2];
  v79 = v70[3];

  if (v80 >= v79 >> 1)
  {
    sub_1C6B39280((v79 > 1), v80 + 1, 1);
  }

  v81 = v90;
  v90[2] = v80 + 1;
  v82 = &v81[2 * v80];
  v82[4] = v78;
  v82[5] = v77;

  v90 = v64;
  v91 = v66;
  v92 = v81;
  sub_1C6CBF55C(0, &qword_1EDCE5D88, qword_1EDCE0238, &type metadata for PersonalizedPaywallDataServiceResult, MEMORY[0x1E69E6720]);
  swift_allocObject();
  return sub_1C6D78300();
}

uint64_t sub_1C6CBE4AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (!*(a2 + 16) || (v7 = sub_1C6B5DEA8(*a1, v4), (v8 & 1) == 0))
  {
    if (qword_1EDCE1AD0 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDCE1AD8;
    v19 = sub_1C6D79AA0();
    sub_1C6CBF4F8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C6D7E630;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1C6B2064C();
    *(v20 + 32) = v5;
    *(v20 + 40) = v4;

    sub_1C6D78D30("Didn't find channel providing value for personalized paywall channel %{public}@", 79, 2, &dword_1C6B09000, v18, v19, v20);

    goto LABEL_15;
  }

  v9 = *(*(a2 + 56) + 8 * v7);
  v10 = [swift_unknownObjectRetain() personalizedPaywallName];
  if (!v10)
  {
    if (qword_1EDCE1AD0 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDCE1AD8;
    v23 = sub_1C6D79AA0();
    sub_1C6CBF4F8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C6D7E630;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1C6B2064C();
    *(v24 + 32) = v5;
    *(v24 + 40) = v4;

    sub_1C6D78D30("Didn't find personalizedPaywallName for channel %{public}@", 58, 2, &dword_1C6B09000, v22, v23, v24);
    goto LABEL_14;
  }

  v11 = v10;
  v12 = sub_1C6D795A0();
  v14 = v13;

  if ([v9 isDeprecated])
  {
    if (qword_1EDCE1AD0 != -1)
    {
      swift_once();
    }

    v26 = qword_1EDCE1AD8;
    v25 = sub_1C6D79AA0();
    sub_1C6CBF4F8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C6D7EB10;
    v16 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v17 = sub_1C6B2064C();
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 64) = v17;
    *(v15 + 72) = v5;
    *(v15 + 80) = v4;

    sub_1C6D78D30("Channel %{public}@ (%{public}@) is deprecated, removing from consideration", 74, 2, &dword_1C6B09000, v26, v25, v15);
LABEL_14:

    result = swift_unknownObjectRelease();
LABEL_15:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  swift_unknownObjectRelease();
  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v12;
  *(a3 + 24) = v14;
}

uint64_t sub_1C6CBE86C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_1C6CBE8FC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return swift_unknownObjectRetain();
  }

  return v3;
}

void sub_1C6CBE958(uint64_t a1)
{
  if (!qword_1EDCDFA20)
  {
    sub_1C6B18D08(255, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1C6CBF4F8(255, &qword_1EDCDF9D0, sub_1C6CBEA1C, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFA20);
    }
  }
}

unint64_t sub_1C6CBEA1C()
{
  result = qword_1EDCDF8D0;
  if (!qword_1EDCDF8D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCDF8D0);
  }

  return result;
}

uint64_t sub_1C6CBEAC0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73F6C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C6CBEB2C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C6CBEB2C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C6D7A0C0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C6D797F0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C6CBECF4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C6CBEC24(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C6CBEC24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1C6D7A130(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6CBECF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1C6C73C90(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C6CBF2D0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1C6D7A130();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1C6D7A130();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C6B657D0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1C6CBF2D0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C6C73C90(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1C6C73C04(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1C6D7A130(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1C6CBF2D0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1C6D7A130() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1C6D7A130() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_1C6CBF4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6CBF55C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1C6B18D08(255, a3, a4, a5);
    v6 = sub_1C6D78360();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1C6CBF62C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6CBF674(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6CBF694(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1C6CBF6C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6CBF6E0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

id sub_1C6CBF700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC19NewsPersonalization29ComputeServiceUnloaderService_configurationManager] = a2;
  *&v3[OBJC_IVAR____TtC19NewsPersonalization29ComputeServiceUnloaderService_computeService] = a1;
  v13.receiver = v3;
  v13.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v13, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 defaultCenter];
  [v10 addObserver:v9 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

  v11 = [v8 defaultCenter];
  [v11 addObserver:v9 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

  return v9;
}

uint64_t sub_1C6CBF84C()
{
  if (qword_1EDCE2398 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDCE23A0;
  sub_1C6B1D314(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C6D7E630;
  sub_1C6D75BE0();
  sub_1C6CBFBA8();
  v2 = sub_1C6D7A0E0();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1C6B2064C();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = sub_1C6D79AC0();
  sub_1C6D78D30("applicationDidEnterBackground, notification=%{public}@", 54, 2, &dword_1C6B09000, v0, v5, v1, 1, 2);

  sub_1C6D74728(v11);
  v6 = v11[3];

  v7 = [v6 unloadGraphOnBackgroundConfiguration];

  LODWORD(v6) = [v7 enabled];
  v8 = sub_1C6D79AC0();
  if (v6)
  {
    sub_1C6D78D30("See app entering background, setting graph to unload", 52, 2, &dword_1C6B09000, v0, v8, MEMORY[0x1E69E7CC0]);
    return sub_1C6D784C0();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];

    return sub_1C6D78D30("See app entering background but unload graph on background as disabled, doing nothing to work service", 101, 2, &dword_1C6B09000, v0, v8, v10);
  }
}

unint64_t sub_1C6CBFBA8()
{
  result = qword_1EDCE63B0;
  if (!qword_1EDCE63B0)
  {
    sub_1C6D75BE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE63B0);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_ArticleFeatures.init()@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  *a1 = 0;
  *(a1 + 3) = 0;
  return sub_1C6D78A30();
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(uint64_t a1)
{
  result = qword_1EDCE51D8;
  if (!qword_1EDCE51D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_ArticleFeatures.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0) + 44);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_ArticleFeatures.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0) + 44);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6CBFF34()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE5200);
  __swift_project_value_buffer(v0, qword_1EDCE5200);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C6D824E0;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 1;
  *v5 = "is_audio";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6D78D00();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 2;
  *v9 = "is_featured";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "is_evergreen";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "is_anf";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "is_paid";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "is_video";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 7;
  *v19 = "is_bundle_paid";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_ArticleFeatures._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE51F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5200);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_ArticleFeatures.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6D78AD0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_11:
          sub_1C6D78AF0();
        }
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_11;
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_ArticleFeatures.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C6D78C60(), !v4))
  {
    if (v3[1] != 1 || (result = sub_1C6D78C60(), !v4))
    {
      if (v3[2] != 1 || (result = sub_1C6D78C60(), !v4))
      {
        if (v3[3] != 1 || (result = sub_1C6D78C60(), !v4))
        {
          if (v3[4] != 1 || (result = sub_1C6D78C60(), !v4))
          {
            if (v3[5] != 1 || (result = sub_1C6D78C60(), !v4))
            {
              if (v3[6] != 1 || (result = sub_1C6D78C60(), !v4))
              {
                type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
                return sub_1C6D78A20();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_ArticleFeatures.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  sub_1C6CC0C20(&qword_1EC1D9220, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC05B0@<X0>(_DWORD *a2@<X8>)
{
  *(a2 + 3) = 0;
  *a2 = 0;
  return sub_1C6D78A30();
}

uint64_t sub_1C6CC05F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6CC0668(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6CC0730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CC0C20(&qword_1EC1D9230, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_News_Personalization_ArticleFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CC07AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE51F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5200);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CC0854(uint64_t a1)
{
  v2 = sub_1C6CC0C20(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_News_Personalization_ArticleFeatures);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CC08C0(uint64_t a1, uint64_t a2)
{
  sub_1C6CC0C20(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_News_Personalization_ArticleFeatures);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B16_ArticleFeaturesV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6])
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  sub_1C6D78A40();
  sub_1C6CC0C20(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6CC0B90(uint64_t a1)
{
  result = sub_1C6D78A40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6CC0C20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AudioEngagementCompletedEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77DB0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t AudioEngagementCompletedEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77DB0();
  sub_1C6D773F0();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6CC20D4(&qword_1EDCE5FD0, MEMORY[0x1E69B4598], MEMORY[0x1E69B45A0]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t AudioEngagementCompletedEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77DB0();
  sub_1C6D77410();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6CC20D4(&qword_1EDCE5F20, MEMORY[0x1E69B4818], MEMORY[0x1E69B4820]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t AudioEngagementCompletedEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77DC0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = AudioEngagementCompletedEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6CC13D0(uint64_t (*a1)(void), uint64_t (*a2)(double), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6CC14DC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77DB0();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t AudioEngagementCompletedEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77DD0();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t AudioEngagementCompletedEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77DF0();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t AudioEngagementCompletedEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77DE0();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6CC1E14(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77DB0();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t AudioEngagementCompletedEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77DF0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6CC20D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6CC2174()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77DB0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6CC2274()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77DC0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = AudioEngagementCompletedEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6CC23C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77DB0();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6CC24E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t))
{
  v7 = (a3)(0, a2);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6CC25EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77DB0();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6CC26D8()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77DF0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(uint64_t a1)
{
  result = qword_1EDCE3288;
  if (!qword_1EDCE3288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0) + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6CC2B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6CC2CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0) + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0) + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6CC32E8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9240);
  __swift_project_value_buffer(v0, qword_1EC1D9240);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B50 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9240);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6CC3608(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6CC3608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6CC40B4(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6CC3758(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CC3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  sub_1C6B3E190(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B3E224(v8);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6CC40B4(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  sub_1C6CC40B4(&qword_1EC1D9258, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC3A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CC40B4(&qword_1EC1D9270, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CC3AB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B50 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9240);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CC3B58(uint64_t a1)
{
  v2 = sub_1C6CC40B4(&qword_1EC1D7678, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CC3BC4(uint64_t a1, uint64_t a2)
{
  sub_1C6CC40B4(&qword_1EC1D7678, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventTrackFinishedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B3FB88(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0) + 24);
  v19 = *(v14 + 48);
  sub_1C6B3E190(a1 + v18, v17);
  sub_1C6B3E190(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6CC40B4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v19], v8);
  v23 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6CC40B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_SessionEventArticleSaved.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(uint64_t a1)
{
  result = qword_1EDCE4898;
  if (!qword_1EDCE4898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSaved.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0) + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t sub_1C6CC435C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6CC44F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0) + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSaved.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0) + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleSaved.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleSaved.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleSaved.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0) + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSaved.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSaved.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6CC4B50()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9278);
  __swift_project_value_buffer(v0, qword_1EC1D9278);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "article";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleSaved._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B58 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSaved.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6CC4DF0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6CC4DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6CC583C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSaved.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6CC4EFC(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CC4EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  sub_1C6B482A8(a1 + *(v14 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B4833C(v8);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6CC583C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSaved.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  sub_1C6CC583C(&qword_1EC1D9290, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC51D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CC583C(&qword_1EC1D92A8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSaved);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CC5254@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B58 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CC52FC(uint64_t a1)
{
  v2 = sub_1C6CC583C(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSaved);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CC5368(uint64_t a1, uint64_t a2)
{
  sub_1C6CC583C(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSaved);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventArticleSavedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B49A50(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0) + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6CC583C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6CC583C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6CC5884()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CC58F0()
{
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC5964(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC59B8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1C6D79F50();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1C6CC5A48@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C6D79F50();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C6CC5AA0(uint64_t a1)
{
  v2 = sub_1C6CC5D18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6CC5ADC(uint64_t a1)
{
  v2 = sub_1C6CC5D18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6CC5B18(void *a1)
{
  v2 = v1;
  sub_1C6CC5CBC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CC5D18();
  sub_1C6D7A300();
  v11[1] = sub_1C6CC5D6C(*(v2 + 16));
  sub_1C6CC62F0(0, &qword_1EDCDFC18, MEMORY[0x1E69E5E28]);
  sub_1C6CC61C0();
  sub_1C6D7A090();

  return (*(v6 + 8))(v9, v5);
}

void sub_1C6CC5CBC(uint64_t a1)
{
  if (!qword_1EDCDF5E8)
  {
    sub_1C6CC5D18();
    v1 = sub_1C6D7A0A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF5E8);
    }
  }
}

unint64_t sub_1C6CC5D18()
{
  result = qword_1EDCDFFD0;
  if (!qword_1EDCDFFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFFD0);
  }

  return result;
}

unint64_t sub_1C6CC5D6C(uint64_t a1)
{
  sub_1C6CC62F0(0, &qword_1EDCDF6D8, MEMORY[0x1E69E6EC8]);
  result = sub_1C6D79EF0();
  v3 = 0;
  v43 = result;
  v44 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v42 = result + 64;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v45 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v44 + 48) + 16 * v14);
      v46 = v15[1];
      v47 = *v15;
      v16 = *(*(v44 + 56) + 8 * v14);

      v17 = v16;
      [v17 clicks];
      v48 = v18;
      [v17 impressions];
      v49 = v19;
      v50 = [v17 eventCount];
      v51 = [v17 timestamp];
      sub_1C6C0C0AC(0, &qword_1EDCEA470, MEMORY[0x1E69E6EC8]);
      v20 = sub_1C6D79F20();

      result = sub_1C6B5DEA8(0x736B63696C63, 0xE600000000000000);
      if (v21)
      {
        break;
      }

      v22 = v20 + 8;
      *(v20 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v20[6] + 16 * result);
      *v23 = 0x736B63696C63;
      v23[1] = 0xE600000000000000;
      *(v20[7] + 8 * result) = v48;
      v24 = v20[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v20[2] = v26;

      result = sub_1C6B5DEA8(0x6973736572706D69, 0xEB00000000736E6FLL);
      if (v27)
      {
        break;
      }

      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v28 = (v20[6] + 16 * result);
      *v28 = 0x6973736572706D69;
      v28[1] = 0xEB00000000736E6FLL;
      *(v20[7] + 8 * result) = v49;
      v29 = v20[2];
      v25 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v20[2] = v30;

      result = sub_1C6B5DEA8(0x756F43746E657665, 0xEA0000000000746ELL);
      if (v31)
      {
        break;
      }

      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v32 = (v20[6] + 16 * result);
      *v32 = 0x756F43746E657665;
      v32[1] = 0xEA0000000000746ELL;
      *(v20[7] + 8 * result) = v50;
      v33 = v20[2];
      v25 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v20[2] = v34;

      result = sub_1C6B5DEA8(0x6D617473656D6974, 0xE900000000000070);
      if (v35)
      {
        break;
      }

      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v36 = (v20[6] + 16 * result);
      *v36 = 0x6D617473656D6974;
      v36[1] = 0xE900000000000070;
      *(v20[7] + 8 * result) = v51;
      v37 = v20[2];
      v25 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v20[2] = v38;

      sub_1C6B758EC();
      swift_arrayDestroy();

      result = v43;
      *(v42 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v39 = (v43[6] + 16 * v14);
      *v39 = v47;
      v39[1] = v46;
      *(v43[7] + 8 * v14) = v20;
      v40 = v43[2];
      v25 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v43[2] = v41;
      v9 = v45;
      if (!v45)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v45 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1C6CC61C0()
{
  result = qword_1EDCDFC10;
  if (!qword_1EDCDFC10)
  {
    sub_1C6CC62F0(255, &qword_1EDCDFC18, MEMORY[0x1E69E5E28]);
    sub_1C6CC625C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFC10);
  }

  return result;
}

unint64_t sub_1C6CC625C()
{
  result = qword_1EDCDFBE0;
  if (!qword_1EDCDFBE0)
  {
    sub_1C6C0C0AC(255, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFBE0);
  }

  return result;
}

void sub_1C6CC62F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1C6C0C0AC(255, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C6CC6390()
{
  result = qword_1EC1D92B0;
  if (!qword_1EC1D92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D92B0);
  }

  return result;
}

unint64_t sub_1C6CC63E8()
{
  result = qword_1EDCDFFC0;
  if (!qword_1EDCDFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFFC0);
  }

  return result;
}

unint64_t sub_1C6CC6440()
{
  result = qword_1EDCDFFC8;
  if (!qword_1EDCDFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFFC8);
  }

  return result;
}

uint64_t NewsAppFeatureResolvers.resolveFeatures(inputKeys:configuration:nodeID:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v60 = a3;
  v61 = a4;
  v62 = a1;
  v48 = a5;
  sub_1C6CC6AE0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D78810();
  MEMORY[0x1EEE9AC00](v13, v14);
  v59 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + 16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *a2;
    v20 = v17 + 32;
    v57 = (v15 + 56);
    v58 = v19;
    v56 = (v15 + 48);
    v49 = v15;
    v55 = (v15 + 32);
    v54 = *(a2 + 1);
    v53 = a2[3];
    v21 = MEMORY[0x1E69E7CC0];
    v50 = xmmword_1C6D7EB10;
    v52 = v12;
    v51 = v13;
    do
    {
      sub_1C6B16F28(v20, v71);
      __swift_project_boxed_opaque_existential_1(v71, v71[3]);
      v68 = v58;
      v69 = v54;
      v70 = v53;
      sub_1C6D785F0();
      if (v7)
      {
        v65 = v18;
        v66 = v7;
        v67 = v21;
        if (qword_1EDCE2360 != -1)
        {
          swift_once();
        }

        v64 = qword_1EDCE2368;
        v63 = sub_1C6D79AA0();
        sub_1C6B1D314(0);
        v22 = swift_allocObject();
        *(v22 + 16) = v50;
        v68 = 0;
        *&v69 = 0xE000000000000000;
        sub_1C6B10A98(0, &qword_1EDCE7910, &protocol descriptor for NewsFeatureResolver);
        sub_1C6D79E60();
        v24 = v68;
        v23 = v69;
        v25 = MEMORY[0x1E69E6158];
        *(v22 + 56) = MEMORY[0x1E69E6158];
        v26 = sub_1C6B2064C();
        *(v22 + 64) = v26;
        *(v22 + 32) = v24;
        *(v22 + 40) = v23;
        v68 = 0;
        *&v69 = 0xE000000000000000;
        v27 = v66;
        v71[7] = v66;
        sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
        sub_1C6D79E60();
        v28 = v68;
        v29 = v69;
        *(v22 + 96) = v25;
        *(v22 + 104) = v26;
        *(v22 + 72) = v28;
        *(v22 + 80) = v29;
        sub_1C6D78D30("Failed to get features from feature resolver %{public}@ with error: %{public}@", 78, 2, &dword_1C6B09000, v64, v63, v22, v48);

        v7 = 0;
        v30 = 1;
        v12 = v52;
        v13 = v51;
        v21 = v67;
        v18 = v65;
      }

      else
      {
        v30 = 0;
      }

      (*v57)(v12, v30, 1, v13);
      __swift_destroy_boxed_opaque_existential_1(v71);
      if ((*v56)(v12, 1, v13) == 1)
      {
        sub_1C6C292B8(v12);
      }

      else
      {
        v31 = *v55;
        (*v55)(v59, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1C6B66A28(0, v21[2] + 1, 1, v21);
        }

        v33 = v21[2];
        v32 = v21[3];
        v34 = v49;
        if (v33 >= v32 >> 1)
        {
          v35 = sub_1C6B66A28((v32 > 1), v33 + 1, 1, v21);
          v34 = v49;
          v21 = v35;
        }

        v21[2] = v33 + 1;
        v31(v21 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33, v59, v13);
      }

      v20 += 40;
      --v18;
    }

    while (v18);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6B96AD0(v21, 1, 0, v48);
  if (!v7)
  {

    v36 = sub_1C6D787E0();
    v37 = sub_1C6B68E34(v36);

    v38 = sub_1C6CC6EBC(v37, v62);

    if (v38)
    {
      return result;
    }

    if (qword_1EDCE2360 != -1)
    {
      swift_once();
    }

    v40 = qword_1EDCE2368;
    v41 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1C6D7E630;
    v43 = sub_1C6D787E0();
    v44 = v62;

    sub_1C6CC7264(v43, v44);

    sub_1C6D783E0();
    sub_1C6CC7CE0(&qword_1EDCE7A68, MEMORY[0x1E6996090]);
    v45 = sub_1C6D79970();
    v47 = v46;

    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1C6B2064C();
    *(v42 + 32) = v45;
    *(v42 + 40) = v47;
    sub_1C6D78D30("Failed to get features for keys %{public}@", 42, 2, &dword_1C6B09000, v40, v41, v42);
  }
}

void sub_1C6CC6AE0(uint64_t a1)
{
  if (!qword_1EDCEA310)
  {
    sub_1C6D78810();
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA310);
    }
  }
}

uint64_t NewsAppFeatureResolvers.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CC6BB4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1C6D783E0();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1C6C07864(0);
  result = sub_1C6D79D30();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1C6CC7CE0(&qword_1EDCE7A68, MEMORY[0x1E6996090]);
    result = sub_1C6D79500();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C6CC6EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v37 - v15;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v18 = a2 + 56;
  v19 = 1 << *(a2 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(a2 + 56);
  v42 = v5 + 32;
  v43 = (v19 + 63) >> 6;
  v46 = a1 + 56;
  v47 = v5 + 16;
  v48 = (v5 + 8);

  v23 = 0;
  v37 = a2 + 56;
  v38 = v16;
  v41 = a2;
  v39 = v5;
  v24 = v43;
  if (v21)
  {
    while (1)
    {
      v25 = v23;
LABEL_11:
      v26 = *(v5 + 72);
      v27 = *(a2 + 48) + v26 * (__clz(__rbit64(v21)) | (v25 << 6));
      v44 = *(v5 + 16);
      v45 = v26;
      v44(v16, v27, v4);
      (*(v5 + 32))(v12, v16, v4);
      v28 = *(a1 + 16);
      v40 = v48 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = v12;
      if (!v28)
      {
        break;
      }

      sub_1C6CC7CE0(&qword_1EDCE7A68, MEMORY[0x1E6996090]);
      v30 = sub_1C6D79500();
      v31 = -1 << *(a1 + 32);
      v32 = v30 & ~v31;
      if (((*(v46 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        break;
      }

      v33 = a1;
      v21 &= v21 - 1;
      v34 = ~v31;
      while (1)
      {
        v44(v8, *(v33 + 48) + v32 * v45, v4);
        sub_1C6CC7CE0(&qword_1EDCE5D20, MEMORY[0x1E6996098]);
        v35 = sub_1C6D79560();
        v36 = *v48;
        (*v48)(v8, v4);
        if (v35)
        {
          break;
        }

        v32 = (v32 + 1) & v34;
        if (((*(v46 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          v36(v29, v4);
          goto LABEL_19;
        }
      }

      v12 = v29;
      result = (v36)(v29, v4);
      v23 = v25;
      a2 = v41;
      a1 = v33;
      v16 = v38;
      v5 = v39;
      v18 = v37;
      v24 = v43;
      if (!v21)
      {
        goto LABEL_8;
      }
    }

    (*v48)(v12, v4);
LABEL_19:
    v17 = 0;
LABEL_21:

    return v17;
  }

LABEL_8:
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v24)
    {
      v17 = 1;
      goto LABEL_21;
    }

    v21 = *(v18 + 8 * v25);
    ++v23;
    if (v21)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6CC7264(uint64_t a1, uint64_t a2)
{
  v67[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1C6D783E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v61 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v53 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  i = v53 - v14;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v67[0] = a1;
  v15 = *(a1 + 16);

  v55 = v15;
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = 0;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = *(v17 + 64);
  v57 = a1;
  v58 = a1 + ((v19 + 32) & ~v19);
  v64 = *(v17 + 56);
  v65 = v18;
  v62 = (a2 + 56);
  v63 = a2;
  v66 = v17;
  v20 = (v17 - 8);
  v54 = ((v17 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v59 = v16 + 1;
    v67[1] = v16 + 1;
    v65(i, v58 + v64 * v16, v4);
    v56 = sub_1C6CC7CE0(&qword_1EDCE7A68, MEMORY[0x1E6996090]);
    v21 = sub_1C6D79500();
    v22 = -1 << *(a2 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & v62[v23 >> 6]) != 0)
    {
      break;
    }

    v28 = *v20;
LABEL_10:
    v28(i, v4);
    v16 = v59;
    if (v59 == v55)
    {
      goto LABEL_30;
    }
  }

  v26 = ~v22;
  while (1)
  {
    v65(v11, *(v63 + 48) + v23 * v64, v4);
    sub_1C6CC7CE0(&qword_1EDCE5D20, MEMORY[0x1E6996098]);
    v27 = sub_1C6D79560();
    v28 = *v20;
    (*v20)(v11, v4);
    if (v27)
    {
      break;
    }

    v23 = (v23 + 1) & v26;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & v62[v23 >> 6]) == 0)
    {
      a2 = v63;
      goto LABEL_10;
    }
  }

  v29 = (v28)(i, v4);
  v31 = v63;
  v32 = *(v63 + 32);
  v53[0] = ((1 << v32) + 63) >> 6;
  v33 = 8 * v53[0];
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v53[1] = v53;
    MEMORY[0x1EEE9AC00](v29, v30);
    v35 = v53 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v35, v62, v34);
    v36 = *(v31 + 16);
    *&v35[8 * v24] &= ~v25;
    v54 = v35;
    v55 = (v36 - 1);
    v37 = *(v57 + 16);
    v38 = v59;
    for (i = v37; ; v37 = i)
    {
      if (v38 == v37)
      {
        a2 = sub_1C6CC6BB4(v54, v53[0], v55, v31);
        goto LABEL_30;
      }

      if (v38 >= *(v57 + 16))
      {
        break;
      }

      v59 = v38;
      v65(v61, v58 + v38 * v64, v4);
      v40 = sub_1C6D79500();
      v41 = -1 << *(v31 + 32);
      v23 = v40 & ~v41;
      v25 = v23 >> 6;
      v24 = 1 << v23;
      if (((1 << v23) & v62[v23 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v65(v11, *(v63 + 48) + v23 * v64, v4);
      v42 = sub_1C6D79560();
      v28(v11, v4);
      if ((v42 & 1) == 0)
      {
        v43 = ~v41;
        while (1)
        {
          v23 = (v23 + 1) & v43;
          v25 = v23 >> 6;
          v24 = 1 << v23;
          if (((1 << v23) & v62[v23 >> 6]) == 0)
          {
            break;
          }

          v65(v11, *(v63 + 48) + v23 * v64, v4);
          v44 = sub_1C6D79560();
          v28(v11, v4);
          if (v44)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v28(v61, v4);
        v31 = v63;
LABEL_16:
        v39 = v59;
        goto LABEL_17;
      }

LABEL_25:
      v28(v61, v4);
      v45 = v54[v25];
      v54[v25] = v45 & ~v24;
      v31 = v63;
      if ((v45 & v24) == 0)
      {
        goto LABEL_16;
      }

      v46 = v55 - 1;
      v39 = v59;
      if (__OFSUB__(v55, 1))
      {
        goto LABEL_33;
      }

      --v55;
      if (!v46)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v38 = v39 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v33;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v63;

      v31 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v49);
  sub_1C6CC78FC(v51, v53[0], v63, v23, v67);
  a2 = v52;

  MEMORY[0x1CCA57100](v51, -1, -1);
LABEL_30:

  return a2;
}

void sub_1C6CC78FC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = a2;
  v9 = sub_1C6D783E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v45 = &v38 - v16;
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v17, v18);
  v51 = &v38 - v20;
  v21 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v39 = a1;
  v40 = v21 - 1;
  v22 = *a5;
  v23 = a5[1];
  v24 = *(*a5 + 16);
  if (v23 == v24)
  {
LABEL_2:

    sub_1C6CC6BB4(v39, v38, v40, a3);
    return;
  }

  v43 = v10 + 32;
  v44 = v10;
  v46 = a3 + 56;
  v41 = a5;
  v49 = v10 + 16;
  v50 = (v10 + 8);
  while (v23 < v24)
  {
    v26 = *(v10 + 80);
    v48 = *(v10 + 72);
    v27 = v45;
    v47 = *(v10 + 16);
    v47(v45, v22 + ((v26 + 32) & ~v26) + v48 * v23, v9, v19);
    a5[1] = v23 + 1;
    (*(v10 + 32))(v51, v27, v9);
    sub_1C6CC7CE0(&qword_1EDCE7A68, MEMORY[0x1E6996090]);
    v28 = sub_1C6D79500();
    v29 = -1 << *(a3 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    v32 = 1 << v30;
    if (((1 << v30) & *(v46 + 8 * (v30 >> 6))) == 0)
    {
      v25 = *v50;
LABEL_5:
      v25(v51, v9);
      goto LABEL_6;
    }

    v42 = v50 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33 = a3;
    v34 = ~v29;
    while (1)
    {
      (v47)(v13, *(v33 + 48) + v30 * v48, v9);
      sub_1C6CC7CE0(&qword_1EDCE5D20, MEMORY[0x1E6996098]);
      v35 = sub_1C6D79560();
      v25 = *v50;
      (*v50)(v13, v9);
      if (v35)
      {
        break;
      }

      v30 = (v30 + 1) & v34;
      v31 = v30 >> 6;
      v32 = 1 << v30;
      if (((1 << v30) & *(v46 + 8 * (v30 >> 6))) == 0)
      {
        a3 = v33;
        a5 = v41;
        goto LABEL_5;
      }
    }

    v25(v51, v9);
    v36 = v39[v31];
    v39[v31] = v36 & ~v32;
    if ((v36 & v32) == 0)
    {
      a3 = v33;
      a5 = v41;
LABEL_6:
      v10 = v44;
      goto LABEL_7;
    }

    v37 = v40 - 1;
    v10 = v44;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_20;
    }

    a3 = v33;
    a5 = v41;
    --v40;
    if (!v37)
    {
      return;
    }

LABEL_7:
    v22 = *a5;
    v23 = a5[1];
    v24 = *(*a5 + 16);
    if (v23 == v24)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1C6CC7CE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C6D783E0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  sub_1C6B3E190(v1 + *(v7 + 28), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(uint64_t a1)
{
  result = qword_1EDCE3448;
  if (!qword_1EDCE3448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  sub_1C6D78A30();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0) + 28);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6CC8058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  sub_1C6B3E190(a1 + *(v8 + 28), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6CC81E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0) + 28);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0) + 28);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  sub_1C6B3E190(v0 + *(v5 + 28), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0) + 28);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6CC8838()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D92B8);
  __swift_project_value_buffer(v0, qword_1EC1D92B8);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D807C0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "type";
  *(v12 + 8) = 4;
  *(v12 + 16) = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B60 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D92B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6D78AD0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1C6CC9658();
          sub_1C6D78B00();
          break;
        case 2:
          sub_1C6CC8BF8(a1, v5, a2, a3);
          break;
        case 1:
          sub_1C6D78B50();
          break;
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6CC8BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6CC98C0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6CC8D98(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 8))
      {
        sub_1C6CC9658();
        sub_1C6D78C70();
      }

      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CC8D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  sub_1C6B3E190(a1 + *(v14 + 28), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B3E224(v8);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6CC98C0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  sub_1C6CC98C0(&qword_1EC1D92D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC9028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1C6D78A30();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6CC9104(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CC98C0(&qword_1EC1D92F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CC9180@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B60 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D92B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CC9228(uint64_t a1)
{
  v2 = sub_1C6CC98C0(&qword_1EC1D7638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CC9294(uint64_t a1, uint64_t a2)
{
  sub_1C6CC98C0(&qword_1EC1D7638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventArticleSharedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B3FB88(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  v18 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0) + 28);
  v19 = *(v14 + 48);
  sub_1C6B3E190(a1 + v18, v17);
  sub_1C6B3E190(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
LABEL_11:
    v22 = 0;
    return v22 & 1;
  }

  sub_1C6B3E2B0(&v17[v19], v8);
  v21 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!sub_1C6B69164(*(a1 + 8), *(a1 + 16), *(a2 + 8)))
  {
    goto LABEL_11;
  }

  sub_1C6D78A40();
  sub_1C6CC98C0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = sub_1C6D79560();
  return v22 & 1;
}

unint64_t sub_1C6CC9658()
{
  result = qword_1EC1D92D0;
  if (!qword_1EC1D92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D92D0);
  }

  return result;
}

void sub_1C6CC97F4(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6B3FCC8(319, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6CC98C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NewsPersonalization::AutoFavoritesServiceConfiguration::LocalNewsSearchOption_optional __swiftcall AutoFavoritesServiceConfiguration.LocalNewsSearchOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AutoFavoritesServiceConfiguration.LocalNewsSearchOption.rawValue.getter()
{
  if (*v0)
  {
    return 7105633;
  }

  else
  {
    return 0x77654E656C707061;
  }
}

uint64_t sub_1C6CC99B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7105633;
  }

  else
  {
    v3 = 0x77654E656C707061;
  }

  if (v2)
  {
    v4 = 0xEE006C61636F4C73;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7105633;
  }

  else
  {
    v5 = 0x77654E656C707061;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xEE006C61636F4C73;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();
  }

  return v8 & 1;
}

uint64_t sub_1C6CC9A60()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC9AE8(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6CC9B5C(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC9BE0@<X0>(char *a2@<X8>)
{
  v3 = sub_1C6D79F50();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1C6CC9C40(uint64_t *a1@<X8>)
{
  v2 = 7105633;
  if (!*v1)
  {
    v2 = 0x77654E656C707061;
  }

  v3 = 0xEE006C61636F4C73;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6CC9D78(uint64_t a1, char a2)
{
  v3 = a1;
  if ((a2 & 1) != 0 || a1 < 0)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDCE23C0;
    sub_1C6B1D314(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C6D7EB10;
    v14 = v3;
    v15 = a2 & 1;
    sub_1C6C29158();
    v6 = sub_1C6D795F0();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1C6B2064C();
    v10 = MEMORY[0x1E69E6530];
    v11 = MEMORY[0x1E69E65A8];
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    *(v5 + 96) = v10;
    *(v5 + 104) = v11;
    v3 = 15;
    *(v5 + 64) = v9;
    *(v5 + 72) = 15;
    v12 = sub_1C6D79AC0();
    sub_1C6D78D30("AutoFavorites configuration requires maxAutoFavoritesCount be >= 0, was supplied %{public}@, falling back to default %lu", 120, 2, &dword_1C6B09000, v4, v12, v5, v14, v15);
  }

  return v3;
}

uint64_t sub_1C6CC9EA0(uint64_t a1, char a2)
{
  v3 = a1;
  if ((a2 & 1) != 0 || a1 < 0)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDCE23C0;
    sub_1C6B1D314(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C6D7EB10;
    v14 = v3;
    v15 = a2 & 1;
    sub_1C6C29158();
    v6 = sub_1C6D795F0();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1C6B2064C();
    v10 = MEMORY[0x1E69E6530];
    v11 = MEMORY[0x1E69E65A8];
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    *(v5 + 96) = v10;
    *(v5 + 104) = v11;
    v3 = 500;
    *(v5 + 64) = v9;
    *(v5 + 72) = 500;
    v12 = sub_1C6D79AC0();
    sub_1C6D78D30("AutoFavorites configuration requires maxExternalEvents be >= 0, was supplied %{public}@, falling back to default %lu", 116, 2, &dword_1C6B09000, v4, v12, v5, v14, v15);
  }

  return v3;
}

uint64_t sub_1C6CC9FC8(uint64_t a1, char a2)
{
  v3 = a1;
  if ((a2 & 1) != 0 || a1 <= -2)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDCE23C0;
    sub_1C6B1D314(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C6D7EB10;
    v14 = v3;
    v15 = a2 & 1;
    sub_1C6C29158();
    v6 = sub_1C6D795F0();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1C6B2064C();
    v10 = MEMORY[0x1E69E6530];
    v11 = MEMORY[0x1E69E65A8];
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    *(v5 + 96) = v10;
    *(v5 + 104) = v11;
    v3 = 100;
    *(v5 + 64) = v9;
    *(v5 + 72) = 100;
    v12 = sub_1C6D79AC0();
    sub_1C6D78D30("AutoFavorites configuration requires maxGemRankForAcceptance be >= -1, was supplied %{public}@, falling back to default %lu", 123, 2, &dword_1C6B09000, v4, v12, v5, v14, v15);
  }

  return v3;
}

uint64_t sub_1C6CCA0F4(uint64_t a1, char a2)
{
  v3 = a1;
  if ((a2 & 1) != 0 || a1 < 0)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDCE23C0;
    sub_1C6B1D314(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C6D7EB10;
    v14 = v3;
    v15 = a2 & 1;
    sub_1C6C29158();
    v6 = sub_1C6D795F0();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1C6B2064C();
    v10 = MEMORY[0x1E69E6530];
    v11 = MEMORY[0x1E69E65A8];
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    *(v5 + 96) = v10;
    *(v5 + 104) = v11;
    v3 = 13;
    *(v5 + 64) = v9;
    *(v5 + 72) = 13;
    v12 = sub_1C6D79AC0();
    sub_1C6D78D30("AutoFavorites configuration requires maxNewsSignalAutoFavorites be >= 0, was supplied %{public}@, falling back to default %lu", 125, 2, &dword_1C6B09000, v4, v12, v5, v14, v15);
  }

  return v3;
}

uint64_t sub_1C6CCA21C(uint64_t a1, char a2)
{
  v3 = a1;
  if ((a2 & 1) != 0 || a1 < 0)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDCE23C0;
    sub_1C6B1D314(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C6D7EB10;
    v14 = v3;
    v15 = a2 & 1;
    sub_1C6C29158();
    v6 = sub_1C6D795F0();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1C6B2064C();
    v10 = MEMORY[0x1E69E6530];
    v11 = MEMORY[0x1E69E65A8];
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    *(v5 + 96) = v10;
    *(v5 + 104) = v11;
    v3 = 2;
    *(v5 + 64) = v9;
    *(v5 + 72) = 2;
    v12 = sub_1C6D79AC0();
    sub_1C6D78D30("AutoFavorites configuration requires minExternalRecommendations be >= 0, was supplied %{public}@, falling back to default %lu", 125, 2, &dword_1C6B09000, v4, v12, v5, v14, v15);
  }

  return v3;
}

uint64_t sub_1C6CCA344(uint64_t a1, char a2, const char *a3, uint64_t a4)
{
  v7 = a1;
  if ((a2 & 1) != 0 || a1 < 0)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDCE23C0;
    sub_1C6B1D314(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C6D7EB10;
    v18 = v7;
    v19 = a2 & 1;
    sub_1C6C29158();
    v10 = sub_1C6D795F0();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v13 = sub_1C6B2064C();
    v14 = MEMORY[0x1E69E6530];
    v15 = MEMORY[0x1E69E65A8];
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    *(v9 + 96) = v14;
    *(v9 + 104) = v15;
    v7 = 5;
    *(v9 + 64) = v13;
    *(v9 + 72) = 5;
    v16 = sub_1C6D79AC0();
    sub_1C6D78D30(a3, a4, 2, &dword_1C6B09000, v8, v16, v9, v18, v19);
  }

  return v7;
}

uint64_t AutoFavoritesServiceConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CCACB8(0, &qword_1EDCDF610, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v34 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CCA820();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v55 = 0;
    sub_1C6CCA874();
    sub_1C6D79F90();
    v11 = v56;
    v12 = v56 == 2;
    v54 = 1;
    v13 = sub_1C6D79F80();
    LODWORD(v46) = v14;
    v47 = v13;
    v53 = 2;
    v15 = sub_1C6D79F80();
    LODWORD(v44) = v16;
    v45 = v15;
    v52 = 3;
    v17 = sub_1C6D79F80();
    v42 = v18;
    v43 = v17;
    v51 = 4;
    v19 = sub_1C6D79F80();
    v40 = v20;
    v41 = v19;
    v50 = 5;
    v21 = sub_1C6D79F80();
    v38 = v22;
    v39 = v21;
    v49 = 6;
    v23 = sub_1C6D79F80();
    v36 = v24;
    v37 = v23;
    v48 = 7;
    v25 = sub_1C6D79F80();
    v35 = (v12 | v11) & 1;
    v28 = v27;
    v34 = v25;
    v47 = sub_1C6CC9D78(v47, v46 & 1);
    v46 = sub_1C6CC9EA0(v45, v44 & 1);
    v45 = sub_1C6CC9FC8(v43, v42 & 1);
    v44 = sub_1C6CCA0F4(v41, v40 & 1);
    v29 = sub_1C6CCA344(v39, v38 & 1, "AutoFavorites configuration requires minChannelSuggestionsCount be >= 0, was supplied %{public}@, falling back to default %lu", 125);
    v30 = sub_1C6CCA21C(v37, v36 & 1);
    v31 = sub_1C6CCA344(v34, v28 & 1, "AutoFavorites configuration requires minTopicSuggestionsCount be >= 0, was supplied %{public}@, falling back to default %lu", 123);
    (*(v7 + 8))(v10, v6);
    *a2 = v35;
    v32 = v46;
    *(a2 + 8) = v47;
    *(a2 + 16) = v32;
    v33 = v44;
    *(a2 + 24) = v45;
    *(a2 + 32) = v33;
    *(a2 + 40) = v29;
    *(a2 + 48) = v30;
    *(a2 + 56) = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C6CCA820()
{
  result = qword_1EDCE0548;
  if (!qword_1EDCE0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0548);
  }

  return result;
}

unint64_t sub_1C6CCA874()
{
  result = qword_1EDCE0550;
  if (!qword_1EDCE0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0550);
  }

  return result;
}

unint64_t sub_1C6CCA8C8()
{
  v1 = *v0;
  v2 = 0xD000000000000018;
  if (v1 == 6)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 5u)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000017;
  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 3u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C6CCA99C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C6CCBED0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C6CCA9D0(uint64_t a1)
{
  v2 = sub_1C6CCA820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6CCAA0C(uint64_t a1)
{
  v2 = sub_1C6CCA820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoFavoritesServiceConfiguration.encode(to:)(void *a1)
{
  sub_1C6CCACB8(0, &qword_1EC1D92F8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v15[4] = *(v1 + 2);
  v15[5] = v10;
  v11 = *(v1 + 3);
  v15[2] = *(v1 + 4);
  v15[3] = v11;
  v12 = *(v1 + 5);
  v15[0] = *(v1 + 6);
  v15[1] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CCA820();
  sub_1C6D7A300();
  v24 = v9;
  v23 = 0;
  sub_1C6CCAD1C();
  v13 = v15[6];
  sub_1C6D7A090();
  if (!v13)
  {
    v22 = 1;
    sub_1C6D7A080();
    v21 = 2;
    sub_1C6D7A080();
    v20 = 3;
    sub_1C6D7A080();
    v19 = 4;
    sub_1C6D7A080();
    v18 = 5;
    sub_1C6D7A080();
    v17 = 6;
    sub_1C6D7A080();
    v16 = 7;
    sub_1C6D7A080();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1C6CCACB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6CCA820();
    v7 = a3(a1, &type metadata for AutoFavoritesServiceConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C6CCAD1C()
{
  result = qword_1EC1D9300;
  if (!qword_1EC1D9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9300);
  }

  return result;
}

unint64_t sub_1C6CCAD74()
{
  result = qword_1EC1D9308;
  if (!qword_1EC1D9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9308);
  }

  return result;
}

uint64_t sub_1C6CCADF8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C6CCAE3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C6CCAEB0(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C6CCAED0, 0, 0);
}

uint64_t sub_1C6CCAED0()
{
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_1C6CCAF7C;

  return MEMORY[0x1EEE22AF0](0, ObjectType);
}

uint64_t sub_1C6CCAF7C(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6CCB0B0, 0, 0);
  }
}

uint64_t sub_1C6CCB0B0()
{
  if (([*(v0 + 208) respondsToSelector_] & 1) != 0 && (v1 = objc_msgSend(*(v0 + 208), sel_autoFavoritesServiceConfigurationJSONData)) != 0)
  {
    v2 = *(v0 + 216);
    v3 = v1;
    v4 = sub_1C6D75E60();
    v6 = v5;

    sub_1C6D75B10();
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6CCC164();
    sub_1C6D75AF0();
    if (v2)
    {
      v24 = v6;

      if (qword_1EDCE23B8 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 184);
      v8 = qword_1EDCE23C0;
      v9 = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C6D7E630;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0xE000000000000000;
      *(v0 + 176) = v2;
      sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
      sub_1C6D79E60();
      v12 = *(v0 + 144);
      v11 = *(v0 + 152);
      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = sub_1C6B2064C();
      *(v10 + 32) = v12;
      *(v10 + 40) = v11;
      sub_1C6D78D30("Failed to decode auto favorites service configuration, returning default. Error=%{public}@", 90, 2, &dword_1C6B09000, v8, v9, v10);
      sub_1C6B1C9F0(v4, v24);

      swift_unknownObjectRelease();

      *v7 = 1;
      *(v7 + 8) = xmmword_1C6D91C80;
      *(v7 + 24) = xmmword_1C6D91C90;
      *(v7 + 40) = 5;
      *(v7 + 48) = xmmword_1C6D91CA0;
    }

    else
    {

      v25 = *(v0 + 16);
      v26 = *(v0 + 32);
      v27 = *(v0 + 48);
      v28 = *(v0 + 64);
      if (qword_1EDCE23B8 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 184);
      v19 = qword_1EDCE23C0;
      sub_1C6B1D314(0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C6D7E630;
      *(v0 + 160) = 0;
      *(v0 + 168) = 0xE000000000000000;
      *(v0 + 80) = v25;
      *(v0 + 96) = v26;
      *(v0 + 112) = v27;
      *(v0 + 128) = v28;
      sub_1C6D79E60();
      v21 = *(v0 + 160);
      v22 = *(v0 + 168);
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1C6B2064C();
      *(v20 + 32) = v21;
      *(v20 + 40) = v22;
      v23 = sub_1C6D79AC0();
      sub_1C6D78D30("Resolved configuration %{public}@", 33, 2, &dword_1C6B09000, v19, v23, v20);
      sub_1C6B1C9F0(v4, v6);
      swift_unknownObjectRelease();

      *v18 = v25;
      v18[1] = v26;
      v18[2] = v27;
      v18[3] = v28;
    }
  }

  else
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 184);
    v14 = qword_1EDCE23C0;
    v15 = sub_1C6D79AC0();
    sub_1C6D78D30("Didn't find auto favorites service configuration, returning default", 67, 2, &dword_1C6B09000, v14, v15, MEMORY[0x1E69E7CC0]);
    swift_unknownObjectRelease();
    *v13 = 1;
    *(v13 + 8) = xmmword_1C6D91C80;
    *(v13 + 24) = xmmword_1C6D91C90;
    *(v13 + 40) = 5;
    *(v13 + 48) = xmmword_1C6D91CA0;
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1C6CCB4F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6BE1AB0;

  return sub_1C6CCAEB0(a1);
}

uint64_t sub_1C6CCB594(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C6CCB5B4, 0, 0);
}

uint64_t sub_1C6CCB5B4()
{
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_1C6CCB660;

  return MEMORY[0x1EEE22AF0](0, ObjectType);
}

uint64_t sub_1C6CCB660(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6CCB794, 0, 0);
  }
}

uint64_t sub_1C6CCB794()
{
  if (([*(v0 + 208) respondsToSelector_] & 1) != 0 && (v1 = objc_msgSend(*(v0 + 208), sel_recipeAutoFavoritesServiceConfigurationJSONData)) != 0)
  {
    v2 = *(v0 + 216);
    v3 = v1;
    v4 = sub_1C6D75E60();
    v6 = v5;

    sub_1C6D75B10();
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6CCC164();
    sub_1C6D75AF0();
    if (v2)
    {
      v24 = v6;

      if (qword_1EDCE23B8 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 184);
      v8 = qword_1EDCE23C0;
      v9 = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C6D7E630;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0xE000000000000000;
      *(v0 + 176) = v2;
      sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
      sub_1C6D79E60();
      v12 = *(v0 + 144);
      v11 = *(v0 + 152);
      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = sub_1C6B2064C();
      *(v10 + 32) = v12;
      *(v10 + 40) = v11;
      sub_1C6D78D30("Failed to decode recipe auto favorites service configuration, returning default. Error=%{public}@", 97, 2, &dword_1C6B09000, v8, v9, v10);
      sub_1C6B1C9F0(v4, v24);

      swift_unknownObjectRelease();

      *v7 = 1;
      *(v7 + 8) = xmmword_1C6D91C80;
      *(v7 + 24) = xmmword_1C6D91C90;
      *(v7 + 40) = xmmword_1C6D91CB0;
      *(v7 + 56) = 5;
    }

    else
    {

      v25 = *(v0 + 16);
      v26 = *(v0 + 32);
      v27 = *(v0 + 48);
      v28 = *(v0 + 64);
      if (qword_1EDCE23B8 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 184);
      v19 = qword_1EDCE23C0;
      sub_1C6B1D314(0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C6D7E630;
      *(v0 + 160) = 0;
      *(v0 + 168) = 0xE000000000000000;
      *(v0 + 80) = v25;
      *(v0 + 96) = v26;
      *(v0 + 112) = v27;
      *(v0 + 128) = v28;
      sub_1C6D79E60();
      v21 = *(v0 + 160);
      v22 = *(v0 + 168);
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1C6B2064C();
      *(v20 + 32) = v21;
      *(v20 + 40) = v22;
      v23 = sub_1C6D79AC0();
      sub_1C6D78D30("Resolved configuration %{public}@", 33, 2, &dword_1C6B09000, v19, v23, v20);
      sub_1C6B1C9F0(v4, v6);
      swift_unknownObjectRelease();

      *v18 = v25;
      v18[1] = v26;
      v18[2] = v27;
      v18[3] = v28;
    }
  }

  else
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 184);
    v14 = qword_1EDCE23C0;
    v15 = sub_1C6D79AC0();
    sub_1C6D78D30("Didn't find recipe auto favorites service configuration, returning default", 74, 2, &dword_1C6B09000, v14, v15, MEMORY[0x1E69E7CC0]);
    swift_unknownObjectRelease();
    *v13 = 1;
    *(v13 + 8) = xmmword_1C6D91C80;
    *(v13 + 24) = xmmword_1C6D91C90;
    *(v13 + 40) = xmmword_1C6D91CB0;
    *(v13 + 56) = 5;
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t getEnumTagSinglePayload for AutoFavoritesServiceConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoFavoritesServiceConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6CCBD30()
{
  result = qword_1EC1D9310;
  if (!qword_1EC1D9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9310);
  }

  return result;
}

uint64_t sub_1C6CCBD84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6BB6A40;

  return sub_1C6CCB594(a1);
}

unint64_t sub_1C6CCBE24()
{
  result = qword_1EDCE0538;
  if (!qword_1EDCE0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0538);
  }

  return result;
}

unint64_t sub_1C6CCBE7C()
{
  result = qword_1EDCE0540;
  if (!qword_1EDCE0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0540);
  }

  return result;
}

uint64_t sub_1C6CCBED0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C6DA58E0 == a2;
  if (v3 || (sub_1C6D7A130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C6DA5900 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C6DA5920 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C6DA5940 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C6DA5960 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C6DA5980 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C6DA59A0 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C6DA59C0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C6D7A130();

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

unint64_t sub_1C6CCC164()
{
  result = qword_1EDCE0528;
  if (!qword_1EDCE0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0528);
  }

  return result;
}

unint64_t sub_1C6CCC1B8()
{
  result = qword_1EC1D9320;
  if (!qword_1EC1D9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9320);
  }

  return result;
}

uint64_t sub_1C6CCC230()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v0[5] = (*(v3 + 24))(v2, v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1C6CCC30C;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1C6CCC30C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1C6CCCBC8;
  }

  else
  {

    v2 = sub_1C6CCCBD4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6CCC428()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6CCCBD0;

  return sub_1C6CCC210();
}

uint64_t sub_1C6CCC4D8()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v0[5] = (*(v3 + 32))(v2, v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1C6CCC5B4;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1C6CCC5B4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1C6CCC918;
  }

  else
  {

    v2 = sub_1C6CCC6D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6CCC6D0()
{
  v1 = v0[3];
  v29 = v0[2];
  v2 = *(v29 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v27 = v0[3];
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C6B397D4(0, v2, 0);
    v4 = 0;
    v5 = v30;
    v6 = *(v30 + 16);
    v7 = 24 * v6;
    do
    {
      v8 = *(v29 + v4 + 32);
      v9 = *(v29 + v4 + 40);
      v10 = *(v29 + v4 + 48);
      v11 = v6 + 1;
      v12 = *(v30 + 24);

      if (v6 >= v12 >> 1)
      {
        sub_1C6B397D4((v12 > 1), v11, 1);
      }

      *(v30 + 16) = v11;
      v13 = v30 + v7 + v4;
      *(v13 + 32) = v8;
      *(v13 + 40) = v9;
      *(v13 + 48) = v10;
      v4 += 24;
      ++v6;
      --v2;
    }

    while (v2);
    v1 = v27;
    v3 = MEMORY[0x1E69E7CC0];
    v14 = *(v27 + 16);
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_13:

    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v14 = *(v1 + 16);
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_7:
  v31 = v3;
  sub_1C6B397D4(0, v14, 0);
  v15 = 0;
  v16 = v31;
  v17 = *(v31 + 16);
  v28 = 24 * v17;
  do
  {
    v18 = v1;
    v19 = v1 + v15;
    v20 = *(v1 + v15 + 32);
    v21 = *(v19 + 40);
    v22 = *(v19 + 48);
    v23 = *(v31 + 24);

    if (v17 >= v23 >> 1)
    {
      sub_1C6B397D4((v23 > 1), v17 + 1, 1);
    }

    *(v31 + 16) = v17 + 1;
    v24 = v31 + v28 + v15;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 48) = v22;
    v15 += 24;
    ++v17;
    --v14;
    v1 = v18;
  }

  while (v14);

LABEL_14:
  v25 = v0[1];

  return v25(v5, v16);
}

uint64_t sub_1C6CCC918()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6CCC97C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6CCCA0C;

  return sub_1C6CCC4B8();
}

uint64_t sub_1C6CCCA0C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C6CCCB30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1C6CCCB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1C6CCCBD8(uint64_t a1, uint64_t a2, void *a3)
{
  v200 = a3;
  v193 = a2;
  v192 = a1;
  v180 = sub_1C6D76BE0();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180, v4);
  v178 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CCF130(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v172 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CCF164(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v195 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_1C6D770A0();
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198, v12);
  v174 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CCF198(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v186 = &v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v183 = &v169 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v191 = &v169 - v22;
  v23 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v201 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v185 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v182 = &v169 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v190 = &v169 - v31;
  v32 = sub_1C6D77050();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v177 = &v169 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v187 = &v169 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v184 = &v169 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v175 = &v169 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v176 = &v169 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v181 = &v169 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v170 = &v169 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v171 = &v169 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v188 = &v169 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v189 = &v169 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v169 - v65;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v169 - v69;
  v71 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v194 = v3;
  v72 = *(v3 + v71);
  swift_beginAccess();
  v202 = v72;

  sub_1C6D76FF0();

  v73 = sub_1C6B670DC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v75 = *(v73 + 2);
  v74 = *(v73 + 3);
  v196 = v23;
  if (v75 >= v74 >> 1)
  {
    v73 = sub_1C6B670DC((v74 > 1), v75 + 1, 1, v73);
  }

  *(v73 + 2) = v75 + 1;
  v173 = v33;
  v77 = *(v33 + 4);
  v76 = v33 + 32;
  v78 = (v76[48] + 32) & ~v76[48];
  v79 = *(v76 + 5);
  v204 = v77;
  v77(&v73[v78 + v79 * v75], v70, v32);
  v212 = v73;
  v80 = v202;
  swift_beginAccess();
  v81 = *(v80 + 2);
  v82 = *(v81 + 16);
  v83 = MEMORY[0x1E69E7CC0];
  v203 = v32;
  if (v82)
  {
    v209 = MEMORY[0x1E69E7CC0];

    sub_1C6B39974(0, v82, 0);
    v83 = v209;
    v199 = v81;
    v84 = v81 + 40;
    do
    {

      sub_1C6D76FF0();

      v209 = v83;
      v86 = *(v83 + 16);
      v85 = *(v83 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_1C6B39974((v85 > 1), v86 + 1, 1);
        v83 = v209;
      }

      *(v83 + 16) = v86 + 1;
      v32 = v203;
      v204(v83 + v78 + v86 * v79, v66, v203);
      v84 += 16;
      --v82;
    }

    while (v82);
  }

  sub_1C6B39018(v83);
  v87 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  v88 = v202;
  swift_beginAccess();
  v89 = &v88[v87];
  v90 = v191;
  sub_1C6CCF1F0(v89, v191, sub_1C6CCF198);
  v91 = v201 + 48;
  v92 = *(v201 + 48);
  v93 = v196;
  if (v92(v90, 1, v196) == 1)
  {
    v94 = v190;
    *(v190 + 3) = 0;
    *v94 = 0;
    sub_1C6D78A30();
    if (v92(v90, 1, v93) != 1)
    {
      sub_1C6CCF09C(v90, sub_1C6CCF198);
    }
  }

  else
  {
    v94 = v190;
    sub_1C6CCF258(v90, v190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  v95 = *(v94 + 3);
  sub_1C6CCF09C(v94, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v201 = v91;
  v199 = v87;
  if (v95)
  {
    sub_1C6D77000();
    v96 = v212;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v96 = sub_1C6B670DC(0, *(v96 + 2) + 1, 1, v96);
    }

    v98 = *(v96 + 2);
    v97 = *(v96 + 3);
    v99 = v98 + 1;
    if (v98 >= v97 >> 1)
    {
      v96 = sub_1C6B670DC((v97 > 1), v98 + 1, 1, v96);
    }

    v100 = &v211;
  }

  else
  {
    sub_1C6D77040();
    v96 = v212;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v96 = sub_1C6B670DC(0, *(v96 + 2) + 1, 1, v96);
    }

    v98 = *(v96 + 2);
    v101 = *(v96 + 3);
    v99 = v98 + 1;
    if (v98 >= v101 >> 1)
    {
      v96 = sub_1C6B670DC((v101 > 1), v98 + 1, 1, v96);
    }

    v100 = &v210;
  }

  v102 = *(v100 - 32);
  *(v96 + 2) = v99;
  v103 = (v204)(&v96[v78 + v98 * v79], v102, v32);
  v212 = v96;
  v104 = v202;
  v105 = *(v202 + 2);
  MEMORY[0x1EEE9AC00](v103, v106);
  v107 = v193;
  *(&v169 - 6) = v192;
  *(&v169 - 5) = v107;
  v108 = v200;
  *(&v169 - 4) = v194;
  *(&v169 - 3) = v108;
  *(&v169 - 2) = &v212;

  sub_1C6D42A1C(sub_1C6CCF1CC, (&v169 - 8), v105);

  v109 = &v104[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
  swift_beginAccess();
  v110 = v197;
  if (v109[8] != 1 || (v111 = *v109, (*v109 - 26) < 0x38) || ((1 << v111) & 0x1FFFFDF) != 0)
  {
    v112 = v195;
    (*(v197 + 56))(v195, 1, 1, v198);
    v113 = sub_1C6CCF164;
LABEL_28:
    sub_1C6CCF09C(v112, v113);
    goto LABEL_29;
  }

  v160 = v111 == 5;
  v161 = MEMORY[0x1E69E3970];
  if (v160)
  {
    v161 = MEMORY[0x1E69E39C8];
  }

  v162 = v195;
  v163 = v198;
  (*(v197 + 104))(v195, *v161, v198);
  (*(v110 + 56))(v162, 0, 1, v163);
  v164 = v174;
  (*(v110 + 32))(v174, v162, v163);
  v112 = v172;
  sub_1C6D77010();
  v104 = v173;
  if ((*(v173 + 6))(v112, 1, v32) == 1)
  {
    (*(v110 + 8))(v164, v198);
    v113 = sub_1C6CCF130;
    goto LABEL_28;
  }

  v165 = v171;
  v204(v171, v112, v32);
  v166 = *(v104 + 2);
  v104 = v170;
  v166(v170, v165, v32);
  v112 = v212;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v112 = sub_1C6B670DC(0, *(v112 + 2) + 1, 1, v112);
  }

  v168 = *(v112 + 2);
  v167 = *(v112 + 3);
  if (v168 >= v167 >> 1)
  {
    v112 = sub_1C6B670DC((v167 > 1), v168 + 1, 1, v112);
  }

  (*(v173 + 1))(v171, v32);
  (*(v197 + 8))(v174, v198);
  *(v112 + 2) = v168 + 1;
  v204(&v112[v78 + v168 * v79], v104, v32);
  v212 = v112;
LABEL_29:
  v114 = [v200 articleLengthMediumThreshold];
  if (!HIDWORD(v114))
  {
LABEL_33:
    v112 = v114;
    goto LABEL_34;
  }

  v114 = [objc_opt_self() defaultArticleLengthMediumThreshold];
  if ((v114 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_96;
  }

  v112 = v114;
  if (HIDWORD(v114))
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_34:
  v115 = [v200 articleLengthLongThreshold];
  if (!HIDWORD(v115))
  {
LABEL_38:
    v116 = v115;
    goto LABEL_39;
  }

  v115 = [objc_opt_self() defaultArticleLengthLongThreshold];
  if ((v115 & 0x8000000000000000) != 0)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v116 = v115;
  if (HIDWORD(v115))
  {
    __break(1u);
    goto LABEL_38;
  }

LABEL_39:
  v117 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  v118 = v202;
  swift_beginAccess();
  v119 = *&v118[v117];
  if (v119 && v119 < v112)
  {
    v120 = v179;
    v121 = v178;
    v122 = v180;
    (*(v179 + 104))(v178, *MEMORY[0x1E69E3578], v180);
    sub_1C6D76FB0();
    (*(v120 + 8))(v121, v122);
    v123 = v212;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v123 = sub_1C6B670DC(0, *(v123 + 2) + 1, 1, v123);
    }

    v104 = v199;
    v125 = *(v123 + 2);
    v124 = *(v123 + 3);
    if (v125 >= v124 >> 1)
    {
      v123 = sub_1C6B670DC((v124 > 1), v125 + 1, 1, v123);
    }

    *(v123 + 2) = v125 + 1;
    v126 = &v123[v78 + v125 * v79];
    v127 = &v208;
  }

  else if (v119 < v112 || v119 >= v116)
  {
    v104 = v199;
    if (v119 < v116)
    {
      goto LABEL_60;
    }

    v133 = v179;
    v134 = v178;
    v135 = v180;
    (*(v179 + 104))(v178, *MEMORY[0x1E69E3570], v180);
    sub_1C6D76FB0();
    (*(v133 + 8))(v134, v135);
    v123 = v212;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v123 = sub_1C6B670DC(0, *(v123 + 2) + 1, 1, v123);
    }

    v137 = *(v123 + 2);
    v136 = *(v123 + 3);
    v104 = v199;
    if (v137 >= v136 >> 1)
    {
      v123 = sub_1C6B670DC((v136 > 1), v137 + 1, 1, v123);
    }

    *(v123 + 2) = v137 + 1;
    v126 = &v123[v78 + v137 * v79];
    v127 = &v206;
  }

  else
  {
    v128 = v179;
    v129 = v178;
    v130 = v180;
    (*(v179 + 104))(v178, *MEMORY[0x1E69E3580], v180);
    sub_1C6D76FB0();
    (*(v128 + 8))(v129, v130);
    v123 = v212;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v123 = sub_1C6B670DC(0, *(v123 + 2) + 1, 1, v123);
    }

    v132 = *(v123 + 2);
    v131 = *(v123 + 3);
    v104 = v199;
    if (v132 >= v131 >> 1)
    {
      v123 = sub_1C6B670DC((v131 > 1), v132 + 1, 1, v123);
    }

    *(v123 + 2) = v132 + 1;
    v126 = &v123[v78 + v132 * v79];
    v127 = &v207;
  }

  v204(v126, *(v127 - 32), v32);
  v212 = v123;
LABEL_60:
  v138 = v183;
  sub_1C6CCF1F0(&v104[v202], v183, sub_1C6CCF198);
  v139 = v92(v138, 1, v93);
  v140 = v182;
  if (v139 == 1)
  {
    *(v182 + 3) = 0;
    *v140 = 0;
    sub_1C6D78A30();
    if (v92(v138, 1, v93) != 1)
    {
      sub_1C6CCF09C(v138, sub_1C6CCF198);
    }
  }

  else
  {
    sub_1C6CCF258(v138, v182, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  v141 = *(v140 + 4);
  sub_1C6CCF09C(v140, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if (v141)
  {

    sub_1C6D76FD0();

    v112 = v212;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_66:
      v143 = *(v112 + 2);
      v142 = *(v112 + 3);
      if (v143 >= v142 >> 1)
      {
        v112 = sub_1C6B670DC((v142 > 1), v143 + 1, 1, v112);
      }

      *(v112 + 2) = v143 + 1;
      v204(&v112[v78 + v143 * v79], v184, v32);
      v212 = v112;
      goto LABEL_69;
    }

LABEL_97:
    v112 = sub_1C6B670DC(0, *(v112 + 2) + 1, 1, v112);
    goto LABEL_66;
  }

LABEL_69:
  v144 = v186;
  sub_1C6CCF1F0(&v104[v202], v186, sub_1C6CCF198);
  if (v92(v144, 1, v93) == 1)
  {
    v145 = v185;
    *(v185 + 3) = 0;
    *v145 = 0;
    sub_1C6D78A30();
    if (v92(v144, 1, v93) != 1)
    {
      sub_1C6CCF09C(v144, sub_1C6CCF198);
    }
  }

  else
  {
    v145 = v185;
    sub_1C6CCF258(v144, v185, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  v146 = *(v145 + 5);
  sub_1C6CCF09C(v145, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if (v146)
  {
    sub_1C6D77020();
    v147 = v212;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v147 = sub_1C6B670DC(0, *(v147 + 2) + 1, 1, v147);
    }

    v149 = *(v147 + 2);
    v148 = *(v147 + 3);
    if (v149 >= v148 >> 1)
    {
      v147 = sub_1C6B670DC((v148 > 1), v149 + 1, 1, v147);
    }

    *(v147 + 2) = v149 + 1;
    v204(&v147[v78 + v149 * v79], v187, v32);
    v212 = v147;
  }

  v150 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  v151 = v202;
  swift_beginAccess();
  v152 = *&v151[v150];
  v153 = *(v152 + 2);
  v154 = MEMORY[0x1E69E7CC0];
  if (v153)
  {
    v205 = MEMORY[0x1E69E7CC0];

    sub_1C6B39974(0, v153, 0);
    v154 = v205;
    v202 = v152;
    v155 = v152 + 40;
    v156 = v177;
    do
    {

      sub_1C6D76FA0();

      v205 = v154;
      v158 = *(v154 + 16);
      v157 = *(v154 + 24);
      if (v158 >= v157 >> 1)
      {
        sub_1C6B39974((v157 > 1), v158 + 1, 1);
        v154 = v205;
      }

      *(v154 + 16) = v158 + 1;
      v204(v154 + v78 + v158 * v79, v156, v203);
      v155 += 16;
      --v153;
    }

    while (v153);
  }

  sub_1C6B39018(v154);
  return v212;
}

id sub_1C6CCE170(uint64_t *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v29 = a6;
  v9 = sub_1C6D77050();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v28 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - v15;
  v17 = *a1;
  v31 = a1[1];
  v32 = v17;
  type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  swift_beginAccess();

  sub_1C6D76FF0();

  v18 = a2(v16);
  v30 = v10;
  v19 = *(v10 + 8);
  v19(v16, v9);
  result = [a5 publisherTopicPairPublisherEventCountThreshold];
  if (v18 >= result)
  {
    sub_1C6D76FF0();
    v21 = a2(v16);
    v19(v16, v9);
    result = [a5 publisherTopicPairTopicEventCountThreshold];
    if (v21 >= result)
    {

      v22 = v28;
      sub_1C6D76FC0();

      v23 = v29;
      v24 = *v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1C6B670DC(0, v24[2] + 1, 1, v24);
        *v23 = v24;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_1C6B670DC((v26 > 1), v27 + 1, 1, v24);
        *v23 = v24;
      }

      v24[2] = v27 + 1;
      return (*(v30 + 32))(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, v22, v9);
    }
  }

  return result;
}

char *sub_1C6CCE420(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CCF0FC(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v27 - v22;
  v24 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6CCF1F0(v3 + *(v24 + 20), v14, sub_1C6CCF0FC);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1C6CCF09C(v14, sub_1C6CCF0FC);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C6CCF258(v14, v23, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6CCF1F0(v23, v19, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6CCF258(v19, v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v26 = sub_1C6CCCBD8(a1, a2, a3);
    sub_1C6CCF09C(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6CCF09C(v23, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    return v26;
  }
}

uint64_t sub_1C6CCE6B8()
{
  v1 = v0;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = (&v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = (&v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CCF1F0(v1, v33, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 10)
  {
    if (EnumCaseMultiPayload > 17)
    {
      if (EnumCaseMultiPayload == 18)
      {
        sub_1C6CCF258(v33, v29, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
        v35 = *v29;

        v36 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen;
        v37 = v29;
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload == 19)
      {
        sub_1C6CCF258(v33, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
        v35 = *v13;

        v36 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore;
        v37 = v13;
LABEL_17:
        sub_1C6CCF09C(v37, v36);
        return v35;
      }
    }

    else if ((EnumCaseMultiPayload - 12) >= 6)
    {
      sub_1C6CCF258(v33, v5, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      v39 = *v5;

      sub_1C6CCF09C(v5, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      return v39;
    }

LABEL_8:
    sub_1C6CCF09C(v33, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    return 0;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload <= 8)
  {
    if (EnumCaseMultiPayload == 7)
    {
      sub_1C6CCF258(v33, v25, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      v35 = *v25;

      v36 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted;
      v37 = v25;
    }

    else
    {
      sub_1C6CCF258(v33, v21, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      v35 = *v21;

      v36 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted;
      v37 = v21;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 9)
  {
    sub_1C6CCF258(v33, v17, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    v35 = *v17;

    v36 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
    v37 = v17;
    goto LABEL_17;
  }

  sub_1C6CCF258(v33, v9, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  v39 = *v9;

  sub_1C6CCF09C(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  return v39;
}

void *sub_1C6CCEBD8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C6BED644(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v9);
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_1C6CCF09C(v9, sub_1C6BED644);
    v11 = 0;
  }

  else
  {
    v11 = sub_1C6CCE420(a1, a2, a3);
    sub_1C6CCF09C(v9, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v33[4] = v11;
  sub_1C6CCE6B8();
  if (v12)
  {
    sub_1C6CCF038(0, &unk_1EDCDF5B8, MEMORY[0x1E69E36D8], MEMORY[0x1E69E6F90]);
    sub_1C6D77050();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C6D7E630;
    sub_1C6D76FF0();
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  v33[5] = v13;
  v15 = MEMORY[0x1E69E7CC0];
  while (v14 != 2)
  {
    v16 = v33[v14++ + 4];
    if (v16)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1C6B67110(0, v15[2] + 1, 1, v15);
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        v15 = sub_1C6B67110((v17 > 1), v18 + 1, 1, v15);
      }

      v15[2] = v18 + 1;
      v15[v18 + 4] = v16;
    }
  }

  sub_1C6CCF038(0, &unk_1EDCDFAA8, sub_1C6B68C74, MEMORY[0x1E69E6720]);
  result = swift_arrayDestroy();
  v20 = v15[2];
  if (!v20)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_34:

    return v22;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  while (v21 < v15[2])
  {
    v23 = v15[v21 + 4];
    v24 = *(v23 + 16);
    v25 = v22[2];
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v26 <= v22[3] >> 1)
    {
      if (*(v23 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v28 = v25 + v24;
      }

      else
      {
        v28 = v25;
      }

      v22 = sub_1C6B670DC(isUniquelyReferenced_nonNull_native, v28, 1, v22);
      if (*(v23 + 16))
      {
LABEL_29:
        v29 = (v22[3] >> 1) - v22[2];
        result = sub_1C6D77050();
        if (v29 < v24)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v24)
        {
          v30 = v22[2];
          v31 = __OFADD__(v30, v24);
          v32 = v30 + v24;
          if (v31)
          {
            goto LABEL_39;
          }

          v22[2] = v32;
        }

        goto LABEL_18;
      }
    }

    if (v24)
    {
      goto LABEL_37;
    }

LABEL_18:
    if (v20 == ++v21)
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
LABEL_39:
  __break(1u);
  return result;
}

void sub_1C6CCF038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6CCF09C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6CCF1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CCF258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t Com_Apple_News_Personalization_FeedType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x19;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6CCF31C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_News_Personalization_FeedType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C6CCF344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C0FBE8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6CCF390()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE2A80);
  __swift_project_value_buffer(v0, qword_1EDCE2A80);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1C6D921D0;
  v5 = v56 + v4;
  v6 = v56 + v4 + *(v2 + 56);
  *(v56 + v4) = 0;
  *v6 = "FEED_TYPE_UNKNOWN";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v56 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "FEED_TYPE_FOR_YOU";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v56 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "FEED_TYPE_MAGAZINE";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v56 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "FEED_TYPE_MAGAZINE_CATALOG";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v56 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "FEED_TYPE_MAGAZINE_CATEGORY";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v56 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "FEED_TYPE_MAGAZINE_DOWNLOADS";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v9();
  v19 = (v56 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "FEED_TYPE_CHANNEL";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v56 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "FEED_TYPE_TOPIC";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v9();
  v23 = v56 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "FEED_TYPE_MY_MAGAZINES";
  *(v23 + 8) = 22;
  *(v23 + 16) = 2;
  v9();
  v24 = (v56 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "FEED_TYPE_EOA";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v9();
  v26 = (v56 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "FEED_TYPE_AUDIO";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v9();
  v28 = (v56 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "FEED_TYPE_AUDIO_HISTORY";
  *(v29 + 1) = 23;
  v29[16] = 2;
  v9();
  v30 = (v56 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "FEED_TYPE_AUDIO_PLAYLIST";
  *(v31 + 1) = 24;
  v31[16] = 2;
  v9();
  v32 = (v56 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "FEED_TYPE_SAVED";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v9();
  v34 = (v56 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "FEED_TYPE_HISTORY";
  *(v35 + 1) = 17;
  v35[16] = 2;
  v9();
  v36 = (v56 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "FEED_TYPE_SEARCH";
  *(v37 + 1) = 16;
  v37[16] = 2;
  v9();
  v38 = v56 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "FEED_TYPE_SEARCH_HOME";
  *(v38 + 8) = 21;
  *(v38 + 16) = 2;
  v9();
  v39 = (v56 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "FEED_TYPE_SHARED_WITH_YOU";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v9();
  v41 = (v56 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "FEED_TYPE_SPORTS";
  *(v42 + 1) = 16;
  v42[16] = 2;
  v9();
  v43 = (v56 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "FEED_TYPE_SPORTS_EVENT";
  *(v44 + 1) = 22;
  v44[16] = 2;
  v9();
  v45 = (v56 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "FEED_TYPE_PUZZLE_HUB";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v9();
  v47 = (v56 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "FEED_TYPE_PUZZLE_TYPE";
  *(v48 + 1) = 21;
  v48[16] = 2;
  v9();
  v49 = (v56 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "FEED_TYPE_RECIPE_BOX";
  *(v50 + 1) = 20;
  v50[16] = 2;
  v9();
  v51 = (v56 + v4 + 23 * v3);
  v52 = v51 + *(v2 + 56);
  *v51 = 23;
  *v52 = "FEED_TYPE_FOOD_HUB";
  *(v52 + 1) = 18;
  v52[16] = 2;
  v9();
  v53 = (v56 + v4 + 24 * v3);
  v54 = v53 + *(v2 + 56);
  *v53 = 24;
  *v54 = "FEED_TYPE_RECIPE_CATALOG";
  *(v54 + 1) = 24;
  v54[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_FeedType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE2A78 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE2A80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6CCFB54()
{
  result = qword_1EDCE2A60;
  if (!qword_1EDCE2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2A60);
  }

  return result;
}

unint64_t sub_1C6CCFBAC()
{
  result = qword_1EDCE2A50;
  if (!qword_1EDCE2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2A50);
  }

  return result;
}

unint64_t sub_1C6CCFC04()
{
  result = qword_1EC1D9328;
  if (!qword_1EC1D9328)
  {
    sub_1C6CCFC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9328);
  }

  return result;
}

void sub_1C6CCFC5C()
{
  if (!qword_1EC1D9330)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D9330);
    }
  }
}

unint64_t sub_1C6CCFCB0()
{
  result = qword_1EDCE2A58;
  if (!qword_1EDCE2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2A58);
  }

  return result;
}

uint64_t sub_1C6CCFD04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE2A78 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE2A80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CCFDBC(uint64_t a1)
{
  v36 = sub_1C6D78F60();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v28 = v1;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v6, 0);
    v39 = v40;
    v8 = a1 + 64;
    result = sub_1C6D79CC0();
    v9 = result;
    v10 = 0;
    v33 = v3 + 8;
    v34 = v3 + 16;
    v29 = a1 + 72;
    v30 = v6;
    v31 = v3;
    v32 = a1 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v37 = *(a1 + 36);
      v13 = v35;
      v14 = v36;
      (*(v3 + 16))(v35, *(a1 + 56) + *(v3 + 72) * v9, v36);
      v38 = sub_1C6D78F50();
      v16 = v15;
      result = (*(v3 + 8))(v13, v14);
      v17 = v39;
      v40 = v39;
      v19 = *(v39 + 16);
      v18 = *(v39 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1C6B39280((v18 > 1), v19 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v38;
      *(v20 + 40) = v16;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v8 = v32;
      v21 = *(v32 + 8 * v12);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v39 = v17;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v31;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v25 = (v29 + 8 * v12);
        v3 = v31;
        while (v24 < (v11 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1C6B360A8(v9, v37, 0);
            v11 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1C6B360A8(v9, v37, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v30)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6CD00C4()
{
  v1 = v0;
  v2 = sub_1C6D75F50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v6 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - v9;
  sub_1C6CD037C(v11);
  if (qword_1EDCE0560 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDCE0568;
  sub_1C6B1A5AC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C6D7E630;
  sub_1C6CD21BC();
  v14 = sub_1C6D7A0E0();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1C6B2064C();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = sub_1C6D79AC0();
  sub_1C6D78D30("Processing vended notifications for User Event History with most recent processed notification date %{public}@", 110, 2, &dword_1C6B09000, v12, v17, v13);

  sub_1C6B1B3FC(0, &qword_1EDCE7A70, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  (*(v3 + 16))(v6, v10, v2);
  v18 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  (*(v3 + 32))(v19 + v18, v6, v2);

  v20 = sub_1C6D78290();
  (*(v3 + 8))(v10, v2);
  return v20;
}

uint64_t sub_1C6CD037C(uint64_t a1)
{
  v1 = NewsCoreUserDefaults();
  v2 = *MEMORY[0x1E69B5018];
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
    sub_1C6B62420(&v6, v7);
    sub_1C6CD24EC(v7, &qword_1EDCE7CC0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C6B1B3FC);
    v4 = NewsCoreUserDefaults();
    [v4 doubleForKey_];

    return sub_1C6D75E90();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_1C6CD24EC(v7, &qword_1EDCE7CC0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C6B1B3FC);
    return sub_1C6D75EB0();
  }
}

uint64_t sub_1C6CD04E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v4 = sub_1C6D78F60();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6CD05B0, 0, 0);
}

uint64_t sub_1C6CD05B0()
{
  v1 = *(v0 + 56);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1C6CD0670;

  return MEMORY[0x1EEE20E48](v0 + 16, v2, v3);
}

uint64_t sub_1C6CD0670()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1C6CD0FA0;
  }

  else
  {
    v2 = sub_1C6CD0784;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6CD0784()
{
  isUniquelyReferenced_nonNull_native = v0;
  v2 = v0[8];
  v3 = v0[5];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  *(swift_task_alloc() + 16) = v2;
  v7 = sub_1C6D79690();

  v53 = *(v7 + 16);
  if (v53)
  {
    v8 = 0;
    v9 = v0[10];
    v51 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v52 = v9;
    v50 = (v9 + 8);
    v47 = (v9 + 40);
    v48 = (v9 + 32);
    v10 = MEMORY[0x1E69E7CC8];
    v49 = v7;
    while (1)
    {
      if (v8 >= *(v7 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v13 = *(isUniquelyReferenced_nonNull_native + 88);
      v12 = *(isUniquelyReferenced_nonNull_native + 96);
      v14 = *(isUniquelyReferenced_nonNull_native + 72);
      v15 = *(v52 + 72);
      v16 = *(v52 + 16);
      v16(v12, v51 + v15 * v8, v14);
      v17 = sub_1C6D78F50();
      v19 = v18;
      v16(v13, v12, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v10;
      v20 = sub_1C6B5DEA8(v17, v19);
      v22 = v10[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_30;
      }

      v26 = v21;
      if (v10[3] >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v20;
          sub_1C6B74D04();
          v20 = v33;
        }
      }

      else
      {
        sub_1C6B72048(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_1C6B5DEA8(v17, v19);
        if ((v26 & 1) != (v27 & 1))
        {

          return sub_1C6D7A1C0();
        }
      }

      v29 = v0[11];
      v28 = v0[12];
      isUniquelyReferenced_nonNull_native = v0[9];
      if (v26)
      {
        v11 = v20;

        v10 = v54;
        (*v47)(v54[7] + v11 * v15, v29, isUniquelyReferenced_nonNull_native);
        (*v50)(v28, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v10 = v54;
        v54[(v20 >> 6) + 8] |= 1 << v20;
        v30 = (v54[6] + 16 * v20);
        *v30 = v17;
        v30[1] = v19;
        (*v48)(v54[7] + v20 * v15, v29, isUniquelyReferenced_nonNull_native);
        (*v50)(v28, isUniquelyReferenced_nonNull_native);
        v31 = v54[2];
        v24 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v24)
        {
          goto LABEL_31;
        }

        v54[2] = v32;
      }

      ++v8;
      isUniquelyReferenced_nonNull_native = v0;
      v7 = v49;
      if (v53 == v8)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC8];
LABEL_16:

  __swift_destroy_boxed_opaque_existential_1((isUniquelyReferenced_nonNull_native + 16));
  if (v10[2])
  {
    if (qword_1EDCE0560 != -1)
    {
LABEL_32:
      swift_once();
    }

    v34 = *(isUniquelyReferenced_nonNull_native + 56);
    sub_1C6B1A5AC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C6D7E630;
    v36 = v10[2];
    v37 = MEMORY[0x1E69E65A8];
    *(v35 + 56) = MEMORY[0x1E69E6530];
    *(v35 + 64) = v37;
    *(v35 + 32) = v36;
    sub_1C6D79AC0();
    sub_1C6D78D30("Found %lu recently vended notifications", v46);

    __swift_project_boxed_opaque_existential_1((v34 + 16), *(v34 + 40));

    sub_1C6CCFDBC(v38);

    sub_1C6D79360();

    v39 = swift_allocObject();
    *(v39 + 16) = v10;
    *(v39 + 24) = v34;

    v40 = sub_1C6D78210();
    *(isUniquelyReferenced_nonNull_native + 120) = sub_1C6D782B0();

    v41 = swift_task_alloc();
    *(isUniquelyReferenced_nonNull_native + 128) = v41;
    *v41 = isUniquelyReferenced_nonNull_native;
    v41[1] = sub_1C6CD0E18;

    return MEMORY[0x1EEE44EE0](v41);
  }

  else
  {

    if (qword_1EDCE0560 != -1)
    {
      swift_once();
    }

    v42 = qword_1EDCE0568;
    v43 = sub_1C6D79AC0();
    sub_1C6D78D30("Found no recently vended notifications", 38, 2, &dword_1C6B09000, v42, v43, MEMORY[0x1E69E7CC0]);

    v44 = *(isUniquelyReferenced_nonNull_native + 8);

    return v44();
  }
}

uint64_t sub_1C6CD0E18()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1C6CD100C;
  }

  else
  {

    v2 = sub_1C6CD0F34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6CD0F34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6CD0FA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6CD100C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6CD1080(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6D75F50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C6D78F40())
  {
    sub_1C6D78F30();
    v7 = sub_1C6D75EE0();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1C6CD117C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v121 = a3;
  sub_1C6B1A5AC(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v144 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v143 = &v121 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v142 = &v121 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v121 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v126 = &v121 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v123 = &v121 - v25;
  v124 = sub_1C6D75F50();
  v26 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v27);
  v29 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v121 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v121 - v36;
  v134 = sub_1C6D78F60();
  v136 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v38);
  *&v133 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v132 = &v121 - v42;
  sub_1C6B68B8C(0);
  v148 = v43;
  v135 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v44);
  v141 = &v121 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v121 - v48;
  MEMORY[0x1EEE9AC00](v50, v51);
  v131 = (&v121 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v138 = (&v121 - v55);
  v56 = *a1;
  if (v56 >> 62)
  {
    goto LABEL_49;
  }

  v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v137 = v29;
  v122 = v37;
  v127 = v26;
  v125 = v4;
  v37 = MEMORY[0x1E69E6530];
  v26 = MEMORY[0x1E69E65A8];
  v153 = v19;
  v146 = v49;
  v150 = v33;
  if (v57)
  {
    v29 = 0;
    v151 = v56 & 0xC000000000000001;
    v149 = v56 & 0xFFFFFFFFFFFFFF8;
    v130 = v136 + 16;
    v129 = v136 + 32;
    v128 = v136 + 8;
    v145 = MEMORY[0x1E69E7CC0];
    v139 = xmmword_1C6D7EB10;
    v140 = v57;
    v147 = v56;
    while (1)
    {
      if (v151)
      {
        v33 = MEMORY[0x1CCA56240](v29, v56);
        v66 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v29 >= *(v149 + 16))
        {
          goto LABEL_48;
        }

        v33 = *(v56 + 8 * v29 + 32);
        swift_unknownObjectRetain();
        v66 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          v57 = sub_1C6D79E90();
          goto LABEL_3;
        }
      }

      v155 = v66;
      v67 = [v33 articleID];
      v68 = sub_1C6D795A0();
      v70 = v69;

      if (!*(a2 + 16))
      {
        break;
      }

      v71 = sub_1C6B5DEA8(v68, v70);
      v73 = v72;

      if ((v73 & 1) == 0)
      {
        goto LABEL_6;
      }

      v74 = v37;
      v75 = v136;
      v76 = v133;
      v77 = v134;
      (*(v136 + 16))(v133, *(a2 + 56) + *(v136 + 72) * v71, v134);
      v78 = v132;
      (*(v75 + 32))(v132, v76, v77);
      v79 = v131;
      *v131 = v33;
      sub_1C6D78F30();
      (*(v75 + 8))(v78, v77);
      sub_1C6CD2334(v79, v138);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = sub_1C6B6725C(0, v145[2] + 1, 1, v145);
      }

      v19 = v153;
      v33 = v150;
      v81 = v145[2];
      v80 = v145[3];
      v4 = v81 + 1;
      v37 = v74;
      if (v81 >= v80 >> 1)
      {
        v145 = sub_1C6B6725C((v80 > 1), v81 + 1, 1, v145);
      }

      v26 = MEMORY[0x1E69E65A8];
      v82 = v145;
      v145[2] = v4;
      sub_1C6CD2334(v138, v82 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v81);
LABEL_9:
      ++v29;
      v56 = v147;
      if (v155 == v140)
      {
        goto LABEL_24;
      }
    }

LABEL_6:
    if (qword_1EDCE0560 != -1)
    {
      swift_once();
    }

    v154 = qword_1EDCE0568;
    LODWORD(v152) = sub_1C6D79AA0();
    sub_1C6B1A5AC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = v139;
    v59 = *(a2 + 16);
    *(v58 + 56) = v37;
    *(v58 + 64) = v26;
    *(v58 + 32) = v59;
    v60 = v37;
    v61 = [v33 articleID];
    v4 = v26;
    v62 = a2;
    v63 = sub_1C6D795A0();
    v65 = v64;

    v37 = v60;
    *(v58 + 96) = MEMORY[0x1E69E6158];
    *(v58 + 104) = sub_1C6B2064C();
    *(v58 + 72) = v63;
    *(v58 + 80) = v65;
    a2 = v62;
    v26 = v4;
    sub_1C6D78D30("Failed to find notification item for headline %{public}@", 56, 2, &dword_1C6B09000, v154, v152, v58);

    swift_unknownObjectRelease();
    v19 = v153;
    v33 = v150;
    v49 = v146;
    goto LABEL_9;
  }

  v145 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v83 = v26;
  if (qword_1EDCE0560 != -1)
  {
    swift_once();
  }

  v84 = qword_1EDCE0568;
  sub_1C6B1A5AC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v134 = v85;
  v86 = swift_allocObject();
  v133 = xmmword_1C6D7E630;
  *(v86 + 16) = xmmword_1C6D7E630;
  v87 = v145[2];
  *(v86 + 56) = v37;
  *(v86 + 64) = v83;
  *(v86 + 32) = v87;
  sub_1C6D79AC0();
  v136 = v84;
  sub_1C6D78D30("Processing notification data for %lu notifications", v121);

  v88 = v127;
  if (*(a2 + 16) != v87)
  {
    LODWORD(v155) = sub_1C6D79AA0();
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1C6D7EB10;
    v90 = *(a2 + 16);
    *(v89 + 56) = v37;
    *(v89 + 64) = v83;
    *(v89 + 32) = v90;
    *(v89 + 96) = v37;
    *(v89 + 104) = v83;
    *(v89 + 72) = v87;
    sub_1C6D78D30("Mismatched number of notifications when processing. Recent notifications: %lu, Notification data: %lu", v121, v122);
  }

  v91 = (v88 + 56);
  v92 = *(v88 + 56);
  v93 = v126;
  v94 = v124;
  v155 = v91;
  v154 = v92;
  v92(v126, 1, 1, v124);
  sub_1C6CD2398(v93, v19);
  v95 = v144;
  v96 = v145[2];
  if (v96)
  {
    v97 = v145 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
    v140 = *(v135 + 72);
    v98 = (v127 + 32);
    v152 = (v127 + 48);
    v147 = (v127 + 8);
    v138 = (v127 + 16);
    v149 = v127 + 32;
    do
    {
      v151 = v96;
      sub_1C6CD242C(v97, v49);
      v100 = v141;
      sub_1C6CD242C(v49, v141);
      swift_unknownObjectRelease();
      v101 = *v98;
      (*v98)(v33, v100 + *(v148 + 48), v94);
      sub_1C6CD2398(v19, v95);
      v102 = *v152;
      if ((*v152)(v95, 1, v94) == 1)
      {
        v103 = v49;
        sub_1C6CD2490(v49);
        sub_1C6CD24EC(v19, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C6B1A5AC);
        v104 = 1;
        v105 = v143;
      }

      else
      {
        *&v139 = v102;
        v106 = v137;
        v101(v137, v95, v94);
        v107 = sub_1C6D75EE0();
        sub_1C6CD2490(v49);
        sub_1C6CD24EC(v19, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C6B1A5AC);
        if (v107)
        {
          v105 = v143;
          v101(v143, v106, v94);
          v104 = 0;
          v33 = v150;
        }

        else
        {
          (*v147)(v106, v94);
          v105 = v143;
          v33 = v150;
          (*v138)(v143, v150, v94);
          v104 = 0;
        }

        v103 = v146;
        v102 = v139;
      }

      v154(v105, v104, 1, v94);
      if (v102(v105, 1, v94) == 1)
      {
        v99 = v142;
        (*v138)(v142, v33, v94);
        if (v102(v105, 1, v94) != 1)
        {
          sub_1C6CD24EC(v105, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C6B1A5AC);
        }
      }

      else
      {
        v99 = v142;
        v101(v142, v105, v94);
      }

      v154(v99, 0, 1, v94);
      (*v147)(v33, v94);
      v19 = v153;
      sub_1C6C35894(v99, v153);
      v97 += v140;
      v96 = v151 - 1;
      v98 = v149;
      v49 = v103;
      v95 = v144;
    }

    while (v151 != 1);
  }

  sub_1C6CD24EC(v126, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C6B1A5AC);
  v108 = v123;
  sub_1C6C35894(v19, v123);
  v109 = v127;
  if ((*(v127 + 48))(v108, 1, v94) == 1)
  {

    return sub_1C6CD24EC(v108, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C6B1A5AC);
  }

  else
  {
    v111 = v122;
    (*(v109 + 32))(v122, v108, v94);
    v112 = v94;
    v113 = sub_1C6CE4908(v145);

    if (v113)
    {
      v114 = swift_allocObject();
      *(v114 + 16) = v133;
      sub_1C6CD21BC();
      v115 = sub_1C6D7A0E0();
      v117 = v116;
      *(v114 + 56) = MEMORY[0x1E69E6158];
      *(v114 + 64) = sub_1C6B2064C();
      *(v114 + 32) = v115;
      *(v114 + 40) = v117;
      v118 = sub_1C6D79AC0();
      sub_1C6D78D30("Successfully created notification session, setting most recent processed vended notification date as %{public}@", 111, 2, &dword_1C6B09000, v136, v118, v114);

      v119 = NewsCoreUserDefaults();
      sub_1C6D75EA0();
      [v119 setDouble:*MEMORY[0x1E69B5018] forKey:?];
    }

    else
    {
      v120 = sub_1C6D79AA0();
      sub_1C6D78D30("Failed to create notification session", 37, 2, &dword_1C6B09000, v136, v120, MEMORY[0x1E69E7CC0]);
    }

    return (*(v109 + 8))(v111, v112);
  }
}

uint64_t sub_1C6CD2150()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

unint64_t sub_1C6CD21BC()
{
  result = qword_1EDCE6380;
  if (!qword_1EDCE6380)
  {
    sub_1C6D75F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6380);
  }

  return result;
}

uint64_t sub_1C6CD2214(uint64_t a1)
{
  v4 = *(sub_1C6D75F50() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6BB6A40;

  return sub_1C6CD04E4(a1, v6, v1 + v5);
}

uint64_t sub_1C6CD2334(uint64_t a1, uint64_t a2)
{
  sub_1C6B68B8C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6CD2398(uint64_t a1, uint64_t a2)
{
  sub_1C6B1A5AC(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6CD242C(uint64_t a1, uint64_t a2)
{
  sub_1C6B68B8C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6CD2490(uint64_t a1)
{
  sub_1C6B68B8C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6CD24EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.expand()()
{
  type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6CDB2D8(&qword_1EDCE2AE0, type metadata accessor for Com_Apple_News_Personalization_Session, &protocol conformance descriptor for Com_Apple_News_Personalization_Session);
  return sub_1C6D78C30();
}

uint64_t sub_1C6CD25F4(char *a1, uint64_t *a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v66 = &v65 - v10;
  v11 = MEMORY[0x1E69AA900];
  sub_1C6CDB320(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v67 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v70 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v65 = &v65 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v65 - v23;
  v25 = *a2;
  v26 = a2[1];

  *a1 = v25;
  *(a1 + 1) = v26;
  v72 = a1;
  v69 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  v27 = *(v69 + 44);
  sub_1C6CD3B04(a2 + v27, v24, &qword_1EDCE66F0, v11, v28);
  v73 = v5;
  v29 = *(v5 + 48);
  LODWORD(v5) = v29(v24, 1, v4);
  v30 = v11;
  v31 = v29;
  sub_1C6CD3B70(v24, &qword_1EDCE66F0, v30, v32);
  if (v5 != 1)
  {
    v34 = v65;
    sub_1C6CD3B04(a2 + v27, v65, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v33);
    if (v31(v34, 1, v4) == 1)
    {
      v35 = v66;
      sub_1C6D78990();
      if (v31(v34, 1, v4) != 1)
      {
        sub_1C6CD3B70(v34, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v36);
      }
    }

    else
    {
      v35 = v66;
      (*(v73 + 32))(v66, v34, v4);
    }

    v37 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 36);
    v38 = v72;
    sub_1C6CD3B70(&v72[v37], &qword_1EDCE66F0, MEMORY[0x1E69AA900], v39);
    v40 = v73;
    (*(v73 + 32))(&v38[v37], v35, v4);
    v33 = (*(v40 + 56))(&v38[v37], 0, 1, v4);
  }

  v41 = v70;
  v42 = *(v69 + 48);
  v43 = MEMORY[0x1E69AA900];
  sub_1C6CD3B04(a2 + v42, v70, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v33);
  v44 = v31;
  v45 = v31(v41, 1, v4);
  sub_1C6CD3B70(v41, &qword_1EDCE66F0, v43, v46);
  v48 = v45 == 1;
  v49 = v72;
  if (!v48)
  {
    v50 = v67;
    sub_1C6CD3B04(a2 + v42, v67, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v47);
    if (v44(v50, 1, v4) == 1)
    {
      v51 = v68;
      sub_1C6D78990();
      if (v44(v50, 1, v4) != 1)
      {
        sub_1C6CD3B70(v50, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v52);
      }
    }

    else
    {
      v51 = v68;
      (*(v73 + 32))(v68, v50, v4);
    }

    v53 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 40);
    sub_1C6CD3B70(&v49[v53], &qword_1EDCE66F0, MEMORY[0x1E69AA900], v54);
    v55 = v73;
    (*(v73 + 32))(&v49[v53], v51, v4);
    (*(v55 + 56))(&v49[v53], 0, 1, v4);
  }

  v56 = a2[6];
  v57 = *(a2 + 64);
  *(v49 + 5) = a2[7];
  v49[48] = v57;
  v58 = a2[5];

  *(v49 + 3) = v58;
  *(v49 + 4) = v56;
  v59 = v71;
  result = sub_1C6B88068();
  if (!v59)
  {
    MEMORY[0x1EEE9AC00](result, v61);
    *(&v65 - 2) = a2;
    *(&v65 - 1) = v62;
    v64 = sub_1C6D03CF8(sub_1C6CD35B8, (&v65 - 4), v63);

    *(v49 + 2) = v64;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization010Com_Apple_a1_B25Storage_CompressedSessionV6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 8) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_1C6CD2BF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 9))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6CD2C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6CD2C84(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1C6CD2CAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v81 = a6;
  v78 = a5;
  v83 = a8;
  v79 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v79, v13);
  v82 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v80 = &v73[-v17];
  sub_1C6CDB320(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v73[-v20];
  v22 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v23 = *(v22 - 8);
  v85 = v22;
  v86 = v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v73[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27, v28);
  v84 = &v73[-v29];
  v87 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v30 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v31);
  v33 = &v73[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34, v35);
  v88 = &v73[-v36];
  if (*(a7 + 16) && (v75 = *a2, v37 = *(a2 + 8), v76 = *a3, v38 = *(a3 + 8), v77 = *a4, v39 = *(a4 + 8), v40 = sub_1C6B64DD0(a1), (v41 & 1) != 0))
  {
    sub_1C6CD57CC(*(a7 + 56) + *(v30 + 72) * v40, v33, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v42 = v88;
    sub_1C6CDB374(v33, v88, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6CD3B04(&v42[*(v87 + 20)], v21, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, v43);
    v45 = v85;
    v44 = v86;
    if ((*(v86 + 48))(v21, 1, v85) == 1)
    {
      sub_1C6CD3B70(v21, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, v46);
      sub_1C6B688CC();
      swift_allocError();
      *v47 = 1;
      *(v47 + 8) = 7;
      swift_willThrow();
      return sub_1C6CD576C(v42, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }

    else
    {
      v74 = v39;
      v52 = v84;
      sub_1C6CDB374(v21, v84, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6CD57CC(v52, v26, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v53 = v26;
      v54 = v80;
      sub_1C6CDB374(v53, v80, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v55 = v82;
      sub_1C6CD57CC(v54, v82, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v56 = *(v79 + 20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *&v55[v56];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        swift_allocObject();
        v58 = sub_1C6D2BEA8(v58);
        *&v55[v56] = v58;
      }

      v59 = &v58[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
      swift_beginAccess();
      *v59 = v75;
      v59[8] = v37;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v61 = *&v55[v56];
      if ((v60 & 1) == 0)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        swift_allocObject();
        v61 = sub_1C6D2BEA8(v61);
        *&v55[v56] = v61;
      }

      v62 = &v61[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
      swift_beginAccess();
      *v62 = v76;
      v62[8] = v38;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v64 = *&v55[v56];
      if ((v63 & 1) == 0)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        swift_allocObject();
        v64 = sub_1C6D2BEA8(v64);
        *&v55[v56] = v64;
      }

      v65 = v81;
      v66 = &v64[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
      swift_beginAccess();
      *v66 = v77;
      v66[8] = v74;
      if (v65)
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1C6CD576C(v54, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          sub_1C6CD576C(v84, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v67 = *&v55[v56];
        }

        else
        {
          type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
          swift_allocObject();

          v67 = sub_1C6D2BEA8(v68);
          sub_1C6CD576C(v54, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          sub_1C6CD576C(v84, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v44 = v86;

          *&v55[v56] = v67;
        }

        v69 = &v67[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
        swift_beginAccess();
        *v69 = v78;
        v69[1] = v65;
      }

      else
      {
        sub_1C6CD576C(v54, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
        sub_1C6CD576C(v84, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      }

      v70 = v83;
      sub_1C6CDB374(v88, v83, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v71 = *(v87 + 20);
      sub_1C6CD3B70(v70 + v71, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, v72);
      sub_1C6CDB374(v55, v70 + v71, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      return (*(v44 + 56))(v70 + v71, 0, 1, v45);
    }
  }

  else
  {
    sub_1C6C47864();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6D7E630;
    *(inited + 32) = a1;
    v50 = sub_1C6C078F8(inited);
    swift_setDeallocating();
    sub_1C6B688CC();
    swift_allocError();
    *v51 = v50;
    *(v51 + 8) = 5;
    return swift_willThrow();
  }
}

uint64_t sub_1C6CD34D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6CDB2D8(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEvent);
  result = sub_1C6D78C30();
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_1C6CD35F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v45 = a5;
  v43 = a3;
  v44 = a4;
  v50 = a1;
  sub_1C6CDB320(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v47 = &v42 - v9;
  sub_1C6CDB320(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v42 - v12;
  v48 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v14 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v15);
  v42 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69AA900];
  sub_1C6CDB320(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v42 - v20;
  v22 = sub_1C6D789A0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  v49 = a2;
  sub_1C6CD3B04(a2 + v27, v21, &qword_1EDCE66F0, v17, v28);
  v29 = *(v23 + 48);
  if (v29(v21, 1, v22) == 1)
  {
    sub_1C6D78990();
    if (v29(v21, 1, v22) != 1)
    {
      sub_1C6CD3B70(v21, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v30);
    }
  }

  else
  {
    (*(v23 + 32))(v26, v21, v22);
  }

  v31 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  v32 = v50;
  sub_1C6CD3B70(v50 + v31, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v33);
  (*(v23 + 32))(v32 + v31, v26, v22);
  v34 = (*(v23 + 56))(v32 + v31, 0, 1, v22);
  sub_1C6CD3B04(v49, v13, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, v34);
  if ((*(v14 + 48))(v13, 1, v48) == 1)
  {
    sub_1C6CD3B70(v13, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, v35);
    sub_1C6B688CC();
    swift_allocError();
    *v36 = 0;
    *(v36 + 8) = 7;
    return swift_willThrow();
  }

  else
  {
    v38 = v42;
    sub_1C6CDB374(v13, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v40 = v46;
    v39 = v47;
    sub_1C6CD3BCC(v38, v43, v44, v45, v47);
    result = sub_1C6CD576C(v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    if (!v40)
    {
      v41 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
      (*(*(v41 - 8) + 56))(v39, 0, 1, v41);
      return sub_1C6C50A14(v39, v32);
    }
  }

  return result;
}

uint64_t sub_1C6CD3B04(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), double a5)
{
  sub_1C6CDB320(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1C6CD3B70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), double a4)
{
  sub_1C6CDB320(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6CD3BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v192 = a1;
  v190 = a3;
  v191 = a4;
  v189 = a2;
  v194 = a5;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v188 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v187 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v186 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v185 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v184 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v183 = &v174 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v182 = &v174 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v181 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v180 = &v174 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v179 = &v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v178 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v177 = &v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v176 = &v174 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v175 = &v174 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v50 = &v174 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v54 = &v174 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v58 = &v174 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v62 = &v174 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v63 - 8, v64);
  v66 = &v174 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v70 = &v174 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v71 - 8, v72);
  v74 = &v174 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v174 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CD57CC(v192, v78, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C6CDB374(v78, v70, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v131 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
      MEMORY[0x1EEE9AC00](v131, v132);
      v133 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v133;
      v134 = v191;
      *(&v174 - 2) = v70;
      *(&v174 - 1) = v134;
      sub_1C6CDB2D8(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      v135 = v193;
      sub_1C6D78C30();
      if (!v135)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v84 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited;
      v85 = v70;
      return sub_1C6CD576C(v85, v84);
    case 2u:
      sub_1C6CDB374(v78, v66, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v113 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
      MEMORY[0x1EEE9AC00](v113, v114);
      v115 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v115;
      v116 = v191;
      *(&v174 - 2) = v66;
      *(&v174 - 1) = v116;
      sub_1C6CDB2D8(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleRead);
      v117 = v193;
      sub_1C6D78C30();
      if (!v117)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v84 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead;
      v85 = v66;
      return sub_1C6CD576C(v85, v84);
    case 3u:
      sub_1C6CDB374(v78, v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v123 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
      MEMORY[0x1EEE9AC00](v123, v124);
      v125 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v125;
      v126 = v191;
      *(&v174 - 2) = v62;
      *(&v174 - 1) = v126;
      sub_1C6CDB2D8(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleShared);
      v127 = v193;
      sub_1C6D78C30();
      if (!v127)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v84 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared;
      v85 = v62;
      return sub_1C6CD576C(v85, v84);
    case 4u:
      sub_1C6CDB374(v78, v58, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v100 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
      MEMORY[0x1EEE9AC00](v100, v101);
      v102 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v102;
      v103 = v191;
      *(&v174 - 2) = v58;
      *(&v174 - 1) = v103;
      sub_1C6CDB2D8(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      v104 = v193;
      sub_1C6D78C30();
      if (!v104)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v84 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked;
      v85 = v58;
      return sub_1C6CD576C(v85, v84);
    case 5u:
      sub_1C6CDB374(v78, v50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v146 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
      MEMORY[0x1EEE9AC00](v146, v147);
      v148 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v148;
      v149 = v191;
      *(&v174 - 2) = v50;
      *(&v174 - 1) = v149;
      sub_1C6CDB2D8(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      v150 = v193;
      sub_1C6D78C30();
      if (!v150)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked;
      goto LABEL_65;
    case 6u:
      v50 = v176;
      sub_1C6CDB374(v78, v176, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v156 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
      MEMORY[0x1EEE9AC00](v156, v157);
      v158 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v158;
      v159 = v191;
      *(&v174 - 2) = v50;
      *(&v174 - 1) = v159;
      sub_1C6CDB2D8(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      v160 = v193;
      sub_1C6D78C30();
      if (!v160)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved;
      goto LABEL_65;
    case 7u:
      v50 = v179;
      sub_1C6CDB374(v78, v179, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      v128 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
      MEMORY[0x1EEE9AC00](v128, v129);
      *(&v174 - 2) = v191;
      *(&v174 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagMuted);
      v130 = v193;
      sub_1C6D78C30();
      if (!v130)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted;
      goto LABEL_65;
    case 8u:
      v50 = v180;
      sub_1C6CDB374(v78, v180, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      v167 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
      MEMORY[0x1EEE9AC00](v167, v168);
      *(&v174 - 2) = v191;
      *(&v174 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      v169 = v193;
      sub_1C6D78C30();
      if (!v169)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted;
      goto LABEL_65;
    case 9u:
      v50 = v181;
      sub_1C6CDB374(v78, v181, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      v110 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
      MEMORY[0x1EEE9AC00](v110, v111);
      *(&v174 - 2) = v191;
      *(&v174 - 1) = v50;
      sub_1C6CDB2D8(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      v112 = v193;
      sub_1C6D78C30();
      if (!v112)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed;
      goto LABEL_65;
    case 0xAu:
      v50 = v183;
      sub_1C6CDB374(v78, v183, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      v164 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
      MEMORY[0x1EEE9AC00](v164, v165);
      *(&v174 - 2) = v191;
      *(&v174 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      v166 = v193;
      sub_1C6D78C30();
      if (!v166)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed;
      goto LABEL_65;
    case 0xBu:
      v50 = v184;
      sub_1C6CDB374(v78, v184, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
      v97 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
      MEMORY[0x1EEE9AC00](v97, v98);
      *(&v174 - 2) = v191;
      *(&v174 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      v99 = v193;
      sub_1C6D78C30();
      if (!v99)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView;
      goto LABEL_65;
    case 0xCu:
      v50 = v185;
      sub_1C6CDB374(v78, v185, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v105 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
      MEMORY[0x1EEE9AC00](v105, v106);
      v107 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v107;
      v108 = v191;
      *(&v174 - 2) = v50;
      *(&v174 - 1) = v108;
      sub_1C6CDB2D8(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      v109 = v193;
      sub_1C6D78C30();
      if (!v109)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited;
      goto LABEL_65;
    case 0xDu:
      v50 = v186;
      sub_1C6CDB374(v78, v186, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v151 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
      MEMORY[0x1EEE9AC00](v151, v152);
      v153 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v153;
      v154 = v191;
      *(&v174 - 2) = v50;
      *(&v174 - 1) = v154;
      sub_1C6CDB2D8(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackListened);
      v155 = v193;
      sub_1C6D78C30();
      if (!v155)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened;
      goto LABEL_65;
    case 0xEu:
      v50 = v187;
      sub_1C6CDB374(v78, v187, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v92 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
      MEMORY[0x1EEE9AC00](v92, v93);
      v94 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v94;
      v95 = v191;
      *(&v174 - 2) = v50;
      *(&v174 - 1) = v95;
      sub_1C6CDB2D8(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      v96 = v193;
      sub_1C6D78C30();
      if (!v96)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished;
      goto LABEL_65;
    case 0xFu:
      sub_1C6CDB374(v78, v54, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v118 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
      MEMORY[0x1EEE9AC00](v118, v119);
      v120 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v120;
      v121 = v191;
      *(&v174 - 2) = v54;
      *(&v174 - 1) = v121;
      sub_1C6CDB2D8(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      v122 = v193;
      sub_1C6D78C30();
      if (!v122)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v84 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked;
      v85 = v54;
      return sub_1C6CD576C(v85, v84);
    case 0x10u:
      v50 = v175;
      sub_1C6CDB374(v78, v175, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v86 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
      MEMORY[0x1EEE9AC00](v86, v87);
      v88 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v88;
      v89 = v191;
      *(&v174 - 2) = v50;
      *(&v174 - 1) = v89;
      sub_1C6CDB2D8(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      v90 = v193;
      sub_1C6D78C30();
      if (!v90)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked;
      goto LABEL_65;
    case 0x11u:
      v50 = v177;
      sub_1C6CDB374(v78, v177, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v136 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
      MEMORY[0x1EEE9AC00](v136, v137);
      v138 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v138;
      v139 = v191;
      *(&v174 - 2) = v50;
      *(&v174 - 1) = v139;
      sub_1C6CDB2D8(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      v140 = v193;
      sub_1C6D78C30();
      if (!v140)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved;
      goto LABEL_65;
    case 0x12u:
      v50 = v178;
      sub_1C6CDB374(v78, v178, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
      v161 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
      MEMORY[0x1EEE9AC00](v161, v162);
      *(&v174 - 2) = v191;
      *(&v174 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
      v163 = v193;
      sub_1C6D78C30();
      if (!v163)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen;
      goto LABEL_65;
    case 0x13u:
      v50 = v182;
      sub_1C6CDB374(v78, v182, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      v170 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
      MEMORY[0x1EEE9AC00](v170, v171);
      *(&v174 - 2) = v191;
      *(&v174 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      v172 = v193;
      sub_1C6D78C30();
      if (!v172)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore;
      goto LABEL_65;
    case 0x14u:
      v50 = v188;
      sub_1C6CDB374(v78, v188, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
      MEMORY[0x1EEE9AC00](v141, v142);
      v144 = v189;
      v143 = v190;
      *(&v174 - 4) = v50;
      *(&v174 - 3) = v144;
      *(&v174 - 2) = v143;
      sub_1C6CDB2D8(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      v145 = v193;
      sub_1C6D78C30();
      if (!v145)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended;
LABEL_65:
      v84 = v91;
      v85 = v50;
      break;
    default:
      sub_1C6CDB374(v78, v74, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      v79 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
      MEMORY[0x1EEE9AC00](v79, v80);
      v81 = v190;
      *(&v174 - 4) = v189;
      *(&v174 - 3) = v81;
      v82 = v191;
      *(&v174 - 2) = v74;
      *(&v174 - 1) = v82;
      sub_1C6CDB2D8(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSeen);
      v83 = v193;
      sub_1C6D78C30();
      if (!v83)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v84 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen;
      v85 = v74;
      break;
  }

  return sub_1C6CD576C(v85, v84);
}