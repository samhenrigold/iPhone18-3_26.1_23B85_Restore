uint64_t sub_1A49E5354(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5241D54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1A49E5A60(&qword_1EB124FA8, MEMORY[0x1E69A1168], MEMORY[0x1E69A1170]), v7 = sub_1A524C4A4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1A49E5A60(&qword_1EB124FA0, MEMORY[0x1E69A1168], MEMORY[0x1E69A1178]);
      v15 = sub_1A524C594();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t PhotosSearchAIStatus.deinit(double a1)
{
  sub_1A49E55EC(v1 + OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability, a1);

  v2 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus___observationRegistrar;
  v3 = sub_1A5241614();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t sub_1A49E55EC(uint64_t a1, double a2)
{
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PhotosSearchAIStatus.__deallocating_deinit(double a1)
{
  sub_1A49E55EC(v1 + OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability, a1);

  v2 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus___observationRegistrar;
  v3 = sub_1A5241614();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

unint64_t sub_1A49E5738()
{
  result = qword_1EB147420;
  if (!qword_1EB147420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147420);
  }

  return result;
}

void sub_1A49E57A4(uint64_t a1, double a2)
{
  sub_1A49E5AA8(319, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_1A5241614();
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1A49E58DC(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49E5970(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1A49E5A04()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A49E4604();
  }

  return result;
}

uint64_t sub_1A49E5A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A49E5AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49E5B0C()
{
  v28 = sub_1A5241D74();
  v0 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5241D84();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v33 = sub_1A5241DC4();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A5241DA4();
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5241DF4();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB173F10 != -1)
  {
    swift_once();
  }

  v15 = sub_1A5246F24();
  __swift_project_value_buffer(v15, qword_1EB173F18);
  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v4;
    v19 = v3;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_1A3C1C000, v16, v17, "Checking Apple Intelligence availability", v18, 2u);
    v21 = v20;
    v3 = v19;
    v4 = v27;
    MEMORY[0x1A590EEC0](v21, -1, -1);
  }

  sub_1A524C674();
  (*(v31 + 104))(v30, *MEMORY[0x1E69A12A0], v33);
  sub_1A5241D94();
  v22 = v34;
  sub_1A5241DD4();
  (*(v29 + 8))(v12, v32);
  sub_1A5241DB4();
  (*(v4 + 16))(v6, v9, v3);
  if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69A0F00])
  {
    (*(v4 + 96))(v6, v3);
    v23 = v28;
    (*(v0 + 32))(v2, v6, v28);
    v24 = sub_1A5241D64();
    (*(v0 + 8))(v2, v23);
    (*(v4 + 8))(v9, v3);
    (*(v35 + 8))(v22, v36);
    return v24;
  }

  else
  {
    v26 = *(v4 + 8);
    v26(v9, v3);
    (*(v35 + 8))(v22, v36);
    v26(v6, v3);
    return MEMORY[0x1E69E7CD0];
  }
}

char *sub_1A49E60B4(void *a1, void *a2, void *a3)
{
  v26[4] = a3;
  sub_1A49E6868(0);
  v26[6] = *(v6 - 8);
  v26[7] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v26[5] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1A524E2B4())
  {
    sub_1A45EBD20(MEMORY[0x1E69E7CC0], v25);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_subscriptions) = v8;
  v9 = (v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryAssetStatusContextObservation);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryStatusContextObservation);
  *v10 = 0;
  v10[1] = 0;
  v11 = [objc_allocWithZone(PXSharedLibraryAssetStatusProvider) initWithAsset_];
  v12 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryAssetStatusProvider;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryAssetStatusProvider) = v11;
  result = [a1 photoLibrary];
  v26[3] = a1;
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];

    *(v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryStatusProvider) = v15;
    v16 = *(v3 + v12);
    v26[1] = [a2 userInterfaceIdiom];
    type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel.ViewContent(0);
    v17 = swift_allocObject();
    v18 = *v17;
    v26[2] = a2;
    v19 = v18;
    v20 = *(MEMORY[0x1E69DDCE0] + 16);
    *(v17 + 16) = *MEMORY[0x1E69DDCE0];
    *(v17 + 32) = v20;
    *(v17 + 56) = xmmword_1A537B4B0;
    *(v17 + 72) = 0;
    *(v17 + 80) = 0;
    *(v17 + 88) = 0;
    sub_1A5241604();
    *(v17 + 48) = v16;
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v16;
    v22[4] = v19;
    v26[12] = 0xD00000000000008FLL;
    v26[13] = 0x80000001A53BFEC0;
    v26[8] = 26;
    v23 = v16;

    v26[0] = v3;
    v24 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v24);

    sub_1A49E916C(0);
    swift_allocObject();
    sub_1A5245834();
  }

  __break(1u);
  return result;
}

void sub_1A49E6868(uint64_t a1)
{
  if (!qword_1EB13B248)
  {
    sub_1A3C52C70(255, &qword_1EB126C78, off_1E77209E0);
    v1 = sub_1A5247A04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B248);
    }
  }
}

uint64_t sub_1A49E68F0@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryAssetStatusProvider) fetchParticipants];
  if (v3)
  {
    v4 = v3;
    v5 = PXSharedLibrarySearchURL(v3);
    sub_1A5240DE4();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1A5240E64();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

double sub_1A49E69E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_viewContent);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 480))(KeyPath);

  return v1[7];
}

void (*sub_1A49E6A60(void *a1))(double *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_viewContent);
  a1[1] = v3;
  KeyPath = swift_getKeyPath();
  (*(*v3 + 480))(KeyPath);

  *a1 = v3[7];
  return sub_1A49E6B0C;
}

void sub_1A49E6B34()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  if (v0[11])
  {

    sub_1A5245814();
  }

  __break(1u);
}

void sub_1A49E6BC4()
{
  swift_getKeyPath();
  (*(*v1 + 480))();

  if (v1[10])
  {

    sub_1A5245814();
  }

  __break(1u);
}

void sub_1A49E6C64(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  (*(*v4 + 480))();

  v9 = v4[2] == a1 && v4[3] == a2;
  if (!v9 || (v4[4] == a3 ? (v10 = v4[5] == a4) : (v10 = 0), !v10))
  {
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 488))(v12);
  }
}

double sub_1A49E6DBC()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return v0[2];
}

__n128 sub_1A49E6E24@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_1A49E6EC8(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4[1], v5), vceqq_f64(v4[2], v6)))))
  {
    v4[1].f64[0] = a1;
    v4[1].f64[1] = a2;
    v4[2].f64[0] = a3;
    v4[2].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*&v4->f64[0] + 488))();
  }
}

void sub_1A49E6FE8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((a2 & 3) != 0)
    {
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x158))();
    }
  }
}

void sub_1A49E707C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((a2 & 2) != 0)
    {
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x158))();
    }
  }
}

void sub_1A49E710C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    sub_1A49E754C([v1 layoutDirection] == 2);

    [v1 displayScale];
    sub_1A49E739C(v4);

    [v1 contentGuideInsets];
    sub_1A49E6C64(v5, v6, v7, v8);
  }
}

void sub_1A49E71EC(double a1)
{
  v2 = *(v1 + 56);
  if (v2 == a1)
  {
    *(v1 + 56) = a1;
    KeyPath = swift_getKeyPath();
    v4 = *(*v1 + 480);
    (v4)(KeyPath);

    if (*(v1 + 56) != v2)
    {
      swift_getKeyPath();
      v4();

      if (*(v1 + 80))
      {

        sub_1A5245804();
      }

      __break(1u);
    }
  }

  else
  {
    v5 = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
    (*(*v1 + 488))(v6);
  }
}

void sub_1A49E739C(double a1)
{
  v2 = *(v1 + 64);
  if (v2 == a1)
  {
    *(v1 + 64) = a1;
    KeyPath = swift_getKeyPath();
    v4 = *(*v1 + 480);
    (v4)(KeyPath);

    if (*(v1 + 64) != v2)
    {
      swift_getKeyPath();
      v4();

      if (*(v1 + 88))
      {

        sub_1A5245804();
      }

      __break(1u);
    }
  }

  else
  {
    v5 = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
    (*(*v1 + 488))(v6);
  }
}

void sub_1A49E754C(char a1)
{
  v2 = *(v1 + 72);
  if (v2 == (a1 & 1))
  {
    *(v1 + 72) = a1 & 1;
    KeyPath = swift_getKeyPath();
    v6 = *(*v1 + 480);
    (v6)(KeyPath);

    if (v2 != *(v1 + 72))
    {
      swift_getKeyPath();
      v6();

      if (*(v1 + 88))
      {

        sub_1A5245804();
      }

      __break(1u);
    }
  }

  else
  {
    v3 = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
    (*(*v1 + 488))(v4);
  }
}

double sub_1A49E7700(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A524BEE4();
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A524BF64();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1E53E0 != -1)
  {
    swift_once();
  }

  v17[1] = qword_1EB1E53E8;
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a1;
  aBlock[4] = sub_1A49E96A0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_88_1;
  v13 = _Block_copy(aBlock);

  v14 = a3;

  sub_1A524BF14();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1A49E9604(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v15 = MEMORY[0x1E69E7F60];
  sub_1A49E9578(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9B078(&qword_1EB12B1B0, &qword_1EB12B1C0, v15);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v10, v7, v13);
  _Block_release(v13);
  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);

  return result;
}

void sub_1A49E7A88(uint64_t a1, void *a2)
{
  sub_1A49E9578(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_getKeyPath();
    (*(*v7 + 480))();

    v8 = [a2 attributedLocalizedContributionStatusForPreferredWidth:v7[7] maximumNumberOfLines:1.0];
    if (v8)
    {
      v9 = v8;
      sub_1A5240834();
      v10 = sub_1A52407E4();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
      sub_1A5245824();
    }
  }

  v11 = sub_1A52407E4();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_1A5245824();
}

double sub_1A49E7C90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1A524BEE4();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524BF64();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1E53E0 != -1)
  {
    swift_once();
  }

  v19[1] = qword_1EB1E53E8;
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a1;
  v14[5] = a4;
  aBlock[4] = sub_1A49E9344;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_321;
  v15 = _Block_copy(aBlock);

  v16 = a3;

  sub_1A524BF14();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A49E9604(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1A49E9578(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9B078(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v12, v9, v15);
  _Block_release(v15);
  (*(v21 + 8))(v9, v7);
  (*(v10 + 8))(v12, v20);

  return result;
}

double sub_1A49E801C()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return v0[7];
}

double sub_1A49E8080@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  result = v3[7];
  *a2 = result;
  return result;
}

double sub_1A49E8120()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return v0[8];
}

double sub_1A49E8184@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  result = v3[8];
  *a2 = result;
  return result;
}

uint64_t sub_1A49E8224()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return v0[72];
}

void sub_1A49E8288(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  *a2 = v3[72];
}

uint64_t sub_1A49E8328()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A49E9604(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A49E9578(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9B078(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1E53E8 = result;
  return result;
}

double sub_1A49E85AC()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return result;
}

double sub_1A49E8620@<D0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  *a2 = v3[10];

  return result;
}

double sub_1A49E86C8()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return result;
}

double sub_1A49E873C@<D0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  *a2 = v3[11];

  return result;
}

double sub_1A49E87E4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  KeyPath = swift_getKeyPath();
  v11[2] = v8;
  v11[3] = v7;
  (*(*v8 + 488))(KeyPath, a6, v11, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t sub_1A49E89C4()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel11ViewContent___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1A49E8A78(void *a1)
{
  result = [a1 firstAsset];
  if (result)
  {
    v2 = result;
    result = [result photoLibrary];
    if (result)
    {
      v3 = result;
      v4 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];

      if ([v4 hasSharedLibraryOrPreview])
      {
        sub_1A3C52C70(0, &qword_1EB1268C8, off_1E771F050);
        v5 = [swift_getObjCClassFromMetadata() sharedInstance];
        v6 = [v5 showSharedLibraryWidget];

        if (v6)
        {
          v7 = [objc_allocWithZone(PXSharedLibraryAssetStatusProvider) initWithAsset_];
          v8 = [v7 status];

          return (v8 == 3);
        }
      }

      else
      {
      }

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

double sub_1A49E8BB8()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

id sub_1A49E8C38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A49E8D9C(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1A49E8E6C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 72);
  *(v2 + 72) = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  v5 = *(*v2 + 480);
  (v5)(KeyPath);

  if (v3 != *(v2 + 72))
  {
    swift_getKeyPath();
    v5();

    if (*(v2 + 88))
    {

      sub_1A5245804();
    }

    __break(1u);
  }
}

void sub_1A49E8F54()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 64);
  *(v2 + 64) = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  v5 = *(*v2 + 480);
  (v5)(KeyPath);

  if (*(v2 + 64) != v3)
  {
    swift_getKeyPath();
    v5();

    if (*(v2 + 88))
    {

      sub_1A5245804();
    }

    __break(1u);
  }
}

void sub_1A49E9074()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 56);
  *(v2 + 56) = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  v5 = *(*v2 + 480);
  (v5)(KeyPath);

  if (*(v2 + 56) != v3)
  {
    swift_getKeyPath();
    v5();

    if (*(v2 + 80))
    {

      sub_1A5245804();
    }

    __break(1u);
  }
}

void sub_1A49E916C(uint64_t a1)
{
  if (!qword_1EB147438)
  {
    sub_1A52407E4();
    sub_1A49E9604(&qword_1EB136580, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
    sub_1A5245844();
  }
}

void sub_1A49E9200()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t objectdestroy_67Tm_0(uint64_t a1)
{

  return swift_deallocObject();
}

void sub_1A49E9294(uint64_t a1)
{
  if (!qword_1EB147440)
  {
    sub_1A3C52C70(255, &qword_1EB126630, 0x1E69DCAB8);
    sub_1A40480E4();
    sub_1A5245844();
  }
}

void sub_1A49E9308()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
}

void sub_1A49E9344()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_9:
    aBlock[0] = 0;
    sub_1A5245824();
  }

  v5 = Strong;
  v6 = [v1 fetchParticipants];
  if (!v6 || (v7 = v6, v8 = [v6 firstObject], v7, !v8))
  {

    goto LABEL_9;
  }

  v9 = [objc_allocWithZone(PXSharedLibraryPhotoKitImageProvider) initWithParticipant_];
  if (v3 == 5)
  {
    v10 = 80.0;
  }

  else
  {
    v10 = 32.0;
  }

  KeyPath = swift_getKeyPath();
  v12 = *(*v5 + 480);
  (v12)(KeyPath);

  v13 = *(v5 + 64);
  swift_getKeyPath();
  v12();

  v14 = *(v5 + 72);
  aBlock[4] = sub_1A49E95DC;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3DEF568;
  aBlock[3] = &block_descriptor_81_2;
  v15 = _Block_copy(aBlock);

  [v9 requestImageWithTargetSize:v14 displayScale:v15 isRTL:v10 completionHandler:{v10, v13}];
  _Block_release(v15);
}

void sub_1A49E9578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49E9604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_77Tm_1(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t GenerativeStoryPendingMemoryHandler.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC12PhotosUICore35GenerativeStoryPendingMemoryHandler_logger;
  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 16))(v2 + v3, v4, v5);
  *(v2 + 112) = a1;
  return v2;
}

uint64_t GenerativeStoryPendingMemoryHandler.init(photoLibrary:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC12PhotosUICore35GenerativeStoryPendingMemoryHandler_logger;
  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 16))(v1 + v3, v4, v5);
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_1A49E9834(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A49E9858, v2, 0);
}

void sub_1A49E9858()
{
  v5 = v0;
  v1 = v0[19];
  v2 = v0[18];
  v3 = [*(v0[20] + 112) librarySpecificFetchOptions];
  v0[21] = v3;
  [v3 setFetchLimit_];
  [v3 setIncludeStoryMemories_];
  [v3 setIncludePendingMemories_];
  sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
  swift_getObjCClassFromMetadata();
  sub_1A3C4D548(0, &qword_1EB12B260, MEMORY[0x1E69E6158]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49E9C58()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_1A49E9EDC;
  }

  else
  {
    v4 = sub_1A49E9D78;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1A49E9D78()
{
  v1 = v0;
  _Block_release(*(v0 + 184));
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49E9EDC(uint64_t a1)
{
  v17 = v1;
  v3 = *(v1 + 184);
  v2 = *(v1 + 192);
  swift_willThrow();
  _Block_release(v3);
  v4 = v2;
  v5 = sub_1A5246F04();
  v6 = sub_1A524D244();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 192);
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315138;
    *(v1 + 80) = v7;
    v9 = v7;
    sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
    v10 = sub_1A524C714();
    sub_1A3C2EF94(v10, v11, &v16);
  }

  v12 = *(v1 + 192);
  v13 = *(v1 + 176);

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_1A49EA0D0()
{
  v1 = *(v0[18] + 112);
  v2 = [v1 librarySpecificFetchOptions];
  v0[19] = v2;
  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  sub_1A3E072BC(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A531D3E0;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1A3D710E8();
  *(v3 + 64) = v5;
  strcpy((v3 + 32), "pendingState");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  v6 = MEMORY[0x1E69E75F8];
  v7 = MEMORY[0x1E69E7660];
  *(v3 + 96) = MEMORY[0x1E69E75F8];
  *(v3 + 104) = v7;
  *(v3 + 72) = 1;
  *(v3 + 136) = v4;
  *(v3 + 144) = v5;
  strcpy((v3 + 112), "creationType");
  *(v3 + 125) = 0;
  *(v3 + 126) = -5120;
  *(v3 + 176) = v6;
  *(v3 + 184) = v7;
  *(v3 + 152) = 1;
  v8 = sub_1A524D134();
  [v2 setInternalPredicate_];

  [v2 setIncludeStoryMemories_];
  [v2 setIncludePendingMemories_];
  sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
  v9 = [swift_getObjCClassFromMetadata() fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v2];
  v0[20] = v9;
  if ([v9 count] < 1)
  {

    v14 = v0[1];

    return v14();
  }

  else
  {
    v0[21] = OBJC_IVAR____TtC12PhotosUICore35GenerativeStoryPendingMemoryHandler_logger;
    v10 = v9;
    v11 = sub_1A5246F04();
    v12 = sub_1A524D264();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = [v10 count];

      _os_log_impl(&dword_1A3C1C000, v11, v12, "Found %ld pending generative memories to delete", v13, 0xCu);
      MEMORY[0x1A590EEC0](v13, -1, -1);
    }

    else
    {

      v11 = v10;
    }

    v16 = swift_allocObject();
    *(v16 + 16) = v10;
    v0[14] = sub_1A49EAAA4;
    v0[15] = v16;
    v17 = MEMORY[0x1E69E9820];
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A3C2E0D0;
    v0[13] = &block_descriptor_9_12;
    v18 = _Block_copy(v0 + 10);
    v0[22] = v18;
    v19 = v10;

    v0[2] = v0;
    v0[3] = sub_1A49EA4F4;
    v20 = swift_continuation_init();
    sub_1A43AC0B0(0);
    v0[17] = v21;
    v0[10] = v17;
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_12_12;
    v0[14] = v20;
    [v1 performChanges:v18 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1A49EA4F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 144);
  if (v2)
  {
    v4 = sub_1A49EA740;
  }

  else
  {
    v4 = sub_1A49EA614;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A49EA614()
{
  v1 = *(v0 + 160);
  _Block_release(*(v0 + 176));
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = [v6 count];

    _os_log_impl(&dword_1A3C1C000, v3, v4, "%ld pending generative memories were deleted", v8, 0xCu);
    MEMORY[0x1A590EEC0](v8, -1, -1);
    v9 = v7;
  }

  else
  {

    v9 = v6;
    v6 = v7;
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A49EA740(uint64_t a1)
{
  v17 = v1;
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  swift_willThrow();
  _Block_release(v3);
  v4 = v2;
  v5 = sub_1A5246F04();
  v6 = sub_1A524D244();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 184);
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315138;
    *(v1 + 80) = v7;
    v9 = v7;
    sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
    v10 = sub_1A524C714();
    sub_1A3C2EF94(v10, v11, &v16);
  }

  v12 = *(v1 + 184);
  v13 = *(v1 + 160);

  v14 = *(v1 + 8);

  return v14();
}

uint64_t GenerativeStoryPendingMemoryHandler.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore35GenerativeStoryPendingMemoryHandler_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t GenerativeStoryPendingMemoryHandler.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore35GenerativeStoryPendingMemoryHandler_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1A49EAA0C()
{
  v1 = [objc_opt_self() changeRequestForMemory_];
  if (v1)
  {
    v2 = v1;
    [v1 setPendingState_];
  }
}

id sub_1A49EAAA4()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 deleteMemories_];
}

uint64_t type metadata accessor for GenerativeStoryPendingMemoryHandler(uint64_t a1)
{
  result = qword_1EB160BE0;
  if (!qword_1EB160BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A49EAB48(uint64_t a1)
{
  result = sub_1A5246F24();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of GenerativeStoryPendingMemoryHandler.markAsNonPending(memoryLocalIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3CA8098;

  return v8(a1, a2);
}

uint64_t dispatch thunk of GenerativeStoryPendingMemoryHandler.deleteAllPendingGenerativeMemories()()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3D60150;

  return v4();
}

void sub_1A49EAE60()
{
  swift_getKeyPath();
  (*(*v0 + 152))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49EAEDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

double sub_1A49EAF7C(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2])
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 160))(v4);

    return result;
  }

  v1[2] = 0;

  return result;
}

uint64_t (*sub_1A49EB0A4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 152))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore20LemonadeToolbarModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49EB49C();
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84(v4);
  return sub_1A49EB1B0;
}

void sub_1A49EB1B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A49EB244()
{
  v1 = (*(*v0 + 120))();
  if (v1)
  {
    if (v1 >> 62)
    {
      v4 = sub_1A524E2B4();

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v2)
      {
        return 1;
      }
    }
  }

  return 2;
}

uint64_t sub_1A49EB3B0()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore20LemonadeToolbarModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A49EB454()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1A5241604();
  return v0;
}

unint64_t sub_1A49EB49C()
{
  result = qword_1EB147450;
  if (!qword_1EB147450)
  {
    type metadata accessor for LemonadeToolbarModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147450);
  }

  return result;
}

uint64_t sub_1A49EB4FC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v108 = a1;
  sub_1A49EEA74(0, &qword_1EB147458, MEMORY[0x1E697F948], a2);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v89 - v5;
  v105 = type metadata accessor for GenerativeStorySuggestionsView(0);
  v93 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v94 = v7;
  v96 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49EC28C(0);
  v95 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v109 = (&v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A49EC264(0);
  v97 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49EC23C(0);
  v13 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v99 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49EC13C(0, v14);
  v107 = v16;
  v101 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1A5242D14();
  v18 = *(v104 - 1);
  MEMORY[0x1EEE9AC00](v104);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A5249234();
  v92 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = **v2;
  v26 = *(v25 + 184);
  v102 = v25 + 184;
  KeyPath = v26;
  v27 = *(v26(v22) + 16);

  if (v27)
  {
    v90 = v13;
    v91 = v6;
    v28 = v3[10];
    if (*(v3 + 96) != 1)
    {
      v89 = v3[11];

      v39 = sub_1A524D254();
      v40 = sub_1A524A014();
      sub_1A5246DF4(v39, &dword_1A3C1C000, v40, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      v41 = sub_1A3F1B4C4(v28, v89, 0);
      (*(v92 + 8))(v24, v21, v41);
    }

    sub_1A4497C3C();
    sub_1A3D61808(v20);
    sub_1A4491F0C(v20);
    v42 = *(v18 + 8);
    v43 = v104;
    v42(v20, v104);
    sub_1A3D61808(v20);
    sub_1A4496374(v20);
    v42(v20, v43);
    v44 = sub_1A5249584();
    v45 = v3[5];
    v46 = v109;
    *v109 = v44;
    v46[1] = v45;
    *(v46 + 16) = 0;
    sub_1A49EE3A4(0);
    v48 = *(v47 + 44);
    v49 = KeyPath();
    v50 = sub_1A49ECB2C(v3[3], v49);
    if ((v53 >> 1) < v52)
    {
      __break(1u);
      v87 = sub_1A524D254();
      v88 = sub_1A524A014();
      sub_1A5246DF4(v87, &dword_1A3C1C000, v88, "Contradictory frame constraints specified.", 42, 2, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v54 = v52;
      v55 = v53;
      v56 = v3;
      *&v121 = v52;
      *(&v121 + 1) = v53 >> 1;
      v92 = v50;
      v57 = v51;
      KeyPath = swift_getKeyPath();
      v104 = type metadata accessor for GenerativeStorySuggestionsView;
      v58 = v3;
      v59 = v96;
      sub_1A49EF26C(v58, v96, type metadata accessor for GenerativeStorySuggestionsView);
      v60 = (*(v93 + 80) + 16) & ~*(v93 + 80);
      v102 = v60 + v94;
      v105 = v56;
      v61 = (v60 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      v94 = v48;
      v63 = v62;
      sub_1A49EF048(v59, v62 + v60, type metadata accessor for GenerativeStorySuggestionsView);
      v64 = (v63 + v61);
      *v64 = v92;
      v64[1] = v57;
      v64[2] = v54;
      v64[3] = v55;
      sub_1A49EECE4(0, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
      sub_1A49EC3D8(0);
      sub_1A3DE77C8();
      sub_1A49EC5D0();
      v48 = v109;
      v65 = v105;
      sub_1A524B9B4();
      sub_1A49EF26C(v65, v59, v104);
      v66 = swift_allocObject();
      sub_1A49EF048(v59, v66 + v60, type metadata accessor for GenerativeStorySuggestionsView);
      v67 = (v48 + *(v95 + 36));
      *v67 = sub_1A49EE4C0;
      v67[1] = v66;
      v67[2] = 0;
      v67[3] = 0;
      sub_1A524BC84();
    }

    sub_1A5248AD4();
    v68 = v98;
    sub_1A49EF048(v48, v98, sub_1A49EC28C);
    v69 = (v68 + *(v97 + 36));
    v70 = v119;
    v69[4] = v118;
    v69[5] = v70;
    v69[6] = v120;
    v71 = v115;
    *v69 = v114;
    v69[1] = v71;
    v72 = v117;
    v69[2] = v116;
    v69[3] = v72;
    sub_1A524BC84();
    sub_1A5248AD4();
    v73 = v99;
    sub_1A49EF048(v68, v99, sub_1A49EC264);
    v74 = v90;
    v75 = (v73 + *(v90 + 36));
    v76 = v126;
    v75[4] = v125;
    v75[5] = v76;
    v75[6] = v127;
    v77 = v122;
    *v75 = v121;
    v75[1] = v77;
    v78 = v124;
    v75[2] = v123;
    v75[3] = v78;
    v79 = sub_1A524BD54();
    MEMORY[0x1EEE9AC00](v79);
    sub_1A49EC808(0, &qword_1EB1474D8, sub_1A49EC86C, MEMORY[0x1E697E5C8]);
    v81 = v80;
    v82 = sub_1A49EC8DC(&qword_1EB1474E8, sub_1A49EC23C, sub_1A49EC8A0);
    v83 = sub_1A49ECA0C();
    v84 = v100;
    sub_1A524B184();

    sub_1A49EF20C(v73, sub_1A49EC23C);
    v85 = v101;
    v86 = v107;
    (*(v101 + 16))(v91, v84, v107);
    swift_storeEnumTagMultiPayload();
    sub_1A49EECE4(0, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v110 = v74;
    v111 = v81;
    v112 = v82;
    v113 = v83;
    swift_getOpaqueTypeConformance2();
    sub_1A3F94CD0();
    sub_1A5249744();
    return (*(v85 + 8))(v84, v86);
  }

  else
  {
    v29 = sub_1A524B414();
    sub_1A4497E70();
    sub_1A524BC74();
    sub_1A52481F4();
    v30 = v121;
    v31 = BYTE8(v121);
    v32 = v122;
    v33 = BYTE8(v122);
    *v6 = v29;
    *(v6 + 1) = v30;
    v6[16] = v31;
    *(v6 + 3) = v32;
    v6[32] = v33;
    *(v6 + 40) = v123;
    swift_storeEnumTagMultiPayload();
    sub_1A49EECE4(0, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A49EC808(255, &qword_1EB1474D8, sub_1A49EC86C, MEMORY[0x1E697E5C8]);
    v35 = v34;
    v36 = sub_1A49EC8DC(&qword_1EB1474E8, sub_1A49EC23C, sub_1A49EC8A0);
    v37 = sub_1A49ECA0C();
    *&v114 = v13;
    *(&v114 + 1) = v35;
    *&v115 = v36;
    *(&v115 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    sub_1A3F94CD0();
    return sub_1A5249744();
  }
}

void sub_1A49EC13C(uint64_t a1, double a2)
{
  if (!qword_1EB147460)
  {
    sub_1A49EC23C(255);
    sub_1A49EC808(255, &qword_1EB1474D8, sub_1A49EC86C, MEMORY[0x1E697E5C8]);
    sub_1A49EC8DC(&qword_1EB1474E8, sub_1A49EC23C, sub_1A49EC8A0);
    sub_1A49ECA0C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147460);
    }
  }
}

void sub_1A49EC2B4(uint64_t a1)
{
  if (!qword_1EB147480)
  {
    sub_1A49EC318(255);
    sub_1A49EC558();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147480);
    }
  }
}

void sub_1A49EC318(uint64_t a1)
{
  if (!qword_1EB147488)
  {
    sub_1A49EECE4(255, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1A49EC3D8(255);
    sub_1A3DE77C8();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147488);
    }
  }
}

void sub_1A49EC3D8(uint64_t a1)
{
  if (!qword_1EB147490)
  {
    sub_1A49EC438(255);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147490);
    }
  }
}

void sub_1A49EC438(uint64_t a1)
{
  if (!qword_1EB147498)
  {
    sub_1A49EC4CC(255);
    sub_1A49EECE4(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147498);
    }
  }
}

void sub_1A49EC4CC(uint64_t a1)
{
  if (!qword_1EB1474A0)
  {
    sub_1A49EECE4(255, &qword_1EB1474A8, &type metadata for SuggestionPromptView, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1474A0);
    }
  }
}

unint64_t sub_1A49EC558()
{
  result = qword_1EB1474B0;
  if (!qword_1EB1474B0)
  {
    sub_1A49EC318(255);
    sub_1A49EC5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1474B0);
  }

  return result;
}

unint64_t sub_1A49EC5D0()
{
  result = qword_1EB1474B8;
  if (!qword_1EB1474B8)
  {
    sub_1A49EC3D8(255);
    sub_1A49EC650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1474B8);
  }

  return result;
}

unint64_t sub_1A49EC650()
{
  result = qword_1EB1474C0;
  if (!qword_1EB1474C0)
  {
    sub_1A49EC438(255);
    sub_1A49EC8DC(&qword_1EB1474C8, sub_1A49EC4CC, sub_1A49EC708);
    sub_1A3E734D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1474C0);
  }

  return result;
}

unint64_t sub_1A49EC708()
{
  result = qword_1EB1474D0;
  if (!qword_1EB1474D0)
  {
    sub_1A49EECE4(255, &qword_1EB1474A8, &type metadata for SuggestionPromptView, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    sub_1A49EC7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1474D0);
  }

  return result;
}

unint64_t sub_1A49EC7B4()
{
  result = qword_1EB1E5670;
  if (!qword_1EB1E5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1E5670);
  }

  return result;
}

void sub_1A49EC808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A49EC8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49EC95C()
{
  result = qword_1EB1474F8;
  if (!qword_1EB1474F8)
  {
    sub_1A49EC28C(255);
    sub_1A49EEE18(&qword_1EB147500, sub_1A49EC2B4, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1474F8);
  }

  return result;
}

unint64_t sub_1A49ECA0C()
{
  result = qword_1EB147508;
  if (!qword_1EB147508)
  {
    sub_1A49EC808(255, &qword_1EB1474D8, sub_1A49EC86C, MEMORY[0x1E697E5C8]);
    sub_1A49EEE18(&qword_1EB147510, sub_1A49EC86C, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147508);
  }

  return result;
}

uint64_t type metadata accessor for GenerativeStorySuggestionsView(uint64_t a1)
{
  result = qword_1EB1E5700;
  if (!qword_1EB1E5700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A49ECB2C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for GenerativeStorySuggestion(0);
    return a2;
  }

  return result;
}

uint64_t sub_1A49ECBC0@<X0>(int64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a3;
  v57 = a5;
  v58 = a6;
  v9 = type metadata accessor for GenerativeStorySuggestionsView(0);
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for GenerativeStorySuggestion(0);
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v47[-v15];
  v17 = *a1;
  v18 = *a2;
  result = (*(**a2 + 416))(v14);
  if ((v20 & 1) == 0 && v17 == result)
  {
    result = sub_1A40B1BE4(a2[32], 1);
    if (result)
    {
      type metadata accessor for GenerativeStorySuggestionViewModel(0);
      result = sub_1A3C5A374();
      if ((result & 1) == 0)
      {
        LOBYTE(v62) = 0;
        HIBYTE(v61) = 0;
        sub_1A49EC438(0);
        sub_1A49EC650();
        result = sub_1A5249744();
LABEL_17:
        v43 = v75;
        v44 = v58;
        *(v58 + 64) = v74;
        *(v44 + 80) = v43;
        *(v44 + 96) = v76;
        v45 = v71;
        *v44 = v70;
        *(v44 + 16) = v45;
        v46 = v73;
        *(v44 + 32) = v72;
        *(v44 + 48) = v46;
        return result;
      }
    }
  }

  if (v17 < a4 || v17 >= (v57 >> 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  result = sub_1A49EF26C(v56 + *(v59 + 72) * v17, v16, type metadata accessor for GenerativeStorySuggestion);
  v21 = *(a2 + 3);
  if (__OFSUB__(v21, v17))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (__OFSUB__(v21 - v17, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = *sub_1A44964AC();
  result = sub_1A4497E70();
  v23 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = __OFSUB__(v23, v17);
  v25 = v23 - v17;
  if (!v24)
  {
    v26 = v22 + *result + (v22 + *result) * v25;
    v27 = 1.0;
    MEMORY[0x1A5907080](0.5, 1.0, 0.0);
    v57 = sub_1A524BCD4();

    v56 = sub_1A417DA38();
    v51 = *&v16[*(v11 + 36)];
    v52 = v28;

    v29 = sub_1A49ED1A0();
    v49 = v30;
    v50 = v29;
    v48 = sub_1A40B1BE4(a2[32], 1);
    v31 = v55;
    sub_1A49EF26C(a2, v55, type metadata accessor for GenerativeStorySuggestionsView);
    v32 = v54;
    sub_1A49EF26C(v16, v54, type metadata accessor for GenerativeStorySuggestion);
    v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v34 = (v10 + *(v59 + 80) + v33) & ~*(v59 + 80);
    v35 = swift_allocObject();
    sub_1A49EF048(v31, v35 + v33, type metadata accessor for GenerativeStorySuggestionsView);
    v36 = sub_1A49EF048(v32, v35 + v34, type metadata accessor for GenerativeStorySuggestion);
    *(v35 + ((v12 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
    v37 = *(*v18 + 512);
    if ((v37)(v36))
    {
      v38 = 0.0;
    }

    else
    {
      v38 = v26;
    }

    v39 = v48;
    if ((v37() & 1) == 0)
    {
      v27 = 0.0;
    }

    v40 = v57;

    v42 = (v37)(v41);
    *&v62 = v56;
    *(&v62 + 1) = v52;
    *&v63 = v51;
    *(&v63 + 1) = v50;
    *&v64 = v49;
    BYTE8(v64) = v39;
    *&v65 = sub_1A49EF0B0;
    *(&v65 + 1) = v35;
    *&v66 = 0;
    *(&v66 + 1) = v38;
    *&v67 = v27;
    *(&v67 + 1) = v40;
    v68 = v42 & 1;
    v74 = v66;
    v75 = v67;
    LOBYTE(v76) = v42 & 1;
    v70 = v62;
    v71 = v63;
    v72 = v64;
    v73 = v65;
    v69 = 1;
    HIBYTE(v76) = 1;
    sub_1A49EF26C(&v62, v60, sub_1A49EC438);
    sub_1A49EC438(0);
    sub_1A49EC650();
    sub_1A5249744();

    sub_1A49EF20C(&v62, sub_1A49EC438);
    result = sub_1A49EF20C(v16, type metadata accessor for GenerativeStorySuggestion);
    v74 = v60[4];
    v75 = v60[5];
    v76 = v61;
    v70 = v60[0];
    v71 = v60[1];
    v72 = v60[2];
    v73 = v60[3];
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A49ED1A0()
{
  v1 = sub_1A5244A24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = [v5 shouldShowSuggestionSourceBadge];

  if (!v6)
  {
    return 0;
  }

  sub_1A3C52C70(0, &qword_1EB126BB0, off_1E771F528);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 canShowInternalUI];

  if (!v8)
  {
    return 0;
  }

  v9 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(v2 + 16))(v4, v0 + *(v9 + 24), v1);
  v10 = (*(v2 + 88))(v4, v1);
  if (v10 == *MEMORY[0x1E69C1098])
  {
    return 0xBC859FF020;
  }

  if (v10 == *MEMORY[0x1E69C10A0])
  {
    return 0x82869FF020;
  }

  if (v10 == *MEMORY[0x1E69C10A8])
  {
    return 0x86869FF020;
  }

  if (v10 == *MEMORY[0x1E69C1088])
  {
    return 0xB2859FF020;
  }

  (*(v2 + 8))(v4, v1);
  return 1564433184;
}

uint64_t sub_1A49ED3FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1A4499C00(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  sub_1A49EF26C(a2, v8, type metadata accessor for GenerativeStorySuggestion);
  v10 = type metadata accessor for GenerativeStorySuggestion(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  (*(*v9 + 280))(v8);
  v14[15] = *(a1 + 32);
  v14[14] = 1;
  sub_1A42C7F04();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    result = (*(*v9 + 424))(a3, 0);
  }

  v13 = a1[1];
  if (v13)
  {
    sub_1A49EF26C(a2, v8, type metadata accessor for GenerativeStorySuggestion);
    v11(v8, 0, 1, v10);
    v13(v8);
    return sub_1A49EF20C(v8, sub_1A4499C00);
  }

  return result;
}

double sub_1A49ED614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = a7;
  *(a6 + 48) = swift_getKeyPath();
  *(a6 + 56) = 0;
  *(a6 + 64) = swift_getKeyPath();
  *(a6 + 72) = 0;
  *(a6 + 80) = swift_getKeyPath();
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  v8 = type metadata accessor for GenerativeStorySuggestionsView(0);
  v9 = v8[12];
  *(a6 + v9) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v10 = (a6 + v8[13]);
  sub_1A524B694();
  *v10 = v13;
  *(v10 + 1) = v14;
  v11 = (a6 + v8[14]);
  sub_1A4491F00();
  sub_1A524B694();
  result = v13;
  *v11 = v13;
  *(v11 + 1) = v14;
  return result;
}

void sub_1A49ED734(uint64_t a1@<X8>)
{
  v29 = a1;
  sub_1A49EF1A8(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = type metadata accessor for GenerativeStoryCommonButtonStyle(0);
  v3 = MEMORY[0x1EEE9AC00](v27);
  sub_1A49EEB3C(0, v3);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1A49EEE60(0, &qword_1EB147548, sub_1A49EEEE4, sub_1A49EEB3C, MEMORY[0x1E697F948]);
  v23[5] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26 = v23 - v6;
  v24 = type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle(0);
  MEMORY[0x1EEE9AC00](v24);
  v23[1] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49EEC58(0);
  v9 = *(v8 - 8);
  v23[2] = v8;
  v23[3] = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  sub_1A49EEC10(0, v10);
  v23[6] = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v23[4] = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49EEEE4(0, v12);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  if (*(v1 + 40))
  {
    sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
    v15 = [swift_getObjCClassFromMetadata() sharedInstance];
    v16 = [v15 showIntelligenceLightingInSuggestions];

    if (v16)
    {
      v17 = swift_allocObject();
      v18 = *(v1 + 16);
      v17[1] = *v1;
      v17[2] = v18;
      v19 = *(v1 + 48);
      v17[3] = *(v1 + 32);
      v17[4] = v19;
      MEMORY[0x1EEE9AC00](v17);
      v23[-2] = v1;
      sub_1A49EEFC0(v1, &v30);
      sub_1A49EECE4(0, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
      sub_1A424D1BC();
      sub_1A524B704();
      sub_1A440612C();
      sub_1A49EEE18(&qword_1EB121AC8, sub_1A49EEC58, MEMORY[0x1E697D680]);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v20 = swift_allocObject();
  v21 = *(v1 + 16);
  v20[1] = *v1;
  v20[2] = v21;
  v22 = *(v1 + 48);
  v20[3] = *(v1 + 32);
  v20[4] = v22;
  MEMORY[0x1EEE9AC00](v20);
  v23[-2] = v1;
  sub_1A49EEFC0(v1, &v30);
  sub_1A49EECE4(0, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  sub_1A424D1BC();
  sub_1A524B704();
  sub_1A440612C();
  sub_1A49EEE18(&qword_1EB121AC8, sub_1A49EEC58, MEMORY[0x1E697D680]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49EE130(uint64_t *a1)
{
  v3 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (a1[2])
  {

    sub_1A5249414();
    sub_1A5249404();
    sub_1A52493E4();
    sub_1A5249404();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49EE3A4(uint64_t a1)
{
  if (!qword_1EB147518)
  {
    sub_1A49EC318(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147518);
    }
  }
}

uint64_t sub_1A49EE40C@<X0>(int64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GenerativeStorySuggestionsView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = v7[1];
  v9 = v7[2];
  v10 = v7[3];

  return sub_1A49ECBC0(a1, (v2 + v6), v8, v9, v10, a2);
}

uint64_t sub_1A49EE4C0()
{
  v1 = *(type metadata accessor for GenerativeStorySuggestionsView(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  result = (*(*v2 + 512))();
  if ((result & 1) == 0)
  {
    return (*(*v2 + 520))(1);
  }

  return result;
}

void sub_1A49EE584(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  if (((*(**v5 + 368))() & 1) == 0 || (v6 = 0.0, !sub_1A40B1BE4(v5[32], 1)))
  {
    v6 = 1.0;
  }

  sub_1A49EC86C(0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  sub_1A49EC808(0, &qword_1EB1474D8, sub_1A49EC86C, MEMORY[0x1E697E5C8]);
  *(a2 + *(v8 + 36)) = v6;
}

void sub_1A49EE6BC(uint64_t a1)
{
  type metadata accessor for GenerativeStorySuggestionViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A49EF1A8(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A49EF1A8(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A49EE8DC(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A49EF1A8(319, &qword_1EB124690, type metadata accessor for CGSize, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A49EF1A8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A49EE8DC(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
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

void sub_1A49EE8DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A49EE92C(double a1)
{
  result = qword_1EB147520;
  if (!qword_1EB147520)
  {
    sub_1A49EEA74(255, &qword_1EB147528, MEMORY[0x1E697F960], a1);
    sub_1A49EC23C(255);
    sub_1A49EC808(255, &qword_1EB1474D8, sub_1A49EC86C, MEMORY[0x1E697E5C8]);
    sub_1A49EC8DC(&qword_1EB1474E8, sub_1A49EC23C, sub_1A49EC8A0);
    sub_1A49ECA0C();
    swift_getOpaqueTypeConformance2();
    sub_1A3F94CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147520);
  }

  return result;
}

void sub_1A49EEA74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A49EC13C(255, a4);
    v8 = v7;
    sub_1A49EECE4(255, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A49EEB3C(uint64_t a1, double a2)
{
  if (!qword_1EB147530)
  {
    sub_1A49EEC10(255, a2);
    type metadata accessor for GenerativeStoryCommonButtonStyle(255);
    sub_1A49EED38(v2);
    sub_1A49EEE18(&qword_1EB1253B0, type metadata accessor for GenerativeStoryCommonButtonStyle, &unk_1A53753A8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147530);
    }
  }
}

void sub_1A49EEC58(uint64_t a1)
{
  if (!qword_1EB121AC0)
  {
    sub_1A49EECE4(255, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    sub_1A424D1BC();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121AC0);
    }
  }
}

void sub_1A49EECE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A49EED38(double a1)
{
  result = qword_1EB147540;
  if (!qword_1EB147540)
  {
    sub_1A49EEC10(255, a1);
    sub_1A49EEE18(&qword_1EB121AC8, sub_1A49EEC58, MEMORY[0x1E697D680]);
    sub_1A49EEE18(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147540);
  }

  return result;
}

uint64_t sub_1A49EEE18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A49EEE60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A49EEEE4(uint64_t a1, double a2)
{
  if (!qword_1EB147550)
  {
    sub_1A49EEC10(255, a2);
    type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle(255);
    sub_1A49EED38(v2);
    sub_1A49EEE18(&qword_1EB125028, type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle, &unk_1A53753E0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147550);
    }
  }
}

uint64_t objectdestroy_26Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A49EF048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49EF0B0()
{
  v1 = *(type metadata accessor for GenerativeStorySuggestionsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A49ED3FC((v0 + v2), v0 + v5, v6);
}

void sub_1A49EF1A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49EF20C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49EF26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A49EF2D4()
{
  result = qword_1EB147558;
  if (!qword_1EB147558)
  {
    sub_1A49EEE60(255, &qword_1EB147560, sub_1A49EEEE4, sub_1A49EEB3C, MEMORY[0x1E697F960]);
    sub_1A49EEC10(255, v1);
    type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle(255);
    sub_1A49EED38(v2);
    sub_1A49EEE18(&qword_1EB125028, type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle, &unk_1A53753E0);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for GenerativeStoryCommonButtonStyle(255);
    sub_1A49EEE18(&qword_1EB1253B0, type metadata accessor for GenerativeStoryCommonButtonStyle, &unk_1A53753A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147558);
  }

  return result;
}

void *PhotosFeedbackActionPerformer.feedbackController.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
  v2 = v1;
  return v1;
}

uint64_t sub_1A49EF4B8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EC178);
  __swift_project_value_buffer(v0, qword_1EB1EC178);
  return sub_1A5246F14();
}

uint64_t sub_1A49EF53C()
{
  if (qword_1EB1E5790 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB1EC178);
}

id PhotosFeedbackActionPerformer.init(parentViewController:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_previousMemoryUUID];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_previousAssetUUID];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = sub_1A5241744();
  *(&v30 + 1) = v6;
  v31 = sub_1A49EF998();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E699C188], v6);
  LOBYTE(v6) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  if ((v6 & 1) == 0)
  {
    if (qword_1EB1E5790 != -1)
    {
      swift_once();
    }

    v8 = sub_1A5246F24();
    __swift_project_value_buffer(v8, qword_1EB1EC178);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D234();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_20;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "FeedbackFrameworks/CentralizedFeedback feature flag disabled. Skipping Centralized Feedback";
    goto LABEL_19;
  }

  if ([objc_opt_self() makeFeedbackController])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
    sub_1A3C35B00(&v29);
    goto LABEL_15;
  }

  sub_1A3C652C8(0, &qword_1EB125678, &protocol descriptor for PXPhotosFeedbackController, 0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_1EB1E5790 != -1)
    {
      swift_once();
    }

    v23 = sub_1A5246F24();
    __swift_project_value_buffer(v23, qword_1EB1EC178);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_20;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Failed to initialize an instance conforming to PXPhotosFeedbackController";
LABEL_19:
    _os_log_impl(&dword_1A3C1C000, v9, v10, v12, v11, 2u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
LABEL_20:

    type metadata accessor for PhotosFeedbackActionPerformer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v13 = v25;
  v14 = v26;
  v15 = &v2[OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController];
  *v15 = v25;
  *(v15 + 1) = v14;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for PhotosFeedbackActionPerformer();
  v16 = v13;
  v17 = objc_msgSendSuper2(&v24, sel_init);
  ObjectType = swift_getObjectType();
  v19 = *(v14 + 16);
  v20 = v17;
  v19(v17, &protocol witness table for PhotosFeedbackActionPerformer, ObjectType, v14);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    [a1 addChildViewController_];
  }

  else
  {
  }

  return v17;
}

unint64_t sub_1A49EF998()
{
  result = qword_1EB124FD0;
  if (!qword_1EB124FD0)
  {
    sub_1A5241744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124FD0);
  }

  return result;
}

id sub_1A49EFA14(uint64_t a1, char a2)
{
  v5 = sub_1A5241784();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController + 8);
  if ((a1 - 1) > 2)
  {
    v14 = MEMORY[0x1E699C1D8];
  }

  else
  {
    v14 = qword_1E772C3A0[a1 - 1];
  }

  (*(v6 + 104))(v8, *v14, v5, v10);
  ObjectType = swift_getObjectType();
  (*(v6 + 32))(v12, v8, v5);
  (*(v13 + 64))(v12, a2 & 1, ObjectType, v13);
  (*(v6 + 8))(v12, v5);
  v16 = sub_1A524C634();

  v17 = [objc_opt_self() systemImageNamed_];

  return v17;
}

uint64_t sub_1A49EFC04(uint64_t a1, char a2)
{
  v5 = sub_1A5241784();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController + 8);
  if ((a1 - 1) > 2)
  {
    v14 = MEMORY[0x1E699C1D8];
  }

  else
  {
    v14 = qword_1E772C3A0[a1 - 1];
  }

  (*(v6 + 104))(v8, *v14, v5, v10);
  ObjectType = swift_getObjectType();
  (*(v6 + 32))(v12, v8, v5);
  v16 = (*(v13 + 64))(v12, a2 & 1, ObjectType, v13);
  (*(v6 + 8))(v12, v5);
  return v16;
}

uint64_t sub_1A49EFEA4(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_1A49F1130(0);
  v2[16] = swift_task_alloc();
  v3 = sub_1A52411C4();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A49EFF90, 0, 0);
}

uint64_t sub_1A49EFF90()
{
  v1 = [*(v0 + 120) photosGraphProperties];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  v3 = sub_1A524C3E4();

  v4 = sub_1A524C674();
  if (!*(v3 + 16))
  {
LABEL_10:

    goto LABEL_11;
  }

  v6 = sub_1A3C5DCA4(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_1A3C2F0BC(*(v3 + 56) + 32 * v6, v0 + 16);

  sub_1A49F1188();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    (*(*(v0 + 144) + 56))(*(v0 + 112), 1, 1, *(v0 + 136));

    v18 = *(v0 + 8);

    return v18();
  }

  v9 = *(v0 + 96);
  v10 = sub_1A524C674();
  if (!*(v9 + 16))
  {
    goto LABEL_10;
  }

  v12 = sub_1A3C5DCA4(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1A3C2F0BC(*(v9 + 56) + 32 * v12, v0 + 48);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 144);
  v17 = *(v0 + 128);
  sub_1A5241154();

  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    sub_1A49F11EC(*(v0 + 128));
    goto LABEL_12;
  }

  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 136);
  v24 = *(v21 + 32);
  *(v0 + 160) = v24;
  *(v0 + 168) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v24(v20, v22, v23);
  sub_1A5241774();
  v25 = swift_task_alloc();
  *(v0 + 176) = v25;
  *v25 = v0;
  v25[1] = sub_1A49F0254;
  v26 = *(v0 + 152);

  return MEMORY[0x1EEE03E90](v26);
}

uint64_t sub_1A49F0254(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_1A49F0478;
  }

  else
  {
    v4 = sub_1A49F0368;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A49F0368()
{
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[20];
    v4 = v0[18];
    v3 = v0[19];
    v5 = v0[17];
    v6 = v0[14];

    v2(v6, v3, v5);
    (*(v4 + 56))(v6, 0, 1, v5);
  }

  else
  {
    v7 = v0[18];
    v8 = v0[17];
    v9 = v0[14];
    (*(v7 + 8))(v0[19], v8);
    (*(v7 + 56))(v9, 1, 1, v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A49F0478()
{
  v18 = v0;
  if (qword_1EB1E5790 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB1EC178);
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  v8 = v0[18];
  v9 = v0[19];
  v10 = v0[17];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v11 = 136315138;
    v0[13] = v7;
    v12 = v7;
    sub_1A3C652C8(0, &qword_1EB126160, MEMORY[0x1E69E7280], 1);
    v13 = sub_1A524C714();
    sub_1A3C2EF94(v13, v14, &v17);
  }

  (*(v8 + 8))(v9, v10);
  (*(v0[18] + 56))(v0[14], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A49F06B8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A49F1130(0);
  v2[5] = swift_task_alloc();
  v3 = sub_1A52411C4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A49F07A4, 0, 0);
}

uint64_t sub_1A49F07A4()
{
  v1 = [*(v0 + 32) uuid];
  if (!v1)
  {
LABEL_4:
    (*(*(v0 + 56) + 56))(*(v0 + 24), 1, 1, *(v0 + 48));

    v6 = *(v0 + 8);

    return v6();
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = v1;
  sub_1A524C674();

  sub_1A5241154();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1A49F11EC(*(v0 + 40));
    goto LABEL_4;
  }

  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v9 + 32);
  *(v0 + 72) = v12;
  *(v0 + 80) = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v8, v10, v11);
  sub_1A5241774();
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_1A49F0964;
  v14 = *(v0 + 64);

  return MEMORY[0x1EEE03E90](v14);
}

uint64_t sub_1A49F0964(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1A49F0B88;
  }

  else
  {
    v4 = sub_1A49F0A78;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A49F0A78()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[9];
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    v6 = v0[3];

    v2(v6, v3, v5);
    (*(v4 + 56))(v6, 0, 1, v5);
  }

  else
  {
    v7 = v0[7];
    v8 = v0[6];
    v9 = v0[3];
    (*(v7 + 8))(v0[8], v8);
    (*(v7 + 56))(v9, 1, 1, v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A49F0B88()
{
  v18 = v0;
  if (qword_1EB1E5790 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB1EC178);
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v11 = 136315138;
    v0[2] = v7;
    v12 = v7;
    sub_1A3C652C8(0, &qword_1EB126160, MEMORY[0x1E69E7280], 1);
    v13 = sub_1A524C714();
    sub_1A3C2EF94(v13, v14, &v17);
  }

  (*(v8 + 8))(v9, v10);
  (*(v0[7] + 56))(v0[3], 1, 1, v0[6]);

  v15 = v0[1];

  return v15();
}

void sub_1A49F0DE8(void *a1, uint64_t a2, void *a3)
{
  if (qword_1EB1E5790 != -1)
  {
    swift_once();
  }

  v6 = sub_1A5246F24();
  __swift_project_value_buffer(v6, qword_1EB1EC178);
  v7 = a3;
  v8 = sub_1A5246F04();
  v9 = sub_1A524D244();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v10 = 136315138;
    v11 = a3;
    sub_1A3C652C8(0, &qword_1EB126160, MEMORY[0x1E69E7280], 1);
    v12 = sub_1A524C714();
    sub_1A3C2EF94(v12, v13, &v14);
  }

  sub_1A49F12F0(0, a1, a2);
}

id PhotosFeedbackActionPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosFeedbackActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosFeedbackActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A49F1118@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

void sub_1A49F1130(uint64_t a1)
{
  if (!qword_1EB12AFA0)
  {
    sub_1A52411C4();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12AFA0);
    }
  }
}

void sub_1A49F1188()
{
  if (!qword_1EB12D8D8)
  {
    v0 = sub_1A524C454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D8D8);
    }
  }
}

uint64_t sub_1A49F11EC(uint64_t a1)
{
  sub_1A49F1130(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A49F1248(id result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = result;
    v5 = a3;

    return v6;
  }

  return result;
}

void sub_1A49F129C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }
}

void sub_1A49F12F0(char a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = qword_1EB1EC1A0;
  v7 = xmmword_1EB1EC1B0;
  if (xmmword_1EB1EC1B0)
  {
    v8 = qword_1EB1EC1A0 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (qword_1EB1E5790 != -1)
    {
      swift_once();
    }

    v9 = sub_1A5246F24();
    __swift_project_value_buffer(v9, qword_1EB1EC178);
    v10 = sub_1A5246F04();
    v11 = sub_1A524D244();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A3C1C000, v10, v11, "Unexpected report completion with missing feedback report request", v12, 2u);
      MEMORY[0x1A590EEC0](v12, -1, -1);
    }
  }

  else
  {
    v57 = a1;
    v13 = xmmword_1EB1EC190;
    v14 = qword_1EB1EC1A8;
    ObjectType = swift_getObjectType();
    v56 = v7;
    sub_1A49F1248(v13, *(&v13 + 1), v6, v14, v7);
    v16 = v6;
    v17 = sub_1A49FC098(a2, a3, ObjectType);
    if (v17)
    {
      v18 = qword_1EB1E5790;
      v19 = v13;
      if (BYTE8(v13))
      {
        v20 = v57;
        if (v18 != -1)
        {
          swift_once();
        }

        v21 = sub_1A5246F24();
        __swift_project_value_buffer(v21, qword_1EB1EC178);
        v22 = v19;
        v23 = sub_1A5246F04();
        v24 = sub_1A524D224();

        if (os_log_type_enabled(v23, v24))
        {
          LODWORD(v55) = v24;
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v59 = v26;
          *v25 = 136315394;
          v27 = [v22 uuid];
          if (v27)
          {
            v28 = v27;
            v29 = sub_1A524C674();
            v31 = v30;
          }

          else
          {
            v29 = 0;
            v31 = 0;
          }

          v58[0] = v29;
          v58[1] = v31;
          sub_1A3C371A0(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          v49 = sub_1A524C714();
          sub_1A3C2EF94(v49, v50, &v59);
        }
      }

      else
      {
        v20 = v57;
        if (v18 != -1)
        {
          swift_once();
        }

        v42 = sub_1A5246F24();
        __swift_project_value_buffer(v42, qword_1EB1EC178);
        v22 = v19;
        v23 = sub_1A5246F04();
        v43 = sub_1A524D224();

        if (os_log_type_enabled(v23, v43))
        {
          v44 = swift_slowAlloc();
          v58[0] = swift_slowAlloc();
          *v44 = 136315394;
          v45 = [v22 uuid];
          v46 = sub_1A524C674();
          v48 = v47;

          sub_1A3C2EF94(v46, v48, v58);
        }
      }

      v56(v20 & 1);
    }

    else
    {
      if (qword_1EB1E5790 != -1)
      {
        swift_once();
      }

      v32 = sub_1A5246F24();
      __swift_project_value_buffer(v32, qword_1EB1EC178);
      v33 = v16;
      v34 = a2;
      v35 = sub_1A5246F04();
      v36 = sub_1A524D244();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v58[0] = swift_slowAlloc();
        *v37 = 136315394;
        v38 = [v33 description];
        v39 = sub_1A524C674();
        v41 = v40;

        sub_1A3C2EF94(v39, v41, v58);
      }
    }
  }

  v51 = xmmword_1EB1EC190;
  v52 = qword_1EB1EC1A0;
  v53 = qword_1EB1EC1A8;
  v54 = xmmword_1EB1EC1B0;
  xmmword_1EB1EC190 = 0u;
  *&qword_1EB1EC1A0 = 0u;
  xmmword_1EB1EC1B0 = 0u;
  sub_1A49F129C(v51, *(&v51 + 1), v52, v53, v54);
}

uint64_t PhotosFeedbackActionPerformer.reportCleanupFeedback(type:asset:originalImageData:renderedImageData:summaryString:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[29] = v16;
  v9[30] = v8;
  v9[27] = a8;
  v9[28] = v15;
  v9[25] = a6;
  v9[26] = a7;
  v9[23] = a4;
  v9[24] = a5;
  v9[21] = a2;
  v9[22] = a3;
  v9[20] = a1;
  v9[31] = swift_getObjectType();
  sub_1A3C56BCC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v9[32] = swift_task_alloc();
  v10 = sub_1A52417A4();
  v9[33] = v10;
  v11 = *(v10 - 8);
  v9[34] = v11;
  v9[35] = *(v11 + 64);
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();
  v12 = sub_1A5246F24();
  v9[38] = v12;
  v9[39] = *(v12 - 8);
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();
  v9[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A49F1CDC, 0, 0);
}

uint64_t sub_1A49F1CDC()
{
  v58 = v0;
  v1 = sub_1A49F0DC8();
  v0[43] = v1;
  swift_beginAccess();
  v2 = *(v1 + 2);
  v3 = *(v1 + 4);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *v1;
    v55 = *(v1 + 1);
    v6 = *(v1 + 3);
    v7 = v0[39];
    v8 = v0[30];
    ObjectType = swift_getObjectType();
    v10 = *(v8 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
    v9 = *(v8 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController + 8);
    sub_1A49F1248(v5, v55, v2, v6, v3);
    v11 = v2;
    v12 = sub_1A49FC098(v10, v9, ObjectType);
    v13 = sub_1A49EF53C();
    v14 = *(v7 + 16);
    v15 = v0[38];
    if (v12)
    {
      v14(v0[42], v13, v15);
      v16 = sub_1A5246F04();
      v17 = sub_1A524D264();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1A3C1C000, v16, v17, "Skipping reporting feedback because previous request was not completed", v18, 2u);
        MEMORY[0x1A590EEC0](v18, -1, -1);
      }

      else
      {
      }

      (*(v0[39] + 8))(v0[42], v0[38]);

      v54 = v0[1];

      return v54();
    }

    v14(v0[41], v13, v15);
    v19 = sub_1A5246F04();
    v20 = sub_1A524D264();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v19, v20, "Ignoring previous request because feedback controller does not match", v21, 2u);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }

    v22 = v0[41];
    v24 = v0[38];
    v23 = v0[39];

    (*(v23 + 8))(v22, v24);
    swift_beginAccess();
    v25 = *v1;
    v26 = *(v1 + 1);
    v27 = *(v1 + 2);
    v28 = *(v1 + 3);
    v29 = *(v1 + 4);
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    sub_1A49F129C(v25, v26, v27, v28, v29);
  }

  v31 = v0[39];
  v30 = v0[40];
  v32 = v0[38];
  v33 = v0[21];
  v34 = sub_1A49EF53C();
  (*(v31 + 16))(v30, v34, v32);
  v35 = v33;
  v36 = sub_1A5246F04();
  LOBYTE(v31) = sub_1A524D264();

  if (os_log_type_enabled(v36, v31))
  {
    v37 = v0[20];
    v38 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v38 = 136315394;
    v0[19] = v37;
    type metadata accessor for PXPhotosFeedbackType();
    v39 = sub_1A524C714();
    sub_1A3C2EF94(v39, v40, &v57);
  }

  v42 = v0[39];
  v41 = v0[40];
  v43 = v0[38];

  (*(v42 + 8))(v41, v43);
  v44 = swift_task_alloc();
  v0[44] = v44;
  *v44 = v0;
  v44[1] = sub_1A49F229C;
  v45 = v0[37];
  v46 = v0[26];
  v47 = v0[27];
  v48 = v0[24];
  v49 = v0[25];
  v50 = v0[22];
  v51 = v0[23];
  v52 = v0[21];

  return sub_1A49F2960(v45, v52, v50, v51, v48, v49, v46, v47);
}

uint64_t sub_1A49F229C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A49F2398, 0, 0);
}

uint64_t sub_1A49F2398(uint64_t a1)
{
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v1 + 240)) + 0x98))(a1);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v2;
  v5 = v3;
  v6 = [*(v1 + 168) uuid];
  if (!v6)
  {

    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_1A524C674();
  v10 = v9;

  if (v4 == v8 && v5 == v10)
  {

    goto LABEL_12;
  }

  v12 = sub_1A524EAB4();

  if ((v12 & 1) == 0)
  {
LABEL_10:
    v13 = *(*(v1 + 240) + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(ObjectType, v13);
  }

LABEL_12:
  v16 = *(v1 + 288);
  v15 = *(v1 + 296);
  v17 = *(v1 + 272);
  v18 = *(v1 + 280);
  v19 = *(v1 + 256);
  v20 = *(v1 + 264);
  v21 = *(v1 + 248);
  v22 = *(v1 + 168);
  v23 = sub_1A524CCB4();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  (*(v17 + 16))(v16, v15, v20);
  v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v17 + 32))(v25 + v24, v16, v20);
  *(v25 + ((v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  sub_1A3D4D930(0, 0, v19, &unk_1A537BBB8, v25);

  v26 = [v22 uuid];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1A524C674();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = *(v1 + 344);
  v33 = *(v1 + 232);
  v32 = *(v1 + 240);
  v34 = *(v1 + 224);
  v35 = *(v1 + 168);
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0xA0))(v28, v30);
  v36 = (v32 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
  v37 = *(v32 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
  *(v1 + 360) = *v36;
  v38 = v36[1];
  *(v1 + 368) = v38;
  v39 = v35;
  v40 = v37;

  sub_1A49F1118(v35, 1, v37, v38, v34, v33, v1 + 16);
  v41 = *(v1 + 16);
  v42 = *(v1 + 24);
  v43 = *(v1 + 32);
  v53 = *(v1 + 40);
  v44 = *(v1 + 56);
  swift_beginAccess();
  v45 = *v31;
  v46 = *(v31 + 8);
  v47 = *(v31 + 16);
  v48 = *(v31 + 24);
  v49 = *(v31 + 32);
  *v31 = v41;
  *(v31 + 8) = v42;
  *(v31 + 16) = v43;
  *(v31 + 24) = v53;
  *(v31 + 40) = v44;
  sub_1A49F129C(v45, v46, v47, v48, v49);
  sub_1A524CC54();
  *(v1 + 376) = sub_1A524CC44();
  v51 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A49F2778, v51, v50);
}

uint64_t sub_1A49F2778()
{
  v1 = v0[20];

  switch(v1)
  {
    case 3:
      v8 = v0[46];
      v9 = v0[37];
      ObjectType = swift_getObjectType();
      (*(v8 + 56))(v9, ObjectType, v8);
      break;
    case 2:
      v5 = v0[46];
      v6 = v0[37];
      v7 = swift_getObjectType();
      (*(v5 + 48))(v6, v7, v5);
      break;
    case 1:
      v2 = v0[46];
      v3 = v0[37];
      v4 = swift_getObjectType();
      (*(v2 + 40))(v3, 1, v4, v2);
      break;
  }

  return MEMORY[0x1EEE6DFA0](sub_1A49F28A0, 0, 0);
}

uint64_t sub_1A49F28A0()
{
  (*(v0[34] + 8))(v0[37], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A49F2960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[7] = a7;
  v9[8] = a8;
  v9[5] = a5;
  v9[6] = a6;
  v9[3] = a3;
  v9[4] = a4;
  v9[2] = a1;
  v11 = sub_1A5241804();
  v9[9] = v11;
  v9[10] = *(v11 - 8);
  v9[11] = swift_task_alloc();
  v12 = sub_1A52417C4();
  v9[12] = v12;
  v9[13] = *(v12 - 8);
  v9[14] = swift_task_alloc();
  v13 = MEMORY[0x1E69E6720];
  sub_1A3C56BCC(0, &qword_1EB124FC8, MEMORY[0x1E699C538], MEMORY[0x1E69E6720]);
  v9[15] = swift_task_alloc();
  v14 = sub_1A5241844();
  v9[16] = v14;
  v9[17] = *(v14 - 8);
  v9[18] = swift_task_alloc();
  sub_1A3C56BCC(0, &qword_1EB124FC0, MEMORY[0x1E699C540], v13);
  v9[19] = swift_task_alloc();
  v9[20] = swift_task_alloc();
  v9[21] = swift_task_alloc();
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v9[24] = swift_task_alloc();
  sub_1A3C56BCC(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8], v13);
  v15 = swift_task_alloc();
  v9[25] = v15;
  v16 = sub_1A52411C4();
  v9[26] = v16;
  v9[27] = *(v16 - 8);
  v9[28] = swift_task_alloc();
  v17 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xB8);
  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v9[29] = v18;
  *v18 = v9;
  v18[1] = sub_1A49F2D58;

  return v20(v15, a2);
}

uint64_t sub_1A49F2D58()
{

  return MEMORY[0x1EEE6DFA0](sub_1A49F2E54, 0, 0);
}

uint64_t sub_1A49F2E54()
{
  v1 = v0;
  v2 = v0[27];
  v4 = v1[25];
  v3 = v1[26];
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = v1[4];
    sub_1A49F3C9C(v4, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    v6 = MEMORY[0x1E699C5F0];
    if (v5 >> 60 == 15)
    {
      v7 = 1;
    }

    else
    {
      v12 = v1[17];
      v13 = v1[18];
      v15 = v1[15];
      v14 = v1[16];
      v16 = v1[3];
      v17 = v1[4];
      *v13 = v16;
      v13[1] = v17;
      (*(v12 + 104))(v13, *v6, v14);
      sub_1A3DB506C(v16, v17);
      sub_1A3D602A8(v16, v17);
      v18 = sub_1A524C634();
      v19 = PXLocalizedString(v18);

      sub_1A524C674();
      v20 = sub_1A524C634();
      v21 = PXLocalizedString(v20);

      sub_1A524C674();
      v22 = sub_1A52417F4();
      (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
      sub_1A52417E4();
      sub_1A3DB556C(v16, v17);
      v7 = 0;
    }

    v23 = v1[6];
    v24 = 1;
    v70 = *(v1[10] + 56);
    v70(v1[24], v7, 1, v1[9]);
    if (v23 >> 60 != 15)
    {
      v25 = v1[17];
      v26 = v1[18];
      v28 = v1[15];
      v27 = v1[16];
      v29 = v1[5];
      v30 = v1[6];
      *v26 = v29;
      v26[1] = v30;
      (*(v25 + 104))(v26, *MEMORY[0x1E699C5F0], v27);
      sub_1A3DB506C(v29, v30);
      sub_1A3D602A8(v29, v30);
      v31 = sub_1A524C634();
      v32 = PXLocalizedString(v31);

      sub_1A524C674();
      v33 = sub_1A524C634();
      v34 = PXLocalizedString(v33);

      sub_1A524C674();
      v35 = sub_1A52417F4();
      (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
      sub_1A52417E4();
      sub_1A3DB556C(v29, v30);
      v24 = 0;
    }

    v36 = v1[8];
    v70(v1[23], v24, 1, v1[9]);
    if (v36)
    {
      v37 = v1[17];
      v38 = v1[18];
      v39 = v1[16];
      v40 = v1[8];
      *v38 = v1[7];
      v38[1] = v40;
      (*(v37 + 104))(v38, *MEMORY[0x1E699C5D0], v39);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v41 = v1 + 22;
    v42 = v1[24];
    v66 = v1[23];
    v67 = v1[22];
    v44 = v1[20];
    v43 = v1[21];
    v45 = v1[13];
    v46 = v1[14];
    v47 = v1[12];
    v48 = v1[10];
    v68 = v1[9];
    v69 = v1[19];
    (v70)(v67, 1, 1);
    (*(v45 + 104))(v46, *MEMORY[0x1E699C2A8], v47);
    v49 = MEMORY[0x1E699C540];
    sub_1A49F3D0C(v42, v43, &qword_1EB124FC0, MEMORY[0x1E699C540]);
    sub_1A49F3D0C(v66, v44, &qword_1EB124FC0, v49);
    v50 = objc_allocWithZone(sub_1A5241854());
    v51 = sub_1A52417D4();
    sub_1A49F3D0C(v67, v69, &qword_1EB124FC0, v49);
    if ((*(v48 + 48))(v69, 1, v68) == 1)
    {
      sub_1A49F3C9C(*v41, &qword_1EB124FC0, MEMORY[0x1E699C540]);
      v41 = v1 + 23;
      v52 = v1 + 24;
      v53 = v1 + 19;
    }

    else
    {
      v55 = v1[10];
      v54 = v1[11];
      v56 = v1[9];
      (*(v55 + 32))(v54, v1[19], v56);
      sub_1A3C56BCC(0, &qword_1EB147580, MEMORY[0x1E699C540], MEMORY[0x1E69E6F90]);
      v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1A52F8E10;
      (*(v55 + 16))(v58 + v57, v54, v56);
      sub_1A52417B4();
      (*(v55 + 8))(v54, v56);
      v52 = v1 + 23;
      v53 = v1 + 24;
    }

    v59 = *v53;
    v60 = *v52;
    v9 = v1[2];
    v61 = MEMORY[0x1E699C540];
    sub_1A49F3C9C(*v41, &qword_1EB124FC0, MEMORY[0x1E699C540]);
    sub_1A49F3C9C(v60, &qword_1EB124FC0, v61);
    sub_1A49F3C9C(v59, &qword_1EB124FC0, v61);
    *v9 = v51;
    v11 = MEMORY[0x1E699C218];
  }

  else
  {
    v8 = v1[28];
    v9 = v1[2];
    v10 = *(v2 + 32);
    v10(v8, v4, v3);
    v10(v9, v8, v3);
    v11 = MEMORY[0x1E699C230];
  }

  v62 = *v11;
  v63 = sub_1A52417A4();
  (*(*(v63 - 8) + 104))(v9, v62, v63);

  v64 = v1[1];

  return v64();
}

uint64_t sub_1A49F37AC()
{
  v1 = sub_1A5246F24();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1A49F389C;

  return MEMORY[0x1EEE03F20]();
}

uint64_t sub_1A49F389C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A49F39D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A49F39D8()
{
  v20 = v0;
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = sub_1A49EF53C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D244();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136315138;
    *(v0 + 16) = v9;
    v11 = v9;
    sub_1A3DBD9A0();
    v12 = sub_1A524C714();
    sub_1A3C2EF94(v12, v13, &v19);
  }

  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v16 = *(v0 + 24);

  (*(v15 + 8))(v14, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A49F3BD4()
{
  sub_1A52417A4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A49F37AC();
}

uint64_t sub_1A49F3C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56BCC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A49F3D0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56BCC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A49F3D8C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EC1C0);
  __swift_project_value_buffer(v0, qword_1EB1EC1C0);
  return sub_1A5246F14();
}

uint64_t static PhotosFeedbackGenerativeStoryFactory.createDonation(memory:prompt:statistics:generationTime:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 120) = a6;
  *(v8 + 128) = a8;
  *(v8 + 328) = a7;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 80) = a1;
  v9 = sub_1A52411C4();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  v10 = MEMORY[0x1E69E6720];
  sub_1A49F507C(0, &qword_1EB124FC8, MEMORY[0x1E699C538], MEMORY[0x1E69E6720]);
  *(v8 + 160) = swift_task_alloc();
  v11 = sub_1A5241844();
  *(v8 + 168) = v11;
  *(v8 + 176) = *(v11 - 8);
  *(v8 + 184) = swift_task_alloc();
  sub_1A49F507C(0, &qword_1EB124FC0, MEMORY[0x1E699C540], v10);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v12 = sub_1A52417C4();
  *(v8 + 208) = v12;
  *(v8 + 216) = *(v12 - 8);
  *(v8 + 224) = swift_task_alloc();
  v13 = sub_1A5244A24();
  *(v8 + 232) = v13;
  *(v8 + 240) = *(v13 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A49F40C0, 0, 0);
}

uint64_t sub_1A49F40C0()
{
  v1 = sub_1A5241744();
  v0[5] = v1;
  v0[6] = sub_1A49F6914(&qword_1EB124FD0, MEMORY[0x1E699C198], MEMORY[0x1E699C190]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E699C188], v1);
  LOBYTE(v1) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1)
  {
    v3 = v0[16];
    v4 = v0[11];
    v5 = [v4 localIdentifier];
    v6 = sub_1A524C674();
    v8 = v7;

    v0[34] = v6;
    v0[35] = v8;
    v9 = sub_1A49F5DE4(v4, v3);
    v0[36] = v9;
    v0[37] = v10;
    if (v10 >> 60 != 15)
    {
      v56 = v10;
      v52 = v9;
      v22 = v0[14];
      if (v22)
      {
        sub_1A52447D4();
        v23 = sub_1A5244874();
      }

      else
      {
        v23 = 0;
      }

      v57 = v6;
      MEMORY[0x1A5907B60](v0[12], v0[13]);
      MEMORY[0x1A5907B60](10, 0xE100000000000000);
      v0[7] = 0x203A74706D6F7250;
      v0[8] = 0xE800000000000000;
      if (v22 && (v23 & 1) != 0)
      {
        v25 = v0[32];
        v24 = v0[33];
        v27 = v0[30];
        v26 = v0[31];
        v28 = v0[29];
        sub_1A52447D4();
        sub_1A5244894();

        (*(v27 + 32))(v24, v25, v28);
        (*(v27 + 104))(v26, *MEMORY[0x1E69C1090], v28);
        sub_1A49F6914(&qword_1EB147588, MEMORY[0x1E69C10B0], MEMORY[0x1E69C10C0]);
        v29 = sub_1A524C594();
        v30 = *(v27 + 8);
        v30(v26, v28);
        if ((v29 & 1) == 0)
        {
          sub_1A524E404();

          v31 = sub_1A5244A04();
          MEMORY[0x1A5907B60](v31);

          MEMORY[0x1A5907B60](10, 0xE100000000000000);
          MEMORY[0x1A5907B60](0xD000000000000018, 0x80000001A53F7180);
        }

        v30(v0[33], v0[29]);
      }

      v32 = v0[25];
      v55 = v0[24];
      v33 = v0[22];
      v34 = v0[23];
      v36 = v0[20];
      v35 = v0[21];
      v54 = v35;
      (*(v0[27] + 104))();
      v37 = v0[8];
      *v34 = v0[7];
      v34[1] = v37;
      v53 = *(v33 + 104);
      v53(v34, *MEMORY[0x1E699C5D0], v35);
      v38 = *MEMORY[0x1E699C518];
      v39 = sub_1A52417F4();
      v40 = *(v39 - 8);
      (*(v40 + 104))(v36, v38, v39);
      v41 = *(v40 + 56);
      v41(v36, 0, 1, v39);
      sub_1A52417E4();
      v42 = sub_1A5241804();
      v51 = *(*(v42 - 8) + 56);
      v51(v32, 0, 1, v42);
      *v34 = v52;
      v34[1] = v56;
      v53(v34, *MEMORY[0x1E699C5F0], v54);
      v41(v36, 1, 1, v39);
      sub_1A3D602A8(v52, v56);
      sub_1A52417E4();
      v51(v55, 0, 1, v42);
      v43 = objc_allocWithZone(sub_1A5241774());
      v0[38] = sub_1A5241754();
      sub_1A49F507C(0, &qword_1EB120328, sub_1A49F6200, MEMORY[0x1E69E6F90]);
      sub_1A49F6200(0);
      v45 = v44;
      v46 = (*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1A52FC9F0;
      v48 = v47 + v46;
      v49 = *(v45 + 48);
      sub_1A524C674();
      sub_1A5241864();
      sub_1A3C2DFA8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1A52F8E10;
      *(v50 + 32) = v57;
      *(v50 + 40) = v8;
      *(v48 + v49) = v50;
      sub_1A524C674();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (qword_1EB1E57A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1A5246F24();
    __swift_project_value_buffer(v11, qword_1EB1EC1C0);
    v12 = sub_1A5246F04();
    v13 = sub_1A524D244();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Skipping feedback donation, couldn't generate image for feedback.";
LABEL_11:
      _os_log_impl(&dword_1A3C1C000, v12, v13, v15, v14, 2u);
      MEMORY[0x1A590EEC0](v14, -1, -1);
    }
  }

  else
  {
    if (qword_1EB1E57A0 != -1)
    {
      swift_once();
    }

    v16 = sub_1A5246F24();
    __swift_project_value_buffer(v16, qword_1EB1EC1C0);
    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Skipping feedback donation, feature flag disabled.";
      goto LABEL_11;
    }
  }

  v17 = v0[17];
  v18 = v0[18];
  v19 = v0[10];

  (*(v18 + 56))(v19, 1, 1, v17);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1A49F4B68()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1A49F4DAC;
  }

  else
  {

    v2 = sub_1A49F4C84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A49F4C84()
{
  v1 = v0[38];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[10];
  sub_1A3DB556C(v0[36], v0[37]);

  (*(v3 + 32))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);

  v6 = v0[1];

  return v6();
}

void sub_1A49F4DAC()
{
  v2 = v0;
  if (qword_1EB1E57A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246F24();
  __swift_project_value_buffer(v1, qword_1EB1EC1C0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49F507C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A49F50E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1A3C5DCA4(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A49F5C88();
        v12 = v16;
      }

      sub_1A3D74B38(v8, v12, v13);
      *v5 = v12;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1A49F5B24(a1, a3, a4, v15);

    *v4 = v17;
  }
}

void sub_1A49F51D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3C8BDD0(0);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id PhotosFeedbackGenerativeStoryFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosFeedbackGenerativeStoryFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosFeedbackGenerativeStoryFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PhotosFeedbackGenerativeStoryFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosFeedbackGenerativeStoryFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A49F554C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1A3D60150;

  return static PhotosFeedbackGenerativeStoryFactory.createDonation(memory:prompt:statistics:generationTime:photoLibrary:)(a1, a2, a3, a4, a5, a6, a7 & 1, a8);
}

unint64_t sub_1A49F5638(uint64_t a1)
{
  sub_1A5241874();
  sub_1A49F6914(&qword_1EB124FB8, MEMORY[0x1E699C658], MEMORY[0x1E699C660]);
  v2 = sub_1A524C4A4();

  return sub_1A49F56D0(a1, v2);
}

unint64_t sub_1A49F56D0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A5241874();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1A49F6914(&qword_1EB147590, MEMORY[0x1E699C658], MEMORY[0x1E699C668]);
      v16 = sub_1A524C594();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1A49F5890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A49F6980();
  v35 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v25 = sub_1A524ECE4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A49F5B24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * v11) = a1;
      return;
    }

    v21[(v11 >> 6) + 8] |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = v11;
    sub_1A49F5C88();
    v11 = v19;
    goto LABEL_8;
  }

  sub_1A49F5890(v16, a4 & 1);
  v11 = sub_1A3C5DCA4(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1A524EB84();
  __break(1u);
}

void sub_1A49F5C88()
{
  v1 = v0;
  sub_1A49F6980();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v2 + 56) + 8 * v16);
        v21 = (*(v4 + 48) + 16 * v16);
        *v21 = v19;
        v21[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

uint64_t sub_1A49F5DE4(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [a2 librarySpecificFetchOptions];
  v6 = [v4 fetchKeyCuratedAssetInAssetCollection:a1 referenceAsset:0 options:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 firstObject];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = PHCollection.title.getter();
  if (!v10)
  {
LABEL_9:

LABEL_10:
    return 0;
  }

  v11 = v10;
  v33 = v9;
  v12 = dispatch_semaphore_create(0);
  v34 = [objc_opt_self() defaultManager];
  v13 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v13 setSynchronous_];
  [v13 setResizeMode_];
  [v13 setDeliveryMode_];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;
  *&aBlock.tx = sub_1A49F6B14;
  *&aBlock.ty = v15;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1A3DD5B38;
  *&aBlock.d = &block_descriptor_323;
  v16 = _Block_copy(&aBlock);

  v17 = v12;
  v18 = v34;

  [v34 requestNewCGImageForAsset:v8 targetSize:1 contentMode:v13 options:v16 resultHandler:{400.0, 500.0}];
  _Block_release(v16);
  sub_1A524D704();
  swift_beginAccess();
  v19 = *(v14 + 16);
  if (v19)
  {
    v32 = v17;
    CGAffineTransformMakeScale(&v35, 1.0, -1.0);
    CGAffineTransformTranslate(&aBlock, &v35, 0.0, -500.0);
    type metadata accessor for PXGraphicsImageRenderer();
    v20 = v19;
    v21 = sub_1A4A048F0(400.0, 500.0);
    MEMORY[0x1EEE9AC00](v21);
    v27[2] = &aBlock;
    v27[3] = v20;
    v28 = xmmword_1A537BBC0;
    v29 = v33;
    v30 = v11;
    v31 = a1;
    sub_1A4A04928(sub_1A49F6B70, v27);
    v23 = v22;

    v24 = UIImageJPEGRepresentation(v23, 0.5);
    if (v24)
    {
      v25 = v24;
      v33 = sub_1A5240EA4();

      return v33;
    }

    goto LABEL_9;
  }

  return 0;
}

void sub_1A49F6200(uint64_t a1)
{
  if (!qword_1EB124FB0)
  {
    sub_1A5241874();
    sub_1A3C2DFA8(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124FB0);
    }
  }
}

unint64_t sub_1A49F6294(uint64_t a1)
{
  sub_1A49F6200(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A49F69E0(0);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A49F6AB0(v10, v6);
      result = sub_1A49F5638(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A5241874();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A49F6454(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = sub_1A5244A74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5244854();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  result = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  if (a1)
  {
    v29 = v9;
    v30 = v7;
    v31 = v3;
    v32 = a2;

    sub_1A52447C4();
    v18 = sub_1A52451A4();

    sub_1A49F50E4(v18 & 1, 0, 0x4D79726575517369, 0xEF6465696669646FLL);
    sub_1A52447D4();
    v19 = sub_1A5244874();

    sub_1A49F50E4(v19 & 1, 0, 0xD000000000000017, 0x80000001A53F71D0);
    sub_1A52447C4();
    v20 = sub_1A5245194();

    sub_1A49F50E4(v20 & 1, 0, 0x4173497972657571, 0xEF73756F6769626DLL);
    sub_1A52447C4();
    v21 = sub_1A5245194();

    sub_1A49F50E4(v21 & 1, 0, 0xD000000000000010, 0x80000001A53F71F0);
    sub_1A52447D4();
    sub_1A5244884();

    (*(v11 + 104))(v13, *MEMORY[0x1E69C0FE8], v10);
    sub_1A49F6914(&qword_1EB124C90, MEMORY[0x1E69C1030], MEMORY[0x1E69C1040]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v35 == v33 && v36 == v34)
    {
      v22 = v6;
      v23 = 1;
    }

    else
    {
      v22 = v6;
      v23 = sub_1A524EAB4() & 1;
    }

    v24 = *(v11 + 8);
    v24(v13, v10);
    v24(v16, v10);

    sub_1A49F50E4(v23, 0, 0x78696D65527369, 0xE700000000000000);
    sub_1A52447D4();
    v25 = v29;
    sub_1A52448A4();

    v26 = sub_1A5244A64();
    (*(v30 + 8))(v25, v22);
    v3 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v3;
    sub_1A49F5B24(v26, 0x745379726F6D656DLL, 0xEF6570795479726FLL, isUniquelyReferenced_nonNull_native);

    result = v35;
    v37 = v35;
    a2 = v32;
    LOBYTE(v3) = v31;
  }

  if ((v3 & 1) == 0)
  {
    sub_1A49F50E4(a2, 0, 0x69746172656E6567, 0xEE00656D69546E6FLL);
    return v37;
  }

  return result;
}

uint64_t sub_1A49F6914(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A49F6980()
{
  if (!qword_1EB120420[0])
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, qword_1EB120420);
    }
  }
}

void sub_1A49F69E0(uint64_t a1)
{
  if (!qword_1EB120478)
  {
    sub_1A5241874();
    sub_1A3C2DFA8(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A49F6914(&qword_1EB124FB8, MEMORY[0x1E699C658], MEMORY[0x1E699C660]);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120478);
    }
  }
}

uint64_t sub_1A49F6AB0(uint64_t a1, uint64_t a2)
{
  sub_1A49F6200(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49F6B14(void *a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
  v5 = a1;

  return sub_1A524D714();
}

void sub_1A49F6B70(CGContext *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 64);
  v5 = v3[1];
  v6 = v3[2];
  *&transform.a = *v3;
  *&transform.c = v5;
  *&transform.tx = v6;
  CGContextConcatCTM(a1, &transform);
  sub_1A524D154();
  v7 = v3[1];
  v8 = v3[2];
  *&transform.a = *v3;
  *&transform.c = v7;
  *&transform.tx = v8;
  CGContextConcatCTM(a1, &transform);
  v9 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v9 setAlignment_];
  sub_1A49F507C(0, &qword_1EB120270, sub_1A47A72A0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemFontOfSize_];
  v15 = *MEMORY[0x1E69DB688];
  v16 = MEMORY[0x1E69DB650];
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  v17 = *v16;
  *(inited + 56) = v9;
  *(inited + 64) = v17;
  v18 = objc_opt_self();
  v19 = v15;
  v20 = v9;
  v21 = v17;
  *(inited + 72) = [v18 whiteColor];
  sub_1A47A8FDC(inited);
  swift_setDeallocating();
  sub_1A47A72A0(0);
  swift_arrayDestroy();
  v22 = [v4 subtitle];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1A524C674();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  MEMORY[0x1A5907B60](v24, v26);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t PhotosFeedbackActionPerformer.reportMemoryFeedback(type:memory:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v5[24] = swift_getObjectType();
  sub_1A3C56C30(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5[25] = swift_task_alloc();
  v6 = sub_1A52417A4();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v5[28] = *(v7 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v8 = sub_1A5246F24();
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A49F70C4, 0, 0);
}

uint64_t sub_1A49F70C4()
{
  v62 = v0;
  v1 = sub_1A49F0DC8();
  v0[36] = v1;
  swift_beginAccess();
  v2 = *(v1 + 2);
  v3 = *(v1 + 4);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *v1;
    v59 = *(v1 + 1);
    v6 = *(v1 + 3);
    v7 = v0[32];
    v8 = v0[23];
    ObjectType = swift_getObjectType();
    v10 = *(v8 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
    v9 = *(v8 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController + 8);
    sub_1A49F1248(v5, v59, v2, v6, v3);
    v11 = v2;
    v12 = sub_1A49FC098(v10, v9, ObjectType);
    v13 = sub_1A49EF53C();
    v14 = *(v7 + 16);
    v15 = v0[31];
    if (v12)
    {
      v16 = v0[20];
      v14(v0[35], v13, v15);
      v17 = v16;
      v18 = sub_1A5246F04();
      v19 = sub_1A524D264();

      v20 = os_log_type_enabled(v18, v19);
      v21 = v0[35];
      v22 = v0[31];
      v23 = v0[32];
      if (v20)
      {
        v24 = v0[19];
        v25 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v25 = 136315394;
        v0[18] = v24;
        type metadata accessor for PXPhotosFeedbackType();
        v26 = sub_1A524C714();
        sub_1A3C2EF94(v26, v27, &v61);
      }

      (*(v23 + 8))(v21, v22);

      v58 = v0[1];

      return v58();
    }

    v14(v0[34], v13, v15);
    v28 = sub_1A5246F04();
    v29 = sub_1A524D264();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1A3C1C000, v28, v29, "Ignoring previous request because feedback controller does not match", v30, 2u);
      MEMORY[0x1A590EEC0](v30, -1, -1);
    }

    v31 = v0[34];
    v33 = v0[31];
    v32 = v0[32];

    (*(v32 + 8))(v31, v33);
    swift_beginAccess();
    v34 = *v1;
    v35 = *(v1 + 1);
    v36 = *(v1 + 2);
    v37 = *(v1 + 3);
    v38 = *(v1 + 4);
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    sub_1A49F129C(v34, v35, v36, v37, v38);
  }

  v40 = v0[32];
  v39 = v0[33];
  v41 = v0[31];
  v42 = v0[20];
  v43 = sub_1A49EF53C();
  (*(v40 + 16))(v39, v43, v41);
  v44 = v42;
  v45 = sub_1A5246F04();
  LOBYTE(v42) = sub_1A524D264();

  v46 = os_log_type_enabled(v45, v42);
  v47 = v0[32];
  v48 = v0[33];
  v49 = v0[31];
  if (v46)
  {
    v50 = v0[19];
    v51 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v51 = 136315394;
    v0[17] = v50;
    type metadata accessor for PXPhotosFeedbackType();
    v52 = sub_1A524C714();
    sub_1A3C2EF94(v52, v53, &v61);
  }

  (*(v47 + 8))(v48, v49);
  v54 = swift_task_alloc();
  v0[37] = v54;
  *v54 = v0;
  v54[1] = sub_1A49F7718;
  v55 = v0[30];
  v56 = v0[20];

  return sub_1A49F7DC8(v55, v56);
}

uint64_t sub_1A49F7718()
{

  return MEMORY[0x1EEE6DFA0](sub_1A49F7814, 0, 0);
}

uint64_t sub_1A49F7814()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 184)) + 0x80))();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [*(v0 + 160) uuid];
    v6 = sub_1A524C674();
    v8 = v7;

    if (v3 == v6 && v4 == v8)
    {
    }

    else
    {
      v10 = sub_1A524EAB4();

      if ((v10 & 1) == 0)
      {
        v11 = *(*(v0 + 184) + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController + 8);
        ObjectType = swift_getObjectType();
        (*(v11 + 32))(ObjectType, v11);
      }
    }
  }

  v13 = *(v0 + 288);
  v14 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 184);
  v47 = *(v0 + 176);
  v48 = *(v0 + 168);
  v45 = *(v0 + 192);
  v46 = *(v0 + 160);
  v21 = sub_1A524CCB4();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  (*(v17 + 16))(v14, v15, v18);
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v17 + 32))(v23 + v22, v14, v18);
  *(v23 + ((v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
  sub_1A3D4D930(0, 0, v19, &unk_1A537BC68, v23);

  v24 = [v46 uuid];
  v25 = sub_1A524C674();
  v27 = v26;

  (*((*MEMORY[0x1E69E7D40] & *v20) + 0x88))(v25, v27);
  v28 = v20 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController;
  v29 = *(v20 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
  *(v0 + 304) = v29;
  v30 = *(v28 + 1);
  *(v0 + 312) = v30;
  v31 = v46;
  v32 = v29;

  sub_1A49F1118(v46, 0, v29, v30, v48, v47, v0 + 16);
  v33 = *(v0 + 16);
  v34 = *(v0 + 24);
  v35 = *(v0 + 32);
  v49 = *(v0 + 40);
  v36 = *(v0 + 56);
  swift_beginAccess();
  v37 = *v13;
  v38 = *(v13 + 8);
  v39 = *(v13 + 16);
  v40 = *(v13 + 24);
  v41 = *(v13 + 32);
  *v13 = v33;
  *(v13 + 8) = v34;
  *(v13 + 16) = v35;
  *(v13 + 24) = v49;
  *(v13 + 40) = v36;
  sub_1A49F129C(v37, v38, v39, v40, v41);
  sub_1A524CC54();
  *(v0 + 320) = sub_1A524CC44();
  v43 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A49F7BE4, v43, v42);
}

uint64_t sub_1A49F7BE4()
{
  v1 = v0[19];

  switch(v1)
  {
    case 3:
      v8 = v0[39];
      v9 = v0[30];
      ObjectType = swift_getObjectType();
      (*(v8 + 56))(v9, ObjectType, v8);
      break;
    case 2:
      v5 = v0[39];
      v6 = v0[30];
      v7 = swift_getObjectType();
      (*(v5 + 48))(v6, v7, v5);
      break;
    case 1:
      v2 = v0[39];
      v3 = v0[30];
      v4 = swift_getObjectType();
      (*(v2 + 40))(v3, 1, v4, v2);
      break;
  }

  return MEMORY[0x1EEE6DFA0](sub_1A49F7D0C, 0, 0);
}

uint64_t sub_1A49F7D0C()
{
  (*(v0[27] + 8))(v0[30], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A49F7DC8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v5 = sub_1A5241804();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  v6 = sub_1A52417C4();
  v3[7] = v6;
  v3[8] = *(v6 - 8);
  v3[9] = swift_task_alloc();
  v7 = MEMORY[0x1E69E6720];
  sub_1A3C56C30(0, &qword_1EB124FC8, MEMORY[0x1E699C538], MEMORY[0x1E69E6720]);
  v3[10] = swift_task_alloc();
  v8 = sub_1A5241844();
  v3[11] = v8;
  v3[12] = *(v8 - 8);
  v3[13] = swift_task_alloc();
  sub_1A3C56C30(0, &qword_1EB124FC0, MEMORY[0x1E699C540], v7);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_1A3C56C30(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8], v7);
  v9 = swift_task_alloc();
  v3[18] = v9;
  v10 = sub_1A52411C4();
  v3[19] = v10;
  v3[20] = *(v10 - 8);
  v3[21] = swift_task_alloc();
  v11 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0);
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  v3[22] = v12;
  *v12 = v3;
  v12[1] = sub_1A49F819C;

  return v14(v9, a2);
}

uint64_t sub_1A49F819C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A49F8298, 0, 0);
}

id sub_1A49F8298()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[3];
    sub_1A49F8B84(v3, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    sub_1A3C56C30(0, &qword_1EB120328, sub_1A49F6200, MEMORY[0x1E69E6F90]);
    sub_1A49F6200(0);
    v6 = v5 - 8;
    v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    v9 = v8 + v7;
    v10 = *(v6 + 56);
    sub_1A524C674();
    sub_1A5241864();
    sub_1A49F8BF4(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    v12 = [v4 localIdentifier];
    v13 = sub_1A524C674();
    v15 = v14;

    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    *(v9 + v10) = v11;
    sub_1A49F6294(v8);
    swift_setDeallocating();
    sub_1A49F8C44(v9);
    swift_deallocClassInstance();
    v16 = sub_1A52453B4();
    v18 = v17;
    result = [v4 photoLibrary];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v67 = v18;
    v68 = v16;
    v21 = v0[3];
    type metadata accessor for PhotosFeedbackGenerativeStoryFactory();
    v22 = sub_1A49F50E0(v21, v20);
    v24 = v23;

    if (v24 >> 60 == 15)
    {
      v25 = 1;
    }

    else
    {
      v31 = v0[12];
      v32 = v0[13];
      v34 = v0[10];
      v33 = v0[11];
      *v32 = v22;
      v32[1] = v24;
      (*(v31 + 104))(v32, *MEMORY[0x1E699C5F0], v33);
      v35 = *MEMORY[0x1E699C518];
      v36 = sub_1A52417F4();
      v37 = *(v36 - 8);
      (*(v37 + 104))(v34, v35, v36);
      (*(v37 + 56))(v34, 0, 1, v36);
      sub_1A52417E4();
      v25 = 0;
    }

    v39 = v0 + 17;
    v38 = v0[17];
    v62 = v0[16];
    v63 = v0[15];
    v64 = v38;
    v66 = v0[14];
    v60 = v0 + 14;
    v41 = v0[12];
    v40 = v0[13];
    v69 = v0;
    v42 = v0[10];
    v43 = v0[11];
    v44 = v0[8];
    v45 = v0[9];
    v46 = v0[7];
    v65 = v0[5];
    v61 = v0[4];
    v47 = *(v65 + 56);
    v47(v38, v25, 1);
    (*(v44 + 104))(v45, *MEMORY[0x1E699C2B8], v46);
    *v40 = v68;
    v40[1] = v67;
    (*(v41 + 104))(v40, *MEMORY[0x1E699C5D0], v43);
    v48 = v47;
    v49 = sub_1A52417F4();
    (*(*(v49 - 8) + 56))(v42, 1, 1, v49);
    sub_1A52417E4();
    (v47)(v62, 0, 1, v61);
    (v47)(v63, 1, 1, v61);
    v50 = objc_allocWithZone(sub_1A5241854());
    v51 = sub_1A52417D4();
    sub_1A49F8CA0(v64, v66, &qword_1EB124FC0, MEMORY[0x1E699C540]);
    if ((*(v65 + 48))(v66, 1, v61) == 1)
    {
      sub_1A49F8B84(*v39, &qword_1EB124FC0, MEMORY[0x1E699C540]);
      v39 = v60;
      v0 = v69;
    }

    else
    {
      v0 = v69;
      v52 = v69[16];
      v54 = v69[5];
      v53 = v69[6];
      v55 = v69[4];
      (*(v54 + 32))(v53, v69[14], v55);
      (*(v54 + 16))(v52, v53, v55);
      (v48)(v52, 0, 1, v55);
      sub_1A5241834();
      (*(v54 + 8))(v53, v55);
    }

    v56 = v0[2];
    sub_1A49F8B84(*v39, &qword_1EB124FC0, MEMORY[0x1E699C540]);
    *v56 = v51;
    v57 = *MEMORY[0x1E699C218];
    v58 = sub_1A52417A4();
    (*(*(v58 - 8) + 104))(v56, v57, v58);
  }

  else
  {
    v26 = v0[21];
    v27 = v0[2];
    v28 = *(v2 + 32);
    v28(v26, v3, v1);
    v28(v27, v26, v1);
    v29 = *MEMORY[0x1E699C230];
    v30 = sub_1A52417A4();
    (*(*(v30 - 8) + 104))(v27, v29, v30);
  }

  v59 = v0[1];

  return v59();
}

uint64_t sub_1A49F8ABC()
{
  sub_1A52417A4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A49F37AC();
}

uint64_t sub_1A49F8B84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56C30(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A49F8BF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A49F8C44(uint64_t a1)
{
  sub_1A49F6200(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A49F8CA0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56C30(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A49F8D20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49F8D84@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v3 = type metadata accessor for LemonadePeopleHomeGroupSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A49F921C(0, v6);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49F9B04(0, &qword_1EB147658, sub_1A49F921C);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v27 - v11;
  sub_1A49F9B60(0);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2;
  sub_1A49FB9B4(v2, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeGroupSection);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1A49FBFD0(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LemonadePeopleHomeGroupSection);
  sub_1A49FB9B4(v2, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeGroupSection);
  v17 = swift_allocObject();
  sub_1A49FBFD0(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for LemonadePeopleHomeGroupSection);
  sub_1A5249584();
  sub_1A49F92F4(0, v18);
  sub_1A49FB918(0, &qword_1EB147608, MEMORY[0x1E697F960]);
  sub_1A49FBEF0(&qword_1EB147628, sub_1A49F92F4, MEMORY[0x1E69C1E20]);
  sub_1A49F9888();
  v19 = v30;
  sub_1A5243DC4();
  v20 = v29;
  v21 = *(v28 + 1);
  if (v21)
  {
    v22 = 0.4;
  }

  else
  {
    v22 = 1.0;
  }

  (*(v32 + 32))(v29, v19, v33);
  *(v20 + *(v10 + 44)) = v22;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  sub_1A49FB3DC(v20, v14);
  v25 = &v14[*(v31 + 36)];
  *v25 = KeyPath;
  v25[1] = sub_1A3E07024;
  v25[2] = v24;
  sub_1A49FB45C();
  sub_1A524AA94();
  return sub_1A49FC038(v14, sub_1A49F9B60);
}

uint64_t type metadata accessor for LemonadePeopleHomeGroupSection(uint64_t a1)
{
  result = qword_1EB1E5850;
  if (!qword_1EB1E5850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A49F921C(uint64_t a1, double a2)
{
  if (!qword_1EB147598)
  {
    sub_1A49F92F4(255, a2);
    sub_1A49FB918(255, &qword_1EB147608, MEMORY[0x1E697F960]);
    sub_1A49FBEF0(&qword_1EB147628, sub_1A49F92F4, MEMORY[0x1E69C1E20]);
    sub_1A49F9888();
    v2 = sub_1A5243DD4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB147598);
    }
  }
}

void sub_1A49F92F4(uint64_t a1, double a2)
{
  if (!qword_1EB1475A0)
  {
    sub_1A49F9B04(255, &qword_1EB1475A8, sub_1A49F9390);
    sub_1A49F9680(v2);
    v3 = sub_1A52423F4();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB1475A0);
    }
  }
}

void sub_1A49F9390(uint64_t a1)
{
  if (!qword_1EB1475B0)
  {
    sub_1A49F9424(255);
    sub_1A49FBEF0(&qword_1EB1475F0, sub_1A49F9424, &unk_1A535BA5C);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1475B0);
    }
  }
}

void sub_1A49F9424(uint64_t a1)
{
  if (!qword_1EB1475B8)
  {
    sub_1A49F94B8(255);
    v3 = v2;
    v4 = sub_1A49FBEF0(&qword_1EB1475E8, sub_1A49F94B8, MEMORY[0x1E69817F8]);
    v6 = type metadata accessor for LemonadeDetailsNavigationButton(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB1475B8);
    }
  }
}

void sub_1A49F94B8(uint64_t a1)
{
  if (!qword_1EB1475C0)
  {
    sub_1A49F8D20(255, &qword_1EB1475C8, sub_1A49F954C, MEMORY[0x1E6981F40]);
    sub_1A49F95F8();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1475C0);
    }
  }
}

void sub_1A49F954C(uint64_t a1, double a2)
{
  if (!qword_1EB1475D0)
  {
    sub_1A5243364();
    sub_1A49F95D8(255, v2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1475D0);
    }
  }
}

unint64_t sub_1A49F95F8()
{
  result = qword_1EB1475E0;
  if (!qword_1EB1475E0)
  {
    sub_1A49F8D20(255, &qword_1EB1475C8, sub_1A49F954C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1475E0);
  }

  return result;
}

unint64_t sub_1A49F9680(double a1)
{
  result = qword_1EB1475F8;
  if (!qword_1EB1475F8)
  {
    sub_1A49F9B04(255, &qword_1EB1475A8, sub_1A49F9390);
    sub_1A49FBEF0(&qword_1EB147600, sub_1A49F9390, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1475F8);
  }

  return result;
}

void sub_1A49F9780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A49F97F4(uint64_t a1)
{
  if (!qword_1EB147620)
  {
    v2 = type metadata accessor for LemonadeSocialGroupSectionProvider(255);
    v3 = sub_1A49FBEF0(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider, &unk_1A5377098);
    v5 = type metadata accessor for LemonadeFeedContents(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB147620);
    }
  }
}

unint64_t sub_1A49F9888()
{
  result = qword_1EB147630;
  if (!qword_1EB147630)
  {
    sub_1A49FB918(255, &qword_1EB147608, MEMORY[0x1E697F960]);
    sub_1A49F9924();
    sub_1A49F9A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147630);
  }

  return result;
}

unint64_t sub_1A49F9924()
{
  result = qword_1EB147638;
  if (!qword_1EB147638)
  {
    sub_1A49FB794(255, &qword_1EB147610, &type metadata for LemonadeSocialGroupPlaceholderView, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A49F99D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147638);
  }

  return result;
}

unint64_t sub_1A49F99D0()
{
  result = qword_1EB147640;
  if (!qword_1EB147640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147640);
  }

  return result;
}

unint64_t sub_1A49F9A24()
{
  result = qword_1EB147648;
  if (!qword_1EB147648)
  {
    sub_1A49F974C(255);
    sub_1A49FBEF0(&qword_1EB147650, sub_1A49F97F4, &unk_1A53341A0);
    sub_1A49FBEF0(&qword_1EB1220A8, sub_1A4558B3C, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147648);
  }

  return result;
}

void sub_1A49F9B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A49F9B60(uint64_t a1)
{
  if (!qword_1EB147660)
  {
    sub_1A49F9B04(255, &qword_1EB147658, sub_1A49F921C);
    sub_1A49FB7E8(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147660);
    }
  }
}

uint64_t sub_1A49F9C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1A5243334();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadePeopleHomeGroupSection(0);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v32 - v8;
  v9 = sub_1A5242D14();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = sub_1A52486A4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0;
  if (*(a1 + 3) == 1)
  {
    v19 = sub_1A3C38BD4(0xD000000000000020);
  }

  v35 = v20;
  v36 = v19;
  sub_1A49FB1A4(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v18);
  v21 = sub_1A5248684();
  (*(v16 + 8))(v18, v15);
  if (v21)
  {
    sub_1A49FB1A4(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v14);
    v22 = v32;
    (*(v32 + 104))(v11, *MEMORY[0x1E69C2210], v9);
    sub_1A49FBEF0(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
    sub_1A524C594();
    v23 = *(v22 + 8);
    v23(v11, v9);
    v23(v14, v9);
  }

  v24 = v34;
  sub_1A49FB9B4(a1, v34, type metadata accessor for LemonadePeopleHomeGroupSection);
  v25 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v26 = swift_allocObject();
  sub_1A49FBFD0(v24, v26 + v25, type metadata accessor for LemonadePeopleHomeGroupSection);
  v27 = a1;
  v28 = v37;
  sub_1A49FB9B4(v27, v37, type metadata accessor for LemonadePeopleHomeGroupSection);
  v29 = swift_allocObject();
  sub_1A49FBFD0(v28, v29 + v25, type metadata accessor for LemonadePeopleHomeGroupSection);
  (*(v38 + 104))(v40, *MEMORY[0x1E69C2410], v39);
  sub_1A5247BA4();
  sub_1A49F9B04(0, &qword_1EB1475A8, sub_1A49F9390);
  sub_1A49F9680(v30);
  return sub_1A52423E4();
}

void sub_1A49FA1D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadePeopleHomeGroupSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A49F9390(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v10 = sub_1A5249584();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A49FBAC0(0);
  v12 = *(v11 + 44);
  v22 = a1;
  sub_1A49FB9B4(a1, v7, type metadata accessor for LemonadePeopleHomeGroupSection);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1A49FBFD0(v7, v14 + v13, type metadata accessor for LemonadePeopleHomeGroupSection);
  sub_1A49F94B8(0);
  v16 = v15;
  v17 = sub_1A49FBEF0(&qword_1EB1475E8, sub_1A49F94B8, MEMORY[0x1E69817F8]);

  sub_1A472916C(v18, sub_1A49FBB28, 0, 0, sub_1A49FBD78, v14, v16, &v10[v12], v17);
  if (*(a1 + 3))
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0;
  }

  sub_1A49FBFD0(v10, a2, sub_1A49F9390);
  sub_1A49F9B04(0, &qword_1EB1475A8, sub_1A49F9390);
  *(a2 + *(v20 + 36)) = v19;
}

void sub_1A49FA450(_BYTE *a1@<X0>, char *a2@<X8>)
{
  v49 = a1;
  v51 = a2;
  v2 = type metadata accessor for LemonadeTitleDisclosureImage(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49F95D8(0, v3);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v50 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v45 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v53 = v45 - v12;
  v13 = sub_1A5243334();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1A5243364();
  v17 = *(v47 - 8);
  v45[1] = v17;
  MEMORY[0x1EEE9AC00](v47);
  v52 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v45 - v20;
  sub_1A3C38BD4(0xD000000000000020);
  (*(v14 + 104))(v16, *MEMORY[0x1E69C2410], v13);
  v45[0] = v21;
  sub_1A5243344();
  sub_1A5249434();
  v22 = sub_1A524A444();
  v24 = v23;
  v26 = v25;
  v46 = v27;
  sub_1A43F5FAC(v16);
  v28 = v48;
  sub_1A43F6020(v16, v48);
  if (*v49)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = 1.0;
  }

  sub_1A49FBFD0(v28, v10, type metadata accessor for LemonadeTitleDisclosureImage);
  *&v10[*(v6 + 44)] = v29;
  v30 = v53;
  sub_1A49FBFD0(v10, v53, sub_1A49F95D8);
  v31 = *(v17 + 16);
  v32 = v52;
  v33 = v21;
  v34 = v47;
  v31(v52, v33, v47);
  v55 = v26 & 1;
  v35 = v30;
  v36 = v50;
  sub_1A49FB9B4(v35, v50, sub_1A49F95D8);
  v54 = 1;
  v37 = v51;
  v38 = v31(v51, v32, v34);
  sub_1A49F954C(0, v38);
  v40 = v39;
  v41 = &v37[*(v39 + 48)];
  v42 = v55;
  *v41 = v22;
  *(v41 + 1) = v24;
  v41[16] = v42;
  *(v41 + 3) = v46;
  sub_1A49FB9B4(v36, &v37[*(v39 + 64)], sub_1A49F95D8);
  v43 = &v37[*(v40 + 80)];
  v44 = v54;
  *v43 = 0;
  v43[8] = v44;
  sub_1A3E75E68(v22, v24, v42);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49FA91C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  sub_1A49F8D20(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v54 - v4;
  sub_1A49F974C(0);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeSocialGroupSectionProvider(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  sub_1A49FB918(0, &qword_1EB147690, MEMORY[0x1E697F948]);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v17 = sub_1A5249234();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  v22 = *(v21 + 16);
  if (*(a1 + 3) != 1)
  {
    v41 = *(v21 + 40);
    v42 = *(a1 + 1);
    v43 = *(a1 + 2);
    v44 = v41;
    v57 = v22;
    sub_1A4965B64(v57, v41, v42, v43, 1, v12);
    sub_1A49FB9B4(v12, v9, type metadata accessor for LemonadeSocialGroupSectionProvider);
    v45 = *(a1 + 8);
    v46 = sub_1A52442E4();
    v47 = v58;
    (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
    v48 = *(a1 + 24);
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v49 = sub_1A49FBEF0(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider, &unk_1A5377098);

    v50 = sub_1A3C5A374();
    sub_1A437CBD4(v9, v45, v47, v48, 0, &v62, 0, 0, v59, v50 & 1, v7, v49);
    swift_getKeyPath();
    v51 = sub_1A49A67A0();
    v53 = *v51;
    v52 = *(v51 + 1);
    *&v62 = v53;
    *(&v62 + 1) = v52;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v59 = v14;
  v23 = v22;
  PXDisplayCollectionDetailedCountsMake();
  v25 = v24;
  v26 = a1 + *(type metadata accessor for LemonadePeopleHomeGroupSection(0) + 52);
  v27 = *(v26 + 8);
  v28 = *(v26 + 24);
  if (*(v26 + 32) != 1)
  {
    v29 = *v26;
    v55 = *(v26 + 16);
    v30 = v55;

    v31 = sub_1A524D254();
    v58 = v23;
    v32 = v31;
    v33 = sub_1A524A014();
    v57 = v25;
    v34 = v33;
    sub_1A5246DF4(v32, &dword_1A3C1C000, v33, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v29, v27, v30, v28, 0);
    v35 = *(v18 + 8);
    v35(v20, v17);
    v56 = *(&v62 + 1);

    v36 = sub_1A524D254();
    v37 = sub_1A524A014();
    v38 = v36;
    v25 = v57;
    sub_1A5246DF4(v38, &dword_1A3C1C000, v37, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v23 = v58;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v29, v27, v55, v28, 0);
    v35(v20, v17);
    v28 = *(&v63 + 1);
    v27 = v56;
  }

  v39 = sub_1A524A064();
  *v16 = v25;
  v16[8] = v39;
  *(v16 + 2) = 0;
  *(v16 + 3) = v27;
  *(v16 + 4) = 0;
  *(v16 + 5) = v28;
  v16[48] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1A49FB794(0, &qword_1EB147610, &type metadata for LemonadeSocialGroupPlaceholderView, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  sub_1A49F9924();
  sub_1A49F9A24();
  v40 = v25;
  sub_1A5249744();
}

void sub_1A49FB018(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePeopleHomeGroupSection(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1A49FA91C(v4, a1);
}

uint64_t sub_1A49FB088@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 8) = a5;
  *(a8 + 16) = a6;
  *(a8 + 24) = a7;
  v9 = type metadata accessor for LemonadePeopleHomeGroupSection(0);
  v10 = v9[11];
  *(a8 + v10) = swift_getKeyPath();
  v11 = MEMORY[0x1E697DCB8];
  sub_1A49F8D20(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v12 = v9[12];
  *(a8 + v12) = swift_getKeyPath();
  sub_1A49F8D20(0, &qword_1EB128A50, MEMORY[0x1E697E730], v11);
  swift_storeEnumTagMultiPayload();
  v13 = a8 + v9[13];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  return result;
}

uint64_t sub_1A49FB1A4@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v22 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A49F8D20(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A455A724(v8, &v21 - v15, a1, a2, v13, sub_1A49F8D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(v22, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1A49FB3DC(uint64_t a1, uint64_t a2)
{
  sub_1A49F9B04(0, &qword_1EB147658, sub_1A49F921C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A49FB45C()
{
  result = qword_1EB147668;
  if (!qword_1EB147668)
  {
    sub_1A49F9B60(255);
    sub_1A49FB4DC();
    sub_1A3E72758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147668);
  }

  return result;
}

unint64_t sub_1A49FB4DC()
{
  result = qword_1EB147670;
  if (!qword_1EB147670)
  {
    sub_1A49F9B04(255, &qword_1EB147658, sub_1A49F921C);
    sub_1A49FBEF0(&qword_1EB147678, sub_1A49F921C, MEMORY[0x1E69C28E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147670);
  }

  return result;
}

void sub_1A49FB5EC(uint64_t a1)
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadePhotoLibraryContext(319, v1);
    if (v2 <= 0x3F)
    {
      sub_1A49FB794(319, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
      if (v3 <= 0x3F)
      {
        sub_1A49F8D20(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A49F8D20(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A49FB7E8(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
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

void sub_1A49FB794(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A49FB7E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A49FB838()
{
  result = qword_1EB147680;
  if (!qword_1EB147680)
  {
    sub_1A49F9780(255, &qword_1EB147688, sub_1A49F9B60, MEMORY[0x1E697CBE8]);
    sub_1A49FB45C();
    sub_1A49FBEF0(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147680);
  }

  return result;
}

void sub_1A49FB918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A49FB794(255, &qword_1EB147610, &type metadata for LemonadeSocialGroupPlaceholderView, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v7 = v6;
    sub_1A49F974C(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A49FB9B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49FBA3C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadePeopleHomeGroupSection(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_1A49FBAC0(uint64_t a1)
{
  if (!qword_1EB147698)
  {
    sub_1A49F9424(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147698);
    }
  }
}

void sub_1A49FBB28(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_1A52492D4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1A49FBF38(0);
  sub_1A49FA450(v3, (a1 + *(v4 + 44)));
}

uint64_t objectdestroyTm_90()
{
  v1 = type metadata accessor for LemonadePeopleHomeGroupSection(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[11];
  sub_1A49F8D20(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[12];
  sub_1A49F8D20(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52486A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[13];
  sub_1A3D35A84(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A49FBD78@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePeopleHomeGroupSection(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 16);
  LOBYTE(v14) = 10;

  v5 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  v7 = v6;
  v13 = 2;
  type metadata accessor for LemonadeSocialGroupsShelfProvider(0);
  sub_1A49FBEF0(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
  sub_1A414D2C8(v4, v5, v7, &v13, &v14);
  v8 = v15;
  v9 = v16;
  *a1 = v14;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v10 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, 0, 1, v10);
}

uint64_t sub_1A49FBEF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A49FBF38(uint64_t a1)
{
  if (!qword_1EB1476A0)
  {
    sub_1A49F8D20(255, &qword_1EB1475C8, sub_1A49F954C, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1476A0);
    }
  }
}

uint64_t sub_1A49FBFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49FC038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49FC098(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !swift_dynamicCastUnknownClass())
  {
    return 0;
  }

  sub_1A3C7B6A4(0, v4);
  v5 = a1;
  v6 = sub_1A524DBF4();

  return v6 & 1;
}

uint64_t static LemonadeCollectionCustomizationPeopleModelUtilities.initialString(for:changeToBeMade:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (!v3 || (v5 = [v3 name]) == 0)
  {
LABEL_7:
    if (v4 != 2 && (v4 & 1) != 0)
    {
      return 0;
    }

    v11 = [*(a1 + OBJC_IVAR___PXPeopleNamingItem_title) string];
    v7 = sub_1A524C674();

    return v7;
  }

  v6 = v5;
  v7 = sub_1A524C674();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  return v7;
}

id static LemonadeCollectionCustomizationPeopleModelUtilities.initialResultItem(for:person:)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (!v3 || (v4 = [v3 contact]) == 0 || (v5 = v4, type metadata accessor for PeopleNamingItem(), (result = PeopleNamingItem.__allocating_init(contact:searchString:)(v5, 0, 0xE000000000000000)) == 0))
  {
    type metadata accessor for PeopleNamingItem();
    return PeopleNamingItem.__allocating_init(person:searchString:)(a2, 0, 0xE000000000000000);
  }

  return result;
}

uint64_t LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1A49FC350(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

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

uint64_t sub_1A49FC3AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1A49FC43C(uint64_t a1)
{
  if (!qword_1EB1476A8)
  {
    sub_1A49FC6C0(255, &qword_1EB13FB68, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for LemonadeCollectionCustomizationPeopleModel);
    v3 = v2;
    v4 = sub_1A49FC4CC();
    v6 = type metadata accessor for LemonadeCollectionCustomizationView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB1476A8);
    }
  }
}

unint64_t sub_1A49FC4CC()
{
  result = qword_1EB13FB78;
  if (!qword_1EB13FB78)
  {
    sub_1A49FC6C0(255, &qword_1EB13FB68, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for LemonadeCollectionCustomizationPeopleModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB78);
  }

  return result;
}

id sub_1A49FC57C(void *a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  v9 = a2(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v13 - v10);
  sub_1A49FC728(0, a3, a4, a5, a4);
  sub_1A478C8F8(a1, v11);
  return PXSwiftUIHostingViewController.__allocating_init(rootView:)(v11);
}

void sub_1A49FC630(uint64_t a1)
{
  if (!qword_1EB1476C0)
  {
    sub_1A49FC6C0(255, &qword_1EB12D338, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for LemonadeCollectionCustomizationSocialGroupModel);
    v3 = v2;
    v4 = sub_1A3E791CC();
    v6 = type metadata accessor for LemonadeCollectionCustomizationView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB1476C0);
    }
  }
}

void sub_1A49FC6C0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A49FC728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = sub_1A49FC7A8(a4, a5);
    v12 = type metadata accessor for PXSwiftUIHostingViewController(a1, v9, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_1A49FC7A8(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

char *sub_1A49FC884(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  v7 = OBJC_IVAR____TtC12PhotosUICore25TTRWorkflowViewController_actionCache;
  *(v3 + v7) = sub_1A4A0357C(MEMORY[0x1E69E7CC0]);
  if (*(v6 + 16))
  {
    type metadata accessor for TTRWorkflowDataSource();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C33378(a2, a3);

  type metadata accessor for TTRWorkflowViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1A49FCBA4(__int128 *a1)
{
  v2 = *(a1 + 2);
  v5 = *a1;
  v6 = v2;
  sub_1A457FC00(&v5, &v7);
  if (*(&v7 + 1))
  {
    v3 = objc_allocWithZone(type metadata accessor for TTRStepViewController());
    v4 = sub_1A49FE044(&v7);
    [v1 pushViewController:v4 animated:1];
  }
}

void sub_1A49FCC70(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v10[4] = sub_1A3EECF0C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3C2E0D0;
  v10[3] = &block_descriptor_324;
  v8 = _Block_copy(v10);
  sub_1A3C66EE8(a2, a3);
  v9 = a1;

  [v3 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

id sub_1A49FCE18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1A52411C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v14 = sub_1A52411A4();
  (*(v11 + 8))(v13, v10);
  [a1 setTag_];
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = OBJC_IVAR____TtC12PhotosUICore25TTRWorkflowViewController_actionCache;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + v16);
  *(v5 + v16) = 0x8000000000000000;
  sub_1A4A032C4(sub_1A463AC80, v15, v14, isUniquelyReferenced_nonNull_native);
  *(v5 + v16) = v19;
  swift_endAccess();
  return [a1 addTarget:v5 action:sel_handleCachedControl_ forControlEvents:a2];
}

double sub_1A49FCFD4(void *a1)
{
  v3 = [a1 tag];
  v4 = OBJC_IVAR____TtC12PhotosUICore25TTRWorkflowViewController_actionCache;
  swift_beginAccess();
  v6 = *(v1 + v4);
  if (*(v6 + 16))
  {
    v7 = sub_1A3CAB9BC(v3);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 16 * v7);
      v10 = a1;

      v9(&v10);
    }
  }

  return result;
}

id sub_1A49FD2B0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A49FD324()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() systemFontOfSize:22.0 weight:*MEMORY[0x1E69DB958]];
    [v4 setFont_];

    [v4 setTextAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1A49FD410()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];

    v6 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor_];

    [v4 setTextAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setLineBreakMode_];
    [v4 setNumberOfLines_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1A49FD55C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRHeaderView()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A49FD5CC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v4 setAxis_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A49FD67C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton);
  }

  else
  {
    v40 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton;
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = objc_opt_self();
    v5 = [v4 currentTraitCollection];
    v6 = [v5 userInterfaceStyle] == 2;

    v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithDisplayP3Red:0.462745098 green:0.462745098 blue:0.501960784 alpha:dbl_1A537BF60[v6]];
    [v3 setBackgroundColor_];

    v8 = [objc_opt_self() boldSystemFontOfSize_];
    v9 = [objc_opt_self() configurationWithFont_];

    v10 = sub_1A524C634();
    v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

    if (v11)
    {
      v12 = [v4 currentTraitCollection];
      v13 = [v12 userInterfaceStyle];

      v14 = 0x1E69DC000uLL;
      v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      if (v13 == 2)
      {
        v16 = 0.921568627;
        v17 = 0.960784314;
      }

      else
      {
        v16 = 0.235294118;
        v17 = 0.262745098;
      }

      v19 = [v15 initWithDisplayP3Red:v16 green:v16 blue:v17 alpha:0.6];
      v20 = [v11 imageWithTintColor:v19 renderingMode:2];

      v18 = v20;
    }

    else
    {
      v18 = 0;
      v14 = 0x1E69DC000;
    }

    v21 = v18;
    [v3 setImage_forState_];
    v22 = [v4 &selRef_decodeBoolForKey_ + 6];
    v23 = [v22 userInterfaceStyle];

    v24 = objc_allocWithZone(*(v14 + 2184));
    if (v23 == 2)
    {
      v25 = 0.921568627;
      v26 = 0.960784314;
    }

    else
    {
      v25 = 0.235294118;
      v26 = 0.262745098;
    }

    v27 = [v24 &selRef:v25 symbolSystemNamesForItem:{v25, v26, 0.6} + 2];
    [v3 setTintColor_];

    v28 = v3;
    v29 = sub_1A524C634();
    [v28 setAccessibilityHint_];

    [v28 _setCornerRadius_];
    [v28 addTarget:v0 action:sel_handleClose forControlEvents:64];
    v30 = objc_opt_self();
    sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1A52F9DE0;
    v32 = [v28 heightAnchor];
    v33 = [v32 constraintEqualToConstant_];

    *(v31 + 32) = v33;
    v34 = [v28 widthAnchor];

    v35 = [v34 constraintEqualToConstant_];
    *(v31 + 40) = v35;
    sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
    v36 = sub_1A524CA14();

    [v30 activateConstraints_];

    v37 = *(v0 + v40);
    *(v0 + v40) = v28;
    v2 = v28;

    v1 = 0;
  }

  v38 = v1;
  return v2;
}

id sub_1A49FDB9C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = objc_opt_self();
    v6 = [v5 currentTraitCollection];
    v7 = [v6 userInterfaceStyle] == 2;

    v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithDisplayP3Red:0.462745098 green:0.462745098 blue:0.501960784 alpha:dbl_1A537BF60[v7]];
    [v4 setBackgroundColor_];

    v9 = sub_1A524C634();
    v10 = [objc_opt_self() systemImageNamed_];

    if (v10)
    {
      v11 = [v5 currentTraitCollection];
      v12 = [v11 userInterfaceStyle];

      v13 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      if (v12 == 2)
      {
        v14 = 0.921568627;
        v15 = 0.960784314;
      }

      else
      {
        v14 = 0.235294118;
        v15 = 0.262745098;
      }

      v17 = [v13 initWithDisplayP3Red:v14 green:v14 blue:v15 alpha:0.6];
      v16 = [v10 imageWithTintColor:v17 renderingMode:2];
    }

    else
    {
      v16 = 0;
    }

    [v4 setImage:v16 forState:0];
    v18 = [v5 currentTraitCollection];
    v19 = [v18 userInterfaceStyle];

    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    if (v19 == 2)
    {
      v21 = 0.921568627;
      v22 = 0.960784314;
    }

    else
    {
      v21 = 0.235294118;
      v22 = 0.262745098;
    }

    v23 = [v20 initWithDisplayP3Red:v21 green:v21 blue:v22 alpha:0.6];
    [v4 setTintColor_];

    v24 = v4;
    v25 = sub_1A524C634();
    [v24 setAccessibilityHint_];

    [v24 _setCornerRadius_];
    [v24 addTarget:v0 action:sel_handleBack forControlEvents:64];
    v26 = objc_opt_self();
    sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1A52F9DE0;
    v28 = [v24 heightAnchor];
    v29 = [v28 constraintEqualToConstant_];

    *(v27 + 32) = v29;
    v30 = [v24 widthAnchor];

    v31 = [v30 constraintEqualToConstant_];
    *(v27 + 40) = v31;
    sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
    v32 = sub_1A524CA14();

    [v26 activateConstraints_];

    v33 = *(v0 + v1);
    *(v0 + v1) = v24;
    v3 = v24;

    v2 = 0;
  }

  v34 = v2;
  return v3;
}

id sub_1A49FE044(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView] = 0;
  v5 = *(a1 + 6);
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton] = 0;
  v6 = &v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController_step];
  *v6 = v2;
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  *(v6 + 2) = a1[2];
  *(v6 + 6) = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TTRStepViewController();
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A49FE118(uint64_t a1)
{
  v2.receiver = v1;
  v2.super_class = type metadata accessor for TTRStepViewController();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_1A49FE298();
  sub_1A49FE820();
  sub_1A49FF504();
  sub_1A49FD324();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49FE298()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1A49FD2B0();
  [v2 addSubview_];

  v4 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView;
  [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52FF960;
  v6 = [*&v0[v4] leadingAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 leadingAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [*&v0[v4] trailingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 trailingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [*&v0[v4] bottomAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v20 = [v18 bottomAnchor];

  v21 = [v16 constraintEqualToAnchor_];
  *(v5 + 48) = v21;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v22 = sub_1A524CA14();

  [v19 activateConstraints_];

  v23 = [objc_opt_self() effectWithStyle_];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v25 = v24;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = [v25 layer];
  [v26 setCornerRadius_];

  [v25 setClipsToBounds_];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v28 = v27;
  [v27 addSubview_];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A531C940;
  v30 = [v25 topAnchor];
  v31 = [*&v0[v4] topAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v29 + 32) = v32;
  v33 = [v25 leadingAnchor];
  v34 = [*&v0[v4] leadingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v29 + 40) = v35;
  v36 = [v25 trailingAnchor];
  v37 = [*&v0[v4] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v29 + 48) = v38;
  v39 = [v25 bottomAnchor];

  v40 = [*&v0[v4] bottomAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v29 + 56) = v41;
  v42 = sub_1A524CA14();

  [v19 activateConstraints_];
}

void sub_1A49FE820()
{
  v1 = sub_1A49FD2B0();
  v2 = [v1 safeAreaLayoutGuide];

  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = v3;
  v5 = sub_1A49FD324();
  [v4 addSubview_];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  v8 = sub_1A49FD67C();
  [v7 addSubview_];

  v9 = objc_opt_self();
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F9DE0;
  v11 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton;
  v12 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton] topAnchor];
  v13 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView;
  v14 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView] topAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:10.0];

  *(v10 + 32) = v15;
  v16 = [*&v0[v11] trailingAnchor];
  v17 = [*&v0[v13] trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-10.0];

  *(v10 + 40) = v18;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v19 = sub_1A524CA14();

  v106 = v9;
  [v9 activateConstraints_];

  v20 = [v0 navigationController];
  v21 = &unk_1A52FF000;
  if (v20 && ((v22 = v20, v23 = [v20 viewControllers], v22, sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258), v24 = sub_1A524CA34(), v23, v24 >> 62) ? (v25 = sub_1A524E2B4()) : (v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v25 > 1))
  {
    v48 = [v0 navigationController];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 navigationBar];

      v51 = [v50 topItem];
      if (v51)
      {
        [v51 setBackBarButtonItem_];
      }
    }

    v52 = [v0 view];
    if (!v52)
    {
      goto LABEL_25;
    }

    v53 = v52;
    v54 = sub_1A49FDB9C();
    [v53 addSubview_];

    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1A52FF960;
    v56 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel;
    v57 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel] topAnchor];
    v58 = [v2 topAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:64.0];

    *(v55 + 32) = v59;
    v60 = [*&v0[v56] leadingAnchor];
    v61 = [v2 leadingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61 constant:20.0];

    *(v55 + 40) = v62;
    v63 = [*&v0[v56] trailingAnchor];
    v64 = [v2 trailingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 constant:-20.0];

    *(v55 + 48) = v65;
    v66 = sub_1A524CA14();

    [v106 activateConstraints_];

    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1A52F9DE0;
    v68 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton;
    v69 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton] topAnchor];
    v70 = [*&v0[v13] topAnchor];
    v71 = [v69 constraintEqualToAnchor:v70 constant:10.0];

    *(v67 + 32) = v71;
    v44 = (v67 + 40);
    v45 = [*&v0[v68] leadingAnchor];
    v46 = [*&v0[v13] leadingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:10.0];
  }

  else
  {
    v26 = [v0 view];
    if (!v26)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v27 = v26;
    v28 = sub_1A49FD55C();
    [v27 addSubview_];

    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1A531E190;
    v30 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView;
    v31 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView] topAnchor];
    v32 = [*&v0[v13] topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:16.0];

    *(v29 + 32) = v33;
    v34 = [*&v0[v30] leadingAnchor];
    v35 = [v2 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:20.0];

    *(v29 + 40) = v36;
    v37 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel;
    v38 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel] topAnchor];
    v39 = [*&v0[v30] bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:32.0];

    *(v29 + 48) = v40;
    v41 = [*&v0[v37] leadingAnchor];
    v42 = [v2 leadingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:20.0];

    *(v29 + 56) = v43;
    v44 = (v29 + 64);
    v45 = [*&v0[v37] trailingAnchor];
    v46 = [v2 trailingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:-20.0];
    v21 = &unk_1A52FF000;
  }

  v72 = v47;

  *v44 = v72;
  v73 = sub_1A524CA14();

  [v106 activateConstraints_];

  v74 = [v0 view];
  if (!v74)
  {
    goto LABEL_22;
  }

  v75 = v74;
  v76 = sub_1A49FD410();
  [v75 addSubview_];

  v77 = swift_allocObject();
  *(v77 + 16) = v21[150];
  v78 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel;
  v79 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel] topAnchor];
  v80 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel] bottomAnchor];
  v81 = [v79 &selRef_containerView + 6];

  *(v77 + 32) = v81;
  v82 = [*&v0[v78] leadingAnchor];
  v83 = [v2 leadingAnchor];
  v84 = [v82 &selRef_containerView + 6];

  *(v77 + 40) = v84;
  v85 = [*&v0[v78] trailingAnchor];
  v86 = [v2 trailingAnchor];
  v87 = [v85 &selRef_containerView + 6];

  *(v77 + 48) = v87;
  v88 = sub_1A524CA14();

  [v106 activateConstraints_];

  v89 = [v0 view];
  if (!v89)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v90 = v89;
  v91 = sub_1A49FD5CC();
  [v90 addSubview_];

  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1A531C940;
  v93 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView;
  v94 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView] topAnchor];
  v95 = [*&v0[v78] bottomAnchor];
  v96 = [v94 &selRef_containerView + 6];

  *(v92 + 32) = v96;
  v97 = [*&v0[v93] leadingAnchor];
  v98 = [v2 leadingAnchor];
  v99 = [v97 &selRef_containerView + 6];

  *(v92 + 40) = v99;
  v100 = [*&v0[v93] trailingAnchor];
  v101 = [v2 trailingAnchor];
  v102 = [v100 &selRef_containerView + 6];

  *(v92 + 48) = v102;
  v103 = [*&v0[v93] bottomAnchor];
  v104 = [v2 bottomAnchor];
  v105 = [v103 &selRef_containerView + 6];

  *(v92 + 56) = v105;
  v107 = sub_1A524CA14();

  [v106 activateConstraints_];
}

void sub_1A49FF504()
{
  if (*(*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController_step + 48) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A4A008BC(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v59 = a5;
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v52 = a1;
  v11 = MEMORY[0x1E69E6720];
  sub_1A3C2A5FC(0, &qword_1EB126580, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v55 = v50 - v13;
  v51 = sub_1A524DD04();
  v50[3] = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50[2] = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C2A5FC(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], v11);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v50[0] = v50 - v16;
  v54 = sub_1A524DE34();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a8;
  v19 = a8[1];
  v21 = a8[2];
  sub_1A3C52C70(0, &qword_1EB126570, 0x1E69DC738);
  sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = v20;
  v23[6] = v19;
  v23[7] = v21;
  sub_1A3C66EE8(a6, a7);
  sub_1A40C7F38(v20, v19, v21);
  sub_1A524DC64();
  v50[1] = sub_1A524DE74();
  v60 = v18;
  sub_1A524DE14();
  v24 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v25 = sub_1A524C634();
  v56 = [v24 initWithString_];

  if (v59)
  {
    v26 = [objc_opt_self() whiteColor];
    v27 = [v26 colorWithAlphaComponent_];
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithDisplayP3Red:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.6];
  }

  sub_1A3C2A5FC(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v29 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v30 = sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
  *(inited + 40) = v27;
  v31 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v30;
  *(inited + 72) = v31;
  v32 = objc_opt_self();
  v33 = *MEMORY[0x1E69DB970];
  v34 = v29;
  v52 = v27;
  v35 = v31;
  v36 = [v32 systemFontOfSize:17.0 weight:v33];
  *(inited + 104) = sub_1A3C52C70(0, &qword_1EB120610, 0x1E69DB878);
  *(inited + 80) = v36;
  sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  sub_1A3C8BC40(0);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_1A3C29EDC(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
  v37 = sub_1A524C3D4();

  v38 = v56;
  [v38 addAttributes:v37 range:{0, objc_msgSend(v38, sel_length)}];

  v39 = v50[0];
  v56 = v38;
  sub_1A5240834();
  v40 = sub_1A52407E4();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  sub_1A524DD34();
  if (v58)
  {
    v41 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v42 = sub_1A524C634();
    v43 = [v41 initWithString_];

    v44 = [objc_opt_self() whiteColor];
    v45 = [v44 colorWithAlphaComponent_];

    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_1A52F8E10;
    *(v46 + 32) = v34;
    *(v46 + 64) = v30;
    *(v46 + 40) = v45;
    v47 = v34;
    v48 = v45;
    sub_1A3C8BCC0(v46);
    swift_setDeallocating();
    sub_1A3FE17B0(v46 + 32);
    v49 = sub_1A524C3D4();

    [v43 addAttributes:v49 range:{0, objc_msgSend(v43, sel_length)}];
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4A014FC(void *a1, uint64_t a2, void (*a3)(void *, id))
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x60);
      v9 = Strong;
      v10 = a1;
      v11 = v8();
      a3(v11, [v6 isOn]);
    }
  }
}

id sub_1A4A01600()
{
  sub_1A3C2A5FC(0, &qword_1EB126580, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v26 - v1;
  v3 = sub_1A524DE34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  sub_1A524DDE4();
  v8 = sub_1A524C634();
  v9 = [objc_opt_self() systemImageNamed_];

  sub_1A524DDD4();
  sub_1A524DD14();
  sub_1A524DCE4();
  v10 = [objc_opt_self() currentTraitCollection];
  v11 = [v10 userInterfaceStyle];

  v12 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  if (v11 == 2)
  {
    v13 = 0.874509804;
    v14 = 0.905882353;
    v15 = 1.0;
    v16 = 0.874509804;
  }

  else
  {
    v13 = 0.235294118;
    v15 = 0.6;
    v16 = 0.235294118;
    v14 = 0.235294118;
  }

  [v12 initWithDisplayP3Red:v13 green:v16 blue:v14 alpha:v15];
  sub_1A524DD74();
  sub_1A524DE04();
  v17 = v7;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = objc_opt_self();
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A52F9DE0;
  v20 = [v17 widthAnchor];
  v21 = [v20 constraintGreaterThanOrEqualToConstant_];

  *(v19 + 32) = v21;
  v22 = [v17 heightAnchor];

  v23 = [v22 constraintGreaterThanOrEqualToConstant_];
  *(v19 + 40) = v23;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v24 = sub_1A524CA14();

  [v18 activateConstraints_];

  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_1A524DE64();
  [v17 setShowsMenuAsPrimaryAction_];
  (*(v4 + 8))(v6, v3);
  return v17;
}

id sub_1A4A01B0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1A4A01C1C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView;
  v2 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_1A4A01C8C(v0, ObjectType);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1A4A01C8C(void *a1, uint64_t a2)
{
  v36 = a2;
  v40 = a1;
  v2 = sub_1A524BEE4();
  v39 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BEF4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:50.0 scale:{50.0, 2.0}];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F88], v8);
  v14 = sub_1A524D4C4();
  (*(v9 + 8))(v11, v8);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v12;
  v15[4] = v36;
  aBlock[4] = sub_1A4A03910;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_41_2;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;
  sub_1A524BF14();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1A3C29EDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C2A5FC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v7, v4, v16);
  _Block_release(v16);

  (*(v39 + 8))(v4, v2);
  (*(v37 + 8))(v7, v38);

  v19 = [v17 layer];
  [v19 setCornerRadius_];

  v20 = [v17 layer];
  v21 = [objc_opt_self() blackColor];
  v22 = [v21 CGColor];

  [v20 setShadowColor_];
  v23 = [v17 layer];
  LODWORD(v24) = 1047904911;
  [v23 setShadowOpacity_];

  v25 = [v17 layer];
  [v25 setShadowRadius_];

  v26 = [v17 layer];
  [v40 px_screenScale];
  [v26 setRasterizationScale_];

  v27 = [v17 layer];
  [v27 setShouldRasterize_];

  v28 = objc_opt_self();
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A52F9DE0;
  v30 = [v17 widthAnchor];
  v31 = [v30 constraintEqualToConstant_];

  *(v29 + 32) = v31;
  v32 = [v17 heightAnchor];

  v33 = [v32 constraintEqualToConstant_];
  *(v29 + 40) = v33;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v34 = sub_1A524CA14();

  [v28 activateConstraints_];

  return v17;
}

uint64_t sub_1A4A0234C(uint64_t a1, void *a2)
{
  v4 = sub_1A524BEE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A524BF64();
  v8 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v12 = sub_1A524C634();
  v13 = [v11 initWithBundleIdentifier_];

  v14 = [v13 prepareImageForDescriptor_];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v15 = sub_1A524D474();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a2;
  aBlock[4] = sub_1A4A03918;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_47_2;
  v17 = _Block_copy(aBlock);
  v18 = v14;
  v19 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29EDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C2A5FC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v10, v7, v17);
  _Block_release(v17);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v22);
}

id sub_1A4A026B4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1A524C634();
    [v4 setText_];

    v6 = [objc_opt_self() systemFontOfSize:28.0 weight:*MEMORY[0x1E69DB958]];
    [v4 setFont_];

    v7 = [objc_opt_self() currentTraitCollection];
    v8 = [v7 userInterfaceStyle];

    v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    if (v8 == 2)
    {
      v10 = 0.874509804;
      v11 = 0.905882353;
      v12 = 1.0;
      v13 = 0.874509804;
    }

    else
    {
      v10 = 0.235294118;
      v12 = 0.6;
      v13 = 0.235294118;
      v11 = 0.235294118;
    }

    v14 = [v9 initWithDisplayP3Red:v10 green:v13 blue:v11 alpha:v12];
    [v4 setTextColor_];

    v15 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_1A4A02870()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1A524C634();
    [v4 setText_];

    v6 = [objc_opt_self() systemFontOfSize_];
    [v4 setFont_];

    v7 = [objc_opt_self() currentTraitCollection];
    v8 = [v7 userInterfaceStyle];

    v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    if (v8 == 2)
    {
      v10 = 0.77254902;
      v11 = 0.796078431;
    }

    else
    {
      v10 = 0.388235294;
      v11 = 0.4;
    }

    v12 = [v9 initWithDisplayP3Red:v10 green:v10 blue:v11 alpha:1.0];
    [v4 setTextColor_];

    v13 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

char *sub_1A4A02A1C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView] = 0;
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel] = 0;
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel] = 0;
  v40.receiver = v0;
  v40.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = sub_1A4A01C1C();
  [v2 addSubview_];

  v4 = sub_1A4A026B4();
  [v2 addSubview_];

  v5 = sub_1A4A02870();
  [v2 addSubview_];

  v39 = objc_opt_self();
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A537BF70;
  v7 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView;
  v8 = [*&v2[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView] topAnchor];
  v9 = [v2 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v6 + 32) = v10;
  v11 = [*&v2[v7] leadingAnchor];
  v12 = [v2 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v6 + 40) = v13;
  v14 = [*&v2[v7] bottomAnchor];
  v15 = [v2 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v6 + 48) = v16;
  v17 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel;
  v18 = [*&v2[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel] topAnchor];
  v19 = [v2 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v6 + 56) = v20;
  v21 = [*&v2[v17] leadingAnchor];
  v22 = [*&v2[v7] trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:10.0];

  *(v6 + 64) = v23;
  v24 = [*&v2[v17] trailingAnchor];
  v25 = [v2 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v6 + 72) = v26;
  v27 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel;
  v28 = [*&v2[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel] leadingAnchor];
  v29 = [*&v2[v7] trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:10.0];

  *(v6 + 80) = v30;
  v31 = [*&v2[v27] trailingAnchor];
  v32 = [v2 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v6 + 88) = v33;
  v34 = [*&v2[v27] bottomAnchor];
  v35 = [v2 bottomAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v6 + 96) = v36;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v37 = sub_1A524CA14();

  [v39 activateConstraints_];

  return v2;
}

void sub_1A4A0305C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A4A04808(0);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v21 = sub_1A524EC84();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1A4A032C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3CAB9BC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A4A0305C(v16, a4 & 1);
      v11 = sub_1A3CAB9BC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A4A03424();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + 8 * v11) = a3;
    v23 = (v21[7] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

void sub_1A4A03424()
{
  v1 = v0;
  sub_1A4A04808(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

unint64_t sub_1A4A0357C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A4A04808(0);
  v3 = sub_1A524E794();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1A3CAB9BC(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_1A3CAB9BC(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1A4A036C8(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6979538]) init];
  [v3 setDuration_];
  [v3 setType_];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 layer];

    [v6 addAnimation:v3 forKey:0];
    v7.receiver = v1;
    v7.super_class = type metadata accessor for TTRWorkflowViewController();
    objc_msgSendSuper2(&v7, sel_pushViewController_animated_, a1, 0);
  }

  else
  {
    __break(1u);
  }
}

id sub_1A4A037D0()
{
  v1 = v0;
  sub_1A4580344();
  v2 = [objc_allocWithZone(MEMORY[0x1E6979538]) init];
  [v2 setDuration_];
  [v2 setType_];
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = [result layer];

    [v5 addAnimation:v2 forKey:0];
    v7.receiver = v1;
    v7.super_class = type metadata accessor for TTRWorkflowViewController();
    v6 = objc_msgSendSuper2(&v7, sel_popViewControllerAnimated_, 0);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A4A03918()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = v1;
    v4 = [v3 CGImage];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v8 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    [v2 setImage_];
  }

  else
  {
    v6 = sub_1A524C634();
    v7 = [objc_opt_self() systemImageNamed_];

    [v2 setImage_];
    v8 = [objc_opt_self() tertiarySystemBackgroundColor];
    [v2 setBackgroundColor_];
  }
}

void sub_1A4A03A68()
{
  v1 = v0[3];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = [Strong navigationController];
  if (!v7)
  {
LABEL_8:

    return;
  }

  v8 = v7;
  type metadata accessor for TTRWorkflowViewController();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = v9;
  if (v1)
  {
    v12 = v2;
    v11 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x60))();
    v1();

    v2 = v12;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
LABEL_6:
    v13 = v2;
    v14 = v4;
    v15 = v3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v13 = v2;
  v14 = 0;
  v15 = v3;
  (*((*MEMORY[0x1E69E7D40] & *v10) + 0x70))(&v13);
}

void sub_1A4A03C34()
{
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton) = 0;
  sub_1A524E6E4();
  __break(1u);
}

id sub_1A4A03CE4(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) initWithFrame_];
  [v15 setAxis_];
  [v15 setDistribution_];
  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 addSubview_];
  [v17 addSubview_];
  [a9 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = objc_opt_self();
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A531C940;
  v20 = [a9 leadingAnchor];
  v21 = [v17 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:a3];

  *(v19 + 32) = v22;
  v23 = [a9 trailingAnchor];
  v24 = [v17 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:a5];

  *(v19 + 40) = v25;
  v26 = [a9 topAnchor];
  v27 = [v17 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:a2];

  *(v19 + 48) = v28;
  v29 = [a9 bottomAnchor];
  v30 = [v17 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:a4];

  *(v19 + 56) = v31;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v32 = sub_1A524CA14();

  [v18 activateConstraints_];

  v33 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v34 = sub_1A524C634();
  [v33 setText_];

  v35 = [objc_opt_self() systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB958]];
  [v33 setFont_];

  v36 = [objc_opt_self() currentTraitCollection];
  v37 = [v36 userInterfaceStyle];

  v38 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  if (v37 == 2)
  {
    v39 = 0.874509804;
    v40 = 0.905882353;
    v41 = 1.0;
    v42 = 0.874509804;
  }

  else
  {
    v39 = 0.235294118;
    v41 = 0.6;
    v42 = 0.235294118;
    v40 = 0.235294118;
  }

  v43 = [v38 initWithDisplayP3Red:v39 green:v42 blue:v40 alpha:v41];
  [v33 setTextColor_];

  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a8)
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v45 = sub_1A524C634();
    [v44 setText_];

    [v44 setNumberOfLines_];
    v46 = [objc_opt_self() currentTraitCollection];
    v47 = [v46 userInterfaceStyle];

    v48 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    if (v47 == 2)
    {
      v49 = 0.77254902;
      v50 = 0.796078431;
    }

    else
    {
      v49 = 0.388235294;
      v50 = 0.4;
    }

    v51 = [v48 initWithDisplayP3Red:v49 green:v49 blue:v50 alpha:1.0];
    [v44 setTextColor_];

    v52 = objc_opt_self();
    [v52 systemFontSize];
    v54 = [v52 systemFontOfSize_];
    [v44 setFont_];

    [v44 setTranslatesAutoresizingMaskIntoConstraints_];
    [v16 addArrangedSubview_];
    if (v44)
    {
      [v16 addArrangedSubview_];
    }
  }

  else
  {
    [v16 addArrangedSubview_];
    v44 = 0;
  }

  [v14 addSubview_];
  v82 = objc_opt_self();
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1A5324BC0;
  v56 = [v16 leadingAnchor];
  v57 = [v14 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:10.0];

  *(v55 + 32) = v58;
  v59 = [v16 topAnchor];
  v60 = [v14 topAnchor];
  v61 = [v59 constraintGreaterThanOrEqualToAnchor_];

  *(v55 + 40) = v61;
  v62 = [v16 bottomAnchor];
  v63 = [v14 bottomAnchor];
  v64 = [v62 constraintLessThanOrEqualToAnchor_];

  *(v55 + 48) = v64;
  v65 = [v16 centerYAnchor];
  v66 = [v14 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor_];

  *(v55 + 56) = v67;
  v68 = [v17 centerYAnchor];
  v69 = [v14 centerYAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v55 + 64) = v70;
  v71 = [v17 trailingAnchor];
  v72 = [v14 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:-15.0];

  *(v55 + 72) = v73;
  v74 = [v16 trailingAnchor];

  v75 = [v17 leadingAnchor];
  v76 = [v74 constraintLessThanOrEqualToAnchor:v75 constant:-10.0];

  *(v55 + 80) = v76;
  v77 = [v14 heightAnchor];
  v78 = [v77 constraintEqualToConstant_];

  *(v55 + 88) = v78;
  v79 = sub_1A524CA14();

  [v82 activateConstraints_];

  return v14;
}

uint64_t objectdestroy_71Tm_1()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A4A04750()
{
  v1 = v0[2];
  v2 = v0[8];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v4);
  (*(v5 + 16))(v4, v5);
  v6 = sub_1A524C634();

  [v1 setTitle:v6 forState:0];

  return v2(v3, v0 + 3);
}

void sub_1A4A04808(uint64_t a1)
{
  if (!qword_1EB147758)
  {
    sub_1A4A04870();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147758);
    }
  }
}

unint64_t sub_1A4A04870()
{
  result = qword_1EB147760;
  if (!qword_1EB147760)
  {
    sub_1A3C52C70(255, &qword_1EB126550, 0x1E69DC8F0);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB147760);
  }

  return result;
}

uint64_t sub_1A4A048F0(double a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void sub_1A4A04928(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A4A04AC0;
  *(v7 + 24) = v6;
  v9[4] = sub_1A3D78DD0;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3D35A90;
  v9[3] = &block_descriptor_325;
  v8 = _Block_copy(v9);

  [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

void sub_1A4A04AC0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 CGContext];
  v2();
}

uint64_t PhotosNavigationSourceInfo.path.getter()
{
  if (*(*v0 + 16))
  {
    sub_1A3C2DE64(0, &qword_1EB126ED0, MEMORY[0x1E69E62F8]);
    sub_1A3CAD85C();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

PhotosUICore::PhotosNavigationSourceInfo __swiftcall PhotosNavigationSourceInfo.init(sourceIdentifier:previousSourceInfo:)(Swift::String sourceIdentifier, PhotosUICore::PhotosNavigationSourceInfo_optional previousSourceInfo)
{
  object = sourceIdentifier._object;
  countAndFlagsBits = sourceIdentifier._countAndFlagsBits;
  v5 = v2;
  if (*previousSourceInfo.value.sourceIdentifiers._rawValue)
  {
    v6 = *previousSourceInfo.value.sourceIdentifiers._rawValue;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1A3C2DE64(0, &qword_1EB12B260, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = countAndFlagsBits;
  *(inited + 40) = object;
  result.sourceIdentifiers._rawValue = sub_1A3D3A048(inited);
  *v5 = v6;
  return result;
}

uint64_t static PhotosNavigationSourceInfo.originatesFromWidget(launchType:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A524C724();
    sub_1A524C674();
    sub_1A524C724();

    sub_1A3D5F9DC();
    v2 = sub_1A524E044();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1A4A04D5C()
{
  sub_1A4A04DE4();

  sub_1A5245BB4();
}

unint64_t sub_1A4A04DE4()
{
  result = qword_1EB16C430[0];
  if (!qword_1EB16C430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16C430);
  }

  return result;
}

uint64_t sub_1A4A04E5C(void *a1)
{
  v2 = sub_1A5244FD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52469C4();
  MEMORY[0x1EEE9AC00](v6);
  sub_1A4A051EC(0, &qword_1EB1202E0, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52FC9F0;
  sub_1A52469B4();
  sub_1A52469A4();
  v15[0] = v7;
  sub_1A4A05194();
  sub_1A4A051EC(0, &qword_1EB120C98, MEMORY[0x1E69E62F8]);
  sub_1A4000BE0();
  sub_1A524E224();
  sub_1A5245214();
  swift_allocObject();
  sub_1A52451F4();
  PXSharingFilterFromPhotoLibrary(a1);
  sub_1A5244CE4();
  swift_allocObject();
  v8 = a1;
  sub_1A5244CD4();
  sub_1A5244FC4();
  sub_1A5244D94();
  v9 = sub_1A52451B4();
  v15[3] = sub_1A52469D4();
  v15[4] = MEMORY[0x1E69C1888];
  v15[0] = v9;
  sub_1A3C56110(0, v10);
  v11 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v11 shouldRefreshBackgroundAssetsOnAppRestart];

  v12 = sub_1A5244D84();

  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v12;
}

unint64_t sub_1A4A05194()
{
  result = qword_1EB124A50;
  if (!qword_1EB124A50)
  {
    sub_1A52469C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124A50);
  }

  return result;
}

void sub_1A4A051EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A52469C4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *sub_1A4A05254()
{
  v1 = *((*(**(v0 + 16) + 280))() + 24);
  v2 = v1;

  return v1;
}

uint64_t sub_1A4A052B8()
{
  v0 = [objc_opt_self() weakToStrongObjectsMapTable];
  sub_1A3C4A700(0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EB15EFF8 = result;
  return result;
}

double sub_1A4A0531C()
{
  swift_getKeyPath();
  (*(*v0 + 328))();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A4A05394@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 328))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__itemsObserver);

  swift_unknownObjectRetain();
  return result;
}

double sub_1A4A05428(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  (*(*v4 + 336))(KeyPath, sub_1A4A07A34, v7, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t sub_1A4A054DC()
{
  swift_getKeyPath();
  (*(*v0 + 328))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__previousAssetsCount);
}

void sub_1A4A05548(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 328))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__previousAssetsCount);
}

double sub_1A4A055F0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__previousAssetsCount) != a1)
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 336))(v3);
  }

  return result;
}

uint64_t sub_1A4A056DC()
{
  swift_getKeyPath();
  (*(*v0 + 328))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch);
}

void sub_1A4A05748(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 328))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch);
}

void sub_1A4A057F0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 336))(v3);
  }
}

uint64_t GenerativeStoryBackgroundAssetsManager.__allocating_init(photoLibrary:assetsFetcher:logger:)(void *a1, void *a2, uint64_t a3)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = sub_1A4A076EC(a1, v9, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v10;
}

uint64_t GenerativeStoryBackgroundAssetsManager.init(photoLibrary:assetsFetcher:logger:)(void *a1, void *a2, uint64_t a3)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1A4A07530(a1, v12, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v14;
}

void sub_1A4A05A5C()
{
  v1 = v0;
  v2 = sub_1A524BFF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  *v5 = sub_1A524D474();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1A524C024();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = sub_1A4A06884();
    v8 = (*(*v1 + 136))(v7);
    if (!v8 || (v9 = v8, v10 = [v8 count], v9, !v10))
    {
      swift_getKeyPath();
      (*(*v1 + 328))();

      if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch) & 1) == 0)
      {
        KeyPath = swift_getKeyPath();
        v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
        *&v15[-16] = v1;
        v15[-8] = 1;
        (*(*v1 + 336))(v12);

        v13 = v1[2];
        v14 = swift_allocObject();
        swift_weakInit();
        (*(*v13 + 416))(sub_1A4A0780C, v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1A4A05D4C(uint64_t a1)
{
  v1 = sub_1A524BEE4();
  v59 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v57 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1A524BF64();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C2A660(0, &qword_1EB147770, type metadata accessor for GenerativeStoryBackgroundAssetsManager, off_1E77210B0);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v62 = v44 - v7;
  v47 = sub_1A5246EA4();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1A5246E54();
  v9 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v48 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v44 - v15;
  v17 = sub_1A5246F24();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1A5246E94();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v44[2] = v1;
    (*(v18 + 16))(v20, Strong + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager_logger, v17);
    sub_1A5246E64();

    sub_1A5246E84();
    sub_1A5246E14();
    v60 = v22;
    v25 = sub_1A5246E84();
    v26 = sub_1A524D654();
    if (sub_1A524DEC4())
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v25, v26, v28, "GenerativeStoryBackgroundAssetsManager.fetch", "", v27, 2u);
      MEMORY[0x1A590EEC0](v27, -1, -1);
    }

    v29 = v61;
    (*(v9 + 16))(v13, v16, v61);
    sub_1A5246ED4();
    swift_allocObject();
    sub_1A5246EC4();
    v30 = *(v9 + 8);
    v30(v16, v29);
    v31 = v24[7];
    __swift_project_boxed_opaque_existential_1(v24 + 3, v24[6]);
    v32 = *(v31 + 8);
    v33 = *(v24[2] + 200);
    v44[1] = v32();

    v34 = sub_1A5246E84();
    v35 = v48;
    sub_1A5246EB4();
    v36 = sub_1A524D644();
    if (sub_1A524DEC4())
    {

      v37 = v45;
      sub_1A5246EE4();

      v38 = v46;
      v39 = v47;
      if ((*(v46 + 88))(v37, v47) == *MEMORY[0x1E69E93E8])
      {
        v40 = "[Error] Interval already ended";
      }

      else
      {
        (*(v38 + 8))(v37, v39);
        v40 = "";
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v34, v36, v43, "GenerativeStoryBackgroundAssetsManager.fetch", v40, v42, 2u);
      MEMORY[0x1A590EEC0](v42, -1, -1);
    }

    v30(v35, v61);
    type metadata accessor for GenerativeStoryBackgroundAssetsManager(0);

    sub_1A5245DF4();
  }

  return [objc_allocWithZone(MEMORY[0x1E6978840]) init];
}

double sub_1A4A06884()
{
  v1 = v0;
  swift_getKeyPath();
  (*(*v0 + 328))();

  if (!*(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__itemsObserver))
  {
    v3 = v0[2];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(*v3 + 1000);

    v5(sub_1A4A07B44, v4);

    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 336))(v7);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t GenerativeStoryBackgroundAssetsManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerativeStoryBackgroundAssetsManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4A071A0(uint64_t a1)
{
  if (qword_1EB15EFF0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB15EFF8;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1A4A07860((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  return v4;
}

id sub_1A4A07258@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  result = [v11 objectForKey_];
  if (!result)
  {
    PXDisplayCollectionDetailedCountsMake();
    v13 = sub_1A3C4A780();
    (*(v7 + 16))(v10, v13, v6);
    type metadata accessor for GenerativeStoryBackgroundAssetsManager(0);
    v14 = swift_allocObject();
    v15 = a2;
    v16 = sub_1A4A073A4(v15, v10, v14);
    [v11 setObject:v16 forKey:v15];
    result = v16;
  }

  *a3 = result;
  return result;
}

uint64_t sub_1A4A073A4(void *a1, uint64_t a2, uint64_t a3)
{
  v14[3] = &type metadata for GenerativeStoryBackgroundAssetsFetcher;
  v14[4] = &off_1F1733C78;
  v6 = (a3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__itemsObserver);
  *v6 = 0;
  v6[1] = 0;
  *(a3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__previousAssetsCount) = 0;
  *(a3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch) = 0;
  sub_1A5241604();
  sub_1A3C341C8(v14, a3 + 24);
  v7 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager_logger;
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a3 + v7, a2, v8);
  sub_1A4A07A4C(0);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  sub_1A43FD8EC();
  v10 = PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(a1, 0, v12);
  (*(v9 + 8))(a2, v8);
  __swift_destroy_boxed_opaque_existential_0(v14);
  *(a3 + 16) = v10;
  return a3;
}

uint64_t sub_1A4A07530(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[3] = a5;
  v20[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v12 = (a4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__itemsObserver);
  *v12 = 0;
  v12[1] = 0;
  *(a4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__previousAssetsCount) = 0;
  *(a4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch) = 0;
  sub_1A5241604();
  sub_1A3C341C8(v20, a4 + 24);
  v13 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager_logger;
  v14 = sub_1A5246F24();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a4 + v13, a3, v14);
  sub_1A4A07A4C(0);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  sub_1A43FD8EC();
  v16 = PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(a1, 0, v18);
  (*(v15 + 8))(a3, v14);
  __swift_destroy_boxed_opaque_existential_0(v20);
  *(a4 + 16) = v16;
  return a4;
}

uint64_t sub_1A4A076EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeStoryBackgroundAssetsManager(0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a2, a5);
  return sub_1A4A07530(a1, v13, a3, v14, a5, a6);
}

uint64_t type metadata accessor for GenerativeStoryBackgroundAssetsManager(uint64_t a1)
{
  result = qword_1EB15EFC8;
  if (!qword_1EB15EFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4A07894(uint64_t a1)
{
  result = sub_1A5246F24();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1A4A07A4C(uint64_t a1)
{
  if (!qword_1EB129F98)
  {
    v2 = sub_1A3C52C70(255, &qword_1EB126660, 0x1E6978630);
    v5 = type metadata accessor for PhotoKitItemListManager(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB129F98);
    }
  }
}