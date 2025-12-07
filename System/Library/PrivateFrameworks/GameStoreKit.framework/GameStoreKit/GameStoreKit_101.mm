double static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, double a9, double a10, unsigned __int8 a11)
{
  v40 = a7;
  v39 = a6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v37[-v20];
  v22 = sub_24F922378();
  v23 = *(v22 - 8);
  *&v24 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v26 = &v37[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = [a8 traitCollection];
  v28 = v27;
  if (a1)
  {
    v38 = a11;
    sub_24E934D5C(a2, v21);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      v29 = a1;
      sub_24E934E3C(v21);
      v30 = objc_opt_self();
      v31 = *MEMORY[0x277D76918];
      v32 = v29;
      v33 = [v30 preferredFontForTextStyle:v31 compatibleWithTraitCollection:0];
      a4 = 0;
      a5 = 0;
      a3 = 4;
    }

    else
    {
      (*(v23 + 32))(v26, v21, v22);
      sub_24E6C065C();
      v35 = a1;
      v33 = MEMORY[0x253051BF0](v26, v28);
      (*(v23 + 8))(v26, v22);
    }

    v46[0] = a1;
    v46[1] = 0;
    LOBYTE(v47) = 1;
    *(&v47 + 1) = v33;
    *&v48 = a3;
    *(&v48 + 1) = a4;
    *&v49 = a5;
    *(&v49 + 1) = v39;
    LOBYTE(v50) = v40 & 1;
    HIBYTE(v50) = v38 & 1;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v42 = v47;
    v41 = a1;
    sub_24F052F98(v46, v51);
    *&v34 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a10, *&a9), v28);

    sub_24F052864(v46);
    v51[2] = v43;
    v51[3] = v44;
    v52 = v45;
    v51[0] = v41;
    v51[1] = v42;
    sub_24F052864(v51);
  }

  else
  {

    return 0.0;
  }

  return v34;
}

double static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, UITraitCollection a8, double a9, double a10, unsigned __int8 a11)
{
  v37 = a7;
  v36 = a6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v34[-v20];
  v22 = sub_24F922378();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v34[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    return 0.0;
  }

  v35 = a11;
  sub_24E934D5C(a2, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v26 = a1;
    sub_24E934E3C(v21);
    v27 = objc_opt_self();
    v28 = *MEMORY[0x277D76918];
    v29 = v26;
    v30 = [v27 preferredFontForTextStyle:v28 compatibleWithTraitCollection:0];
    a4 = 0;
    a5 = 0;
    a3 = 4;
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    sub_24E6C065C();
    v32 = a1;
    v30 = MEMORY[0x253051BF0](v25, a8.super.isa);
    (*(v23 + 8))(v25, v22);
  }

  v43[0] = a1;
  v43[1] = 0;
  LOBYTE(v44) = 1;
  *(&v44 + 1) = v30;
  *&v45 = a3;
  *(&v45 + 1) = a4;
  *&v46 = a5;
  *(&v46 + 1) = v36;
  LOBYTE(v47) = v37 & 1;
  HIBYTE(v47) = v35 & 1;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  v39 = v44;
  v38 = a1;
  sub_24F052F98(v43, v48);
  *&v31 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a10, *&a9), a8);
  sub_24F052864(v43);

  v48[2] = v40;
  v48[3] = v41;
  v49 = v42;
  v48[0] = v38;
  v48[1] = v39;
  sub_24F052864(v48);
  return v31;
}

double sub_24F052FD0(void *a1, double a2, double a3)
{
  v5 = [a1 traitCollection];
  *&v6 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a3, *&a2), v5);

  return v6;
}

uint64_t sub_24F053058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F0530A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*sub_24F053104(double **a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5 + 24);
  v7 = __swift_project_boxed_opaque_existential_1((v1 + v5), v6);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  (*(v8 + 16))(&v21 - v10, v9);
  sub_24F922218();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v11, v6);
  *v4 = v13;
  v4[1] = v15;
  v4[2] = v17;
  v4[3] = v19;
  return sub_24F05326C;
}

void sub_24F05326C(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 32) + *(*a1 + 40));
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v9 - v7;
  (*(v5 + 16))(&v9 - v7, v6);
  sub_24F922228();
  (*(v5 + 8))(v8, v3);
  free(v1);
}

uint64_t (*sub_24F053390(uint64_t a1))()
{
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_24F922238();
  (*(v6 + 8))(v9, v4);
  *(a1 + 16) = v10 & 1;
  return sub_24F0534B4;
}

uint64_t sub_24F0534B4(void *a1)
{
  v1 = (*a1 + a1[1]);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v5);
  sub_24F922248();
  return (*(v4 + 8))(v7, v2);
}

uint64_t (*sub_24F0535B0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_24F922468();
  (*(v6 + 8))(v9, v4);
  *a1 = v10;
  return sub_24F0536D0;
}

uint64_t (*sub_24F0536E8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_24F922448();
  (*(v6 + 8))(v9, v4);
  *a1 = v10;
  return sub_24F053808;
}

uint64_t sub_24F053820(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (a1[1] + a1[2]);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v10);
  a3(v4, v6, v7);
  return (*(v9 + 8))(v12, v6);
}

void (*sub_24F053924(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_24F922498();
  (*(v6 + 8))(v9, v4);
  *a1 = v10;
  return sub_24F053A44;
}

void sub_24F053A44(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*(a1 + 8) + *(a1 + 16));
  v5 = v4[3];
  v6 = __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v8);
  if (a2)
  {
    v11 = v3;
    sub_24F9224A8();
    (*(v7 + 8))(v10, v5);
  }

  else
  {
    sub_24F9224A8();
    (*(v7 + 8))(v10, v5);
  }
}

void (*sub_24F053C18(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F0535B0(v2);
  return sub_24F054918;
}

void (*sub_24F053CBC(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F0536E8(v2);
  return sub_24F054918;
}

uint64_t sub_24F053D60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = (*v4 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v8 = v7[3];
  v9 = v7[4];
  v10 = __swift_project_boxed_opaque_existential_1(v7, v8);
  v11 = *(v8 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  (*(v11 + 16))(&v16 - v13, v12);
  a4(a1, v8, v9);
  return (*(v11 + 8))(v14, v8);
}

void (*sub_24F053E68(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F053924(v2);
  return sub_24F054918;
}

uint64_t sub_24F053EDC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, v5);
  v8 = sub_24F922428();
  (*(v4 + 8))(v7, v2);
  return v8 & 1;
}

double sub_24F053FD4()
{
  v1 = (*v0 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  (*(v4 + 16))(&v11 - v6, v5);
  sub_24F922488();
  v9 = v8;
  (*(v4 + 8))(v7, v2);
  return v9;
}

uint64_t sub_24F05410C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = (*v3 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, v10);
  v13 = a3(v6, v7);
  (*(v9 + 8))(v12, v6);
  return v13;
}

uint64_t sub_24F05422C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v5);
  sub_24F922228();
  return (*(v4 + 8))(v7, v2);
}

void (*sub_24F05434C(double ***a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F053104(v2);
  return sub_24EA092C8;
}

uint64_t sub_24F0543D8(uint64_t a1)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v6);
  sub_24F922248();
  return (*(v5 + 8))(v8, v3);
}

void (*sub_24F0544D8(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F053390(v2);
  return sub_24F054918;
}

uint64_t sub_24F054564(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = (*v3 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v10);
  LOBYTE(a3) = a3(v6, *(v7 + 8));
  (*(v9 + 8))(v12, v6);
  return a3 & 1;
}

double sub_24F054684(uint64_t a1, uint64_t a2, double (*a3)(uint64_t, void))
{
  v5 = (*v3 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, v10);
  v13 = a3(v6, *(v7 + 8));
  (*(v9 + 8))(v12, v6);
  return v13;
}

double sub_24F0547B4(uint64_t a1, double a2, double a3)
{
  sub_24E615E00(*v3 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24F922288();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t sub_24F0548D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _LabelPlaceholderReferableLayoutTextView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id Array<A>.totalTopSupplementaryHeight.getter(uint64_t a1, uint64_t a2)
{
  result = sub_24F92B648();
  if (result)
  {
    v4 = 4;
    v5 = 0.0;
    while (1)
    {
      v10 = sub_24F92B628();
      sub_24F92B5D8();
      result = (v10 & 1) != 0 ? *(a1 + 8 * v4) : sub_24F92C8D8();
      v11 = result;
      v12 = (v4 - 3);
      if (__OFADD__(v4 - 4, 1))
      {
        break;
      }

      if ([result alignment] == 1)
      {
        v6 = [v11 layoutSize];
        v7 = [v6 heightDimension];

        [v7 dimension];
        v9 = v8;

        v5 = v5 + v9;
      }

      else
      {
      }

      result = sub_24F92B648();
      ++v4;
      if (v12 == result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

id Array<A>.totalBottomSupplementaryHeight.getter(uint64_t a1, uint64_t a2)
{
  result = sub_24F92B648();
  if (result)
  {
    v4 = 4;
    v5 = 0.0;
    while (1)
    {
      v10 = sub_24F92B628();
      sub_24F92B5D8();
      result = (v10 & 1) != 0 ? *(a1 + 8 * v4) : sub_24F92C8D8();
      v11 = result;
      v12 = (v4 - 3);
      if (__OFADD__(v4 - 4, 1))
      {
        break;
      }

      if ([result alignment] == 5)
      {
        v6 = [v11 layoutSize];
        v7 = [v6 heightDimension];

        [v7 dimension];
        v9 = v8;

        v5 = v5 + v9;
      }

      else
      {
      }

      result = sub_24F92B648();
      ++v4;
      if (v12 == result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F054BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24F92B6E8();
  swift_getWitnessTable();
  return sub_24F92B4B8() & 1;
}

uint64_t ComponentPrefetchSizing.init(size:contentMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  return result;
}

uint64_t Conditional<>.init(property:trueValue:falseValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v21 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  type metadata accessor for TraitsExpression(0, *(v15 + *MEMORY[0x277D84DE8]), v16, v16);
  v17 = *(v9 + 16);
  v17(v14, a2, a4);
  v17(v11, a3, a4);
  swift_allocObject();
  v18 = sub_24F055018(a1, v14, v11);
  v19 = *(v9 + 8);
  v19(a3, a4);
  v19(a2, a4);
  result = sub_24E5FA814(v18, &v22);
  *v21 = v22;
  return result;
}

void Conditional.evaluate<>(in:)(void *a1)
{
  v2 = objc_allocWithZone(sub_24F922A18());
  v3 = a1;
  v4 = sub_24F922A08();
  Conditional.evaluate(with:)();
}

__n128 sub_24F05500C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24F055018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  *(v3 + 2) = a1;
  v6 = *(v5 + 128);
  v7 = *(*(v6 - 8) + 32);
  v7(&v3[*(v5 + 144)], a2, v6);
  v7(&v3[*(*v3 + 152)], a3, v6);

  return sub_24F04E8C0();
}

uint64_t sub_24F0550E4()
{
  sub_24F92C888();
  MEMORY[0x253050C20](0x79747265706F7270, 0xEA0000000000203ALL);
  sub_24F92D138();
  sub_24F92CDC8();
  MEMORY[0x253050C20](0xD000000000000010, 0x800000024FA64ED0);
  sub_24F92CDC8();
  MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA64EF0);
  sub_24F92CDC8();
  return 0;
}

uint64_t sub_24F055234@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  v5 = 152;
  if (v7)
  {
    v5 = 144;
  }

  return (*(*(*(v4 + 128) - 8) + 16))(a2, &v2[*(*v2 + v5)]);
}

uint64_t sub_24F05531C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v5 = *(*(v2 - 8) + 8);
  v5(&v0[*(*v0 + 144)], v2);
  v3 = &v0[*(*v0 + 152)];

  return (v5)(v3, v2);
}

uint64_t sub_24F0553E4()
{
  v1 = *v0;
  v2 = sub_24F04E8C0();

  v3 = *(v1 + 128);
  v4 = *(*(v3 - 8) + 8);
  v4(v2 + *(*v2 + 144), v3);
  v4(v2 + *(*v2 + 152), v3);
  return v2;
}

uint64_t sub_24F0554A0()
{
  sub_24F0553E4();

  return swift_deallocClassInstance();
}

uint64_t sub_24F055508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a6@<X8>)
{
  v24 = a6;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  type metadata accessor for TraitsExpression(0, v16, v17, v17);
  v25 = a3;
  v26 = a4;
  KeyPath = swift_getKeyPath();
  v19 = *(v10 + 16);
  v19(v15, a1, a4);
  v19(v12, a2, a4);
  swift_allocObject();
  v20 = sub_24F055018(KeyPath, v15, v12);
  v21 = *(v10 + 8);
  v21(a2, a4);
  v21(a1, a4);
  result = sub_24E5FA814(v20, &v27);
  *v24 = v27;
  return result;
}

uint64_t sub_24F0556C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F92BF98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F0556F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F92BF98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F055738@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24F92BF78();
  *a2 = result & 1;
  return result;
}

uint64_t Conditional<>.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  v15 = *(v8 + 16);
  v15(&v17 - v13, a1, v12);
  (v15)(v10, a1, a3);
  Conditional<>.init(regularValue:compactValue:)(v14, v10, a2, a3, &v18);
  result = (*(v8 + 8))(a1, a3);
  *a4 = v18;
  return result;
}

uint64_t sub_24F0558C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SearchChartsAndCategoriesDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v53 = a3;
  v49 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = swift_allocObject();
  sub_24E99091C(a2, v16);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_24E911D90(v16, v20 + v18);
  v50 = a1;
  *(v20 + v19) = a1;
  v21 = v13;
  sub_24E99091C(a2, v13);
  sub_24E99091C(v13, v10);
  *(v17 + qword_27F22F198) = 0;
  v22 = MEMORY[0x277D84F90];
  *(v17 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v23 = qword_27F39C780;

  *(v17 + v23) = sub_24E60986C(v22);
  v24 = (v17 + qword_27F22F1A8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v17 + qword_27F22F1B0);
  *v25 = 0;
  v25[1] = 0;
  v52 = v25;
  v26 = (v17 + qword_27F22F1B8);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v17 + qword_27F22F1C0);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v17 + qword_27F22F1C8);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v17 + qword_27F39C788);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 25) = 0u;
  *(v17 + qword_27F39C790) = 0;
  *(v17 + qword_27F22F1D0) = 0;
  *(v17 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v17 + qword_27F39C798) = 0;
  v30 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC80, &unk_24F9DF850);
  swift_allocObject();
  *(v17 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v17 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC98, &unk_24F9DF860);
  swift_allocObject();
  *(v17 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7B8;
  swift_allocObject();
  *(v17 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v17 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v36 = sub_24F92ADA8();

  sub_24E70E058(v49);
  sub_24E70E058(v21);
  *(v17 + v35) = v36;
  v37 = qword_27F22F1E0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v39 = *(*(v38 - 8) + 56);
  v39(v17 + v37, 1, 1, v38);
  v40 = v38;
  v41 = v53;
  v39(v17 + qword_27F22F1E8, 1, 1, v40);
  v42 = v51;
  *(v17 + 16) = v50;
  sub_24E911D90(v42, v17 + qword_27F39C7D0);
  *v24 = sub_24F056678;
  v24[1] = v20;
  *v26 = 0;
  v26[1] = 0;
  if (v41)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    v44 = sub_24E965688;
  }

  else
  {
    v44 = 0;
    v43 = 0;
  }

  v45 = v52;
  *v52 = v44;
  v45[1] = v43;
  *v27 = 0;
  v27[1] = 0;
  *v28 = 0;
  v28[1] = 0;
  v46 = v55;
  *(v17 + qword_27F22F1F0) = v54;
  *(v17 + qword_27F39C7D8) = v46;
  return v17;
}

uint64_t SearchChartsAndCategoriesDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a4;
  v63 = a5;
  v61 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  sub_24E99091C(a2, &v56 - v16);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_24E911D90(v17, v19 + v18);
  v57 = v14;
  v58 = a1;
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v20 = v19;
  sub_24E99091C(a2, v14);
  sub_24E99091C(v14, &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v6 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v6 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;

  *(v6 + v22) = sub_24E60986C(v21);
  v23 = (v6 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v6 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v6 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v6 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v59 = v27;
  v28 = (v6 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v6 + qword_27F39C790) = 0;
  *(v6 + qword_27F22F1D0) = 0;
  *(v6 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC80, &unk_24F9DF850);
  swift_allocObject();
  *(v6 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v6 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC98, &unk_24F9DF860);
  swift_allocObject();
  *(v6 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v6 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v6 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v35 = sub_24F92ADA8();

  sub_24E70E058(a2);
  sub_24E70E058(v57);
  *(v6 + v34) = v35;
  v36 = qword_27F22F1E0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v38 = *(*(v37 - 8) + 56);
  v38(v6 + v36, 1, 1, v37);
  v39 = v37;
  v40 = v61;
  v38(v6 + qword_27F22F1E8, 1, 1, v39);
  *(v6 + 16) = v58;
  sub_24E911D90(v60, v6 + qword_27F39C7D0);
  v41 = *v23;
  v42 = v23[1];
  *v23 = sub_24F056AF0;
  v23[1] = v20;
  sub_24E824448(v41, v42);
  v43 = *v25;
  v44 = v25[1];
  *v25 = 0;
  v25[1] = 0;
  sub_24E824448(v43, v44);
  if (v40)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v40;
    v46 = sub_24EC02BCC;
  }

  else
  {
    v46 = 0;
    v45 = 0;
  }

  v48 = *v24;
  v47 = v24[1];
  *v24 = v46;
  v24[1] = v45;
  sub_24E824448(v48, v47);
  v49 = *v26;
  v50 = v26[1];
  *v26 = 0;
  v26[1] = 0;
  sub_24E824448(v49, v50);
  v51 = v59;
  v52 = *v59;
  v53 = v59[1];
  *v59 = 0;
  v51[1] = 0;
  sub_24E824448(v52, v53);
  v54 = v63;
  *(v6 + qword_27F22F1F0) = v62;
  *(v6 + qword_27F39C7D8) = v54;
  return v6;
}

uint64_t sub_24F0563B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchChartsAndCategoriesPageIntent(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_24F91F4A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E99091C(a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E70E058(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229618, &qword_24F9851C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237D70, &unk_24F9C1E90);
    sub_24F056A28();
    swift_allocError();
    *v15 = 0;
    return sub_24F92A978();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    (*(v12 + 16))(&v7[*(v5 + 20)], v14, v11);
    *v7 = 0xD000000000000023;
    *(v7 + 1) = 0x800000024FA69790;
    v17 = sub_24EB48C40(v7, a3, "GameStoreKit/SearchChartsAndCategoriesDiffablePageContentPresenter.swift", 72, 2);

    sub_24F056A8C(v7);
    (*(v12 + 8))(v14, v11);
    return v17;
  }
}

uint64_t SearchChartsAndCategoriesDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24F056704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_24E824448(a10, a11);
  sub_24E824448(a6, a7);
  sub_24E824448(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24F05676C()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_50()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F0568D0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F0563B0(a1, v1 + v4, v5);
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_27F237D60;
  if (!qword_27F237D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F056A28()
{
  result = qword_27F237D78;
  if (!qword_27F237D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237D70, &unk_24F9C1E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237D78);
  }

  return result;
}

uint64_t sub_24F056A8C(uint64_t a1)
{
  v2 = type metadata accessor for SearchChartsAndCategoriesPageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.selectedOption.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16);
  v7[0] = *(v1 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption);
  v7[1] = v2;
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 48);
  v8 = *(v1 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 32);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_24F0570B0(v7, &v6);
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = *v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v36 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v43 = sub_24F928388();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v50 = a1;
  sub_24F928398();
  v40 = *(v7 + 16);
  v40(v13, a2, v6);
  v19 = v41;
  PageFacets.Facet.init(deserializing:using:)(v18, v13, v48);
  if (v19)
  {
    (*(v7 + 8))(a2, v6);
    (*(v42 + 8))(v50, v43);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v7;
    v20 = v3 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet;
    v21 = v48[7];
    *(v20 + 6) = v48[6];
    *(v20 + 7) = v21;
    *(v20 + 16) = v49;
    v22 = v48[3];
    *(v20 + 2) = v48[2];
    *(v20 + 3) = v22;
    v23 = v48[5];
    *(v20 + 4) = v48[4];
    *(v20 + 5) = v23;
    v24 = v48[1];
    *v20 = v48[0];
    *(v20 + 1) = v24;
    v25 = v50;
    sub_24F928398();
    v40(v36, a2, v6);
    sub_24EDCB6C8();
    sub_24F929548();
    v26 = (v3 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption);
    v27 = v45;
    *v26 = v44;
    v26[1] = v27;
    v28 = v47;
    v26[2] = v46;
    v26[3] = v28;
    v29 = v42;
    v30 = v37;
    v31 = v25;
    v32 = v6;
    v33 = v43;
    (*(v42 + 16))(v37, v31, v43);
    v34 = v38;
    v40(v38, a2, v32);
    v6 = Action.init(deserializing:using:)(v30, v34);
    (*(v41 + 8))(a2, v32);
    (*(v29 + 8))(v50, v33);
  }

  return v6;
}

uint64_t sub_24F0570B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A668, &unk_24F9876E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F057150()
{
  sub_24E7726D0(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet);
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 8);
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16);
  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 24);

  return sub_24F0572A0(v1, v2, v3, v4);
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  sub_24E7726D0(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet);
  sub_24F0572A0(*(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 24));
  return v0;
}

uint64_t sub_24F0572A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  v3 = OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet;

  sub_24E7726D0(v0 + v3);
  sub_24F0572A0(*(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeSeeAllGamesPageSegmentChangeAction(uint64_t a1)
{
  result = qword_27F237D80;
  if (!qword_27F237D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GameStoreKit::AccessPointMetricsHelper::actionKeys_optional __swiftcall AccessPointMetricsHelper.actionKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AccessPointMetricsHelper.actionKeys.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6E6F697461636F6CLL;
    v7 = 0x6973736572706D69;
    if (v1 != 8)
    {
      v7 = 0x707041666572;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x7954746567726174;
    if (v1 != 5)
    {
      v8 = 0x6449746567726174;
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
    v2 = 0x707954746E657665;
    v3 = 0x6570795465676170;
    v4 = 0x644965676170;
    if (v1 != 3)
    {
      v4 = 0x746E6F4365676170;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x79546E6F69746361;
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

uint64_t sub_24F057700@<X0>(uint64_t *a1@<X8>)
{
  result = AccessPointMetricsHelper.actionKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::AccessPointMetricsHelper::impressionKeys_optional __swiftcall AccessPointMetricsHelper.impressionKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessPointMetricsHelper.impressionKeys.rawValue.getter()
{
  v1 = 0x657079546469;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6973736572706D69;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_24F05783C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F057930(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F057A10()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F057B0C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x657079546469;
  v5 = 0x800000024FA42AC0;
  v6 = 0xD000000000000012;
  v7 = 0xEF7865646E496E6FLL;
  if (v2 != 3)
  {
    v7 = 0xEE00657079546E6FLL;
  }

  if (v2 != 2)
  {
    v6 = 0x6973736572706D69;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

GameStoreKit::AccessPointMetricsHelper::impressionType_optional __swiftcall AccessPointMetricsHelper.impressionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessPointMetricsHelper.impressionType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x42656D6F636C6577;
    if (v1 != 6)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD00000000000001ELL;
    if (v1 == 4)
    {
      v6 = 0xD000000000000020;
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
    v2 = 0x6F50737365636361;
    v3 = 0xD000000000000017;
    if (v1 != 2)
    {
      v3 = 0x6142656D61476E69;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
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

void sub_24F057D7C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xED000072656E6E61;
    v9 = 0x42656D6F636C6577;
    if (v2 != 6)
    {
      v9 = 0xD000000000000016;
      v8 = 0x800000024FA42B20;
    }

    v10 = 0x800000024FA3ED00;
    v11 = 0xD00000000000001ELL;
    if (v2 == 4)
    {
      v11 = 0xD000000000000020;
    }

    else
    {
      v10 = 0x800000024FA3ED30;
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
    v3 = 0xEB00000000746E69;
    v4 = 0x6F50737365636361;
    v5 = 0x800000024FA42B00;
    v6 = 0xD000000000000017;
    if (v2 != 2)
    {
      v6 = 0x6142656D61476E69;
      v5 = 0xEC00000072656E6ELL;
    }

    if (*v1)
    {
      v4 = 0xD000000000000014;
      v3 = 0x800000024FA42A80;
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

GameStoreKit::AccessPointMetricsHelper::eventType_optional __swiftcall AccessPointMetricsHelper.eventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AccessPointMetricsHelper.eventType.rawValue.getter()
{
  v1 = 0x6B63696C63;
  v2 = 0x676F6C616964;
  if (*v0 != 2)
  {
    v2 = 0x6973736572706D69;
  }

  if (*v0)
  {
    v1 = 0x686372616573;
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

uint64_t sub_24F057F94()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F058054(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F058100()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0581C8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6B63696C63;
  v4 = 0xE600000000000000;
  v5 = 0x676F6C616964;
  if (*v1 != 2)
  {
    v5 = 0x6973736572706D69;
    v4 = 0xEB00000000736E6FLL;
  }

  if (*v1)
  {
    v3 = 0x686372616573;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t AccessPointMetricsHelper.actionType.rawValue.getter()
{
  if (*v0)
  {
    return 1852141679;
  }

  else
  {
    return 0x657461676976616ELL;
  }
}

uint64_t sub_24F058284(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1852141679;
  }

  else
  {
    v3 = 0x657461676976616ELL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1852141679;
  }

  else
  {
    v5 = 0x657461676976616ELL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F058324()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0583A0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F058408()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F05848C(uint64_t *a1@<X8>)
{
  v2 = 1852141679;
  if (!*v1)
  {
    v2 = 0x657461676976616ELL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

GameStoreKit::AccessPointMetricsHelper::targetType_optional __swiftcall AccessPointMetricsHelper.targetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessPointMetricsHelper.targetType.rawValue.getter()
{
  v1 = 0x6F50737365636361;
  v2 = 0x72656E6E6162;
  if (*v0 != 2)
  {
    v2 = 1701736302;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_24F0585A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F05866C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F05871C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0587E8(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000746E69;
  v3 = 0x6F50737365636361;
  v4 = 0xE600000000000000;
  v5 = 0x72656E6E6162;
  if (*v1 != 2)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x800000024FA42A80;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

GameStoreKit::AccessPointMetricsHelper::targetId_optional __swiftcall AccessPointMetricsHelper.targetId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessPointMetricsHelper.targetId.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x7250646E65697266;
    v7 = 0x73646E65697266;
    if (v1 != 8)
    {
      v7 = 0x72616F6268736164;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6D65766569686361;
    if (v1 != 5)
    {
      v8 = 0x656C69666F7270;
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
    v2 = 0x656461637261;
    v3 = 0xD000000000000016;
    v4 = 0x6F6272656461656CLL;
    if (v1 != 3)
    {
      v4 = 0x49656C69666F7270;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x614E726579616C70;
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

uint64_t sub_24F058B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_24F92D068();
  a3(v7, v5);
  return sub_24F92D0B8();
}

uint64_t sub_24F058B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_24F92D068();
  a4(v8, v6);
  return sub_24F92D0B8();
}

unint64_t sub_24F058BC8@<X0>(unint64_t *a1@<X8>)
{
  result = AccessPointMetricsHelper.targetId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::AccessPointMetricsHelper::pageId_optional __swiftcall AccessPointMetricsHelper.pageId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessPointMetricsHelper.pageId.rawValue.getter()
{
  v1 = 0x6142656D61476E69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F50737365636361;
  }
}

uint64_t sub_24F058D70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6142656D61476E69;
  v4 = 0xEC00000072656E6ELL;
  v5 = 0x800000024FA42B50;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000024FA42B50;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F50737365636361;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEF65676150746E69;
  }

  v8 = 0x6142656D61476E69;
  if (*a2 == 1)
  {
    v5 = 0xEC00000072656E6ELL;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F50737365636361;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEF65676150746E69;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F058E84()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F058F40(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F058FE8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0590AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF65676150746E69;
  v4 = 0xEC00000072656E6ELL;
  v5 = 0x6142656D61476E69;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000024FA42B50;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F50737365636361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

GameStoreKit::AccessPointMetricsHelper::pageType_optional __swiftcall AccessPointMetricsHelper.pageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessPointMetricsHelper.pageType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F50737365636361;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000020;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x42656D6F636C6577;
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

uint64_t sub_24F0592F0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0593EC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0594D4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0595D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000746E69;
  v4 = 0x6F50737365636361;
  v5 = 0xD000000000000017;
  v6 = 0x800000024FA42B00;
  v7 = 0x800000024FA42B70;
  v8 = 0xD000000000000020;
  if (v2 != 3)
  {
    v8 = 0xD00000000000001ELL;
    v7 = 0x800000024FA42BA0;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x42656D6F636C6577;
    v3 = 0xED000072656E6E61;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t AccessPointMetricsHelper.pageContext.rawValue.getter()
{
  if (*v0)
  {
    return 0x7261506472696874;
  }

  else
  {
    return 0x72616F6268736164;
  }
}

uint64_t sub_24F0596E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7261506472696874;
  }

  else
  {
    v3 = 0x72616F6268736164;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEA00000000007974;
  }

  if (*a2)
  {
    v5 = 0x7261506472696874;
  }

  else
  {
    v5 = 0x72616F6268736164;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007974;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F059790()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F05981C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F059894()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F059928(uint64_t *a1@<X8>)
{
  v2 = 0x72616F6268736164;
  if (*v1)
  {
    v2 = 0x7261506472696874;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEA00000000007974;
  }

  *a1 = v2;
  a1[1] = v3;
}

double static AccessPointMetricsHelper.postImpressionsEvent(pageFields:hostApp:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a3;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = sub_24F929AB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v46 = swift_allocBox();
  v21 = v20;
  sub_24F929AA8();
  v48 = a4;
  v49 = MEMORY[0x277D221C0];

  sub_24F929A68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  sub_24F929A48();
  v22 = v44;
  (*(v10 + 8))(v12, v9);

  v23 = *(v14 + 8);
  v23(v19, v13);
  if (v22)
  {
    (*(v14 + 16))(v16, v21, v13);
    v48 = v43;
    v49 = v22;
    v24 = v40;
    sub_24F920028();
    sub_24F929A48();
    (*(v41 + 8))(v24, v42);
    v23(v16, v13);
    (*(v14 + 40))(v21, v19, v13);
  }

  v25 = sub_24E6086DC(&unk_2861C1170);
  sub_24E601704(&unk_2861C1190, &qword_27F219F90, &qword_24F955020);
  v26 = v45;
  if (v45)
  {

    sub_24E954060(v25);
    v28 = v27;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v26;
    sub_24EF4B5B4(v28, sub_24F05AC64, 0, isUniquelyReferenced_nonNull_native, &v48);

    v30 = v48;
  }

  else
  {
    sub_24E954060(v25);
    v30 = v31;
  }

  v32 = sub_24F92B858();
  v33 = v47;
  (*(*(v32 - 8) + 56))(v47, 1, 1, v32);
  sub_24F92B7F8();
  v34 = v46;

  v35 = sub_24F92B7E8();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v30;
  v36[5] = v34;
  sub_24EA9A4D8(0, 0, v33, &unk_24F9C1F78, v36);

  return result;
}

uint64_t sub_24F059E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a1;
  v5[6] = a4;
  v6 = sub_24F929AB8();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_24F928698();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = sub_24F929158();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_projectBox();
  sub_24F92B7F8();
  v5[17] = sub_24F92B7E8();
  v10 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F05A018, v10, v9);
}

uint64_t sub_24F05A018()
{

  sub_24F91FF58();
  sub_24F91FF48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v1 = sub_24F92A2C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  if (qword_27F210290 != -1)
  {
    swift_once();
  }

  v18 = v0[14];
  v19 = v0[13];
  v5 = v0[12];
  v14 = v0[15];
  v15 = v0[11];
  v6 = v0[9];
  v7 = v0[8];
  v12 = v0[16];
  v13 = v0[7];
  v16 = v0[10];
  v17 = v0[5];
  v8 = __swift_project_value_buffer(v1, qword_27F229C08);
  (*(v2 + 16))(v4 + v3, v8, v1);
  sub_24E805DFC(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();

  sub_24F928658();
  swift_beginAccess();
  (*(v7 + 16))(v6, v12, v13);
  v9 = sub_24F929138();
  (*(v7 + 8))(v6, v13);
  (*(v15 + 8))(v5, v16);
  (*(v18 + 8))(v14, v19);
  *v17 = v9;

  v10 = v0[1];

  return v10();
}

double static AccessPointMetricsHelper.postPageEvent(hostApp:pageFields:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030, &unk_24F98A430);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = sub_24F929AB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v35 = swift_allocBox();
  v21 = v20;
  sub_24F929AA8();
  v37 = a3;
  sub_24F929A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  sub_24F929A48();
  v22 = v34;
  (*(v10 + 8))(v12, v9);
  v23 = *(v14 + 8);
  v23(v19, v13);
  if (v22)
  {
    (*(v14 + 16))(v16, v21, v13);
    v37 = v33;
    v38 = v22;
    sub_24F920028();
    sub_24F929A48();
    (*(v31 + 8))(v8, v32);
    v23(v16, v13);
    (*(v14 + 40))(v21, v19, v13);
  }

  v24 = sub_24F92B858();
  v25 = v36;
  (*(*(v24 - 8) + 56))(v36, 1, 1, v24);
  sub_24F92B7F8();
  v26 = v35;

  v27 = sub_24F92B7E8();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v26;
  sub_24EA9A4D8(0, 0, v25, &unk_24F9C1F88, v28);

  return result;
}

uint64_t sub_24F05A6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a1;
  v5 = sub_24F929AB8();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = sub_24F929458();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = sub_24F928698();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v8 = sub_24F929158();
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_projectBox();
  sub_24F92B7F8();
  v4[29] = sub_24F92B7E8();
  v10 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F05A914, v10, v9);
}

uint64_t sub_24F05A914()
{
  v21 = v0[28];
  v1 = v0[27];
  v25 = v0[26];
  v26 = v0[25];
  v18 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[17];
  v19 = v0[16];
  v20 = v0[18];
  v24 = v0[15];

  sub_24F91FF58();
  sub_24F91FF48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  v7 = v3;
  sub_24F9293E8();
  v8 = sub_24F929448();
  v10 = v9;
  (*(v2 + 8))(v7, v4);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  sub_24E608448(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F2135C0, &qword_24F970400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v11 = sub_24F92A2C8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93DE60;
  sub_24F92A288();
  sub_24E805DFC(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  sub_24F928658();
  swift_beginAccess();
  (*(v5 + 16))(v20, v21, v19);
  v15 = sub_24F929138();
  (*(v5 + 8))(v20, v19);
  (*(v22 + 8))(v18, v23);
  (*(v25 + 8))(v1, v26);
  *v24 = v15;

  v16 = v0[1];

  return v16();
}

double sub_24F05AC64@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_24E643A9C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void _s12GameStoreKit24AccessPointMetricsHelperO11recordClick13metricsFields7hostAppySDySSypG_SSSgtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 16) && (v5 = sub_24E76D644(0x644965676170, 0xE600000000000000), (v6 & 1) != 0) && (sub_24E643A9C(*(a1 + 56) + 32 * v5, v19), (swift_dynamicCast() & 1) != 0))
  {
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_24E76D644(0x6570795465676170, 0xE800000000000000);
  if (v8)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v7, v19);
    if (swift_dynamicCast())
    {
      if (!*(a1 + 16))
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

LABEL_11:
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_12:
  v9 = sub_24E76D644(0x6449746567726174, 0xE800000000000000);
  if (v10)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v9, v19);
    if (swift_dynamicCast())
    {
      if (!*(a1 + 16))
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

LABEL_16:
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

LABEL_17:
  v11 = sub_24E76D644(0x7954746567726174, 0xEA00000000006570);
  if (v12)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v11, v19);
    swift_dynamicCast();
  }

LABEL_19:
  v13 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
  v14 = sub_24F92B098();
  v15 = sub_24F92B098();

  v16 = sub_24F92B098();

  v17 = sub_24F92B098();

  v18 = sub_24F92B098();

  if (a3)
  {
    a3 = sub_24F92B098();
  }

  [v13 recordClickWithAction:v14 targetId:v15 targetType:v16 pageId:v17 pageType:v18 hostApp:a3 app:*MEMORY[0x277D0BB48] additionalFields:0];
}

uint64_t sub_24F05AFCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F05B014(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F059E5C(a1, v4, v5, v7, v6);
}

uint64_t sub_24F05B0D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F05B114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F05A6FC(a1, v4, v5, v6);
}

unint64_t sub_24F05B1CC()
{
  result = qword_27F237D90;
  if (!qword_27F237D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237D90);
  }

  return result;
}

unint64_t sub_24F05B224()
{
  result = qword_27F237D98;
  if (!qword_27F237D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237D98);
  }

  return result;
}

unint64_t sub_24F05B27C()
{
  result = qword_27F237DA0;
  if (!qword_27F237DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DA0);
  }

  return result;
}

unint64_t sub_24F05B2D4()
{
  result = qword_27F237DA8;
  if (!qword_27F237DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DA8);
  }

  return result;
}

unint64_t sub_24F05B32C()
{
  result = qword_27F237DB0;
  if (!qword_27F237DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DB0);
  }

  return result;
}

unint64_t sub_24F05B384()
{
  result = qword_27F237DB8;
  if (!qword_27F237DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DB8);
  }

  return result;
}

unint64_t sub_24F05B3DC()
{
  result = qword_27F237DC0;
  if (!qword_27F237DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DC0);
  }

  return result;
}

unint64_t sub_24F05B434()
{
  result = qword_27F237DC8;
  if (!qword_27F237DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DC8);
  }

  return result;
}

unint64_t sub_24F05B48C()
{
  result = qword_27F237DD0;
  if (!qword_27F237DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DD0);
  }

  return result;
}

unint64_t sub_24F05B4E4()
{
  result = qword_27F237DD8;
  if (!qword_27F237DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DD8);
  }

  return result;
}

unint64_t sub_24F05B5F8()
{
  result = qword_27F237DE0;
  if (!qword_27F237DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DE0);
  }

  return result;
}

unint64_t sub_24F05B64C()
{
  result = qword_27F237DE8;
  if (!qword_27F237DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DE8);
  }

  return result;
}

unint64_t sub_24F05B6A0()
{
  result = qword_27F237DF0;
  if (!qword_27F237DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DF0);
  }

  return result;
}

uint64_t sub_24F05B704@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v35 = a2;
  v36 = a3;
  v39 = a1;
  v30 = a4;
  v38 = sub_24F91EF38();
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24F91EF18();
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EF48();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348, &unk_24F93FBF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  (*(v11 + 16))(v13, v5, v10, v15);
  v18 = MEMORY[0x277CC8C08];
  sub_24F05D3BC(&unk_27F237E90, MEMORY[0x277CC8C08], MEMORY[0x277CC8C10]);
  sub_24F92B3F8();
  sub_24F05D3BC(&qword_27F215360, v18, MEMORY[0x277CC8C18]);
  v19 = (v6 + 8);
  v31 = (v8 + 8);
  v32 = (v8 + 16);
  while (1)
  {
    v20 = v37;
    sub_24F92BC08();
    sub_24F05D3BC(&unk_27F237EA0, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v21 = v38;
    v22 = sub_24F92AFF8();
    (*v19)(v20, v21);
    if (v22)
    {
      sub_24F05D404(v17);
      v27 = sub_24F91F008();
      return (*(*(v27 - 8) + 32))(v30, v39, v27);
    }

    v23 = sub_24F92BC88();
    v24 = v33;
    v25 = v34;
    (*v32)(v33);
    v23(v40, 0);
    sub_24F92BC18();
    v26 = v41;
    (v35)(v39, v24);
    if (v26)
    {
      break;
    }

    v41 = 0;
    (*v31)(v24, v25);
  }

  (*v31)(v24, v25);
  v29 = sub_24F91F008();
  (*(*(v29 - 8) + 8))(v39, v29);
  return sub_24F05D404(v17);
}

uint64_t (*sub_24F05BBA0(uint64_t (*result)(double *, unint64_t), double a2, uint64_t a3, uint64_t a4))(double *, unint64_t)
{
  v6 = result;
  v7 = 0;
  v10 = a2;
  v8 = *(a4 + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(type metadata accessor for ItemLayoutContext(0) - 8);
    result = v6(&v10, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
  }

  while (!v4);
  return result;
}

void sub_24F05BC7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24F92C738();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x253052270](v3, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      if ([v5 alignment] == 1)
      {
        v7 = [v6 layoutSize];
        v8 = [v7 heightDimension];

        [v8 dimension];
        v10 = v9;

        v4 = v4 + v10;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
  }
}

BOOL sub_24F05BDB8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x253052270](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 alignment];

    v4 = v5 + 1;
  }

  while (v8 != 1);
  return v3 != v5;
}

void sub_24F05BE98(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24F92C738();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x253052270](v3, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      if ([v5 alignment] == 5)
      {
        v7 = [v6 layoutSize];
        v8 = [v7 heightDimension];

        [v8 dimension];
        v10 = v9;

        v4 = v4 + v10;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
  }
}

BOOL sub_24F05BFD4(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x253052270](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 alignment];

    v4 = v5 + 1;
  }

  while (v8 != 5);
  return v3 != v5;
}

uint64_t BasePageLayoutSectionProvider.__allocating_init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_24E612C80(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_24E612C80(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

id sub_24F05C15C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v63 = a8;
  v64 = a5;
  v65 = a6;
  v62 = a9;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v61 = a4;
    v17 = a7;
    v18 = sub_24E69A5C4(0, &qword_27F237E08, 0x277CFB850);
    v19 = (a2)();
    v20 = swift_beginAccess();
    v21 = v10[8];
    if (*(v19 + 16))
    {
      MEMORY[0x28223BE20](v20);
      v57 = v18;
      v58 = v10 + 2;
      v59 = v21;
      v60 = a10;

      sub_24F05BBA0(sub_24F05D228, 0.0, v56, v19);
      v30 = v29;
      v31 = v10[5];
      v32 = v10[6];
      __swift_project_boxed_opaque_existential_1(v10 + 2, v31);
      v33 = (*(v32 + 8))(a1, a10, v31, v32);
      if (v33 && (v34 = v33, (v35 = swift_conformsToProtocol2()) != 0) && ((*(v35 + 24))(a1, a10, v34, v35) & 1) != 0)
      {
        v36 = v19;
        v37 = v30;
        v38 = 1;
      }

      else
      {
        v36 = v19;
        v37 = v30;
        v38 = 0;
      }

      v27 = sub_24F03CFA4(v36, v38, a1, v63, v62, a10, v37);
    }

    else
    {

      v27 = _sSo23NSCollectionLayoutGroupC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextV_tFZ_0(a1);
    }

    a7 = v17;
    v48 = [objc_opt_self() sectionWithGroup_];
    v49 = [objc_opt_self() standardUserDefaults];
    v50 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();

    [v48 setOrthogonalScrollingBehavior_];
    [v48 setInterGroupSpacing_];
    v51 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)(a1, v61, a10, v11[7]);
    if (v51)
    {
      aBlock[4] = v51;
      aBlock[5] = v52;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24F05C8A0;
      aBlock[3] = &block_descriptor_107;
      v53 = _Block_copy(aBlock);
    }

    else
    {
      v53 = 0;
    }

    [v48 setVisibleItemsInvalidationHandler_];
    _Block_release(v53);
  }

  else
  {
    v22 = a2(v16);
    swift_beginAccess();
    v23 = v10[8];
    v24 = sub_24E69A5C4(0, &qword_27F237E08, 0x277CFB850);
    if (*(v22 + 16))
    {
      MEMORY[0x28223BE20](v24);
      v57 = v25;
      v58 = v10 + 2;
      v59 = v23;
      v60 = a10;

      v26 = sub_24E76CEF8(sub_24F05CA28, v56, v22);
      v61 = a7;
      v39 = v26;
      v40 = v10[5];
      v41 = v10[6];
      __swift_project_boxed_opaque_existential_1(v10 + 2, v40);
      v42 = (*(v41 + 8))(a1, a10, v40, v41);
      if (v42 && (v43 = v42, (v44 = swift_conformsToProtocol2()) != 0) && ((*(v44 + 24))(a1, a10, v43, v44) & 1) != 0)
      {
        v45 = v22;
        v46 = v39;
        v47 = 1;
      }

      else
      {
        v45 = v22;
        v46 = v39;
        v47 = 0;
      }

      v28 = sub_24F03D8CC(v45, v46, v47, a1, v63, v62, a10);

      a7 = v61;
    }

    else
    {

      v28 = _sSo23NSCollectionLayoutGroupC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextV_tFZ_0(a1);
    }

    v48 = [objc_opt_self() sectionWithGroup_];
  }

  v54 = v48;
  _s12GameStoreKit29BasePageLayoutSectionProviderC27addSupplementariesAndInsets2to3for05shelff7SpacingH00o13SupplementaryH08asPartOfySo012NSCollectionfG0C_AA05ShelfF7ContextVAA0vfpH0_pAA0vqH0_p9JetEngine0D11ObjectGraphCtF_0(v54, a1, v64, v65, a7, a10);

  return v54;
}

id sub_24F05C724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = [objc_opt_self() sectionWithGroup_];
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();

  [v12 setOrthogonalScrollingBehavior_];
  [v12 setInterGroupSpacing_];
  v15 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)(a2, a6, a7, *(v8 + 56));
  if (v15)
  {
    v19[4] = v15;
    v19[5] = v16;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_24F05C8A0;
    v19[3] = &block_descriptor_3_4;
    v17 = _Block_copy(v19);
  }

  else
  {
    v17 = 0;
  }

  [v12 setVisibleItemsInvalidationHandler_];
  _Block_release(v17);
  return v12;
}

double sub_24F05C8A0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237E70, &qword_24F9C2878);
  v9 = sub_24F92B5A8();

  swift_unknownObjectRetain();
  v8(v9, a3, a4, a5);

  swift_unknownObjectRelease();
  return result;
}

uint64_t BasePageLayoutSectionProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t BasePageLayoutSectionProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

id _s12GameStoreKit29BasePageLayoutSectionProviderC27addSupplementariesAndInsets2to3for05shelff7SpacingH00o13SupplementaryH08asPartOfySo012NSCollectionfG0C_AA05ShelfF7ContextVAA0vfpH0_pAA0vqH0_p9JetEngine0D11ObjectGraphCtF_0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;
  v70 = a5;
  v69 = a4;
  v79 = a1;
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  (*(v13 + 8))(v81, a2, v12, v13);
  v14 = v82;
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v74 = type metadata accessor for ShelfLayoutContext(0);
  v15 = *(a2 + *(v74 + 40));
  v16 = a2;
  sub_24E8ED7D8(v14);
  v17 = sub_24F9223A8();
  v18 = *(v9 + 8);
  v18(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v19);
  (*(v20 + 16))(v81, a2, v19, v20);
  v21 = v82;
  __swift_project_boxed_opaque_existential_1(v81, v82);
  sub_24E8ED7D8(v21);
  v78 = v15;
  v22 = sub_24F9223A8();
  v73 = v11;
  v75 = v8;
  v76 = v9 + 8;
  v77 = v18;
  v18(v11, v8);
  v23 = v70;
  v24 = v16;
  __swift_destroy_boxed_opaque_existential_1(v81);
  v25 = v16 + *(v74 + 28);
  v26 = *(v25 + 368);
  v27 = *(v25 + 384);
  ObjectType = swift_getObjectType();
  v29 = a3;
  v30 = a3;
  v31 = v71;
  v32 = (*(v23 + 8))(v16, v30, v71, ObjectType, v23);
  v80 = MEMORY[0x277D84F90];
  LODWORD(v74) = sub_24F05BDB8(v32) && v17 > 0.0;
  if (v74 == 1)
  {
    v33 = ObjectType;
    sub_24F05BC7C(v32);
    v35 = v34;
    v36 = objc_opt_self();
    v37 = [v36 fractionalWidthDimension_];
    v38 = [v36 absoluteDimension_];
    v39 = [objc_opt_self() sizeWithWidthDimension:v37 heightDimension:v38];

    v40 = sub_24F92B098();
    v41 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v39 elementKind:v40 alignment:1 absoluteOffset:{0.0, -v35}];

    MEMORY[0x253050F00]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    ObjectType = v33;
  }

  sub_24EA0B8B8(v42);
  v43 = sub_24F05BFD4(v32);
  v44 = v79;
  if (v43 && v22 > 0.0)
  {
    sub_24F05BE98(v32);
    v46 = v45;

    v47 = objc_opt_self();
    v48 = [v47 fractionalWidthDimension_];
    v49 = [v47 absoluteDimension_];
    v50 = [objc_opt_self() sizeWithWidthDimension:v48 heightDimension:v49];

    v51 = sub_24F92B098();
    v52 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v50 elementKind:v51 alignment:5 absoluteOffset:{0.0, v46}];

    MEMORY[0x253050F00]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v72 = 1;
  }

  else
  {

    v72 = 0;
  }

  sub_24E69A5C4(0, &qword_27F2250F0, 0x277CFB830);
  v53 = sub_24F92B588();

  [v44 setBoundarySupplementaryItems_];

  (*(v23 + 16))(v24, v29, v31, ObjectType, v23);
  sub_24E69A5C4(0, &unk_27F237E80, 0x277CFB838);
  v54 = sub_24F92B588();

  [v44 setDecorationItems_];

  v55 = v29[3];
  v56 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v55);
  (*(v56 + 24))(v81, v24, v55, v56);
  v57 = v82;
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v58 = v73;
  sub_24E8ED7D8(v57);
  v59 = sub_24F9223A8();
  v60 = v75;
  v61 = v77;
  v77(v58, v75);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v62 = v29[3];
  v63 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v62);
  (*(v63 + 32))(v81, v24, v62, v63);
  v64 = v82;
  __swift_project_boxed_opaque_existential_1(v81, v82);
  sub_24E8ED7D8(v64);
  v65 = sub_24F9223A8();
  v61(v58, v60);
  __swift_destroy_boxed_opaque_existential_1(v81);
  if (v74)
  {
    v66 = 0.0;
    v67 = v59 + 0.0;
    if (v72)
    {
      return [v79 setContentInsets_];
    }

    goto LABEL_15;
  }

  v67 = v17 + v59;
  v66 = 0.0;
  if ((v72 & 1) == 0)
  {
LABEL_15:
    v66 = v22;
  }

  return [v79 setContentInsets_];
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F05D260@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_24F05D3BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F05D404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348, &unk_24F93FBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:genericPageMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_24E911D90(a2, v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0xC000000000000000;
  return v6;
}

uint64_t ShareSheetData.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetData.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:productMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_24E911D90(a2, v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0x4000000000000000;
  return v6;
}

uint64_t ShareSheetData.Metadata.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v66 = a3;
  v72 = a2;
  v4 = sub_24F9285B8();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v61 - v7;
  MEMORY[0x28223BE20](v8);
  v65 = &v61 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v61 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v61 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  v73 = a1;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v30 = v26;
  v31 = v13;
  v68 = *(v14 + 8);
  v69 = v14 + 8;
  v68(v30, v13);
  if (v29)
  {
    v32 = v27 == 0x746375646F7270 && v29 == 0xE700000000000000;
    if (v32 || (sub_24F92CE08() & 1) != 0)
    {

      v33 = v73;
      (*(v14 + 16))(v23, v73, v13);
      v35 = v70;
      v34 = v71;
      v36 = v72;
      (*(v70 + 16))(v12, v72, v71);
      type metadata accessor for ShareSheetProductMetadata();
      swift_allocObject();
      v37 = v67;
      v38 = ShareSheetProductMetadata.init(deserializing:using:)(v23, v12);
      if (!v37)
      {
        v39 = v38;
        (*(v35 + 8))(v36, v34);
        result = (v68)(v33, v31);
        v41 = v39 | 0x4000000000000000;
LABEL_9:
        *v66 = v41;
        return result;
      }
    }

    else
    {
      v44 = v27 == 0x656C6369747261 && v29 == 0xE700000000000000;
      v35 = v70;
      if (v44 || (sub_24F92CE08() & 1) != 0)
      {

        v33 = v73;
        (*(v14 + 16))(v20, v73, v31);
        v45 = v65;
        v34 = v71;
        v36 = v72;
        (*(v35 + 16))(v65, v72, v71);
        type metadata accessor for ShareSheetArticleMetadata();
        swift_allocObject();
        v46 = v67;
        v47 = ShareSheetArticleMetadata.init(deserializing:using:)(v20, v45);
        if (!v46)
        {
          v48 = v47;
          (*(v35 + 8))(v36, v34);
          result = (v68)(v33, v31);
          *v66 = v48;
          return result;
        }
      }

      else if (v27 == 0x746E657645707061 && v29 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
      {

        v49 = v63;
        v33 = v73;
        (*(v14 + 16))(v63, v73, v31);
        v50 = v64;
        v34 = v71;
        v36 = v72;
        (*(v35 + 16))(v64, v72, v71);
        type metadata accessor for ShareSheetAppEventMetadata();
        swift_allocObject();
        v51 = v67;
        v52 = ShareSheetAppEventMetadata.init(deserializing:using:)(v49, v50);
        if (!v51)
        {
          v53 = v52;
          (*(v35 + 8))(v36, v34);
          result = (v68)(v33, v31);
          v41 = v53 | 0x8000000000000000;
          goto LABEL_9;
        }
      }

      else if (v27 == 0x636972656E6567 && v29 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
      {

        v54 = v61;
        v33 = v73;
        (*(v14 + 16))(v61, v73, v31);
        v55 = v62;
        v34 = v71;
        v36 = v72;
        (*(v35 + 16))(v62, v72, v71);
        type metadata accessor for ShareSheetGenericMetadata();
        swift_allocObject();
        v56 = v67;
        v57 = ShareSheetGenericMetadata.init(deserializing:using:)(v54, v55);
        if (!v56)
        {
          v58 = v57;
          (*(v35 + 8))(v36, v34);
          result = (v68)(v33, v31);
          v41 = v58 | 0xC000000000000000;
          goto LABEL_9;
        }
      }

      else
      {
        v59 = sub_24F92AC38();
        sub_24E8F2E6C();
        swift_allocError();
        *v60 = v27;
        v60[1] = v29;
        v60[2] = &type metadata for ShareSheetData.Metadata;
        (*(*(v59 - 8) + 104))(v60, *MEMORY[0x277D22520], v59);
        swift_willThrow();
        v33 = v73;
        v34 = v71;
        v36 = v72;
      }
    }
  }

  else
  {
    v42 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v43 = 0x747865746E6F63;
    v43[1] = 0xE700000000000000;
    v43[2] = &type metadata for ShareSheetData.Metadata;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    v33 = v73;
    v34 = v71;
    v36 = v72;
    v35 = v70;
  }

  (*(v35 + 8))(v36, v34);
  return (v68)(v33, v31);
}

uint64_t ShareSheetData.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSheetData.init(url:shortUrl:productMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_24E911D90(a2, v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0x4000000000000000;
  return v3;
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:articleMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_24E911D90(a2, v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3;
  return v6;
}

uint64_t ShareSheetData.init(url:shortUrl:articleMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_24E911D90(a2, v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3;
  return v3;
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:appEventMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_24E911D90(a2, v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0x8000000000000000;
  return v6;
}

uint64_t ShareSheetData.init(url:shortUrl:appEventMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_24E911D90(a2, v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0x8000000000000000;
  return v3;
}

uint64_t ShareSheetData.init(url:shortUrl:genericPageMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_24E911D90(a2, v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0xC000000000000000;
  return v3;
}

void *ShareSheetData.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v50 = v3;
  v43 = *v3;
  v47 = sub_24F9285B8();
  v51 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = sub_24F91F4A8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v46 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  sub_24F928398();
  sub_24F928268();
  v24 = v20;
  v25 = v12;
  v49 = *(v13 + 8);
  v49(v24, v12);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    sub_24E70E058(v11);
    v26 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v27 = 7107189;
    v28 = v43;
    v27[1] = 0xE300000000000000;
    v27[2] = v28;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D22530], v26);
    swift_willThrow();
    (*(v51 + 8))(v48, v47);
    v49(v52, v12);
    v29 = v50;
  }

  else
  {
    v30 = v46;
    (*(v22 + 32))(v46, v11, v21);
    v31 = *(v22 + 16);
    v32 = v50;
    v41 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
    v31(v50 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url, v30, v21);
    sub_24F928398();
    sub_24F928268();
    v43 = v25;
    v49(v17, v25);
    v33 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl;
    sub_24E911D90(v8, v32 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
    v34 = v42;
    sub_24F928398();
    v35 = v44;
    v37 = v47;
    v36 = v48;
    (*(v51 + 16))(v44, v48, v47);
    v38 = v45;
    ShareSheetData.Metadata.init(deserializing:using:)(v34, v35, &v53);
    if (!v38)
    {
      (*(v51 + 8))(v36, v37);
      v49(v52, v43);
      (*(v22 + 8))(v46, v21);
      v29 = v50;
      *(v50 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = v53;
      return v29;
    }

    (*(v51 + 8))(v36, v37);
    v49(v52, v43);
    v39 = *(v22 + 8);
    v39(v46, v21);
    v29 = v50;
    v39(v50 + v41, v21);
    sub_24E70E058(v29 + v33);
  }

  type metadata accessor for ShareSheetData(0);
  swift_deallocPartialClassInstance();
  return v29;
}

uint64_t ShareSheetData.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);

  return v0;
}

uint64_t ShareSheetData.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);

  return swift_deallocClassInstance();
}

void *sub_24F05EA14@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetData(0);
  v7 = swift_allocObject();
  result = ShareSheetData.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t type metadata accessor for ShareSheetData(uint64_t a1)
{
  result = qword_27F237EB0;
  if (!qword_27F237EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F05EAD4(uint64_t a1)
{
  sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    sub_24E6D4C08(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24F05EC44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F05ECA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t AppStoreLocalizerFactory.localizer(forLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[58] = a3;
  v4[59] = v3;
  v4[56] = a1;
  v4[57] = a2;
  v5 = sub_24F929CC8();
  v4[60] = v5;
  v4[61] = *(v5 - 8);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F05EDD0, 0, 0);
}

uint64_t sub_24F05EDD0()
{
  v1 = *(v0 + 464);
  if (v1)
  {
    v2 = *(v0 + 472);
    v3 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_localizerCache;
    *(v0 + 512) = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_localizerCache;
    swift_beginAccess();
    v4 = *(v2 + v3);
    v5 = *(v4 + 16);

    if (v5)
    {
      v6 = sub_24E76D644(*(v0 + 456), v1);
      if (v7)
      {
        v8 = *(v0 + 448);
        sub_24E615E00(*(v4 + 56) + 40 * v6, v0 + 192);
        sub_24E612C80((v0 + 192), v8);
        swift_endAccess();

LABEL_8:

        v17 = *(v0 + 8);

        return v17();
      }
    }

    v9 = *(v0 + 504);
    v10 = *(v0 + 472);
    v11 = *(v0 + 456);
    swift_endAccess();
    sub_24E615E00(v10 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource, v0 + 32);
    *(v0 + 16) = v11;
    *(v0 + 24) = v1;
    *(v0 + 296) = &type metadata for ExtendedLanguageSource;
    *(v0 + 304) = sub_24F0601A0();
    v12 = swift_allocObject();
    *(v0 + 272) = v12;
    sub_24F060234(v0 + 16, v12 + 16);

    sub_24F05FB78(v0 + 272, v9);
    *(v0 + 520) = sub_24F929CE8();
    v13 = swift_task_alloc();
    *(v0 + 528) = v13;
    *v13 = v0;
    v13[1] = sub_24F05F0CC;
    v14 = *(v0 + 504);
  }

  else
  {
    v15 = *(v0 + 472);
    v16 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
    *(v0 + 552) = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
    swift_beginAccess();
    sub_24EA28268(v15 + v16, v0 + 72);
    if (*(v0 + 96))
    {
      sub_24E612C80((v0 + 72), *(v0 + 448));
      goto LABEL_8;
    }

    v19 = *(v0 + 496);
    v20 = *(v0 + 472);
    sub_24E601704(v0 + 72, &qword_27F223248, &unk_24F96E1C0);
    sub_24F05FB78(v20 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource, v19);
    *(v0 + 560) = sub_24F929CE8();
    v21 = swift_task_alloc();
    *(v0 + 568) = v21;
    *v21 = v0;
    v21[1] = sub_24F05F3A0;
    v14 = *(v0 + 496);
  }

  return MEMORY[0x28217FBF8](v14);
}

uint64_t sub_24F05F0CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 536) = v1;

  if (v1)
  {

    v5 = sub_24F05F30C;
  }

  else
  {
    *(v4 + 544) = a1;
    v5 = sub_24F05F1FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F05F1FC()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  v5 = *(v0 + 464);
  v7 = *(v0 + 448);
  v6 = *(v0 + 456);
  v8 = MEMORY[0x277D22148];
  *(v0 + 256) = *(v0 + 520);
  *(v0 + 264) = v8;
  *(v0 + 232) = v1;
  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  sub_24E615E00(v0 + 232, v0 + 312);
  swift_beginAccess();
  sub_24E9896A8(v0 + 312, v6, v5);
  swift_endAccess();
  sub_24F06026C(v0 + 16);
  sub_24E612C80((v0 + 232), v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24F05F30C()
{
  (*(v0[61] + 8))(v0[63], v0[60]);
  sub_24F06026C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 34);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F05F3A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v5 = sub_24F05F5B8;
  }

  else
  {
    *(v4 + 584) = a1;
    v5 = sub_24F05F4C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F05F4C8()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 552);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v7 = *(v0 + 448);
  v8 = MEMORY[0x277D22148];
  *(v0 + 136) = *(v0 + 560);
  *(v0 + 144) = v8;
  *(v0 + 112) = v1;
  (*(v4 + 8))(v3, v5);
  sub_24E615E00(v0 + 112, v0 + 152);
  swift_beginAccess();
  sub_24F05FEDC(v0 + 152, v6 + v2);
  swift_endAccess();
  sub_24E612C80((v0 + 112), v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24F05F5B8()
{
  (*(v0[61] + 8))(v0[62], v0[60]);

  v1 = v0[1];

  return v1();
}

uint64_t AppStoreLocalizerFactory.__allocating_init(jetpackResourceBundle:defaultLanguageSource:objectGraph:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = v6 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_localizerCache;
  *(v6 + v8) = sub_24E60EAE0(MEMORY[0x277D84F90]);
  v9 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v10 = sub_24F929D48();
  (*(*(v10 - 8) + 32))(v6 + v9, a1, v10);
  sub_24E612C80(a2, v6 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_objectGraph) = a3;
  return v6;
}

uint64_t sub_24F05F740()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = v1[1];
  *(v2 + 32) = *v1;
  *(v2 + 40) = v3;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_24F05F848;

  return MEMORY[0x28217F1C0](v4, v5);
}

uint64_t sub_24F05F848(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_24F05F9E4;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_24F05F970;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F05F970()
{
  v3 = v0[3];
  sub_24EA0A4AC(v0[6]);
  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_24F05F9E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F05FA48()
{

  return sub_24F91F6F8();
}

uint64_t AppStoreLocalizerFactory.init(jetpackResourceBundle:defaultLanguageSource:objectGraph:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_localizerCache;
  *(v3 + v8) = sub_24E60EAE0(MEMORY[0x277D84F90]);
  v9 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v10 = sub_24F929D48();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  sub_24E612C80(a2, v3 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_objectGraph) = a3;
  return v3;
}

uint64_t sub_24F05FB78@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  v3 = sub_24F929CC8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = sub_24F92A318();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F9C29E0;
  *(v14 + 32) = [objc_opt_self() mainBundle];
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27F22B5B8;
  *(v14 + 40) = qword_27F22B5B8;
  v16 = v15;
  sub_24F92A308();
  v17 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v18 = sub_24F929D48();
  v28 = v18;
  v29 = MEMORY[0x277D22178];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v23 + v17, v18);
  sub_24E615E00(v24, v26);

  sub_24F929C98();
  v28 = v10;
  v29 = MEMORY[0x277D22358];
  v20 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(v11 + 16))(v20, v13, v10);
  sub_24F929CB8();
  v21 = *(v4 + 8);
  v21(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(v27);
  v28 = &type metadata for AppStoreLocalizerPreferences;
  v29 = sub_24F0603EC();
  sub_24F929CA8();
  v21(v9, v3);
  (*(v11 + 8))(v13, v10);
  return sub_24E601704(v27, &qword_27F237F08, &unk_24F9C2B20);
}

uint64_t sub_24F05FEDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223248, &unk_24F96E1C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AppStoreLocalizerFactory.deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v3 = sub_24F929D48();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource));

  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer, &qword_27F223248, &unk_24F96E1C0);

  return v1;
}

uint64_t AppStoreLocalizerFactory.__deallocating_deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v3 = sub_24F929D48();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource));

  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer, &qword_27F223248, &unk_24F96E1C0);

  return swift_deallocClassInstance();
}

uint64_t sub_24F0600EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return AppStoreLocalizerFactory.localizer(forLanguage:)(a1, a2, a3);
}

unint64_t sub_24F0601A0()
{
  result = qword_27F237EE0;
  if (!qword_27F237EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237EE0);
  }

  return result;
}

uint64_t sub_24F0601F4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t type metadata accessor for AppStoreLocalizerFactory(uint64_t a1)
{
  result = qword_27F237EF0;
  if (!qword_27F237EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0602F0(uint64_t a1, __n128 a2)
{
  result = sub_24F929D48();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F0603EC()
{
  result = qword_27F237F00;
  if (!qword_27F237F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F00);
  }

  return result;
}

uint64_t CompoundShelfSupplementaryProvider.__allocating_init(children:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

double CompoundShelfSupplementaryProvider.children.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t CompoundShelfSupplementaryProvider.addChild(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v2 + 16);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_24E619BF4(0, v5[2] + 1, 1, v5);
      *(v2 + 16) = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_24E619BF4((v7 > 1), v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v9 = &v5[2 * v8];
    v9[4] = v4;
    v9[5] = a2;
    *(v2 + 16) = v5;
    return swift_endAccess();
  }

  return result;
}

double CompoundShelfSupplementaryProvider.removeChild(_:)(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      for (i = (v4 + 32); *i != a1; i += 2)
      {
        if (v5 == ++v6)
        {
          return result;
        }
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_24EA0E810(v6);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundShelfSupplementaryProvider.removeAllChildren()()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F90];
}

uint64_t sub_24F060700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, __n128))
{
  swift_beginAccess();
  v11 = *(v5 + 16);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;

  v12 = (a5)(a4, v14, v11);

  return v12;
}

void CompoundShelfSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    while (v9 < *(v7 + 16))
    {
      v11 = *v10;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 24);
      swift_unknownObjectRetain();
      v13(&v18, a1, a2, a3, a4, ObjectType, v11);
      swift_unknownObjectRelease();
      if (v19)
      {

        sub_24E612C80(&v18, a5);
        return;
      }

      ++v9;
      sub_24EE0F5B8(&v18);
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }
}

uint64_t CompoundShelfSupplementaryProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F060974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *, uint64_t, __n128))
{
  swift_beginAccess();
  v13 = *(v7 + 16);
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;

  v14 = (a7)(a6, v16, v13);

  return v14;
}

uint64_t sub_24F060A90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v7 + 16))(v4, v5, v6, ObjectType, v7);
  *a2 = result;
  return result;
}

uint64_t sub_24F060B14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v7 + 8))(v4, v5, v6, ObjectType, v7);
  *a2 = result;
  return result;
}

void *OfferAction.asExceptionRequest(forceAskToBuyReason:)(unsigned __int8 *a1)
{
  v38 = sub_24F91F6B8();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F928AD8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  v8 = v1[3];
  v45 = v1[2];
  v44 = v8;
  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  v39 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId + 8);
  v41 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId + 8);
  v40 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  v12 = OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  sub_24E643A9C(v1 + v12, v54);
  v13 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps);
  v14 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction);
  v43 = v1[5];
  v46 = v5;
  v15 = *(v5 + 16);
  v16 = v1 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v17 = v11;
  v18 = v14;
  v15(v7, v16, v4);
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v20 = v39;
  v20[1] = v9;
  sub_24E643A9C(v54, v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v21 = (v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v21 = v41;
  v21[1] = v10;
  v22 = (v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  *v22 = v40;
  v22[1] = v17;
  v23 = (v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v23 = 0;
  v23[1] = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = v13;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = 1;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = v42;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = v18;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v15(v19 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v7, v4);
  v24 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v25 = sub_24F929608();
  (*(*(v25 - 8) + 56))(v19 + v24, 1, 1, v25);
  v26 = (v19 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  v27 = v19 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v52, &v49);
  if (*(&v50 + 1))
  {
    v28 = v50;
    *v27 = v49;
    *(v27 + 1) = v28;
    *(v27 + 4) = v51;

    v29 = v44;
  }

  else
  {

    v29 = v44;

    v30 = v36;
    sub_24F91F6A8();
    v31 = sub_24F91F668();
    v33 = v32;
    (*(v37 + 8))(v30, v38);
    v47 = v31;
    v48 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v49, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v52, &qword_27F235830, &qword_24F93B8C0);
  (*(v46 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v19[2] = v45;
  v19[3] = v29;
  v34 = v43;
  v19[4] = 0;
  v19[5] = v34;
  return v19;
}

void OfferAction.isRedownload.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  sub_24E643A9C(v0 + v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  if (swift_dynamicCast())
  {
    if (*(v4 + 16) && (v2 = sub_24E76D644(0x6E776F6465527369, 0xEC00000064616F6CLL), (v3 & 1) != 0))
    {
      sub_24E643A9C(*(v4 + 56) + 32 * v2, v5);

      swift_dynamicCast();
    }

    else
    {
    }
  }
}

void *OfferAction.__allocating_init(title:adamId:parentAdamId:bundleId:purchaseToken:includeBetaApps:requiresExceptionRequest:forceAskToBuyReason:buyCompletedAction:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, int a8, char a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v49 = a8;
  v52 = a1;
  v50 = a13;
  v53 = a12;
  v54 = a2;
  v18 = sub_24F91F6B8();
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = *a3;
  v23 = a3[1];
  v25 = *a4;
  v24 = a4[1];
  v26 = *a10;
  v27 = (v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v27 = v22;
  v27[1] = v23;
  v51 = a7;
  sub_24E643A9C(a7, v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v28 = (v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v28 = v25;
  v28[1] = v24;
  v29 = (v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  *v29 = a5;
  v29[1] = a6;
  v30 = (v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v30 = 0;
  v30[1] = 0;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = v49;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = a9;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = v26;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = a11;
  v31 = v50;
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v32 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v33 = sub_24F928AD8();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v21 + v32, v31, v33);
  v35 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v36 = sub_24F929608();
  (*(*(v36 - 8) + 56))(v21 + v35, 1, 1, v36);
  v37 = (v21 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v37 = 0u;
  v37[1] = 0u;
  v38 = v21 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v60, &v57);
  if (*(&v58 + 1))
  {
    v39 = v58;
    *v38 = v57;
    *(v38 + 1) = v39;
    *(v38 + 4) = v59;
  }

  else
  {
    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v42 = v41;
    (*(v47 + 8))(v20, v48);
    v55 = v40;
    v56 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v57, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v34 + 8))(v31, v33);
  __swift_destroy_boxed_opaque_existential_1(v51);
  sub_24E601704(v60, &qword_27F235830, &qword_24F93B8C0);
  v43 = v53;
  v44 = v54;
  v21[2] = v52;
  v21[3] = v44;
  v21[4] = 0;
  v21[5] = v43;
  return v21;
}

void *OfferAction.init(title:adamId:parentAdamId:bundleId:purchaseToken:includeBetaApps:requiresExceptionRequest:forceAskToBuyReason:buyCompletedAction:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, int a8, unsigned __int8 a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v56 = a8;
  v53 = a6;
  v52 = a5;
  v60 = a2;
  v58 = a1;
  v51 = a13;
  v59 = a12;
  v54 = a9;
  v55 = a11;
  v50 = sub_24F91F6B8();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v48 - v21;
  v23 = sub_24F928AD8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a3;
  v28 = a3[1];
  v29 = *a4;
  v30 = a4[1];
  v31 = *a10;
  v32 = (v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v32 = v27;
  v32[1] = v28;
  v57 = a7;
  sub_24E643A9C(a7, v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v33 = (v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v33 = v29;
  v33[1] = v30;
  v34 = v51;
  v35 = (v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  v36 = v53;
  *v35 = v52;
  v35[1] = v36;
  v37 = (v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v37 = 0;
  v37[1] = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = v56;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = v54;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = v31;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = v55;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  (*(v24 + 16))(v26, v34, v23);
  v38 = sub_24F929608();
  (*(*(v38 - 8) + 56))(v22, 1, 1, v38);
  v39 = (v14 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v39 = 0u;
  v39[1] = 0u;
  sub_24E65E064(v69, &v63);
  if (*(&v64 + 1))
  {
    v66 = v63;
    v67 = v64;
    v68 = v65;
  }

  else
  {
    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v42 = v41;
    (*(v49 + 8))(v19, v50);
    v61 = v40;
    v62 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v63, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v24 + 8))(v34, v23);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_24E601704(v69, &qword_27F235830, &qword_24F93B8C0);
  v43 = v14 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v43 + 4) = v68;
  v44 = v67;
  *v43 = v66;
  *(v43 + 1) = v44;
  sub_24E65E0D4(v22, v14 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v45 = v59;
  v46 = v60;
  v14[2] = v58;
  v14[3] = v46;
  v14[4] = 0;
  v14[5] = v45;
  (*(v24 + 32))(v14 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v26, v23);
  return v14;
}

void (**OfferAction.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v4 = v2;
  v81 = a2;
  v6 = *v4;
  v77 = v3;
  v78 = v6;
  v7 = sub_24F9285B8();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v75 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v73 = &v70 - v13;
  MEMORY[0x28223BE20](v14);
  v72 = &v70 - v15;
  MEMORY[0x28223BE20](v16);
  v71 = &v70 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v70 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v70 - v25;
  v85 = a1;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v74 = v10;
  v30 = v9;
  v31 = v9;
  v32 = *(v10 + 8);
  v32(v26, v31);
  if (!v29)
  {
    v64 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v65 = 0x64496D616461;
    v66 = v78;
    v65[1] = 0xE600000000000000;
    v65[2] = v66;
    (*(*(v64 - 8) + 104))(v65, *MEMORY[0x277D22530], v64);
    swift_willThrow();
    (*(v79 + 8))(v81, v80);
    v32(v85, v30);
LABEL_11:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v33 = (v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v33 = v27;
  v33[1] = v29;
  sub_24F928398();
  sub_24F928368();
  v34 = v23;
  v35 = v32;
  v32(v34, v30);
  if (!v83)
  {
    sub_24E601704(&v82, &qword_27F2129B0, &unk_24F945320);
    v67 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v68 = 0x6E656B6F74;
    v68[1] = 0xE500000000000000;
    v68[2] = v78;
    (*(*(v67 - 8) + 104))(v68, *MEMORY[0x277D22530], v67);
    swift_willThrow();
    (*(v79 + 8))(v81, v80);
    v32(v85, v30);

    goto LABEL_11;
  }

  sub_24E612B0C(&v82, v84);
  sub_24E643A9C(v84, v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v36 = v85;
  sub_24F928398();
  v37 = sub_24F928348();
  v39 = v38;
  v35(v20, v30);
  v40 = (v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  *v40 = v37;
  v40[1] = v39;
  sub_24F928398();
  v41 = sub_24F928348();
  v43 = v42;
  v35(v20, v30);
  v44 = (v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v44 = v41;
  v44[1] = v43;
  v45 = v71;
  sub_24F928398();
  v46 = sub_24F928348();
  v48 = v47;
  v35(v45, v30);
  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0;
  }

  v50 = (v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v50 = v49;
  v50[1] = v48;
  v51 = v72;
  sub_24F928398();
  v52 = sub_24F928278();
  v35(v51, v30);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = v52 & 1;
  v53 = v73;
  sub_24F928398();
  v54 = sub_24F928278();
  v35(v53, v30);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = v54 & 1;
  sub_24F928398();
  sub_24EC3F63C();
  sub_24F928248();
  v35(v20, v30);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = v82;
  type metadata accessor for Action(0);
  sub_24F928398();
  v55 = v30;
  v56 = v81;
  v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v20, v81);
  v78 = v35;
  v35(v20, v55);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = v57;
  v58 = v75;
  (*(v74 + 16))(v75, v36, v55);
  v60 = v79;
  v59 = v80;
  v61 = v76;
  (*(v79 + 16))(v76, v56, v80);
  v62 = v77;
  v63 = Action.init(deserializing:using:)(v58, v61);
  if (!v62)
  {
    v4 = v63;
  }

  (*(v60 + 8))(v56, v59);
  v78(v85, v55);
  __swift_destroy_boxed_opaque_existential_1(v84);
  return v4;
}

uint64_t OfferAction.purchaseToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  return sub_24E643A9C(v1 + v3, a1);
}

uint64_t OfferAction.purchaseToken.setter(_OWORD *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_24E612B0C(a1, (v1 + v3));
  return swift_endAccess();
}

double OfferAction.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  a1[1] = v2;

  return result;
}

double OfferAction.parentAdamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  a1[1] = v2;

  return result;
}

uint64_t OfferAction.bundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);

  return v1;
}

uint64_t OfferAction.lineItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);

  return v1;
}

double sub_24F0624B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken));

  return result;
}

uint64_t OfferAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken));

  return v0;
}

uint64_t OfferAction.__deallocating_deinit()
{
  OfferAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfferAction(uint64_t a1)
{
  result = qword_27F237F10;
  if (!qword_27F237F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24F062804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  sub_24F927198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237F20, &qword_24F9C2D78);
  sub_24F062970();
  sub_24F0629D4();
  sub_24F9269E8();

  return result;
}

unint64_t sub_24F062970()
{
  result = qword_27F237F28;
  if (!qword_27F237F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237F20, &qword_24F9C2D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F28);
  }

  return result;
}

unint64_t sub_24F0629D4()
{
  result = qword_27F237F30;
  if (!qword_27F237F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F30);
  }

  return result;
}

uint64_t sub_24F062A40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237F20, &qword_24F9C2D78);
  sub_24F062970();
  sub_24F0629D4();
  return swift_getOpaqueTypeConformance2();
}

id sub_24F062AB8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for TouchMonitorGesture.Coordinator()) init];
  *a1 = result;
  return result;
}

id sub_24F062AF4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  [v0 setMinimumPressDuration_];
  [v0 setAllowableMovement_];
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237F38, &qword_24F9C2DD8);
  sub_24F925798();
  [v1 setDelegate_];

  return v1;
}

uint64_t sub_24F062BA8(void *a1)
{
  if ([a1 state] != 1)
  {
    [a1 state];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  return sub_24F927178();
}

uint64_t sub_24F062C64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GameSource(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 56);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24F062E00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for GameSource(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 56) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardSetDetailsPageIntent(uint64_t a1)
{
  result = qword_27F237F40;
  if (!qword_27F237F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F062FD8(uint64_t a1)
{
  sub_24E7EC9EC(319, &qword_27F21D948, type metadata accessor for Page.Background);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GameSource(319);
    if (v2 <= 0x3F)
    {
      sub_24E7EC9EC(319, &qword_27F214988, type metadata accessor for Player);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F0630BC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x756F72676B636162;
  *(inited + 40) = 0xEA0000000000646ELL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 80) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E60169C(v2, boxed_opaque_existential_1, &qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 88) = 0x72756F53656D6167;
  *(inited + 96) = 0xEA00000000006563;
  v6 = type metadata accessor for LeaderboardSetDetailsPageIntent(0);
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for GameSource(0);
  *(inited + 136) = sub_24ED151C4(&qword_27F221F68, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
  v8 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F0641B8(v2 + v7, v8, type metadata accessor for GameSource);
  *(inited + 144) = 0xD000000000000014;
  *(inited + 152) = 0x800000024FA69BF0;
  v9 = (v2 + v6[6]);
  v23[0] = v9[2];
  *(v23 + 9) = *(v9 + 41);
  v10 = v9[1];
  v21 = *v9;
  v22 = v10;
  *(inited + 184) = &type metadata for LeaderboardSetSource;
  *(inited + 192) = sub_24F064220();
  v11 = swift_allocObject();
  *(inited + 160) = v11;
  *(v11 + 57) = *(v23 + 9);
  v12 = v23[0];
  v11[2] = v22;
  v11[3] = v12;
  v11[1] = v21;
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v13 = v6[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 248) = sub_24E7EDBB4();
  v14 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v2 + v13, v14, &unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v15 = *(v2 + v6[8]);
  v16 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v16;
  *(inited + 272) = v15;
  sub_24F064108(&v21, v20);
  v17 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v18 = sub_24E80FFAC(v17);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

uint64_t sub_24F0633CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237F68, &unk_24F9C2EE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F063F48();
  sub_24F92D128();
  LOBYTE(v23[0]) = 0;
  type metadata accessor for Page.Background(0);
  sub_24ED151C4(&qword_27F21D920, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for LeaderboardSetDetailsPageIntent(0);
    v25 = 1;
    type metadata accessor for GameSource(0);
    sub_24ED151C4(&qword_27F221F60, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v23[0] = *v10;
    v23[1] = v11;
    v13 = *v10;
    v12 = v10[1];
    *v24 = v10[2];
    *&v24[9] = *(v10 + 41);
    v20 = v13;
    v21 = v12;
    v22[0] = v10[2];
    *(v22 + 9) = *(v10 + 41);
    v19 = 2;
    sub_24F064108(v23, v17);
    sub_24F064164();
    sub_24F92CD48();
    v17[0] = v20;
    v17[1] = v21;
    *v18 = v22[0];
    *&v18[9] = *(v22 + 9);
    sub_24F063F9C(v17);
    v16 = 3;
    type metadata accessor for Player(0);
    sub_24ED151C4(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CCF8();
    v16 = 4;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F06374C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v26 - v4;
  v5 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v26 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237F50, &qword_24F9C2ED8);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v26 - v10;
  v12 = type metadata accessor for LeaderboardSetDetailsPageIntent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F063F48();
  v31 = v11;
  v15 = v33;
  sub_24F92D108();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v7;
  v17 = v14;
  type metadata accessor for Page.Background(0);
  LOBYTE(v34) = 0;
  sub_24ED151C4(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  v18 = v29;
  v19 = v32;
  v20 = v31;
  sub_24F92CC18();
  sub_24E6009C8(v18, v17, &qword_27F21D8F8, &qword_24F95ADB0);
  LOBYTE(v34) = 1;
  sub_24ED151C4(&qword_27F221F50, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
  sub_24F92CC68();
  sub_24F063FF0(v16, v17 + v12[5]);
  v38 = 2;
  sub_24F064054();
  sub_24F92CC68();
  v21 = v30;
  v33 = 0;
  v22 = (v17 + v12[6]);
  v23 = v35;
  *v22 = v34;
  v22[1] = v23;
  v22[2] = v36[0];
  *(v22 + 41) = *(v36 + 9);
  type metadata accessor for Player(0);
  v37 = 3;
  sub_24ED151C4(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v24 = v28;
  sub_24F92CC18();
  sub_24E6009C8(v24, v17 + v12[7], &unk_27F23E1F0, &unk_24F9549C0);
  v37 = 4;
  LOBYTE(v24) = sub_24F92CC38();
  (*(v21 + 8))(v20, v19);
  *(v17 + v12[8]) = v24 & 1;
  sub_24F0641B8(v17, v27, type metadata accessor for LeaderboardSetDetailsPageIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F0640A8(v17, type metadata accessor for LeaderboardSetDetailsPageIntent);
}

unint64_t sub_24F063D98()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0xD000000000000014;
  v4 = 0x726579616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72756F53656D6167;
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

uint64_t sub_24F063E40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F06443C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F063E68(uint64_t a1)
{
  v2 = sub_24F063F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F063EA4(uint64_t a1)
{
  v2 = sub_24F063F48();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F063F48()
{
  result = qword_27F237F58;
  if (!qword_27F237F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F58);
  }

  return result;
}

uint64_t sub_24F063FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F064054()
{
  result = qword_27F237F60;
  if (!qword_27F237F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F60);
  }

  return result;
}

uint64_t sub_24F0640A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F064164()
{
  result = qword_27F237F70;
  if (!qword_27F237F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F70);
  }

  return result;
}

uint64_t sub_24F0641B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F064220()
{
  result = qword_27F237F78;
  if (!qword_27F237F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F78);
  }

  return result;
}

uint64_t sub_24F064274()
{
  sub_24F0642BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_24F0642BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{

  if ((a8 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24F064338()
{
  result = qword_27F237F80;
  if (!qword_27F237F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F80);
  }

  return result;
}

unint64_t sub_24F064390()
{
  result = qword_27F237F88;
  if (!qword_27F237F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F88);
  }

  return result;
}

unint64_t sub_24F0643E8()
{
  result = qword_27F237F90;
  if (!qword_27F237F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F90);
  }

  return result;
}

uint64_t sub_24F06443C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756F53656D6167 && a2 == 0xEA00000000006563 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA69BF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *sub_24F0645FC()
{
  result = sub_24E60FC8C(MEMORY[0x277D84F90]);
  off_27F237F98 = result;
  return result;
}

uint64_t ScaledSpaceMetric.init(wrappedValue:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ScaledSpaceMetric(0);
  *(a1 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for ScaledSpaceMetric(uint64_t a1)
{
  result = qword_27F237FA0;
  if (!qword_27F237FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0646E8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24F064FA0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double ScaledSpaceMetric.wrappedValue.getter()
{
  v1 = sub_24F92CDB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = sub_24F923E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F0646E8(v11);
  v12 = sub_24F064BEC(v11);
  (*(v9 + 8))(v11, v8);
  v13 = v12 * *(v0 + *(type metadata accessor for ScaledSpaceMetric(0) + 20));
  sub_24F9220E8();
  v21 = v13;
  (*(v2 + 16))(v4, v7, v1);
  v14 = (*(v2 + 88))(v4, v1);
  if (v14 == *MEMORY[0x277D84678])
  {
    v15 = round(v13);
LABEL_11:
    (*(v2 + 8))(v7, v1);
    return v15;
  }

  if (v14 == *MEMORY[0x277D84670])
  {
    v15 = rint(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x277D84680])
  {
    v15 = ceil(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x277D84688])
  {
    v15 = floor(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x277D84660])
  {
    v15 = trunc(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x277D84668])
  {
    (*(v2 + 8))(v7, v1);
    v17 = ceil(v13);
    v18 = floor(v13);
    if (v13 < 0.0)
    {
      return v18;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    sub_24F92BA48();
    v19 = *(v2 + 8);
    v19(v7, v1);
    v19(v4, v1);
    return v21;
  }
}

double sub_24F064BEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0, &qword_24F93C240);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  if (qword_27F210EA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_27F237F98;
  if (*(off_27F237F98 + 2) && (v9 = sub_24E76E8C8(a1), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);
  }

  else
  {
    swift_endAccess();
    v12 = sub_24F923E98();
    v13 = *(*(v12 - 8) + 56);
    v13(v7, 1, 1, v12);
    v13(v4, 1, 1, v12);
    v14 = sub_24EF13DC0(v7, v4, 1.0);
    sub_24EF144B0(v4);
    sub_24EF144B0(v7);
    v11 = (v14 + -1.0) * 0.5 + 1.0;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_27F237F98;
    off_27F237F98 = 0x8000000000000000;
    sub_24E821F38(a1, isUniquelyReferenced_nonNull_native, v11);
    off_27F237F98 = v17;
  }

  swift_endAccess();
  return v11;
}

uint64_t sub_24F064E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F064EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24F064F2C(uint64_t a1)
{
  sub_24E6CAF48(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F064FA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F065010(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_24E772724(v8, v18);
      v10 = v6(v18);
      if (v3)
      {
        sub_24E772780(v18);

        goto LABEL_15;
      }

      if (v10)
      {
        v15 = v18[0];
        v16 = v18[1];
        v17 = v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        v20 = v9;
        if ((result & 1) == 0)
        {
          result = sub_24F457E94(0, *(v9 + 16) + 1, 1);
          v9 = v20;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_24F457E94((v11 > 1), v12 + 1, 1);
          v9 = v20;
        }

        *(v9 + 16) = v12 + 1;
        v13 = v9 + 40 * v12;
        *(v13 + 64) = v17;
        *(v13 + 32) = v15;
        *(v13 + 48) = v16;
        v6 = v14;
      }

      else
      {
        result = sub_24E772780(v18);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionIdentifiers(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v11 = (v3 + *(a3 + 36));
    v12 = *v11;
    v13 = *(*v11 + 16);
    if (v13)
    {
      v14 = v11[1];
      v10 = sub_24EAE6938(*(*v11 + 16), 0);
      v15 = sub_24EAE8D14(&v21, v10 + 32, v13, v12, v14);

      if (v15 == v13)
      {
        return v10;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  v4 = *(v3 + *(a3 + 36));
  MEMORY[0x28223BE20](a1);
  v17[1] = *(v5 + 16);
  v18 = v3;
  v19 = v6;
  v20 = v7;
  v8 = v6;
  v9 = v7;
  sub_24E5FCA4C(v6, v7);

  v10 = sub_24F065010(sub_24F06973C, v17, v4);
  sub_24E824448(v8, v9);
  return v10;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v3 = *(a2 + 16);
  v4 = sub_24F92C4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_24EBD5384();
  sub_24F92AEC8();
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    v15 = 1;
    v16 = v20;
  }

  else
  {
    (*(v8 + 32))(v14, v7, v3);
    (*(v8 + 16))(v11, v14, v3);
    v16 = v20;
    sub_24F928A78();
    (*(v8 + 8))(v14, v3);
    v15 = 0;
  }

  v17 = sub_24F928A68();
  return (*(*(v17 - 8) + 56))(v16, v15, 1, v17);
}

void ModelMappedDiffableDataSourceContentSnapshot.copy(clearingIdentifierSnapshot:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  v8 = sub_24F066CE0();
  v10 = v9;
  v11 = (a3 + *(a2 + 52));

  *v11 = v8;
  v11[1] = v10;
  if (a1)
  {
    sub_24F067460(a2);
  }
}

Swift::Void __swiftcall ModelMappedDiffableDataSourceContentSnapshot.setSectionModels(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  rawValue = a1._rawValue;
  v5 = *(v1 + 16);
  v61 = *(v5 - 8);
  MEMORY[0x28223BE20](a1._rawValue);
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  v53 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  v15 = (v2 + *(v14 + 36));

  *v15 = MEMORY[0x277D84F90];

  v15[1] = MEMORY[0x277D84F98];
  sub_24EBD5384();
  sub_24F92AEA8();
  sub_24F92AE98();
  v62 = v3;
  v16 = *(v3 + 24);
  v17 = v15;
  v59 = v16;
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer(255, v5, v16, v18);
  sub_24F92AEA8();
  v63 = v2;
  sub_24F92AE98();
  if (!sub_24F92B648())
  {
LABEL_30:
    sub_24F067460(v62);
    return;
  }

  v19 = 0;
  v20 = (v61 + 16);
  v58 = (v61 + 32);
  v65 = (v61 + 8);
  v55 = v9;
  v56 = rawValue;
  v54 = v13;
  v57 = (v61 + 16);
  while (1)
  {
    v21 = sub_24F92B628();
    sub_24F92B5D8();
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = *(v61 + 16);
    v22(v13, &rawValue[((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v19], v5);
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_31;
    }

LABEL_7:
    (*v58)(v9, v13, v5);
    v24 = v60;
    v22(v60, v9, v5);
    sub_24F928D68();
    v25 = *v65;
    (*v65)(v24, v5);
    if (*(v17[1] + 2))
    {
      sub_24E76DD40(v68);
      if (v26)
      {
        sub_24E772780(v68);
        goto LABEL_4;
      }

      v64 = v25;
    }

    else
    {
      v64 = v25;
    }

    v27 = *v17;
    v28 = *(*v17 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v17;
    v31 = isUniquelyReferenced_nonNull_native;
    v32 = v30;
    *&v66[0] = v30[1];
    v33 = *&v66[0];
    v35 = sub_24E76DD40(v68);
    v36 = *(v33 + 16);
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_32;
    }

    v39 = v34;
    if (*(v33 + 24) >= v38)
    {
      if ((v31 & 1) == 0)
      {
        sub_24E8AE134();
      }
    }

    else
    {
      sub_24E899B98(v38, v31);
      v40 = sub_24E76DD40(v68);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_35;
      }

      v35 = v40;
    }

    v17 = v32;
    v42 = *&v66[0];
    v20 = v57;
    if (v39)
    {
      *(*(*&v66[0] + 56) + 8 * v35) = v28;
    }

    else
    {
      *(*&v66[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
      sub_24E772724(v68, *(v42 + 6) + 40 * v35);
      *(*(v42 + 7) + 8 * v35) = v28;
      v43 = *(v42 + 2);
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_33;
      }

      *(v42 + 2) = v45;
    }

    v17[1] = v42;
    sub_24E772724(v68, v66);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v9 = v55;
    v13 = v54;
    if ((v46 & 1) == 0)
    {
      v27 = sub_24E616FEC(0, *(v27 + 2) + 1, 1, v27);
    }

    v48 = *(v27 + 2);
    v47 = *(v27 + 3);
    if (v48 >= v47 >> 1)
    {
      v27 = sub_24E616FEC((v47 > 1), v48 + 1, 1, v27);
    }

    sub_24E772780(v68);
    *(v27 + 2) = v48 + 1;
    v49 = &v27[40 * v48];
    v50 = v67;
    v51 = v66[1];
    *(v49 + 2) = v66[0];
    *(v49 + 3) = v51;
    *(v49 + 8) = v50;
    *v17 = v27;
    rawValue = v56;
    v25 = v64;
LABEL_4:
    sub_24F066E90(v9, v62);
    v25(v9, v5);
    ++v19;
    if (v23 == sub_24F92B648())
    {
      goto LABEL_30;
    }
  }

  v52 = sub_24F92C8D8();
  if (v53 != 8)
  {
    goto LABEL_34;
  }

  *v68 = v52;
  v22 = *v20;
  (*v20)(v13, v68, v5);
  swift_unknownObjectRelease();
  v23 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_7;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_24F92CF88();
  __break(1u);
}

Swift::Void __swiftcall ModelMappedDiffableDataSourceContentSnapshot.reloadSections(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  sub_24F0683B0(sub_24F06977C);
  v5 = *(a1._rawValue + 2);
  if (v5)
  {
    v6 = 0;
    v7 = a1._rawValue + 32;
    while (1)
    {
      sub_24E772724(&v7[40 * v6], v14);
      sub_24E65864C(v14, v12);
      sub_24E772780(v14);
      DiffablePageContentIdentifier.init(_:)(v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
      v8 = sub_24F922DD8();
      sub_24E772780(v13);
      v9 = *(v8 + 16);
      if (v9)
      {
        break;
      }

LABEL_3:
      ++v6;

      if (v6 == v5)
      {
        return;
      }
    }

    v10 = 0;
    v11 = v8 + 32;
    while (v10 < *(v8 + 16))
    {
      sub_24E772724(v11, v13);
      sub_24F0684B4(v13, v2, *(v3 + 16), *(v3 + 24));
      ++v10;
      sub_24E772780(v13);
      v11 += 40;
      if (v9 == v10)
      {
        goto LABEL_3;
      }
    }

    __break(1u);

    sub_24E772780(v13);
    __break(1u);
  }
}

Swift::Void __swiftcall ModelMappedDiffableDataSourceContentSnapshot.reloadSectionModels(_:onlyReloadingItems:)(Swift::OpaquePointer _, Swift::Bool onlyReloadingItems)
{
  v3 = v2;
  sub_24F92B6E8();
  swift_getWitnessTable();
  v5 = sub_24F92B438();
  v6 = sub_24F067D04(v5, v3);
  if (!onlyReloadingItems)
  {
    MEMORY[0x28223BE20](v6);
    sub_24F0683B0(sub_24F069E78);
  }
}

uint64_t sub_24F065E4C(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v13 = v5;
  v14 = v6;
  v7 = sub_24EB0AD64(sub_24F069DD0, v12, a1);
  sub_24F0683B0(a3);
  v8 = *(v7 + 2);
  if (!v8)
  {
  }

  v9 = 0;
  v10 = (v7 + 32);
  while (v9 < *(v7 + 2))
  {
    sub_24E772724(v10, v12);
    sub_24F0684B4(v12, v3, v5, v6);
    ++v9;
    sub_24E772780(v12);
    v10 += 40;
    if (v8 == v9)
    {
    }
  }

  __break(1u);

  result = sub_24E772780(v12);
  __break(1u);
  return result;
}

uint64_t sub_24F065F64(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  result = sub_24F0683B0(a3);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + 32;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    do
    {
      result = sub_24F0684B4(v8, v3, v9, v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24EBD5384();
  sub_24F922E28();
  v8 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, a1, a2, v7);
  v9 = v8[9];
  sub_24F0692A4(MEMORY[0x277D84F90], &v21);
  *(a3 + v9) = v21;
  v10 = v8[10];
  swift_getTupleTypeMetadata2();
  v11 = sub_24F92B608();
  v12 = sub_24E9065F8(v11, &type metadata for DiffablePageContentIdentifier, a1, v6);

  *(a3 + v10) = v12;
  v13 = v8[11];
  v15 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer(255, a1, a2, v14);
  swift_getTupleTypeMetadata2();
  v16 = sub_24F92B608();
  v17 = sub_24E9065F8(v16, &type metadata for DiffablePageContentIdentifier, v15, v6);

  *(a3 + v13) = v17;
  *(a3 + v8[12]) = MEMORY[0x277D84FA0];
  result = sub_24F066CE0();
  v19 = (a3 + v8[13]);
  *v19 = result;
  v19[1] = v20;
  return result;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0 || (v5 = *(v3 + *(a2 + 36)), *(v5 + 16) <= a1))
  {
    v8 = sub_24F928A68();
    v9 = *(*(v8 - 8) + 56);

    return v9(a3, 1, 1, v8);
  }

  else
  {
    sub_24E772724(v5 + 40 * a1 + 32, v10);
    ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(a2, a3);
    return sub_24E772780(v10);
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionIndex(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 36) + 8);
  if (*(v3 + 16) && (v4 = sub_24E76DD40(a1), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t x3_0@<X3>)
{
  v5 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer(0, *(a2 + 16), *(a2 + 24), x3_0);
  sub_24EBD5384();
  sub_24F92AEC8();
  if (v11)
  {
    sub_24E615E00(v10, v12);
    (*(*(v5 - 8) + 8))(v10, v5);
    sub_24E612C80(v12, v13);
    sub_24E615E00(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    sub_24F928A78();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
    return (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
  }

  else
  {
    v8 = sub_24F92C4A8();
    (*(*(v8 - 8) + 8))(v10, v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.doesSectionExist(for:)(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + *(a2 + 36) + 8) + 16))
  {
    sub_24E76DD40(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

char *ModelMappedDiffableDataSourceContentSnapshot.itemModels(in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_24F928A68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-1] - v9;
  v11 = sub_24F92C4A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-1] - v14;
  (*(v8 + 16))(v10, a1, v7, v13);
  v16 = *(a2 + 24);
  DiffablePageContentIdentifier.init<A>(_:)(v10);
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(a2, v15);
  sub_24E772780(v23);
  v17 = (*(v8 + 48))(v15, 1, v7);
  if (v17 == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  else
  {
    MEMORY[0x28223BE20](v17);
    *(&v22 - 2) = v6;
    *(&v22 - 1) = v16;
    swift_getKeyPath();
    sub_24F928A48();

    v19 = v23[0];
    v20 = (*(v8 + 8))(v15, v7);
    MEMORY[0x28223BE20](v20);
    *(&v22 - 4) = v6;
    *(&v22 - 3) = v16;
    *(&v22 - 2) = v3;
    v21 = sub_24EB0B440(sub_24F0698EC, (&v22 - 6), v19);

    return v21;
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.debugModelDescription.getter(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = sub_24F928A68();
  v45 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v45);
  v6 = v37 - v5;
  MEMORY[0x28223BE20](v7);
  v11 = v37 - v10;
  v12 = (v1 + *(v2 + 36));
  v13 = *v12;
  v14 = *(*v12 + 16);
  v37[0] = v12[1];
  v37[1] = v13;
  if (v14)
  {
    v15 = v13 + 32;
    v16 = (v9 + 48);
    v42 = (v9 + 8);
    v43 = (v9 + 32);
    v41 = (v8 + 8);

    v46 = MEMORY[0x277D84F90];
    v38 = v3;
    v39 = v1;
    v44 = v2;
    v40 = v16;
    do
    {
      sub_24E772724(v15, v50);
      ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(v2, v6);
      if ((*v16)(v6, 1, v4) == 1)
      {
        sub_24E772780(v50);
        (*v41)(v6, v45);
      }

      else
      {
        v17 = (*v43)(v11, v6, v4);
        MEMORY[0x28223BE20](v17);
        v18 = *(v2 + 24);
        v37[-2] = v3;
        v37[-1] = v18;
        swift_getKeyPath();
        sub_24F928A48();

        v19 = *(v48 + 16);

        if (v19)
        {
          v48 = 0x3A6E6F6974636573;
          v49 = 0xE900000000000020;
          v20 = sub_24F92C7A8();
          MEMORY[0x253050C20](v20);

          v21 = MEMORY[0x253050C20](8250, 0xE200000000000000);
          MEMORY[0x28223BE20](v21);
          v37[-2] = v3;
          v37[-1] = v18;
          swift_getKeyPath();
          sub_24F928A48();

          v22 = v47;
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
          v24 = MEMORY[0x253050F40](v22, v23);
          v26 = v25;

          MEMORY[0x253050C20](v24, v26);

          v27 = v48;
          v28 = v49;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_24E615CF4(0, *(v46 + 2) + 1, 1, v46);
          }

          v16 = v40;
          v30 = *(v46 + 2);
          v29 = *(v46 + 3);
          if (v30 >= v29 >> 1)
          {
            v46 = sub_24E615CF4((v29 > 1), v30 + 1, 1, v46);
          }

          (*v42)(v11, v4);
          sub_24E772780(v50);
          v31 = v46;
          *(v46 + 2) = v30 + 1;
          v32 = &v31[16 * v30];
          *(v32 + 4) = v27;
          *(v32 + 5) = v28;
          v3 = v38;
          v2 = v44;
        }

        else
        {
          (*v42)(v11, v4);
          sub_24E772780(v50);
          v2 = v44;
          v16 = v40;
        }
      }

      v15 += 40;
      --v14;
    }

    while (v14);
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA69C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA69C30);
  v48 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E907170();
  v33 = sub_24F92AF68();
  v35 = v34;

  MEMORY[0x253050C20](v33, v35);

  return v50[0];
}

uint64_t sub_24F066CE0()
{
  v0 = sub_24F91F6B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA55CE0);
  sub_24F91F6A8();
  v4 = sub_24F91F668();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x253050C20](v4, v6);

  return v8[0];
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.identifierSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24F066E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_24F92C4A8();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v44 - v18;
  v20 = *(v12 + 16);
  v48 = a1;
  v20(&v44 - v18, a1, v6, v17);
  v52 = *(a2 + 24);
  sub_24F928D68();
  *&v54 = v12;
  v21 = *(v12 + 8);
  v21(v19, v6);
  v51 = a2;
  v22 = *(a2 + 36);
  v53 = v3;
  if (!*(*(v3 + v22 + 8) + 16) || (sub_24E76DD40(v63), (v23 & 1) == 0))
  {
    sub_24E772780(v63);
    return 0;
  }

  v45 = v21;
  v24 = *(v51 + 40);
  v50 = sub_24EBD5384();
  sub_24F92AEC8();
  v25 = v54;
  v26 = (*(v54 + 48))(v11, 1, v6);
  v46 = v24;
  if (v26 == 1)
  {
    v47[1](v11, v7);
  }

  else
  {
    (*(v25 + 32))(v15, v11, v6);
    v28 = (*(v52 + 16))(v6);
    v29 = v28;
    v30 = *(v28 + 16);
    if (v30)
    {
      v31 = 0;
      v32 = v28 + 32;
      do
      {
        if (v31 >= *(v29 + 16))
        {
          goto LABEL_19;
        }

        sub_24E615E00(v32, &v58);
        sub_24F069050(&v58, v53, v6, v52);
        ++v31;
        __swift_destroy_boxed_opaque_existential_1(&v58);
        v32 += 40;
      }

      while (v30 != v31);
    }

    v45(v15, v6);
  }

  sub_24E772724(v63, &v58);
  v33 = v52;
  v34 = *(v52 + 16);
  v45 = (v52 + 16);
  v47 = v34;
  (v34)(v6, v52);
  v35 = v49;
  (*(v33 + 24))();

  (*(v54 + 56))(v35, 0, 1, v6);
  sub_24F92AEA8();
  sub_24F92AED8();
  v36 = (v47)(v6, v33);
  v37 = 0;
  v38 = *(v36 + 16);
  v48 = v36 + 32;
  v49 = v36;
  while (1)
  {
    v39 = 0uLL;
    v40 = v38;
    v41 = 0uLL;
    v42 = 0uLL;
    if (v37 == v38)
    {
      goto LABEL_15;
    }

    if (v37 >= *(v49 + 2))
    {
      break;
    }

    v40 = v37 + 1;
    *&v58 = v37;
    sub_24E615E00(v48 + 40 * v37, &v58 + 8);
    v39 = v58;
    v41 = v59;
    v42 = *v60;
LABEL_15:
    v62[0] = v39;
    v62[1] = v41;
    v62[2] = v42;
    if (!v42)
    {
      sub_24E772780(v63);

      return 1;
    }

    v54 = v39;
    sub_24E612C80((v62 + 8), v61);
    sub_24E615E00(v61, &v58);
    __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
    sub_24F928D68();
    __swift_destroy_boxed_opaque_existential_1(&v58);
    sub_24E615E00(v61, v57);
    sub_24E772724(v63, v55);
    sub_24E612C80(v57, &v58);
    *&v60[1] = v55[0];
    *&v60[3] = v55[1];
    v60[5] = v56;
    v60[6] = v54;
    type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer(255, v6, v52, v43);
    sub_24F92AEA8();
    sub_24F92AED8();
    __swift_destroy_boxed_opaque_existential_1(v61);
    v37 = v40;
  }

  __break(1u);
LABEL_19:
  __break(1u);

  result = __swift_destroy_boxed_opaque_existential_1(&v58);
  __break(1u);
  return result;
}

void sub_24F067460(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = sub_24F928A68();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v36 - v5;
  v52 = sub_24F92C4A8();
  v7 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v9 = v36 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x28223BE20](v11);
  v51 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = v36 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v37 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = v36 - v15;
  v17 = sub_24EBD5384();
  v58 = v16;
  v56 = v17;
  sub_24F922E28();
  v18 = (v1 + *(v2 + 36));
  v20 = *v18;
  v19 = v18[1];
  v55 = *(*v18 + 16);
  v38 = v1;
  v36[1] = v19;
  if (v55)
  {
    v21 = *(v1 + *(v2 + 40));
    v54 = v20 + 32;
    v53 = (v10 + 48);
    v46 = (v10 + 32);
    v45 = (v10 + 16);
    ++v44;
    v43 = (v10 + 8);
    v42 = (v7 + 8);

    v22 = 0;
    v41 = xmmword_24F93DE60;
    v40 = v2;
    v39 = v4;
    v50 = v6;
    v49 = v9;
    v48 = v20;
    v47 = v21;
    while (v22 < *(v20 + 16))
    {
      sub_24E772724(v54 + 40 * v22, v66);
      sub_24F92AEC8();
      if ((*v53)(v9, 1, v3) == 1)
      {
        sub_24E772780(v66);
        (*v42)(v9, v52);
      }

      else
      {
        v23 = v57;
        (*v46)(v57, v9, v3);
        (*v45)(v51, v23, v3);
        sub_24F928A78();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF0, &unk_24F992820);
        v24 = swift_allocObject();
        *(v24 + 16) = v41;
        sub_24E772724(v66, v24 + 32);
        sub_24F922DB8();

        MEMORY[0x28223BE20](v25);
        v26 = *(v2 + 24);
        v36[-2] = v3;
        v36[-1] = v26;
        swift_getKeyPath();
        sub_24F928A48();

        v27 = v65;
        v28 = *(v65 + 16);
        if (v28)
        {
          v64 = MEMORY[0x277D84F90];
          sub_24F457E94(0, v28, 0);
          v29 = v64;
          v30 = v27 + 32;
          do
          {
            sub_24E615E00(v30, &v61);
            sub_24E615E00(&v61, v60);
            __swift_project_boxed_opaque_existential_1(v60, v60[3]);
            sub_24F928D68();
            __swift_destroy_boxed_opaque_existential_1(&v61);
            __swift_destroy_boxed_opaque_existential_1(v60);
            v64 = v29;
            v32 = *(v29 + 16);
            v31 = *(v29 + 24);
            if (v32 >= v31 >> 1)
            {
              sub_24F457E94((v31 > 1), v32 + 1, 1);
              v29 = v64;
            }

            *(v29 + 16) = v32 + 1;
            v33 = v29 + 40 * v32;
            v34 = v62[0];
            v35 = v62[1];
            *(v33 + 64) = v63;
            *(v33 + 32) = v34;
            *(v33 + 48) = v35;
            v30 += 40;
            --v28;
          }

          while (v28);

          v2 = v40;
          v4 = v39;
        }

        else
        {
        }

        sub_24E772724(v66, v62);
        sub_24F922D88();

        sub_24F069E10(v62);
        (*v44)(v50, v4);
        (*v43)(v57, v3);
        sub_24E772780(v66);
        v9 = v49;
        v20 = v48;
      }

      if (++v22 == v55)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:

    (*(v37 + 40))(v38, v58, v59);
  }
}

double sub_24F067BC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v10, v11, v11);
  if (sub_24F066E90(a1, v12))
  {
    (*(v7 + 16))(v9, a1, a2);
    sub_24F928D68();
    (*(v7 + 8))(v9, a2);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

char *sub_24F067D04(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(a2 + 16);
  v45 = sub_24F928A68();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v41 - v7;
  v57 = sub_24F92C4A8();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v11 = &v41 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x28223BE20](v13);
  v56 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = &v41 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v20 = MEMORY[0x28223BE20](v17);
  result = &v41 - v18;
  v59 = *(a1 + 16);
  if (v59)
  {
    v42 = v19;
    v22 = *(v19 + 16);
    v61 = &v41 - v18;
    v22(v20);
    v23 = v6;
    v24 = 0;
    v25 = *(v3 + 40);
    v43 = v2;
    v26 = *(v2 + v25);
    v27 = a1 + 32;
    v58 = (v12 + 48);
    v50 = (v12 + 32);
    v49 = (v12 + 16);
    v48 = (v23 + 8);
    v47 = (v12 + 8);
    v46 = (v9 + 8);
    v28 = v45;
    v44 = v3;
    v55 = v8;
    v54 = v11;
    v53 = v17;
    v52 = v26;
    v51 = v27;
    do
    {
      sub_24E772724(v27 + 40 * v24, v68);
      sub_24EBD5384();
      sub_24F92AEC8();
      if ((*v58)(v11, 1, v5) == 1)
      {
        sub_24E772780(v68);
        (*v46)(v11, v57);
      }

      else
      {
        v29 = v60;
        (*v50)(v60, v11, v5);
        (*v49)(v56, v29, v5);
        sub_24F928A78();
        sub_24F922DD8();
        sub_24F922D98();

        MEMORY[0x28223BE20](v30);
        v31 = *(v3 + 24);
        *(&v41 - 2) = v5;
        *(&v41 - 1) = v31;
        swift_getKeyPath();
        sub_24F928A48();

        v32 = v67;
        v33 = *(v67 + 16);
        if (v33)
        {
          v66 = MEMORY[0x277D84F90];
          sub_24F457E94(0, v33, 0);
          v34 = v66;
          v35 = v32 + 32;
          do
          {
            sub_24E615E00(v35, v63);
            sub_24E615E00(v63, v62);
            __swift_project_boxed_opaque_existential_1(v62, v62[3]);
            sub_24F928D68();
            __swift_destroy_boxed_opaque_existential_1(v63);
            __swift_destroy_boxed_opaque_existential_1(v62);
            v66 = v34;
            v37 = *(v34 + 16);
            v36 = *(v34 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_24F457E94((v36 > 1), v37 + 1, 1);
              v34 = v66;
            }

            *(v34 + 16) = v37 + 1;
            v38 = v34 + 40 * v37;
            v39 = v64[0];
            v40 = v64[1];
            *(v38 + 64) = v65;
            *(v38 + 32) = v39;
            *(v38 + 48) = v40;
            v35 += 40;
            --v33;
          }

          while (v33);

          v3 = v44;
          v28 = v45;
        }

        else
        {
        }

        sub_24E772724(v68, v64);
        v17 = v53;
        sub_24F922D88();

        sub_24F069E10(v64);
        (*v48)(v55, v28);
        (*v47)(v60, v5);
        sub_24E772780(v68);
        v11 = v54;
        v27 = v51;
      }

      ++v24;
    }

    while (v24 != v59);
    return (*(v42 + 40))(v43, v61, v17);
  }

  return result;
}

uint64_t sub_24F0683B0(void (*a1)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v1, v3, v5);
  a1(v7);
  return (*(v4 + 40))(v1, v7, v3);
}

uint64_t sub_24F0684B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24E65864C(a1, v8);
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, a3, a4, v6);
  sub_24ED7D5A0(v9, v8);
  return sub_24E6585F8(v9);
}

uint64_t sub_24F068528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v9 = sub_24F92C4A8();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v41 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  sub_24E615E00(a1, &v48);
  __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(&v48);
  v18 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, a3, a4, v17);
  v19 = *(v18 + 44);
  v43 = a2;
  v37 = v19;
  v21 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer(0, a3, a4, v20);
  sub_24EBD5384();
  sub_24F92AEC8();
  sub_24E772780(v52);
  if (!*(&v49 + 1))
  {
    v24 = sub_24F92C4A8();
    result = (*(*(v24 - 8) + 8))(&v48, v24);
    goto LABEL_5;
  }

  v54[0] = v50[0];
  v54[1] = v50[1];
  v54[2] = v50[2];
  v55 = v51;
  v53[0] = v48;
  v53[1] = v49;
  v22 = *(v18 + 40);
  sub_24F92AEC8();
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    (*(*(v21 - 8) + 8))(v53, v21);
    result = (*(v38 + 8))(v13, v39);
LABEL_5:
    v25 = v44;
    *(v44 + 32) = 0;
    *v25 = 0u;
    v25[1] = 0u;
    return result;
  }

  v36 = v14;
  (*(v14 + 32))(v41, v13, a3);
  v26 = v42;
  sub_24E615E00(v42, &v48);
  v35 = v21;
  __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  v39 = v22;
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(&v48);
  sub_24E615E00(v26, v47);
  sub_24E772724(v54 + 8, v45);
  v27 = v55;
  sub_24E612C80(v47, &v48);
  *(v50 + 8) = v45[0];
  *(&v50[1] + 8) = v45[1];
  *(&v50[2] + 1) = v46;
  v51 = v27;
  sub_24F92AEA8();
  v28 = v43;
  sub_24F92AED8();
  v29 = v41;
  v30 = (*(a4 + 16))(a3, a4);
  MEMORY[0x28223BE20](v30);
  *(&v35 - 4) = a3;
  *(&v35 - 3) = a4;
  *(&v35 - 2) = v28;
  v31 = v56;
  v32 = sub_24EB0AEC0(sub_24F069DF0, (&v35 - 6), v30);
  v56 = v31;

  sub_24E772724(v54 + 8, &v48);
  v33 = v40;
  (*(a4 + 24))(v32, a3, a4);

  v34 = v36;
  (*(v36 + 56))(v33, 0, 1, a3);
  sub_24F92AEA8();
  sub_24F92AED8();
  sub_24E615E00(v42, &v48);
  __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  sub_24F928D68();
  (*(v34 + 8))(v29, a3);
  (*(*(v35 - 8) + 8))(v53);
  return __swift_destroy_boxed_opaque_existential_1(&v48);
}

double sub_24F068AC8@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24E615E00(a1, v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(v16);
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, a3, a4, v8);
  v10 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer(0, a3, a4, v9);
  sub_24EBD5384();
  sub_24F92AEC8();
  sub_24E772780(v18);
  if (v17)
  {
    v11 = *(v10 - 8);
    (*(v11 + 16))(v15, v16, v10);
    v12 = sub_24F92C4A8();
    (*(*(v12 - 8) + 8))(v16, v12);
    sub_24E615E00(v15, a5);
    (*(v11 + 8))(v15, v10);
  }

  else
  {
    v14 = sub_24F92C4A8();
    (*(*(v14 - 8) + 8))(v16, v14);
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionModel(containing:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t x3_0@<X3>)
{
  v6 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer(0, *(a2 + 16), *(a2 + 24), x3_0);
  sub_24EBD5384();
  sub_24F92AEC8();
  if (v10[3])
  {
    sub_24E772724(&v11, v12);
    (*(*(v6 - 8) + 8))(v10, v6);
    v14[0] = v12[0];
    v14[1] = v12[1];
    v15 = v13;
    ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(a2, a3);
    return sub_24E772780(v14);
  }

  else
  {
    v8 = sub_24F92C4A8();
    (*(*(v8 - 8) + 8))(v10, v8);
    v9 = sub_24F928A68();
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_24F068E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[1] = a4;
  v22 = a3;
  v23 = a2;
  v8 = sub_24F928A68();
  v9 = sub_24F92C4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  v18 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, a5, a6, v17);
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(v18, v12);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    v19 = 0;
  }

  else
  {
    (*(v13 + 32))(v16, v12, v8);
    v19 = v22(v16);
    (*(v13 + 8))(v16, v8);
  }

  return v19 & 1;
}

uint64_t sub_24F069050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24E615E00(a1, v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(v11);
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, a3, a4, v6);
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer(255, a3, a4, v7);
  sub_24EBD5384();
  sub_24F92AEA8();
  sub_24F92AE58();
  sub_24E772780(&v10);
  v8 = sub_24F92C4A8();
  return (*(*(v8 - 8) + 8))(v11, v8);
}

uint64_t sub_24F069170@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 16))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_24F0691B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_24E615E00(a1, v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(v11);
  v8 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, a2, a3, v7);
  ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)(v8, a4, v9);
  return sub_24E772780(v12);
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.debugIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_24F0692A4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (!v4)
  {

    v7 = MEMORY[0x277D84F98];
    v8 = MEMORY[0x277D84F90];
LABEL_25:
    *v3 = v8;
    v3[1] = v7;
    return result;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x277D84F98];
  v8 = MEMORY[0x277D84F90];
  while (v5 < *(a1 + 16))
  {
    sub_24E772724(v6, v33);
    if (!*(v7 + 2) || (sub_24E76DD40(v33), (v9 & 1) == 0))
    {
      v10 = *(v8 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v31[0] = v7;
      v12 = sub_24E76DD40(v33);
      v14 = *(v7 + 2);
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_27;
      }

      v18 = v13;
      if (*(v7 + 3) >= v17)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_13;
        }

        v20 = v12;
        sub_24E8AE134();
        v12 = v20;
        v7 = *&v31[0];
        if ((v18 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_14:
        *(*(v7 + 7) + 8 * v12) = v10;
      }

      else
      {
        sub_24E899B98(v17, isUniquelyReferenced_nonNull_native);
        v12 = sub_24E76DD40(v33);
        if ((v18 & 1) != (v19 & 1))
        {
          goto LABEL_29;
        }

LABEL_13:
        v7 = *&v31[0];
        if (v18)
        {
          goto LABEL_14;
        }

LABEL_16:
        *&v7[8 * (v12 >> 6) + 64] |= 1 << v12;
        v21 = v12;
        sub_24E772724(v33, *(v7 + 6) + 40 * v12);
        *(*(v7 + 7) + 8 * v21) = v10;
        v22 = *(v7 + 2);
        v16 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v16)
        {
          goto LABEL_28;
        }

        *(v7 + 2) = v23;
      }

      sub_24E772724(v33, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_24E616FEC(0, *(v8 + 2) + 1, 1, v8);
      }

      v25 = *(v8 + 2);
      v24 = *(v8 + 3);
      if (v25 >= v24 >> 1)
      {
        v8 = sub_24E616FEC((v24 > 1), v25 + 1, 1, v8);
      }

      sub_24E772780(v33);
      *(v8 + 2) = v25 + 1;
      v26 = &v8[40 * v25];
      v27 = v32;
      v28 = v31[1];
      *(v26 + 2) = v31[0];
      *(v26 + 3) = v28;
      *(v26 + 8) = v27;
      goto LABEL_4;
    }

    sub_24E772780(v33);
LABEL_4:
    ++v5;
    v6 += 40;
    if (v4 == v5)
    {

      v3 = a2;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F06951C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F98];
    v6 = MEMORY[0x277D84F90];
LABEL_23:

    *a2 = v6;
    a2[1] = v5;
    return result;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  v6 = MEMORY[0x277D84F90];
  while (v4 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 8 * v4);
    if (!*(v5 + 2) || (sub_24E7728CC(*(a1 + 32 + 8 * v4)), (v8 & 1) == 0))
    {
      v9 = *(v6 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_24E7728CC(v7);
      v13 = *(v5 + 2);
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_25;
      }

      v17 = v12;
      if (*(v5 + 3) >= v16)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_13;
        }

        v19 = v11;
        sub_24E8B261C();
        v11 = v19;
        if ((v17 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_14:
        *(*(v5 + 7) + 8 * v11) = v9;
      }

      else
      {
        sub_24E8A188C(v16, isUniquelyReferenced_nonNull_native);
        v11 = sub_24E7728CC(v7);
        if ((v17 & 1) != (v18 & 1))
        {
          goto LABEL_27;
        }

LABEL_13:
        if (v17)
        {
          goto LABEL_14;
        }

LABEL_16:
        *&v5[8 * (v11 >> 6) + 64] |= 1 << v11;
        *(*(v5 + 6) + 8 * v11) = v7;
        *(*(v5 + 7) + 8 * v11) = v9;
        v20 = *(v5 + 2);
        v15 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v15)
        {
          goto LABEL_26;
        }

        *(v5 + 2) = v21;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E615EC4(0, *(v6 + 2) + 1, 1, v6);
      }

      v23 = *(v6 + 2);
      v22 = *(v6 + 3);
      if (v23 >= v22 >> 1)
      {
        v6 = sub_24E615EC4((v22 > 1), v23 + 1, 1, v6);
      }

      *(v6 + 2) = v23 + 1;
      *&v6[8 * v23 + 32] = v7;
    }

    if (v3 == ++v4)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F06988C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 16))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_24F0698E0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_24F06990C(uint64_t a1)
{
  sub_24F069BD8(319);
  if (v2 <= 0x3F)
  {
    sub_24F069C44(319);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      sub_24EBD5384();
      sub_24F92AEA8();
      if (v6 <= 0x3F)
      {
        type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer(255, v4, *(a1 + 24), v5);
        sub_24F92AEA8();
        if (v7 <= 0x3F)
        {
          sub_24F069CA0();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F069A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t sub_24F069B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_24F069BD8(uint64_t a1)
{
  if (!qword_27F238030)
  {
    sub_24EBD5384();
    v1 = sub_24F922E38();
    if (!v2)
    {
      atomic_store(v1, &qword_27F238030);
    }
  }
}

void sub_24F069C44(uint64_t a1)
{
  if (!qword_27F238038)
  {
    v2 = sub_24EBD5384();
    v4 = type metadata accessor for OrderedSet(a1, &type metadata for DiffablePageContentIdentifier, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27F238038);
    }
  }
}

void sub_24F069CA0()
{
  if (!qword_27F238040[0])
  {
    v0 = sub_24F92BAF8();
    if (!v1)
    {
      atomic_store(v0, qword_27F238040);
    }
  }
}

uint64_t sub_24F069CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F069D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F069D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F069E10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228658, &qword_24F9C31B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

JUMeasurements __swiftcall BoundsBasedPlaceable.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  height = toFit.height;
  width = toFit.width;
  v6 = *v2;
  sub_24F922A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F941C80;
  *(v7 + 32) = with;
  v8 = with.super.isa;
  v9 = sub_24F922A28();
  [v6 measurementsWithFitting:v9 in:{width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.var3 = v21;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

Swift::Void __swiftcall BoundsBasedPlaceable.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v7 = *v2;
  [*v2 bounds];
  [v7 setBounds_];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);

  [v7 setCenter_];
}

double sub_24F06A020(void *a1, double a2, double a3)
{
  v7 = *v3;
  sub_24F922A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F941C80;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_24F922A28();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

id sub_24F06A0F4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *v4;
  [*v4 bounds];
  [v9 setBounds_];
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  MidY = CGRectGetMidY(v15);

  return [v9 setCenter_];
}

uint64_t StoreTab.Identifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 4)
  {
    if (v2 <= 7)
    {
      if (v2 == 5)
      {
        v3 = 0x656461637261;
      }

      else if (v2 == 6)
      {
        v3 = 0x6465727574616566;
      }

      else
      {
        v3 = 0x69726F6765746163;
      }

      goto LABEL_25;
    }

    switch(v2)
    {
      case 8:
        v3 = 0x737472616863;
        goto LABEL_25;
      case 9:
        v3 = 0x6573616863727570;
        goto LABEL_25;
      case 10:
        v3 = 0x64616F6C6E776F64;
        goto LABEL_25;
    }

LABEL_24:
    v3 = *v0;
    goto LABEL_25;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0x7961646F74;
      goto LABEL_25;
    }

    if (v2 == 1)
    {
      v3 = 0x73656D6167;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v2 == 2)
  {
    v3 = 1936748641;
  }

  else if (v2 == 3)
  {
    v3 = 0x73657461647075;
  }

  else
  {
    v3 = 0x686372616573;
  }

LABEL_25:
  sub_24E8E2880(v1, v2);
  return v3;
}

uint64_t StoreTab.Identifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x7961646F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x73656D6167 && v3 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 1936748641 && v3 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x73657461647075 && v3 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0x686372616573 && v3 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 0x6465727574616566 && v3 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 6;
  }

  else if (v4 == 0x69726F6765746163 && v3 == 0xEA00000000007365 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 7;
  }

  else if (v4 == 0x737472616863 && v3 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 8;
  }

  else if (v4 == 0x6573616863727570 && v3 == 0xE900000000000064 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 9;
  }

  else if (v4 == 0x64616F6C6E776F64 && v3 == 0xE900000000000073 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 10;
  }

  else if (v4 == 0x656461637261 && v3 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0 || v4 == 0x746F6C65636FLL && v3 == 0xE600000000000000 || (result = sub_24F92CE08(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 5;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t sub_24F06A738(__n128 a1)
{
  v1 = type metadata accessor for StoreTab(0);
  v2 = (v1 - 8);
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C48, &unk_24F93B870);
  v32 = *(v3 + 72);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F93A400;
  v30 = v10 + v9;
  v31 = v10;
  v11 = sub_24F91F4A8();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 1, 1, v11);
  v13 = sub_24E60C478(MEMORY[0x277D84F90]);
  *v5 = xmmword_24F943570;
  sub_24E99091C(v8, &v5[v2[8]]);
  v14 = &v5[v2[9]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v5[v2[11]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v33 = 0x73657461647075;
  v34 = 0xE700000000000000;
  sub_24E600AEC();
  v16 = sub_24F92C4F8();
  v18 = v17;
  sub_24E70E058(v8);
  *(v5 + 2) = v16;
  *(v5 + 3) = v18;
  *&v5[v2[10]] = v13;
  v19 = v30;
  sub_24E9E82E8(v5, v30, v20);
  v12(v8, 1, 1, v11);
  v21 = sub_24E60C478(MEMORY[0x277D84F90]);
  *v5 = xmmword_24F9C3230;
  sub_24E99091C(v8, &v5[v2[8]]);
  v22 = &v5[v2[9]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v5[v2[11]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v33 = 0x686372616573;
  v34 = 0xE600000000000000;
  v24 = sub_24F92C4F8();
  v26 = v25;
  sub_24E70E058(v8);
  *(v5 + 2) = v24;
  *(v5 + 3) = v26;
  *&v5[v2[10]] = v21;
  result = sub_24E9E82E8(v5, v19 + v32, v27);
  qword_27F2380C8 = v31;
  return result;
}

double static StoreTab.fallbackTabs.getter()
{
  if (qword_27F210EA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static StoreTab.fallbackTabs.setter(uint64_t a1)
{
  if (qword_27F210EA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F2380C8 = a1;
}

uint64_t (*static StoreTab.fallbackTabs.modify(uint64_t a1))(void)
{
  if (qword_27F210EA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double StoreTab.Identifier.init(navigationTab:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (v2 > 4)
  {
    if (*a1 > 6u)
    {
      if (v2 == 7)
      {
        result = 0.0;
        *a2 = xmmword_24F9C3240;
        return result;
      }

      goto LABEL_10;
    }

    result = 0.0;
    if (v2 == 5)
    {
      *a2 = xmmword_24F9C3230;
    }

    else
    {
      *a2 = xmmword_24F943570;
    }
  }

  else
  {
    if (*a1 <= 2u)
    {
      if (v2 >= 2)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        return result;
      }

LABEL_10:
      result = 0.0;
      *a2 = xmmword_24F96AF30;
      return result;
    }

    result = 0.0;
    if (v2 == 3)
    {
      *a2 = xmmword_24F986140;
    }

    else
    {
      *a2 = xmmword_24F9406F0;
    }
  }

  return result;
}

uint64_t StoreTab.Identifier.fallbackPageContext.getter()
{
  StoreTab.Identifier.rawValue.getter();
  sub_24E600AEC();
  v0 = sub_24F92C4F8();

  return v0;
}

uint64_t sub_24F06ACDC@<X0>(uint64_t *a1@<X8>)
{
  result = StoreTab.Identifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_24F06AD08()
{
  result = qword_27F2380D0[0];
  if (!qword_27F2380D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F2380D0);
  }

  return result;
}

uint64_t sub_24F06AD5C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  sub_24F204B30(v4, v1, v2);
  return sub_24F92D0B8();
}

uint64_t sub_24F06ADB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  sub_24F204B30(v4, v1, v2);
  return sub_24F92D0B8();
}

uint64_t sub_24F06ADF8()
{
  v0 = StoreTab.Identifier.rawValue.getter();
  v2 = v1;
  if (v0 == StoreTab.Identifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit0B3TabV10IdentifierO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24F06AEA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 16))
  {
    return (*a1 + 2147483637);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 10;
  if (v4 >= 0xC)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F06AF00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 10;
    }
  }

  return result;
}

uint64_t sub_24F06AF60@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v18[0] = a5;
  v18[1] = a6;
  v18[2] = a7;
  v18[3] = a8;
  v13 = type metadata accessor for BaseShelfPageView(0, v18);
  v14 = v13[13];
  *(a9 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  *a9 = sub_24F923C28();
  a9[1] = v15;
  result = sub_24E6009C8(a2, a9 + v13[15], &qword_27F2325E8, &unk_24F9C3400);
  v17 = (a9 + v13[14]);
  *v17 = a3;
  v17[1] = a4;
  return result;
}

uint64_t sub_24F06B050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  if (a4)
  {
    v18 = a4;
    type metadata accessor for Shelf(0);

    sub_24F928A78();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  if (a5)
  {
    v18 = a5;
    type metadata accessor for Shelf(0);

    sub_24F928A78();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
  return sub_24E6009C8(v11, a1, &unk_27F23A690, &qword_24F982880);
}

double sub_24F06B238@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = a1[2];
  v9 = a1[3];
  *(v7 + 2) = v8;
  *(v7 + 3) = v9;
  v10 = a1[4];
  v11 = a1[5];
  *(v7 + 4) = v10;
  *(v7 + 5) = v11;
  (*(v3 + 32))(&v7[v6], v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225188, &qword_24F974D98);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381E0, &unk_24F9C3490);
  v37 = v8;
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v13 = type metadata accessor for BaseShelfPageView.ShelfContentView(255, &v37);
  v14 = sub_24E602068(&qword_27F2381E8, &qword_27F2381E0, &unk_24F9C3490, MEMORY[0x277D7EC38]);
  v37 = v12;
  v38 = MEMORY[0x277D84030];
  v39 = v13;
  v40 = v14;
  v41 = MEMORY[0x277D84038];
  sub_24F927248();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = sub_24F921D68();
  v16 = swift_getWitnessTable();
  v37 = v15;
  v38 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = sub_24F928FD8();
  v37 = v15;
  v38 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = OpaqueTypeMetadata2;
  v38 = v18;
  v39 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C7A0, &qword_24F990BE8);
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0, &unk_24F9C34A0);
  sub_24F924038();
  v37 = OpaqueTypeMetadata2;
  v38 = v18;
  v39 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = MEMORY[0x277CE0868];
  v22 = sub_24E602068(&qword_27F22C798, &qword_27F22C7A0, &qword_24F990BE8, MEMORY[0x277CE0868]);
  v34 = v20;
  v35 = v22;
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x277CE0880];
  v23 = swift_getWitnessTable();
  v24 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0, &unk_24F9C34A0, v21);
  v30 = v23;
  v31 = v24;
  swift_getWitnessTable();
  sub_24F924278();
  swift_getWitnessTable();
  v28 = sub_24F923B78();
  v29 = v25;
  sub_24F923B88();
  swift_getWitnessTable();
  sub_24E7896B8();

  v28 = v37;
  v29 = v38;
  sub_24E7896B8();

  return result;
}

double sub_24F06B70C@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a5;
  v50 = a6;
  v52 = a7;
  v53 = a3;
  v51 = a2;
  v48 = sub_24F9239C8();
  v12 = *(v48 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v48);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a3;
  v64 = a4;
  v15 = a4;
  v47 = a4;
  v65 = a5;
  v66 = a6;
  v16 = type metadata accessor for BaseShelfPageView(0, &v63);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v47 - v20;
  (*(v17 + 16))(&v47 - v20, v51, v16, v19);
  v22 = a1;
  v23 = v48;
  (*(v12 + 16))(v14, v22, v48);
  v24 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v25 = (v18 + *(v12 + 80) + v24) & ~*(v12 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v53;
  *(v26 + 3) = v15;
  v28 = v49;
  v27 = v50;
  *(v26 + 4) = v49;
  *(v26 + 5) = v27;
  v29 = *(v17 + 32);
  v30 = &v26[v24];
  v31 = v26;
  v51 = v26;
  v29(v30, v21, v16);
  (*(v12 + 32))(&v31[v25], v14, v23);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225188, &qword_24F974D98);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381E0, &unk_24F9C3490);
  v63 = v53;
  v64 = v47;
  v65 = v28;
  v66 = v27;
  v33 = type metadata accessor for BaseShelfPageView.ShelfContentView(255, &v63);
  v34 = sub_24E602068(&qword_27F2381E8, &qword_27F2381E0, &unk_24F9C3490, MEMORY[0x277D7EC38]);
  v63 = v32;
  v64 = MEMORY[0x277D84030];
  v65 = v33;
  v66 = v34;
  v67 = MEMORY[0x277D84038];
  sub_24F927248();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v35 = sub_24F921D68();
  v36 = swift_getWitnessTable();
  v63 = v35;
  v64 = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = sub_24F928FD8();
  v63 = v35;
  v64 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = OpaqueTypeMetadata2;
  v64 = v38;
  v65 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C7A0, &qword_24F990BE8);
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0, &unk_24F9C34A0);
  sub_24F924038();
  v63 = OpaqueTypeMetadata2;
  v64 = v38;
  v65 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = MEMORY[0x277CE0868];
  v42 = sub_24E602068(&qword_27F22C798, &qword_27F22C7A0, &qword_24F990BE8, MEMORY[0x277CE0868]);
  v60 = v40;
  v61 = v42;
  v58 = swift_getWitnessTable();
  v59 = MEMORY[0x277CE0880];
  v43 = swift_getWitnessTable();
  v44 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0, &unk_24F9C34A0, v41);
  v56 = v43;
  v57 = v44;
  swift_getWitnessTable();
  v54 = sub_24F924268();
  v55 = v45;
  sub_24F924278();
  swift_getWitnessTable();
  sub_24E7896B8();

  v54 = v63;
  v55 = v64;
  sub_24E7896B8();

  return result;
}

uint64_t sub_24F06BCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v171 = a3;
  v174 = a2;
  v180 = a1;
  v170 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  MEMORY[0x28223BE20](v12 - 8);
  v169 = &v128 - v13;
  v194 = a4;
  v195 = a5;
  v14 = a4;
  v182 = a4;
  v178 = a5;
  v196 = a6;
  v197 = a7;
  v153 = a7;
  v175 = type metadata accessor for BaseShelfPageView(0, &v194);
  v152 = *(v175 - 8);
  v155 = *(v152 + 64);
  MEMORY[0x28223BE20](v175);
  v176 = &v128 - v15;
  v151 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225188, &qword_24F974D98);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381E0, &unk_24F9C3490);
  v194 = v14;
  v195 = a5;
  v196 = a6;
  v197 = a7;
  v17 = type metadata accessor for BaseShelfPageView.ShelfContentView(255, &v194);
  v18 = sub_24E602068(&qword_27F2381E8, &qword_27F2381E0, &unk_24F9C3490, MEMORY[0x277D7EC38]);
  v194 = v16;
  v195 = MEMORY[0x277D84030];
  v196 = v17;
  v197 = v18;
  v198 = MEMORY[0x277D84038];
  v150 = sub_24F927248();
  WitnessTable = swift_getWitnessTable();
  v148 = swift_getWitnessTable();
  v19 = sub_24F921D68();
  v156 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v144 = &v128 - v20;
  v21 = swift_getWitnessTable();
  v194 = v19;
  v195 = v21;
  v139 = v19;
  v22 = v21;
  v140 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v138 = OpaqueTypeMetadata2;
  v154 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v141 = &v128 - v24;
  v25 = sub_24F928FD8();
  v181 = v25;
  v194 = v19;
  v195 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v194 = OpaqueTypeMetadata2;
  v195 = v25;
  v196 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeMetadata2();
  v157 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v177 = &v128 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C7A0, &qword_24F990BE8);
  v158 = v26;
  v28 = sub_24F924038();
  v160 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v159 = &v128 - v29;
  v161 = v30;
  v31 = sub_24F924038();
  v163 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v162 = &v128 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0, &unk_24F9C34A0);
  v165 = v31;
  v168 = sub_24F924038();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v164 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v166 = &v128 - v35;
  v146 = type metadata accessor for ShelfBasedPageScrollActionImplementation(0);
  MEMORY[0x28223BE20](v146);
  v37 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v131 = *(v38 - 8);
  v172 = v131;
  v134 = *(v131 + 64);
  MEMORY[0x28223BE20](v38);
  v40 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v132 = &v128 - v42;
  MEMORY[0x28223BE20](v43);
  v173 = &v128 - v44;
  MEMORY[0x28223BE20](v45);
  v183 = &v128 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  MEMORY[0x28223BE20](v47 - 8);
  v147 = &v128 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v179 = &v128 - v50;
  v133 = a6;
  v51 = *(a6 + 88);
  v135 = a6 + 88;
  v136 = v51;
  swift_unknownObjectRetain();
  v51(v182, a6);
  swift_unknownObjectRelease();
  sub_24F928EF8();

  v52 = sub_24F924098();
  v145 = *(v52 - 8);
  v53 = *(v145 + 16);
  v149 = v52;
  v143 = v145 + 16;
  v142 = v53;
  (v53)(v37, v180);
  sub_24F929298();
  v54 = v172;
  v55 = v172 + 16;
  v56 = *(v172 + 16);
  v57 = v132;
  v56(v132, v40, v38);
  sub_24F074340(&qword_27F238200, type metadata accessor for ShelfBasedPageScrollActionImplementation, &unk_24F9A963C);
  sub_24F929238();
  v58 = v54;
  v60 = v54 + 8;
  v59 = *(v54 + 8);
  v59(v40, v38);
  sub_24F073D6C(v37, type metadata accessor for ShelfBasedPageScrollActionImplementation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8, &qword_24F9C34B0);
  v131 = *(v58 + 80);
  v61 = (v131 + 32) & ~v131;
  v62 = swift_allocObject();
  v63 = v57;
  v56((v62 + v61), v57, v38);
  v64 = v173;
  sub_24F929298();
  v56(v40, (v62 + v61), v38);
  v130 = v55;
  swift_setDeallocating();
  v59((v62 + v61), v38);
  swift_deallocClassInstance();
  sub_24F929228();
  v59(v40, v38);
  v59(v63, v38);
  v56(v183, v64, v38);
  v65 = v56;
  sub_24E60169C(v179, v147, &qword_27F220FF0, &unk_24F9949F0);
  sub_24F929248();
  v66 = v64;
  v147 = v60;
  v146 = v59;
  v59(v64, v38);
  v67 = v175;
  v68 = v174;
  sub_24F06D008(v171, v175);
  v70 = v69;
  v72 = v71;
  swift_unknownObjectRetain();
  v73 = v182;
  v74 = v133;
  v75 = sub_24EE649DC(v182, v133);
  swift_unknownObjectRelease();
  v194 = v75;
  v76 = v152;
  v132 = *(v152 + 16);
  v77 = v176;
  (v132)(v176, v68, v67);
  v65(v66, v183, v38);
  v78 = *(v76 + 80);
  v79 = v76;
  v155 += (v78 + 48) & ~v78;
  v80 = (v78 + 48) & ~v78;
  v129 = v80;
  v130 = v78 | 7;
  v81 = (v155 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v131 + v81 + 16) & ~v131;
  v83 = swift_allocObject();
  v84 = v178;
  *(v83 + 2) = v73;
  *(v83 + 3) = v84;
  v85 = v153;
  *(v83 + 4) = v74;
  *(v83 + 5) = v85;
  v152 = *(v79 + 32);
  v86 = v77;
  v87 = v175;
  (v152)(&v83[v80], v86, v175);
  v88 = &v83[v81];
  *v88 = v70;
  *(v88 + 1) = v72;
  v89 = *(v172 + 32);
  v90 = v173;
  v173 = v38;
  v89(&v83[v82], v90, v38);
  sub_24F921A38();
  v91 = v144;
  v92 = v74;
  sub_24F921D78();
  v93 = v176;
  (v132)(v176, v174, v87);
  v94 = v138;
  v95 = swift_allocObject();
  v96 = v182;
  v97 = v178;
  v95[2] = v182;
  v95[3] = v97;
  v95[4] = v92;
  v95[5] = v85;
  v98 = v93;
  v99 = v181;
  (v152)(v95 + v129, v98, v87);
  v100 = v141;
  v101 = v139;
  sub_24F926638();

  (*(v156 + 8))(v91, v101);
  swift_unknownObjectRetain();
  v136(v96, v92);
  swift_unknownObjectRelease();
  v102 = OpaqueTypeConformance2;
  sub_24F925EC8();

  (*(v154 + 8))(v100, v94);
  swift_getKeyPath();
  swift_unknownObjectRetain();
  LOBYTE(v87) = sub_24EE64434(v96, v92);
  swift_unknownObjectRelease();
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  if (v87)
  {
    sub_24F923988();
  }

  v194 = v103;
  v195 = v104;
  v196 = v105;
  v197 = v106;
  v190 = v94;
  v191 = v99;
  v192 = v102;
  v107 = swift_getOpaqueTypeConformance2();
  v108 = v159;
  v109 = v158;
  v110 = v177;
  sub_24F9261B8();

  (*(v157 + 8))(v110, v109);
  swift_unknownObjectRetain();
  v111 = sub_24EE64434(v96, v92);
  swift_unknownObjectRelease();
  if ((v111 & 1) == 0 || (v112 = sub_24F925818(), sub_24F925848(), sub_24F925848(), sub_24F925848() != v112))
  {
    sub_24F925848();
  }

  sub_24F924058();
  v113 = MEMORY[0x277CE0868];
  v114 = sub_24E602068(&qword_27F22C798, &qword_27F22C7A0, &qword_24F990BE8, MEMORY[0x277CE0868]);
  v188 = v107;
  v189 = v114;
  v115 = v161;
  v116 = swift_getWitnessTable();
  v117 = v162;
  sub_24F926438();
  (*(v160 + 8))(v108, v115);
  swift_getKeyPath();
  v118 = v169;
  v119 = v149;
  v142(v169, v180, v149);
  (*(v145 + 56))(v118, 0, 1, v119);
  v186 = v116;
  v187 = MEMORY[0x277CE0880];
  v120 = v165;
  v121 = swift_getWitnessTable();
  v122 = v164;
  sub_24F9261B8();

  sub_24E601704(v118, &qword_27F220F50, &qword_24F965290);
  (*(v163 + 8))(v117, v120);
  v146(v183, v173);
  sub_24E601704(v179, &qword_27F220FF0, &unk_24F9949F0);
  v123 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0, &unk_24F9C34A0, v113);
  v184 = v121;
  v185 = v123;
  v124 = v168;
  swift_getWitnessTable();
  v125 = v166;
  sub_24E7896B8();
  v126 = *(v167 + 8);
  v126(v122, v124);
  sub_24E7896B8();
  return (v126)(v125, v124);
}

void sub_24F06D008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  swift_unknownObjectRetain();
  LOBYTE(v2) = sub_24EE64434(v2, v3);
  swift_unknownObjectRelease();
  sub_24F923998();
  if (v2)
  {
    sub_24F923998();
    sub_24F923988();
  }
}

uint64_t sub_24F06D090@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v68 = a3;
  v69 = a8;
  v62 = a2;
  v70 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v60 = *(v73 - 8);
  v67 = *(v60 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v49 - v16;
  v75 = a4;
  v76 = a5;
  v53 = a4;
  v17 = a5;
  v54 = a5;
  v77 = a6;
  v78 = a7;
  v55 = a7;
  v57 = type metadata accessor for BaseShelfPageView(0, &v75);
  v71 = *(v57 - 8);
  v18 = *(v71 + 64);
  MEMORY[0x28223BE20](v57);
  v20 = &v49 - v19;
  v50 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2381E0, &unk_24F9C3490);
  v64 = v21;
  MEMORY[0x28223BE20](v21);
  v52 = &v49 - v22;
  v75 = a4;
  v76 = v17;
  v77 = a6;
  v78 = a7;
  v23 = type metadata accessor for BaseShelfPageView.ShelfContentView(255, &v75);
  v59 = v23;
  v63 = sub_24E602068(&qword_27F2381E8, &qword_27F2381E0, &unk_24F9C3490, MEMORY[0x277D7EC38]);
  v75 = v21;
  v76 = MEMORY[0x277D84030];
  v77 = v23;
  v78 = v63;
  v79 = MEMORY[0x277D84038];
  v61 = sub_24F927248();
  v66 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v58 = &v49 - v26;
  MEMORY[0x28223BE20](v27);
  v65 = &v49 - v28;
  v70 = *v70;
  v75 = v70;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225188, &qword_24F974D98);
  sub_24E602068(qword_27F238210, &qword_27F225188, &qword_24F974D98, MEMORY[0x277D83980]);
  sub_24F921BA8();
  KeyPath = swift_getKeyPath();
  v29 = v71;
  v30 = v57;
  (*(v71 + 16))(v20, v62, v57);
  v31 = v60;
  (*(v60 + 16))(v72, v68, v73);
  v32 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v33 = (v18 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v31 + 80) + v33 + 16) & ~*(v31 + 80);
  v35 = swift_allocObject();
  v36 = v53;
  v37 = v54;
  *(v35 + 2) = v53;
  *(v35 + 3) = v37;
  v38 = v55;
  *(v35 + 4) = a6;
  *(v35 + 5) = v38;
  v39 = v71;
  *(v35 + 6) = v70;
  (*(v39 + 32))(&v35[v32], v50, v30);
  v40 = &v35[v33];
  *v40 = a9;
  v40[1] = a10;
  (*(v31 + 32))(&v35[v34], v72, v73);
  v41 = swift_allocObject();
  v41[2] = v36;
  v41[3] = v37;
  v41[4] = a6;
  v41[5] = v38;
  v41[6] = sub_24F072DE0;
  v41[7] = v35;

  WitnessTable = swift_getWitnessTable();
  v42 = v56;
  sub_24F927228();
  swift_getKeyPath();
  v43 = v58;
  v44 = v61;
  sub_24F927208();

  v45 = *(v66 + 8);
  v45(v42, v44);
  v74 = WitnessTable;
  swift_getWitnessTable();
  v46 = v65;
  sub_24E7896B8();
  v45(v43, v44);
  sub_24E7896B8();
  return (v45)(v46, v44);
}

uint64_t sub_24F06D6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v53 = a5;
  v54 = a2;
  v51 = a4;
  v49 = a3;
  *&v50 = a1;
  v55 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
  MEMORY[0x28223BE20](v17 - 8);
  v52 = &v42 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v19 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = a6;
  v46 = &v42 - v20;
  *&v56 = a6;
  *(&v56 + 1) = a7;
  v43 = a8;
  v44 = a7;
  v57 = a8;
  v58 = a12;
  v21 = type metadata accessor for BaseShelfPageView.ShelfContentView(0, &v56);
  v47 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v42 - v25;
  v27 = v49;

  sub_24F06DA60(v50, v27, &v56);
  v50 = v56;
  v28 = v57;
  *&v56 = a6;
  *(&v56 + 1) = a7;
  v57 = a8;
  v58 = a12;
  v29 = type metadata accessor for BaseShelfPageView(0, &v56);
  v30 = v51;
  v31 = *(v51 + 8);
  v56 = v50;
  v57 = v28;
  v32 = v46;
  (*(v19 + 16))(v46, v53, v48);
  v33 = *(v29 + 60);
  v34 = v30;
  v35 = (v30 + *(v29 + 56));
  v37 = *v35;
  v36 = v35[1];
  v38 = v52;
  sub_24E60169C(v34 + v33, v52, &qword_27F2325E8, &unk_24F9C3400);
  *(&v41 + 1) = v43;
  *&v41 = v44;
  sub_24F06DB9C(v31, v54, &v56, v32, v37, v36, v38, v45, v23, a10, a11, v41, a12);
  swift_getWitnessTable();
  sub_24E7896B8();
  v39 = *(v47 + 8);
  swift_unknownObjectRetain();

  v39(v23, v21);
  sub_24E7896B8();
  return (v39)(v26, v21);
}

unint64_t sub_24F06DA60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 <= 0)
  {
    v3 = 0;
    if (a2 >> 62)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  result = a1 - 1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x253052270](result, a2);
    if (a2 >> 62)
    {
      goto LABEL_17;
    }

LABEL_7:
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    v9 = MEMORY[0x253052270](result, a2);
    goto LABEL_13;
  }

  v3 = *(a2 + 8 * result + 32);

  if (!(a2 >> 62))
  {
    goto LABEL_7;
  }

LABEL_17:
  result = sub_24F92C738();
  v8 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_8:
  if (v8 <= a1)
  {

    v9 = 0;
    goto LABEL_15;
  }

  result = a1 + 1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (a1 < -1)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(a2 + 8 * result + 32);

LABEL_13:

LABEL_15:
    *a3 = a1;
    a3[1] = v3;
    a3[2] = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F06DB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, uint64_t a13)
{
  v32 = *a3;
  v21 = *(a3 + 2);
  v34 = a8;
  v35 = a12;
  v36 = a13;
  v22 = type metadata accessor for BaseShelfPageView.ShelfContentView(0, &v34);
  v23 = v22[21];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v24 = v22[22];
  *(a9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v25 = v22[23];
  *(a9 + v25) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v26 = a9 + v22[24];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  v27 = v22[25];
  *(a9 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + v22[19]) = *(*(a2 + 24) + 16);
  *(a9 + v22[20]) = *(a2 + 16);
  *(a9 + 16) = v32;
  *(a9 + 32) = v21;
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  v28 = v22[16];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  (*(*(v29 - 8) + 32))(a9 + v28, a4, v29);
  v30 = (a9 + v22[17]);
  *v30 = a5;
  v30[1] = a6;
  return sub_24E6009C8(a7, a9 + v22[18], &qword_27F2325E8, &unk_24F9C3400);
}

void *sub_24F06DDD4()
{
  v2 = sub_24F92C7A8();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](95, 0xE100000000000000);
  sub_24F92CA38();
  return sub_24F92C7F8();
}

uint64_t sub_24F06DE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_24F923608() & 1;
  result = sub_24F923608();
  if (v11 != (result & 1))
  {
    v15[0] = a4;
    v15[1] = a5;
    v15[2] = a6;
    v15[3] = a7;
    type metadata accessor for BaseShelfPageView(0, v15);
    v13 = *(a6 + 184);
    swift_unknownObjectRetain();
    v13(a4, a6);
    swift_unknownObjectRelease();
    v14 = sub_24F923608();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if ((v14 & 1) == 0)
    {
      if (LOBYTE(v15[0]))
      {
        sub_24EEC66B8();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v15[0]) = v14 & 1;
    return sub_24F9230A8();
  }

  return result;
}

double sub_24F06DFF4()
{
  sub_24F072B1C();
  sub_24F924868();
  return v1;
}