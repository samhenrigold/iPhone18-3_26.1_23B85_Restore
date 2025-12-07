void sub_1D905DED8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7, uint64_t a8, unint64_t a9)
{
  v69 = a7;
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v67 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v67 - v21;
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v26 = v67 - v25;
  if (a5)
  {
    v27 = a6;
    v28 = a5;
    if (qword_1EDCD0768 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v13, qword_1EDCD0770);
    swift_beginAccess();
    (*(v14 + 16))(v26, v29, v13);
    v30 = a5;
    v31 = sub_1D917741C();
    v32 = sub_1D9178CFC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = sub_1D9176A5C();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&dword_1D8CEC000, v31, v32, "Could not check if podcast exists in store with error: %@", v33, 0xCu);
      sub_1D8D08A50(v34, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v34, -1, -1);
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    (*(v14 + 8))(v26, v13);
    v27(0);

    return;
  }

  v68 = a6;
  if (a1)
  {
    if (a1 >> 62)
    {
      if (!sub_1D917935C())
      {
        goto LABEL_21;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1DA72AA90](0, a1, v24);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_36;
      }

      v36 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    type metadata accessor for ServerPodcast();
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      v67[1] = v36;
      v38 = [v37 podcastStoreId];
      if (v38)
      {
        v39 = v38;
        v40 = sub_1D917820C();
        v42 = v41;

        v59 = sub_1D8FE6808(v40, v42);

        if ((v59 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (qword_1EDCD0768 == -1)
        {
LABEL_28:
          v60 = __swift_project_value_buffer(v13, qword_1EDCD0770);
          swift_beginAccess();
          (*(v14 + 16))(v22, v60, v13);

          v61 = sub_1D917741C();
          v62 = sub_1D9178D1C();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = v59;
            v65 = swift_slowAlloc();
            v71 = v65;
            *v63 = 136315394;
            *(v63 + 4) = sub_1D8CFA924(a8, a9, &v71);
            *(v63 + 12) = 2048;
            *(v63 + 14) = v64;
            _os_log_impl(&dword_1D8CEC000, v61, v62, "Found podcast in the store for feedUrl: %s with adamId: %lld", v63, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v65);
            v66 = v65;
            v59 = v64;
            MEMORY[0x1DA72CB90](v66, -1, -1);
            MEMORY[0x1DA72CB90](v63, -1, -1);
          }

          (*(v14 + 8))(v22, v13);
          v68(v59);
LABEL_31:
          swift_unknownObjectRelease();
          return;
        }

        swift_once();
        goto LABEL_28;
      }

      if (qword_1EDCD0768 == -1)
      {
LABEL_17:
        v43 = __swift_project_value_buffer(v13, qword_1EDCD0770);
        swift_beginAccess();
        (*(v14 + 16))(v19, v43, v13);

        v44 = sub_1D917741C();
        v45 = sub_1D9178CFC();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v67[0] = swift_slowAlloc();
          v71 = v67[0];
          *v46 = 136315394;
          *(v46 + 4) = sub_1D8CFA924(a8, a9, &v71);
          *(v46 + 12) = 2080;
          v70 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97B8, &unk_1D91AC7E0);
          v47 = sub_1D917826C();
          v49 = sub_1D8CFA924(v47, v48, &v71);

          *(v46 + 14) = v49;
          _os_log_impl(&dword_1D8CEC000, v44, v45, "Invalid adamId for podcastExistsInStore for feedUrl: %s, response: %s", v46, 0x16u);
          v50 = v67[0];
          swift_arrayDestroy();
          MEMORY[0x1DA72CB90](v50, -1, -1);
          MEMORY[0x1DA72CB90](v46, -1, -1);
        }

        (*(v14 + 8))(v19, v13);
        v68(0);
        goto LABEL_31;
      }

LABEL_36:
      swift_once();
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

LABEL_21:
  if (qword_1EDCD0768 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v13, qword_1EDCD0770);
  swift_beginAccess();
  (*(v14 + 16))(v16, v51, v13);

  v52 = sub_1D917741C();
  v53 = sub_1D9178CFC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v71 = v55;
    *v54 = 136315394;
    *(v54 + 4) = sub_1D8CFA924(a8, a9, &v71);
    *(v54 + 12) = 2080;
    v70 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97B8, &unk_1D91AC7E0);
    v56 = sub_1D917826C();
    v58 = sub_1D8CFA924(v56, v57, &v71);

    *(v54 + 14) = v58;
    _os_log_impl(&dword_1D8CEC000, v52, v53, "Received invalid response from MAPI for podcastExistsInStore for feedUrl: %s, response: %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v55, -1, -1);
    MEMORY[0x1DA72CB90](v54, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v68(0);
}

id SubscriptionController.init()()
{
  v1 = OBJC_IVAR___MTSubscriptionController_requestController;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SubscriptionController();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SubscriptionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D905EA64(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v49 - v9;
  v10 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D10, &unk_1D91A7620);
    inited = swift_initStackObject();
    v20 = a1;
    v59 = a1;
    v21 = inited;
    v61 = xmmword_1D9189080;
    *(inited + 16) = xmmword_1D9189080;
    v60 = a3;
    *(inited + 32) = 2;
    v22 = inited + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v23 = swift_allocObject();
    *(v23 + 16) = v61;
    *(v23 + 32) = v20;
    *(v23 + 40) = a2;
    *(v21 + 40) = v23;
    _Block_copy(a4);

    v57 = sub_1D8E272A4(v21);
    swift_setDeallocating();
    sub_1D8D08A50(v22, &qword_1ECAB8D18, &qword_1D91A6E18);
    v24 = sub_1D9176C2C();
    v25 = *(v24 - 8);
    *&v61 = v17;
    v26 = *(v25 + 56);
    v58 = a2;
    v26(v62, 1, 1, v24);
    v27 = MEMORY[0x1E69E7CC0];
    v56 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v55 = sub_1D8D94DF8(v27);
    v54 = sub_1D8D951E0(v27);
    v53 = sub_1D8D9503C(v27);
    v52 = sub_1D8D9536C(v27);
    v51 = sub_1D8D9536C(v27);
    v28 = sub_1D8D953C4(v27);
    v29 = sub_1D8D952D8(v27);
    v49 = sub_1D8D957C4(v27);
    *(v12 + 41) = 263;
    v12[43] = 5;
    v12[152] = 1;
    v12[201] = 1;
    v30 = v10[28];
    v26(&v12[v30], 1, 1, v24);
    v31 = &v12[v10[29]];
    v32 = &v12[v10[31]];
    v33 = v10[33];
    v50 = v10[34];
    v34 = &v12[v33];
    v35 = &v12[v10[35]];
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 4) = 0;
    *(v12 + 10) = 83951876;
    v36 = v55;
    *(v12 + 6) = v56;
    *(v12 + 7) = v36;
    v37 = v53;
    *(v12 + 8) = v54;
    *(v12 + 9) = v27;
    v38 = v52;
    *(v12 + 10) = v37;
    *(v12 + 11) = v38;
    *(v12 + 12) = v51;
    *(v12 + 13) = v28;
    *(v12 + 14) = v27;
    *(v12 + 15) = v29;
    *(v12 + 16) = v27;
    *(v12 + 17) = v27;
    *(v12 + 18) = v27;
    v12[152] = 1;
    *(v12 + 20) = 0;
    v12[168] = 1;
    v39 = v49;
    *(v12 + 22) = v57;
    *(v12 + 23) = v39;
    *(v12 + 24) = 0;
    *(v12 + 100) = 257;
    v12[202] = 0;
    sub_1D8E26828(v62, &v12[v30]);
    *v31 = 0;
    *(v31 + 1) = 0;
    v12[v10[30]] = 0;
    *v32 = 0;
    *(v32 + 1) = 0;
    *&v12[v10[32]] = v27;
    *v34 = 0;
    *(v34 + 1) = 0;
    v12[v50] = 2;
    *v35 = 0;
    *(v35 + 1) = 0;
    v40 = v61;
    v41 = *(v60 + OBJC_IVAR___MTSubscriptionController_requestController);
    v42 = swift_allocObject();
    v42[2] = sub_1D8FFEC64;
    v42[3] = v40;
    v42[4] = v59;
    v42[5] = v58;

    v43 = v41;

    sub_1D904AD58(v12, 0, sub_1D905F080, v42);

    sub_1D8D90BEC(v12);
  }

  else
  {
    _Block_copy(a4);
    if (qword_1EDCD0768 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v13, qword_1EDCD0770);
    swift_beginAccess();
    (*(v14 + 16))(v16, v44, v13);
    v45 = sub_1D917741C();
    v46 = sub_1D9178D1C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1D8CEC000, v45, v46, "feedUrl is empty. Not checking MAPI if it exists in the store.", v47, 2u);
      MEMORY[0x1DA72CB90](v47, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    a4[2](a4, 0);
  }
}

uint64_t static ArtworkFormatter.formatArtworkUrl(string:for:cropCode:fileExtension:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v44 = a1;
  v45 = a2;
  v42 = 8218747;
  v43 = 0xE300000000000000;

  v13 = sub_1D905F354(a9);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v40 = v15;
  v41 = v16;
  v17 = sub_1D8D447DC();
  v18 = MEMORY[0x1E69E6158];
  v19 = sub_1D917922C(&v42, &v40, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v17, v17, v17);
  v21 = v20;

  v44 = v19;
  v45 = v21;
  v42 = 8222587;
  v43 = 0xE300000000000000;
  v22 = sub_1D905F354(a8);
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  v40 = v24;
  v41 = v25;
  v26 = sub_1D917922C(&v42, &v40, 0, 0, 0, 1, v18, v18, v18, v17, v17, v17);
  v28 = v27;

  if (a4)
  {
    v44 = v26;
    v45 = v28;
    v42 = 8217467;
    v43 = 0xE300000000000000;
    v40 = a3;
    v41 = a4;
    v26 = sub_1D917922C(&v42, &v40, 0, 0, 0, 1, v18, v18, v18, v17, v17, v17);
    v30 = v29;

    v28 = v30;
  }

  v44 = v26;
  v45 = v28;
  v42 = 8218235;
  v43 = 0xE300000000000000;
  v40 = a5;
  v41 = a6;
  v31 = 1;
  sub_1D917922C(&v42, &v40, 0, 0, 0, 1, v18, v18, v18, v17, v17, v17);

  v32 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v33 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v34 = [v32 initWithString_];

  if (v34)
  {
    sub_1D9176B9C();

    v31 = 0;
  }

  v35 = sub_1D9176C2C();
  return (*(*(v35 - 8) + 56))(a7, v31, 1, v35);
}

uint64_t sub_1D905F354(double a1)
{
  if (fabs(a1) > 9.22337204e18)
  {
    return 0;
  }

  if (a1 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (a1 < 9.22337204e18)
  {
    return sub_1D9179A4C();
  }

  __break(1u);
  return result;
}

uint64_t static ArtworkFormatter.formatArtworkUrl(url:for:cropCode:fileExtension:)@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v44 = sub_1D9176ACC();
  v45 = v12;
  v42 = 8218747;
  v43 = 0xE300000000000000;
  v13 = sub_1D905F354(a8);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v40 = v15;
  v41 = v16;
  v17 = sub_1D8D447DC();
  v18 = MEMORY[0x1E69E6158];
  v19 = sub_1D917922C(&v42, &v40, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v17, v17, v17);
  v21 = v20;

  v44 = v19;
  v45 = v21;
  v42 = 8222587;
  v43 = 0xE300000000000000;
  v22 = sub_1D905F354(a7);
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  v40 = v24;
  v41 = v25;
  v26 = sub_1D917922C(&v42, &v40, 0, 0, 0, 1, v18, v18, v18, v17, v17, v17);
  v28 = v27;

  if (a3)
  {
    v44 = v26;
    v45 = v28;
    v42 = 8217467;
    v43 = 0xE300000000000000;
    v40 = a2;
    v41 = a3;
    v26 = sub_1D917922C(&v42, &v40, 0, 0, 0, 1, v18, v18, v18, v17, v17, v17);
    v30 = v29;

    v28 = v30;
  }

  v44 = v26;
  v45 = v28;
  v42 = 8218235;
  v43 = 0xE300000000000000;
  v40 = a4;
  v41 = a5;
  v31 = 1;
  sub_1D917922C(&v42, &v40, 0, 0, 0, 1, v18, v18, v18, v17, v17, v17);

  v32 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v33 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v34 = [v32 initWithString_];

  if (v34)
  {
    sub_1D9176B9C();

    v31 = 0;
  }

  v35 = sub_1D9176C2C();
  return (*(*(v35 - 8) + 56))(a6, v31, 1, v35);
}

id ArtworkFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArtworkFormatter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ArtworkFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D905FB5C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D905FBB8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MockPurchaseTask();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

id sub_1D905FBF0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = v4;

  return v4;
}

void sub_1D905FC48(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_1D905FD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v5 = sub_1D9177E0C();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177EDC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  sub_1D8CFD888();
  v18 = sub_1D9178E1C();
  sub_1D9177ECC();
  sub_1D9177F3C();
  v23 = *(v12 + 8);
  v23(v14, v11);
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  *(v19 + 24) = a4;
  aBlock[4] = sub_1D8F54EF8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_66;
  v20 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A360](v17, v10, v7, v20);
  _Block_release(v20);

  (*(v27 + 8))(v7, v5);
  (*(v25 + 8))(v10, v26);
  return (v23)(v17, v11);
}

void sub_1D90600A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D8E31758(0, v2, 0);
    v3 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
    v4 = 0;
    v29 = v1 + 32;
    v27 = v2;
    v28 = v1;
    while (v4 < *(v1 + 16))
    {
      v30 = v4 + 1;
      v5 = *(v29 + 8 * v4);
      v6 = sub_1D917977C();
      v7 = v6;
      v8 = v5 + 64;
      v9 = 1 << *(v5 + 32);
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & *(v5 + 64);
      v12 = (v9 + 63) >> 6;
      v31 = v6 + 64;
      v32 = v5;

      v13 = 0;
      if (v11)
      {
        while (1)
        {
          v14 = __clz(__rbit64(v11));
          v11 &= v11 - 1;
LABEL_14:
          v17 = v14 | (v13 << 6);
          v18 = (*(v32 + 48) + 16 * v17);
          v19 = *v18;
          v20 = v18[1];
          sub_1D8FD68E4(*(v32 + 56) + 40 * v17, v34);

          AnyCodable.value.getter(v33);
          sub_1D8FD6940(v34);
          *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          v21 = (v7[6] + 16 * v17);
          *v21 = v19;
          v21[1] = v20;
          sub_1D8D65618(v33, (v7[7] + 32 * v17));
          v22 = v7[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            break;
          }

          v7[2] = v24;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

LABEL_22:
        __break(1u);
        break;
      }

LABEL_9:
      v15 = v13;
      while (1)
      {
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_22;
        }

        if (v13 >= v12)
        {
          break;
        }

        v16 = *(v8 + 8 * v13);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      v35 = v3;
      v26 = *(v3 + 16);
      v25 = *(v3 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D8E31758((v25 > 1), v26 + 1, 1);
        v3 = v35;
      }

      *(v3 + 16) = v26 + 1;
      *(v3 + 8 * v26 + 32) = v7;
      v4 = v30;
      v1 = v28;
      if (v30 == v27)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D90602FC()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x746E656D676573;
  }
}

void sub_1D906033C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E656D676573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D91D4500 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

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

uint64_t sub_1D9060420(uint64_t a1)
{
  v2 = sub_1D9060640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D906045C(uint64_t a1)
{
  v2 = sub_1D9060640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicSubscriptionInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97C8, &qword_1D91AC8B0);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9060640();
  sub_1D9179F1C();
  v13 = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97D0, &unk_1D91AC8B8);
    sub_1D9060694();
    sub_1D91799FC();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_1D9060640()
{
  result = qword_1ECAB1D40;
  if (!qword_1ECAB1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D40);
  }

  return result;
}

unint64_t sub_1D9060694()
{
  result = qword_1ECAAFEF8;
  if (!qword_1ECAAFEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB97D0, &unk_1D91AC8B8);
    sub_1D8FD62C0(&qword_1ECAB0148, sub_1D8FD6000, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFEF8);
  }

  return result;
}

void MusicSubscriptionInfo.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97D8, &qword_1D91AC8C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9060640();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v16 = 0;
    v9 = sub_1D91798BC();
    v11 = v10;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97D0, &unk_1D91AC8B8);
    v15 = 1;
    sub_1D9060974();
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v13 = v14[1];
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

unint64_t sub_1D9060974()
{
  result = qword_1ECAAFEF0;
  if (!qword_1ECAAFEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB97D0, &unk_1D91AC8B8);
    sub_1D8FD62C0(&qword_1ECAB0140, sub_1D8FD6344, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFEF0);
  }

  return result;
}

char *static MusicSubscriptionInfoLoader.loadIfNeeded()()
{
  v0 = sub_1D9177E0C();
  v60 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9177E9C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v58 = *(v7 - 1);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v15 = [objc_opt_self() ams_sharedAccountStore];
  v16 = [v15 ams_activeiTunesAccount];

  if (v16)
  {

    if (qword_1ECAB9800)
    {
      v17 = qword_1ECAB9800;

      return v17;
    }

    v60 = 0;
    sub_1D91769AC();
    swift_allocObject();
    v61 = sub_1D917699C();
    v22 = [objc_opt_self() defaultManager];
    v23 = objc_opt_self();
    v24 = [v23 documentsDirectory];
    sub_1D9176B9C();

    sub_1D9176B3C();
    v25 = v59;
    v17 = *(v58 + 8);
    (v17)(v11, v59);
    sub_1D9176BCC();
    (v17)(v14, v25);
    v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    LODWORD(v24) = [v22 fileExistsAtPath_];

    if (!v24)
    {
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v32 = sub_1D917744C();
      __swift_project_value_buffer(v32, qword_1EDCD0FE8);
      v33 = sub_1D917741C();
      v34 = sub_1D9178CFC();
      if (os_log_type_enabled(v33, v34))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1D8CEC000, v33, v34, "File does not exist. Cannot get Music Subscription Info.", v17, 2u);
        MEMORY[0x1DA72CB90](v17, -1, -1);
      }

      sub_1D90613FC();
      swift_allocError();
      *v35 = 1;
      swift_willThrow();
      goto LABEL_21;
    }

    v27 = [v23 documentsDirectory];
    sub_1D9176B9C();

    v28 = v57;
    sub_1D9176B3C();
    (v17)(v14, v25);
    v29 = v62;
    v30 = sub_1D9176C3C();
    if (v29)
    {
      (v17)(v28, v25);
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v38 = sub_1D917744C();
      __swift_project_value_buffer(v38, qword_1EDCD0FE8);
      v39 = v29;
      v40 = sub_1D917741C();
      v41 = sub_1D9178CFC();

      if (os_log_type_enabled(v40, v41))
      {
        v17 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v17 = 138412290;
        v43 = sub_1D9176A5C();
        *(v17 + 4) = v43;
        *v42 = v43;
        _os_log_impl(&dword_1D8CEC000, v40, v41, "Unable to get Music Subscription Info with error: %@.", v17, 0xCu);
        sub_1D8E262AC(v42);
        MEMORY[0x1DA72CB90](v42, -1, -1);
        MEMORY[0x1DA72CB90](v17, -1, -1);
      }

      swift_willThrow();
LABEL_21:

      return v17;
    }

    v36 = v30;
    v37 = v31;
    (v17)(v28, v25);
    sub_1D9061600();
    sub_1D917698C();
    sub_1D90600A4();
    v17 = v45;

    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v46 = sub_1D917744C();
    __swift_project_value_buffer(v46, qword_1EDCD0FE8);

    v47 = sub_1D917741C();
    v48 = sub_1D9178D1C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v62 = 0;
      aBlock[0] = v50;
      v59 = v50;
      *v49 = 136315138;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
      v52 = MEMORY[0x1DA729BD0](v17, v51);
      v54 = v47;
      v55 = sub_1D8CFA924(v52, v53, aBlock);

      *(v49 + 4) = v55;
      v47 = v54;
      _os_log_impl(&dword_1D8CEC000, v54, v48, "Retrieved Music Subscription Info from file: %s", v49, 0xCu);
      v56 = v59;
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x1DA72CB90](v56, -1, -1);
      MEMORY[0x1DA72CB90](v49, -1, -1);
    }

    sub_1D8D7567C(v36, v37);
  }

  else
  {
    v19 = v60;
    v18 = v61;
    v62 = v4;
    if (qword_1EDCD0990 != -1)
    {
      swift_once();
    }

    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    aBlock[4] = j___s18PodcastsFoundation27MusicSubscriptionInfoLoaderC06deletecdE8IfNeededyyFZ_0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_67;
    v17 = _Block_copy(aBlock);
    sub_1D9177E4C();
    aBlock[7] = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v6, v2, v17);
    _Block_release(v17);
    (*(v19 + 8))(v2, v0);
    v62[1](v6, v3);

    sub_1D90613FC();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();
  }

  return v17;
}

unint64_t sub_1D90613FC()
{
  result = qword_1ECAB97E0;
  if (!qword_1ECAB97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB97E0);
  }

  return result;
}

id MusicSubscriptionInfoLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicSubscriptionInfoLoader.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicSubscriptionInfoLoader();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicSubscriptionInfoLoader.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MusicSubscriptionInfoLoader();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1D9061600()
{
  result = qword_1ECAB1D20;
  if (!qword_1ECAB1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D20);
  }

  return result;
}

uint64_t sub_1D9061654(uint64_t *a1)
{
  v3 = sub_1D9176C2C();
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = *a1;
  sub_1D91769EC();
  swift_allocObject();
  v13 = sub_1D91769DC();
  v48 = v12;
  v49 = *(a1 + 1);
  sub_1D9062490();
  v14 = sub_1D91769CC();
  if (v1)
  {

    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD0FE8);
    v17 = sub_1D917741C();
    v18 = sub_1D9178CFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D8CEC000, v17, v18, "Unable to encode Music Subscription Info. Cannot write file.", v19, 2u);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }

    sub_1D90613FC();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }

  else
  {
    v42 = v5;
    v46 = v15;
    v47 = v14;
    v45 = v13;
    v41 = objc_opt_self();
    v21 = [v41 defaultManager];
    v43 = objc_opt_self();
    v22 = [v43 documentsDirectory];
    sub_1D9176B9C();

    v44 = "undation16MockPurchaseTask";
    sub_1D9176B3C();
    v23 = v50 + 8;
    v24 = *(v50 + 8);
    v24(v8, v3);
    sub_1D9176BCC();
    v50 = v23;
    v24(v11, v3);
    v25 = v24;
    v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v27 = [v21 fileExistsAtPath_];

    if (v27)
    {
      v28 = [v43 documentsDirectory];
      sub_1D9176B9C();

      v29 = v42;
      sub_1D9176B3C();
      v25(v11, v3);
      v31 = v46;
      v30 = v47;
      sub_1D9176CAC();
      v25(v29, v3);
      sub_1D8D7567C(v30, v31);
    }

    else
    {
      v32 = [v41 defaultManager];
      v33 = [v43 documentsDirectory];
      sub_1D9176B9C();

      sub_1D9176B3C();
      v24(v8, v3);
      sub_1D9176BCC();
      v24(v11, v3);
      v34 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v35 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
      [v32 createFileAtPath:v34 contents:v35 attributes:0];

      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v36 = sub_1D917744C();
      __swift_project_value_buffer(v36, qword_1EDCD0FE8);
      v37 = sub_1D917741C();
      v38 = sub_1D9178D1C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1D8CEC000, v37, v38, "Created new file to store Music Subscription Info sync.", v39, 2u);
        MEMORY[0x1DA72CB90](v39, -1, -1);
      }

      sub_1D8D7567C(v47, v46);
    }
  }
}

void _s18PodcastsFoundation27MusicSubscriptionInfoLoaderC06deletecdE8IfNeededyyFZ_0()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D9176C2C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v31 - v5;
  v31[0] = objc_opt_self();
  v7 = [v31[0] defaultManager];
  v8 = objc_opt_self();
  v9 = [v8 documentsDirectory];
  sub_1D9176B9C();

  sub_1D9176B3C();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_1D9176BCC();
  v10(v6, v0);
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v12 = [v7 fileExistsAtPath_];

  if (v12)
  {
    v13 = [v31[0] defaultManager];
    v14 = [v8 documentsDirectory];
    sub_1D9176B9C();

    sub_1D9176B3C();
    v10(v3, v0);
    sub_1D9176BCC();
    v10(v6, v0);
    v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v32[0] = 0;
    LODWORD(v14) = [v13 removeItemAtPath:v15 error:v32];

    v16 = v32[0];
    if (v14)
    {

      v17 = v16;
    }

    else
    {
      v31[0] = v32[0];
      v22 = v32[0];
      v23 = sub_1D9176A6C();

      swift_willThrow();
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v24 = sub_1D917744C();
      __swift_project_value_buffer(v24, qword_1EDCD0FE8);
      v25 = v23;
      v26 = sub_1D917741C();
      v27 = sub_1D9178CFC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = sub_1D9176A5C();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&dword_1D8CEC000, v26, v27, "Unable to delete Music Subscription Info with error: %@.", v28, 0xCu);
        sub_1D8E262AC(v29);
        MEMORY[0x1DA72CB90](v29, -1, -1);
        MEMORY[0x1DA72CB90](v28, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD0FE8);
    v19 = sub_1D917741C();
    v20 = sub_1D9178D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "No subscription info on disk. Not deleting data.", v21, 2u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }
  }
}

uint64_t sub_1D9062278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D90622C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9062334()
{
  result = qword_1ECAB97E8;
  if (!qword_1ECAB97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB97E8);
  }

  return result;
}

unint64_t sub_1D906238C()
{
  result = qword_1ECAB97F0;
  if (!qword_1ECAB97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB97F0);
  }

  return result;
}

unint64_t sub_1D90623E4()
{
  result = qword_1ECAB1D30;
  if (!qword_1ECAB1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D30);
  }

  return result;
}

unint64_t sub_1D906243C()
{
  result = qword_1ECAB1D38;
  if (!qword_1ECAB1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D38);
  }

  return result;
}

unint64_t sub_1D9062490()
{
  result = qword_1ECAB1D28;
  if (!qword_1ECAB1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D28);
  }

  return result;
}

uint64_t sub_1D90624E4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return a4(v5);
}

id MusicSubscriptionInfoSyncUtil.__allocating_init(bag:accountStore:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1D9066280(a1, a2, v2, ObjectType);
}

id MusicSubscriptionInfoSyncUtil.init(bag:accountStore:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D90662DC(a1, a2, v2);
}

uint64_t sub_1D9062638(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v117 = a4;
  v118 = a5;
  v116 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9848, &qword_1D91ACC58);
  v8 = *(v7 - 8);
  v114 = v7;
  v115 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v80 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9850, &unk_1D91ACC60);
  v91 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v11 = &v80 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v80 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9860, &qword_1D91ACC70);
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v80 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9868, &qword_1D91ACC78);
  v92 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v120 = &v80 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9870, &qword_1D91ACC80);
  v99 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v119 = &v80 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9878, &qword_1D91ACC88);
  v102 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v90 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9880, &qword_1D91ACC90);
  v20 = *(v19 - 8);
  v104 = v19;
  v105 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v98 = &v80 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9888, &qword_1D91ACC98);
  v23 = *(v22 - 8);
  v107 = v22;
  v108 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v80 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9890, &qword_1D91ACCA0);
  v26 = *(v25 - 8);
  v109 = v25;
  v110 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v103 = &v80 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9898, &qword_1D91ACCA8);
  v29 = *(v28 - 8);
  v111 = v28;
  v112 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v106 = &v80 - v30;
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  *(v31 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB98A0, &qword_1D91ACCB0);
  swift_allocObject();
  v32 = a1;
  v33 = sub_1D9177A5C();
  v95 = *&v32[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_workQueue];
  v34 = v95;
  v94 = sub_1D9178DBC();
  v35 = *(v94 - 8);
  v93 = *(v35 + 56);
  v96 = v35 + 56;
  v93(v14, 1, 1, v94);
  v121 = v33;
  v122 = v34;
  v36 = sub_1D8CFD888();
  v80 = MEMORY[0x1E695C038];
  sub_1D8CF48EC(&qword_1EDCD0AB0, &unk_1ECAB98A0, &qword_1D91ACCB0, MEMORY[0x1E695C038]);
  v37 = sub_1D8CFBDF0(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
  v86 = v36;
  v87 = v37;
  sub_1D9177D3C();
  v89 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&unk_1ECAB09F0, &unk_1ECAB9850, &unk_1D91ACC60, MEMORY[0x1E695BCB8]);
  v38 = v81;
  v85 = v14;
  v39 = v82;
  sub_1D9177CEC();

  (*(v91 + 8))(v11, v39);
  sub_1D8D08A50(v14, &qword_1ECAB4D70, &unk_1D918BCE0);
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1D9066780;
  *(v41 + 24) = v40;
  v91 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB0418, &qword_1ECAB9860, &qword_1D91ACC70, MEMORY[0x1E695BE98]);
  v42 = v32;
  v43 = v83;
  sub_1D9177C6C();

  (*(v84 + 8))(v38, v43);
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1D90667D0;
  *(v45 + 24) = v44;
  v46 = v42;
  sub_1D91777FC();
  sub_1D9176C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98B0, &unk_1D91ACCB8);
  v84 = MEMORY[0x1E695BE28];
  sub_1D8CF48EC(&qword_1ECAB0648, &qword_1ECAB9868, &qword_1D91ACC78, MEMORY[0x1E695BE28]);
  v47 = v80;
  sub_1D8CF48EC(&unk_1EDCD0AF0, &qword_1ECAB98B0, &unk_1D91ACCB8, v80);
  v48 = v88;
  v49 = v120;
  sub_1D9177CBC();

  (*(v92 + 8))(v49, v48);
  *(swift_allocObject() + 16) = v46;
  v50 = v46;
  sub_1D91777FC();
  sub_1D917653C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9830, &qword_1D91ACC48);
  v120 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1ECAB05A8, &qword_1ECAB9870, &qword_1D91ACC80, MEMORY[0x1E695BE40]);
  sub_1D8CF48EC(&qword_1EDCD0B00, &qword_1ECAB9830, &qword_1D91ACC48, v47);
  v51 = v90;
  v52 = v97;
  v53 = v119;
  sub_1D9177CBC();

  (*(v99 + 8))(v53, v52);
  *(swift_allocObject() + 16) = v50;
  v54 = v50;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  v55 = v120;
  sub_1D8CF48EC(&qword_1ECAB05B0, &qword_1ECAB9878, &qword_1D91ACC88, v120);
  sub_1D8CF48EC(&qword_1EDCD0AE8, &qword_1ECAB5BF8, &unk_1D91913E0, v47);
  v56 = v98;
  v57 = v101;
  sub_1D9177CBC();

  (*(v102 + 8))(v51, v57);
  v58 = swift_allocObject();
  *(v58 + 16) = v54;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1D9066804;
  *(v59 + 24) = v58;
  sub_1D8CF48EC(&qword_1ECAB05A0, &qword_1ECAB9880, &qword_1D91ACC90, v55);
  v60 = v54;
  v61 = v100;
  v62 = v104;
  sub_1D9177C6C();

  (*(v105 + 8))(v56, v62);
  *(swift_allocObject() + 16) = v60;
  v63 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98B8, &unk_1D91ACCC8);
  v64 = v103;
  v65 = v107;
  sub_1D91776EC();

  (*(v108 + 8))(v61, v65);
  v66 = v85;
  v93(v85, 1, 1, v94);
  v122 = v95;
  sub_1D8CF48EC(&qword_1ECAB0690, &qword_1ECAB9890, &qword_1D91ACCA0, v84);
  v67 = v113;
  v68 = v109;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09B8, &qword_1ECAB9848, &qword_1D91ACC58, v89);
  v69 = v106;
  v70 = v114;
  sub_1D9177CEC();
  (*(v115 + 8))(v67, v70);
  sub_1D8D08A50(v66, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v110 + 8))(v64, v68);
  v71 = swift_allocObject();
  v72 = v116;
  v73 = v117;
  *(v71 + 16) = v116;
  *(v71 + 24) = v73;
  v74 = swift_allocObject();
  v74[2] = v63;
  v74[3] = v72;
  v75 = v118;
  v74[4] = v73;
  v74[5] = v75;
  sub_1D8CF48EC(&qword_1ECAB03D0, &qword_1ECAB9898, &qword_1D91ACCA8, v91);
  swift_retain_n();
  v76 = v63;
  v77 = v111;
  v78 = sub_1D9177BCC();

  (*(v112 + 8))(v69, v77);
  *&v76[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_syncSession] = v78;
}

uint64_t sub_1D9063674@<X0>(uint64_t *a2@<X8>)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98B0, &unk_1D91ACCB8);
  swift_allocObject();
  result = sub_1D9177A5C();
  *a2 = result;
  return result;
}

uint64_t sub_1D906370C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D917653C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  swift_allocObject();
  result = sub_1D9177A5C();
  *a2 = result;
  return result;
}

double sub_1D906386C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8[0] = *a1;
  v8[1] = v4;
  v8[2] = v6;
  sub_1D9061654(v8);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
  }

  return result;
}

void sub_1D90638D8(void **a1, void (*a2)(void *))
{
  v2 = *a1;
  if (*a1)
  {
    v15[0] = *a1;
    v4 = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if (swift_dynamicCast())
    {
      if (v16 != 3)
      {
LABEL_14:
        memset(v15, 0, sizeof(v15));
        a2(v15);

        return;
      }

      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v6 = sub_1D917744C();
      __swift_project_value_buffer(v6, qword_1EDCD0FE8);
      v7 = sub_1D917741C();
      v8 = sub_1D9178D1C();
      if (!os_log_type_enabled(v7, v8))
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "Not syncing Music Subscription Info because not past threshold.", v9, 2u);
    }

    else
    {
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v10 = sub_1D917744C();
      __swift_project_value_buffer(v10, qword_1EDCD0FE8);
      v11 = v2;
      v7 = sub_1D917741C();
      v12 = sub_1D9178CFC();

      if (!os_log_type_enabled(v7, v12))
      {
        goto LABEL_13;
      }

      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v9 = 138412290;
      v14 = sub_1D9176A5C();
      *(v9 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_1D8CEC000, v7, v12, "Music Subscription Info sync failed with error: %@", v9, 0xCu);
      sub_1D8D08A50(v13, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    MEMORY[0x1DA72CB90](v9, -1, -1);
    goto LABEL_13;
  }
}

uint64_t sub_1D9063B50(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v25 = a1[2];
  if (qword_1EDCD0FE0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0FE8);
  v13 = sub_1D917741C();
  v14 = sub_1D9178D1C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v7;
    v16 = a3;
    v17 = v15;
    *v15 = 0;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "Successfuly synced user's Music Subscription Info.", v15, 2u);
    v18 = v17;
    a3 = v16;
    v7 = v24;
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  if (v10)
  {
    v26 = v11;
    v27 = v10;
    v19 = v25;
    v28 = v25;
    sub_1D90600A4();
  }

  else
  {
    v20 = 0;
    v19 = v25;
  }

  qword_1ECAB9800 = v20;

  sub_1D9176E0C();
  v21 = OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_lastMusicSyncDate;
  swift_beginAccess();
  (*(v7 + 40))(a2 + v21, v9, v6);
  swift_endAccess();
  v26 = v11;
  v27 = v10;
  v28 = v19;
  return a3(&v26);
}

void sub_1D9063DAC(void (*a1)(uint64_t *), uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  if (a3)
  {

    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD0FE8);
    v10 = sub_1D917741C();
    v11 = sub_1D9178D1C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "Forcing the fetch for music subscription information.", v12, 2u);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    v18 = 0;
    LOBYTE(v19) = 0;
    a1(&v18);
  }

  else
  {
    v13 = *(a4 + OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_bag);

    v14 = [v13 doubleForKey_];
    v15 = [v14 asyncValuePromiseOnQueue_];

    v16 = swift_allocObject();
    *(v16 + 16) = sub_1D8D419F0;
    *(v16 + 24) = v8;
    v22 = sub_1D9066928;
    v23 = v16;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_1D8D5960C;
    v21 = &block_descriptor_88;
    v17 = _Block_copy(&v18);

    [v15 addFinishBlock_];
    _Block_release(v17);
  }
}

void sub_1D9064008(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a1 && (v24 = 0, v25 = 1, MEMORY[0x1DA72A000](a1, &v24), v25 != 1))
  {
    v14 = v24;
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD0FE8);
    v16 = sub_1D917741C();
    v17 = sub_1D9178D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v14;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Got threshold value for Music Subscription Info sync from bag: %f", v18, 0xCu);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    a3(v14, 0);
  }

  else
  {
    if (a2)
    {
      v5 = a2;
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v6 = sub_1D917744C();
      __swift_project_value_buffer(v6, qword_1EDCD0FE8);
      v7 = a2;
      v8 = sub_1D917741C();
      v9 = sub_1D9178CFC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        v12 = sub_1D9176A5C();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&dword_1D8CEC000, v8, v9, "Could not get Music Subscription Info threshold value from bag with error: %@", v10, 0xCu);
        sub_1D8D08A50(v11, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v11, -1, -1);
        MEMORY[0x1DA72CB90](v10, -1, -1);
      }

      v13 = a2;
      a3(a2, 1);
    }

    else
    {
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v19 = sub_1D917744C();
      __swift_project_value_buffer(v19, qword_1EDCD0FE8);
      v20 = sub_1D917741C();
      v21 = sub_1D9178CFC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D8CEC000, v20, v21, "Could not get Music Subscription Info threshold value from bag.", v22, 2u);
        MEMORY[0x1DA72CB90](v22, -1, -1);
      }

      sub_1D9066720();
      a2 = swift_allocError();
      *v23 = 2;
      a3(a2, 1);
    }
  }
}

void sub_1D90643B0(double a1)
{
  v2 = sub_1D9176E3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  sub_1D9176E0C();
  v12 = OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_lastMusicSyncDate;
  swift_beginAccess();
  v13 = *(v3 + 16);
  v35 = v1;
  v33 = v13;
  v13(v5, &v1[v12], v2);
  sub_1D9176DBC();
  v14 = *(v3 + 8);
  v14(v5, v2);
  sub_1D8CFBDF0(&qword_1EDCD5940, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v15 = sub_1D917818C();
  v14(v8, v2);
  v14(v11, v2);
  if (v15)
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD0FE8);
    v17 = v35;
    v18 = sub_1D917741C();
    v19 = sub_1D9178D1C();

    LODWORD(v34) = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136315138;
      v33(v11, &v35[v12], v2);
      sub_1D8CFBDF0(&qword_1EDCD5930, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v22 = v18;
      v23 = sub_1D9179A4C();
      v25 = v24;
      v14(v11, v2);
      v26 = sub_1D8CFA924(v23, v25, &v36);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1D8CEC000, v22, v34, "Not syncing Music Subscription Info because not past threshold -- last synced at: %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1DA72CB90](v21, -1, -1);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    else
    {
    }

    sub_1D9066720();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1EDCD0FE8);
    v28 = sub_1D917741C();
    v29 = sub_1D9178D1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D8CEC000, v28, v29, "Past threshold -- Syncing Music Subscription Info.", v30, 2u);
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }
  }
}

void sub_1D906483C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(Strong + OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_bag) URLForKey_];
    v8 = [v7 asyncValuePromiseOnQueue_];

    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = v6;
    aBlock[4] = sub_1D906691C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D90669A0;
    aBlock[3] = &block_descriptor_79;
    v10 = _Block_copy(aBlock);

    v11 = v6;

    [v8 addFinishBlock_];
    _Block_release(v10);
  }
}

uint64_t sub_1D90649BC(uint64_t a1, void *a2, void (*a3)(void), void *a4, void *a5)
{
  v48[2] = a5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98C0, &qword_1D91ACCD8);
  MEMORY[0x1EEE9AC00](v49);
  v10 = (v48 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v48 - v12;
  v14 = sub_1D9176C2C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v48 - v20;
  if (a1 && ((*(v15 + 56))(v13, 1, 1, v14, v19), sub_1D8CFBDF0(&qword_1ECAB2C90, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD8]), sub_1D91797EC(), (*(v15 + 48))(v13, 1, v14) != 1))
  {
    v48[1] = a4;
    v31 = *(v15 + 32);
    v31(v17, v13, v14);
    v31(v21, v17, v14);
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v32 = sub_1D917744C();
    __swift_project_value_buffer(v32, qword_1EDCD0FE8);
    v33 = sub_1D917741C();
    v34 = sub_1D9178D1C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      v50[0] = v48[0];
      *v35 = 136315138;
      swift_beginAccess();
      v36 = sub_1D9176ACC();
      v38 = a3;
      v39 = sub_1D8CFA924(v36, v37, v50);

      *(v35 + 4) = v39;
      a3 = v38;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Got URL for Music Subscription Info from bag: %s", v35, 0xCu);
      v40 = v48[0];
      __swift_destroy_boxed_opaque_existential_1Tm(v48[0]);
      MEMORY[0x1DA72CB90](v40, -1, -1);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6128, &unk_1D9192130);
    sub_1D91766EC();
    *(swift_allocObject() + 16) = xmmword_1D9189080;
    sub_1D91766BC();
    swift_beginAccess();
    sub_1D9176BDC();
    swift_endAccess();

    (*(v15 + 16))(v10, v21, v14);
    swift_storeEnumTagMultiPayload();
    a3(v10);
    sub_1D8D08A50(v10, &qword_1ECAB98C0, &qword_1D91ACCD8);
    return (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (a2)
    {
      v22 = a2;
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v23 = sub_1D917744C();
      __swift_project_value_buffer(v23, qword_1EDCD0FE8);
      v24 = a2;
      v25 = sub_1D917741C();
      v26 = sub_1D9178CFC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        v29 = sub_1D9176A5C();
        *(v27 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&dword_1D8CEC000, v25, v26, "Could not get Music Subscription Info endpoint from bag with error: %@", v27, 0xCu);
        sub_1D8D08A50(v28, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v28, -1, -1);
        MEMORY[0x1DA72CB90](v27, -1, -1);
      }

      *v10 = a2;
      swift_storeEnumTagMultiPayload();
      v30 = a2;
      a3(v10);
    }

    else
    {
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D917744C();
      __swift_project_value_buffer(v42, qword_1EDCD0FE8);
      v43 = sub_1D917741C();
      v44 = sub_1D9178CFC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1D8CEC000, v43, v44, "Could not get Music Subscription Info endpoint from bag", v45, 2u);
        MEMORY[0x1DA72CB90](v45, -1, -1);
      }

      sub_1D9066720();
      v46 = swift_allocError();
      *v47 = 0;
      *v10 = v46;
      swift_storeEnumTagMultiPayload();
      a3(v10);
    }

    return sub_1D8D08A50(v10, &qword_1ECAB98C0, &qword_1D91ACCD8);
  }
}

uint64_t sub_1D9065128@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v26 = sub_1D9176C2C();
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D917653C();
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  if (qword_1EDCD0ED8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0EE0);
  v13 = sub_1D917741C();
  v14 = sub_1D9178D1C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = a1;
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "Preparing URL request for fetching Music Subscription Info.", v16, 2u);
    v17 = v16;
    a1 = v15;
    MEMORY[0x1DA72CB90](v17, -1, -1);
  }

  v18 = v28;
  v19 = [objc_allocWithZone(IMURLRequestEncoder) initWithBag_];
  [v19 setPersonalizeRequests_];
  [v19 setUrlKnownToBeTrusted_];
  (*(v3 + 16))(v5, a1, v26);
  sub_1D91764EC();
  v20 = v27;
  (*(v6 + 16))(v8, v11, v27);
  v21 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  (*(v6 + 32))(v22 + v21, v8, v20);
  *(v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9830, &qword_1D91ACC48);
  swift_allocObject();
  v23 = v18;
  v24 = sub_1D9177A5C();
  result = (*(v6 + 8))(v11, v20);
  *v29 = v24;
  return result;
}

void sub_1D90654AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D91764BC();
  v10 = [*(a5 + OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_accountStore) ams_activeiTunesAccount];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v13[4] = sub_1D9066718;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D90669A0;
  v13[3] = &block_descriptor_22_2;
  v12 = _Block_copy(v13);

  [a3 prepareRequest:v9 account:v10 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1D90655DC(void *a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9838, &qword_1D91ACC50);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v32 - v7);
  if (a2)
  {
    v9 = a2;
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v10 = sub_1D917744C();
    __swift_project_value_buffer(v10, qword_1EDCD0FE8);
    v11 = a2;
    v12 = sub_1D917741C();
    v13 = sub_1D9178CFC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1D8CEC000, v12, v13, "Could not prepare URL request for Music Subs Info sync with error: %@", v14, 0xCu);
      sub_1D8D08A50(v15, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v15, -1, -1);
      MEMORY[0x1DA72CB90](v14, -1, -1);
    }

    *v8 = a2;
    swift_storeEnumTagMultiPayload();
    v18 = a2;
    a3(v8);
  }

  else if (a1)
  {
    v19 = qword_1EDCD0FE0;
    v20 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD0FE8);
    v22 = sub_1D917741C();
    v23 = sub_1D9178D1C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "Prepared request for Music Subscription Info sync.", v24, 2u);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    sub_1D91764DC();
    swift_storeEnumTagMultiPayload();
    a3(v8);
  }

  else
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D917744C();
    __swift_project_value_buffer(v25, qword_1EDCD0FE8);
    v26 = sub_1D917741C();
    v27 = sub_1D9178CFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D8CEC000, v26, v27, "No request available after attempting to prepare request for Music Subs Info sync.", v28, 2u);
      MEMORY[0x1DA72CB90](v28, -1, -1);
    }

    sub_1D9066720();
    v29 = swift_allocError();
    *v30 = 1;
    *v8 = v29;
    swift_storeEnumTagMultiPayload();
    a3(v8);
  }

  return sub_1D8D08A50(v8, &unk_1ECAB9838, &qword_1D91ACC50);
}

void sub_1D90659E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = qword_1EDCD0ED8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0EE0);
  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "Performing request to Music Subscription Info sync endpoint.", v9, 2u);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v10 = [objc_opt_self() defaultSession];
  v11 = sub_1D91764BC();
  v12 = [v10 dataTaskPromiseWithRequest_];

  v13 = swift_allocObject();
  *(v13 + 16) = sub_1D90668CC;
  *(v13 + 24) = v4;
  v15[4] = sub_1D906690C;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D90669A0;
  v15[3] = &block_descriptor_70_1;
  v14 = _Block_copy(v15);

  [v12 addFinishBlock_];
  _Block_release(v14);
}

void sub_1D9065C08(void *a1, id a2, void (*a3)(id, unint64_t, uint64_t))
{
  if (a2)
  {
    v4 = a2;
    v5 = a2;
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1EDCD0FE8);
    v7 = v4;
    v8 = sub_1D917741C();
    v9 = sub_1D9178CFC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = sub_1D9176A5C();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "Unable to fetch Music Subscription Info with error: %@", v10, 0xCu);
      sub_1D8D08A50(v11, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    v13 = v4;
    a3(v4, 0, 1);

LABEL_7:

    return;
  }

  if (!a1)
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD0FE8);
    v19 = sub_1D917741C();
    v20 = sub_1D9178CFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Unable to get data from url response from commerce endpoint.", v21, 2u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    sub_1D9066720();
    v4 = swift_allocError();
    *v22 = 4;
    a3(v4, 0, 1);
    goto LABEL_7;
  }

  v14 = [a1 data];
  v15 = sub_1D9176C8C();
  v17 = v16;

  sub_1D8D752C4(v15, v17);
  a3(v15, v17, 0);
  sub_1D8D7567C(v15, v17);

  sub_1D8D7567C(v15, v17);
}

uint64_t sub_1D9065F24()
{
  sub_1D917656C();
  swift_allocObject();
  sub_1D917655C();
  sub_1D9061600();
  sub_1D917654C();
  if (v3)
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1EDCD0FE8);
    v5 = v3;
    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_1D9176A5C();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Unable to decode json data into MusicSubscriptionInfo class with error: %@.", v8, 0xCu);
      sub_1D8D08A50(v9, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    swift_willThrow();
  }
}

id MusicSubscriptionInfoSyncUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicSubscriptionInfoSyncUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicSubscriptionInfoSyncUtil(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D9066280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(type metadata accessor for MusicSubscriptionInfoSyncUtil(0));

  return sub_1D90662DC(a1, a2, v6);
}

id sub_1D90662DC(uint64_t a1, uint64_t a2, char *a3)
{
  v17 = a1;
  v18 = a2;
  v4 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D9178E0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_workQueue;
  v15[1] = sub_1D8CFD888();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8098], v6);
  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBDF0(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  *&a3[v16] = sub_1D9178E4C();
  sub_1D9176CEC();
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_syncSession] = 0;
  v10 = &a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentKey];
  *v10 = 0x746E656D676573;
  *(v10 + 1) = 0xE700000000000000;
  v11 = &a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentValue];
  *v11 = 0x636973754DLL;
  *(v11 + 1) = 0xE500000000000000;
  v12 = v18;
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_bag] = v17;
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_accountStore] = v12;
  v13 = type metadata accessor for MusicSubscriptionInfoSyncUtil(0);
  v19.receiver = a3;
  v19.super_class = v13;
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_1D9066668(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D917653C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1D90654AC(a1, a2, v8, v2 + v6, v7);
}

unint64_t sub_1D9066720()
{
  result = qword_1ECAB1460;
  if (!qword_1ECAB1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1460);
  }

  return result;
}

void sub_1D906684C(uint64_t a1, uint64_t a2)
{
  sub_1D917653C();

  sub_1D90659E4(a1, a2);
}

uint64_t sub_1D90668CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

unint64_t sub_1D9066944()
{
  result = qword_1ECAB98C8;
  if (!qword_1ECAB98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB98C8);
  }

  return result;
}

PodcastsFoundation::OAuthAuthenticationError_optional __swiftcall OAuthAuthenticationError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OAuthAuthenticationError.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000016;
    v7 = 0xD000000000000019;
    if (v1 != 8)
    {
      v7 = 0x5F64696C61766E69;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000017;
    if (v1 != 5)
    {
      v8 = 0xD000000000000013;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x645F737365636361;
    v3 = 0x5F64696C61766E69;
    v4 = 0x5F64696C61766E69;
    if (v1 != 3)
    {
      v4 = 0x655F726576726573;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x5F64696C61766E69;
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

uint64_t sub_1D9066B98()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECABA0(v3, v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D9066BE8(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  sub_1D8ECABA0(v4, v2);
  return sub_1D9179E1C();
}

unint64_t sub_1D9066C38@<X0>(unint64_t *a1@<X8>)
{
  result = OAuthAuthenticationError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OAuthAuthenticationErrorResponse.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t OAuthAuthenticationErrorResponse.detailURI.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t OAuthAuthenticationErrorResponse.responseItems.getter()
{
  v20 = sub_1D91766EC();
  v1 = *(v20 - 8);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v20);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v19[1] = v0[1];
  v19[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6128, &unk_1D9192130);
  v11 = *(v1 + 72);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D9189080;
  sub_1D91766BC();

  if (v8)
  {
    sub_1D91766BC();
    v13 = sub_1D8D8EDF4(1, 2, 1, v13);
    *(v13 + 16) = 2;
    v14 = v7;
    v15 = v20;
    (*(v2 + 32))(v13 + v12 + v11, v14, v20);
    if (!v10)
    {
      return v13;
    }
  }

  else
  {
    v15 = v20;
    if (!v10)
    {
      return v13;
    }
  }

  sub_1D91766BC();
  v17 = *(v13 + 16);
  v16 = *(v13 + 24);
  if (v17 >= v16 >> 1)
  {
    v13 = sub_1D8D8EDF4((v16 > 1), v17 + 1, 1, v13);
  }

  *(v13 + 16) = v17 + 1;
  (*(v2 + 32))(v13 + v12 + v17 * v11, v4, v15);
  return v13;
}

void __swiftcall OAuthAuthenticationErrorResponse.init(body:)(PodcastsFoundation::OAuthAuthenticationErrorResponse_optional *__return_ptr retstr, Swift::OpaquePointer body)
{
  if (!*(body._rawValue + 2) || (v4 = sub_1D8D33C70(0x726F727265, 0xE500000000000000), (v5 & 1) == 0) || (v6 = (*(body._rawValue + 7) + 16 * v4), v7 = *v6, v8 = v6[1], , v9._countAndFlagsBits = v7, v9._object = v8, OAuthAuthenticationError.init(rawValue:)(v9), v20 == 10))
  {

    *&retstr->value.error = 0;
    retstr->value.description.value._countAndFlagsBits = 0;
    retstr->value.detailURI.value._countAndFlagsBits = 0;
    retstr->value.detailURI.value._object = 0;
    retstr->value.description.value._object = 1;
    return;
  }

  if (!*(body._rawValue + 2))
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_13;
  }

  v10 = sub_1D8D33C70(0xD000000000000011, 0x80000001D91D46B0);
  if ((v11 & 1) == 0)
  {
    v14 = 0;
    v13 = 0;
    if (*(body._rawValue + 2))
    {
      goto LABEL_11;
    }

LABEL_13:
    v19 = 0;
    v18 = 0;
    goto LABEL_14;
  }

  v12 = (*(body._rawValue + 7) + 16 * v10);
  v14 = *v12;
  v13 = v12[1];

  if (!*(body._rawValue + 2))
  {
    goto LABEL_13;
  }

LABEL_11:
  v15 = sub_1D8D33C70(0x72755F726F727265, 0xE900000000000069);
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = (*(body._rawValue + 7) + 16 * v15);
  v19 = *v17;
  v18 = v17[1];

LABEL_14:

  *&retstr->value.error = v20;
  retstr->value.description.value._countAndFlagsBits = v14;
  retstr->value.description.value._object = v13;
  retstr->value.detailURI.value._countAndFlagsBits = v19;
  retstr->value.detailURI.value._object = v18;
}

void __swiftcall OAuthAuthenticationErrorResponse.init(error:description:detailURI:)(PodcastsFoundation::OAuthAuthenticationErrorResponse *__return_ptr retstr, PodcastsFoundation::OAuthAuthenticationError error, Swift::String_optional description, Swift::String_optional detailURI)
{
  retstr->error = *error;
  retstr->description = description;
  retstr->detailURI = detailURI;
}

unint64_t sub_1D9067248()
{
  result = qword_1ECAB98D0;
  if (!qword_1ECAB98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB98D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OAuthAuthenticationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OAuthAuthenticationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *OAuthCancellationSession.__allocating_init(oAuthAdamID:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  if (qword_1EDCD0990 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDCD0998;
  v4[3] = a2;
  v4[4] = v5;
  v4[2] = a1;
  v6 = v5;

  MEMORY[0x1DA7298F0](0x6C6C65636E614320, 0xED00006E6F697461);
  v4[5] = a1;
  v4[6] = a2;
  return v4;
}

void *OAuthCancellationSession.init(oAuthAdamID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDCD0990 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v5 = qword_1EDCD0998;
  v3[3] = a2;
  v3[4] = v5;
  v3[2] = a1;
  v9 = a1;
  v6 = v5;

  MEMORY[0x1DA7298F0](0x6C6C65636E614320, 0xED00006E6F697461);
  v3[5] = v9;
  v3[6] = a2;
  return v3;
}

uint64_t OAuthCancellationSession.deinit()
{

  return v0;
}

uint64_t OAuthCancellationSession.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t OAuthSessionError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D9067734()
{
  result = qword_1ECAB98D8;
  if (!qword_1ECAB98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB98D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OAuthSessionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OAuthSessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D90678D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 8 * v7 + 32);
      v12 = v11;
      result = v6(&v12);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v13 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D8E31798(0, *(v8 + 16) + 1, 1);
          v8 = v13;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_1D8E31798((v9 > 1), v10 + 1, 1);
          v8 = v13;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v11;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1D9067A30(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x1DA72AA90](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1D917959C();
        sub_1D91795DC();
        v4 = v15;
        sub_1D91795EC();
        sub_1D91795AC();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

uint64_t PurchaseControllerProtocol.productRecentlyPurchasedPublisher(adamId:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98E0, &qword_1D91AD150);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98E8, &qword_1D91AD158);
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98F0, &qword_1D91AD160);
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98F8, &qword_1D91AD168);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v26 - v20;
  if ((a2 & 1) != 0 || !a1 || a1 == 1000000000000)
  {
    v30 = 0;
    sub_1D9177A0C();
    sub_1D8CF48EC(&qword_1ECAB9900, &qword_1ECAB98E0, &qword_1D91AD150, MEMORY[0x1E695C008]);
    v22 = sub_1D9177B1C();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v24 = v17;
    v25 = v18;
    (*(v27 + 8))(v26, v19);
    *(swift_allocObject() + 16) = a1;
    sub_1D8CF48EC(&qword_1ECAB9908, &qword_1ECAB98E8, &qword_1D91AD158, MEMORY[0x1E695C068]);
    sub_1D9177B9C();

    (*(v28 + 8))(v12, v10);
    sub_1D8CF48EC(&qword_1ECAB9910, &qword_1ECAB98F0, &qword_1D91AD160, MEMORY[0x1E695BD60]);
    sub_1D9177D6C();
    (*(v29 + 8))(v15, v13);
    sub_1D8CF48EC(&qword_1ECAB9918, &qword_1ECAB98F8, &qword_1D91AD168, MEMORY[0x1E695BD38]);
    v22 = sub_1D9177B1C();
    (*(v25 + 8))(v21, v24);
  }

  return v22;
}

void sub_1D9068050(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_1D8E40D20();
  v4 = sub_1D917927C();
  LOBYTE(v3) = sub_1D8EF0850(v4, v5, v3);

  *a2 = v3 & 1;
}

uint64_t sub_1D90680C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_1D91791BC();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return sub_1D8D34864(v8);
}

uint64_t sub_1D90681B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1D91791BC();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1D9068320@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  return sub_1D8D088B4(v1 + v3, a1, &unk_1ECAB9920, &unk_1D91AD170);
}

uint64_t sub_1D9068470()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D9177ACC();

  return v1;
}

uint64_t sub_1D9068530(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1D9177ADC();
}

double sub_1D90685F0(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x88)) = a1;

  return result;
}

uint64_t sub_1D906867C()
{
  sub_1D90707F4();

  return swift_unknownObjectRetain();
}

id (*sub_1D90686A4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D9068724;
}

id sub_1D9068724(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D8D2424C();
  }

  return result;
}

uint64_t sub_1D9068758(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  swift_beginAccess();
  v4 = *(v1 + v3);
  os_unfair_lock_lock((v4 + 20));
  *(v4 + 16) = a1;
  os_unfair_lock_unlock((v4 + 20));
  return swift_endAccess();
}

id sub_1D90687E0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  return v1;
}

void *PurchaseController.__allocating_init(uiDelegate:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D9070854(a1);
  swift_getAssociatedTypeWitness();
  v5 = sub_1D91791BC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void *PurchaseController.init(uiDelegate:)(uint64_t a1)
{
  v2 = sub_1D9070854(a1);
  swift_getAssociatedTypeWitness();
  v3 = sub_1D91791BC();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

void sub_1D90689A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = 0;
    PurchaseController.getStateFromMediaAPI(condition:)(&v4);
  }
}

uint64_t PurchaseController.getStateFromMediaAPI(condition:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D9177E0C();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v10;
  *(v11 + 32) = ObjectType;
  aBlock[4] = sub_1D9071318;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_69;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  sub_1D9177E4C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v9, v6, v12);
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

id PurchaseController.__deallocating_deinit()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver_];

  v5 = type metadata accessor for PurchaseController(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v4);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1D9068DEC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *((*v2 & *a1) + 0x70);
  swift_getAssociatedTypeWitness();
  v4 = sub_1D91791BC();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  sub_1D8D08A50(&a1[*((*v2 & *a1) + 0x78)], &unk_1ECAB9920, &unk_1D91AD170);
  v5 = *((*v2 & *a1) + 0x80);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  (*(*(v6 - 8) + 8))(&a1[v5], v6);

  swift_unknownObjectRelease();
}

uint64_t sub_1D90690E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a8;
  v45 = a7;
  v50 = a6;
  v48 = a3;
  v47 = a1;
  v12 = sub_1D9177E0C();
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D9177E9C();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D917744C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a5;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v44 = a9;
  v20 = __swift_project_value_buffer(v16, qword_1EDCD0690);
  swift_beginAccess();
  (*(v17 + 16))(v19, v20, v16);

  v21 = sub_1D917741C();
  v22 = sub_1D9178D1C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v15;
    v24 = a4;
    v25 = v23;
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    v27 = v47;
    *(v25 + 4) = sub_1D8CFA924(v47, a2, aBlock);
    _os_log_impl(&dword_1D8CEC000, v21, v22, "Scheduling purchase task for buyParams %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1DA72CB90](v26, -1, -1);
    v28 = v25;
    a4 = v24;
    v15 = v42;
    MEMORY[0x1DA72CB90](v28, -1, -1);

    (*(v17 + 8))(v19, v16);
  }

  else
  {

    (*(v17 + 8))(v19, v16);
    v27 = v47;
  }

  v29 = v46;
  sub_1D8D088B4(v45, v58, &qword_1ECAB57F0, &unk_1D9190AA0);
  v30 = swift_allocObject();
  v31 = v58[1];
  *(v30 + 72) = v58[0];
  *(v30 + 16) = v29;
  *(v30 + 24) = v27;
  v32 = v48;
  *(v30 + 32) = a2;
  *(v30 + 40) = v32;
  v33 = v43;
  *(v30 + 48) = a4;
  *(v30 + 56) = v33;
  v34 = v49;
  *(v30 + 64) = v50;
  *(v30 + 88) = v31;
  v35 = v44;
  *(v30 + 104) = v34;
  *(v30 + 112) = v35;
  aBlock[4] = sub_1D9071328;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_9_2;
  v36 = _Block_copy(aBlock);

  v37 = v29;

  sub_1D9177E4C();
  v56 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v38 = v52;
  v39 = v55;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v38, v36);
  _Block_release(v36);
  (*(v54 + 8))(v38, v39);
  (*(v51 + 8))(v15, v53);
}

uint64_t sub_1D90696BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a7;
  v39 = a8;
  v36 = a4;
  v37 = a5;
  v34 = a2;
  v35 = a3;
  v32 = a9;
  v33 = a10;
  v12 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v31 - v14;
  v18 = *((v17 & v16) + 0x58);
  swift_getAssociatedTypeWitness();
  v19 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v31 - v20;
  v22 = swift_allocBox();
  v24 = v23;
  (*(v18 + 24))(v12, v18);
  sub_1D90681B4(v21);
  (*(v18 + 40))(v21, v12, v18);
  (*(v13 + 16))(v15, v24, v12);
  v40 = a6;
  v25 = swift_allocObject();
  v26 = v32;
  v27 = v33;
  v25[2] = a1;
  v25[3] = v26;
  v25[4] = v27;
  v25[5] = v22;
  v28 = *(v18 + 64);
  v29 = a1;

  v28(v34, v35, v36, v37, &v40, v38, v39, sub_1D90718CC, v25, v12, v18);

  (*(v13 + 8))(v15, v12);
}

uint64_t sub_1D9069954(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0x68));
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a1;
  aBlock[4] = sub_1D9071930;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_80_2;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  v18 = a1;
  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_1D9069C64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D9177E0C();
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock[0]) = 0;
  PurchaseController.getStateFromMediaAPI(condition:)(aBlock);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v13 = sub_1D9178E1C();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  aBlock[4] = sub_1D8E8B4F0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_86_3;
  v15 = _Block_copy(aBlock);

  v16 = a4;

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v12, v9, v15);
  _Block_release(v15);

  (*(v19 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v18);
}

uint64_t sub_1D9069F80()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1D9071364;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_15_4;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_1D9177E4C();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void sub_1D906A26C(void *a1)
{
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EDCD0690);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "Resetting all subs to not subscribed state", v9, 2u);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_1D906A45C(MEMORY[0x1E69E7CC0]);

  *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x90)) = 1;
}

uint64_t sub_1D906A45C(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  ObjectType = swift_getObjectType();
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = sub_1D917744C();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CD0];
  v27 = v9 + 16;
  v10 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v11 = [objc_opt_self() predicateWithValue_];
  [v10 setPredicate_];

  v12 = sub_1D90687E0();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = *((v5 & v4) + 0x50);
  v14[3] = *((v5 & v4) + 0x58);
  v14[4] = v13;
  v14[5] = v25;
  v14[6] = v10;
  v14[7] = v9;
  v14[8] = ObjectType;
  aBlock[4] = sub_1D907181C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_58;
  v15 = _Block_copy(aBlock);

  v16 = v10;

  [v12 performBlockAndWaitWithSave_];
  _Block_release(v15);

  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_1EDCD0690);
  swift_beginAccess();
  v18 = v26;
  (*(v26 + 16))(v8, v17, v6);
  v19 = sub_1D917741C();
  v20 = sub_1D9178D1C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D8CEC000, v19, v20, "Finished updating subscriptions.", v21, 2u);
    MEMORY[0x1DA72CB90](v21, -1, -1);
    v22 = v16;
  }

  else
  {
    v22 = v19;
    v19 = v16;
  }

  (*(v18 + 8))(v8, v6);
  swift_beginAccess();
  v23 = *(v9 + 16);

  return v23;
}

void sub_1D906A898(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    if (qword_1EDCD0ED8 != -1)
    {
      swift_once();
    }

    v2 = sub_1D917744C();
    __swift_project_value_buffer(v2, qword_1EDCD0EE0);
    oslog = sub_1D917741C();
    v3 = sub_1D9178D1C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D8CEC000, oslog, v3, "No music subscription information fetched. Not saving in memory.", v4, 2u);
      MEMORY[0x1DA72CB90](v4, -1, -1);
    }
  }
}

uint64_t sub_1D906A98C()
{
  v0 = sub_1D917744C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EDCD0690);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "Getting channel subscription state from MAPI after updating all feeds.", v7, 2u);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  HIBYTE(v9) = 1;
  return PurchaseController.getStateFromMediaAPI(condition:)(&v9 + 7);
}

void sub_1D906AB50(void *a1)
{
  v1 = a1;
  sub_1D906A98C();
}

void sub_1D906AB98()
{
  v0 = sub_1D917744C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EDCD0690);
  swift_beginAccess();
  v8 = *(v1 + 16);
  v8(v6, v7, v0);
  v9 = sub_1D917741C();
  v10 = sub_1D9178D1C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = v3;
    v12 = v11;
    *v11 = 0;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "Got entitlementsDidChange notification", v11, 2u);
    v13 = v12;
    v3 = v19;
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  v14 = *(v1 + 8);
  v14(v6, v0);
  sub_1D9068758(1);
  v8(v3, v7, v0);
  v15 = sub_1D917741C();
  v16 = sub_1D9178D1C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D8CEC000, v15, v16, "Set receivedEntitlementsNotification to true", v17, 2u);
    MEMORY[0x1DA72CB90](v17, -1, -1);
  }

  v14(v3, v0);
  v20 = 0;
  PurchaseController.getStateFromMediaAPI(condition:)(&v20);
  sub_1D8D6C624(1, sub_1D906A898, 0);
}

void sub_1D906AE78(void *a1)
{
  v1 = a1;
  sub_1D906AB98();
}

id PurchaseController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PurchaseController.RefreshCondition.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D906B03C(uint64_t a1)
{
  sub_1D9179DBC();
  PurchaseController.RefreshCondition.hash(into:)();
  return sub_1D9179E1C();
}

void sub_1D906B078(void *a1, char a2, uint64_t a3)
{
  v63 = a3;
  v5 = *MEMORY[0x1E69E7D40] & *a1;
  v6 = sub_1D917744C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = [objc_opt_self() ams_sharedAccountStore];
  v17 = [v16 ams_activeiTunesAccount];

  if (v17)
  {

    if (([objc_opt_self() acknowledgementNeededForPrivacyIdentifier_] & 1) == 0)
    {
      if (a2)
      {
        v18 = *(v5 + 80);
        v61 = *(v5 + 88);
        v62 = v18;
        v19 = swift_allocObject();
        v60 = v19;
        *(v19 + 16) = MEMORY[0x1E69E7CC0];
        v20 = v19 + 16;
        if (qword_1EDCD5AA8 != -1)
        {
          swift_once();
        }

        v21 = __swift_project_value_buffer(v6, qword_1EDCD0690);
        swift_beginAccess();
        v22 = v7;
        v23 = *(v7 + 16);
        v56 = v7 + 16;
        v57 = v21;
        v55 = v23;
        v23(v15, v21, v6);
        v24 = sub_1D917741C();
        v25 = sub_1D9178D1C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = v20;
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1D8CEC000, v24, v25, "Fetching all channels for personalization.", v27, 2u);
          v28 = v27;
          v20 = v26;
          v22 = v7;
          MEMORY[0x1DA72CB90](v28, -1, -1);
        }

        v59 = v20;

        v29 = *(v22 + 8);
        v58 = v22 + 8;
        v54 = v29;
        v29(v15, v6);
        v30 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
        v31 = [objc_opt_self() predicateWithValue_];
        [v30 setPredicate_];

        v32 = v63;
        v33 = sub_1D90687E0();
        v34 = swift_allocObject();
        v35 = v61;
        v34[2] = v62;
        v34[3] = v35;
        v34[4] = v30;
        v34[5] = v20;
        v34[6] = v32;
        v36 = swift_allocObject();
        *(v36 + 16) = sub_1D907193C;
        *(v36 + 24) = v34;
        v68 = sub_1D8D24508;
        v69 = v36;
        aBlock = MEMORY[0x1E69E9820];
        v65 = 1107296256;
        v66 = sub_1D8D24488;
        v67 = &block_descriptor_98_1;
        v37 = _Block_copy(&aBlock);
        v38 = v30;

        [v33 performBlockAndWait_];

        _Block_release(v37);
        LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

        if (v32)
        {
          __break(1u);
        }

        else if (*(*v59 + 16))
        {
          v55(v12, v57, v6);
          v39 = sub_1D917741C();
          v40 = sub_1D9178D1C();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_1D8CEC000, v39, v40, "Retrieving personalized polling interval.", v41, 2u);
            MEMORY[0x1DA72CB90](v41, -1, -1);
          }

          v54(v12, v6);
          v42 = [objc_opt_self() sharedInstance];
          v43 = [v42 personalizedChannelPollingInterval];

          v44 = [v43 asyncValuePromiseOnQueue_];
          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v46 = swift_allocObject();
          v47 = v61;
          v46[2] = v62;
          v46[3] = v47;
          v46[4] = v60;
          v46[5] = v45;
          v68 = sub_1D907194C;
          v69 = v46;
          aBlock = MEMORY[0x1E69E9820];
          v65 = 1107296256;
          v66 = sub_1D8D5960C;
          v67 = &block_descriptor_105_1;
          v48 = _Block_copy(&aBlock);

          [v44 addFinishBlock_];
          _Block_release(v48);
        }

        else
        {
        }
      }

      else
      {
        sub_1D906B87C();
      }
    }
  }

  else
  {
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v6, qword_1EDCD0690);
    swift_beginAccess();
    v50 = v7;
    (*(v7 + 16))(v9, v49, v6);
    v51 = sub_1D917741C();
    v52 = sub_1D9178D1C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1D8CEC000, v51, v52, "Resetting subscription cache since user is not signed in.", v53, 2u);
      MEMORY[0x1DA72CB90](v53, -1, -1);
    }

    (*(v50 + 8))(v9, v6);
    sub_1D9069F80();
  }
}

uint64_t sub_1D906B87C()
{
  v0 = sub_1D917744C();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v47 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  v44 = &v36 - v3;
  v5 = type metadata accessor for MediaRequest.Params(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D8D946F4(&unk_1F5461CE0);
  sub_1D8D08A50(&unk_1F5461D00, &unk_1ECAB9A50, &unk_1D9197130);
  v45 = sub_1D8D946F4(&unk_1F5461D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
  swift_arrayDestroy();
  v9 = sub_1D9176C2C();
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v11 = MEMORY[0x1E69E7CC0];
  v43 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v42 = sub_1D8D94DF8(v11);
  v41 = sub_1D8D951E0(v11);
  v40 = sub_1D8D9503C(v11);
  v38 = sub_1D8D953C4(v11);
  v12 = sub_1D8D952D8(v11);
  v39 = sub_1D8D95394(v11);
  v13 = sub_1D8D957C4(v11);
  *(v8 + 41) = 263;
  v8[43] = 5;
  v8[152] = 1;
  v8[201] = 1;
  v14 = v6[30];
  v10(&v8[v14], 1, 1, v9);
  v15 = &v8[v6[31]];
  v16 = &v8[v6[33]];
  v17 = v6[35];
  v37 = v6[36];
  v18 = &v8[v17];
  v19 = &v8[v6[37]];
  *v8 = 1;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 10) = 83952388;
  v20 = v42;
  *(v8 + 6) = v43;
  *(v8 + 7) = v20;
  v21 = v40;
  *(v8 + 8) = v41;
  *(v8 + 9) = v11;
  v22 = v45;
  v23 = v46;
  *(v8 + 10) = v21;
  *(v8 + 11) = v23;
  *(v8 + 12) = v22;
  *(v8 + 13) = v38;
  *(v8 + 14) = v11;
  *(v8 + 15) = v12;
  *(v8 + 16) = v11;
  *(v8 + 17) = v11;
  *(v8 + 18) = v11;
  v8[152] = 1;
  *(v8 + 20) = 30;
  v8[168] = 0;
  *(v8 + 22) = v39;
  *(v8 + 23) = v13;
  *(v8 + 24) = 0;
  *(v8 + 100) = 257;
  v8[202] = 0;
  sub_1D9071830(v44, &v8[v14], &unk_1ECAB5910, &qword_1D9188C90);
  *v15 = 0;
  *(v15 + 1) = 0;
  v8[v6[32]] = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v8[v6[34]] = v11;
  *v18 = 0;
  *(v18 + 1) = 0;
  v8[v37] = 2;
  *v19 = 0;
  *(v19 + 1) = 0;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v24 = v49;
  v25 = __swift_project_value_buffer(v49, qword_1EDCD0690);
  swift_beginAccess();
  v27 = v47;
  v26 = v48;
  (*(v48 + 16))(v47, v25, v24);
  v28 = sub_1D917741C();
  v29 = sub_1D9178D1C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D8CEC000, v28, v29, "Getting state from MediaAPI for user's entitlements.", v30, 2u);
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  (*(v26 + 8))(v27, v24);
  v31 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v32 = swift_allocObject();
  v33 = v50;
  v32[2] = v50;
  v34 = v33;
  sub_1D904AD58(v8, 0, sub_1D9071898, v32);

  return sub_1D8D90BEC(v8);
}

void sub_1D906BD7C(uint64_t a1, void *a2)
{
  v3 = sub_1D90687E0();
  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v4 = sub_1D917908C();

  if (v4 >> 62)
  {
    v5 = sub_1D917935C();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D8E31798(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  v7 = v14;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA72AA90](v6, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    [v8 lastPersonalizedRequestDate];
    v11 = v10;

    v14 = v7;
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D8E31798((v12 > 1), v13 + 1, 1);
    }

    ++v6;
    *(v7 + 16) = v13 + 1;
    *(v7 + 8 * v13 + 32) = v11;
  }

  while (v5 != v6);

LABEL_14:
  *a2 = v7;
}

uint64_t sub_1D906BF40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v83 = a3;
  v6 = sub_1D917744C();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  v17 = sub_1D9176E3C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v75 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  if (a1)
  {
    v27 = a1;
    sub_1D9176E2C();
    v80 = v27;
    [v27 doubleValue];
    sub_1D9176D7C();
    v84 = *(v18 + 8);
    v85 = v18 + 8;
    v84(v23, v17);
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v28 = v87;
    v29 = __swift_project_value_buffer(v87, qword_1EDCD0690);
    swift_beginAccess();
    v30 = v86;
    v31 = *(v86 + 16);
    v77 = v86 + 16;
    v78 = v29;
    v76 = v31;
    v31(v16, v29, v28);
    v32 = *(v18 + 16);
    v81 = v26;
    v32(v20, v26, v17);
    v33 = sub_1D917741C();
    v34 = sub_1D9178D1C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v17;
      v37 = swift_slowAlloc();
      v88[0] = v37;
      *v35 = 136315138;
      sub_1D8CFBE38(&qword_1EDCD5930, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v38 = sub_1D9179A4C();
      v40 = v39;
      v41 = v20;
      v42 = v36;
      v84(v41, v36);
      v43 = sub_1D8CFA924(v38, v40, v88);
      v28 = v87;

      *(v35 + 4) = v43;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Updating channels if any were updated before %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1DA72CB90](v37, -1, -1);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    else
    {

      v54 = v20;
      v42 = v17;
      v84(v54, v17);
    }

    v55 = *(v30 + 8);
    v55(v16, v28);
    v56 = v83;
    v57 = swift_beginAccess();
    v58 = *(v56 + 16);
    MEMORY[0x1EEE9AC00](v57);
    v59 = v81;
    *(&v75 - 2) = v81;

    v60 = *(sub_1D90678D8(sub_1D9071958, (&v75 - 4), v58) + 16);

    if (v60)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v62 = Strong;
        sub_1D906B87C();
      }

      v63 = v42;
    }

    else
    {
      v64 = v79;
      v76(v79, v78, v28);

      v65 = sub_1D917741C();
      v66 = sub_1D9178D1C();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 134217984;
        swift_beginAccess();
        *(v67 + 4) = *(*(v56 + 16) + 16);

        _os_log_impl(&dword_1D8CEC000, v65, v66, "Defer MAPI update, all %ld channels were updated recently", v67, 0xCu);
        MEMORY[0x1DA72CB90](v67, -1, -1);
      }

      else
      {
      }

      v63 = v42;

      v55(v64, v28);
    }

    return (v84)(v59, v63);
  }

  else if (a2)
  {
    v44 = sub_1D9176A5C();
    v46 = v86;
    v45 = v87;
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v45, qword_1EDCD0690);
    swift_beginAccess();
    (*(v46 + 16))(v8, v47, v45);
    v48 = v44;
    v49 = sub_1D917741C();
    v50 = sub_1D9178CFC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&dword_1D8CEC000, v49, v50, "Error getting subs TTL from bag: %@", v51, 0xCu);
      sub_1D8D08A50(v52, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v52, -1, -1);
      MEMORY[0x1DA72CB90](v51, -1, -1);
    }

    else
    {
      v53 = v49;
      v49 = v48;
    }

    return (*(v46 + 8))(v8, v45);
  }

  else
  {
    v69 = v86;
    v68 = v87;
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v70 = __swift_project_value_buffer(v68, qword_1EDCD0690);
    swift_beginAccess();
    (*(v69 + 16))(v11, v70, v68);
    v71 = sub_1D917741C();
    v72 = sub_1D9178CFC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_1D8CEC000, v71, v72, "Error getting subs TTL from bag", v73, 2u);
      MEMORY[0x1DA72CB90](v73, -1, -1);
    }

    return (*(v69 + 8))(v11, v68);
  }
}

BOOL sub_1D906C7F0(double *a1)
{
  v1 = *a1;
  sub_1D9176CCC();
  return v1 < v2;
}

uint64_t sub_1D906C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(a6 + *((*MEMORY[0x1E69E7D40] & *a6) + 0x68));
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a1;
  aBlock[4] = sub_1D90718A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_71_1;
  v17 = _Block_copy(aBlock);
  v18 = a5;

  v19 = a6;
  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_1D906CB3C(uint64_t a1, void *a2, unint64_t a3)
{
  v187 = a2;
  v184 = sub_1D9176E3C();
  v5 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v7 = v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v183 = v174 - v9;
  v10 = sub_1D917744C();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v177 = v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v199 = v174 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v174 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v174 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v174 - v22;
  if (a1)
  {
    v203[2] = a1;
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if (!swift_dynamicCast() || v201 != 1)
    {
      v34 = a1;
      if (qword_1EDCD5AA8 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v10, qword_1EDCD0690);
      swift_beginAccess();
      (*(v11 + 16))(v23, v35, v10);
      v36 = a1;
      v37 = sub_1D917741C();
      v38 = v10;
      v39 = sub_1D9178CFC();

      if (os_log_type_enabled(v37, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v201 = v41;
        *v40 = 136315138;
        swift_getErrorValue();
        v42 = sub_1D9179D2C();
        v44 = sub_1D8CFA924(v42, v43, &v201);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_1D8CEC000, v37, v39, "Getting channels failed with error %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x1DA72CB90](v41, -1, -1);
        MEMORY[0x1DA72CB90](v40, -1, -1);
      }

      else
      {
      }

      return (*(v11 + 8))(v23, v38);
    }
  }

  v185 = v5;
  sub_1D9068758(0);
  if (qword_1EDCD5AA8 != -1)
  {
    goto LABEL_35;
  }

LABEL_5:
  v25 = __swift_project_value_buffer(v10, qword_1EDCD0690);
  swift_beginAccess();
  v26 = *(v11 + 16);
  v180 = v25;
  v179 = v11 + 16;
  v178 = v26;
  v26(v20, v25, v10);
  v27 = sub_1D917741C();
  v28 = sub_1D9178D1C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D8CEC000, v27, v28, "Set receivedEntitlementsNotification to false", v29, 2u);
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  v31 = *(v11 + 8);
  v30 = v11 + 8;
  v186 = v10;
  v181 = v31;
  v31(v20, v10);
  v32 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v33 = sub_1D8FBEEFC(a3);
    if (v33)
    {
      v20 = v33;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v198 = v7;
  v182 = v30;
  if (v20 >> 62)
  {
    v49 = sub_1D917935C();

    if (!(v49 | a1))
    {
LABEL_54:

      v71 = v186;
      v178(v17, v180, v186);
      v72 = sub_1D917741C();
      v73 = sub_1D9178CFC();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1D8CEC000, v72, v73, "Failed to cast to channel objects", v74, 2u);
        MEMORY[0x1DA72CB90](v74, -1, -1);
      }

      v75 = v17;
      v76 = v71;
      v77 = &v204;
      return (*(v77 - 32))(v75, v76);
    }

    v201 = v32;
    a3 = sub_1D917935C();
    if (!a3)
    {
LABEL_38:
      v47 = MEMORY[0x1E69E7CC0];
      goto LABEL_39;
    }
  }

  else
  {
    v7 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!(v7 | a1))
    {
      goto LABEL_54;
    }

    v201 = v32;
    a3 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      goto LABEL_38;
    }
  }

  v17 = 0;
  v11 = v20 & 0xFFFFFFFFFFFFFF8;
  v10 = &OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes;
  while ((v20 & 0xC000000000000001) == 0)
  {
    if (v17 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_5;
    }

    v45 = *(v20 + 8 * v17 + 32);
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_30;
    }

LABEL_25:
    v46 = *(*&v45[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 74);
    if (v46 == 2 || (v46 & 1) == 0)
    {
    }

    else
    {
      sub_1D917959C();
      a1 = v201[2];
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
    }

    ++v17;
    if (v7 == a3)
    {
      goto LABEL_31;
    }
  }

  v45 = MEMORY[0x1DA72AA90](v17, v20);
  v7 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  v47 = v201;
LABEL_39:

  v50 = v186;
  v51 = v199;
  if (v47 < 0 || (v47 & 0x4000000000000000) != 0)
  {
    goto LABEL_159;
  }

  v52 = *(v47 + 16);
  while (2)
  {
    v53 = MEMORY[0x1E69E7CC0];
    if (!v52)
    {
LABEL_52:
      v62 = sub_1D8FC0F28(v53);

      v178(v51, v180, v50);

      v63 = v51;
      v64 = sub_1D917741C();
      v51 = sub_1D9178D1C();

      v65 = os_log_type_enabled(v64, v51);
      v176 = v62;
      if (v65)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v201 = v67;
        *v66 = 141558275;
        *(v66 + 4) = 1752392040;
        *(v66 + 12) = 2081;
        v203[0] = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
        sub_1D8CF48EC(&qword_1EDCD5BD8, &unk_1ECAB4F30, &qword_1D918DA90, MEMORY[0x1E69E6508]);
        sub_1D8D447DC();
        v68 = sub_1D917851C();
        v70 = sub_1D8CFA924(v68, v69, &v201);

        *(v66 + 14) = v70;
        _os_log_impl(&dword_1D8CEC000, v64, v51, "Got purchased channels %{private,mask.hash}s from MAPI", v66, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x1DA72CB90](v67, -1, -1);
        MEMORY[0x1DA72CB90](v66, -1, -1);
      }

      v181(v63, v50);
      v78 = v198;
      sub_1D9176E2C();
      v79 = v183;
      sub_1D9176D7C();
      v80 = *(v185 + 8);
      v185 += 8;
      v174[2] = v80;
      v81 = v80(v78, v184);
      MEMORY[0x1EEE9AC00](v81);
      v82 = v187;
      v174[-2] = v79;
      v174[-1] = v82;

      v83 = sub_1D9067A30(sub_1D90718AC, &v174[-4], v47);
      v174[1] = 0;
      v50 = v83;
      v84 = v83 >> 62;
      if (v83 >> 62)
      {
        v85 = sub_1D917935C();
      }

      else
      {
        v85 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v86 = MEMORY[0x1E69E7CC0];
      v194 = v50;
      if (v85)
      {
        v201 = MEMORY[0x1E69E7CC0];
        sub_1D8D41BE0(0, v85 & ~(v85 >> 63), 0);
        if (v85 < 0)
        {
          goto LABEL_162;
        }

        v87 = v50;
        v88 = 0;
        v86 = v201;
        v89 = v87 & 0xC000000000000001;
        do
        {
          if (v89)
          {
            v90 = MEMORY[0x1DA72AA90](v88, v194);
          }

          else
          {
            v90 = *(v194 + 8 * v88 + 32);
          }

          v91 = v90;
          v93 = *&v90[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
          v92 = *&v90[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

          v201 = v86;
          v95 = *(v86 + 16);
          v94 = *(v86 + 24);
          v51 = (v95 + 1);
          if (v95 >= v94 >> 1)
          {
            sub_1D8D41BE0((v94 > 1), v95 + 1, 1);
            v86 = v201;
          }

          ++v88;
          *(v86 + 16) = v51;
          v96 = v86 + 16 * v95;
          *(v96 + 32) = v93;
          *(v96 + 40) = v92;
        }

        while (v85 != v88);
        v50 = v194;
      }

      v175 = sub_1D8FC0F28(v86);

      if (v84)
      {
        v97 = sub_1D917935C();
      }

      else
      {
        v97 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v188 = v47;
      if (!v97)
      {
        v99 = MEMORY[0x1E69E7CC8];
LABEL_117:

        v138 = 1 << *(v99 + 32);
        v139 = -1;
        if (v138 < 64)
        {
          v139 = ~(-1 << v138);
        }

        v140 = v139 & *(v99 + 64);
        v141 = (v138 + 63) >> 6;

        v142 = 0;
        v143 = MEMORY[0x1E69E7CC0];
        while (v140)
        {
LABEL_126:
          v51 = *(*(v99 + 56) + ((v142 << 9) | (8 * __clz(__rbit64(v140)))));
          v145 = v51[2];
          v47 = *(v143 + 2);
          v50 = v47 + v145;
          if (__OFADD__(v47, v145))
          {
            goto LABEL_154;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v50 > *(v143 + 3) >> 1)
          {
            if (v47 <= v50)
            {
              v147 = v47 + v145;
            }

            else
            {
              v147 = v47;
            }

            v143 = sub_1D8D4241C(isUniquelyReferenced_nonNull_native, v147, 1, v143);
          }

          v47 = v188;
          v140 &= v140 - 1;
          if (v51[2])
          {
            if ((*(v143 + 3) >> 1) - *(v143 + 2) < v145)
            {
              goto LABEL_157;
            }

            swift_arrayInitWithCopy();

            if (v145)
            {
              v148 = *(v143 + 2);
              v102 = __OFADD__(v148, v145);
              v149 = v148 + v145;
              if (v102)
              {
                goto LABEL_158;
              }

              *(v143 + 2) = v149;
            }
          }

          else
          {

            if (v145)
            {
              goto LABEL_155;
            }
          }
        }

        while (1)
        {
          v144 = v142 + 1;
          if (__OFADD__(v142, 1))
          {
            goto LABEL_150;
          }

          if (v144 >= v141)
          {

            v150 = sub_1D8FC0F28(v143);

            v151 = MEMORY[0x1E69E7D40];
            v152 = v176;
            if ((*(v187 + *((*MEMORY[0x1E69E7D40] & *v187) + 0x90)) & 1) == 0)
            {
              v153 = v187;
              *(v187 + *((*MEMORY[0x1E69E7D40] & *v187) + 0x88)) = v176;

              *(v153 + *((*v151 & *v153) + 0x90)) = 1;
            }

            v154 = v177;
            v155 = v186;
            v178(v177, v180, v186);
            v156 = v175;

            v157 = sub_1D917741C();
            v158 = sub_1D9178D1C();

            if (os_log_type_enabled(v157, v158))
            {
              v159 = swift_slowAlloc();
              v160 = swift_slowAlloc();
              v203[0] = v160;
              *v159 = 141558787;
              *(v159 + 4) = 1752392040;
              *(v159 + 12) = 2081;
              v200 = v156;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
              sub_1D8CF48EC(&qword_1EDCD5BD8, &unk_1ECAB4F30, &qword_1D918DA90, MEMORY[0x1E69E6508]);
              sub_1D8D447DC();
              v161 = sub_1D917851C();
              v163 = sub_1D8CFA924(v161, v162, v203);

              *(v159 + 14) = v163;
              v47 = v188;
              *(v159 + 22) = 2160;
              *(v159 + 24) = 1752392040;
              *(v159 + 32) = 2081;
              v200 = v150;
              v152 = v176;
              v156 = v175;
              v164 = sub_1D917851C();
              v166 = sub_1D8CFA924(v164, v165, v203);

              *(v159 + 34) = v166;
              _os_log_impl(&dword_1D8CEC000, v157, v158, "Got recently purchased channels %{private,mask.hash}s and purchased shows %{private,mask.hash}s from MAPI", v159, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x1DA72CB90](v160, -1, -1);
              v167 = v159;
              v151 = MEMORY[0x1E69E7D40];
              MEMORY[0x1DA72CB90](v167, -1, -1);

              v168 = v177;
              v169 = v186;
            }

            else
            {

              v168 = v154;
              v169 = v155;
            }

            v181(v168, v169);
            sub_1D8FB13E8(v150, v156);
            sub_1D9068530(v170);
            v171 = sub_1D906A45C(v47);
            if ([objc_opt_self() isRunningOnInternalOS])
            {
              v172 = *(v187 + *((*v151 & *v187) + 0xC8));
              v173 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
              LOBYTE(v172) = [v172 BOOLForKey_];

              if (v172)
              {
                v171 = v152;
              }
            }

            PurchaseController.displaySubscriptionConfirmationSheetIfNeeded(for:channelObjects:)(v171, v47);

            v75 = v183;
            v76 = v184;
            v77 = &v202;
            return (*(v77 - 32))(v75, v76);
          }

          v140 = *(v99 + 64 + 8 * v144);
          ++v142;
          if (v140)
          {
            v142 = v144;
            goto LABEL_126;
          }
        }
      }

      v98 = 0;
      v192 = v50 & 0xC000000000000001;
      v191 = v50 & 0xFFFFFFFFFFFFFF8;
      v198 = MEMORY[0x1E69E7CC8];
      v190 = v50 + 32;
      v189 = v97;
      while (1)
      {
        if (v192)
        {
          v132 = v98;
          v101 = MEMORY[0x1DA72AA90](v98, v50);
          v102 = __OFADD__(v132, 1);
          v103 = v132 + 1;
          if (v102)
          {
            goto LABEL_151;
          }
        }

        else
        {
          if (v98 >= *(v191 + 16))
          {
            goto LABEL_152;
          }

          v100 = v98;
          v101 = *(v190 + 8 * v98);
          v102 = __OFADD__(v100, 1);
          v103 = v100 + 1;
          if (v102)
          {
            goto LABEL_151;
          }
        }

        v104 = *&v101[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
        v196 = v103;
        v197 = v104;
        v105 = *&v101[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];
        v195 = v101;
        v106 = *&v101[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_relationships];
        if (v106)
        {
          v107 = *(v106 + 16);
          if (v107)
          {
            break;
          }
        }

        v120 = v198;

        sub_1D8D33C70(v197, v105);
        if (v121)
        {
          v122 = swift_isUniquelyReferenced_nonNull_native();
          v203[0] = v120;
          v99 = v120;
          if (!v122)
          {
            sub_1D8F84DF0();
            v99 = v203[0];
          }

          sub_1D8DA2AF4();

          goto LABEL_108;
        }

        v99 = v120;
LABEL_75:
        v198 = v99;
        v98 = v196;
        if (v196 == v189)
        {
          goto LABEL_117;
        }
      }

      v193 = v105;
      v108 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
      swift_beginAccess();
      v109 = *(v107 + v108);
      if (v109 >> 62)
      {
        v110 = sub_1D917935C();
      }

      else
      {
        v110 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v110)
      {
        v47 = 0;
        v199 = (v109 & 0xC000000000000001);
        v50 = v109 & 0xFFFFFFFFFFFFFF8;
        v111 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v199)
          {
            v112 = MEMORY[0x1DA72AA90](v47, v109);
          }

          else
          {
            if (v47 >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_149;
            }

            v112 = *(v109 + 8 * v47 + 32);
          }

          v51 = v112;
          v113 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          v114 = v110;
          v116 = *(v112 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id);
          v115 = *(v112 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_1D8D4241C(0, *(v111 + 2) + 1, 1, v111);
          }

          v118 = *(v111 + 2);
          v117 = *(v111 + 3);
          v51 = (v118 + 1);
          if (v118 >= v117 >> 1)
          {
            v111 = sub_1D8D4241C((v117 > 1), v118 + 1, 1, v111);
          }

          *(v111 + 2) = v51;
          v119 = &v111[16 * v118];
          *(v119 + 4) = v116;
          *(v119 + 5) = v115;
          ++v47;
          v110 = v114;
          if (v113 == v114)
          {
            goto LABEL_101;
          }
        }

        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        v52 = sub_1D917935C();
        continue;
      }

      v111 = MEMORY[0x1E69E7CC0];
LABEL_101:

      v123 = v198;
      v124 = swift_isUniquelyReferenced_nonNull_native();
      v203[0] = v123;
      v125 = sub_1D8D33C70(v197, v193);
      v127 = *(v123 + 16);
      v128 = (v126 & 1) == 0;
      v102 = __OFADD__(v127, v128);
      v129 = v127 + v128;
      v47 = v188;
      if (v102)
      {
        goto LABEL_153;
      }

      v130 = v126;
      if (*(v123 + 24) >= v129)
      {
        v50 = v194;
        if ((v124 & 1) == 0)
        {
          v133 = v125;
          sub_1D8F84DF0();
          v125 = v133;
          v50 = v194;
          v99 = v203[0];
          if (v130)
          {
LABEL_107:
            *(*(v99 + 56) + 8 * v125) = v111;

LABEL_108:

            goto LABEL_75;
          }

          goto LABEL_114;
        }
      }

      else
      {
        sub_1D9008704(v129, v124);
        v125 = sub_1D8D33C70(v197, v193);
        v50 = v194;
        if ((v130 & 1) != (v131 & 1))
        {
          goto LABEL_163;
        }
      }

      v99 = v203[0];
      if (v130)
      {
        goto LABEL_107;
      }

LABEL_114:
      *(v99 + 8 * (v125 >> 6) + 64) |= 1 << v125;
      v134 = (*(v99 + 48) + 16 * v125);
      v135 = v193;
      *v134 = v197;
      v134[1] = v135;
      *(*(v99 + 56) + 8 * v125) = v111;

      v136 = *(v99 + 16);
      v102 = __OFADD__(v136, 1);
      v137 = v136 + 1;
      if (v102)
      {
        goto LABEL_156;
      }

      *(v99 + 16) = v137;

      goto LABEL_75;
    }

    break;
  }

  v201 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v52 & ~(v52 >> 63), 0);
  if ((v52 & 0x8000000000000000) == 0)
  {
    v54 = 0;
    v53 = v201;
    do
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x1DA72AA90](v54, v47);
      }

      else
      {
        v55 = *(v47 + 8 * v54 + 32);
      }

      v56 = v55;
      v57 = *&v55[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
      v58 = *&v55[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

      v201 = v53;
      v60 = *(v53 + 16);
      v59 = *(v53 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1D8D41BE0((v59 > 1), v60 + 1, 1);
        v53 = v201;
      }

      ++v54;
      *(v53 + 16) = v60 + 1;
      v61 = v53 + 16 * v60;
      *(v61 + 32) = v57;
      *(v61 + 40) = v58;
    }

    while (v52 != v54);
    v50 = v186;
    v51 = v199;
    goto LABEL_52;
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

uint64_t sub_1D906E170(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1D9176E3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1D90399EC(v7);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1D9176CEC();
    if (v13(v7, 1, v8) != 1)
    {
      sub_1D8D08A50(v7, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  v14 = sub_1D9176D9C();
  (*(v9 + 8))(v11, v8);
  if (v14)
  {
    v15 = 1;
  }

  else if (*(a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x90)) == 1)
  {
    v16 = *(a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x88));
    v17 = *(v12 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);
    v18 = *(v12 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8);

    v19 = sub_1D8EF0850(v17, v18, v16);

    v15 = v19 ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

char *PurchaseController.displaySubscriptionConfirmationSheetIfNeeded(for:channelObjects:)(unint64_t a1, unint64_t a2)
{
  v4 = sub_1D9177E0C();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D9177E9C();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D917744C();
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v71 = &v67 - v10;
  v72 = v11;
  if (a2 >> 62)
  {
LABEL_34:
    v12 = sub_1D917935C();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  v80 = a1;
  if (v12)
  {
    a1 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA72AA90](a1, a2, v9);
      }

      else
      {
        if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v14 = *(a2 + 8 * a1 + 32);
      }

      v15 = v14;
      v16 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (*(*&v14[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176) > 1u)
      {
        if (*(*&v14[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176) != 2)
        {
          goto LABEL_5;
        }
      }

      else if (!*(*&v14[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176))
      {

LABEL_16:
        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        goto LABEL_6;
      }

      v17 = sub_1D9179ACC();

      if (v17)
      {
        goto LABEL_16;
      }

LABEL_5:

LABEL_6:
      ++a1;
      if (v16 == v12)
      {
        v18 = aBlock[0];
        a1 = v80;
        v13 = MEMORY[0x1E69E7CC0];
        if ((aBlock[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_21:
  if ((v18 & 0x4000000000000000) != 0)
  {
LABEL_35:
    v19 = sub_1D917935C();
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_36:

    goto LABEL_37;
  }

  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_36;
  }

LABEL_23:
  aBlock[0] = v13;
  result = sub_1D8D41BE0(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
    __break(1u);
    return result;
  }

  v21 = 0;
  v13 = aBlock[0];
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1DA72AA90](v21, v18);
    }

    else
    {
      v22 = *(v18 + 8 * v21 + 32);
    }

    v23 = v22;
    v25 = *&v22[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
    v24 = *&v22[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

    aBlock[0] = v13;
    v27 = *(v13 + 16);
    v26 = *(v13 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1D8D41BE0((v26 > 1), v27 + 1, 1);
      v13 = aBlock[0];
    }

    ++v21;
    *(v13 + 16) = v27 + 1;
    v28 = v13 + 16 * v27;
    *(v28 + 32) = v25;
    *(v28 + 40) = v24;
  }

  while (v19 != v21);

  a1 = v80;
LABEL_37:
  v29 = sub_1D8FC0F28(v13);

  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v30 = v82;
  v31 = __swift_project_value_buffer(v82, qword_1EDCD0690);
  swift_beginAccess();
  v32 = v81;
  v33 = *(v81 + 16);
  v34 = v71;
  v70 = v81 + 16;
  v69 = v33;
  v33(v71, v31, v30);

  v35 = sub_1D917741C();
  v36 = sub_1D9178D1C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v68 = v31;
    v39 = v38;
    aBlock[0] = v38;
    *v37 = 141558275;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    v40 = sub_1D9178AAC();
    v42 = sub_1D8CFA924(v40, v41, aBlock);

    *(v37 + 14) = v42;
    _os_log_impl(&dword_1D8CEC000, v35, v36, "User's Entitlements IAP/1p Id's: %{private,mask.hash}s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v43 = v39;
    v31 = v68;
    MEMORY[0x1DA72CB90](v43, -1, -1);
    v44 = v37;
    a1 = v80;
    MEMORY[0x1DA72CB90](v44, -1, -1);
  }

  v45 = *(v32 + 8);
  v45(v34, v30);
  if ([objc_opt_self() isRunningOnInternalOS] && (v46 = *(v79 + *((*MEMORY[0x1E69E7D40] & *v79) + 0xC8)), v47 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0(), LODWORD(v46) = objc_msgSend(v46, sel_BOOLForKey_, v47), v47, v46))
  {

    swift_bridgeObjectRetain_n();
  }

  else
  {

    a1 = sub_1D90701C4(v29, a1);
  }

  v48 = v72;
  v49 = v82;
  v69(v72, v31, v82);

  v50 = sub_1D917741C();
  v51 = sub_1D9178D1C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 141558275;
    *(v52 + 4) = 1752392040;
    *(v52 + 12) = 2081;
    v54 = sub_1D9178AAC();
    v56 = v55;

    v57 = sub_1D8CFA924(v54, v56, aBlock);

    *(v52 + 14) = v57;
    _os_log_impl(&dword_1D8CEC000, v50, v51, "Showing all newly subscribed 1p/IAP subscriptions in the confirmation sheet: %{private,mask.hash}s", v52, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1DA72CB90](v53, -1, -1);
    MEMORY[0x1DA72CB90](v52, -1, -1);
  }

  else
  {
  }

  v45(v48, v49);
  v58 = MEMORY[0x1E69E7CC0];
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v59 = sub_1D9178E1C();
  v60 = swift_allocObject();
  v61 = v79;
  *(v60 + 16) = v79;
  *(v60 + 24) = a1;
  aBlock[4] = sub_1D907139C;
  aBlock[5] = v60;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_21_2;
  v62 = _Block_copy(aBlock);
  v63 = v61;

  v64 = v73;
  sub_1D9177E4C();
  aBlock[0] = v58;
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v65 = v75;
  v66 = v78;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v64, v65, v62);
  _Block_release(v62);

  (*(v77 + 8))(v65, v66);
  return (*(v74 + 8))(v64, v76);
}

uint64_t sub_1D906EE30(uint64_t a1, uint64_t a2)
{
  sub_1D9068320(v9);
  if (!v10)
  {
    return sub_1D8D08A50(v9, &unk_1ECAB9920, &unk_1D91AD170);
  }

  sub_1D8CFD9D8(v9, v6);
  sub_1D8D08A50(v9, &unk_1ECAB9920, &unk_1D91AD170);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(a2, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

void sub_1D906EEF0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v99 = a4;
  v118 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v93 - v8;
  v10 = sub_1D9176E3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v113 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v100 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v109 = v93 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v93 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v93 - v22);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDCD5AA8 == -1)
    {
LABEL_18:
      v42 = __swift_project_value_buffer(v13, qword_1EDCD0690);
      swift_beginAccess();
      (*(v14 + 16))(v23, v42, v13);
      v43 = sub_1D9178CFC();
      v44 = sub_1D917741C();
      if (os_log_type_enabled(v44, v43))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1D8CEC000, v44, v43, "Could not unwrap self in PurchaseController. Cannot update subscriptions.", v45, 2u);
        MEMORY[0x1DA72CB90](v45, -1, -1);
      }

      (*(v14 + 8))(v23, v13);
      return;
    }

LABEL_97:
    swift_once();
    goto LABEL_18;
  }

  v108 = Strong;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v13, qword_1EDCD0690);
  swift_beginAccess();
  v26 = *(v14 + 16);
  v106 = v25;
  v105 = v14 + 16;
  v104 = v26;
  v26(v20, v25, v13);
  v23 = sub_1D917741C();
  v27 = sub_1D9178D1C();
  v28 = os_log_type_enabled(v23, v27);
  v119 = a2;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D8CEC000, v23, v27, "Updating subscribed channels from server objects.", v29, 2u);
    v30 = v29;
    a2 = v119;
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  v116 = v11;
  v117 = v10;

  v31 = *(v14 + 8);
  v14 += 8;
  v112 = v13;
  v107 = v14;
  v103 = v31;
  v31(v20, v13);
  v96 = v9;
  if (a2 >> 62)
  {
    v32 = sub_1D917935C();
    v13 = a5;
    if (v32)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v32 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = a5;
    if (v32)
    {
LABEL_8:
      v33 = objc_opt_self();
      if (v32 >= 1)
      {
        v34 = v33;
        v35 = 0;
        v36 = a2 & 0xC000000000000001;
        do
        {
          if (v36)
          {
            v38 = MEMORY[0x1DA72AA90](v35, a2);
          }

          else
          {
            v38 = *(a2 + 8 * v35 + 32);
          }

          v39 = v38;
          v40 = sub_1D90687E0();
          v41 = [v34 createOrFindChannelFromFeedChannelItem:v39 personalizedRequest:1 context:v40];

          sub_1D9039D04(v120);
          if (LOBYTE(v120[0]) >= 4u)
          {
            v37 = 0;
          }

          else
          {
            v37 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

            a2 = v119;
          }

          ++v35;
          [v41 setSubscriptionOfferAppType_];
        }

        while (v32 != v35);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_97;
    }
  }

LABEL_22:
  v46 = sub_1D90687E0();
  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v47 = sub_1D917908C();
  v48 = MEMORY[0x1E69E7CC0];
  v49 = v47;
  v93[1] = 0;
  v50 = v108;

  v120[0] = v48;
  if (v49 >> 62)
  {
    goto LABEL_94;
  }

  v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v51)
  {
    goto LABEL_24;
  }

LABEL_35:
  v54 = MEMORY[0x1E69E7D40];
  v102 = *((*MEMORY[0x1E69E7D40] & *v50) + 0xC0);

  InterestRepository.unsafeFavoriteExistingEntitledChannelsIfNeeded(entitledChannels:)(v48);

  if (v51)
  {
    v48 = 0;
    v56 = *v54 & *v50;
    v111 = v49 & 0xC000000000000001;
    v98 = v49 & 0xFFFFFFFFFFFFFF8;
    v97 = (v49 + 32);
    v101 = *(v56 + 160);
    v115 = (v116 + 8);
    v57 = a2 & 0xC000000000000001;
    a2 &= 0xFFFFFFFFFFFFFF8uLL;
    v95 = (v116 + 48);
    *&v55 = 141558275;
    v94 = v55;
    v110 = v49;
    v116 = v51;
    while (1)
    {
      if (v111)
      {
        v58 = MEMORY[0x1DA72AA90](v48, v49);
      }

      else
      {
        if (v48 >= *(v98 + 16))
        {
          goto LABEL_93;
        }

        v58 = *&v97[8 * v48];
      }

      v49 = v58;
      if (__OFADD__(v48++, 1))
      {
        goto LABEL_91;
      }

      v118 = v48;
      v60 = v113;
      sub_1D9176E2C();
      sub_1D9176CCC();
      v62 = v61;
      v114 = *v115;
      v114(v60, v117);
      [v49 setLastPersonalizedRequestDate_];
      v63 = MEMORY[0x1E69E7CC0];
      v120[0] = MEMORY[0x1E69E7CC0];
      if (v32)
      {
        v64 = 0;
        while (1)
        {
          if (v57)
          {
            v65 = MEMORY[0x1DA72AA90](v64, v119);
          }

          else
          {
            if (v64 >= *(a2 + 16))
            {
              goto LABEL_88;
            }

            v65 = *(v119 + 8 * v64 + 32);
          }

          v66 = v65;
          v50 = (v64 + 1);
          if (__OFADD__(v64, 1))
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            v51 = sub_1D917935C();
            if (!v51)
            {
              goto LABEL_35;
            }

LABEL_24:
            v48 = 0;
            a2 = v49 & 0xC000000000000001;
            do
            {
              if (a2)
              {
                v52 = MEMORY[0x1DA72AA90](v48, v49);
              }

              else
              {
                if (v48 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_90;
                }

                v52 = *(v49 + 8 * v48 + 32);
              }

              v53 = v52;
              v50 = (v48 + 1);
              if (__OFADD__(v48, 1))
              {
                goto LABEL_89;
              }

              if ([v52 subscriptionActive])
              {
                sub_1D917959C();
                sub_1D91795DC();
                sub_1D91795EC();
                sub_1D91795AC();
              }

              else
              {
              }

              ++v48;
            }

            while (v50 != v51);
            a2 = v119;
            v48 = v120[0];
            v50 = v108;
            goto LABEL_35;
          }

          v68 = *&v65[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
          v67 = *&v65[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];
          v121 = [v49 storeId];
          if (v68 == sub_1D9179A4C() && v67 == v69)
          {
          }

          else
          {
            v48 = sub_1D9179ACC();

            if ((v48 & 1) == 0)
            {

              goto LABEL_49;
            }
          }

          sub_1D917959C();
          v48 = *(v120[0] + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
LABEL_49:
          ++v64;
          if (v50 == v32)
          {
            v63 = v120[0];
            v51 = v116;
            break;
          }
        }
      }

      if ((v63 & 0x8000000000000000) != 0 || (v63 & 0x4000000000000000) != 0)
      {
        v48 = v63;
        v87 = sub_1D917935C();
        v63 = v48;
        if (v87)
        {
LABEL_65:
          if ((v63 & 0xC000000000000001) != 0)
          {
            v71 = MEMORY[0x1DA72AA90](0, v63);
          }

          else
          {
            if (!*(v63 + 16))
            {
              goto LABEL_92;
            }

            v71 = *(v63 + 32);
          }

          v72 = v71;

          if ([v49 subscriptionActive])
          {
          }

          else
          {
            v104(v109, v106, v112);
            v73 = v49;
            v74 = sub_1D917741C();
            v75 = sub_1D9178D1C();
            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              *v76 = v94;
              *(v76 + 4) = 1752392040;
              *(v76 + 12) = 2049;
              *(v76 + 14) = [v73 storeId];

              _os_log_impl(&dword_1D8CEC000, v74, v75, "Setting channel %{private,mask.hash}lld to subscribed", v76, 0x16u);
              MEMORY[0x1DA72CB90](v76, -1, -1);
            }

            else
            {

              v74 = v73;
            }

            v77 = v96;

            v103(v109, v112);
            sub_1D90399EC(v77);
            v78 = v117;
            if ((*v95)(v77, 1, v117) == 1)
            {
              sub_1D8D08A50(v77, &qword_1ECAB75C0, &unk_1D9188A50);
              v79 = 0.0;
            }

            else
            {
              sub_1D9176CCC();
              v81 = v80;
              v114(v77, v78);
              v79 = v81;
            }

            [*&v108[v101] unsafeHandleSubscriptionChangeForChannel:v73 subscriptionBecameActive:1 subscriptionEnabledDate:v79];

            v82 = [v73 storeId];
            InterestRepository.favoriteInterest(forAdamID:force:)(v82 & ~(v82 >> 63), 0);

            v83 = [v73 storeId];
            v120[0] = v83 & ~(v83 >> 63);
            sub_1D8E40D20();
            v84 = sub_1D917927C();
            v86 = v85;
            swift_beginAccess();
            sub_1D8D19AFC(&v121, v84, v86);
            swift_endAccess();
          }

          v51 = v116;
          goto LABEL_39;
        }
      }

      else if (*(v63 + 16))
      {
        goto LABEL_65;
      }

      if ([v49 subscriptionActive])
      {
        v104(v100, v106, v112);
        v88 = v49;
        v89 = sub_1D917741C();
        v90 = sub_1D9178D1C();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = v94;
          *(v91 + 4) = 1752392040;
          *(v91 + 12) = 2049;
          *(v91 + 14) = [v88 storeId];

          _os_log_impl(&dword_1D8CEC000, v89, v90, "Setting channel %{private,mask.hash}lld to not subscribed", v91, 0x16u);
          MEMORY[0x1DA72CB90](v91, -1, -1);
        }

        else
        {

          v89 = v88;
        }

        v103(v100, v112);
        [*&v108[v101] unsafeHandleSubscriptionChangeForChannel:v88 subscriptionBecameActive:0 subscriptionEnabledDate:0.0];

        v92 = [v88 storeId];
        InterestRepository.unfavoriteInterest(forAdamID:)(v92 & ~(v92 >> 63));
      }

      else
      {
      }

LABEL_39:
      v48 = v118;
      v49 = v110;
      if (v118 == v51)
      {

        goto LABEL_86;
      }
    }
  }

LABEL_86:
}

uint64_t MockPurchaseController.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  sub_1D9177A9C();
  return v0;
}

uint64_t MockPurchaseController.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation22MockPurchaseController__recentlyEntitledProducts;
  v7[1] = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  sub_1D9177A9C();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_1D906FF40()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  sub_1D9177AAC();
  return swift_endAccess();
}

uint64_t MockPurchaseController.deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation22MockPurchaseController__recentlyEntitledProducts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MockPurchaseController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation22MockPurchaseController__recentlyEntitledProducts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D90700F4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  sub_1D9177AAC();
  return swift_endAccess();
}

uint64_t sub_1D907016C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9068470();
  *a1 = result;
  return result;
}

void *sub_1D90701C4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_1D9070418((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_1D9070388(v12, v6, a2, a1);

    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  return v10;
}

void *sub_1D9070388(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_1D9070418(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1D9070418(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v26 = sub_1D9179E1C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1D9179ACC() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          sub_1D90A7CC4(a1, a2, v53, v5);
          return;
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v39 = sub_1D9179E1C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1D9179ACC() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        a1[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1D90707F4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1D9070854(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  ObjectType = swift_getObjectType();
  v59 = *v1;
  v3 = v59;
  v60 = *MEMORY[0x1E69E7D40];
  v4 = v60;
  v5 = MEMORY[0x1E69E7D40];
  v6 = sub_1D9178FBC();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v67 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = v57 - v9;
  v61 = sub_1D9178E0C();
  v10 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  *(v1 + *((v4 & v3) + 0x60)) = MEMORY[0x1E69E7CD0];
  v58 = *((*v5 & *v1) + 0x68);
  v15 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v57[0] = "on.PurchaseController";
  v57[1] = v15;
  sub_1D9177E4C();
  v71 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  v16 = MEMORY[0x1E69E7D40];
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8090], v61);
  *(v1 + v58) = sub_1D9178E4C();
  v17 = *((*v16 & *v1) + 0x70);
  v18 = *((v60 & v59) + 0x58);
  v19 = *((v60 & v59) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v1 + v17, 1, 1, AssociatedTypeWitness);
  v21 = v2 + *((*v16 & *v2) + 0x78);
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v22 = *((*v16 & *v1) + 0x80);
  v23 = MEMORY[0x1E69E7CD0];
  v71 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  v24 = v62;
  sub_1D9177A9C();
  (*(v63 + 32))(v1 + v22, v24, v64);
  *(v1 + *((*v16 & *v1) + 0x88)) = v23;
  *(v1 + *((*v16 & *v1) + 0x90)) = 0;
  *(v1 + *((*v16 & *v1) + 0x98)) = 0;
  v25 = *((*v16 & *v1) + 0xA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v26 = swift_allocObject();
  *(v26 + 20) = 0;
  *(v26 + 16) = 0;
  *(v1 + v25) = v26;
  *(v1 + *((*v16 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v16 & *v1) + 0xD0)) = 0;
  swift_beginAccess();
  v27 = sub_1D91791BC();
  (*(*(v27 - 8) + 24))(v1 + v17, v65, v27);
  swift_endAccess();
  *(v1 + *((*v16 & *v1) + 0xC8)) = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v28 = sub_1D90687E0();
  type metadata accessor for InterestStore();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  if (qword_1ECAB1F70 != -1)
  {
    swift_once();
  }

  v30 = qword_1ECAB1F78;
  type metadata accessor for InterestRepository();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  v32 = objc_allocWithZone(MTSubscriptionChangeHandler);
  v33 = v30;
  *(v2 + *((*v16 & *v2) + 0xA0)) = [v32 init];
  v34 = [objc_opt_self() sharedInstance];
  v35 = [objc_opt_self() ams_sharedAccountStore];
  v36 = objc_allocWithZone(type metadata accessor for MusicSubscriptionInfoSyncUtil(0));
  *(v2 + *((*v16 & *v2) + 0xB0)) = sub_1D8D34518(v34, v35, v36);
  *(v2 + *((*v16 & *v2) + 0xC0)) = v31;
  v38 = type metadata accessor for PurchaseController(0, v19, v18, v37);
  v70.receiver = v2;
  v70.super_class = v38;

  v39 = objc_msgSendSuper2(&v70, sel_init);
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 defaultCenter];
  v43 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v42 addObserver:v41 selector:sel_didFinishUpdatingFeeds name:v43 object:0];

  sub_1D8CF2154(0, &qword_1ECAB9A60, off_1E8567680);
  v44 = *(v41 + *((*v16 & *v41) + 0x68));
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = v41;
  v47 = v44;
  v48 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDelegate:v46 onQueue:v47];

  v49 = *((*v16 & *v46) + 0xB8);
  v50 = *(v46 + v49);
  *(v46 + v49) = v48;

  v51 = [v40 defaultCenter];
  v52 = v67;
  sub_1D9178FCC();

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v54 = swift_allocObject();
  v54[2] = v19;
  v54[3] = v18;
  v54[4] = v53;
  sub_1D8CFBE38(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v55 = v69;
  sub_1D9177D9C();

  (*(v68 + 8))(v52, v55);
  swift_beginAccess();
  sub_1D917783C();
  swift_endAccess();

  return v46;
}

uint64_t type metadata accessor for MockPurchaseController(uint64_t a1)
{
  result = qword_1ECAB9A38;
  if (!qword_1ECAB9A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9071710(uint64_t a1)
{
  sub_1D8D344B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D9071830(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_73Tm(void (*a1)(void))
{

  a1(*(v1 + 40));

  return swift_deallocObject();
}

BOOL sub_1D9071958(double *a1)
{
  v1 = *a1;
  sub_1D9176CCC();
  return v1 < v2;
}

void sub_1D90719E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D8DBAA4C(0);
  }
}

uint64_t sub_1D9071A38()
{
  v0 = sub_1D917744C();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v47 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  v44 = &v36 - v3;
  v5 = type metadata accessor for MediaRequest.Params(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D8D946F4(&unk_1F5461BF8);
  sub_1D8D08A50(&unk_1F5461C18, &unk_1ECAB9A50, &unk_1D9197130);
  v45 = sub_1D8D946F4(&unk_1F5461C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
  swift_arrayDestroy();
  v9 = sub_1D9176C2C();
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v11 = MEMORY[0x1E69E7CC0];
  v43 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v42 = sub_1D8D94DF8(v11);
  v41 = sub_1D8D951E0(v11);
  v40 = sub_1D8D9503C(v11);
  v38 = sub_1D8D953C4(v11);
  v12 = sub_1D8D952D8(v11);
  v39 = sub_1D8D95394(v11);
  v13 = sub_1D8D957C4(v11);
  *(v8 + 41) = 263;
  v8[43] = 5;
  v8[152] = 1;
  v8[201] = 1;
  v14 = v6[30];
  v10(&v8[v14], 1, 1, v9);
  v15 = &v8[v6[31]];
  v16 = &v8[v6[33]];
  v17 = v6[35];
  v37 = v6[36];
  v18 = &v8[v17];
  v19 = &v8[v6[37]];
  *v8 = 1;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 10) = 83952388;
  v20 = v42;
  *(v8 + 6) = v43;
  *(v8 + 7) = v20;
  v21 = v40;
  *(v8 + 8) = v41;
  *(v8 + 9) = v11;
  v22 = v45;
  v23 = v46;
  *(v8 + 10) = v21;
  *(v8 + 11) = v23;
  *(v8 + 12) = v22;
  *(v8 + 13) = v38;
  *(v8 + 14) = v11;
  *(v8 + 15) = v12;
  *(v8 + 16) = v11;
  *(v8 + 17) = v11;
  *(v8 + 18) = v11;
  v8[152] = 1;
  *(v8 + 20) = 30;
  v8[168] = 0;
  *(v8 + 22) = v39;
  *(v8 + 23) = v13;
  *(v8 + 24) = 0;
  *(v8 + 100) = 257;
  v8[202] = 0;
  sub_1D8E26828(v44, &v8[v14]);
  *v15 = 0;
  *(v15 + 1) = 0;
  v8[v6[32]] = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v8[v6[34]] = v11;
  *v18 = 0;
  *(v18 + 1) = 0;
  v8[v37] = 2;
  *v19 = 0;
  *(v19 + 1) = 0;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v24 = v49;
  v25 = __swift_project_value_buffer(v49, qword_1EDCD0690);
  swift_beginAccess();
  v27 = v47;
  v26 = v48;
  (*(v48 + 16))(v47, v25, v24);
  v28 = sub_1D917741C();
  v29 = sub_1D9178D1C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D8CEC000, v28, v29, "Getting state from MediaAPI for user's entitlements.", v30, 2u);
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  (*(v26 + 8))(v27, v24);
  v31 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v32 = swift_allocObject();
  v33 = v50;
  v32[2] = v50;
  v34 = v33;
  sub_1D904AD58(v8, 0, sub_1D9076238, v32);

  return sub_1D8D90BEC(v8);
}

void sub_1D9071F28(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 privateQueueContext];

  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v5 = sub_1D917908C();

  if (v5 >> 62)
  {
    v6 = sub_1D917935C();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D8E31798(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
    return;
  }

  v7 = 0;
  v8 = v15;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA72AA90](v7, v5);
    }

    else
    {
      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    [v9 lastPersonalizedRequestDate];
    v12 = v11;

    v15 = v8;
    v14 = *(v8 + 16);
    v13 = *(v8 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D8E31798((v13 > 1), v14 + 1, 1);
    }

    ++v7;
    *(v8 + 16) = v14 + 1;
    *(v8 + 8 * v14 + 32) = v12;
  }

  while (v6 != v7);

LABEL_14:
  *a2 = v8;
}

uint64_t sub_1D9072120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v83 = a3;
  v6 = sub_1D917744C();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  v17 = sub_1D9176E3C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v75 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  if (a1)
  {
    v27 = a1;
    sub_1D9176E2C();
    v80 = v27;
    [v27 doubleValue];
    sub_1D9176D7C();
    v84 = *(v18 + 8);
    v85 = v18 + 8;
    v84(v23, v17);
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v28 = v87;
    v29 = __swift_project_value_buffer(v87, qword_1EDCD0690);
    swift_beginAccess();
    v30 = v86;
    v31 = *(v86 + 16);
    v77 = v86 + 16;
    v78 = v29;
    v76 = v31;
    v31(v16, v29, v28);
    v32 = *(v18 + 16);
    v81 = v26;
    v32(v20, v26, v17);
    v33 = sub_1D917741C();
    v34 = sub_1D9178D1C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v17;
      v37 = swift_slowAlloc();
      v88[0] = v37;
      *v35 = 136315138;
      sub_1D8CFD720(&qword_1EDCD5930, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v38 = sub_1D9179A4C();
      v40 = v39;
      v41 = v20;
      v42 = v36;
      v84(v41, v36);
      v43 = sub_1D8CFA924(v38, v40, v88);
      v28 = v87;

      *(v35 + 4) = v43;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Updating channels if any were updated before %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1DA72CB90](v37, -1, -1);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    else
    {

      v54 = v20;
      v42 = v17;
      v84(v54, v17);
    }

    v55 = *(v30 + 8);
    v55(v16, v28);
    v56 = v83;
    v57 = swift_beginAccess();
    v58 = *(v56 + 16);
    MEMORY[0x1EEE9AC00](v57);
    v59 = v81;
    *(&v75 - 2) = v81;

    v60 = *(sub_1D90678D8(sub_1D90762F8, (&v75 - 4), v58) + 16);

    if (v60)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v62 = Strong;
        sub_1D9071A38();
      }

      v63 = v42;
    }

    else
    {
      v64 = v79;
      v76(v79, v78, v28);

      v65 = sub_1D917741C();
      v66 = sub_1D9178D1C();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 134217984;
        swift_beginAccess();
        *(v67 + 4) = *(*(v56 + 16) + 16);

        _os_log_impl(&dword_1D8CEC000, v65, v66, "Defer MAPI update, all %ld channels were updated recently", v67, 0xCu);
        MEMORY[0x1DA72CB90](v67, -1, -1);
      }

      else
      {
      }

      v63 = v42;

      v55(v64, v28);
    }

    return (v84)(v59, v63);
  }

  else if (a2)
  {
    v44 = sub_1D9176A5C();
    v46 = v86;
    v45 = v87;
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v45, qword_1EDCD0690);
    swift_beginAccess();
    (*(v46 + 16))(v11, v47, v45);
    v48 = v44;
    v49 = sub_1D917741C();
    v50 = sub_1D9178CFC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&dword_1D8CEC000, v49, v50, "Error getting subs TTL from bag: %@", v51, 0xCu);
      sub_1D8D08A50(v52, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v52, -1, -1);
      MEMORY[0x1DA72CB90](v51, -1, -1);
    }

    else
    {
      v53 = v49;
      v49 = v48;
    }

    return (*(v46 + 8))(v11, v45);
  }

  else
  {
    v69 = v86;
    v68 = v87;
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v70 = __swift_project_value_buffer(v68, qword_1EDCD0690);
    swift_beginAccess();
    (*(v69 + 16))(v8, v70, v68);
    v71 = sub_1D917741C();
    v72 = sub_1D9178CFC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_1D8CEC000, v71, v72, "Error getting subs TTL from bag", v73, 2u);
      MEMORY[0x1DA72CB90](v73, -1, -1);
    }

    return (*(v69 + 8))(v8, v68);
  }
}

uint64_t sub_1D90729D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(a6 + *((*MEMORY[0x1E69E7D40] & *a6) + 0x68));
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a1;
  aBlock[4] = sub_1D9076240;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_37_0;
  v17 = _Block_copy(aBlock);
  v18 = a5;

  v19 = a6;
  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD720(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_1D9072CDC(unint64_t a1, char *a2, unint64_t a3)
{
  v175 = a2;
  v172 = sub_1D9176E3C();
  v5 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v7 = v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v171 = v162 - v9;
  v10 = sub_1D917744C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v166 = v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v162 - v14);
  MEMORY[0x1EEE9AC00](v16);
  isUniquelyReferenced_nonNull_native = v162 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v162 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v162 - v23;
  if (a1)
  {
    v191[2] = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if (!swift_dynamicCast() || v189 != 1)
    {
      v38 = a1;
      if (qword_1EDCD5AA8 != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v10, qword_1EDCD0690);
      swift_beginAccess();
      v40 = v11;
      (*(v11 + 16))(v24, v39, v10);
      v41 = a1;
      v42 = sub_1D917741C();
      v43 = v10;
      v44 = sub_1D9178CFC();

      if (os_log_type_enabled(v42, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v189 = v46;
        *v45 = 136315138;
        swift_getErrorValue();
        v47 = sub_1D9179D2C();
        v49 = sub_1D8CFA924(v47, v48, &v189);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_1D8CEC000, v42, v44, "Getting channels failed with error %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        MEMORY[0x1DA72CB90](v46, -1, -1);
        MEMORY[0x1DA72CB90](v45, -1, -1);
      }

      else
      {
      }

      return (*(v40 + 8))(v24, v43);
    }
  }

  v186 = v15;
  v187 = v7;
  v173 = v5;
  v26 = v175;
  v27 = *((*MEMORY[0x1E69E7D40] & *v175) + 0xA8);
  swift_beginAccess();
  v28 = *&v26[v27];
  os_unfair_lock_lock((v28 + 20));
  *(v28 + 16) = 0;
  os_unfair_lock_unlock((v28 + 20));
  swift_endAccess();
  if (qword_1EDCD5AA8 != -1)
  {
    goto LABEL_160;
  }

  while (2)
  {
    v29 = __swift_project_value_buffer(v10, qword_1EDCD0690);
    swift_beginAccess();
    v30 = *(v11 + 16);
    v168 = v11 + 16;
    v167 = v30;
    v30(v21, v29, v10);
    v31 = sub_1D917741C();
    v32 = sub_1D9178D1C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D8CEC000, v31, v32, "Set receivedEntitlementsNotification to false", v33, 2u);
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    v34 = *(v11 + 8);
    v11 += 8;
    v174 = v10;
    v170 = v11;
    v169 = v34;
    v34(v21, v10);
    v35 = MEMORY[0x1E69E7CC0];
    if (!a3)
    {
      v37 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_16;
      }

LABEL_33:
      if (v37 < 0)
      {
        v21 = v37;
      }

      else
      {
        v21 = (v37 & 0xFFFFFFFFFFFFFF8);
      }

      v53 = sub_1D917935C();

      if (!(v53 | a1))
      {
LABEL_38:

        v54 = v174;
        v167(isUniquelyReferenced_nonNull_native, v29, v174);
        v55 = sub_1D917741C();
        v56 = sub_1D9178CFC();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_1D8CEC000, v55, v56, "Failed to cast to channel objects", v57, 2u);
          MEMORY[0x1DA72CB90](v57, -1, -1);
        }

        v58 = isUniquelyReferenced_nonNull_native;
        v59 = v54;
        v60 = &v192;
        return (*(v60 - 32))(v58, v59);
      }

      v189 = v35;
      isUniquelyReferenced_nonNull_native = sub_1D917935C();
      goto LABEL_18;
    }

    v36 = sub_1D8FBEEFC(a3);
    if (!v36)
    {
      v37 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }

    v37 = v36;

    if (v37 >> 62)
    {
      goto LABEL_33;
    }

LABEL_16:
    v21 = (v37 & 0xFFFFFFFFFFFFFF8);
    v11 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!(v11 | a1))
    {
      goto LABEL_38;
    }

    v189 = v35;
    isUniquelyReferenced_nonNull_native = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
    v165 = v29;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v52 = MEMORY[0x1E69E7CC0];
      goto LABEL_42;
    }

    a3 = 0;
    v10 = &OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes;
    while ((v37 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x1DA72AA90](a3, v37);
      v11 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        goto LABEL_30;
      }

LABEL_25:
      v51 = *(*&v50[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 74);
      if (v51 == 2 || (v51 & 1) == 0)
      {
      }

      else
      {
        v21 = &v189;
        sub_1D917959C();
        a1 = v189[2];
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
      }

      ++a3;
      if (v11 == isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_31;
      }
    }

    if (a3 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_152;
    }

    v50 = *(v37 + 8 * a3 + 32);
    v11 = a3 + 1;
    if (!__OFADD__(a3, 1))
    {
      goto LABEL_25;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    v52 = v189;
LABEL_42:

    a3 = v174;
    if (v52 < 0 || (v52 & 0x4000000000000000) != 0)
    {
LABEL_162:
      v61 = sub_1D917935C();
    }

    else
    {
      v61 = *(v52 + 16);
    }

    v62 = MEMORY[0x1E69E7CC0];
    if (!v61)
    {
LABEL_55:
      v70 = sub_1D8FC0F28(v62);

      v71 = v186;
      v167(v186, v165, a3);

      v72 = sub_1D917741C();
      v73 = sub_1D9178D1C();

      v74 = os_log_type_enabled(v72, v73);
      v164 = v70;
      if (v74)
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v189 = v76;
        *v75 = 141558275;
        *(v75 + 4) = 1752392040;
        *(v75 + 12) = 2081;
        v191[0] = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
        sub_1D8CF48EC(&qword_1EDCD5BD8, &unk_1ECAB4F30, &qword_1D918DA90, MEMORY[0x1E69E6508]);
        sub_1D8D447DC();
        v77 = sub_1D917851C();
        a1 = sub_1D8CFA924(v77, v78, &v189);

        *(v75 + 14) = a1;
        _os_log_impl(&dword_1D8CEC000, v72, v73, "Got purchased channels %{private,mask.hash}s from MAPI", v75, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
        MEMORY[0x1DA72CB90](v76, -1, -1);
        MEMORY[0x1DA72CB90](v75, -1, -1);

        v79 = v71;
        v80 = v174;
      }

      else
      {

        v79 = v71;
        v80 = a3;
      }

      v169(v79, v80);
      v11 = v175;
      v81 = v187;
      sub_1D9176E2C();
      v82 = v171;
      sub_1D9176D7C();
      v83 = *(v173 + 8);
      v173 += 8;
      v162[2] = v83;
      v84 = v83(v81, v172);
      MEMORY[0x1EEE9AC00](v84);
      v162[-2] = v82;
      v162[-1] = v11;

      v10 = 0;
      v85 = sub_1D9067A30(sub_1D907624C, &v162[-4], v52);
      isUniquelyReferenced_nonNull_native = v85;
      v162[1] = 0;
      a3 = v85 >> 62;
      if (v85 >> 62)
      {
        v86 = sub_1D917935C();
      }

      else
      {
        v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = MEMORY[0x1E69E7CC0];
      v182 = isUniquelyReferenced_nonNull_native;
      if (v86)
      {
        v189 = MEMORY[0x1E69E7CC0];
        sub_1D8D41BE0(0, v86 & ~(v86 >> 63), 0);
        if (v86 < 0)
        {
          goto LABEL_165;
        }

        v10 = 0;
        v21 = v189;
        v87 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        do
        {
          if (v87)
          {
            v88 = MEMORY[0x1DA72AA90](v10, isUniquelyReferenced_nonNull_native);
          }

          else
          {
            v88 = *(isUniquelyReferenced_nonNull_native + 8 * v10 + 32);
          }

          v89 = v88;
          a1 = *&v88[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
          v11 = *&v88[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

          v189 = v21;
          v91 = v21[2];
          v90 = v21[3];
          if (v91 >= v90 >> 1)
          {
            sub_1D8D41BE0((v90 > 1), v91 + 1, 1);
            v21 = v189;
          }

          ++v10;
          v21[2] = v91 + 1;
          v92 = &v21[2 * v91];
          v92[4] = a1;
          v92[5] = v11;
          isUniquelyReferenced_nonNull_native = v182;
        }

        while (v86 != v10);
      }

      v163 = sub_1D8FC0F28(v21);

      if (a3)
      {
        v93 = sub_1D917935C();
      }

      else
      {
        v93 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v176 = v52;
      if (v93)
      {
        v94 = 0;
        v180 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        v179 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v186 = MEMORY[0x1E69E7CC8];
        v178 = isUniquelyReferenced_nonNull_native + 32;
        v177 = v93;
        while (1)
        {
          if (v180)
          {
            v122 = v94;
            v96 = MEMORY[0x1DA72AA90](v94, isUniquelyReferenced_nonNull_native);
            v97 = __OFADD__(v122, 1);
            v21 = (v122 + 1);
            if (v97)
            {
              goto LABEL_153;
            }
          }

          else
          {
            if (v94 >= *(v179 + 16))
            {
              goto LABEL_154;
            }

            v95 = v94;
            v96 = *(v178 + 8 * v94);
            v97 = __OFADD__(v95, 1);
            v21 = (v95 + 1);
            if (v97)
            {
              goto LABEL_153;
            }
          }

          v98 = *&v96[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
          v184 = v21;
          v185 = v98;
          v99 = *&v96[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];
          v183 = v96;
          v100 = *&v96[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_relationships];
          if (v100 && (v101 = *(v100 + 16)) != 0)
          {
            v181 = v99;
            v21 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
            swift_beginAccess();
            v102 = *(v21 + v101);
            if (v102 >> 62)
            {
              v10 = sub_1D917935C();
            }

            else
            {
              v10 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v10)
            {
              isUniquelyReferenced_nonNull_native = 0;
              v187 = v102 & 0xC000000000000001;
              v103 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                if (v187)
                {
                  v104 = MEMORY[0x1DA72AA90](isUniquelyReferenced_nonNull_native, v102);
                }

                else
                {
                  if (isUniquelyReferenced_nonNull_native >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_150;
                  }

                  v104 = *(v102 + 8 * isUniquelyReferenced_nonNull_native + 32);
                }

                a3 = v104;
                v105 = (isUniquelyReferenced_nonNull_native + 1);
                if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
                {
                  break;
                }

                v21 = v10;
                v106 = *&v104[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
                v11 = *&v104[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v103 = sub_1D8D4241C(0, *(v103 + 2) + 1, 1, v103);
                }

                a1 = *(v103 + 2);
                v107 = *(v103 + 3);
                a3 = a1 + 1;
                if (a1 >= v107 >> 1)
                {
                  v103 = sub_1D8D4241C((v107 > 1), a1 + 1, 1, v103);
                }

                *(v103 + 2) = a3;
                v108 = &v103[16 * a1];
                *(v108 + 4) = v106;
                *(v108 + 5) = v11;
                ++isUniquelyReferenced_nonNull_native;
                v10 = v21;
                if (v105 == v21)
                {
                  goto LABEL_101;
                }
              }

              __break(1u);
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

            v103 = MEMORY[0x1E69E7CC0];
LABEL_101:

            v21 = v186;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v191[0] = v21;
            v111 = sub_1D8D33C70(v185, v181);
            v113 = v21[2];
            v114 = (v112 & 1) == 0;
            v97 = __OFADD__(v113, v114);
            v115 = v113 + v114;
            if (v97)
            {
              goto LABEL_155;
            }

            v11 = v112;
            if (v21[3] >= v115)
            {
              v52 = v176;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v10 = v111;
                sub_1D8F84DF0();
                v111 = v10;
              }
            }

            else
            {
              sub_1D9008704(v115, isUniquelyReferenced_nonNull_native);
              v111 = sub_1D8D33C70(v185, v181);
              v52 = v176;
              if ((v11 & 1) != (v116 & 1))
              {
                goto LABEL_166;
              }
            }

            isUniquelyReferenced_nonNull_native = v182;
            v21 = v191[0];
            if (v11)
            {
              v117 = *(v191[0] + 56);
              v11 = *(v117 + 8 * v111);
              *(v117 + 8 * v111) = v103;
            }

            else
            {
              *(v191[0] + 8 * (v111 >> 6) + 64) |= 1 << v111;
              v118 = (v21[6] + 16 * v111);
              v119 = v181;
              *v118 = v185;
              v118[1] = v119;
              *(v21[7] + 8 * v111) = v103;

              v120 = v21[2];
              v97 = __OFADD__(v120, 1);
              v121 = v120 + 1;
              if (v97)
              {
                goto LABEL_158;
              }

              v21[2] = v121;
            }
          }

          else
          {
            v10 = v186;

            sub_1D8D33C70(v185, v99);
            if (v109)
            {
              v110 = swift_isUniquelyReferenced_nonNull_native();
              v191[0] = v10;
              v21 = v10;
              if ((v110 & 1) == 0)
              {
                sub_1D8F84DF0();
                v21 = v191[0];
              }

              sub_1D8DA2AF4();
            }

            else
            {

              v21 = v10;
            }
          }

          v94 = v184;
          v186 = v21;
          if (v184 == v177)
          {
            goto LABEL_116;
          }
        }
      }

      v21 = MEMORY[0x1E69E7CC8];
LABEL_116:

      a3 = (v21 + 8);
      v123 = 1 << *(v21 + 32);
      v124 = -1;
      if (v123 < 64)
      {
        v124 = ~(-1 << v123);
      }

      v125 = v124 & v21[8];
      v126 = (v123 + 63) >> 6;

      a1 = 0;
      v127 = MEMORY[0x1E69E7CC0];
      while (v125)
      {
LABEL_125:
        isUniquelyReferenced_nonNull_native = *(v21[7] + ((a1 << 9) | (8 * __clz(__rbit64(v125)))));
        v11 = *(isUniquelyReferenced_nonNull_native + 16);
        v129 = *(v127 + 2);
        v10 = v129 + v11;
        if (__OFADD__(v129, v11))
        {
          goto LABEL_156;
        }

        v130 = swift_isUniquelyReferenced_nonNull_native();
        if (!v130 || v10 > *(v127 + 3) >> 1)
        {
          if (v129 <= v10)
          {
            v131 = v129 + v11;
          }

          else
          {
            v131 = v129;
          }

          v127 = sub_1D8D4241C(v130, v131, 1, v127);
        }

        v52 = v176;
        v125 &= v125 - 1;
        if (*(isUniquelyReferenced_nonNull_native + 16))
        {
          if ((*(v127 + 3) >> 1) - *(v127 + 2) < v11)
          {
            goto LABEL_159;
          }

          swift_arrayInitWithCopy();

          if (v11)
          {
            v132 = *(v127 + 2);
            v97 = __OFADD__(v132, v11);
            v133 = v132 + v11;
            if (v97)
            {
              __break(1u);
              goto LABEL_162;
            }

            *(v127 + 2) = v133;
          }
        }

        else
        {

          if (v11)
          {
            goto LABEL_157;
          }
        }
      }

      while (1)
      {
        v128 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        if (v128 >= v126)
        {

          v134 = sub_1D8FC0F28(v127);

          v135 = v175;
          v136 = *((*MEMORY[0x1E69E7D40] & *v175) + 0x90);
          v137 = v164;
          if ((v175[v136] & 1) == 0)
          {
            *&v175[*((*MEMORY[0x1E69E7D40] & *v175) + 0x88)] = v164;

            v135[v136] = 1;
          }

          v138 = v166;
          v139 = v174;
          v167(v166, v165, v174);
          v140 = v163;

          v141 = sub_1D917741C();
          v142 = sub_1D9178D1C();

          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v191[0] = v144;
            *v143 = 141558787;
            *(v143 + 4) = 1752392040;
            *(v143 + 12) = 2081;
            v188 = v140;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
            sub_1D8CF48EC(&qword_1EDCD5BD8, &unk_1ECAB4F30, &qword_1D918DA90, MEMORY[0x1E69E6508]);
            sub_1D8D447DC();
            v145 = sub_1D917851C();
            v147 = sub_1D8CFA924(v145, v146, v191);

            *(v143 + 14) = v147;
            v52 = v176;
            *(v143 + 22) = 2160;
            *(v143 + 24) = 1752392040;
            *(v143 + 32) = 2081;
            v188 = v134;
            v137 = v164;
            v140 = v163;
            v148 = sub_1D917851C();
            v150 = sub_1D8CFA924(v148, v149, v191);

            *(v143 + 34) = v150;
            _os_log_impl(&dword_1D8CEC000, v141, v142, "Got recently purchased channels %{private,mask.hash}s and purchased shows %{private,mask.hash}s from MAPI", v143, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1DA72CB90](v144, -1, -1);
            MEMORY[0x1DA72CB90](v143, -1, -1);

            v151 = v166;
            v152 = v174;
          }

          else
          {

            v151 = v138;
            v152 = v139;
          }

          v169(v151, v152);
          sub_1D8FB13E8(v134, v140);
          v154 = v153;
          MEMORY[0x1EEE9AC00](v153);
          v155 = type metadata accessor for StorePurchaseTask();
          v162[-2] = v155;
          v162[-1] = &protocol witness table for StorePurchaseTask;
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          v162[-2] = v155;
          v162[-1] = &protocol witness table for StorePurchaseTask;
          swift_getKeyPath();
          v191[0] = v154;
          v157 = v175;
          sub_1D9177ADC();
          v158 = sub_1D8DBC35C(v52);
          if ([objc_opt_self() isRunningOnInternalOS])
          {
            v159 = *&v157[*((*MEMORY[0x1E69E7D40] & *v157) + 0xC8)];
            v160 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
            LODWORD(v159) = [v159 BOOLForKey_];

            if (v159)
            {
              v158 = v137;
            }
          }

          sub_1D9074670(v158, v52);

          v58 = v171;
          v59 = v172;
          v60 = &v190;
          return (*(v60 - 32))(v58, v59);
        }

        v125 = *(a3 + 8 * v128);
        ++a1;
        if (v125)
        {
          a1 = v128;
          goto LABEL_125;
        }
      }

LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      swift_once();
      continue;
    }

    break;
  }

  v189 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v61 & ~(v61 >> 63), 0);
  if ((v61 & 0x8000000000000000) == 0)
  {
    v63 = 0;
    v62 = v189;
    do
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1DA72AA90](v63, v52);
      }

      else
      {
        v64 = *(v52 + 8 * v63 + 32);
      }

      v65 = v64;
      v66 = *&v64[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
      v67 = *&v64[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

      v189 = v62;
      a1 = *(v62 + 16);
      v68 = *(v62 + 24);
      if (a1 >= v68 >> 1)
      {
        sub_1D8D41BE0((v68 > 1), a1 + 1, 1);
        v62 = v189;
      }

      ++v63;
      *(v62 + 16) = a1 + 1;
      v69 = v62 + 16 * a1;
      *(v69 + 32) = v66;
      *(v69 + 40) = v67;
    }

    while (v61 != v63);
    a3 = v174;
    goto LABEL_55;
  }

  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

uint64_t sub_1D90743DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1D9176E3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D90399EC(v7);
  v12 = *(v9 + 48);
  if (v12(v7, 1, v8) == 1)
  {
    sub_1D9176CEC();
    if (v12(v7, 1, v8) != 1)
    {
      sub_1D8D08A50(v7, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  v13 = sub_1D9176D9C();
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    v14 = 1;
  }

  else if (*(a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x90)))
  {
    v15 = *(a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x88));
    v16 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);
    v17 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8);

    LOBYTE(v17) = sub_1D8EF0850(v16, v17, v15);

    v14 = v17 ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

char *sub_1D9074670(unint64_t a1, unint64_t a2)
{
  v4 = sub_1D9177E0C();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D9177E9C();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D917744C();
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v71 = &v67 - v10;
  v72 = v11;
  if (a2 >> 62)
  {
LABEL_34:
    v12 = sub_1D917935C();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  v80 = a1;
  if (v12)
  {
    a1 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA72AA90](a1, a2, v9);
      }

      else
      {
        if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v14 = *(a2 + 8 * a1 + 32);
      }

      v15 = v14;
      v16 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (*(*&v14[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176) > 1u)
      {
        if (*(*&v14[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176) != 2)
        {
          goto LABEL_5;
        }
      }

      else if (!*(*&v14[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176))
      {

LABEL_16:
        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        goto LABEL_6;
      }

      v17 = sub_1D9179ACC();

      if (v17)
      {
        goto LABEL_16;
      }

LABEL_5:

LABEL_6:
      ++a1;
      if (v16 == v12)
      {
        v18 = aBlock[0];
        a1 = v80;
        v13 = MEMORY[0x1E69E7CC0];
        if ((aBlock[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_21:
  if ((v18 & 0x4000000000000000) != 0)
  {
LABEL_35:
    v19 = sub_1D917935C();
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_36:

    goto LABEL_37;
  }

  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_36;
  }

LABEL_23:
  aBlock[0] = v13;
  result = sub_1D8D41BE0(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
    __break(1u);
    return result;
  }

  v21 = 0;
  v13 = aBlock[0];
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1DA72AA90](v21, v18);
    }

    else
    {
      v22 = *(v18 + 8 * v21 + 32);
    }

    v23 = v22;
    v25 = *&v22[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
    v24 = *&v22[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

    aBlock[0] = v13;
    v27 = *(v13 + 16);
    v26 = *(v13 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1D8D41BE0((v26 > 1), v27 + 1, 1);
      v13 = aBlock[0];
    }

    ++v21;
    *(v13 + 16) = v27 + 1;
    v28 = v13 + 16 * v27;
    *(v28 + 32) = v25;
    *(v28 + 40) = v24;
  }

  while (v19 != v21);

  a1 = v80;
LABEL_37:
  v29 = sub_1D8FC0F28(v13);

  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v30 = v82;
  v31 = __swift_project_value_buffer(v82, qword_1EDCD0690);
  swift_beginAccess();
  v32 = v81;
  v33 = *(v81 + 16);
  v34 = v71;
  v70 = v81 + 16;
  v69 = v33;
  v33(v71, v31, v30);

  v35 = sub_1D917741C();
  v36 = sub_1D9178D1C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v68 = v31;
    v39 = v38;
    aBlock[0] = v38;
    *v37 = 141558275;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    v40 = sub_1D9178AAC();
    v42 = sub_1D8CFA924(v40, v41, aBlock);

    *(v37 + 14) = v42;
    _os_log_impl(&dword_1D8CEC000, v35, v36, "User's Entitlements IAP/1p Id's: %{private,mask.hash}s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v43 = v39;
    v31 = v68;
    MEMORY[0x1DA72CB90](v43, -1, -1);
    v44 = v37;
    a1 = v80;
    MEMORY[0x1DA72CB90](v44, -1, -1);
  }

  v45 = *(v32 + 8);
  v45(v34, v30);
  if ([objc_opt_self() isRunningOnInternalOS] && (v46 = *(v79 + *((*MEMORY[0x1E69E7D40] & *v79) + 0xC8)), v47 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0(), LODWORD(v46) = objc_msgSend(v46, sel_BOOLForKey_, v47), v47, v46))
  {

    swift_bridgeObjectRetain_n();
  }

  else
  {

    a1 = sub_1D90701C4(v29, a1);
  }

  v48 = v72;
  v49 = v82;
  v69(v72, v31, v82);

  v50 = sub_1D917741C();
  v51 = sub_1D9178D1C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 141558275;
    *(v52 + 4) = 1752392040;
    *(v52 + 12) = 2081;
    v54 = sub_1D9178AAC();
    v56 = v55;

    v57 = sub_1D8CFA924(v54, v56, aBlock);

    *(v52 + 14) = v57;
    _os_log_impl(&dword_1D8CEC000, v50, v51, "Showing all newly subscribed 1p/IAP subscriptions in the confirmation sheet: %{private,mask.hash}s", v52, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1DA72CB90](v53, -1, -1);
    MEMORY[0x1DA72CB90](v52, -1, -1);
  }

  else
  {
  }

  v45(v48, v49);
  v58 = MEMORY[0x1E69E7CC0];
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v59 = sub_1D9178E1C();
  v60 = swift_allocObject();
  v61 = v79;
  *(v60 + 16) = v79;
  *(v60 + 24) = a1;
  aBlock[4] = sub_1D9076270;
  aBlock[5] = v60;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_44_1;
  v62 = _Block_copy(aBlock);
  v63 = v61;

  v64 = v73;
  sub_1D9177E4C();
  aBlock[0] = v58;
  sub_1D8CFD720(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v65 = v75;
  v66 = v78;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v64, v65, v62);
  _Block_release(v62);

  (*(v77 + 8))(v65, v66);
  return (*(v74 + 8))(v64, v76);
}

uint64_t sub_1D9075084(void *a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x78);
  swift_beginAccess();
  sub_1D9076278(a1 + v4, v11);
  if (!v12)
  {
    return sub_1D8D08A50(v11, &unk_1ECAB9920, &unk_1D91AD170);
  }

  sub_1D8CFD9D8(v11, v8);
  sub_1D8D08A50(v11, &unk_1ECAB9920, &unk_1D91AD170);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 8))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

void sub_1D9075180(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v99 = a4;
  v119 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v93 - v6;
  v8 = sub_1D9176E3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v113 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D917744C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v109 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v100 = v93 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v93 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v93 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDCD5AA8 == -1)
    {
LABEL_18:
      v40 = __swift_project_value_buffer(v11, qword_1EDCD0690);
      swift_beginAccess();
      (*(v12 + 16))(v18, v40, v11);
      v41 = sub_1D9178CFC();
      v42 = sub_1D917741C();
      if (os_log_type_enabled(v42, v41))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1D8CEC000, v42, v41, "Could not unwrap self in PurchaseController. Cannot update subscriptions.", v43, 2u);
        MEMORY[0x1DA72CB90](v43, -1, -1);
      }

      (*(v12 + 8))(v18, v11);
      return;
    }

LABEL_97:
    swift_once();
    goto LABEL_18;
  }

  v23 = Strong;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v118 = a3;
  v24 = __swift_project_value_buffer(v11, qword_1EDCD0690);
  swift_beginAccess();
  v25 = *(v12 + 16);
  v106 = v24;
  v105 = v12 + 16;
  v104 = v25;
  v25(v21, v24, v11);
  v18 = sub_1D917741C();
  v26 = sub_1D9178D1C();
  if (os_log_type_enabled(v18, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1D8CEC000, v18, v26, "Updating subscribed channels from server objects.", v27, 2u);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  v116 = v9;
  v108 = v23;
  v117 = v8;

  v28 = *(v12 + 8);
  v12 += 8;
  v112 = v11;
  v107 = v12;
  v103 = v28;
  v28(v21, v11);
  v11 = v119;
  v96 = v7;
  if (v119 >> 62)
  {
    v29 = sub_1D917935C();
    if (v29)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v29 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_8:
      v30 = objc_opt_self();
      if (v29 >= 1)
      {
        v31 = v30;
        v32 = objc_opt_self();
        v33 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x1DA72AA90](v33, v11);
          }

          else
          {
            v35 = *(v11 + 8 * v33 + 32);
          }

          v36 = v35;
          v37 = [v32 sharedInstance];
          v38 = [v37 privateQueueContext];

          v39 = [v31 createOrFindChannelFromFeedChannelItem:v36 personalizedRequest:1 context:v38];
          sub_1D9039D04(v120);
          if (LOBYTE(v120[0]) >= 4u)
          {
            v34 = 0;
          }

          else
          {
            v34 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
          }

          ++v33;
          [v39 setSubscriptionOfferAppType_];
        }

        while (v29 != v33);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_97;
    }
  }

LABEL_22:
  v44 = [objc_opt_self() sharedInstance];
  v45 = [v44 privateQueueContext];

  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v46 = sub_1D917908C();
  v47 = MEMORY[0x1E69E7CC0];
  v48 = v46;
  v93[1] = 0;

  v120[0] = v47;
  if (v48 >> 62)
  {
    goto LABEL_94;
  }

  v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v49)
  {
    goto LABEL_24;
  }

LABEL_35:
  v52 = MEMORY[0x1E69E7D40];
  v53 = v108;
  v102 = *((*MEMORY[0x1E69E7D40] & *v108) + 0xC0);

  InterestRepository.unsafeFavoriteExistingEntitledChannelsIfNeeded(entitledChannels:)(v47);

  if (v49)
  {
    v47 = 0;
    v55 = *v52 & *v53;
    v111 = v48 & 0xC000000000000001;
    v98 = v48 & 0xFFFFFFFFFFFFFF8;
    v97 = (v48 + 32);
    v101 = *(v55 + 160);
    v115 = (v116 + 8);
    v56 = v11 & 0xC000000000000001;
    v57 = v11 & 0xFFFFFFFFFFFFFF8;
    v95 = (v116 + 48);
    *&v54 = 141558275;
    v94 = v54;
    v110 = v48;
    v116 = v49;
    while (1)
    {
      if (v111)
      {
        v58 = MEMORY[0x1DA72AA90](v47, v48);
      }

      else
      {
        if (v47 >= *(v98 + 16))
        {
          goto LABEL_93;
        }

        v58 = *&v97[8 * v47];
      }

      v48 = v58;
      if (__OFADD__(v47++, 1))
      {
        goto LABEL_91;
      }

      v118 = v47;
      v60 = v113;
      sub_1D9176E2C();
      sub_1D9176CCC();
      v62 = v61;
      v114 = *v115;
      v114(v60, v117);
      [v48 setLastPersonalizedRequestDate_];
      v63 = MEMORY[0x1E69E7CC0];
      v120[0] = MEMORY[0x1E69E7CC0];
      if (v29)
      {
        v64 = 0;
        while (1)
        {
          if (v56)
          {
            v65 = MEMORY[0x1DA72AA90](v64, v11);
          }

          else
          {
            if (v64 >= *(v57 + 16))
            {
              goto LABEL_88;
            }

            v65 = *(v11 + 8 * v64 + 32);
          }

          v66 = v65;
          v11 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            v49 = sub_1D917935C();
            if (!v49)
            {
              goto LABEL_35;
            }

LABEL_24:
            v47 = 0;
            do
            {
              if ((v48 & 0xC000000000000001) != 0)
              {
                v50 = MEMORY[0x1DA72AA90](v47, v48);
              }

              else
              {
                if (v47 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_90;
                }

                v50 = *(v48 + 8 * v47 + 32);
              }

              v51 = v50;
              v11 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                goto LABEL_89;
              }

              if ([v50 subscriptionActive])
              {
                sub_1D917959C();
                sub_1D91795DC();
                sub_1D91795EC();
                sub_1D91795AC();
              }

              else
              {
              }

              ++v47;
              v70 = v11 == v49;
              v11 = v119;
            }

            while (!v70);
            v47 = v120[0];
            goto LABEL_35;
          }

          v68 = *&v65[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
          v67 = *&v65[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];
          v121 = [v48 storeId];
          v70 = v68 == sub_1D9179A4C() && v67 == v69;
          if (v70)
          {
          }

          else
          {
            v47 = sub_1D9179ACC();

            if ((v47 & 1) == 0)
            {

              goto LABEL_49;
            }
          }

          sub_1D917959C();
          v47 = *(v120[0] + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
LABEL_49:
          ++v64;
          v70 = v11 == v29;
          v11 = v119;
          if (v70)
          {
            v63 = v120[0];
            v49 = v116;
            break;
          }
        }
      }

      if ((v63 & 0x8000000000000000) != 0 || (v63 & 0x4000000000000000) != 0)
      {
        v47 = v63;
        v87 = sub_1D917935C();
        v63 = v47;
        if (v87)
        {
LABEL_65:
          if ((v63 & 0xC000000000000001) != 0)
          {
            v71 = MEMORY[0x1DA72AA90](0, v63);
          }

          else
          {
            if (!*(v63 + 16))
            {
              goto LABEL_92;
            }

            v71 = *(v63 + 32);
          }

          v72 = v71;

          if ([v48 subscriptionActive])
          {
          }

          else
          {
            v104(v109, v106, v112);
            v73 = v48;
            v74 = sub_1D917741C();
            v75 = sub_1D9178D1C();
            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              *v76 = v94;
              *(v76 + 4) = 1752392040;
              *(v76 + 12) = 2049;
              *(v76 + 14) = [v73 storeId];

              _os_log_impl(&dword_1D8CEC000, v74, v75, "Setting channel %{private,mask.hash}lld to subscribed", v76, 0x16u);
              MEMORY[0x1DA72CB90](v76, -1, -1);
            }

            else
            {

              v74 = v73;
            }

            v77 = v96;

            v103(v109, v112);
            sub_1D90399EC(v77);
            v78 = v117;
            if ((*v95)(v77, 1, v117) == 1)
            {
              sub_1D8D08A50(v77, &qword_1ECAB75C0, &unk_1D9188A50);
              v79 = 0.0;
            }

            else
            {
              sub_1D9176CCC();
              v81 = v80;
              v114(v77, v78);
              v79 = v81;
            }

            [*&v108[v101] unsafeHandleSubscriptionChangeForChannel:v73 subscriptionBecameActive:1 subscriptionEnabledDate:v79];

            v82 = [v73 storeId];
            InterestRepository.favoriteInterest(forAdamID:force:)(v82 & ~(v82 >> 63), 0);

            v83 = [v73 storeId];
            v120[0] = v83 & ~(v83 >> 63);
            sub_1D8E40D20();
            v84 = sub_1D917927C();
            v86 = v85;
            swift_beginAccess();
            sub_1D8D19AFC(&v121, v84, v86);
            swift_endAccess();
          }

          v49 = v116;
          goto LABEL_39;
        }
      }

      else if (*(v63 + 16))
      {
        goto LABEL_65;
      }

      if ([v48 subscriptionActive])
      {
        v104(v100, v106, v112);
        v88 = v48;
        v89 = sub_1D917741C();
        v90 = sub_1D9178D1C();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = v94;
          *(v91 + 4) = 1752392040;
          *(v91 + 12) = 2049;
          *(v91 + 14) = [v88 storeId];

          _os_log_impl(&dword_1D8CEC000, v89, v90, "Setting channel %{private,mask.hash}lld to not subscribed", v91, 0x16u);
          MEMORY[0x1DA72CB90](v91, -1, -1);
        }

        else
        {

          v89 = v88;
        }

        v103(v100, v112);
        [*&v108[v101] unsafeHandleSubscriptionChangeForChannel:v88 subscriptionBecameActive:0 subscriptionEnabledDate:0.0];

        v92 = [v88 storeId];
        InterestRepository.unfavoriteInterest(forAdamID:)(v92 & ~(v92 >> 63));
      }

      else
      {
      }

LABEL_39:
      v47 = v118;
      v48 = v110;
      if (v118 == v49)
      {

        goto LABEL_86;
      }
    }
  }

LABEL_86:
}

id PurchaseControllerWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchaseControllerWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9076278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9920, &unk_1D91AD170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D9076334(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

unint64_t sub_1D90763DC()
{
  result = qword_1ECAB9A80;
  if (!qword_1ECAB9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9A80);
  }

  return result;
}

unint64_t sub_1D9076434()
{
  result = qword_1ECAB9A88;
  if (!qword_1ECAB9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9A88);
  }

  return result;
}

unint64_t sub_1D907648C()
{
  result = qword_1ECAB9A90;
  if (!qword_1ECAB9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9A90);
  }

  return result;
}

unint64_t sub_1D90764E4()
{
  result = qword_1ECAB9A98;
  if (!qword_1ECAB9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9A98);
  }

  return result;
}

uint64_t StorePurchaseError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

id StorePurchaseTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StorePurchaseTask.init()()
{
  v1 = &v0[OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate];
  v2 = type metadata accessor for StorePurchaseTask();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1D907673C(uint64_t a1, uint64_t *a2)
{
  sub_1D90767F8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  sub_1D90768C8(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1D90767A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  return sub_1D90767F8(v1 + v3, a1);
}

uint64_t sub_1D90767F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9A78, &qword_1D91AD680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9076868(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  sub_1D90768C8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D90768C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9A78, &qword_1D91AD680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D907699C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v13 = *a5;
  v14 = objc_allocWithZone(MEMORY[0x1E698C818]);
  v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v16 = [v14 initWithString_];

  v17 = [objc_allocWithZone(MEMORY[0x1E698CAE0]) initWithPurchaseType:3 buyParams:v16];
  [v17 setUserInitiated_];
  [v17 setRequiresAccount_];
  if (a6)
  {
    a6 = sub_1D917802C();
  }

  [v17 setMetricsOverlay_];

  if (a4)
  {
    a4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v17 setPresentingSceneIdentifier_];

  sub_1D9077144(v17, a7, a8, a9);
}

uint64_t sub_1D9076B28(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = sub_1D917744C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  if (a2)
  {
    v35 = a5;
    v37 = a2;
    v16 = sub_1D9176A5C();
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v36 = a4;
    v17 = __swift_project_value_buffer(v9, qword_1EDCD0690);
    swift_beginAccess();
    (*(v10 + 16))(v15, v17, v9);
    v18 = v16;
    v19 = a3;
    v20 = sub_1D917741C();
    v21 = sub_1D9178CFC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412546;
      *(v22 + 4) = v18;
      *v23 = v18;
      *(v22 + 12) = 2112;
      v24 = v18;
      v25 = [v19 buyParams];
      *(v22 + 14) = v25;
      v23[1] = v25;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Purchase completed with error: %@. buyParams %@", v22, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v23, -1, -1);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    else
    {
      v24 = v20;
      v20 = v18;
    }

    a4 = v36;
    a2 = v37;
  }

  else
  {
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v9, qword_1EDCD0690);
    swift_beginAccess();
    (*(v10 + 16))(v12, v26, v9);
    v27 = a3;
    v20 = sub_1D917741C();
    v28 = sub_1D9178D1C();

    if (os_log_type_enabled(v20, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = 0;
      v31 = v30;
      *v29 = 138412290;
      v32 = [v27 buyParams];
      *(v29 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_1D8CEC000, v20, v28, "Purchase completed successfully %@", v29, 0xCu);
      sub_1D8D08A50(v31, &unk_1ECAB6C70, &unk_1D9188C30);
      v33 = v31;
      a2 = v37;
      MEMORY[0x1DA72CB90](v33, -1, -1);
      MEMORY[0x1DA72CB90](v29, -1, -1);
    }

    v15 = v12;
  }

  (*(v10 + 8))(v15, v9);
  return a4(a2);
}

id StorePurchaseTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StorePurchaseTask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D9076FB4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

uint64_t sub_1D9076FEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  return sub_1D90767F8(v3 + v4, a1);
}

uint64_t sub_1D9077048(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  sub_1D90768C8(a1, v3 + v4);
  return swift_endAccess();
}

void sub_1D9077144(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v48 = a4;
  v47 = a3;
  v7 = sub_1D917744C();
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46[-v12];
  v14 = [objc_opt_self() ams_sharedAccountStore];
  v15 = [v14 ams_activeiTunesAccount];

  [a1 setAccount_];
  v16 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  sub_1D90767F8(v4 + v16, &aBlock);
  if (v52)
  {
    sub_1D8D6BCE0(&aBlock, v55);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = v56;
    v19 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    *(v17 + 16) = (*(v19 + 32))(a1, a2, v18, v19);
    v31 = v7;
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v7, qword_1EDCD0690);
    swift_beginAccess();
    v33 = v49;
    (*(v49 + 16))(v13, v32, v31);
    v34 = a1;
    v35 = sub_1D917741C();
    v36 = sub_1D9178D1C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = [v34 buyParams];
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&dword_1D8CEC000, v35, v36, "Starting purchase with buyParams: %@", v37, 0xCu);
      sub_1D8D08A50(v38, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v38, -1, -1);
      MEMORY[0x1DA72CB90](v37, -1, -1);
    }

    (*(v33 + 8))(v13, v31);
    v40 = *(v17 + 16);
    if (v40)
    {
      v41 = [v40 performPurchase];
      v42 = swift_allocObject();
      v43 = v47;
      v42[2] = v34;
      v42[3] = v43;
      v42[4] = v48;
      v42[5] = v17;
      v53 = sub_1D9077CF4;
      v54 = v42;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v51 = sub_1D8D5960C;
      v52 = &block_descriptor_71;
      v44 = _Block_copy(&aBlock);
      v45 = v34;

      [v41 addFinishBlock_];
      _Block_release(v44);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  else
  {
    sub_1D8D08A50(&aBlock, &qword_1ECAB9A78, &qword_1D91AD680);
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v20 = v7;
    v21 = __swift_project_value_buffer(v7, qword_1EDCD0690);
    swift_beginAccess();
    v22 = v49;
    (*(v49 + 16))(v10, v21, v20);
    v23 = a1;
    v24 = sub_1D917741C();
    v25 = sub_1D9178CFC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = [v23 buyParams];
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_1D8CEC000, v24, v25, "Failed to purchase because there is no UI delegate, buyParams: %@", v26, 0xCu);
      sub_1D8D08A50(v27, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v27, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    (*(v22 + 8))(v10, v20);
    sub_1D9077CA0();
    v29 = swift_allocError();
    *v30 = 0;
    v47();
  }
}