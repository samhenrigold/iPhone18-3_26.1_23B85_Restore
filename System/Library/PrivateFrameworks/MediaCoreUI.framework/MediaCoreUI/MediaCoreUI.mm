uint64_t sub_1C59245CC(uint64_t a1)
{
  result = sub_1C5BCB804();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1C59246FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id ScopeBar.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *ScopeBar.init()()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  *v5 = 0u;
  v5[1] = 0u;
  v6 = (v0 + *((*v3 & *v0) + 0x68));
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  *v6 = *MEMORY[0x1E69DDCE0];
  v6[1] = v7;
  v8 = v0 + *((*v3 & *v0) + 0x70);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  *(v0 + *((*v3 & *v0) + 0x78)) = 0;
  v9 = *((*v3 & *v0) + 0x80);
  v10 = *((v4 & v2) + 0x50);
  *(v0 + v9) = sub_1C5BCB0B4();
  v11 = (v0 + *((*v3 & *v0) + 0x88));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + *((*v3 & *v0) + 0x90));
  *v12 = 0;
  v12[1] = 0;
  (*(*(v10 - 8) + 56))(v0 + *((*v3 & *v0) + 0x98), 1, 1, v10);
  *(v0 + *((*v3 & *v0) + 0xA0)) = 0;
  v13 = *((*v3 & *v0) + 0xA8);
  *(v0 + v13) = sub_1C5924C60();
  *(v0 + *((*v3 & *v0) + 0xB0)) = MEMORY[0x1E69E7CC0];
  *(v0 + *((*v3 & *v0) + 0xB8)) = 0;
  *(v0 + *((*v3 & *v0) + 0xC0)) = 0;
  *(v0 + *((*v3 & *v0) + 0xC8)) = 0;
  v14 = *((v4 & v2) + 0x58);
  v26.receiver = v0;
  v26.super_class = type metadata accessor for ScopeBar(0, v10, v14, v15);
  v16 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v16 setShowsHorizontalScrollIndicator_];
  [v16 setShowsVerticalScrollIndicator_];
  [v16 setAlwaysBounceHorizontal_];
  sub_1C59253A4(v27);
  v18 = type metadata accessor for ScopeBar.Specs(0, v10, v14, v17);
  (*(*(v18 - 8) + 8))(v27, v18);
  *(v16 + *((*v3 & *v16) + 0xA0)) = v28;
  v19 = [v16 layer];

  [v19 setMask_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914D0, &unk_1C5BD2730);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C5BD4D40;
  v21 = sub_1C5BC7E34();
  v22 = MEMORY[0x1E69DC2B0];
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  v23 = sub_1C5BC7DE4();
  v24 = MEMORY[0x1E69DC0A0];
  *(v20 + 48) = v23;
  *(v20 + 56) = v24;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1C5BCB6C4();

  swift_unknownObjectRelease();

  return v16;
}

id sub_1C5924C60()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  [v0 setStartPoint_];
  [v0 setEndPoint_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C5BD21E0;
  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  v4 = [v3 CGColor];

  type metadata accessor for CGColor(0);
  v6 = v5;
  *(v1 + 56) = v5;
  *(v1 + 32) = v4;
  v7 = [v2 blackColor];
  v8 = [v7 CGColor];

  *(v1 + 88) = v6;
  *(v1 + 64) = v8;
  v9 = [v2 clearColor];
  v10 = [v9 CGColor];

  *(v1 + 120) = v6;
  *(v1 + 96) = v10;
  v11 = sub_1C5BCB044();

  [v0 setColors_];

  return v0;
}

uint64_t sub_1C5924E34(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C5924EA4()
{
  if (!qword_1EDA4E6B8)
  {
    v0 = sub_1C5BC8054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA4E6B8);
    }
  }
}

uint64_t sub_1C5924EF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C5924F54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5924FB0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for ScopeBar(0, *((*MEMORY[0x1E69E7D40] & *v8) + 0x50), *((*MEMORY[0x1E69E7D40] & *v8) + 0x58), a8);
  v14.receiver = v8;
  v14.super_class = v13;
  objc_msgSendSuper2(&v14, sel_setFrame_, a1, a2, a3, a4);
  sub_1C5925198();
}

void sub_1C5925054(void *a1, double a2, double a3, double a4, double a5)
{
  v12 = a1;
  sub_1C5924FB0(a2, a3, a4, a5, v12, v9, v10, v11);
}

id sub_1C59250CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ScopeBar(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_frame);
}

double sub_1C592513C(void *a1)
{
  v1 = a1;
  sub_1C59250CC(v1, v2, v3, v4);
  v6 = v5;

  return v6;
}

void sub_1C5925198()
{
  [v0 bounds];
  v1 = 1.0 / CGRectGetWidth(v8);
  [v0 contentInset];
  v3 = v1 * v2;
  v4 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C5BD31B0;
  sub_1C592535C(0, &qword_1EDA4E048, 0x1E696AD98);
  *(v5 + 32) = sub_1C5BCB724();
  *(v5 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(v5 + 48) = sub_1C5BCB724();
  v6 = sub_1C5BCB044();

  [v4 setLocations_];
}

id sub_1C59252EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ScopeBar(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_contentInset);
}

uint64_t sub_1C592535C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1C59253A4@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    v6 = objc_opt_self();
    v7 = [v6 whiteColor];
    v8 = [v6 blackColor];
    if (qword_1EDA4E058 != -1)
    {
      swift_once();
    }

    v9 = 0;
    v10 = qword_1EDA4E060;
    v11 = 1;
    v20 = xmmword_1C5BE7CC0;
    v12 = xmmword_1C5BE7CD0;
LABEL_14:
    v19 = v12;
    result = v10;
    *a1 = v5;
    *(a1 + 8) = v9;
    *(a1 + 16) = v11;
    *(a1 + 24) = v19;
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
    *(a1 + 56) = result;
    *(a1 + 64) = 0;
    *(a1 + 72) = v20;
    *(a1 + 88) = v20;
    return result;
  }

  v13 = [v2 currentDevice];
  v14 = [v13 userInterfaceIdiom];

  v15 = *MEMORY[0x1E69DB970];
  if (v14 == 5)
  {
    result = [objc_opt_self() _preferredFontForTextStyle_weight_];
    if (result)
    {
      v5 = result;
      v9 = *MEMORY[0x1E69DB980];
      v17 = objc_opt_self();
      v7 = [v17 tintColor];
      v8 = [v17 whiteColor];
      if (qword_1EDA4E058 != -1)
      {
        swift_once();
      }

      v11 = 0;
      v10 = qword_1EDA4E060;
      v20 = xmmword_1C5BE7CB0;
      v12 = xmmword_1C5BDB0F0;
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    result = [objc_opt_self() _preferredFontForTextStyle_weight_];
    if (result)
    {
      v5 = result;
      v9 = *MEMORY[0x1E69DB980];
      v18 = objc_opt_self();
      v7 = [v18 tintColor];
      v8 = [v18 whiteColor];
      if (qword_1EDA4E058 != -1)
      {
        swift_once();
      }

      v11 = 0;
      v10 = qword_1EDA4E060;
      v20 = xmmword_1C5BE7C90;
      v12 = xmmword_1C5BE7CA0;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5925770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C59257B8(void *a1)
{
  v4 = a1;
  sub_1C5925800(v4, v1, v2, v3);
}

id sub_1C5925800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for ScopeBar(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v48.receiver = v4;
  v48.super_class = v6;
  objc_msgSendSuper2(&v48, sel_layoutSubviews);
  [v4 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v4 safeAreaInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *v5 & *v4;
  v24 = (v4 + *(v23 + 0x60));
  v26 = v24[2];
  v25 = v24[3];
  if (v26 != v12)
  {
    v27 = fabs(v26);
    v28 = fabs(v12);
    if (v27 <= v28)
    {
      v27 = v28;
    }

    if (COERCE__INT64(fabs(v26 - v12)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v26, v12) > fmax(v27 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      goto LABEL_31;
    }
  }

  if (v25 != v14)
  {
    v29 = fabs(v25);
    v30 = fabs(v14);
    if (v29 <= v30)
    {
      v29 = v30;
    }

    if (COERCE__INT64(fabs(v25 - v14)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v25, v14) > fmax(v29 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      goto LABEL_31;
    }
  }

  v31 = (v4 + *((*v5 & *v4) + 0x68));
  v33 = *v31;
  v32 = v31[1];
  v35 = v31[2];
  v34 = v31[3];
  if (*v31 != v16)
  {
    v36 = fabs(v33);
    v37 = fabs(v16);
    if (v36 <= v37)
    {
      v36 = v37;
    }

    if (COERCE__INT64(fabs(v33 - v16)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v33, v16) > fmax(v36 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      goto LABEL_31;
    }
  }

  if (v32 != v18)
  {
    v38 = fabs(v32);
    v39 = fabs(v18);
    if (v38 <= v39)
    {
      v38 = v39;
    }

    if (COERCE__INT64(fabs(v32 - v18)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v32, v18) > fmax(v38 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      goto LABEL_31;
    }
  }

  if (v35 != v20)
  {
    v40 = fabs(v35);
    v41 = fabs(v20);
    if (v40 <= v41)
    {
      v40 = v41;
    }

    if (COERCE__INT64(fabs(v35 - v20)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v35, v20) > fmax(v40 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      goto LABEL_31;
    }
  }

  if (v34 != v22)
  {
    v42 = fabs(v34);
    v43 = fabs(v22);
    if (v42 <= v43)
    {
      v42 = v43;
    }

    if (COERCE__INT64(fabs(v34 - v22)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v34, v22) > fmax(v42 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
LABEL_31:
      sub_1C5AECE9C();
      sub_1C5AED234();
      sub_1C5AEF524(0);
      sub_1C5925198();
      v23 = *v5 & *v4;
    }
  }

  v44 = (v4 + *(v23 + 96));
  *v44 = v8;
  v44[1] = v10;
  v44[2] = v12;
  v44[3] = v14;
  v45 = (v4 + *((*v5 & *v4) + 0x68));
  *v45 = v16;
  v45[1] = v18;
  v45[2] = v20;
  v45[3] = v22;
  v46 = objc_opt_self();
  [v46 begin];
  [v46 setDisableActions_];
  [*(v4 + *((*v5 & *v4) + 0xA8)) setFrame_];
  return [v46 commit];
}

uint64_t sub_1C5925C58(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1C5925CD8(v4);
}

void sub_1C5925CD8(uint64_t a1)
{
  swift_beginAccess();

  v1 = sub_1C5BCB154();

  if ((v1 & 1) == 0)
  {
    sub_1C5AEE1D0();
  }
}

void sub_1C5925DE4(uint64_t a1, int a2)
{
  v19 = a2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v6 = sub_1C5BCB804();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-v8];
  v10 = *(v5 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-v13];
  (*(v7 + 16))(v9, a1, v6, v12);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v15 = 0;
    v16 = 1;
  }

  else
  {
    (*(v10 + 32))(v14, v9, v5);
    v17 = *((*v4 & *v2) + 0x80);
    swift_beginAccess();
    v20 = *(v2 + v17);
    sub_1C5BCB144();
    swift_getWitnessTable();
    sub_1C5BCB464();
    (*(v10 + 8))(v14, v5);
    v15 = v21;
    v16 = v22;
  }

  sub_1C5926520(v15, v16, v19 & 1);
}

double sub_1C59260A4(void *a1)
{
  v1 = a1;
  sub_1C59252EC(v1, v2, v3, v4);
  v6 = v5;

  return v6;
}

uint64_t sub_1C5926100@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  v4 = sub_1C5BCB804();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1C59261FC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1C5926248(char *a1)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v4;
  sub_1C5927A64(&v5);
}

void sub_1C592632C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5926380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C59263D4(uint64_t a1)
{
  result = sub_1C5BC7BB4();
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

unint64_t sub_1C59264B4()
{
  result = qword_1EDA4B338;
  if (!qword_1EDA4B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B338);
  }

  return result;
}

void sub_1C5926520(unint64_t a1, int a2, int a3)
{
  v4 = v3;
  v140 = a3;
  v151 = a1;
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v138 = *MEMORY[0x1E69E7D40] & *v4;
  v8 = *((v7 & v6) + 0x50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v130 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v133 = &v127 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v131 = &v127 - v14;
  v15 = sub_1C5BCB804();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v135 = *(TupleTypeMetadata2 - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v127 - v16;
  v139 = *(v15 - 8);
  v154 = v139;
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v127 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v137 = &v127 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v149 = &v127 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v134 = &v127 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v146 = &v127 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v147 = &v127 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v142 = &v127 - v33;
  v150 = swift_allocBox();
  v35 = v34;
  v152 = v9;
  v36 = *(v9 + 56);
  v36(v34, 1, 1, v8);
  v145 = a2;
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();

    v37 = v142;
    sub_1C5BCB174();

    v36(v37, 0, 1, v8);
    (*(v154 + 5))(v35, v37, v15);
  }

  v38 = v154 + 16;
  v39 = *(v154 + 2);
  v40 = v147;
  v39(v147, v35, v15);
  v41 = v35;
  v42 = v8;
  v43 = v146;
  v141 = v4;
  sub_1C5926100(v146);
  v44 = TupleTypeMetadata2[12];
  v39(v17, v40, v15);
  v153 = v39;
  v39(&v17[v44], v43, v15);
  v45 = v152 + 48;
  v46 = *(v152 + 48);
  v47 = v46(v17, 1, v42);
  v155 = v42;
  v144 = v41;
  v143 = v38;
  if (v47 == 1)
  {
    v48 = v44;
    v49 = v155;
    v50 = *(v154 + 1);
    v50(v43, v15);
    v50(v40, v15);
    if (v46(&v17[v48], 1, v49) == 1)
    {
      v50(v17, v15);
LABEL_74:

      return;
    }

    v154 = v50;
    v54 = v141;
    v52 = v46;
  }

  else
  {
    v51 = v134;
    v153(v134, v17, v15);
    v129 = v45;
    v52 = v46;
    if (v46(&v17[v44], 1, v155) != 1)
    {
      v77 = v15;
      v78 = v152;
      v79 = &v17[v44];
      v80 = v131;
      v81 = v155;
      (*(v152 + 32))(v131, v79, v155);
      LODWORD(TupleTypeMetadata2) = sub_1C5BCADB4();
      v82 = *(v78 + 8);
      v82(v80, v81);
      v83 = v51;
      v84 = *(v154 + 1);
      v84(v146, v77);
      v84(v147, v77);
      v82(v83, v81);
      v52 = v46;
      v15 = v77;
      v154 = v84;
      v84(v17, v77);
      v54 = v141;
      v55 = MEMORY[0x1E69E7D40];
      if (TupleTypeMetadata2)
      {
        goto LABEL_74;
      }

      goto LABEL_10;
    }

    v53 = *(v154 + 1);
    v53(v146, v15);
    v154 = v53;
    v53(v147, v15);
    (*(v152 + 8))(v51, v155);
    v54 = v141;
  }

  (*(v135 + 8))(v17, TupleTypeMetadata2);
  v55 = MEMORY[0x1E69E7D40];
LABEL_10:
  v56 = v149;
  sub_1C5926100(v149);
  v57 = *(v54 + *((*v55 & *v54) + 0xB8));
  v58 = v142;
  v153(v142, v144, v15);
  v147 = v57;
  TupleTypeMetadata2 = v57;
  sub_1C5AEB990(v58);
  if (v145)
  {
    v59 = v15;
    v60 = *v55 & *v54;
    v61 = *(v54 + *(v60 + 0xB8));
    v62 = v151;
    if (v61)
    {
      [v61 removeFromSuperview];
      v60 = *v55 & *v54;
    }

    v63 = v152;
    v64 = *(v60 + 184);
    p_aBlock = *(v54 + v64);
    *(v54 + v64) = 0;
    goto LABEL_21;
  }

  v66 = v55;
  v67 = v15;
  v62 = v151;
  sub_1C5AEBA58(v151, v54);
  v68 = *((*v66 & *v54) + 0xB8);
  v69 = *(v54 + v68);
  *(v54 + v68) = v70;
  p_aBlock = v70;

  v63 = *(v54 + *((*v66 & *v54) + 0xB0));
  if ((v63 & 0xC000000000000001) != 0)
  {
    goto LABEL_76;
  }

  if ((v62 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) > v62)
  {
    v71 = *(v63 + 8 * v62 + 32);
    goto LABEL_18;
  }

  __break(1u);
LABEL_79:
  __break(1u);
  do
  {

    v86 = MEMORY[0x1C694FD20](p_aBlock, v69);

    v85 = v133;
LABEL_31:
    v87 = [v86 hoverStyle];

    if (v87)
    {
      [v87 setEnabled_];
    }

    (*(v63 + 8))(v85, v155);
    while (2)
    {
      v76 = v136;
LABEL_35:
      v69 = sub_1C59AE878(MEMORY[0x1E69E7CC0]);
      v88 = v144;
      if ((v140 & 1) == 0)
      {

        sub_1C5AEBFC8(v54, v150, v62, v145 & 1, 0);
        v91 = sub_1C5AECC64();
        swift_beginAccess();
        v92 = v132;
        v153(v132, v88, v56);
        v93 = v52(v92, 1, v155) == 1;
        v94 = v92;
        v95 = v154;
        (v154)(v94, v56);
        [v91 setHidden_];

        if (v147)
        {
          v96 = TupleTypeMetadata2;
          [TupleTypeMetadata2 removeFromSuperview];
        }

        v95(v149, v56);
        goto LABEL_74;
      }

      v153(v76, v149, v56);
      v89 = v52(v76, 1, v155);
      v128 = v56;
      if (v89 == 1)
      {
        v90 = v154;
        (v154)(v76, v56);
LABEL_73:
        v118 = sub_1C5AECC64();
        [v118 setHidden_];

        v119 = objc_opt_self();
        v120 = swift_allocObject();
        v121 = v150;
        *(v120 + 16) = v54;
        *(v120 + 24) = v121;
        *(v120 + 32) = v62;
        *(v120 + 40) = v145 & 1;
        *(v120 + 41) = 1;
        *(v120 + 48) = v69;
        v163 = sub_1C5AF6F40;
        v164 = v120;
        aBlock = MEMORY[0x1E69E9820];
        v160 = 1107296256;
        v161 = sub_1C596D09C;
        v162 = &block_descriptor_17;
        v122 = _Block_copy(&aBlock);
        v123 = v54;

        v124 = swift_allocObject();
        v124[2] = v69;
        v124[3] = v121;
        v124[4] = v123;
        v163 = sub_1C5AF6F58;
        v164 = v124;
        aBlock = MEMORY[0x1E69E9820];
        v160 = 1107296256;
        v161 = sub_1C5AECA14;
        v162 = &block_descriptor_9;
        v125 = _Block_copy(&aBlock);
        v126 = v123;

        [v119 animateWithDuration:2 delay:v122 usingSpringWithDamping:v125 initialSpringVelocity:0.35 options:0.0 animations:0.8 completion:1.0];
        _Block_release(v125);
        _Block_release(v122);

        v90(v149, v128);
        goto LABEL_74;
      }

      v97 = v130;
      (*(v63 + 32))(v130, v76, v155);
      if (v145)
      {
        (*(v63 + 8))(v97, v155);
LABEL_72:
        v90 = v154;
        goto LABEL_73;
      }

      v98 = *((*MEMORY[0x1E69E7D40] & *v54) + 0x80);
      swift_beginAccess();
      v158 = *(v54 + v98);
      sub_1C5BCB144();
      swift_getWitnessTable();
      sub_1C5BCB464();
      if (v160 == 1)
      {
        (*(v152 + 8))(v97, v155);
        goto LABEL_72;
      }

      v63 = aBlock;
      v157 = v62;
      v158 = aBlock;
      p_aBlock = MEMORY[0x1E69E6530];
      sub_1C5BCBE54();
      v99 = aBlock;
      v156 = v62;
      v157 = v63;
      sub_1C5BCBE44();
      v67 = v158;
      if (v158 < v99)
      {
        goto LABEL_83;
      }

      v54 = 1;
      v62 = v151;
      do
      {
        if (v62 == v99)
        {
          goto LABEL_67;
        }

        if (v63 == v99)
        {
          if (!v147)
          {
            p_aBlock = v69;
            v111 = sub_1C5AB6FAC(v63);
            if (v112)
            {
              v113 = v111;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              aBlock = v69;
              if (!isUniquelyReferenced_nonNull_native)
              {
                p_aBlock = &aBlock;
                sub_1C5AF5D50();
                v69 = aBlock;
              }

              sub_1C5AF4760(v113, v69);
            }

            goto LABEL_66;
          }

          v100 = TupleTypeMetadata2;
        }

        else
        {
          sub_1C5AEBA58(v99, v141);
          v100 = v101;
        }

        v62 = v100;
        v102 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v69;
        p_aBlock = v69;
        v103 = sub_1C5AB6FAC(v99);
        v105 = *(v69 + 16);
        v106 = (v104 & 1) == 0;
        v107 = __OFADD__(v105, v106);
        v108 = v105 + v106;
        if (v107)
        {
          goto LABEL_75;
        }

        v52 = v104;
        if (*(v69 + 24) >= v108)
        {
          if ((v102 & 1) == 0)
          {
            p_aBlock = &aBlock;
            v115 = v103;
            sub_1C5AF5D50();
            v103 = v115;
            v69 = aBlock;
            if ((v52 & 1) == 0)
            {
LABEL_64:
              *(v69 + 8 * (v103 >> 6) + 64) |= 1 << v103;
              *(*(v69 + 48) + 8 * v103) = v99;
              *(*(v69 + 56) + 8 * v103) = v62;

              v116 = *(v69 + 16);
              v107 = __OFADD__(v116, 1);
              v117 = v116 + 1;
              if (v107)
              {
                goto LABEL_79;
              }

              *(v69 + 16) = v117;
              goto LABEL_66;
            }

            goto LABEL_58;
          }
        }

        else
        {
          sub_1C5AF34E4(v108, v102);
          p_aBlock = aBlock;
          v103 = sub_1C5AB6FAC(v99);
          if ((v52 & 1) != (v109 & 1))
          {
            goto LABEL_84;
          }
        }

        v69 = aBlock;
        if ((v52 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_58:
        v110 = *(v69 + 56);
        p_aBlock = *(v110 + 8 * v103);
        *(v110 + 8 * v103) = v62;

LABEL_66:
        v62 = v151;
LABEL_67:
        if (v67 == v99)
        {
          (*(v152 + 8))(v130, v155);
          v54 = v141;
          goto LABEL_72;
        }

        v107 = __OFADD__(v99++, 1);
      }

      while (!v107);
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:

      v71 = MEMORY[0x1C694FD20](v62, v63);

LABEL_18:
      v72 = [v71 hoverStyle];

      if (v72)
      {
        [v72 setEnabled_];
      }

      v59 = v67;
      v55 = MEMORY[0x1E69E7D40];
      v63 = v152;
LABEL_21:

      v73 = v137;
      v153(v137, v56, v59);
      if (v52(v73, 1, v155) == 1)
      {
        v56 = v59;
        (v154)(v73, v59);
        continue;
      }

      break;
    }

    v56 = v59;
    v74 = v133;
    (*(v63 + 32))(v133, v73, v155);
    v75 = *((*v55 & *v54) + 0x80);
    swift_beginAccess();
    v165 = *(v54 + v75);
    sub_1C5BCB144();
    swift_getWitnessTable();
    sub_1C5BCB464();
    if (v160 == 1)
    {
      (*(v63 + 8))(v74, v155);
      v76 = v136;
      goto LABEL_35;
    }

    p_aBlock = aBlock;
    v69 = *(v54 + *((*v55 & *v54) + 0xB0));
  }

  while ((v69 & 0xC000000000000001) != 0);
  v85 = v133;
  if ((aBlock & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (aBlock < *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v86 = *(v69 + 8 * aBlock + 32);
    goto LABEL_31;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  sub_1C5BCBE84();
  __break(1u);
}

uint64_t sub_1C5927940()
{

  return swift_deallocObject();
}

uint64_t sub_1C5927988()
{

  return swift_deallocObject();
}

uint64_t sub_1C59279D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x88));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1C59261FC(v6, v7);
}

void sub_1C5927A64(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    sub_1C5AEE1D0();
  }
}

uint64_t sub_1C5927AEC(uint64_t a1)
{
  result = sub_1C5927B74();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C5927B74()
{
  result = qword_1EDA45D00;
  if (!qword_1EDA45D00)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDA45D00);
  }

  return result;
}

uint64_t sub_1C5927BDC(uint64_t a1)
{
  result = sub_1C5BC8FD4();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C5927C60(uint64_t a1)
{
  sub_1C5927D2C(319);
  if (v1 <= 0x3F)
  {
    sub_1C5926380(319, &qword_1EDA46788, _s13HostedContentCMa);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C5927D2C(uint64_t a1)
{
  if (!qword_1EDA46790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470, qword_1C5BEBAC0);
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46790);
    }
  }
}

uint64_t _s13HostedContentCMa(uint64_t a1)
{
  result = qword_1EDA4AE68;
  if (!qword_1EDA4AE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5927DDC(uint64_t a1)
{
  result = sub_1C5BCB144();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5927F68()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EDA5DB08 = result;
  unk_1EDA5DB10 = v4;
  return result;
}

uint64_t sub_1C59280B8(uint64_t a1)
{
  result = sub_1C5BC7BB4();
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

unint64_t sub_1C5928158(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191828, &unk_1C5BE7FA0);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C596FBD8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

void sub_1C592825C(uint64_t a1)
{
  if (!qword_1EDA46820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197E58, &qword_1C5BE9698);
    v1 = sub_1C5BC8054();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46820);
    }
  }
}

uint64_t type metadata accessor for NowPlayingViewModel.CurrentItem(uint64_t a1)
{
  result = qword_1EDA4B158;
  if (!qword_1EDA4B158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1C5928310()
{
  v1 = v0;
  v0[5] = &type metadata for NowPlayingStandardArtworkTreatment;
  v2 = sub_1C5928464();
  v1[6] = v2;
  v1[2] = sub_1C592CFE4(&unk_1F45138F8);
  v1[7] = -1;
  v1[11] = &type metadata for NowPlayingStandardArtworkTreatment;
  v1[12] = v2;
  v1[8] = sub_1C592CFE4(&unk_1F4513920);
  sub_1C592CFE4(&unk_1F4513948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194D90, &qword_1C5BDD7A0);
  swift_allocObject();
  v1[13] = sub_1C5BC7F84();
  v1[14] = 0;
  _s14DefaultArtworkCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v1[15] = v3;
  _s7ArtworkC17BackgroundArtworkCMa(0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC194CE0, &unk_1C5BE8C80);
  sub_1C5BC7FF4();
  v1[16] = v4;
  _s7ArtworkC20MiniPlayerAppearanceCMa(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_1C5BC7BA4();
  v1[17] = v5;
  return v1;
}

unint64_t sub_1C5928464()
{
  result = qword_1EDA47570;
  if (!qword_1EDA47570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47570);
  }

  return result;
}

unint64_t sub_1C59284B8()
{
  result = qword_1EDA47578;
  if (!qword_1EDA47578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47578);
  }

  return result;
}

void *sub_1C59285C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1988A8, &qword_1C5BEC0D0);
  swift_allocObject();
  v0[2] = sub_1C5BC7F44();
  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1988B0, &qword_1C5BEC0D8);
  swift_allocObject();
  *(v2 + 80) = sub_1C5BC7F44();
  sub_1C5924F54(&qword_1EDA46878, qword_1EC1988B0, &qword_1C5BEC0D8, MEMORY[0x1E695BF88]);
  *(v2 + 88) = sub_1C5BC8064();
  v0[3] = v2;
  v0[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1962A0, &qword_1C5BEC0E0);
  swift_allocObject();
  v0[5] = sub_1C5BC7F44();
  v3 = [objc_allocWithZone(MEMORY[0x1E6988158]) init];
  [v3 setStyle_];
  v1[6] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E6988158]) init];
  [v4 setStyle_];
  v1[7] = v4;
  sub_1C592C1AC(&qword_1EDA4A740, v5, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
  sub_1C5BC7F24();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C5B45CCC;
  *(v7 + 24) = v6;
  sub_1C5BC7FB4();
  v8 = sub_1C5BC8114();

  v1[4] = v8;

  return v1;
}

uint64_t sub_1C5928854()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C592888C()
{

  return swift_deallocObject();
}

uint64_t View.mcui.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

unint64_t sub_1C59289C4()
{
  result = qword_1EDA46070;
  if (!qword_1EDA46070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197470, &qword_1C5BE7588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46070);
  }

  return result;
}

uint64_t static UIView.Corner.rounded.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA4E080 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = byte_1EDA4E090;
  v2 = qword_1EDA4E098;
  *a1 = qword_1EDA4E088;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  return result;
}

void sub_1C5928AC0()
{
  qword_1EDA4E088 = 0;
  byte_1EDA4E090 = 2;
  qword_1EDA4E098 = 15;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s6CornerVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void UIView.corner.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 == 3)
  {
    v57 = *MEMORY[0x1E69796E0];
    v4 = [v1 layer];
    v5 = [v4 maskedCorners];

    v6 = 0.0;
    goto LABEL_16;
  }

  v5 = *(a1 + 16);
  [v1 bounds];
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 * 0.5;
  v6 = v2;
  [v1 bounds];
  if (v3 != 2)
  {
    v23 = MEMORY[0x1E69796E0];
    if (v3)
    {
      v23 = MEMORY[0x1E69796E8];
    }

    goto LABEL_15;
  }

  v6 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  Width = CGRectGetWidth(*&v11);
  v59.origin.x = v15;
  v59.origin.y = v16;
  v59.size.width = v17;
  v59.size.height = v18;
  Height = CGRectGetHeight(v59);
  if (Width == Height)
  {
    goto LABEL_12;
  }

  v21 = fabs(Width);
  v22 = fabs(Height);
  if (v21 <= v22)
  {
    v21 = v22;
  }

  if (COERCE__INT64(fabs(Width - Height)) <= 0x7FEFFFFFFFFFFFFFLL && vabdd_f64(Width, Height) <= fmax(v21 * 2.22044605e-16, COERCE_DOUBLE(1)))
  {
LABEL_12:
    v23 = MEMORY[0x1E69796E0];
LABEL_15:
    v57 = *v23;
    goto LABEL_16;
  }

  v57 = *MEMORY[0x1E69796E8];
  v6 = v10;
LABEL_16:
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = sub_1C5BCAE74();
    v28 = v27;
    if (v26 == sub_1C5BCAE74() && v28 == v29)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_1C5BCBDE4();
    }

    v50 = v1;

    [v25 _setCornerRadius_continuous_maskedCorners_];
  }

  else
  {
    v32 = [v1 layer];
    v33 = MEMORY[0x1E69796E0];
    if (v3 != 3)
    {
      [v1 bounds];
      if (v3 == 2)
      {
        v38 = v34;
        v39 = v35;
        v40 = v36;
        v41 = v37;
        v42 = CGRectGetWidth(*&v34);
        v60.origin.x = v38;
        v60.origin.y = v39;
        v60.size.width = v40;
        v60.size.height = v41;
        v43 = CGRectGetHeight(v60);
        if (v42 != v43)
        {
          v44 = v42 - v43;
          v45 = vabdd_f64(v42, v43);
          v46 = fabs(v42);
          v47 = fabs(v43);
          if (v46 > v47)
          {
            v47 = v46;
          }

          v48 = *&v44 & 0x7FFFFFFFFFFFFFFFLL;
          if (v45 > fmax(v47 * 2.22044605e-16, COERCE_DOUBLE(1)) || v48 >= 0x7FF0000000000000)
          {
            v33 = MEMORY[0x1E69796E8];
          }
        }
      }

      else if (v3)
      {
        v33 = MEMORY[0x1E69796E8];
      }
    }

    v51 = *v33;
    [v32 setCornerCurve_];

    v52 = [v1 layer];
    v53 = 0.0;
    if (v3 != 3)
    {
      [v1 bounds];
      if (v3 == 2)
      {
        if (v55 >= v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = v55;
        }

        v53 = v56 * 0.5;
      }

      else
      {
        v53 = v2;
      }
    }

    [v52 setCornerRadius_];

    v50 = [v1 layer];
    [v50 setMaskedCorners_];
  }
}

uint64_t sub_1C5928F70(uint64_t a1)
{
  result = sub_1C5BC7A24();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id static UIFont.preferredFont(forTextStyle:weight:)(uint64_t a1, double a2)
{
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingArtworkRestrictionsMonitor(uint64_t a1)
{
  result = qword_1EDA47438;
  if (!qword_1EDA47438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C59290BC(uint64_t a1)
{
  sub_1C5924EA4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id static NowPlayingArtworkRestrictionsMonitor.shared.getter()
{
  if (qword_1EDA47448 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDA47450;

  return v1;
}

id sub_1C59291B0()
{
  result = [objc_allocWithZone(type metadata accessor for NowPlayingArtworkRestrictionsMonitor(0)) init];
  qword_1EDA47450 = result;
  return result;
}

char *sub_1C59291E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8, &qword_1C5BE1270);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198558, &unk_1C5BEF350);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0, &qword_1C5BEAEA0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR____TtC11MediaCoreUI36NowPlayingArtworkRestrictionsMonitor__isMotionDisabled;
  LOBYTE(v30) = 1;
  sub_1C5BC7FF4();
  (*(v12 + 32))(&v0[v15], v14, v11);
  *&v0[OBJC_IVAR____TtC11MediaCoreUI36NowPlayingArtworkRestrictionsMonitor_networkConstrainingObserver] = 0;
  v16 = type metadata accessor for NowPlayingArtworkRestrictionsMonitor(0);
  v31.receiver = v0;
  v31.super_class = v16;
  v17 = objc_msgSendSuper2(&v31, sel_init);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 standardUserDefaults];
  v21 = sub_1C5BCAE44();
  [v20 addObserver:v19 forKeyPath:v21 options:1 context:0];

  if (qword_1EDA4EE00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1C5BC8004();
  swift_endAccess();
  sub_1C5929CA0();
  v22 = sub_1C5BCB5A4();
  v30 = v22;
  v23 = sub_1C5BCB594();
  (*(*(v23 - 8) + 56))(v3, 1, 1, v23);
  sub_1C5924F54(&qword_1EDA4E6C0, &qword_1EC1958C8, &qword_1C5BE1270, MEMORY[0x1E695C068]);
  sub_1C5929CEC(&qword_1EDA4E630, sub_1C5929CA0, MEMORY[0x1E69E8028]);
  sub_1C5BC80D4();
  sub_1C5924EF4(v3, &unk_1EC199F20, &qword_1C5BD88C0);

  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C5924F54(&qword_1EDA4E6C8, &qword_1EC198558, &unk_1C5BEF350, MEMORY[0x1E695BE98]);
  v24 = v29;
  v25 = sub_1C5BC8114();

  (*(v28 + 8))(v10, v24);
  *&v19[OBJC_IVAR____TtC11MediaCoreUI36NowPlayingArtworkRestrictionsMonitor_networkConstrainingObserver] = v25;

  sub_1C5929DEC();

  return v19;
}

uint64_t sub_1C592972C()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

id sub_1C5929788()
{
  result = [objc_allocWithZone(type metadata accessor for EnvironmentMonitor(0)) init];
  qword_1EDA5DE70 = result;
  return result;
}

uint64_t type metadata accessor for EnvironmentMonitor(uint64_t a1)
{
  result = qword_1EDA4EDE8;
  if (!qword_1EDA4EDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C592981C(uint64_t a1)
{
  if (!qword_1EDA4E6B0)
  {
    type metadata accessor for OSThermalPressureLevel(255);
    v1 = sub_1C5BC8054();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA4E6B0);
    }
  }
}

uint64_t static UIView.Corner.value(_:continuous:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  *(a2 + 16) = 15;
  return result;
}

id sub_1C5929888()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1998E0, &qword_1C5BEAEA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0, &qword_1C5BEAEA0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC11MediaCoreUI18EnvironmentMonitor__isNetworkConstrained;
  LOBYTE(v22) = 0;
  sub_1C5BC7FF4();
  (*(v9 + 32))(&v0[v12], v11, v8);
  v13 = OBJC_IVAR____TtC11MediaCoreUI18EnvironmentMonitor__thermalLevel;
  v22 = 0;
  type metadata accessor for OSThermalPressureLevel(0);
  sub_1C5BC7FF4();
  (*(v5 + 32))(&v0[v13], v7, v4);
  v14 = type metadata accessor for EnvironmentMonitor(0);
  v21.receiver = v0;
  v21.super_class = v14;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  v16 = sub_1C5BCB214();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v18 = v15;
  sub_1C5A0BB28(0, 0, v3, &unk_1C5BF1660, v17);

  sub_1C5929C38(v3);
  return v18;
}

uint64_t sub_1C5929B64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5929BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5929C38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5929CA0()
{
  result = qword_1EDA4E620;
  if (!qword_1EDA4E620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA4E620);
  }

  return result;
}

uint64_t sub_1C5929CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5929D34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C592A748;

  return sub_1C592A1E8(a1, v4);
}

void sub_1C5929DEC()
{
  sub_1C592A2E0(&v24);
  v1 = v24;
  if (qword_1EDA4EE00 != -1)
  {
    swift_once();
  }

  swift_getKeyPath(byte_1C5BEF300);
  swift_getKeyPath(byte_1C5BEF328);
  sub_1C5BC8034();

  v2 = (v1 == 0) | v23;
  swift_getKeyPath(byte_1C5BEF210);
  swift_getKeyPath(byte_1C5BEF238);
  sub_1C5BC8034();

  if (((v1 == 0) | v23 & 1) != v22)
  {
    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C5BC7D64();
    __swift_project_value_buffer(v3, qword_1EDA5DB60);
    v4 = v0;
    v5 = sub_1C5BC7D44();
    v6 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 67110146;
      swift_getKeyPath(byte_1C5BEF210);
      swift_getKeyPath(byte_1C5BEF238);
      sub_1C5BC8034();

      *(v7 + 4) = v19[1];

      *(v7 + 8) = 1024;
      *(v7 + 10) = v2 & 1;
      *(v7 + 14) = 2082;
      sub_1C592A2E0(v19);
      v9 = 0xE200000000000000;
      v10 = 28271;
      if (v19[0] == 1)
      {
        v10 = 0x796C6E4F69666977;
        v9 = 0xE800000000000000;
      }

      if (v19[0])
      {
        v11 = v10;
      }

      else
      {
        v11 = 6710895;
      }

      if (v19[0])
      {
        v12 = v9;
      }

      else
      {
        v12 = 0xE300000000000000;
      }

      v13 = sub_1C592ADA8(v11, v12, &v20);

      *(v7 + 16) = v13;
      *(v7 + 24) = 1024;
      swift_getKeyPath(byte_1C5BEF300);
      swift_getKeyPath(byte_1C5BEF328);
      sub_1C5BC8034();

      *(v7 + 26) = v18;
      *(v7 + 30) = 2080;
      if (v2)
      {
        v14 = 0xD00000000000005BLL;
      }

      else
      {
        v14 = 0;
      }

      if (v2)
      {
        v15 = 0x80000001C5BFC9C0;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      v16 = sub_1C592ADA8(v14, v15, &v20);

      *(v7 + 32) = v16;
      _os_log_impl(&dword_1C5922000, v5, v6, "NowPlayingRestrictionsMonitor: isMotionDisabled updated from %{BOOL}d to %{BOOL}d: motionMode=%{public}s isNetworkConstrained=%{BOOL}d. %s", v7, 0x28u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v8, -1, -1);
      MEMORY[0x1C69510F0](v7, -1, -1);
    }

    else
    {
    }

    swift_getKeyPath(byte_1C5BEF210);
    swift_getKeyPath(byte_1C5BEF238);
    v21 = v2 & 1;
    v17 = v4;
    sub_1C5BC8044();
  }
}

uint64_t sub_1C592A1E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C592AADC;

  return v6(a1);
}

uint64_t sub_1C592A2E0@<X0>(char *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1C5BCAE44();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1C5BCB8D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    result = sub_1C5924EF4(v10, &qword_1EC191700, &unk_1C5BD5040);
    goto LABEL_10;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_10:
    v6 = 2;
    goto LABEL_11;
  }

  if (v7 >= 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v7;
  }

LABEL_11:
  *a1 = v6;
  return result;
}

uint64_t sub_1C592A40C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C592A4C0(a1, v4, v5, v6);
}

uint64_t sub_1C592A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C592A55C, 0, 0);
}

uint64_t sub_1C592A55C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_opt_self() sharedMonitor];
  v4 = sub_1C5BCB214();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  v7 = v3;
  v8 = v2;
  sub_1C5A0BB28(0, 0, v1, &unk_1C5BF1668, v6);

  sub_1C5929C38(v1);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v8;
  v10 = v7;
  v11 = v8;
  sub_1C5A0BB28(0, 0, v1, &unk_1C5BF1670, v9);

  sub_1C5929C38(v1);
  [v10 registerObserver_];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1C592A74C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C592A80C(a1, v4, v5, v7, v6);
}

uint64_t sub_1C592A80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C592A82C, 0, 0);
}

uint64_t sub_1C592A82C()
{
  *(v0 + 41) = [*(v0 + 16) isNetworkConstrained];
  sub_1C5BCB1E4();
  *(v0 + 32) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C592B430, v2, v1);
}

uint64_t sub_1C592A8D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592ABD4;

  return sub_1C592A994(a1, v4, v5, v7, v6);
}

uint64_t sub_1C592A994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C592A9B4, 0, 0);
}

uint64_t sub_1C592A9B4()
{
  v1 = [*(v0 + 16) currentThermalLevel];
  *(v0 + 32) = v1;
  if (v1 >> 32)
  {
    __break(1u);
  }

  else
  {
    sub_1C5BCB1E4();
    *(v0 + 40) = sub_1C5BCB1D4();
    v4 = sub_1C5BCB194();
    v6 = v5;
    v1 = sub_1C592B538;
    v2 = v4;
    v3 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C592AA68()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA5DB60);
  __swift_project_value_buffer(v0, qword_1EDA5DB60);
  return sub_1C5BC7D54();
}

uint64_t sub_1C592AADC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C592ABD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1C592ADA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C592AEC0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C592B32C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void *sub_1C592AE74(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C592AFCC(a1, a2);
  sub_1C592B240(&unk_1F4513670);
  return v3;
}

unint64_t sub_1C592AEC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C592AE74(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C5BCBB04();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1C592AFCC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C592B0FC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C5BCBB04();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C5BCAF44();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C592B0FC(v10, 0);
        result = sub_1C5BCBA74();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1C592B0FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193638, &qword_1C5BF06A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1C592B170(uint64_t a1)
{
  sub_1C5924EA4();
  if (v1 <= 0x3F)
  {
    sub_1C592981C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C592B240(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C592B640(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C592B32C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

void sub_1C592B3DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1C5929DEC();
  }
}

uint64_t sub_1C592B430()
{
  v1 = *(v0 + 41);

  swift_getKeyPath("89[&");
  swift_getKeyPath(byte_1C5BF1610);
  sub_1C5BC8034();

  if (v1 != *(v0 + 40))
  {
    v2 = *(v0 + 41);
    v3 = *(v0 + 24);
    swift_getKeyPath("89[&");
    swift_getKeyPath(byte_1C5BF1610);
    *(v0 + 40) = v2;
    v4 = v3;
    sub_1C5BC8044();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C592B538()
{
  v1 = *(v0 + 32);

  swift_getKeyPath("p9[&");
  swift_getKeyPath("P9[&");
  sub_1C5BC8034();

  if (*(v0 + 48) != v1)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    swift_getKeyPath("p9[&");
    swift_getKeyPath("P9[&");
    *(v0 + 48) = v2;
    v4 = v3;
    sub_1C5BC8044();
  }

  v5 = *(v0 + 8);

  return v5();
}

char *sub_1C592B640(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193638, &qword_1C5BF06A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C592B734()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0, &qword_1C5BEAEA0);
  sub_1C5BC8004();
  return swift_endAccess();
}

void CGRect.aspectFit(in:scale:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  Width = CGRectGetWidth(*&a1);
  if (Width != 0.0)
  {
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v17 = fabs(Width), v17 > fmax(v17 * 2.22044605e-16, COERCE_DOUBLE(1))))
    {
      v35.origin.x = a1;
      v35.origin.y = a2;
      v35.size.width = a3;
      v35.size.height = a4;
      Height = CGRectGetHeight(v35);
      if (Height != 0.0)
      {
        if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v19 = fabs(Height), v19 > fmax(v19 * 2.22044605e-16, COERCE_DOUBLE(1))))
        {
          v29 = a1;
          v36.origin.x = a1;
          v36.origin.y = a2;
          v36.size.width = a3;
          v36.size.height = a4;
          v30 = CGRectGetWidth(v36);
          v37.origin.x = a6;
          v37.origin.y = a7;
          v37.size.width = a8;
          v37.size.height = a9;
          v31 = v30 / CGRectGetWidth(v37);
          v38.origin.x = a1;
          v38.origin.y = a2;
          v38.size.width = a3;
          v38.size.height = a4;
          v27 = CGRectGetHeight(v38);
          v39.origin.x = a6;
          v39.origin.y = a7;
          v39.size.width = a8;
          v39.size.height = a9;
          v20 = v27 / CGRectGetHeight(v39);
          if (v20 >= v31)
          {
            v20 = v31;
          }

          v21 = v20 * a8;
          v22 = v20 * a9;
          v40.origin.x = v29;
          v40.origin.y = a2;
          v40.size.width = a3;
          v40.size.height = a4;
          MinX = CGRectGetMinX(v40);
          v41.origin.x = v29;
          v41.origin.y = a2;
          v41.size.width = a3;
          v41.size.height = a4;
          v28 = CGRectGetWidth(v41);
          v42.origin.x = a6;
          v42.origin.y = a7;
          v42.size.width = v21;
          v42.size.height = v22;
          v23 = CGRectGetWidth(v42);
          v24 = CGFloat.roundValue(scale:)(a5, MinX + (v28 - v23) * 0.5);
          v43.origin.x = v29;
          v43.origin.y = a2;
          v43.size.width = a3;
          v43.size.height = a4;
          rect = CGRectGetMinY(v43);
          v44.origin.x = v29;
          v44.origin.y = a2;
          v44.size.width = a3;
          v44.size.height = a4;
          v25 = CGRectGetHeight(v44);
          v45.origin.x = v24;
          v45.origin.y = a7;
          v45.size.width = v21;
          v45.size.height = v22;
          v26 = CGRectGetHeight(v45);
          CGFloat.roundValue(scale:)(a5, rect + (v25 - v26) * 0.5);
        }
      }
    }
  }
}

double CGFloat.roundValue(scale:)(double a1, double a2)
{
  if (a1 <= 0.0 || (v2 = a1, (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v3 = fabs(a1), v4 = v3 > fmax(v3 * 2.22044605e-16, COERCE_DOUBLE(1)), v2 = a1, !v4))
  {
    v2 = 1.0;
  }

  return round(a1 * a2) / v2;
}

CGFloat CGRect.centeringAlong(axes:bounds:scale:)(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (a1)
  {
    MinX = CGRectGetMinX(*&a2);
    v27.origin.x = a2;
    v27.origin.y = a3;
    v27.size.width = a4;
    v27.size.height = a5;
    Width = CGRectGetWidth(v27);
    v28.origin.x = a7;
    v28.origin.y = a8;
    v28.size.width = a9;
    v28.size.height = a10;
    v18 = CGRectGetWidth(v28);
    a7 = CGFloat.roundValue(scale:)(a6, MinX + (Width - v18) * 0.5);
  }

  if ((a1 & 2) != 0)
  {
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    MinY = CGRectGetMinY(v29);
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    Height = CGRectGetHeight(v30);
    v31.origin.x = a7;
    v31.origin.y = a8;
    v31.size.width = a9;
    v31.size.height = a10;
    v21 = CGRectGetHeight(v31);
    CGFloat.roundValue(scale:)(a6, MinY + (Height - v21) * 0.5);
  }

  return a7;
}

double CGSize.aspectRatio.getter(double a1, double a2)
{
  result = 0.0;
  if (a2 != 0.0)
  {
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return a1 / a2;
    }

    v4 = fabs(a2);
    if (v4 > fmax(v4 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      return a1 / a2;
    }
  }

  return result;
}

__C::CGRect __swiftcall CGRect.centeringAlong(axes:in:)(UIAxis axes, UIView *in)
{
  v6 = v5;
  v26 = v4;
  v7 = v3;
  v8 = v2;
  v10 = axes;
  [(UIView *)in bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UIView *)in traitCollection];
  [v19 displayScale];
  v21 = v20;

  v22 = CGRect.centeringAlong(axes:bounds:scale:)(v10, v12, v14, v16, v18, v21, v8, v7, v26, v6);
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

id sub_1C592BD0C(void *a1)
{
  v1 = a1;
  v2 = UINavigationItem.preferredNavigationBarTintColor.getter();

  return v2;
}

uint64_t sub_1C592BD50()
{
  result = swift_slowAlloc();
  qword_1EDA4E108 = result;
  return result;
}

uint64_t UINavigationItem.preferredNavigationBarTintColor.getter()
{
  if (qword_1EDA4E100 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1EDA4E108))
  {
    sub_1C5BCB8D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1C5A28198();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C592BE5C(v5);
    return 0;
  }
}

uint64_t sub_1C592BE5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191700, &unk_1C5BD5040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C592BEC4()
{
  result = qword_1EDA490E0;
  if (!qword_1EDA490E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA490E0);
  }

  return result;
}

uint64_t sub_1C592BF18(void *a1)
{
  sub_1C592BEC4();

  return sub_1C5BC8F54();
}

BOOL sub_1C592BF94(double a1, double a2, double a3, double a4)
{
  if (a1 == a3)
  {
    goto LABEL_6;
  }

  result = 0;
  v5 = fabs(a1);
  v6 = fabs(a3);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (COERCE__INT64(fabs(a1 - a3)) <= 0x7FEFFFFFFFFFFFFFLL && vabdd_f64(a1, a3) <= fmax(v5 * 2.22044605e-16, COERCE_DOUBLE(1)))
  {
LABEL_6:
    if (a2 == a4)
    {
      return 1;
    }

    else if (COERCE__INT64(fabs(a2 - a4)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v7 = vabdd_f64(a2, a4);
      v8 = fabs(a2);
      v9 = fabs(a4);
      if (v8 <= v9)
      {
        v8 = v9;
      }

      return v7 <= fmax(v8 * 2.22044605e-16, COERCE_DOUBLE(1));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C592C0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NowPlayingViewControllerProxy(0, *(v4 + 80), *(v4 + 88), a4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v5;
}

unint64_t sub_1C592C110()
{
  result = qword_1EDA48698;
  if (!qword_1EDA48698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA48698);
  }

  return result;
}

uint64_t sub_1C592C1AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C592C204(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NowPlayingViewModel.init()()
{
  v1 = v0;
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (qword_1EDA4AEA0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDA5DB08;
  v3 = unk_1EDA5DB10;
  *(v2 + 32) = qword_1EDA5DB08;
  *(v2 + 40) = v3;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = v5;
  *(v2 + 72) = 0;
  *(v2 + 104) = &type metadata for MetadataAutomaticStyle;
  v6 = sub_1C592C110();
  *(v2 + 112) = v6;
  *(v1 + 16) = v2;
  type metadata accessor for NowPlayingViewModel.Metrics(0);
  v7 = swift_allocObject();
  _s32HostedContentToggleButtonMetricsCMa();
  v8 = swift_allocObject();

  *(v8 + 16) = sub_1C5928158(v5);
  *(v7 + 16) = v8;
  sub_1C5BC7BA4();
  *(v1 + 24) = v7;
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  v9 = swift_allocObject();
  *(v9 + 16) = 5;
  *(v1 + 32) = v9;
  _s12PresentationCMa(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A3F0, &qword_1C5BF1C10);
  swift_allocObject();
  *(v10 + 24) = sub_1C5BC7F44();
  sub_1C5BC7BA4();
  *(v1 + 40) = v10;
  type metadata accessor for Geometry(0);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E58, &qword_1C5BE9698);
  sub_1C5BC7FF4();
  *(v1 + 48) = v11;
  type metadata accessor for NowPlayingViewModel.CurrentItem(0);
  v12 = swift_allocObject();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C592CB84(v26, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B0, &qword_1C5BDD720);
  sub_1C5BC7FF4();
  sub_1C5924EF4(v26, &qword_1EC1929B0, &qword_1C5BDD720);
  *(v1 + 56) = v12;
  _s8BackdropCMa(0);
  swift_allocObject();
  *(v1 + 64) = sub_1C592CD98();
  _s7ArtworkCMa();
  swift_allocObject();
  *(v1 + 72) = sub_1C5928310();
  _s18MiniPlayerMetadataCMa();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v4;
  *(v13 + 32) = v3;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 511;
  *(v13 + 120) = &type metadata for MetadataAutomaticStyle;
  *(v13 + 128) = v6;
  *(v13 + 136) = sub_1C592D330(v5);
  *(v1 + 80) = v13;
  _s11ContextMenuCMa(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;

  sub_1C5BC7BA4();
  *(v1 + 88) = v14;
  _s11TimeControlCMa();
  swift_allocObject();
  *(v1 + 96) = sub_1C59285C4();
  _s17TransportControlsCMa();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 255;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 56) = 255;
  *(v15 + 58) = 0;
  *(v1 + 104) = v15;
  *(v1 + 112) = 0;
  _s6BannerCMa();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v1 + 120) = v16;
  _s5QueueCMa();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v1 + 128) = v17;
  _s5DebugCMa(0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 18) = 0;
  LOBYTE(v26[0]) = 0;
  sub_1C5BC7FF4();
  *(v1 + 136) = v18;
  _s13TrackSectionsCMa(0);
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0;
  *(v19 + 64) = 0u;
  *(v19 + 80) = 0u;
  sub_1C5BC7BA4();
  *(v1 + 144) = v19;
  type metadata accessor for WindowProperties(0);
  swift_allocObject();
  *(v1 + 152) = sub_1C592F4E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F40, &unk_1C5BF3AF0);
  swift_allocObject();
  *(v1 + 168) = sub_1C5BC7F44();
  *(v1 + 176) = 0;
  type metadata accessor for NowPlayingViewModel.VolumeControl(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 1;
  _s13VolumeControlC10MiniPlayerCMa(0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 1;
  sub_1C5BC7BA4();
  *(v20 + 32) = v21;
  sub_1C5BC7BA4();
  *(v1 + 184) = v20;
  *&v26[0] = *(*(v1 + 96) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1962A0, &qword_1C5BEC0E0);
  sub_1C5934890();
  *(v1 + 160) = sub_1C5BC8064();
  _s13HostedContentCMa(0);
  swift_allocObject();

  v23 = sub_1C5933D58(v22);

  *(v1 + 112) = v23;

  return v1;
}

void sub_1C592C7EC()
{
  v0 = sub_1C5BCAE44();
  v1 = objc_opt_self();
  v2 = [v1 bundleWithIdentifier_];

  if (!v2)
  {
    v2 = [v1 mainBundle];
  }

  qword_1EDA5DD00 = v2;
}

unint64_t sub_1C592C888(uint64_t a1)
{
  result = sub_1C592C8B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C592C8B0()
{
  result = qword_1EDA486A0;
  if (!qword_1EDA486A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA486A0);
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingViewModel.Metrics(uint64_t a1)
{
  result = qword_1EDA49A28;
  if (!qword_1EDA49A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for Geometry(uint64_t a1)
{
  result = qword_1EDA46EA8;
  if (!qword_1EDA46EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C592C99C(uint64_t a1)
{
  sub_1C592825C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C592CA3C()
{
  result = qword_1EDA47978;
  if (!qword_1EDA47978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47978);
  }

  return result;
}

void sub_1C592CA90(uint64_t a1)
{
  if (!qword_1EDA46800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0, &qword_1C5BDD720);
    v1 = sub_1C5BC8054();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46800);
    }
  }
}

void sub_1C592CAF4(uint64_t a1)
{
  sub_1C592CA90(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C592CB84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B0, &qword_1C5BDD720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s8BackdropCMa(uint64_t a1)
{
  result = qword_1EDA49920;
  if (!qword_1EDA49920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C592CC40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C592CCA4(uint64_t a1)
{
  sub_1C592CC40(319, &qword_1EDA46818, qword_1EC194CE0, &unk_1C5BE8C80, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1C5924EA4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C592CD98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0, &qword_1C5BEAEA0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194D88, &qword_1C5BDD798);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel8Backdrop__image;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC194CE0, &unk_1C5BE8C80);
  sub_1C5BC7FF4();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel8Backdrop__isPaused;
  v14[7] = 0;
  sub_1C5BC7FF4();
  v11 = *(v2 + 32);
  v11(v0 + v10, v4, v1);
  v12 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel8Backdrop__isLegibilityOverlayShown;
  v14[6] = 0;
  sub_1C5BC7FF4();
  v11(v0 + v12, v4, v1);
  return v0;
}

unint64_t sub_1C592CFBC(uint64_t a1)
{
  result = sub_1C59284B8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C592CFE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194DB0, &qword_1C5BDD7B8);
    v3 = sub_1C5BCBA64();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1C5BCBF54();
      MEMORY[0x1C69501A0](v10);
      result = sub_1C5BCBF94();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1C592D124()
{
  result = qword_1EDA4B610[0];
  if (!qword_1EDA4B610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4B610);
  }

  return result;
}

void sub_1C592D178(uint64_t a1)
{
  sub_1C592D208(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C592D208(uint64_t a1)
{
  if (!qword_1EDA46818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC194CE0, &unk_1C5BE8C80);
    v1 = sub_1C5BC8054();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46818);
    }
  }
}

uint64_t sub_1C592D26C(uint64_t a1)
{
  result = sub_1C5BC7BB4();
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

void *sub_1C592D330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191820, &unk_1C5BD30C0);
  v3 = sub_1C5BCBC74();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1C5AB97D8();
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1C5AB97D8();
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1C592D484()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
  v2 = v1;
  sub_1C5937D74(v1);
}

void sub_1C592D4C8(void *a1)
{
  v2 = v1;
  v4 = sub_1C5BCAC14();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C5BCAC44();
  v44 = *(v46 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v46).n128_u64[0];
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 window];
  if (v8)
  {
    v9 = v8;
    [v8 safeAreaInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [objc_opt_self() sharedApplication];
    v19 = [v18 userInterfaceLayoutDirection];

    if (v19 == 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = v13;
    }

    if (v19 != 1)
    {
      v13 = v17;
    }
  }

  else
  {
    v11 = 0;
    v20 = 0.0;
    v15 = 0;
    v13 = 0.0;
  }

  if (sub_1C5BC8164())
  {
    *(v2 + 16) = v11;
    *(v2 + 24) = v20;
    *(v2 + 32) = v15;
    *(v2 + 40) = v13;
  }

  else
  {
    KeyPath = swift_getKeyPath(" J\\&");
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v43 - 6) = v2;
    *(&v43 - 5) = v11;
    *(&v43 - 4) = v20;
    *(&v43 - 3) = v15;
    *(&v43 - 2) = v13;
    *&v59 = v2;
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
    sub_1C5BC7B64();
  }

  sub_1C5937F60(a1, &v53);
  v49 = *(&v53 + 1);
  v50 = *&v53;
  v22 = v54[0];
  v61 = *(v54 + 1);
  v62 = *(&v54[1] + 1);
  v63 = *(&v54[2] + 1);
  v64 = *(&v54[3] + 1);
  swift_getKeyPath(byte_1C5BDAFB0);
  *&v59 = v2;
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  v23 = *(v2 + 104);
  v57 = v54[1];
  v58[0] = v54[2];
  *(v58 + 9) = *(&v54[2] + 9);
  v55 = v53;
  v56 = v54[0];
  if ((v23 & 0xFF0000) == 0x40000)
  {
    if ((v54[0] & 0xFF0000) == 0x40000)
    {
      return;
    }

LABEL_17:
    swift_getKeyPath(byte_1C5BDAFB0);
    *&v59 = v2;
    sub_1C5BC7B74();

    if (*(v2 + 106) << 16 == 0x40000)
    {
      goto LABEL_28;
    }

    swift_getKeyPath(byte_1C5BDAFB0);
    *&v59 = v2;
    sub_1C5BC7B74();

    if (*(v2 + 106) << 8 == 1024 || (*(v2 + 104) & 1) != 0)
    {
      if (v22)
      {
LABEL_28:
        v36 = *(v2 + 104);
        v37 = *(v2 + 136);
        v60[1] = *(v2 + 120);
        v60[2] = v37;
        *(&v60[2] + 9) = *(v2 + 145);
        v59 = *(v2 + 88);
        v60[0] = v36;
        if (sub_1C592DEB4(&v59, &v55))
        {
          v38 = swift_getKeyPath(byte_1C5BDAFB0);
          MEMORY[0x1EEE9AC00](v38);
          *(&v43 - 2) = v2;
          *(&v43 - 1) = &v55;
          *&v51 = v2;
          sub_1C5BC7B64();
        }

        else
        {
          v39 = *(v2 + 104);
          v40 = *(v2 + 136);
          v52[1] = *(v2 + 120);
          v52[2] = v40;
          *(&v52[2] + 9) = *(v2 + 145);
          v51 = *(v2 + 88);
          v52[0] = v39;
          v41 = v55;
          *(v2 + 104) = v56;
          v42 = v58[0];
          *(v2 + 120) = v57;
          *(v2 + 136) = v42;
          *(v2 + 145) = *(v58 + 9);
          *(v2 + 88) = v41;
          sub_1C592DF7C(&v51);
        }

        return;
      }
    }

    else if ((v22 & 1) == 0 && *(v2 + 88) == v50 && *(v2 + 96) == v49)
    {
      goto LABEL_28;
    }

    swift_getKeyPath(byte_1C5BDAFD8);
    *&v59 = v2;
    sub_1C5BC7B74();

    if (*(v2 + 48) == 1)
    {
      v25 = [objc_opt_self() sharedApplication];
      v26 = [v25 applicationState];

      if (!v26)
      {
        sub_1C5929CA0();
        v27 = sub_1C5BCB5A4();
        v28 = swift_allocObject();
        v29 = v62;
        *(v28 + 41) = v61;
        v30 = v49;
        v31 = v50;
        *(v28 + 16) = v2;
        *(v28 + 24) = v31;
        *(v28 + 32) = v30;
        *(v28 + 40) = v22;
        *(v28 + 57) = v29;
        *(v28 + 73) = v63;
        *(v28 + 89) = v64;
        *&v60[1] = sub_1C5A34370;
        *(&v60[1] + 1) = v28;
        *&v59 = MEMORY[0x1E69E9820];
        *(&v59 + 1) = 1107296256;
        *&v60[0] = sub_1C596D09C;
        *(&v60[0] + 1) = &block_descriptor_6;
        v32 = _Block_copy(&v59);

        v33 = v43;
        sub_1C5BCAC34();
        *&v59 = MEMORY[0x1E69E7CC0];
        sub_1C5937E40(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
        sub_1C5A3437C();
        v34 = v45;
        v35 = v48;
        sub_1C5BCB8F4();
        MEMORY[0x1C694F7F0](0, v33, v34, v32);
        _Block_release(v32);

        (*(v47 + 8))(v34, v35);
        (*(v44 + 8))(v33, v46);
        return;
      }
    }

    goto LABEL_28;
  }

  v59 = *(v2 + 88);
  v24 = *(v2 + 128);
  *(v60 + 8) = *(v2 + 112);
  *(&v60[1] + 8) = v24;
  *(&v60[2] + 8) = *(v2 + 144);
  BYTE8(v60[3]) = *(v2 + 160);
  *&v60[0] = v23;
  if ((v54[0] & 0xFF0000) == 0x40000)
  {
    goto LABEL_17;
  }

  v51 = v53;
  *(v52 + 8) = *(v54 + 8);
  *(&v52[1] + 8) = *(&v54[1] + 8);
  *(&v52[2] + 8) = *(&v54[2] + 8);
  BYTE8(v52[3]) = BYTE8(v54[3]);
  *&v52[0] = *&v54[0];
  if ((_s11MediaCoreUI13DeviceMetricsV2eeoiySbAC_ACtFZ_0(&v59, &v51) & 1) == 0)
  {
    goto LABEL_17;
  }
}

uint64_t sub_1C592DD08()
{

  return swift_deallocObject();
}

void sub_1C592DD40(BOOL *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a3 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (v3 >= 744.0)
  {
    if (v3 <= 744.0)
    {
      *a1 = 0;
      return;
    }

    if (v3 <= 768.0)
    {
      *a1 = 1;
      return;
    }

    if (v3 <= 810.0)
    {
      *a1 = 2;
      return;
    }

    if (v3 <= 820.0)
    {
      *a1 = 3;
      return;
    }

    if (v3 > 834.0)
    {
      *a1 = 6;
      return;
    }

    v4 = a2 > 1112.0;
    v5 = 5;
    v6 = 4;
  }

  else
  {
    if (v3 <= 375.0)
    {
      *a1 = a2 > 667.0;
      return;
    }

    if (v3 <= 393.0)
    {
      v4 = a2 > 844.0;
      v5 = 3;
      v6 = 2;
    }

    else
    {
      if (v3 <= 414.0)
      {
        *a1 = 4;
        return;
      }

      v4 = v3 > 428.0;
      v5 = 6;
      v6 = 5;
    }
  }

  if (!v4)
  {
    v5 = v6;
  }

  *a1 = v5;
}

BOOL sub_1C592DEB4(__int128 *a1, __int128 *a2)
{
  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if ((v4 & 0xFF0000) == 0x40000)
  {
    return (v5 & 0xFF0000) != 0x40000;
  }

  v20 = v2;
  v21 = v3;
  v14 = *a1;
  v16 = *(a1 + 24);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v15 = v4;
  if ((v5 & 0xFF0000) == 0x40000)
  {
    v7 = 1;
  }

  else
  {
    v8 = *a2;
    v10 = *(a2 + 24);
    v11 = *(a2 + 40);
    v12 = *(a2 + 56);
    v13 = *(a2 + 72);
    v9 = v5;
    v7 = _s11MediaCoreUI13DeviceMetricsV2eeoiySbAC_ACtFZ_0(&v14, &v8) ^ 1;
  }

  return v7 & 1;
}

void sub_1C592DF7C(__int128 *a1)
{
  v2 = v1;
  v4 = *(a1 + 2);
  swift_getKeyPath(byte_1C5BDAFB0);
  *&v26 = v1;
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  v5 = *(v1 + 104);
  if ((v4 & 0xFF0000) == 0x40000)
  {
    if ((v5 & 0xFF0000) == 0x40000)
    {
      return;
    }
  }

  else
  {
    v26 = *a1;
    *&v27[8] = *(a1 + 24);
    *&v27[24] = *(a1 + 40);
    *&v27[40] = *(a1 + 56);
    v27[56] = *(a1 + 72);
    *v27 = v4;
    if ((v5 & 0xFF0000) != 0x40000)
    {
      v20 = *(v1 + 88);
      v6 = *(v1 + 128);
      *&v21[8] = *(v1 + 112);
      *&v21[24] = v6;
      v22 = *(v1 + 144);
      v23 = *(v1 + 160);
      *v21 = v5;
      if (_s11MediaCoreUI13DeviceMetricsV2eeoiySbAC_ACtFZ_0(&v26, &v20))
      {
        return;
      }
    }
  }

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C5BC7D64();
  __swift_project_value_buffer(v7, qword_1EDA5DA78);

  v8 = sub_1C5BC7D44();
  v9 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    swift_getKeyPath(byte_1C5BDAFB0);
    *&v26 = v1;
    sub_1C5BC7B74();

    v25 = *(v1 + 88);
    v12 = *(v1 + 104);
    v13 = *(v2 + 128);
    v20 = *(v2 + 112);
    *v21 = v13;
    *&v21[16] = *(v2 + 144);
    v21[32] = *(v2 + 160);

    if ((v12 & 0xFF0000) == 0x40000)
    {
      __break(1u);
      return;
    }

    v26 = v25;
    *v27 = v12;
    *&v27[8] = v20;
    *&v27[24] = *v21;
    *&v27[40] = *&v21[16];
    v27[56] = v21[32];
    v14 = DeviceMetrics.description.getter();
    v16 = sub_1C592ADA8(v14, v15, &v24);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1C5922000, v8, v9, "Updated device metrics: %{public}s", v10, 0xCu);
    v17 = __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1C69510F0](v11, -1, -1, v17);
    MEMORY[0x1C69510F0](v10, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath(byte_1C5BDAFB0);
  *&v26 = v2;
  sub_1C5BC7B74();

  v18 = *(v2 + 104);
  v19 = *(v2 + 136);
  *&v27[16] = *(v2 + 120);
  *&v27[32] = v19;
  *&v27[41] = *(v2 + 145);
  v26 = *(v2 + 88);
  *v27 = v18;
  sub_1C5BC7F54();
}

__n128 sub_1C592E304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 104);
  v4 = *(v1 + 136);
  v9[2] = *(v1 + 120);
  v10[0] = v4;
  *(v10 + 9) = *(v1 + 145);
  v9[0] = *(v1 + 88);
  v9[1] = v3;
  *(v1 + 88) = *v2;
  v6 = v2[2];
  v5 = v2[3];
  v7 = *(v2 + 57);
  *(v1 + 104) = v2[1];
  *(v1 + 145) = v7;
  *(v1 + 136) = v5;
  *(v1 + 120) = v6;
  sub_1C592DF7C(v9);
  return result;
}

unint64_t DeviceMetrics.description.getter()
{
  if (v0[16])
  {
    return 0xD00000000000001DLL;
  }

  v2 = v0[18];
  v3 = v0[17] == 9 || v2 == 3;
  if (v3 || (v0[32] & 1) != 0)
  {
    return 0xD00000000000001DLL;
  }

  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD000000000000015, 0x80000001C5BF6050);
  v4 = sub_1C5BCB304();
  MEMORY[0x1C694F170](v4);

  MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
  v5 = sub_1C5BCB304();
  MEMORY[0x1C694F170](v5);

  MEMORY[0x1C694F170](62, 0xE100000000000000);
  MEMORY[0x1C694F170](540702524, 0xE400000000000000);

  MEMORY[0x1C694F170](0x6C43657A6973202CLL, 0xEC0000003D737361);
  sub_1C5BCBBA4();
  MEMORY[0x1C694F170](0x74756F79616C202CLL, 0xE90000000000003DLL);
  v6 = 0xE700000000000000;
  v7 = 0x72616C75676572;
  if (v2 != 1)
  {
    v7 = 0x4572616C75676572;
    v6 = 0xEF6465646E657478;
  }

  if (v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x746361706D6F63;
  }

  if (v2)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  MEMORY[0x1C694F170](v8, v9);

  MEMORY[0x1C694F170](0xD000000000000015, 0x80000001C5BF6070);
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_1C5BCBBA4();
  return 0;
}

double sub_1C592E620()
{
  (*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x58) + 224))(*((*MEMORY[0x1E69E7D40] & *v0) + 0x50));

  swift_getKeyPath(aH_13);
  swift_getKeyPath(aH_14);
  sub_1C5BC8044();
  return sub_1C593871C(0);
}

void sub_1C592E71C()
{
  v1 = [v0 superview];
  if (v1)
  {
    v17 = v1;
    [v0 setTranslatesAutoresizingMaskIntoConstraints_];
    v2 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C5BD9A40;
    v4 = [v0 leadingAnchor];
    v5 = [v17 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    *(v3 + 32) = v6;
    v7 = [v0 trailingAnchor];
    v8 = [v17 trailingAnchor];
    v9 = [v7 constraintEqualToAnchor_];

    *(v3 + 40) = v9;
    v10 = [v0 topAnchor];
    v11 = [v17 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v3 + 48) = v12;
    v13 = [v0 bottomAnchor];
    v14 = [v17 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v3 + 56) = v15;
    sub_1C592535C(0, &qword_1EDA45E20, 0x1E696ACD8);
    v16 = sub_1C5BCB044();

    [v2 activateConstraints_];

    [v0 setNeedsUpdateConstraints];
  }
}

void sub_1C592EA28(void *a1)
{
  v3 = a1;
  sub_1C5938F50(&selRef_viewSafeAreaInsetsDidChange, v3, v1, v2);
}

void sub_1C592EA7C(void *a1)
{
  v3 = a1;
  sub_1C5938F50(&selRef_viewWillLayoutSubviews, v3, v1, v2);
}

__n128 sub_1C592EBB0()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  return result;
}

uint64_t _s11MediaCoreUI13DeviceMetricsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  v8 = *(a2 + 17);
  v9 = *(a2 + 18);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    result = 0;
    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return result;
    }
  }

  if (v3 == 9)
  {
    if (v8 != 9)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 9 || v3 != v8)
    {
      return result;
    }
  }

  if (v4 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v9 == 3 || v4 != v9)
    {
      return result;
    }
  }

  if (v6)
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == *(a2 + 24))
    {
      v11 = *(a2 + 32);
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

  if (v7)
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 1) != 0 || (sub_1C5BC8164() & 1) == 0)
  {
    return 0;
  }

  return 1;
}

id sub_1C592ECE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s12BackdropViewCMa(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v15.receiver = v4;
  v15.super_class = v5;
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v6 = *(v4 + qword_1EDA48118);
  [v4 bounds];
  [v6 setFrame_];
  v7 = *(v4 + qword_1EDA48120);
  if (v7)
  {
    v8 = v7;
    [v4 bounds];
    [v8 setFrame_];
  }

  v9 = *(v4 + qword_1EDA48128);
  [v4 bounds];
  [v9 setFrame_];
  v10 = *(v4 + qword_1EDA480F0);
  [v4 bounds];
  [v10 setFrame_];
  v11 = *(v4 + qword_1EDA48100);
  [v4 bounds];
  [v11 setFrame_];
  v12 = *(v4 + qword_1EDA48108);
  [v4 bounds];
  [v12 setFrame_];
  v13 = *(v4 + qword_1EDA48110);
  [v4 bounds];
  return [v13 setFrame_];
}

__n128 sub_1C592EE88()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 56) = result;
  return result;
}

uint64_t sub_1C592EEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C592EEE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C592EF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C592EF8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C592F010(uint64_t a1)
{
  if (!qword_1EDA46710)
  {
    type metadata accessor for EnvironmentMonitor(255);
    sub_1C592F30C(qword_1EDA4B360, type metadata accessor for EnvironmentMonitor, &unk_1C5BF1564);
    v1 = sub_1C5BC83B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46710);
    }
  }
}

void sub_1C592F0A4(uint64_t a1)
{
  sub_1C592F010(319);
  if (v1 <= 0x3F)
  {
    sub_1C5936BDC(319);
    if (v2 <= 0x3F)
    {
      sub_1C5BC8C94();
      if (v3 <= 0x3F)
      {
        sub_1C5936C70(319);
        if (v4 <= 0x3F)
        {
          sub_1C593A1C8(319, &qword_1EDA467C0, type metadata accessor for WindowProperties);
          if (v5 <= 0x3F)
          {
            sub_1C592CC40(319, &qword_1EDA46790, &qword_1EC194470, qword_1C5BEBAC0, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1C592CC40(319, &qword_1EDA46778, qword_1EC19A460, &unk_1C5BDD000, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1C592CC40(319, &qword_1EDA467D0, &qword_1EC193C10, &qword_1C5BDB690, MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1C593A1C8(319, &qword_1EDA46768, MEMORY[0x1E697BE48]);
                  if (v9 <= 0x3F)
                  {
                    sub_1C592CC40(319, &qword_1EDA46780, &qword_1EC194468, &unk_1C5BDBCD0, MEMORY[0x1E697DCC0]);
                    if (v10 <= 0x3F)
                    {
                      sub_1C593A1C8(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
                      if (v11 <= 0x3F)
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
    }
  }
}

uint64_t sub_1C592F30C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s5DebugCMa(uint64_t a1)
{
  result = qword_1EDA4A1F8;
  if (!qword_1EDA4A1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C592F3D4(uint64_t a1)
{
  sub_1C5924EA4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for WindowProperties(uint64_t a1)
{
  result = qword_1EDA4B948;
  if (!qword_1EDA4B948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C592F4E0()
{
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0x40000;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943B0, &qword_1C5BDB080);
  swift_allocObject();
  *(v0 + 168) = sub_1C5BC7F84();
  sub_1C5BC7BA4();
  return v0;
}

unint64_t sub_1C592F5A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191818, &unk_1C5BE7F70);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C596FBD8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1C592F69C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);

  LOBYTE(v4) = sub_1C5934068(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath(byte_1C5BDBBC0);
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[0] = v1;
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
    sub_1C5BC7B64();
  }

  else
  {
    v8 = *(v1 + 24);
    v9 = *(v1 + 32);
    *(v1 + 24) = v3;
    *(v1 + 32) = v2;
    v10[0] = v8;
    v10[1] = v9;
    sub_1C5936674(v10);
  }
}

uint64_t sub_1C592F7F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void sub_1C592F844(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_1C592FAC0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v86 = sub_1C5BCB5F4();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A440, &unk_1C5BDFC40);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v81 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A448, &qword_1C5BF3AD8);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v81 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A450, &qword_1C5BF3AE0);
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v81 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v81 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A458, &qword_1C5BF3AE8);
  v96 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v13 = &v81 - v12;
  *(v1 + qword_1EDA47FB8) = 0;
  *(v1 + qword_1EDA47FA0) = 0;
  *(v1 + qword_1EDA47FA8) = 0;
  *(v1 + qword_1EDA47F90) = MEMORY[0x1E69E7CD0];
  v14 = qword_1EDA47F98;
  type metadata accessor for NowPlayingRouteObserver(0);
  swift_allocObject();
  *(v1 + v14) = sub_1C5930D44();
  *(v1 + qword_1EDA47F30) = 0;
  *(v1 + qword_1EDA47F20 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_1EDA47F78) = 0;
  *(v1 + qword_1EDA47F60) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_1EDA481F0) = 0;
  *(v1 + qword_1EDA47FD0) = 0;
  *(v1 + qword_1EDA47FC8) = 0;
  *(v1 + qword_1EDA47F50) = 0;
  *(v1 + qword_1EDA47F68) = 0;
  *(v1 + qword_1EDA47FE0) = 0;
  *(v1 + qword_1EDA47F88) = 0;
  *(v1 + qword_1EDA48200) = 0;
  *(v1 + qword_1EDA47F48) = 0;
  v15 = v1 + qword_1EDA47F40;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *(v1 + qword_1EDA481E8) = a1;
  v16 = *((v4 & v3) + 0x58);
  v17 = *((v4 & v3) + 0x50);
  v106 = v17;
  v18 = v16;
  v20 = type metadata accessor for NowPlayingViewController(0, v17, v16, v19);
  v111.receiver = v1;
  v111.super_class = v20;
  v102 = a1;
  swift_unknownObjectRetain();
  v21 = objc_msgSendSuper2(&v111, sel_initWithNibName_bundle_, 0, 0);
  v103 = *(v18 + 224);
  v22 = v103;
  v104 = v18 + 224;
  v105 = v21;
  v23 = *(v22(v17, v18) + 168);

  v108[0] = v23;
  v24 = sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v25 = sub_1C5BCB5A4();
  v107 = v25;
  v26 = sub_1C5BCB594();
  v27 = *(v26 - 8);
  *&v101 = *(v27 + 56);
  v98 = v27 + 56;
  v99 = v11;
  (v101)(v11, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F40, &unk_1C5BF3AF0);
  sub_1C5924F54(&qword_1EDA46898, &unk_1EC199F40, &unk_1C5BF3AF0, MEMORY[0x1E695BF88]);
  v100 = sub_1C5931640();
  sub_1C5BC80D4();
  sub_1C5924EF4(v11, &unk_1EC199F20, &qword_1C5BD88C0);

  v28 = swift_allocObject();
  v29 = v105;
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v31 = v106;
  v30[2] = v106;
  v30[3] = v18;
  v97 = v18;
  v30[4] = v28;
  v91 = MEMORY[0x1E695BE98];
  sub_1C5924F54(&qword_1EDA468F0, &qword_1EC19A458, &qword_1C5BF3AE8, MEMORY[0x1E695BE98]);
  v32 = v92;
  sub_1C5BC8114();

  (*(v96 + 8))(v13, v32);
  v33 = &v29[qword_1EDA47F90];
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v103(v31, v18);

  v34 = sub_1C5931774();

  v108[0] = v34;
  v35 = sub_1C5BCB5A4();
  v107 = v35;
  v36 = v99;
  v96 = v26;
  (v101)(v99, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199990, &qword_1C5BF1C18);
  sub_1C5924F54(&qword_1EDA468B0, &qword_1EC199990, &qword_1C5BF1C18, MEMORY[0x1E695BED8]);
  v37 = v93;
  v92 = v24;
  sub_1C5BC80D4();
  sub_1C5924EF4(v36, &unk_1EC199F20, &qword_1C5BD88C0);

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v40 = v106;
  v41 = v97;
  v39[2] = v106;
  v39[3] = v41;
  v39[4] = v38;
  sub_1C5924F54(&qword_1EDA468F8, &qword_1EC19A450, &qword_1C5BF3AE0, v91);
  v42 = v94;
  sub_1C5BC8114();

  (*(v95 + 1))(v37, v42);
  swift_beginAccess();
  v95 = v33;
  sub_1C5BC7EE4();
  swift_endAccess();

  v43 = v41;
  v44 = *(v103(v40, v41) + 112);

  if (v44)
  {
    swift_getKeyPath(byte_1C5BF3B00);
    v108[0] = v44;
    sub_1C5931880(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
    sub_1C5BC7B74();

    v45 = *(v44 + 56);

    v108[0] = v45;
    v46 = sub_1C5BCB5A4();
    v107 = v46;
    v47 = v99;
    (v101)(v99, 1, 1, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194460, &unk_1C5BDBC10);
    sub_1C5924F54(&qword_1EDA46890, &qword_1EC194460, &unk_1C5BDBC10, MEMORY[0x1E695BF88]);
    v48 = v81;
    sub_1C5BC80D4();
    sub_1C5924EF4(v47, &unk_1EC199F20, &qword_1C5BD88C0);

    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    v50[2] = v106;
    v50[3] = v43;
    v50[4] = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1C5BA9440;
    *(v51 + 24) = v50;
    v52 = MEMORY[0x1E695BE98];
    sub_1C5924F54(&qword_1EDA468E8, &qword_1EC19A448, &qword_1C5BF3AD8, MEMORY[0x1E695BE98]);
    v53 = v83;
    sub_1C5BC8114();

    (*(v82 + 8))(v48, v53);
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    v54 = [objc_opt_self() defaultCenter];
    v55 = v84;
    sub_1C5BCB604();

    v56 = sub_1C5BCB5A4();
    v108[0] = v56;
    (v101)(v47, 1, 1, v96);
    sub_1C5931880(&unk_1EDA4E0E0, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v57 = v87;
    v58 = v86;
    sub_1C5BC80D4();
    sub_1C5924EF4(v47, &unk_1EC199F20, &qword_1C5BD88C0);

    (*(v85 + 8))(v55, v58);
    v59 = swift_allocObject();
    v60 = v105;
    swift_unknownObjectWeakInit();

    v61 = v60;
    v62 = swift_allocObject();
    v63 = v106;
    v64 = v97;
    v62[2] = v106;
    v62[3] = v64;
    v62[4] = v59;
    sub_1C5924F54(&qword_1EDA4E1B8, &qword_1EC19A440, &unk_1C5BDFC40, v52);
    v65 = v89;
    sub_1C5BC8114();

    (*(v88 + 8))(v57, v65);
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914D0, &unk_1C5BD2730);
    v66 = swift_allocObject();
    v101 = xmmword_1C5BCFF00;
    *(v66 + 16) = xmmword_1C5BCFF00;
    v67 = sub_1C5BC7E04();
    v68 = MEMORY[0x1E69DC0F8];
    *(v66 + 32) = v67;
    *(v66 + 40) = v68;
    v69 = swift_allocObject();
    v70 = ObjectType;
    *(v69 + 16) = v102;
    *(v69 + 24) = v70;
    swift_unknownObjectRetain();
    v71 = v61;
    sub_1C5BCB554();
    swift_unknownObjectRelease();

    v72 = swift_allocObject();
    *(v72 + 16) = v101;
    v73 = sub_1C5BC7E24();
    v74 = MEMORY[0x1E69DC198];
    *(v72 + 32) = v73;
    *(v72 + 40) = v74;
    *(swift_allocObject() + 16) = v70;
    sub_1C5BCB554();
    swift_unknownObjectRelease();

    v75 = *(v103(v63, v64) + 72);

    v76 = [v71 traitCollection];

    v77 = [v76 accessibilityContrast];
    if (*(v75 + 56) == v77)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      sub_1C59318C8(v75 + 16, v108);
      v78 = v109;
      v79 = v110;
      v80 = __swift_project_boxed_opaque_existential_0(v108, v109);
      sub_1C593192C(v80, v77, v75, v78, v79);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v108);
    }

    *(v75 + 56) = v77;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C5930BC0()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C5930BF8()
{

  return swift_deallocObject();
}

uint64_t sub_1C5930C30()
{

  return swift_deallocObject();
}

uint64_t sub_1C5930C98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t type metadata accessor for NowPlayingRouteObserver(uint64_t a1)
{
  result = qword_1EDA48448;
  if (!qword_1EDA48448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5930D44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v31 - v3;
  v41 = sub_1C5BCB5F4();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A440, &unk_1C5BDFC40);
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198300, &unk_1C5BEA3C8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver__route;
  aBlock[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1982F8, &qword_1C5BEA328);
  sub_1C5BC7FF4();
  (*(v9 + 32))(v1 + v12, v11, v8);
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver_routeDidChange) = 0;
  v40 = OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver_subscriptions;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver_subscriptions) = MEMORY[0x1E69E7CD0];
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1C596C118;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596C0AC;
  aBlock[3] = &block_descriptor_19;
  v15 = _Block_copy(aBlock);
  swift_retain_n();

  [v13 getActiveRouteWithCompletion_];
  _Block_release(v15);
  v39 = objc_opt_self();
  v16 = [v39 defaultCenter];
  sub_1C5BCB604();

  sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v17 = sub_1C5BCB5A4();
  aBlock[0] = v17;
  v18 = sub_1C5BCB594();
  v19 = *(v18 - 8);
  v37 = *(v19 + 56);
  v38 = v19 + 56;
  v20 = v43;
  v37(v43, 1, 1, v18);
  v35 = sub_1C59315F8(&unk_1EDA4E0E0, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v36 = sub_1C5931640();
  v21 = v7;
  v22 = v41;
  sub_1C5BC80D4();
  sub_1C59316A8(v20);

  v23 = *(v44 + 8);
  v44 += 8;
  v34 = v23;
  v24 = v22;
  v23(v5, v22);
  swift_allocObject();
  swift_weakInit();

  v33 = sub_1C5931710();
  v25 = v42;
  sub_1C5BC8114();

  v26 = *(v45 + 8);
  v45 += 8;
  v32 = v26;
  v26(v21, v25);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v27 = [v39 defaultCenter];
  sub_1C5BCB604();

  v28 = sub_1C5BCB5A4();
  aBlock[0] = v28;
  v29 = v43;
  v37(v43, 1, 1, v18);
  sub_1C5BC80D4();
  sub_1C59316A8(v29);

  v34(v5, v24);
  swift_allocObject();
  swift_weakInit();

  sub_1C5BC8114();

  v32(v21, v25);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  return v1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C59315F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C5931640()
{
  result = qword_1EDA4E630;
  if (!qword_1EDA4E630)
  {
    sub_1C592535C(255, &qword_1EDA4E620, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E630);
  }

  return result;
}

uint64_t sub_1C59316A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5931710()
{
  result = qword_1EDA4E1B8;
  if (!qword_1EDA4E1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A440, &unk_1C5BDFC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E1B8);
  }

  return result;
}

uint64_t sub_1C5931774()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194D90, &qword_1C5BDD7A0);
    sub_1C5924F54(&qword_1EDA46868, &unk_1EC194D90, &qword_1C5BDD7A0, MEMORY[0x1E695BFB0]);
    v1 = sub_1C5BC8064();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1C5931838(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5931880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C59318C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_1C593192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[3] = a4;
  v20[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  if (a2 == 1 && (sub_1C59318C8(v20, v19), __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460, &unk_1C5BDD000), swift_dynamicCast()))
  {

    v11 = sub_1C592CFE4(&unk_1F4518B80);
    sub_1C5B8FAFC(v11, a3);
  }

  else
  {
    sub_1C59318C8(v20, v19);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v15, v13);
    sub_1C59341CC(v15, a3, a4, a5);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t NowPlayingArtworkTreatment.isEqual(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C5BCB804();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7 - 8];
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C59318C8(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460, &unk_1C5BDD000);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a2);
    (*(v9 + 32))(v12, v8, a2);
    v15 = sub_1C5BCADB4();
    (*(v9 + 8))(v12, a2);
  }

  else
  {
    v14(v8, 1, 1, a2);
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1C5931E14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1C5BCBF54();
    MEMORY[0x1C69501A0](v13);
    result = sub_1C5BCBF94();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5931F84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1C5931F9C(char *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1C592535C(0, &qword_1EDA45E38, 0x1E69DD258);
    v6 = v1;
    v7 = sub_1C5BCB744();

    if (v7)
    {
      return;
    }
  }

  v8 = v2;
  swift_unknownObjectWeakAssign();
  sub_1C5932278(1);

  v9 = [v8 tabBar];
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  v11 = [v8 tabBar];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v11 _setBackgroundView_];

  sub_1C59322FC();
  if (v13)
  {
    v14 = v13;
    v15 = [a1 view];
    if (!v15)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v16 = v15;
    v17 = [v8 tabBar];
    [v14 insertSubview:v16 belowSubview:v17];
  }

  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 1)
  {
    v20 = [a1 view];
    if (!v20)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v21 = v20;
    v22 = [v20 respondsToSelector_];

    if (v22)
    {
      v23 = [a1 view];
      if (!v23)
      {
LABEL_18:
        __break(1u);
        return;
      }

      v24 = v23;
      [v23 _accessibilitySetSortPriority_];
    }
  }

  v25 = [a1 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_16;
  }

  v26 = v25;
  sub_1C592E71C();
}

void sub_1C5932278(char a1)
{
  [*(v1 + qword_1EDA47F88) removeFromSuperview];
  if (a1)
  {
    v3 = *(v1 + qword_1EDA47F88);
    *(v1 + qword_1EDA47F88) = 0;
  }

  [*(v1 + qword_1EDA48200) removeFromSuperview];
  v4 = *(v1 + qword_1EDA48200);
  *(v1 + qword_1EDA48200) = 0;
}

void sub_1C59322FC()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = [v0 view];
  v4 = v3;
  if (v2 != 1)
  {
    return;
  }

  if (!v3)
  {
    goto LABEL_23;
  }

  v5 = [v3 subviews];

  sub_1C592535C(0, &qword_1EDA4E078, 0x1E69DD250);
  v6 = sub_1C5BCB054();

  if (v6 >> 62)
  {
LABEL_19:
    v7 = sub_1C5BCB984();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_20:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_5:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C694FD20](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v12 = [v0 selectedViewController];
    if (v12)
    {
      break;
    }

LABEL_6:

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_20;
    }
  }

  v13 = v12;
  v14 = [v12 view];

  if (v14)
  {
    v15 = [v14 superview];

    if (v15)
    {
      v16 = [v15 isDescendantOfView_];

      if (v16)
      {

        return;
      }
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C593251C(void *a1)
{
  v1 = a1;
  sub_1C5932564();
}

uint64_t sub_1C5932564()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  type metadata accessor for PassthroughView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setView_];

  v5 = *((v3 & v2) + 0x50);
  v6 = *((v3 & v2) + 0x58);
  _s12BackdropViewCMa(0, v5, v6, v7);
  v8 = (*(v6 + 224))(v5, v6);
  *&v1[qword_1EDA47FE0] = sub_1C593278C(v8);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1C5932820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  *(v4 + qword_1EDA481B0) = 0;
  *(v4 + qword_1EDA481C8) = 0;
  *(v4 + qword_1EDA481B8) = 0;
  *(v4 + qword_1EDA481C0) = 0;
  v7 = _s12BackdropViewC16VideoOverlayViewCMa(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  v13.receiver = v4;
  v13.super_class = v7;
  v8 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 blackColor];
  [v10 setBackgroundColor_];

  return v10;
}

unint64_t sub_1C5932A90()
{
  result = qword_1EDA45E60;
  if (!qword_1EDA45E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA45E60);
  }

  return result;
}

uint64_t _s11PlayerStyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s11PlayerStyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

id sub_1C5932C1C(uint64_t a1)
{
  v2 = v1;
  [*(v2 + qword_1EDA48108) setHidden_];
  v4 = *(v2 + qword_1EDA48120);
  if (v4)
  {
    [v4 setHidden_];
  }

  *(*(v2 + qword_1EDA48128) + qword_1EDA481B8) = a1 == 1;
  sub_1C5932CD4();
  v5 = *(v2 + qword_1EDA480F0);

  return [v5 setHidden_];
}

id sub_1C5932CD4()
{
  if (v0[qword_1EDA481B0] != 1 || v0[qword_1EDA481C8] != 1 || (v0[qword_1EDA481B8] & 1) != 0 || (v1 = 1.0, (v0[qword_1EDA481C0] & 1) == 0))
  {
    v1 = 0.0;
  }

  return [v0 setAlpha_];
}

void sub_1C5932D34(void *a1)
{
  v4 = a1;
  sub_1C5932D7C(v4, v1, v2, v3);
}

void sub_1C5932D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v8 = type metadata accessor for NowPlayingView(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v65 - v10;
  type metadata accessor for NowPlayingEnvironmentModifier(255, v6, v7, v11);
  v12 = sub_1C5BC8AB4();
  v73 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v65 - v13;
  v69 = sub_1C5BC8AB4();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v65 - v14;
  v16 = type metadata accessor for NowPlayingViewController(0, v6, v7, v15);
  v84.receiver = v4;
  v84.super_class = v16;
  objc_msgSendSuper2(&v84, sel_viewDidLoad);
  v17 = *&v4[qword_1EDA481E8];
  v18 = *(v7 + 224);
  v74 = v7;
  v75 = v17;
  v19 = *(v18(v6, v7) + 152);

  v20 = objc_allocWithZone(type metadata accessor for ExpandedViewController());

  v22 = sub_1C5936404(v21, 0);
  v23 = *&v5[qword_1EDA47FA8];
  *&v5[qword_1EDA47FA8] = v22;

  if (_UISolariumEnabled())
  {
    v24 = sub_1C5934434();
    objc_allocWithZone(type metadata accessor for CollapsedTabAccessoryViewController());

    v25 = sub_1C593448C(v24, v19, 0);
    v26 = *&v5[qword_1EDA47FA0];
    *&v5[qword_1EDA47FA0] = v25;
  }

  else
  {
    v27 = objc_allocWithZone(type metadata accessor for CollapsedViewController());
    *&v27[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer] = 0;
    v27[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController_hidesMiniPlayer] = 0;
    v27[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive] = 0;
    *&v27[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView] = 0;
    *&v27[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView] = 0;
    *&v27[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties] = v19;
    *&v27[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_statusBarStyle] = 0;
    v28 = type metadata accessor for ContentViewController();
    v83.receiver = v27;
    v83.super_class = v28;

    v29 = objc_msgSendSuper2(&v83, sel_initWithNibName_bundle_, 0, 0);
    v30 = *&v5[qword_1EDA47FA0];
    *&v5[qword_1EDA47FA0] = v29;

    if (!*&v5[qword_1EDA47FA0])
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    [v5 addChildViewController_];
  }

  v31 = *&v5[qword_1EDA47FA0];
  if (!v31)
  {
    __break(1u);
    goto LABEL_20;
  }

  v32 = [v31 view];
  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = [v5 view];
  if (!v34)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = v34;
  v68 = v9;
  [v34 addSubview_];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v36 = *&v5[qword_1EDA47FA0];
    if (!v36)
    {
LABEL_25:
      __break(1u);
      return;
    }

    [v36 didMoveToParentViewController_];
  }

  v76 = v33;
  v67 = v19;
  WitnessTable = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v81 = WitnessTable;
  v82 = v38;
  v39 = swift_getWitnessTable();
  v40 = sub_1C5933B64();
  v79 = v39;
  v80 = v40;
  swift_getWitnessTable();
  v69 = sub_1C5BC91C4();
  v41 = v70;
  v42 = v74;
  sub_1C5933BB8(v6, v74, v70);
  v43 = *&v5[qword_1EDA47F98];
  v66 = v6;
  type metadata accessor for NowPlayingViewControllerProxy(0, v6, v42, v44);
  v48 = v8;
  v49 = sub_1C592C0B8(v5, v45, v46, v47);

  v50 = v72;
  sub_1C5937490(v75, v43, v49, v48, WitnessTable);

  (*(v68 + 8))(v41, v48);
  v77[0] = sub_1C593EF24;
  v77[1] = 0;
  v78 = 0;
  MEMORY[0x1C694E550](v77, v12, &type metadata for HostedScenePhaseSupport, v39);
  (*(v73 + 8))(v50, v12);
  v51 = sub_1C5BC9194();
  sub_1C5BC8AD4();
  sub_1C5BC9184();
  v52 = v51;
  v53 = [v52 view];
  if (!v53)
  {
    goto LABEL_22;
  }

  v54 = v53;
  v55 = [objc_opt_self() clearColor];
  [v54 setBackgroundColor_];

  v56 = *&v5[qword_1EDA47FB8];
  *&v5[qword_1EDA47FB8] = v52;

  v57 = *&v5[qword_1EDA47FA0];
  if (!v57)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v58 = v57;
  sub_1C5937994(v58);

  sub_1C5938180();
  if ((*(v74 + 312))(v66))
  {
    swift_unknownObjectRelease();
    v59 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
    v60 = v76;
    if (*&v5[qword_1EDA47FA0])
    {
      type metadata accessor for CollapsedTabAccessoryViewController();
      v61 = swift_dynamicCastClass();
      v60 = v76;
      if (v61)
      {
        v60 = *(v61 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);
      }
    }

    v62 = v60;
    [v62 addInteraction_];
    v63 = *&v5[qword_1EDA47F78];
    *&v5[qword_1EDA47F78] = v59;
  }

  sub_1C5938344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD31C0;
  *(inited + 32) = swift_getKeyPath(aP_33);
  *(inited + 40) = swift_getKeyPath(aP_34);
  sub_1C5A2DF98(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
}

void sub_1C59335A0(uint64_t a1@<X8>)
{
  *a1 = "MediaCoreUI";
  *(a1 + 8) = 11;
  *(a1 + 16) = 2;
  *(a1 + 24) = "HoveringChapterPicker";
  *(a1 + 32) = 21;
  *(a1 + 40) = 2;
}

void sub_1C59335D0(uint64_t a1@<X8>)
{
  *a1 = "MediaCoreUI";
  *(a1 + 8) = 11;
  *(a1 + 16) = 2;
  *(a1 + 24) = "FluidScrubber";
  *(a1 + 32) = 13;
  *(a1 + 40) = 2;
}

void sub_1C5933618(uint64_t a1)
{
  sub_1C5BC8C94();
  if (v1 <= 0x3F)
  {
    sub_1C593377C(319, &qword_1EDA46778, qword_1EC19A460, &unk_1C5BDD000);
    if (v2 <= 0x3F)
    {
      sub_1C592EF8C(319, &qword_1EDA46760, MEMORY[0x1E697DBD0]);
      if (v3 <= 0x3F)
      {
        sub_1C5AB41DC();
        if (v4 <= 0x3F)
        {
          sub_1C592EF8C(319, &qword_1EDA46798, _s12PresentationCMa);
          if (v5 <= 0x3F)
          {
            sub_1C593377C(319, &qword_1EDA46780, &qword_1EC194468, &unk_1C5BDBCD0);
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

void sub_1C593377C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C5BC8304();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C59337D0(uint64_t a1)
{
  if (!qword_1EDA46760)
  {
    sub_1C5BC8284();
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46760);
    }
  }
}

void sub_1C5933828(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5933874(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C59338DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1C5933960(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1C5BC7E54();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C5BC7E74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v2[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_hidesBackground] = 0;
  *&v2[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_contentView] = 0;
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C5BC7E44();
  sub_1C5BC7E84();
  v12[3] = v5;
  v12[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_0(v12);
  sub_1C5BC7E64();
  (*(v6 + 8))(v8, v5);
  sub_1C5BCB694();

  return v9;
}

unint64_t sub_1C5933B64()
{
  result = qword_1EDA485E0;
  if (!qword_1EDA485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA485E0);
  }

  return result;
}

uint64_t sub_1C5933BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = sub_1C5BC8C84();
  *(a3 + 16) = v6;
  *(a3 + 24) = swift_getKeyPath(byte_1C5BF0BA8);
  *(a3 + 64) = 0;
  v8 = type metadata accessor for NowPlayingView(0, a1, a2, v7);
  v9 = v8[11];
  *(a3 + v9) = swift_getKeyPath(byte_1C5BF0BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  swift_storeEnumTagMultiPayload();
  v10 = a3 + v8[12];
  *v10 = swift_getKeyPath(byte_1C5BF0B68);
  *(v10 + 73) = 0;
  v11 = a3 + v8[13];
  _s12PresentationCMa(0);
  sub_1C5B8013C(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  *v11 = sub_1C5BC8324();
  *(v11 + 8) = v12 & 1;
  v13 = a3 + v8[14];
  *v13 = result;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  return result;
}

uint64_t sub_1C5933D58(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = sub_1C592F5A0(MEMORY[0x1E69E7CC0]);
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194460, &unk_1C5BDBC10);
  swift_allocObject();
  *(v1 + 56) = sub_1C5BC7F44();
  *(v1 + 64) = xmmword_1C5BDB910;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  swift_weakInit();
  sub_1C5BC7BA4();
  swift_getKeyPath(" ?\\&");
  v9[0] = v1;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);

  sub_1C5BC7B64();

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1C5933F84();
  v6 = v5;

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v9[0] = v7;
  v9[1] = v6;
  sub_1C592F69C(v9);
  return v2;
}

uint64_t sub_1C5933F04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5933F84()
{
  v1 = sub_1C5BCAE44();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    v3 = sub_1C5BCAE44();
    v2 = [v0 stringForKey_];

    if (!v2)
    {
      return 0;
    }
  }

  v4 = sub_1C5BCAE74();

  return v4;
}

uint64_t sub_1C5934068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a2)
  {
    if (!a4)
    {

      return v4 & 1;
    }

    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:

    v4 = 1;
    return v4 & 1;
  }

  if (a1 == a3 && a2 == a4)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1C5BCBDE4();

    v4 = v5 ^ 1;
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t MCUINamespace<A>.installNowPlayingView<A>(controller:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1C5934B08(a1, a2, a3, sub_1C5931F9C);
}

{
  return sub_1C5934B08(a1, a2, a3, sub_1C5B9D22C);
}

void sub_1C5934168(uint64_t a1)
{
  if (!qword_1EDA46808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1982F8, &qword_1C5BEA328);
    v1 = sub_1C5BC8054();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46808);
    }
  }
}

uint64_t sub_1C59341CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a3;
  v14 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  swift_beginAccess();
  sub_1C59318C8(a2 + 64, v11);
  LOBYTE(v4) = NowPlayingArtworkTreatment.isEqual(_:)(v11, a3, v4);
  __swift_destroy_boxed_opaque_existential_0(v11);
  if ((v4 & 1) == 0)
  {
    _s7ArtworkCMa();
    sub_1C5A4E970(qword_1EDA49C50, v9, _s7ArtworkCMa, &unk_1C5BDD54C);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();

    sub_1C5BC7F54();
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((a2 + 64));
  sub_1C5931F84(&v12, a2 + 64);
  return swift_endAccess();
}

id sub_1C593432C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = _s12GradientViewCMa(0, *((*MEMORY[0x1E69E7D40] & *v8) + 0x50), *((*MEMORY[0x1E69E7D40] & *v8) + 0x58), a8);
  v15.receiver = v8;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t sub_1C59343CC()
{
  v1 = [v0 layer];
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

void *sub_1C5934434()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void *sub_1C593448C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(type metadata accessor for CollapsedTabAccessoryViewController.MiniPlayerContainer());
  v9 = a1;
  v10 = sub_1C5933960(a1, a2);

  *&v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer] = v10;
  v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive] = 0;
  *&v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView] = 0;
  *&v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView] = 0;
  *&v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties] = a2;
  *&v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_statusBarStyle] = a3;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for ContentViewController();

  v11 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  v12 = v11;
  if (a1)
  {
    v13 = *&v11[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer];
    v14 = objc_allocWithZone(MEMORY[0x1E69DD790]);
    v15 = v9;
    v16 = v12;
    v17 = [v14 initWithContentView_];
    [v15 _setBottomAccessory_];
  }

  else
  {
  }

  return v12;
}

uint64_t sub_1C59346D0(uint64_t a1)
{
  result = sub_1C5BC7BB4();
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

uint64_t sub_1C59347D8(uint64_t a1)
{
  result = sub_1C5BC7BB4();
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

unint64_t sub_1C5934890()
{
  result = qword_1EDA46880;
  if (!qword_1EDA46880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1962A0, &qword_1C5BEC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46880);
  }

  return result;
}

uint64_t sub_1C59348F4()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA5DA78);
  __swift_project_value_buffer(v0, qword_1EDA5DA78);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5934970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C59349AC(void *a1@<X8>)
{
  v2 = *(v1 + 112);
  if (v2)
  {
    swift_getKeyPath(byte_1C5BF2058);
    sub_1C5B906C0(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);

    sub_1C5BC7B74();

    v5 = *(v2 + 24);
    v4 = *(v2 + 32);

    *a1 = v5;
    a1[1] = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C5934A84(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return sub_1C592F69C(v4);
}

uint64_t sub_1C5934AC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C5934B08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for NowPlayingViewController(0, a2, a3, a4);
  swift_unknownObjectRetain();
  v7 = objc_allocWithZone(v6);
  sub_1C592FAC0(a1);
  v9 = v8;
  a4();
  return v9;
}

void sub_1C5934B78(uint64_t a1)
{
  sub_1C5934168(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1C5934C20(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199960, &qword_1C5BF1BD0);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v98 - v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199968, &qword_1C5BF1BD8);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v98 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8, &qword_1C5BE1270);
  v130 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v98 - v7;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198558, &unk_1C5BEF350);
  v131 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v109 = &v98 - v8;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199970, &qword_1C5BF1BE0);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v98 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199978, &unk_1C5BF1BE8);
  v119 = *(v10 - 8);
  v120 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v98 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = &v98 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199980, &qword_1C5BF1BF8);
  v100 = *(v121 - 1);
  MEMORY[0x1EEE9AC00](v121);
  v99 = &v98 - v14;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199988, &unk_1C5BF1C00);
  v102 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v101 = &v98 - v15;
  *&v2[qword_1EDA480F8] = MEMORY[0x1E69E7CD0];
  *&v2[qword_1EDA48120] = 0;
  swift_weakInit();
  v132 = a1;
  swift_weakAssign();
  if (_UISolariumEnabled())
  {
    v16 = MEMORY[0x1E69DD250];
  }

  else
  {
    v16 = type metadata accessor for NowPlayingMiniPlayerContentBackgroundView();
  }

  v17 = [objc_allocWithZone(v16) init];
  *&v2[qword_1EDA48118] = v17;
  v18 = *(v4 + 80);
  v19 = *(v4 + 88);
  *&v2[qword_1EDA48128] = [objc_allocWithZone(_s12BackdropViewC16VideoOverlayViewCMa(0 v18];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v22 = qword_1EDA480F0;
  *&v2[qword_1EDA480F0] = v21;
  v23 = objc_opt_self();
  v24 = v21;
  v25 = [v23 systemBackgroundColor];
  [v24 setBackgroundColor_];

  [*&v2[v22] setAlpha_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v27 = qword_1EDA48100;
  *&v2[qword_1EDA48100] = v26;
  v28 = v26;
  v29 = [v23 redColor];
  [v28 setBackgroundColor_];

  [*&v2[v27] setHidden_];
  _s12GradientViewCMa(0, v18, v19, v30);
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32 = qword_1EDA48108;
  *&v2[qword_1EDA48108] = v31;
  [v31 setAlpha_];
  v33 = *&v2[v32];
  v34 = sub_1C59343CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1C5BD31C0;
  sub_1C592535C(0, &qword_1EDA4E048, 0x1E696AD98);
  *(v35 + 32) = sub_1C5BCB714();
  *(v35 + 40) = sub_1C5BCB714();
  v36 = sub_1C5BCB044();

  [v34 setLocations_];

  type metadata accessor for BackdropLayerHostView();
  v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v38 = qword_1EDA48110;
  *&v2[qword_1EDA48110] = v37;
  v39 = [v37 layer];
  objc_opt_self();
  v40 = swift_dynamicCastObjCClassUnconditional();
  v41 = sub_1C5BCAE44();
  [v40 setGroupName_];

  v42 = [*&v2[v38] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setCaptureOnly_];

  v43 = v18;
  v124 = v18;
  v125 = v19;
  v45 = _s12BackdropViewCMa(0, v18, v19, v44);
  v135.receiver = v2;
  v135.super_class = v45;
  v46 = objc_msgSendSuper2(&v135, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v47 = *(v46 + qword_1EDA48118);
  v48 = v46;
  [v48 addSubview_];
  [v48 addSubview_];
  [v48 addSubview_];
  [v48 addSubview_];
  [v48 addSubview_];
  [v48 addSubview_];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194D88, &qword_1C5BDD798);
  v49 = v99;
  sub_1C5BC8004();
  swift_endAccess();
  v127 = sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v50 = sub_1C5BCB5A4();
  v134 = v50;
  v128 = sub_1C5BCB594();
  v51 = *(v128 - 8);
  v129 = *(v51 + 56);
  v123 = v51 + 56;
  v52 = v106;
  v129(v106, 1, 1, v128);
  v98 = MEMORY[0x1E695C068];
  sub_1C5924F54(&qword_1EDA46850, &qword_1EC199980, &qword_1C5BF1BF8, MEMORY[0x1E695C068]);
  v126 = sub_1C5931640();
  v53 = v101;
  v54 = v121;
  sub_1C5BC80D4();
  sub_1C5924EF4(v52, &unk_1EC199F20, &qword_1C5BD88C0);

  (*(v100 + 8))(v49, v54);
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  v56[2] = v43;
  v56[3] = v19;
  v56[4] = v55;
  v121 = MEMORY[0x1E695BE98];
  sub_1C5924F54(&qword_1EDA468D0, &qword_1EC199988, &unk_1C5BF1C00, MEMORY[0x1E695BE98]);
  v57 = v117;
  sub_1C5BC8114();

  (*(v102 + 8))(v53, v57);
  v58 = qword_1EDA480F8;
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v134 = *(v132[5] + 24);

  v133 = sub_1C5931774();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A3F0, &qword_1C5BF1C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199990, &qword_1C5BF1C18);
  sub_1C5924F54(&unk_1EDA468A0, &qword_1EC19A3F0, &qword_1C5BF1C10, MEMORY[0x1E695BF88]);
  sub_1C5924F54(&qword_1EDA468B0, &qword_1EC199990, &qword_1C5BF1C18, MEMORY[0x1E695BED8]);
  v59 = v103;
  sub_1C5BC7EC4();
  v60 = sub_1C5BCB5A4();
  v134 = v60;
  v129(v52, 1, 1, v128);
  sub_1C5924F54(&qword_1EDA46938, &qword_1EC199970, &qword_1C5BF1BE0, MEMORY[0x1E695BC68]);
  v61 = v118;
  v62 = v105;
  sub_1C5BC80D4();
  sub_1C5924EF4(v52, &unk_1EC199F20, &qword_1C5BD88C0);

  (*(v104 + 8))(v59, v62);
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = swift_allocObject();
  v66 = v124;
  v65 = v125;
  v64[2] = v124;
  v64[3] = v65;
  v64[4] = v63;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1C596C954;
  *(v67 + 24) = v64;
  sub_1C5924F54(&qword_1EDA468C8, &qword_1EC199978, &unk_1C5BF1BE8, v121);
  v68 = v120;
  sub_1C5BC8114();

  (*(v119 + 8))(v61, v68);
  v117 = v58;
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  swift_beginAccess();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0, &qword_1C5BEAEA0);
  v69 = v107;
  sub_1C5BC8004();
  swift_endAccess();
  v70 = sub_1C5BCB5A4();
  v134 = v70;
  v129(v52, 1, 1, v128);
  v119 = sub_1C5924F54(&qword_1EDA4E6C0, &qword_1EC1958C8, &qword_1C5BE1270, v98);
  v71 = v109;
  v72 = v108;
  sub_1C5BC80D4();
  sub_1C5924EF4(v52, &unk_1EC199F20, &qword_1C5BD88C0);

  v73 = *(v130 + 8);
  v130 += 8;
  v118 = v73;
  (v73)(v69, v72);
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  v75[2] = v66;
  v76 = v125;
  v75[3] = v125;
  v75[4] = v74;
  v105 = sub_1C5924F54(&qword_1EDA4E6C8, &qword_1EC198558, &unk_1C5BEF350, v121);
  v77 = v122;
  sub_1C5BC8114();

  v78 = *(v131 + 8);
  v131 += 8;
  v121 = v78;
  (v78)(v71, v77);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  swift_beginAccess();
  sub_1C5BC8004();
  swift_endAccess();
  v79 = sub_1C5BCB5A4();
  v134 = v79;
  v129(v52, 1, 1, v128);
  sub_1C5BC80D4();
  sub_1C5924EF4(v52, &unk_1EC199F20, &qword_1C5BD88C0);

  (v118)(v69, v72);
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  v81[2] = v124;
  v81[3] = v76;
  v81[4] = v80;
  v82 = v122;
  sub_1C5BC8114();

  (v121)(v71, v82);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  swift_beginAccess();
  sub_1C5BC8004();
  swift_endAccess();
  v83 = sub_1C5BCB5A4();
  v134 = v83;
  v129(v52, 1, 1, v128);
  sub_1C5BC80D4();
  sub_1C5924EF4(v52, &unk_1EC199F20, &qword_1C5BD88C0);

  (v118)(v69, v72);
  LOWORD(v134) = 512;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199998, &qword_1C5BF1C20);
  v84 = v110;
  sub_1C5BC8094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999A0, &qword_1C5BF1C28);
  sub_1C5924F54(&qword_1EDA46918, &qword_1EC199960, &qword_1C5BF1BD0, MEMORY[0x1E695BD88]);
  v85 = v113;
  v86 = v112;
  sub_1C5BC8074();
  (*(v111 + 8))(v84, v86);
  (v121)(v71, v82);
  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v88 = swift_allocObject();
  v89 = v125;
  v88[2] = v124;
  v88[3] = v89;
  v88[4] = v87;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1C596CE58;
  *(v90 + 24) = v88;
  sub_1C5924F54(&qword_1EDA46930, &qword_1EC199968, &qword_1C5BF1BD8, MEMORY[0x1E695BC80]);
  v91 = v115;
  sub_1C5BC8114();

  (*(v114 + 8))(v85, v91);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914D0, &unk_1C5BD2730);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1C5BCFF00;
  v93 = sub_1C5BC7E24();
  v94 = MEMORY[0x1E69DC198];
  *(v92 + 32) = v93;
  *(v92 + 40) = v94;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1C5BCB6C4();
  swift_unknownObjectRelease();

  v95 = [v48 traitCollection];

  v96 = [v95 accessibilityContrast];
  sub_1C5932C1C(v96);

  return v48;
}

uint64_t sub_1C59362D0()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C5936308()
{

  return swift_deallocObject();
}

uint64_t sub_1C5936340()
{

  return swift_deallocObject();
}

uint64_t sub_1C593639C(uint64_t a1)
{
  swift_getObjCClassMetadata();
  sub_1C59363D4();

  return swift_getObjCClassFromMetadata();
}

id sub_1C5936404(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds];
  *v3 = 0u;
  v3[1] = 0u;
  v4 = &v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseBegan];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseEnded];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_isCollapsing] = 0;
  v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive] = 0;
  *&v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView] = 0;
  *&v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView] = 0;
  *&v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties] = a1;
  *&v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_statusBarStyle] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContentViewController();
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1C59364E4()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    if (swift_weakLoadStrong())
    {
      v3 = *&v0[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_contentView];
      if (v3)
      {
        v4 = v3;
        [v0 frame];
        Width = CGRectGetWidth(v17);
        [v2 frame];
        [v4 setFrame_];
      }

      [v0 bounds];
      v7 = v6;
      v9 = v8;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v11 = Strong, v12 = [Strong _bottomAccessory], v11, v12))
      {
        v13 = [v12 displayStyle];

        v14 = v13 == 1;
      }

      else
      {
        v14 = 2;
      }

      v15 = v14;
      sub_1C5A32D3C(&v15, v7, v9);
    }
  }
}

void sub_1C5936674(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath(byte_1C5BDBBC0);
  v19 = v1;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  if (*(v1 + 32))
  {

    v6 = sub_1C5BCAE44();
  }

  else
  {

    v6 = 0;
  }

  v7 = sub_1C5BCAE44();
  [v5 setValue:v6 forKey:v7];

  swift_unknownObjectRelease();
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C5BC7D64();
  __swift_project_value_buffer(v8, qword_1EDA5DA78);

  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = 7104878;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446466;
    if (v3)
    {
      v14 = v4;
    }

    else
    {
      v14 = 7104878;
    }

    if (v3)
    {
      v15 = v3;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_1C592ADA8(v14, v15, &v19);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    swift_getKeyPath(byte_1C5BDBBC0);
    sub_1C5BC7B74();

    v17 = *(v2 + 32);
    if (v17)
    {
      v11 = *(v2 + 24);
    }

    else
    {

      v17 = 0xE300000000000000;
    }

    v18 = sub_1C592ADA8(v11, v17, &v19);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_1C5922000, v9, v10, "Selected content changing from %{public}s to %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v13, -1, -1);
    MEMORY[0x1C69510F0](v12, -1, -1);
  }
}

uint64_t _s27TransportInteractionMonitorCMa(uint64_t a1)
{
  result = qword_1EDA4A338;
  if (!qword_1EDA4A338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5936AF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC196CB8, &qword_1C5BE4E38);
  _s27TransportInteractionMonitorCMa(255);
  sub_1C5924F54(&qword_1EDA46238, qword_1EC196CB8, &qword_1C5BE4E38, MEMORY[0x1E697FDF8]);
  sub_1C5939F8C(&qword_1EDA4A348, _s27TransportInteractionMonitorCMa, &unk_1C5BE4D6C);
  return swift_getOpaqueTypeConformance2();
}

void sub_1C5936BDC(uint64_t a1)
{
  if (!qword_1EDA463F8)
  {
    _s8BackdropCMa(255);
    sub_1C592F30C(&qword_1EDA49930, _s8BackdropCMa, &unk_1C5BF1940);
    v1 = sub_1C5BC8C94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA463F8);
    }
  }
}

void sub_1C5936C70(uint64_t a1)
{
  if (!qword_1EDA463F0)
  {
    type metadata accessor for NowPlayingViewModel.Lifecycle();
    sub_1C5931838(&qword_1EDA497D0, 255, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
    v1 = sub_1C5BC8C94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA463F0);
    }
  }
}

uint64_t sub_1C5936D08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 73))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 18);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 18);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1C5936D5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C5936DB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DeviceMetrics.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceMetrics.Layout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C5936F90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199990, &qword_1C5BF1C18);
  _s25BackdropConditionObserverVMa(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_1C5BC9394();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C593A9AC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470, qword_1C5BEBAC0);
  swift_getOpaqueTypeConformance2();
  sub_1C5937414(&qword_1EDA4AE90, &qword_1EC194470, qword_1C5BEBAC0, sub_1C593AA00);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194468, &unk_1C5BDBCD0);
  swift_getOpaqueTypeConformance2();
  sub_1C5937414(&qword_1EDA47CC8, &qword_1EC194468, &unk_1C5BDBCD0, sub_1C593AA54);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC90F4();
  swift_getOpaqueTypeConformance2();
  sub_1C592F30C(&qword_1EDA46328, MEMORY[0x1E697F610], MEMORY[0x1E697F620]);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for OSThermalPressureLevel(255);
  swift_getOpaqueTypeConformance2();
  sub_1C592F30C(&qword_1EDA45DE8, type metadata accessor for OSThermalPressureLevel, &unk_1C5BD0A3C);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC81D4();
  swift_getOpaqueTypeConformance2();
  sub_1C592F30C(&qword_1EDA467E8, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EDA468B0, &qword_1EC199990, &qword_1C5BF1C18, MEMORY[0x1E695BED8]);
  swift_getOpaqueTypeConformance2();
  sub_1C5BC8BB4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5937414(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5937490(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  swift_unknownObjectRetain();

  sub_1C59375C4(a1, a2, a3, v14);
  v12 = type metadata accessor for NowPlayingEnvironmentModifier(0, *(v10 + 80), *(v10 + 88), v11);
  MEMORY[0x1C694E550](v14, a4, v12, a5);
  v16[4] = v14[4];
  v16[5] = v14[5];
  v17 = v15;
  v16[0] = v14[0];
  v16[1] = v14[1];
  v16[2] = v14[2];
  v16[3] = v14[3];
  return (*(*(v12 - 8) + 8))(v16, v12);
}

void sub_1C59375C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(*a3 + 88);
  v7 = *(v6 + 224);
  v8 = *(*a3 + 80);
  swift_unknownObjectRetain();
  v22 = v7(v8, v6);
  v7(v8, v6);

  _s7ArtworkCMa();
  sub_1C59378A8(qword_1EDA49C50, _s7ArtworkCMa, &unk_1C5BDD54C);
  v9 = sub_1C5BC88C4();
  v20 = v10;
  v21 = v9;
  v7(v8, v6);

  type metadata accessor for NowPlayingViewModel.CurrentItem(0);
  sub_1C59378A8(&qword_1EDA4B168, type metadata accessor for NowPlayingViewModel.CurrentItem, &unk_1C5BF2378);
  v11 = sub_1C5BC88C4();
  v18 = v12;
  v19 = v11;
  v13 = *(v7(v8, v6) + 112);

  if (v13)
  {
    v14 = *(v7(v8, v6) + 152);

    v15 = *(v7(v8, v6) + 144);

    v7(v8, v6);
    swift_unknownObjectRelease();

    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C59378A8(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
    v16 = sub_1C5BC88C4();
    *a4 = a1;
    a4[1] = a2;
    a4[2] = v22;
    a4[3] = a3;
    a4[4] = v14;
    a4[5] = v13;
    a4[6] = v15;
    a4[7] = v21;
    a4[8] = v20;
    a4[9] = v19;
    a4[10] = v18;
    a4[11] = v16;
    a4[12] = v17;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C59378A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C59378F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5937938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void sub_1C5937994(void *a1)
{
  v2 = v1;
  v4 = *(v1 + qword_1EDA47FA8);
  v5 = MEMORY[0x1E69E7D40];
  if (v4)
  {
    type metadata accessor for ContentViewController();
    v6 = v4;
    v7 = a1;
    v8 = sub_1C5BCB744();

    if (v8)
    {
      v4 = *(v2 + qword_1EDA47FA0);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = *(v2 + qword_1EDA47FA8);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v9 = v4;
    *(v9 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive) = 0;

    v10 = *((*v5 & *v9) + 0xD0);
    v4 = v9;
    v10(0);
  }

LABEL_7:
  v11 = *(v2 + qword_1EDA47FE0);
  v12 = *((*v5 & *a1) + 0xD0);
  v13 = v11;
  v12(v11);
  v14 = _UISolariumEnabled();
  v15 = *(v2 + qword_1EDA47FB8);
  if (v14)
  {
    if (!v15)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v16 = [*(v2 + qword_1EDA47FB8) view];
    v17 = *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
    *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView) = v16;
    v18 = *((*v5 & *a1) + 0xA8);
    v19 = v16;
    v18(v17);
  }

  else
  {
    if (!v15)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [a1 addChildViewController_];
    v20 = *(v2 + qword_1EDA47FB8);
    if (!v20)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v21 = [v20 view];
    v22 = *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
    *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView) = v21;
    v23 = *((*v5 & *a1) + 0xA8);
    v24 = v21;
    v23(v22);

    v25 = *(v2 + qword_1EDA47FB8);
    if (!v25)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    [v25 didMoveToParentViewController_];
    *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive) = 1;
    v26 = [a1 view];
    if (!v26)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v17 = v26;
    sub_1C592D4C8(v26);
  }

  *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive) = 1;
  v27 = [a1 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  sub_1C592D4C8(v27);
}

void sub_1C5937CB8(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView;
  v8 = *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView];
  *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView] = a1;
  v3 = a1;
  [v8 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 addSubview_];
  }
}

void sub_1C5937D74(void *a1)
{
  v2 = OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_contentView;
  v3 = *&v1[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_contentView];
  *&v1[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_contentView] = a1;
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    if ([v5 isDescendantOfView_])
    {
      [v5 removeFromSuperview];
    }

    v6 = *&v1[v2];
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = a1;
    v6 = a1;
    if (a1)
    {
LABEL_5:
      v7 = v6;
      [v1 addSubview_];
    }
  }
}

uint64_t sub_1C5937E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5937E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5937ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5937F18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1C5937F60@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [a1 window];
  v9 = 1.0;
  v10 = 1.0;
  if (v8)
  {
    v11 = v8;
    v12 = [v8 screen];

    [v12 nativeScale];
    v10 = v13;
  }

  v14 = [a1 window];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 screen];

    [v16 scale];
    v9 = v17;
  }

  v18 = v7 * (v10 / v9);
  v19 = round(v5 * (v10 / v9));
  v20 = round(v18);
  v21 = [objc_opt_self() currentTraitCollection];
  v22 = [v21 horizontalSizeClass];

  v23 = objc_opt_self();
  v24 = [v23 currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if (v19 >= 1024.0 && v20 < v19)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  if (v22 == 2 && v25 == 1)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  sub_1C592DD40(&v34, v19, v20);
  v30 = v34;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 17) = v30;
  *(a2 + 18) = v29;
  v31 = [v23 currentDevice];
  v32 = [v31 userInterfaceIdiom];

  *(a2 + 24) = v32;
  *(a2 + 32) = 0;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0;
  return result;
}

void sub_1C5938180()
{
  v1 = *(v0 + qword_1EDA47FA8);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v5 = *(v2 + 80);
  *(v4 + 2) = v5;
  v6 = *(v2 + 88);
  *(v4 + 3) = v6;
  *(v4 + 4) = v3;
  v7 = &v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseBegan];
  v8 = *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseBegan];
  v9 = *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseBegan + 8];
  *v7 = sub_1C5BA9674;
  v7[1] = v4;
  v10 = v1;

  sub_1C59261FC(v8, v9);

  v11 = *(v0 + qword_1EDA47FA8);
  if (!v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 2) = v5;
  *(v13 + 3) = v6;
  *(v13 + 4) = v12;
  v14 = &v11[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseEnded];
  v15 = *&v11[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseEnded];
  v16 = *&v11[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseEnded + 8];
  *v14 = sub_1C5BA9680;
  v14[1] = v13;
  v17 = v11;

  sub_1C59261FC(v15, v16);
}

void sub_1C5938344()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1 && !*(v0 + qword_1EDA47F60))
  {
    v9 = v1 + 80;
    v8 = *(v1 + 80);
    v7 = *(v9 + 8);
    v10 = *((*(v7 + 224))(v8, v7) + 72);

    swift_beginAccess();
    sub_1C59318C8(v10 + 64, v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460, &unk_1C5BDD000);
    if (swift_dynamicCast())
    {
      v11 = v31;
      if (v31)
      {
        v12 = v31;
        v13 = [v0 view];
        if (!v13)
        {
          __break(1u);
          return;
        }

        v14 = v13;
        v15 = [v13 window];

        if (v15)
        {
          v16 = [v15 screen];

          [v16 bounds];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;

          v25 = sub_1C5BCB214();
          (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
          v26 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v27 = swift_allocObject();
          v27[2] = 0;
          v27[3] = 0;
          v27[4] = v8;
          v27[5] = v7;
          v27[6] = v26;
          v27[7] = v12;
          v27[8] = v18;
          v27[9] = v20;
          v27[10] = v22;
          v27[11] = v24;
          v28 = v12;
          v29 = sub_1C5A0BB28(0, 0, v4, &unk_1C5BF3B30, v27);
          sub_1C5924EF4(v4, &qword_1EC1930A0, &qword_1C5BD7440);
          sub_1C593871C(v29);

LABEL_11:
          __swift_destroy_boxed_opaque_existential_0(v32);
          return;
        }
      }

      sub_1C592E620();

      goto LABEL_11;
    }

    sub_1C592E620();
    goto LABEL_11;
  }
}

uint64_t sub_1C59386D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_1C593871C(uint64_t a1)
{
  v2 = *(v1 + qword_1EDA47F60);
  *(v1 + qword_1EDA47F60) = a1;

  if (v2)
  {
    sub_1C5BCB2A4();
  }

  return result;
}

uint64_t sub_1C5938788(uint64_t a1, uint64_t a2)
{
  sub_1C59387C0(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C59387C0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EDA47F20;
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

void sub_1C5938824(void *a1)
{
  v4 = a1;
  sub_1C593886C(v4, v1, v2, v3);
}

void sub_1C593886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *&v4[qword_1EDA47FA0];
  if (v6)
  {
    type metadata accessor for CollapsedViewController();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C5BD31C0;
      v10 = v6;
      v11 = [v8 view];
      if (v11)
      {
        v12 = v11;
        v92 = v10;
        v13 = [v11 heightAnchor];

        v14 = [v5 view];
        if (v14)
        {
          v15 = v14;
          v16 = objc_opt_self();
          v17 = [v15 heightAnchor];

          v18 = [v13 constraintEqualToAnchor_];
          *(v9 + 32) = v18;
          *(v9 + 40) = sub_1C5B9E300();
          sub_1C592535C(0, &qword_1EDA45E20, 0x1E696ACD8);
          v19 = sub_1C5BCB044();

          [v16 activateConstraints_];

          v20 = [v8 view];
          if (v20)
          {
            v21 = v20;
            v22 = [v20 topAnchor];

            v23 = sub_1C5BA1AB0();
            if (!v23 || (v24 = v23, v25 = [v23 topAnchor], v24, !v25))
            {
              sub_1C5BA1CC8();
              v27 = v26;
              v25 = [v26 bottomAnchor];
            }

            v28 = [v22 constraintEqualToAnchor:v25 constant:-sub_1C5B9E228()];

            sub_1C5BA8340(v28);
            sub_1C5BA19C4(&v94);
            v29 = v95;
            v30 = [v8 view];

            if (v30)
            {
              v31 = [v30 centerXAnchor];

              if (v29 == 2)
              {
                v32 = sub_1C5B9E264();
              }

              else
              {
                v33 = [v5 view];
                if (!v33)
                {
LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                v34 = v33;
                v32 = [v33 safeAreaLayoutGuide];
              }

              v35 = [v32 centerXAnchor];

              v36 = [v31 constraintEqualToAnchor_];
              sub_1C5BA83A0(v36);

              v37 = sub_1C5BA1AB0();
              if (v37)
              {
                v39 = v37;
                [v37 bounds];
                Height = CGRectGetHeight(v97);

                *&v41 = Height + 6.0;
                v90 = v41;
                v93 = 12.0;
              }

              else
              {
                v93 = 24.0;
                *&v38 = 24.0;
                v90 = v38;
              }

              v42 = sub_1C5B9E6A8();
              v43 = v42;
              v44 = &v42[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets];
              v45 = *&v42[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets];
              v46 = *&v42[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets + 16];
              *v44 = 0.0;
              *&v47.f64[0] = v90;
              v44[1] = v93;
              *(v44 + 2) = v90;
              v44[3] = v93;
              v48.f64[0] = 0.0;
              v48.f64[1] = v93;
              v47.f64[1] = v93;
              if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v48, v45), vceqq_f64(v47, v46)))) & 1) == 0)
              {
                [v42 setNeedsLayout];
              }

              v49 = [v5 view];
              if (v49)
              {
                v50 = v49;
                v51 = [v49 window];

                if (v51)
                {
                  v52 = [v51 screen];
                }

                else
                {
                  v53 = [v5 view];
                  if (!v53)
                  {
LABEL_43:
                    __break(1u);
                    return;
                  }

                  v52 = v53;
                }

                [v52 bounds];
                v91 = v54;
                v56 = v55;
                v58 = v57;
                v60 = v59;

                v61 = [v5 view];
                if (v61)
                {
                  v62 = v61;
                  [v61 bounds];
                  v64 = v63;
                  v66 = v65;
                  v68 = v67;
                  v70 = v69;

                  v98.origin.x = v64;
                  v98.origin.y = v66;
                  v98.size.width = v68;
                  v98.size.height = v70;
                  Width = CGRectGetWidth(v98);
                  v72 = sub_1C5B9E264();
                  [v72 layoutFrame];
                  v74 = v73;
                  v76 = v75;
                  v78 = v77;
                  v80 = v79;

                  v99.origin.x = v74;
                  v99.origin.y = v76;
                  v99.size.width = v78;
                  v99.size.height = v80;
                  v81 = Width - CGRectGetMinX(v99);
                  v100.origin.x = v91;
                  v100.origin.y = v56;
                  v100.size.width = v58;
                  v100.size.height = v60;
                  v82 = CGRectGetWidth(v100);
                  v101.origin.x = v91;
                  v101.origin.y = v56;
                  v101.size.width = v58;
                  v101.size.height = v60;
                  v83 = CGRectGetHeight(v101);
                  if (v83 >= v82)
                  {
                    v83 = v82;
                  }

                  v84 = (v93 + v93) * 0.5 + v83;
                  v85 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer;
                  v86 = *&v8[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer];
                  v87 = v84 < v81;
                  v88 = v86[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows];
                  v86[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows] = v87;
                  if (v87 != v88)
                  {
                    [v86 setNeedsLayout];
                  }

                  if (*(*&v8[v85] + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows))
                  {
                    v89 = v84;
                  }

                  else
                  {
                    v89 = v81;
                  }

                  [*&v5[qword_1EDA481F0] setConstant_];

                  goto LABEL_33;
                }

                goto LABEL_41;
              }

LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }
  }

LABEL_33:

  sub_1C5938ED4(v5, a2, a3, a4);
}

id sub_1C5938ED4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NowPlayingViewController(0, *((*MEMORY[0x1E69E7D40] & *a1) + 0x50), *((*MEMORY[0x1E69E7D40] & *a1) + 0x58), a4);
  v7.receiver = a1;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_updateViewConstraints);
}

void sub_1C5938F50(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for NowPlayingViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, *a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v7 = [v4 view];
    if (v7)
    {
      v8 = v7;
      [v7 setNeedsUpdateConstraints];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C5939008(void *a1)
{
  v4 = a1;
  sub_1C592ECE0(v4, v1, v2, v3);
}

uint64_t type metadata accessor for HostedScenePhaseModel(uint64_t a1)
{
  result = qword_1EDA48C18;
  if (!qword_1EDA48C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5939100(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for NowPlayingEnvironmentModifier(255, *a1, v5, a4);
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193A98, &qword_1C5BD8BA8);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  sub_1C5BC97B4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AA0, &qword_1C5BD8BB0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AA8, &qword_1C5BD8BB8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AB0, &qword_1C5BD8BC0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AB8, &qword_1C5BD8BC8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AC0, &qword_1C5BD8BD0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AC8, &qword_1C5BD8BD8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AD0, &qword_1C5BD8BE0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AD8, &qword_1C5BD8BE8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AE0, &qword_1C5BD8BF0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AE8, &qword_1C5BD8BF8);
  sub_1C5BC8AB4();
  type metadata accessor for NowPlayingViewControllerProxy(255, v4, v5, v6);
  sub_1C5BCB804();
  sub_1C5BC97B4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AF0, &qword_1C5BD8C00);
  sub_1C5BC8AB4();
  _s13TrackSectionsCMa(255);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46038, &qword_1EC193A98, &qword_1C5BD8BA8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46108, &qword_1EC193AA0, &qword_1C5BD8BB0);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46120, &qword_1EC193AA8, &qword_1C5BD8BB8);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46150, &qword_1EC193AB0, &qword_1C5BD8BC0);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46128, &qword_1EC193AB8, &qword_1C5BD8BC8);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA460D0, &qword_1EC193AC0, &qword_1C5BD8BD0);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46178, &qword_1EC193AC8, &qword_1C5BD8BD8);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46158, &qword_1EC193AD0, &qword_1C5BD8BE0);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46148, &qword_1EC193AD8, &qword_1C5BD8BE8);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46130, &qword_1EC193AE0, &qword_1C5BD8BF0);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46168, &qword_1EC193AE8, &qword_1C5BD8BF8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46160, &qword_1EC193AF0, &qword_1C5BD8C00);
  swift_getWitnessTable();
  sub_1C59378A8(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  swift_getOpaqueTypeMetadata2();
  _s11ContextMenuCMa(255);
  swift_getOpaqueTypeConformance2();
  sub_1C59378A8(&qword_1EDA4B230, _s11ContextMenuCMa, &unk_1C5BDA930);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for NowPlayingViewModel.VolumeControl(255);
  swift_getOpaqueTypeConformance2();
  sub_1C59378A8(&qword_1EDA4A998, type metadata accessor for NowPlayingViewModel.VolumeControl, &protocol conformance descriptor for NowPlayingViewModel.VolumeControl);
  swift_getOpaqueTypeMetadata2();
  _s12PresentationCMa(255);
  swift_getOpaqueTypeConformance2();
  sub_1C59378A8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  swift_getOpaqueTypeMetadata2();
  _s13HostedContentCMa(255);
  swift_getOpaqueTypeConformance2();
  sub_1C59378A8(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AF8, &qword_1C5BD8C08);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B00, &qword_1C5BD8C10);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B08, &qword_1C5BD8C18);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B10, &qword_1C5BD8C20);
  sub_1C5BC8AB4();
  _s7ArtworkC20MiniPlayerAppearanceCMa(255);
  swift_getOpaqueTypeConformance2();
  sub_1C5A126A0(&qword_1EDA46170, &qword_1EC193AF8, &qword_1C5BD8C08);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA460F8, &qword_1EC193B00, &qword_1C5BD8C10);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46140, &qword_1EC193B08, &qword_1C5BD8C18);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46138, &qword_1EC193B10, &qword_1C5BD8C20);
  swift_getWitnessTable();
  sub_1C59378A8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B18, &qword_1C5BD8C28);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC19A4F0, &qword_1C5BD8C30);
  sub_1C5BC8AB4();
  type metadata accessor for WindowProperties(255);
  swift_getOpaqueTypeConformance2();
  sub_1C5A126A0(&qword_1EDA460F0, &qword_1EC193B18, &qword_1C5BD8C28);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46188, &unk_1EC19A4F0, &qword_1C5BD8C30);
  swift_getWitnessTable();
  sub_1C59378A8(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B20, &qword_1C5BD8C38);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B28, &qword_1C5BD8C40);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B30, &qword_1C5BD8C48);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B38, &qword_1C5BD8C50);
  sub_1C5BC8AB4();
  type metadata accessor for NowPlayingViewModel.Metrics(255);
  swift_getOpaqueTypeConformance2();
  sub_1C5A126A0(&qword_1EDA46198, &qword_1EC193B20, &qword_1C5BD8C38);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA460B8, &qword_1EC193B28, &qword_1C5BD8C40);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA460E0, &qword_1EC193B30, &qword_1C5BD8C48);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA460C0, &qword_1EC193B38, &qword_1C5BD8C50);
  swift_getWitnessTable();
  sub_1C59378A8(&qword_1EDA49A38, type metadata accessor for NowPlayingViewModel.Metrics, &protocol conformance descriptor for NowPlayingViewModel.Metrics);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5939EE0();
  return swift_getWitnessTable();
}

unint64_t sub_1C5939EE0()
{
  result = qword_1EDA47950;
  if (!qword_1EDA47950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47950);
  }

  return result;
}

unint64_t sub_1C5939F34()
{
  result = qword_1EDA4B080;
  if (!qword_1EDA4B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B080);
  }

  return result;
}

uint64_t sub_1C5939F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5939FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C593A068(uint64_t a1)
{
  sub_1C5BC8C94();
  if (v1 <= 0x3F)
  {
    sub_1C5AB41DC();
    if (v2 <= 0x3F)
    {
      sub_1C592EF38(319, &qword_1EDA46760, MEMORY[0x1E697DBD0]);
      if (v3 <= 0x3F)
      {
        sub_1C592EF38(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C593A174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C593A1C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C593A21C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 18) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1C593A2B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  _s18ArtworkPlaceholderVMa(255, *a1, v5, a4);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s11ArtworkViewVMa(255, v4, v5, v6);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220, &unk_1C5BEA6E0);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s21FullScreenContentViewVMa(255, v4, v5, v7);
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  type metadata accessor for NowPlayingView.OverlayView(255, v4, v5, v8);
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  type metadata accessor for NowPlayingColorSchemeModifier(255);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996C8, &unk_1C5BF0AC0);
  _s19HeaderDismissButtonVMa(255, v4, v5, v9);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  sub_1C5BC92D4();
  _s21MiniPlayerContentViewVMa(255, v4, v5, v10);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196130, &qword_1C5BEA710);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s31TrackSectionsTouchDetectionViewVMa(255, v4, v5, v11);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7F4();
  _s25BackdropConditionObserverVMa(255, v4, v5, v12);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PPTRunnerModifier(255, v4, v5, v13);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996D0, &qword_1C5BF0AD0);
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46080, &qword_1EC1996D0, &qword_1C5BF0AD0, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1C5939F34();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C593A834(uint64_t a1)
{
  v1 = *(a1 + 24);
  v7 = *a1;
  v6 = *(a1 + 8);
  swift_getAssociatedTypeWitness();
  v8 = v6;
  v9 = v1;
  type metadata accessor for _ViewLookupNode.OutputGroup(255, &v7);
  swift_getTupleTypeMetadata2();
  v2 = sub_1C5BCAB74();
  v3 = sub_1C5BCA944();
  WitnessTable = swift_getWitnessTable();
  v7 = v2;
  *&v8 = v3;
  *(&v8 + 1) = WitnessTable;
  v9 = MEMORY[0x1E6981A58];
  sub_1C5BC93E4();
  sub_1C5BCA584();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C593A9AC()
{
  result = qword_1EDA497D8[0];
  if (!qword_1EDA497D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA497D8);
  }

  return result;
}

unint64_t sub_1C593AA00()
{
  result = qword_1EDA4AE98;
  if (!qword_1EDA4AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4AE98);
  }

  return result;
}

unint64_t sub_1C593AA54()
{
  result = qword_1EDA47CD0;
  if (!qword_1EDA47CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47CD0);
  }

  return result;
}

unint64_t sub_1C593AACC()
{
  result = qword_1EDA46600;
  if (!qword_1EDA46600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191650, &qword_1C5BD2C80);
    sub_1C593AB58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46600);
  }

  return result;
}

unint64_t sub_1C593AB58()
{
  result = qword_1EDA46270;
  if (!qword_1EDA46270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191648, &qword_1C5BD2C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46270);
  }

  return result;
}

uint64_t sub_1C593ABE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C593AC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C593ACBC(uint64_t a1)
{
  sub_1C5B855D4(319);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    sub_1C5BC8C94();
    if (v6 <= 0x3F)
    {
      type metadata accessor for NowPlayingViewControllerProxy(255, v3, v4, v5);
      swift_getWitnessTable();
      sub_1C5BC8C94();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for TapExcludedGeometries(uint64_t a1)
{
  result = qword_1EDA488C8;
  if (!qword_1EDA488C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C593ADF0(uint64_t a1)
{
  result = sub_1C5BC7BB4();
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

uint64_t sub_1C593AEE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  _s11LeadingViewVMa(255, *a1, v5, a4);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s21MiniPlayerContentViewV10CenterViewVMa(255, v4, v5, v6);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0, &unk_1C5BDB370);
  sub_1C5BC8AB4();
  _s12TrailingViewVMa(255, v4, v5, v7);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  _s25ExpandsNowPlayingModifierVMa(255, v4, v5, v8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C593B318();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C593B318()
{
  result = qword_1EDA482E8;
  if (!qword_1EDA482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA482E8);
  }

  return result;
}

uint64_t sub_1C593B398()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EB8, &unk_1C5BEE9C0);
  sub_1C593B410();
  sub_1C593B5AC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C593B410()
{
  result = qword_1EDA464C0;
  if (!qword_1EDA464C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EB8, &unk_1C5BEE9C0);
    sub_1C593B4C8();
    sub_1C5924F54(&qword_1EDA46210, &qword_1EC198EE0, &unk_1C5BEEA30, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464C0);
  }

  return result;
}

unint64_t sub_1C593B4C8()
{
  result = qword_1EDA465D8;
  if (!qword_1EDA465D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198ED0, &qword_1C5BEEA20);
    sub_1C5924F54(&qword_1EDA46240, &qword_1EC198EC8, &qword_1C5BEEA18, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA460D8, &qword_1EC198ED8, &qword_1C5BEEA28, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465D8);
  }

  return result;
}

unint64_t sub_1C593B5AC()
{
  result = qword_1EDA47468[0];
  if (!qword_1EDA47468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA47468);
  }

  return result;
}

uint64_t sub_1C593B600@<X0>(uint64_t *a2@<X8>)
{
  _s7ArtworkCMa();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C593B650@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NowPlayingViewModel.CurrentItem(0);
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C593B690@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

void sub_1C593B6CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v376 = a1;
  v260 = a3;
  swift_getWitnessTable();
  v4 = sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193A98, &qword_1C5BD8BA8);
  v299 = v4;
  v393 = sub_1C5BC8AB4();
  v370 = *(v393 - 8);
  MEMORY[0x1EEE9AC00](v393);
  v358 = &v244 - v5;
  v6 = *(a2 + 16);
  v384 = a2;
  v333 = v6;
  sub_1C5BCB804();
  v389 = sub_1C5BC97B4();
  v394 = sub_1C5BC8AB4();
  v369 = *(v394 - 8);
  MEMORY[0x1EEE9AC00](v394);
  v353 = &v244 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AA0, &qword_1C5BD8BB0);
  v395 = sub_1C5BC8AB4();
  v371 = *(v395 - 8);
  MEMORY[0x1EEE9AC00](v395);
  v354 = &v244 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AA8, &qword_1C5BD8BB8);
  v396 = sub_1C5BC8AB4();
  v372 = *(v396 - 8);
  MEMORY[0x1EEE9AC00](v396);
  v355 = &v244 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AB0, &qword_1C5BD8BC0);
  v397 = sub_1C5BC8AB4();
  v373 = *(v397 - 8);
  MEMORY[0x1EEE9AC00](v397);
  v356 = &v244 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AB8, &qword_1C5BD8BC8);
  v398 = sub_1C5BC8AB4();
  v375 = *(v398 - 8);
  MEMORY[0x1EEE9AC00](v398);
  v357 = &v244 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AC0, &qword_1C5BD8BD0);
  v399 = sub_1C5BC8AB4();
  v377 = *(v399 - 8);
  MEMORY[0x1EEE9AC00](v399);
  v359 = &v244 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AC8, &qword_1C5BD8BD8);
  v390 = sub_1C5BC8AB4();
  v379 = *(v390 - 8);
  MEMORY[0x1EEE9AC00](v390);
  v361 = &v244 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AD0, &qword_1C5BD8BE0);
  v14 = sub_1C5BC8AB4();
  v380 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v363 = &v244 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AD8, &qword_1C5BD8BE8);
  v339 = v14;
  v16 = sub_1C5BC8AB4();
  v382 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v364 = &v244 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AE0, &qword_1C5BD8BF0);
  v345 = v16;
  v18 = sub_1C5BC8AB4();
  v383 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v365 = &v244 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AE8, &qword_1C5BD8BF8);
  v348 = v18;
  v20 = sub_1C5BC8AB4();
  v381 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v366 = &v244 - v21;
  v330 = *(a2 + 24);
  v368 = type metadata accessor for NowPlayingViewControllerProxy(255, v6, v330, v22);
  sub_1C5BCB804();
  sub_1C5BC97B4();
  v349 = v20;
  v23 = sub_1C5BC8AB4();
  v378 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v360 = &v244 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AF0, &qword_1C5BD8C00);
  v352 = v23;
  v392 = sub_1C5BC8AB4();
  v374 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392);
  v362 = &v244 - v25;
  v391 = _s13TrackSectionsCMa(255);
  WitnessTable = swift_getWitnessTable();
  v296 = WitnessTable;
  v27 = sub_1C5A126A0(&qword_1EDA46038, &qword_1EC193A98, &qword_1C5BD8BA8);
  v451 = WitnessTable;
  v452 = v27;
  v28 = swift_getWitnessTable();
  v295 = v28;
  v29 = swift_getWitnessTable();
  v449 = v28;
  v450 = v29;
  v30 = swift_getWitnessTable();
  v298 = v30;
  v31 = sub_1C5A126A0(&qword_1EDA46108, &qword_1EC193AA0, &qword_1C5BD8BB0);
  v447 = v30;
  v448 = v31;
  v32 = swift_getWitnessTable();
  v308 = v32;
  v33 = sub_1C5A126A0(&qword_1EDA46120, &qword_1EC193AA8, &qword_1C5BD8BB8);
  v445 = v32;
  v446 = v33;
  v34 = swift_getWitnessTable();
  v310 = v34;
  v35 = sub_1C5A126A0(&qword_1EDA46150, &qword_1EC193AB0, &qword_1C5BD8BC0);
  v443 = v34;
  v444 = v35;
  v36 = swift_getWitnessTable();
  v314 = v36;
  v37 = sub_1C5A126A0(&qword_1EDA46128, &qword_1EC193AB8, &qword_1C5BD8BC8);
  v441 = v36;
  v442 = v37;
  v38 = swift_getWitnessTable();
  v322 = v38;
  v39 = sub_1C5A126A0(&qword_1EDA460D0, &qword_1EC193AC0, &qword_1C5BD8BD0);
  v439 = v38;
  v440 = v39;
  v40 = swift_getWitnessTable();
  v324 = v40;
  v41 = sub_1C5A126A0(&qword_1EDA46178, &qword_1EC193AC8, &qword_1C5BD8BD8);
  v437 = v40;
  v438 = v41;
  v42 = swift_getWitnessTable();
  v331 = v42;
  v43 = sub_1C5A126A0(&qword_1EDA46158, &qword_1EC193AD0, &qword_1C5BD8BE0);
  v435 = v42;
  v436 = v43;
  v44 = swift_getWitnessTable();
  v338 = v44;
  v45 = sub_1C5A126A0(&qword_1EDA46148, &qword_1EC193AD8, &qword_1C5BD8BE8);
  v433 = v44;
  v434 = v45;
  v46 = swift_getWitnessTable();
  v342 = v46;
  v47 = sub_1C5A126A0(&qword_1EDA46130, &qword_1EC193AE0, &qword_1C5BD8BF0);
  v431 = v46;
  v432 = v47;
  v48 = swift_getWitnessTable();
  v346 = v48;
  v49 = sub_1C5A126A0(&qword_1EDA46168, &qword_1EC193AE8, &qword_1C5BD8BF8);
  v429 = v48;
  v430 = v49;
  v50 = swift_getWitnessTable();
  v347 = v50;
  v51 = swift_getWitnessTable();
  v427 = v50;
  v428 = v51;
  v52 = swift_getWitnessTable();
  v350 = v52;
  v53 = sub_1C5A126A0(&qword_1EDA46160, &qword_1EC193AF0, &qword_1C5BD8C00);
  v425 = v52;
  v426 = v53;
  v54 = v392;
  v55 = swift_getWitnessTable();
  v56 = sub_1C59378A8(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  *&v402 = v54;
  v57 = v54;
  v58 = v391;
  *(&v402 + 1) = v391;
  v403[0] = v55;
  v59 = v55;
  v341 = v55;
  v403[1] = v56;
  v60 = v56;
  v340 = v56;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v351 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v343 = &v244 - v62;
  v63 = _s11ContextMenuCMa(255);
  *&v402 = v57;
  *(&v402 + 1) = v58;
  v403[0] = v59;
  v403[1] = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = sub_1C59378A8(&qword_1EDA4B230, _s11ContextMenuCMa, &unk_1C5BDA930);
  v326 = OpaqueTypeMetadata2;
  *&v402 = OpaqueTypeMetadata2;
  v325 = v63;
  *(&v402 + 1) = v63;
  v403[0] = OpaqueTypeConformance2;
  v66 = OpaqueTypeConformance2;
  v328 = OpaqueTypeConformance2;
  v403[1] = v65;
  v67 = v65;
  v327 = v65;
  v68 = swift_getOpaqueTypeMetadata2();
  v344 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v329 = &v244 - v69;
  v70 = type metadata accessor for NowPlayingViewModel.VolumeControl(255);
  *&v402 = OpaqueTypeMetadata2;
  *(&v402 + 1) = v63;
  v403[0] = v66;
  v403[1] = v67;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = sub_1C59378A8(&qword_1EDA4A998, type metadata accessor for NowPlayingViewModel.VolumeControl, &protocol conformance descriptor for NowPlayingViewModel.VolumeControl);
  v315 = v68;
  *&v402 = v68;
  v312 = v70;
  *(&v402 + 1) = v70;
  v403[0] = v71;
  v73 = v71;
  v317 = v71;
  v403[1] = v72;
  v74 = v72;
  v316 = v72;
  v75 = swift_getOpaqueTypeMetadata2();
  v332 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v318 = &v244 - v76;
  v77 = _s12PresentationCMa(255);
  *&v402 = v68;
  *(&v402 + 1) = v70;
  v403[0] = v73;
  v403[1] = v74;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_1C59378A8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  v304 = v75;
  *&v402 = v75;
  v301 = v77;
  *(&v402 + 1) = v77;
  v403[0] = v78;
  v80 = v78;
  v306 = v79;
  v307 = v78;
  v403[1] = v79;
  v81 = v79;
  v82 = swift_getOpaqueTypeMetadata2();
  v389 = v82;
  v321 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v309 = &v244 - v83;
  v84 = _s13HostedContentCMa(255);
  v388 = v84;
  *&v402 = v75;
  *(&v402 + 1) = v77;
  v403[0] = v80;
  v403[1] = v81;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = sub_1C59378A8(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  *&v402 = v82;
  *(&v402 + 1) = v84;
  v403[0] = v85;
  v87 = v85;
  v275 = v86;
  v276 = v85;
  v403[1] = v86;
  v311 = swift_getOpaqueTypeMetadata2();
  v323 = *(v311 - 8);
  MEMORY[0x1EEE9AC00](v311);
  v293 = &v244 - v88;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AF8, &qword_1C5BD8C08);
  v89 = sub_1C5BC8AB4();
  v335 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v302 = &v244 - v90;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B00, &qword_1C5BD8C10);
  v287 = v89;
  v91 = sub_1C5BC8AB4();
  v336 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v313 = &v244 - v92;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B08, &qword_1C5BD8C18);
  v291 = v91;
  v93 = sub_1C5BC8AB4();
  v337 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v319 = &v244 - v94;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B10, &qword_1C5BD8C20);
  v297 = v93;
  v95 = sub_1C5BC8AB4();
  v334 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v320 = &v244 - v96;
  v97 = _s7ArtworkC20MiniPlayerAppearanceCMa(255);
  *&v402 = v389;
  *(&v402 + 1) = v388;
  v403[0] = v87;
  v403[1] = v86;
  v98 = swift_getOpaqueTypeConformance2();
  v281 = v98;
  v99 = sub_1C5A126A0(&qword_1EDA46170, &qword_1EC193AF8, &qword_1C5BD8C08);
  v423 = v98;
  v424 = v99;
  v100 = swift_getWitnessTable();
  v285 = v100;
  v101 = sub_1C5A126A0(&qword_1EDA460F8, &qword_1EC193B00, &qword_1C5BD8C10);
  v421 = v100;
  v422 = v101;
  v102 = swift_getWitnessTable();
  v290 = v102;
  v103 = sub_1C5A126A0(&qword_1EDA46140, &qword_1EC193B08, &qword_1C5BD8C18);
  v419 = v102;
  v420 = v103;
  v104 = swift_getWitnessTable();
  v294 = v104;
  v105 = sub_1C5A126A0(&qword_1EDA46138, &qword_1EC193B10, &qword_1C5BD8C20);
  v417 = v104;
  v418 = v105;
  v106 = swift_getWitnessTable();
  v107 = sub_1C59378A8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  *&v402 = v95;
  v108 = v95;
  v277 = v97;
  v278 = v95;
  v109 = v97;
  *(&v402 + 1) = v97;
  v403[0] = v106;
  v279 = v107;
  v280 = v106;
  v403[1] = v107;
  v110 = v107;
  v292 = swift_getOpaqueTypeMetadata2();
  v303 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v286 = &v244 - v111;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B18, &qword_1C5BD8C28);
  v112 = sub_1C5BC8AB4();
  v305 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v288 = &v244 - v113;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC19A4F0, &qword_1C5BD8C30);
  v284 = v112;
  v114 = sub_1C5BC8AB4();
  v300 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v289 = &v244 - v115;
  v116 = type metadata accessor for WindowProperties(255);
  v386 = v116;
  *&v402 = v108;
  *(&v402 + 1) = v109;
  v403[0] = v106;
  v403[1] = v110;
  v117 = swift_getOpaqueTypeConformance2();
  v282 = v117;
  v118 = sub_1C5A126A0(&qword_1EDA460F0, &qword_1EC193B18, &qword_1C5BD8C28);
  v415 = v117;
  v416 = v118;
  v119 = swift_getWitnessTable();
  v283 = v119;
  v120 = sub_1C5A126A0(&qword_1EDA46188, &unk_1EC19A4F0, &qword_1C5BD8C30);
  v413 = v119;
  v414 = v120;
  v387 = v114;
  v121 = swift_getWitnessTable();
  v385 = sub_1C59378A8(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  *&v402 = v114;
  *(&v402 + 1) = v116;
  v403[0] = v121;
  v274 = v121;
  v403[1] = v385;
  v122 = swift_getOpaqueTypeMetadata2();
  v264 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v273 = &v244 - v123;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B20, &qword_1C5BD8C38);
  v265 = v122;
  v124 = sub_1C5BC8AB4();
  v267 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v266 = &v244 - v125;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B28, &qword_1C5BD8C40);
  v126 = sub_1C5BC8AB4();
  v271 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v269 = &v244 - v127;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B30, &qword_1C5BD8C48);
  v128 = sub_1C5BC8AB4();
  v257 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v270 = &v244 - v129;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B38, &qword_1C5BD8C50);
  v130 = sub_1C5BC8AB4();
  v256 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v255 = &v244 - v131;
  v132 = type metadata accessor for NowPlayingViewModel.Metrics(255);
  *&v402 = v387;
  *(&v402 + 1) = v386;
  v403[0] = v121;
  v403[1] = v385;
  v133 = swift_getOpaqueTypeConformance2();
  v134 = sub_1C5A126A0(&qword_1EDA46198, &qword_1EC193B20, &qword_1C5BD8C38);
  v261 = v133;
  v411 = v133;
  v412 = v134;
  v268 = v124;
  v135 = swift_getWitnessTable();
  v136 = sub_1C5A126A0(&qword_1EDA460B8, &qword_1EC193B28, &qword_1C5BD8C40);
  v262 = v135;
  v409 = v135;
  v410 = v136;
  v272 = v126;
  v137 = swift_getWitnessTable();
  v138 = sub_1C5A126A0(&qword_1EDA460E0, &qword_1EC193B30, &qword_1C5BD8C48);
  v263 = v137;
  v407 = v137;
  v408 = v138;
  v259 = v128;
  v139 = swift_getWitnessTable();
  v140 = sub_1C5A126A0(&qword_1EDA460C0, &qword_1EC193B38, &qword_1C5BD8C50);
  v244 = v139;
  v405 = v139;
  v406 = v140;
  v141 = swift_getWitnessTable();
  v142 = sub_1C59378A8(&qword_1EDA49A38, type metadata accessor for NowPlayingViewModel.Metrics, &protocol conformance descriptor for NowPlayingViewModel.Metrics);
  v258 = v130;
  *&v402 = v130;
  v254 = v132;
  *(&v402 + 1) = v132;
  v251 = v141;
  v403[0] = v141;
  v246 = v142;
  v403[1] = v142;
  v143 = swift_getOpaqueTypeMetadata2();
  v248 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v245 = &v244 - v144;
  v250 = v145;
  v146 = sub_1C5BC8AB4();
  v252 = *(v146 - 8);
  v253 = v146;
  MEMORY[0x1EEE9AC00](v146);
  v247 = &v244 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v149 = MEMORY[0x1EEE9AC00](v148).n128_u64[0];
  v249 = &v244 - v150;
  swift_getKeyPath(byte_1C5BD8C58, v149);
  v151 = v367;
  swift_getKeyPath("xb\\&");
  swift_getKeyPath("Xb\\&");
  sub_1C5BC8034();

  v152 = v358;
  sub_1C5BC9DF4();

  sub_1C5A126F4(&v402);
  v153 = v353;
  v154 = v393;
  sub_1C5BC9FF4();
  (*(v370 + 8))(v152, v154);
  type metadata accessor for NowPlayingRouteObserver(0);
  sub_1C59378A8(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver, &unk_1C5BEA348);
  v155 = v354;
  v156 = v394;
  sub_1C5BC9FF4();
  (*(v369 + 8))(v153, v156);
  v157 = *(v151 + 16);
  type metadata accessor for NowPlayingViewModel();
  sub_1C59378A8(qword_1EDA49710, type metadata accessor for NowPlayingViewModel, &protocol conformance descriptor for NowPlayingViewModel);
  v158 = v355;
  v159 = v395;
  sub_1C5BC9FF4();
  (*(v371 + 8))(v155, v159);
  _s5DebugCMa(0);
  sub_1C59378A8(&qword_1EDA4A208, _s5DebugCMa, &unk_1C5BE6138);
  v160 = v356;
  v161 = v396;
  sub_1C5BC9FF4();
  (*(v372 + 8))(v158, v161);
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  sub_1C59378A8(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
  v162 = v357;
  v163 = v397;
  sub_1C5BC9FF4();
  (*(v373 + 8))(v160, v163);
  type metadata accessor for Geometry(0);
  sub_1C59378A8(&qword_1EDA46EB8, type metadata accessor for Geometry, &unk_1C5BE9818);
  v164 = v359;
  v165 = v398;
  sub_1C5BC9FF4();
  (*(v375 + 8))(v162, v165);
  _s11TimeControlCMa();
  sub_1C59378A8(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
  v166 = v361;
  v167 = v399;
  sub_1C5BC9FF4();
  (*(v377 + 8))(v164, v167);
  _s17TransportControlsCMa();
  sub_1C59378A8(&qword_1EDA4A620, _s17TransportControlsCMa, &unk_1C5BDFD58);
  v168 = v363;
  v169 = v390;
  sub_1C5BC9FF4();
  (*(v379 + 8))(v166, v169);
  _s5QueueCMa();
  sub_1C59378A8(qword_1EDA4A0C0, _s5QueueCMa, &unk_1C5BE4338);
  v170 = v364;
  v171 = v339;
  sub_1C5BC9FF4();
  (*(v380 + 8))(v168, v171);
  _s8BackdropCMa(0);
  sub_1C59378A8(&qword_1EDA49930, _s8BackdropCMa, &unk_1C5BF1940);
  v172 = v365;
  v173 = v345;
  sub_1C5BC9FF4();
  (*(v382 + 8))(v170, v173);
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  sub_1C59378A8(qword_1EDA4A8C8, type metadata accessor for NowPlayingViewModel.PrimaryMetadata, &protocol conformance descriptor for NowPlayingViewModel.PrimaryMetadata);
  v174 = v366;
  v175 = v348;
  sub_1C5BC9FF4();
  (*(v383 + 8))(v172, v175);
  v176 = v151;
  swift_getWitnessTable();
  v177 = v360;
  v178 = v349;
  sub_1C5BC9FF4();
  (*(v381 + 8))(v174, v178);
  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  sub_1C59378A8(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
  v179 = v362;
  v180 = v352;
  sub_1C5BC9FF4();
  (*(v378 + 8))(v177, v180);
  swift_checkMetadataState();
  v181 = v343;
  v182 = v392;
  sub_1C5BC9DE4();
  (*(v374 + 8))(v179, v182);
  swift_checkMetadataState();
  v183 = v329;
  v184 = v326;
  sub_1C5BC9DE4();
  (*(v351 + 8))(v181, v184);
  swift_checkMetadataState();
  v185 = v318;
  v186 = v315;
  sub_1C5BC9DE4();
  (*(v344 + 8))(v183, v186);
  v399 = v157;
  swift_checkMetadataState();
  v187 = v309;
  v188 = v304;
  sub_1C5BC9DE4();
  (*(v332 + 8))(v185, v188);
  v189 = *(v151 + 40);
  swift_checkMetadataState();
  v190 = v293;
  v191 = v389;
  sub_1C5BC9DE4();
  (*(v321 + 8))(v187, v191);
  swift_getKeyPath("8b\\&");
  swift_getKeyPath(byte_1C5BD8CF8);
  *&v402 = v189;
  sub_1C5BC7B74();

  v192 = v189[9];
  v193 = v189[10];
  v194 = v189[11];
  *&v402 = v189[8];
  *(&v402 + 1) = v192;
  v403[0] = v193;
  v403[1] = v194;
  sub_1C593E7D8(v402, v192, v193, v194);
  v195 = v302;
  v196 = v311;
  sub_1C5BC9DF4();

  sub_1C593E820(v402, *(&v402 + 1), v403[0], v403[1]);
  (*(v323 + 8))(v190, v196);
  swift_getKeyPath(byte_1C5BD8D20);
  swift_getKeyPath(byte_1C5BD8D48);
  *&v402 = v189;
  sub_1C5BC7B74();

  v197 = v189[6];
  *&v402 = v189[5];
  *(&v402 + 1) = v197;

  v198 = v313;
  v199 = v287;
  v200 = v195;
  v201 = v273;
  sub_1C5BC9DF4();

  (*(v335 + 8))(v200, v199);
  v202 = *(v176 + 64);
  _s7ArtworkC17BackgroundArtworkCMa(0);
  sub_1C59378A8(&qword_1EDA49EF0, _s7ArtworkC17BackgroundArtworkCMa, &unk_1C5BDD514);
  v203 = v319;
  v204 = v291;
  sub_1C5BC9FF4();
  (*(v336 + 8))(v198, v204);
  _s14DefaultArtworkCMa();
  sub_1C59378A8(qword_1EDA49E00, _s14DefaultArtworkCMa, &unk_1C5BDEF78);
  v205 = v320;
  v206 = v297;
  sub_1C5BC9FF4();
  (*(v337 + 8))(v203, v206);
  swift_checkMetadataState();
  v207 = v286;
  v208 = v278;
  sub_1C5BC9DE4();
  (*(v334 + 8))(v205, v208);
  swift_getKeyPath(byte_1C5BD8D70);
  swift_beginAccess();
  sub_1C59318C8(v202 + 64, &v402);
  v209 = v288;
  v210 = v292;
  sub_1C5BC9DF4();

  v211 = __swift_destroy_boxed_opaque_existential_0(&v402);
  (*(v303 + 8))(v207, v210, v211);
  swift_getKeyPath(byte_1C5BD8D98);
  sub_1C593E868(&v402);
  v212 = v289;
  v213 = v284;
  sub_1C5BC9DF4();

  (*(v305 + 8))(v209, v213);
  v214 = *(v176 + 32);
  swift_checkMetadataState();
  v215 = v387;
  sub_1C5BC9DE4();
  (*(v300 + 8))(v212, v215);
  swift_getKeyPath("xa\\&");
  swift_getKeyPath("@a\\&");
  *&v402 = v214;
  sub_1C5BC7B74();

  v216 = *(v214 + 104);
  if ((v216 & 0xFF0000) == 0x40000)
  {
    __break(1u);
    goto LABEL_10;
  }

  v402 = *(v214 + 88);
  v403[0] = v216;
  v217 = *(v214 + 128);
  *&v403[1] = *(v214 + 112);
  *&v403[3] = v217;
  *&v403[5] = *(v214 + 144);
  v404 = *(v214 + 160);
  v218 = v265;
  v219 = v266;
  sub_1C5BC9DF4();

  (*(v264 + 8))(v201, v218);
  swift_getKeyPath(" a\\&");
  swift_getKeyPath(byte_1C5BD8E68);
  *&v402 = v214;
  sub_1C5BC7B74();

  v220 = *(v214 + 32);
  v402 = *(v214 + 16);
  *v403 = v220;
  v221 = v268;
  v222 = v269;
  sub_1C5BC9DF4();

  (*(v267 + 8))(v219, v221);
  swift_getKeyPath(byte_1C5BD8E90);
  swift_getKeyPath(byte_1C5BD8ED0);
  *&v402 = v214;
  sub_1C5BC7B74();

  LOBYTE(v402) = *(v214 + 49);
  v223 = v270;
  v224 = v272;
  sub_1C5BC9DF4();

  (*(v271 + 8))(v222, v224);
  swift_getKeyPath("@a\\&");
  *&v402 = v214;
  sub_1C5BC7B74();

  if (*(v214 + 106) << 8 == 1024)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(v214 + 104))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v225 = *(v214 + 96);
  v226 = 0.0;
  if (v225 != 0.0)
  {
    if ((*&v225 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v227 = fabs(v225), v227 > fmax(v227 * 2.22044605e-16, COERCE_DOUBLE(1))))
    {
      v226 = *(v214 + 88) / v225;
    }
  }

  *&v402 = v226;
  BYTE8(v402) = 0;
  v228 = v255;
  v229 = v259;
  sub_1C5BC9DF4();

  (*(v257 + 8))(v223, v229);
  v230 = swift_checkMetadataState();
  v232 = v245;
  v231 = v246;
  v233 = v258;
  v234 = v251;
  sub_1C5BC9DE4();
  (*(v256 + 8))(v228, v233);
  *&v402 = v233;
  *(&v402 + 1) = v230;
  v403[0] = v234;
  v403[1] = v231;
  v235 = swift_getOpaqueTypeConformance2();
  v236 = v247;
  v237 = v250;
  v238 = sub_1C593ECC4(v250, v235);
  (*(v248 + 8))(v232, v237, v238);
  v239 = sub_1C5939EE0();
  v400 = v235;
  v401 = v239;
  v240 = v253;
  v241 = swift_getWitnessTable();
  v242 = v249;
  sub_1C593EDC0(v236, v240, v241);
  v243 = *(v252 + 8);
  v243(v236, v240);
  sub_1C593EDC0(v242, v240, v241);
  v243(v242, v240);
}