void sub_18BA1E7D8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a1 traitCollection];
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
    v8 = v6;

    sub_18BA1E284();
  }
}

double sub_18BA1E86C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  sub_18BC1E3F8();
  v9 = sub_18BB8B1C4(a1, a2, a3);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    v12 = [a1 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6100, &unk_18BC49C40);
    inited = swift_initStackObject();
    v14 = MEMORY[0x1E69DB648];
    *(inited + 16) = xmmword_18BC3E410;
    v15 = *v14;
    *(inited + 32) = v15;
    *(inited + 40) = v12;
    v16 = v15;
    v17 = v12;
    sub_18BA64BEC(inited);
    swift_setDeallocating();
    sub_18BA1EBFC(inited + 32);
    v18 = sub_18BC20B98();
    type metadata accessor for Key(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6110, &qword_18BC49C50);
    sub_18BA1EC64();
    v19 = sub_18BC20998();

    v20 = CTLineCreateWithString();

    BoundsWithOptions = CTLineGetBoundsWithOptions(v20, 0);
    Width = CGRectGetWidth(BoundsWithOptions);
    v11 = _SFCeilingFloatToPixels(Width);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    v23.n128_f64[0] = v11;
    sub_18BAA71D8(a1, a2, a3, isUniquelyReferenced_nonNull_native, v23);
    *(v4 + 16) = v25;
    swift_endAccess();
    return v11;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  return v11;
}

uint64_t sub_18BA1EA98()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18BA1EB0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_18BA1EB54(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_18BA1EBA8()
{
  result = qword_1EA9D60F8;
  if (!qword_1EA9D60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D60F8);
  }

  return result;
}

uint64_t sub_18BA1EBFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6108, &unk_18BC45100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18BA1EC64()
{
  result = qword_1EA9D3C40;
  if (!qword_1EA9D3C40)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3C40);
  }

  return result;
}

uint64_t sub_18BA1ECBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6120, &qword_18BC45118);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_18BA1EE14(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[qword_1EA9D6138] = 0;
  swift_unknownObjectUnownedInit();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = sub_18B8639C4();
  [a1 addInteraction_];

  return v5;
}

void sub_18BA1EEBC(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = *(a3 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6280, &unk_18BC451C0);
  v12 = v10(Strong, a1, a5, v11, ObjectType, a3);

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_10:
    *a6 = v12;
    return;
  }

  v13 = sub_18BC219A8();
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v13 >= 1)
  {
    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x18CFFD010](v14, v12);
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      [v15 safari:sub_18BC21FB8() setFluidCollectionViewSourceItem:?];
      swift_unknownObjectRelease();
      v17 = swift_unknownObjectUnownedLoadStrong();
      [v16 safari:v17 setFluidCollectionViewSourceView:?];
    }

    while (v13 != v14);
    goto LABEL_10;
  }

  __break(1u);
}

id sub_18BA1F090(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_18BA1F944(a4);

  swift_unknownObjectRelease();
  sub_18BA209E0();
  v8 = sub_18BC20D88();

  return v8;
}

uint64_t sub_18BA1F124(id *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v57 = a2;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v49 - v12;
  v58 = *(v11 - 8);
  v14 = v58;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v24 = &v49 - v23;
  v25 = [*a1 safari_fluidCollectionViewSourceItem];
  v53 = v17;
  v62 = v11;
  if (v25)
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
    sub_18B7B1AD4(&v60, v61);
  }

  else
  {
    memset(v61, 0, sizeof(v61));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5220, &qword_18BC3FCB0);
  v26 = swift_dynamicCast();
  v27 = a4;
  v28 = *(v9 + 56);
  v28(v24, v26 ^ 1u, 1, v27);
  (*(v9 + 16))(v20, v57, v27);
  v28(v20, 0, 1, v27);
  v29 = v9;
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = v14;
  v32 = *(v14 + 16);
  v57 = v24;
  v33 = v24;
  v34 = v62;
  v32(v13, v33, v62);
  v56 = v30;
  v32(&v13[v30], v20, v34);
  v55 = v29;
  v35 = *(v29 + 48);
  if (v35(v13, 1, v27) == 1)
  {
    v36 = *(v14 + 8);
    v37 = v62;
    v36(v20, v62);
    v38 = v13;
    if (v35(&v13[v56], 1, v27) == 1)
    {
      v36(v13, v37);
      v39 = 1;
LABEL_11:
      v42 = v57;
      goto LABEL_12;
    }
  }

  else
  {
    v50 = v20;
    v40 = v53;
    v37 = v62;
    v32(v53, v13, v62);
    v41 = v56;
    v38 = v13;
    if (v35(&v13[v56], 1, v27) != 1)
    {
      v43 = v55;
      v44 = &v13[v41];
      v45 = v51;
      (*(v55 + 32))(v51, v44, v27);
      v46 = v40;
      v39 = sub_18BC20AE8();
      v47 = *(v43 + 8);
      v47(v45, v27);
      v36 = *(v31 + 8);
      v36(v50, v37);
      v47(v46, v27);
      v36(v13, v37);
      goto LABEL_11;
    }

    v36 = *(v31 + 8);
    v36(v50, v37);
    (*(v55 + 8))(v40, v27);
  }

  v42 = v57;
  (*(v54 + 8))(v38, TupleTypeMetadata2);
  v39 = 0;
LABEL_12:
  v36(v42, v37);
  return v39 & 1;
}

id sub_18BA1F66C(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  swift_unknownObjectRetain();
  v11 = a1;
  sub_18BA1FE10(a6, a2, a3);

  swift_unknownObjectRelease();
  sub_18BA209E0();
  v12 = sub_18BC20D88();

  return v12;
}

id sub_18BA1F720(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = a1;
  v10 = sub_18BA20288(v8);

  swift_unknownObjectRelease();

  return v10;
}

void sub_18BA1F7AC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a1;
  sub_18BA2069C(a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_18BA1F8E0(uint64_t a1)
{
  swift_unknownObjectUnownedDestroy();
  v2 = *(a1 + qword_1EA9D6138);
}

uint64_t sub_18BA1F944(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v37 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *((v5 & v4) + 0x58);
  v7 = sub_18BC21848();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v13;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = sub_18BB4719C();
  v36 = v16;

  v39 = v15;
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = swift_unknownObjectUnownedLoadStrong();
  [a1 locationInView_];
  v19 = v18;
  v21 = v20;

  v22 = swift_unknownObjectUnownedLoadStrong();
  sub_18BB503F4(v10, v19, v21);

  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
LABEL_6:
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v35 = a1;
  v23 = v38;
  (*(v11 + 32))(v38, v10, v6);
  if ((*(*(v37 + 112) + 24))(v6, *(v37 + 112)))
  {
    (*(v11 + 8))(v23, v6);
    goto LABEL_6;
  }

  v25 = swift_unknownObjectUnownedLoadStrong();
  sub_18BB65A78();
  sub_18BC1E3F8();

  LOBYTE(v25) = sub_18BC210B8();

  if (v25)
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    v27 = sub_18BB65A78();
    sub_18BC1E3F8();

    v40 = v27;
    sub_18BC210E8();
    swift_getWitnessTable();
    v28 = sub_18BC20E98();
  }

  else
  {
    sub_18B85EDB0(v6, v6);
    swift_allocObject();
    v29 = sub_18BC20DB8();
    (*(v11 + 16))(v30, v23, v6);
    v28 = sub_18B82D294(v29, v6);
  }

  v38 = &v34;
  v40 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v35;
  v32 = v36;
  *(&v34 - 4) = v39;
  *(&v34 - 3) = v32;
  *(&v34 - 2) = v2;
  *(&v34 - 1) = v31;
  sub_18BC20E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8EF0, &qword_18BC4C200);
  swift_getWitnessTable();
  sub_18BA20A78();
  v33 = sub_18BC20D38();
  swift_unknownObjectRelease();
  (*(v11 + 8))(v23, v6);

  return v33;
}

void sub_18BA1FE10(void *a1, double a2, double a3)
{
  v41 = a1;
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  ObjectType = *MEMORY[0x1E69E7D40] & *v3;
  v8 = *((v7 & v6) + 0x58);
  v9 = sub_18BC21848();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v18 = sub_18BB4719C();
  v39 = v19;

  v42 = v18;
  if (v18)
  {
    v20 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB503F4(v12, a2, a3);

    if ((*(v13 + 48))(v12, 1, v8) == 1)
    {
      (*(v10 + 8))(v12, v9);
      swift_unknownObjectRelease();
      return;
    }

    (*(v13 + 32))(v16, v12, v8);
    v21 = v41;
    v22 = [v41 items];
    sub_18BA209E0();
    v23 = sub_18BC20D98();

    MEMORY[0x1EEE9AC00](v24);
    v25 = ObjectType;
    *(&v38 - 8) = *(ObjectType + 80);
    *(&v38 - 7) = v8;
    v26 = *(v25 + 112);
    *(&v38 - 3) = *(v25 + 96);
    *(&v38 - 2) = v26;
    *(&v38 - 2) = v16;
    LOBYTE(v22) = sub_18B9B8B10(sub_18BA20A2C, (&v38 - 10), v23);

    if (v22)
    {
      swift_unknownObjectRelease();
      (*(v13 + 8))(v16, v8);
      return;
    }

    v38 = v13;
    ObjectType = swift_getObjectType();
    v27 = swift_unknownObjectUnownedLoadStrong();
    v28 = v39;
    v29 = v21;
    v30 = *(v39 + 16);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6280, &unk_18BC451C0);
    v32 = v30(v27, v16, v29, v31, ObjectType, v28);

    if (v32 >> 62)
    {
      v33 = sub_18BC219A8();
      if (!v33)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_16;
      }
    }

    if (v33 < 1)
    {
      __break(1u);
      return;
    }

    v34 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x18CFFD010](v34, v32);
      }

      else
      {
        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      ++v34;
      [v35 safari:sub_18BC21FB8() setFluidCollectionViewSourceItem:?];
      swift_unknownObjectRelease();
      v37 = swift_unknownObjectUnownedLoadStrong();
      [v36 safari:v37 setFluidCollectionViewSourceView:?];
    }

    while (v33 != v34);
LABEL_16:
    swift_unknownObjectRelease();
    (*(v38 + 8))(v16, v8);
  }
}

id sub_18BA20288(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = sub_18BC21848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - v6;
  v8 = *(v3 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = v32 - v11;
  if ([a1 safari_fluidCollectionViewSourceItem])
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
    sub_18B7B1AD4(v32, v33);
  }

  else
  {
    memset(v33, 0, sizeof(v33));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5220, &qword_18BC3FCB0);
  v13 = swift_dynamicCast();
  v14 = *(v8 + 56);
  if ((v13 & 1) == 0)
  {
    v14(v7, 1, 1, v3);
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v14(v7, 0, 1, v3);
  (*(v8 + 32))(v12, v7, v3);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v16 = sub_18BB4719C();
  v18 = v17;

  if (!v16)
  {
    (*(v8 + 8))(v12, v3);
    return 0;
  }

  ObjectType = swift_getObjectType();
  v20 = swift_unknownObjectUnownedLoadStrong();
  v21 = (*(v18 + 24))(v20, v12, ObjectType, v18);

  if (v21)
  {
    (*(v8 + 8))(v12, v3);
    swift_unknownObjectRelease();
    return v21;
  }

  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = sub_18BB50984(v12);

  if (!v24)
  {
    (*(v8 + 8))(v12, v3);
    swift_unknownObjectRelease();
    return 0;
  }

  v25 = swift_unknownObjectUnownedLoadStrong();
  v26 = (*(v18 + 32))(v25, v12, ObjectType, v18);

  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
  }

  v28 = *&v24[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView];
  v29 = objc_allocWithZone(MEMORY[0x1E69DD068]);
  v30 = v26;
  v31 = [v29 initWithView:v28 parameters:v27];

  swift_unknownObjectRelease();
  (*(v8 + 8))(v12, v3);
  return v31;
}

void sub_18BA2069C(uint64_t a1, void *a2)
{
  v26 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v28 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *((v5 & v4) + 0x58);
  v7 = sub_18BC21848();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = sub_18BB4719C();
  v25 = v16;

  if (v15)
  {
    v17 = swift_unknownObjectUnownedLoadStrong();
    [a2 locationInView_];
    v19 = v18;
    v21 = v20;

    v22 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB503F4(v9, v19, v21);

    if ((*(v10 + 48))(v9, 1, v6) == 1)
    {
      swift_unknownObjectRelease();
      (*(v27 + 8))(v9, v7);
    }

    else
    {
      (*(v10 + 32))(v13, v9, v6);
      if ((*(*(v28 + 112) + 24))(v6))
      {
        (*(v10 + 8))(v13, v6);
        swift_unknownObjectRelease();
      }

      else
      {
        ObjectType = swift_getObjectType();
        v24 = swift_unknownObjectUnownedLoadStrong();
        (*(v25 + 40))(v24, v13, v26, ObjectType);
        swift_unknownObjectRelease();

        (*(v10 + 8))(v13, v6);
      }
    }
  }
}

unint64_t sub_18BA209E0()
{
  result = qword_1EA9D7CE0;
  if (!qword_1EA9D7CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D7CE0);
  }

  return result;
}

unint64_t sub_18BA20A78()
{
  result = qword_1EA9D6290;
  if (!qword_1EA9D6290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D8EF0, &qword_18BC4C200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6290);
  }

  return result;
}

id SFCapsulePageLayoutBottomSquished.__allocating_init(container:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  return v3;
}

id SFCapsulePageLayoutBottomSquished.init(container:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SFCapsulePageLayoutBottomSquished();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutBottomSquished.__allocating_init(container:baseLayout:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

id SFCapsulePageLayoutBottomSquished.init(container:baseLayout:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFCapsulePageLayoutBottomSquished();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t (*sub_18BA20F50(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari33SFCapsulePageLayoutBottomSquished_baseLayout;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A9824;
}

uint64_t (*sub_18BA2100C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari33SFCapsulePageLayoutBottomSquished_container;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9AAC70;
}

double sub_18BA21124()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  [Strong pageWidth];
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_18BA21280()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = [Strong supplementaryIdentifiers];
  swift_unknownObjectRelease();
  v2 = sub_18BC20D98();

  return v2;
}

char *sub_18BA21318(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 lockdownStatusBar];
    if (v4)
    {

      v5 = sub_18BA21F18(a1);
    }

    else
    {
      v5 = sub_18BA214D0(a1);
    }

    v6 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v7 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v8 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v9 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v20.origin.x = v6;
    v20.origin.y = v7;
    v20.size.width = v8;
    v20.size.height = v9;
    CGRectGetMinY(v20);
    v10 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    [v3 bounds];
    CGRectGetWidth(v21);
    [v3 bounds];
    CGRectGetHeight(v22);
    v11 = _SFRoundRectToPixels(0.0);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = &v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v18 = v11;
    *(v18 + 1) = v13;
    *(v18 + 2) = v15;
    *(v18 + 3) = v17;
    return v10;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

_BYTE *sub_18BA214D0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong bounds];
    v31 = v4;
    sub_18BA217C8(a1);
    v32 = v5;
    v7 = v6;
    v8 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    CACornerRadiiMake(v33, v7 * 0.5, v7 * 0.5, v7 * 0.5, v7 * 0.5);
    v10 = v33[0];
    v9 = v33[1];
    v12 = v33[2];
    v11 = v33[3];
    v14 = v33[4];
    v13 = v33[5];
    v15 = v33[6];
    v16 = v33[7];
    v17 = &v8[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
    swift_beginAccess();
    *v17 = v10;
    v17[1] = v9;
    v17[2] = v12;
    v17[3] = v11;
    v17[4] = v14;
    v17[5] = v13;
    v17[6] = v15;
    v17[7] = v16;
    v18 = 0;
    if (v15 == v16 && v15 == v10 && v16 == v9)
    {
      v19 = v15 == v14;
      if (v16 != v13)
      {
        v19 = 0;
      }

      if (v15 != v12)
      {
        v19 = 0;
      }

      v18 = v16 == v11 && v19;
    }

    v20 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
    swift_beginAccess();
    v8[v20] = v18;
    [v3 keyboardHeight];
    v21 = _SFRoundRectToPixels((v31 - v32) * 0.5);
    v22 = &v8[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v22 = v21;
    *(v22 + 1) = v23;
    *(v22 + 2) = v24;
    *(v22 + 3) = v25;
    v26 = sub_18BC20BD8();
    v28 = v27;
    swift_unknownObjectRelease();
    v29 = &v8[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier];
    swift_beginAccess();
    *v29 = v26;
    v29[1] = v28;

    return v8;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id sub_18BA21758(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a4(a3);
  swift_unknownObjectRelease();

  return v8;
}

void sub_18BA217C8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  v5 = [v4 capsuleInfoForPage_];
  [a1 preferredCapsuleSizeForState_];
  v7 = v6;
  v9 = fmax(v8, 32.0);
  CGRectGetWidth(*&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]);
  [v3 minimizedContentScale];
  if (v7 <= 0.0)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    [v3 bounds];
    v10 = CGRectGetHeight(v19) - v9;
    [v3 bounds];
    [v3 concentricEdgeInsetsForEdge:4 bounds:0.0 minimumEdgeInsets:{v10, CGRectGetWidth(v20), v9, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v12 = v11;
    v14 = v13;
    [v3 bounds];
    v21.origin.x = UIEdgeInsetsInsetRect(v15, v16, v17, v18, v12, v14);
    CGRectGetWidth(v21);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

char *sub_18BA219F4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = sub_18BC20B98();
      v11 = [v7 infoForSupplementaryIdentifier:v10 page:a3];

      if (sub_18BC20BD8() == a1 && v12 == a2)
      {
      }

      else
      {
        v14 = sub_18BC21FD8();

        if ((v14 & 1) == 0)
        {
          if (sub_18BC20BD8() == a1 && v15 == a2)
          {
          }

          else
          {
            v31 = sub_18BC21FD8();

            if ((v31 & 1) == 0)
            {
              v33 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha;
              swift_beginAccess();
              *&v11[v33] = 0;
              v34 = sub_18BA214D0(a3);
              v35 = *&v34[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
              v36 = *&v34[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
              *&rect = v35;
              v37 = *&v34[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
              v38 = *&v34[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

              v39 = [v7 capsuleInfoForPage_];
              v40 = *&v39[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
              v41 = *&v39[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
              v42 = *&v39[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
              v43 = *&v39[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

              v61.origin.x = v35;
              v61.origin.y = v36;
              v61.size.width = v37;
              v61.size.height = v38;
              CGRectGetMaxY(v61);
              v62.origin.x = v40;
              v62.origin.y = v41;
              v62.size.width = v42;
              v62.size.height = v43;
              CGRectGetMaxY(v62);
              v44 = &v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
              *v44 = _SFRoundRectToPixels(*&v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]);
              *(v44 + 1) = v45;
              *(v44 + 2) = v46;
              *(v44 + 3) = v47;
              [v9 minimizedContentScale];
              v49 = v48;
              *&v63.origin.x = rect;
              v63.origin.y = v36;
              v63.size.width = v37;
              v63.size.height = v38;
              Width = CGRectGetWidth(v63);
              v64.origin.x = v40;
              v64.origin.y = v41;
              v64.size.width = v42;
              v64.size.height = v43;
              v51 = Width / CGRectGetWidth(v64);
              if (v51 >= v49)
              {
                v51 = v49;
              }

              CGAffineTransformMakeScale(&rect_24, v51, v51);
              tx = rect_24.tx;
              ty = rect_24.ty;
              v55 = *&rect_24.c;
              rect = *&rect_24.a;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v54 = &v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_transform];
              swift_beginAccess();
              *v54 = rect;
              *(v54 + 1) = v55;
              *(v54 + 4) = tx;
              *(v54 + 5) = ty;
              return v11;
            }
          }

          v32 = sub_18BA21F18(a3);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return v32;
        }
      }

      v16 = sub_18BA214D0(a3);
      v17 = *&v16[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];

      v60.origin.x = _SFRoundRectToPixels(v17);
      *&v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame] = v60;
      Height = CGRectGetHeight(v60);
      CACornerRadiiMake(&rect_24.a, Height * 0.5, Height * 0.5, Height * 0.5, Height * 0.5);
      a = rect_24.a;
      b = rect_24.b;
      v21 = *&rect_24.c;
      v23 = rect_24.tx;
      v22 = rect_24.ty;
      v25 = v58;
      v24 = v59;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v26 = &v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
      swift_beginAccess();
      *v26 = a;
      v26[1] = b;
      *(v26 + 1) = v21;
      v26[4] = v23;
      v26[5] = v22;
      v26[6] = v25;
      v26[7] = v24;
      v27 = 0;
      if (v25 == v24 && v25 == a && v24 == b)
      {
        v28 = v25 == v23;
        if (v24 != v22)
        {
          v28 = 0;
        }

        if (v25 != *&v21)
        {
          v28 = 0;
        }

        v27 = v24 == *(&v21 + 1) && v28;
      }

      v29 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
      swift_beginAccess();
      v11[v29] = v27;
      return v11;
    }

    swift_unknownObjectRelease();
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

char *sub_18BA21F18(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 lockdownStatusBar];
    v5 = sub_18BA214D0(a1);
    v6 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v7 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v8 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v9 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v10 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    if (v4)
    {
      [v4 preferredSize];
    }

    v20.origin.x = v6;
    v20.origin.y = v7;
    v20.size.width = v8;
    v20.size.height = v9;
    CGRectGetMinY(v20);
    [v3 bounds];
    CGRectGetWidth(v21);
    v11 = _SFRoundRectToPixels(0.0);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    swift_unknownObjectRelease();
    v18 = &v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v18 = v11;
    *(v18 + 1) = v13;
    *(v18 + 2) = v15;
    *(v18 + 3) = v17;
    return v10;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id sub_18BA220B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong topBackdropInfoForPage_];
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id SFCapsulePageLayoutBottomSquished.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFCapsulePageLayoutBottomSquished.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCapsulePageLayoutBottomSquished();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18BA225B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(*(Strong + 40) + 24) >= 1)
    {
      v2 = *(Strong + 48);
      v3 = Strong;
      [*(Strong + 24) presentationValue];
      v5 = v4;
      [*(v3 + 32) presentationValue];
      [v2 setContentOffset_];
    }
  }
}

void sub_18BA22668(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(v2 + 40);
  if (v3 != a1)
  {
    if (a2)
    {
      a2(0);
    }

    return;
  }

  if (a2)
  {
    a2(1);
    v3 = *(v2 + 40);
  }

  v4 = *(v3 + 24);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  *(v3 + 24) = v6;
  if (!v6)
  {
    swift_beginAccess();
    v7 = *(v3 + 16);
    v8 = *(v7 + 16);
    if (v8)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v9 = v7 + 40;
      do
      {
        v10 = *(v9 - 8);
        LOBYTE(aBlock[0]) = *(v3 + 24) > 0;
        sub_18BC1E1A8();
        v10(aBlock);

        v9 += 16;
        --v8;
      }

      while (v8);
    }
  }

  if (*(*(v2 + 40) + 24) <= 0)
  {
    [*(v2 + 48) contentOffset];
    v12 = v11;
    v14 = v13;
    v15 = swift_allocObject();
    v15[2] = v2;
    v15[3] = v12;
    v15[4] = v14;
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_18B83FCC8;
    *(v17 + 24) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_18B9D53AC;
    *(v18 + 24) = v17;
    aBlock[4] = sub_18B9D53B0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7E3BF4;
    aBlock[3] = &block_descriptor_53;
    v19 = _Block_copy(aBlock);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v16 performWithoutAnimation_];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_16;
    }
  }
}

id sub_18BA22928(uint64_t a1, char a2, double a3, double a4)
{
  if (a2)
  {
    v7 = *(v4 + 48);
    [v7 contentOffset];
    v10 = v9;
    v12 = v11;
    [v7 setContentOffset_];
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = v4;
    v13[4] = v10;
    v13[5] = v12;
    v14 = objc_opt_self();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    if ([v14 currentPhase])
    {
      v17[4] = sub_18BA22F8C;
      v17[5] = v13;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 1107296256;
      v17[2] = sub_18B7B0DB0;
      v17[3] = &block_descriptor_38;
      v15 = _Block_copy(v17);
      sub_18BC1E1A8();

      [v14 addCommitHandler:v15 forPhase:0];

      _Block_release(v15);
    }

    else
    {
    }
  }

  [*(v4 + 24) setValue_];
  return [*(v4 + 32) setValue_];
}

double sub_18BA22AD4(uint64_t a1, void *a2)
{
  if (a2[5] == a1)
  {
    v2 = a2[6];
    [v2 setContentOffset_];
    if (a2[2])
    {
      sub_18BC1E1A8();
      sub_18B840D74(v2);
    }
  }

  return result;
}

id sub_18BA22B50(uint64_t a1, double a2, double a3)
{
  [*(a1 + 48) setContentOffset_];
  [*(a1 + 24) setValue_];
  v6 = *(a1 + 32);

  return [v6 setValue_];
}

void sub_18BA22BC0()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 40);
  v3 = *(v2 + 24);
  if (v3 <= 0)
  {
    [*(v1 + 48) contentOffset];
    v5 = v4;
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = v1;
    v8[3] = v5;
    v8[4] = v7;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_18B840540;
    *(v10 + 24) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_18B7D1EC4;
    *(v11 + 24) = v10;
    aBlock[4] = sub_18B7D1E94;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7E3BF4;
    aBlock[3] = &block_descriptor_32;
    v12 = _Block_copy(aBlock);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v9 performWithoutAnimation_];
    _Block_release(v12);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v2 = *(v1 + 40);
    v3 = *(v2 + 24);
  }

  v13 = __OFADD__(v3, 1);
  v14 = v3 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 24) = v14;
  if (v14 == 1)
  {
    swift_beginAccess();
    v15 = *(v2 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v17 = v15 + 40;
      do
      {
        v18 = *(v17 - 8);
        v19 = *(v2 + 24) > 0;
        sub_18BC1E1A8();
        v18(&v19);

        v17 += 16;
        --v16;
      }

      while (v16);
    }
  }
}

uint64_t sub_18BA22E40()
{
  sub_18B7B171C(v0[2], v0[3]);
  sub_18B7B171C(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

id sub_18BA22E94()
{
  result = sub_18BA22928(*(v0 + 48), 1, *(v0 + 64), *(v0 + 72));
  v2 = *(v0 + 16);
  if (v2)
  {
    return v2(result);
  }

  return result;
}

uint64_t sub_18BA22F08()
{

  return swift_deallocClassInstance();
}

void *sub_18BA23058(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(v13 + 72);
  v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a3 + v27;
  v31 = (v13 + 48);
  v19 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a2;
  while (1)
  {
    a1(v18, v14);
    if (v3)
    {
      break;
    }

    if ((*v31)(v9, 1, v10) == 1)
    {
      sub_18B988BAC(v9, &qword_1EA9D7CD0, &unk_18BC49EB0);
    }

    else
    {
      v20 = v30;
      sub_18BA257F8(v9, v30, _s4ItemVMa);
      sub_18BA257F8(v20, v32, _s4ItemVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_18B9B5838(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v24 = sub_18B9B5838((v21 > 1), v22 + 1, 1, v19);
        v23 = v17;
        v19 = v24;
      }

      else
      {
        v23 = v17;
      }

      v19[2] = v22 + 1;
      v17 = v23;
      sub_18BA257F8(v32, v19 + v27 + v22 * v23, _s4ItemVMa);
      v10 = v28;
    }

    v18 += v17;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_18BA23330()
{
  v1 = _s4PageVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s4PageVMa_0(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C38, &qword_18BC42920);
  v12 = *(v2 + 72);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18BC3E410;
  sub_18B816284(v0, v11, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338, &unk_18BC4CBC0);
  }

  sub_18BA257F8(v11, v14 + v13, _s4PageVMa);
  _s15MoveItemsIntentVMa(0);
  v25 = v14;
  v15 = sub_18BC1E3F8();
  sub_18BA01A6C(v15);
  v16 = v25;
  v17 = *(v25 + 16);
  if (v17)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_18B825E60(0, v17, 0);
    v18 = v25;
    v24 = v16;
    v19 = v16 + v13;
    do
    {
      sub_18B816284(v19, v4, _s4PageVMa);
      sub_18B827328(v8);
      sub_18B816578(v4, _s4PageVMa);
      v25 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_18B825E60((v20 > 1), v21 + 1, 1);
        v18 = v25;
      }

      *(v18 + 16) = v21 + 1;
      sub_18BA257F8(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, _s4PageVMa_0);
      v19 += v12;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v22 = sub_18B7E158C(v18);

  return v22;
}

uint64_t sub_18BA236B4(void *a1)
{
  v2 = v1;
  v54 = _s4ItemVMa(0);
  v4 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4ItemVMa_2(0);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_18BC1EC08();
  v9 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B816284(v2, v14, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338, &unk_18BC4CBC0);
  }

  sub_18BA257F8(v14, v17, _s4PageVMa);
  v18 = &v17[*(v15 + 32)];
  v19 = v55;
  v49 = *(v9 + 16);
  v50 = v9 + 16;
  v49(v11, v18, v55);
  sub_18B816578(v17, _s4PageVMa);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  (*(v9 + 8))(v11, v19);
  v21 = _s15MoveItemsIntentVMa(0);
  v22 = *(v2 + *(v21 + 24));
  if (updated)
  {
    sub_18BC1E3F8();
    v23 = v22[2];
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_11:

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  MEMORY[0x1EEE9AC00](v21);
  *(&v47 - 2) = v2;
  *(&v47 - 1) = a1;
  v22 = sub_18BA23058(sub_18BA257DC, (&v47 - 4), v22);
  v23 = v22[2];
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_5:
  v62 = MEMORY[0x1E69E7CC0];
  sub_18B85A1AC(0, v23, 0);
  v24 = v62;
  v25 = v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v26 = *(v4 + 72);
  v47 = v22;
  v48 = v26;
  do
  {
    v61 = v23;
    v27 = v53;
    sub_18B816284(v25, v53, _s4ItemVMa);
    v60 = *v27;
    v28 = v54;
    v29 = v52;
    v49(&v8[v52[5]], &v27[*(v54 + 28)], v55);
    v30 = v27[v28[9]];
    v58 = v27[v28[10]];
    v31 = v28[12];
    v32 = v27[v28[11]];
    v56 = v30;
    v57 = v32;
    v59 = *&v27[v31];
    v33 = &v27[v28[13]];
    v34 = *v33;
    v35 = *(v33 + 1);
    v36 = *&v27[v28[14]];
    v37 = &v27[v28[15]];
    v39 = *v37;
    v38 = *(v37 + 1);
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18B816578(v27, _s4ItemVMa);
    *v8 = v60;
    v8[v29[6]] = v56;
    v40 = v57;
    v8[v29[7]] = v58;
    v8[v29[8]] = 0;
    v8[v29[9]] = v40;
    *&v8[v29[10]] = v59;
    v41 = &v8[v29[11]];
    *v41 = v34;
    v41[1] = v35;
    *&v8[v29[12]] = v36;
    v42 = &v8[v29[13]];
    *v42 = v39;
    v42[1] = v38;
    v62 = v24;
    v44 = *(v24 + 16);
    v43 = *(v24 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_18B85A1AC((v43 > 1), v44 + 1, 1);
      v24 = v62;
    }

    *(v24 + 16) = v44 + 1;
    sub_18BA257F8(v8, v24 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v44, _s4ItemVMa_2);
    v25 += v48;
    v23 = v61 - 1;
  }

  while (v61 != 1);

LABEL_12:
  v45 = sub_18B82ABA4(v24);

  return v45;
}

uint64_t sub_18BA23C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v32 = a3;
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s4PageVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s15MoveItemsIntentVMa(0);
  v15 = *(result + 40);
  v30 = a2;
  v16 = *(a2 + v15);
  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = result;
  v29 = a1;
  result = sub_18BB8B29C(a1);
  if ((v18 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_18B816284(*(v16 + 56) + *(v11 + 72) * result, v13, _s4PageVMa);
  (*(v7 + 16))(v9, &v13[*(v10 + 32)], v6);
  sub_18B816578(v13, _s4PageVMa);
  sub_18B7E7E10(&qword_1EA9D9FE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v19 = sub_18BC20AE8();
  result = (*(v7 + 8))(v9, v6);
  if (v19)
  {
    v20 = *(v30 + *(v17 + 32));
    if (*(v20 + 16))
    {
      result = sub_18BB8B29C(v29);
      if (v21)
      {
        v22 = result;
        v23 = *(v20 + 56);
        v24 = _s4ItemVMa(0);
        v25 = *(v24 - 8);
        v26 = v23 + *(v25 + 72) * v22;
        v27 = v31;
        sub_18B816284(v26, v31, _s4ItemVMa);
        return (*(v25 + 56))(v27, 0, 1, v24);
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v28 = _s4ItemVMa(0);
  return (*(*(v28 - 8) + 56))(v31, 1, 1, v28);
}

void *sub_18BA23FDC(uint64_t a1, char *a2, uint64_t a3)
{
  v79 = a3;
  v83 = a1;
  v84 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6330, &qword_18BC452C8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v66 - v3;
  v4 = &unk_18BC49EA0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0, &unk_18BC49EA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  v11 = _s4ItemVMa(0);
  v67 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  v16 = _s7SectionVMa_0(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v66 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v66 - v19;
  v77 = _s4PageVMa(0);
  v82 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0, &qword_18BC432D8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  v31 = _s7ContentV8IteratorVMa(0);
  v32 = (v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_18BA651DC(MEMORY[0x1E69E7CC0]);
  v71 = MEMORY[0x1E69E7CC0];
  v69 = sub_18BA653F4(MEMORY[0x1E69E7CC0]);
  sub_18B816284(v84, v34, _s7ContentVMa);
  *&v34[v32[7]] = 0;
  *&v34[v32[8]] = 0;
  v35 = v32[9];
  v84 = v34;
  v85 = v10;
  *&v34[v35] = 0;
  v74 = (v82 + 56);
  v75 = v15;
  v36 = (v82 + 48);
  v81 = v20;
  v82 = v7;
  v80 = v27;
  v73 = v36;
  while (1)
  {
    sub_18BB16160(v27);
    sub_18BA2576C(v27, v30);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
    if ((*(*(v40 - 8) + 48))(v30, 1, v40) == 1)
    {
      break;
    }

    v41 = *(v40 + 48);
    v42 = *(v40 + 64);
    sub_18BA257F8(v30, v24, _s4PageVMa);
    v43 = &v30[v41];
    v44 = v85;
    sub_18BA257F8(v43, v20, _s7SectionVMa_0);
    sub_18BA257F8(&v30[v42], v15, _s4ItemVMa);
    if ((sub_18B9BA41C(v15, v83) & 1) == 0)
    {
      goto LABEL_5;
    }

    v45 = v24;
    sub_18B816284(v24, v44, _s4PageVMa);
    v46 = v77;
    (*v74)(v44, 0, 1, v77);
    v47 = *(v78 + 48);
    v48 = v76;
    sub_18BA032EC(v44, v76);
    sub_18BA032EC(v79, v48 + v47);
    v49 = v44;
    v50 = *v73;
    if ((*v73)(v48, 1, v46) == 1)
    {
      v37 = v4;
      sub_18B988BAC(v49, &qword_1EA9D52E0, v4);
      v38 = v50(v48 + v47, 1, v46) == 1;
      v39 = v48;
      if (!v38)
      {
        goto LABEL_13;
      }

      sub_18B988BAC(v48, &qword_1EA9D52E0, v4);
      v20 = v81;
      v7 = v82;
      v24 = v45;
      v15 = v75;
      v27 = v80;
      goto LABEL_5;
    }

    sub_18BA032EC(v48, v7);
    if (v50(v48 + v47, 1, v46) == 1)
    {
      sub_18B988BAC(v85, &qword_1EA9D52E0, v4);
      sub_18B816578(v7, _s4PageVMa);
      v37 = v4;
      v39 = v48;
LABEL_13:
      sub_18B988BAC(v39, &qword_1EA9D6330, &qword_18BC452C8);
      v4 = v37;
      v20 = v81;
      v7 = v82;
      v24 = v45;
      v15 = v75;
      goto LABEL_14;
    }

    v51 = v72;
    sub_18BA257F8(v48 + v47, v72, _s4PageVMa);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B816578(v51, _s4PageVMa);
    sub_18B988BAC(v85, &qword_1EA9D52E0, v4);
    sub_18B816578(v82, _s4PageVMa);
    v7 = v82;
    sub_18B988BAC(v48, &qword_1EA9D52E0, v4);
    v27 = v80;
    v20 = v81;
    v24 = v45;
    v15 = v75;
    if (updated)
    {
LABEL_5:
      sub_18B816578(v15, _s4ItemVMa);
      sub_18B816578(v20, _s7SectionVMa_0);
      sub_18B816578(v24, _s4PageVMa);
    }

    else
    {
LABEL_14:
      sub_18B816284(v15, v68, _s4ItemVMa);
      v53 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_18B9B5838(0, v53[2] + 1, 1, v53);
      }

      v54 = v69;
      v56 = v53[2];
      v55 = v53[3];
      if (v56 >= v55 >> 1)
      {
        v53 = sub_18B9B5838((v55 > 1), v56 + 1, 1, v53);
      }

      v53[2] = v56 + 1;
      v57 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v71 = v53;
      sub_18BA257F8(v68, v53 + v57 + *(v67 + 72) * v56, _s4ItemVMa);
      v58 = v72;
      sub_18B816284(v24, v72, _s4PageVMa);
      v59 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v59;
      sub_18BAA8568(v58, v15, isUniquelyReferenced_nonNull_native);
      v70 = v86;
      v61 = v20;
      v62 = v66;
      sub_18B816284(v61, v66, _s7SectionVMa_0);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v54;
      v64 = v62;
      v20 = v81;
      sub_18BAA83BC(v64, v15, v63);
      sub_18B816578(v15, _s4ItemVMa);
      sub_18B816578(v20, _s7SectionVMa_0);
      sub_18B816578(v24, _s4PageVMa);
      v69 = v86;
      v27 = v80;
    }
  }

  sub_18B816578(v84, _s7ContentV8IteratorVMa);
  return v71;
}

uint64_t sub_18BA24914(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v61 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  v12 = _s7SectionVMa_0(0);
  v75 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  *(&v61 - v20) = 1;
  sub_18BC1DE28();
  v22 = v12[6];
  v67 = v12[7];
  v68 = v21;
  v76 = MEMORY[0x1E69E7CC0];
  *&v21[v67] = MEMORY[0x1E69E7CC0];
  v23 = &v21[v12[8]];
  *v23 = 0;
  *(v23 + 1) = 0xE000000000000000;
  v21[v22] = 1;
  v24 = *(a1 + 16);
  if (!v24)
  {
    v74 = MEMORY[0x1E69E7CC0];
LABEL_34:
    if (v74[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C28, &unk_18BC42910);
      v58 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_18BC3E410;
      v60 = v68;
      sub_18B816284(v68, v59 + v58, _s7SectionVMa_0);
      v77 = v59;
      sub_18BA01A40(v76);
      v76 = v77;
    }

    else
    {
      v60 = v68;
    }

    sub_18B816578(v60, _s7SectionVMa_0);
    return v76;
  }

  v64 = *(v5 + 80);
  v70 = (v64 + 32) & ~v64;
  v25 = a1 + v70;
  v26 = *(v5 + 72);
  v63 = xmmword_18BC3E410;
  v76 = MEMORY[0x1E69E7CC0];
  v73 = v26;
  v74 = MEMORY[0x1E69E7CC0];
  v27 = v66;
  v71 = a2;
  v65 = v16;
  while (1)
  {
    result = sub_18B816284(v25, v11, _s4ItemVMa);
    if (!*(a2 + 16))
    {
      break;
    }

    result = sub_18BB8B29C(v11);
    if ((v31 & 1) == 0)
    {
      goto LABEL_39;
    }

    v32 = *(v75 + 72);
    sub_18B816284(*(a2 + 56) + v32 * result, v27, _s7SectionVMa_0);
    if (v27[v12[6]] == 1)
    {
      sub_18B816284(v11, v72, _s4ItemVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_18B9B5838(0, v74[2] + 1, 1, v74);
      }

      a2 = v71;
      v33 = v12;
      v35 = v74[2];
      v34 = v74[3];
      v36 = v16;
      if (v35 >= v34 >> 1)
      {
        v74 = sub_18B9B5838((v34 > 1), v35 + 1, 1, v74);
      }

      sub_18B816578(v27, _s7SectionVMa_0);
      sub_18B816578(v11, _s4ItemVMa);
      v28 = v74;
      v74[2] = v35 + 1;
      v29 = v73;
      sub_18BA257F8(v72, v28 + v70 + v35 * v73, _s4ItemVMa);
      *&v68[v67] = v28;
      v16 = v36;
      v12 = v33;
    }

    else
    {
      v37 = v76[2];
      if (!v37)
      {
        goto LABEL_18;
      }

      v38 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      sub_18B816284(v76 + v38 + (v37 - 1) * v32, v16, _s7SectionVMa_0);
      if (*v16 != 1 || (*v27 & 1) == 0) && ((_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0 || (v16[v12[6]]))
      {
        sub_18B816578(v16, _s7SectionVMa_0);
LABEL_18:
        v39 = *v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C20, &qword_18BC42908);
        v40 = v70;
        v41 = swift_allocObject();
        *(v41 + 16) = v63;
        sub_18B816284(v11, v41 + v40, _s4ItemVMa);
        v42 = v12;
        v43 = v69;
        sub_18BC1DE28();
        *v43 = v39;
        v43[v42[6]] = 0;
        *&v43[v42[7]] = v41;
        v44 = &v43[v42[8]];
        *v44 = 0;
        v44[1] = 0xE000000000000000;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_18B9B5C64(0, v76[2] + 1, 1, v76);
        }

        v46 = v76[2];
        v45 = v76[3];
        v12 = v42;
        if (v46 >= v45 >> 1)
        {
          v76 = sub_18B9B5C64((v45 > 1), v46 + 1, 1, v76);
        }

        v16 = v65;
        v27 = v66;
        sub_18B816578(v66, _s7SectionVMa_0);
        sub_18B816578(v11, _s4ItemVMa);
        v47 = v75;
        v48 = v76;
        v76[2] = v46 + 1;
        sub_18BA257F8(v69, v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + v46 * v32, _s7SectionVMa_0);
        a2 = v71;
        v29 = v73;
        goto LABEL_4;
      }

      v49 = v76[2];
      sub_18B816284(v11, v62, _s4ItemVMa);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (!v49)
        {
          goto LABEL_40;
        }
      }

      else
      {
        result = sub_18BAE3814(v76);
        v76 = result;
        if (!v49)
        {
          goto LABEL_40;
        }
      }

      if (v49 > v76[2])
      {
        goto LABEL_41;
      }

      v50 = v76 + v38 + (v49 - 1) * v32;
      v51 = v12[7];
      v52 = *&v50[v51];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v50[v51] = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = sub_18B9B5838(0, v52[2] + 1, 1, v52);
        *&v50[v51] = v52;
      }

      v55 = v52[2];
      v54 = v52[3];
      v61 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        *&v50[v51] = sub_18B9B5838((v54 > 1), v61, 1, v52);
      }

      sub_18B816578(v16, _s7SectionVMa_0);
      sub_18B816578(v27, _s7SectionVMa_0);
      sub_18B816578(v11, _s4ItemVMa);
      v56 = *&v50[v51];
      v57 = v62;
      *(v56 + 16) = v61;
      v29 = v73;
      sub_18BA257F8(v57, v56 + v70 + v55 * v73, _s4ItemVMa);
      a2 = v71;
    }

LABEL_4:
    v25 += v29;
    if (!--v24)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void *sub_18BA25154(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s4ItemVMa(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v21 = sub_18BA6560C(MEMORY[0x1E69E7CC0]);
  v51 = *(a1 + 16);
  if (!v51)
  {
    return v21;
  }

  v22 = v5;
  v23 = 0;
  v24 = *(a2 + 48);
  v50 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v25 = *(v8 + 72);
  v48 = v4;
  v49 = (v22 + 40);
  v57 = v24 + 56;
  v54 = v17;
  while (1)
  {
    v53 = v23;
    sub_18B816284(v50 + v25 * v23, v20, _s4ItemVMa);
    sub_18B816284(v20, v17, _s4ItemVMa);
    v26 = v52;
    sub_18BC1DE28();
    (*v49)(&v17[v7[7]], v26, v4);
    v17[v7[9]] = 1;
    if (*(v24 + 16) && (sub_18BC22158(), sub_18B7E7E10(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), sub_18BC20A78(), v27 = sub_18BC221A8(), v28 = -1 << *(v24 + 32), v29 = v27 & ~v28, ((*(v57 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
    {
      v30 = ~v28;
      do
      {
        sub_18B816284(*(v24 + 48) + v29 * v25, v14, _s4ItemVMa);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B816578(v14, _s4ItemVMa);
        if (updated)
        {
          break;
        }

        v29 = (v29 + 1) & v30;
      }

      while (((*(v57 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
    }

    else
    {
      updated = 0;
    }

    v32 = v54;
    v54[v7[10]] = updated & 1;
    v33 = v56;
    sub_18B816284(v20, v56, _s4ItemVMa);
    sub_18B816284(v32, v55, _s4ItemVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v21;
    v36 = sub_18BB8B29C(v33);
    v37 = v21[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      break;
    }

    v40 = v35;
    if (v21[3] >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18BB2C76C();
      }
    }

    else
    {
      sub_18BB31804(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_18BB8B29C(v56);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_24;
      }

      v36 = v41;
    }

    v4 = v48;
    v21 = v58;
    if (v40)
    {
      sub_18BA25708(v55, v58[7] + v36 * v25);
      sub_18B816578(v56, _s4ItemVMa);
      sub_18B816578(v20, _s4ItemVMa);
    }

    else
    {
      v58[(v36 >> 6) + 8] |= 1 << v36;
      v43 = v56;
      sub_18B816284(v56, v21[6] + v36 * v25, _s4ItemVMa);
      sub_18BA257F8(v55, v21[7] + v36 * v25, _s4ItemVMa);
      sub_18B816578(v43, _s4ItemVMa);
      sub_18B816578(v20, _s4ItemVMa);
      v44 = v21[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_23;
      }

      v21[2] = v46;
    }

    v17 = v54;
    v23 = v53 + 1;
    sub_18B816578(v54, _s4ItemVMa);
    if (v23 == v51)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_18BC22078();
  __break(1u);
  return result;
}

uint64_t sub_18BA25708(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA2576C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0, &qword_18BC432D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA257F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18BA25860()
{
  v1 = (v0 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;
  sub_18BC1E3F8();
  return v2;
}

void sub_18BA258B8()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_18BA263CC;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18B7B0DB0;
  v5[3] = &block_descriptor_13;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateKeyframesWithDuration:2 delay:v3 options:0 animations:0.5 completion:0.0];
  _Block_release(v3);
}

uint64_t sub_18BA259AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v20 = a2;
  *(&v20 + 1) = a3;
  *&v21 = a4;
  *(&v21 + 1) = a5;
  *&v22 = a6;
  *(&v22 + 1) = a7;
  type metadata accessor for SFFluidCollectionView.Element(0, &v20);
  *(v7 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement) = sub_18BC21FB8();
  swift_unknownObjectRelease();
  *&v20 = a2;
  *(&v20 + 1) = a3;
  *&v21 = a4;
  *(&v21 + 1) = a5;
  *&v22 = a6;
  *(&v22 + 1) = a7;
  v15 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v20);
  [v7 setAlpha_];
  [v7 setCenter_];
  [v7 setBounds_];
  v16 = (a1 + v15[20]);
  v17 = v16[1];
  v20 = *v16;
  v21 = v17;
  v22 = v16[2];
  [v7 setTransform_];
  v18 = [v7 layer];
  [v18 setZPosition_];

  return (*((*MEMORY[0x1E69E7D40] & *v7) + 0xE0))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_18BA25B6C()
{
  v1 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18BA25BB0(char a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_18BA25C60()
{
  v1 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18BA25CA4(char a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_18BA25D54()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  return [v0 init];
}

double sub_18BA25D8C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_18BC1E3F8();

  return result;
}

id SFFluidCollectionReusableView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *SFFluidCollectionReusableView.init(frame:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = &v6[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier];
  *v12 = 0;
  v12[1] = 0;
  *&v6[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement] = 0;
  v6[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected] = 0;
  v6[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted] = 0;
  *&v6[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView] = (*(ObjectType + 216))();
  v19.receiver = v6;
  v19.super_class = type metadata accessor for SFFluidCollectionReusableView();
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView;
  v15 = *&v13[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView];
  v16 = v13;
  [v15 setAutoresizingMask_];
  v17 = *&v13[v14];
  [v16 bounds];
  [v17 setFrame_];

  [v16 addSubview_];
  return v16;
}

id SFFluidCollectionReusableView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SFFluidCollectionReusableView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted) = 0;
  sub_18BC21CF8();
  __break(1u);
}

void sub_18BA26224(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_18BA266C0;
  v14 = v3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_18B7B0DB0;
  v12 = &block_descriptor_16_0;
  v4 = _Block_copy(&v9);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_18BA266C8;
  v14 = v6;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_18B7B0DB0;
  v12 = &block_descriptor_22_0;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.5 animations:0.5];
  _Block_release(v7);
}

id SFFluidCollectionReusableView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFFluidCollectionReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SFStepper.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id SFStepper.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

char *SFStepper.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [objc_opt_self() isSolariumEnabled];
  v11 = 0.0;
  if (v10)
  {
    v11 = 12.0;
  }

  *&v4[OBJC_IVAR___SFStepper_separatorInset] = v11;
  v12 = OBJC_IVAR___SFStepper_enabledButtons;
  *&v5[v12] = sub_18BA29ABC(&unk_1EFF1A908);
  v13 = &v5[OBJC_IVAR___SFStepper_decrementButtonActionHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v5[OBJC_IVAR___SFStepper_incrementButtonActionHandler];
  *v14 = 0;
  v14[1] = 0;
  v5[OBJC_IVAR___SFStepper_isFocusedInPageMenu] = 0;
  v15 = &v5[OBJC_IVAR___SFStepper_hintText];
  *v15 = 0;
  v15[1] = 0;
  v5[OBJC_IVAR___SFStepper_needsInitialBlink] = 0;
  v5[OBJC_IVAR___SFStepper_isPulsing] = 0;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v5[OBJC_IVAR___SFStepper_containerView] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v5[OBJC_IVAR___SFStepper_shadowView] = v17;
  v18 = sub_18BC20B98();
  v19 = objc_opt_self();
  v20 = [v19 systemImageNamed_];

  v21 = type metadata accessor for MainButton();
  v22 = objc_allocWithZone(v21);
  v23 = sub_18BC18BD0(v20, 1, 0, 1);

  *&v5[OBJC_IVAR___SFStepper_leadingButton] = v23;
  v24 = sub_18BC20B98();
  v25 = [v19 systemImageNamed_];

  v26 = objc_allocWithZone(v21);
  v27 = sub_18BC18BD0(v25, 1, 0, 1);

  *&v5[OBJC_IVAR___SFStepper_trailingButton] = v27;
  v28 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v5[OBJC_IVAR___SFStepper_hintView] = v28;
  v29 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v5[OBJC_IVAR___SFStepper_hintLabel] = v29;
  v30 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v5[OBJC_IVAR___SFStepper_separator] = v30;
  v125.receiver = v5;
  v125.super_class = SFStepper;
  v31 = objc_msgSendSuper2(&v125, sel_initWithFrame_, a1, a2, a3, a4);
  v32 = OBJC_IVAR___SFStepper_shadowView;
  v33 = *&v31[OBJC_IVAR___SFStepper_shadowView];
  v34 = v31;
  v35 = [v33 layer];
  v121 = objc_opt_self();
  v36 = [v121 blackColor];
  v37 = [v36 CGColor];

  v123 = v35;
  [v35 setShadowColor_];

  [v35 setShadowOffset_];
  LODWORD(v38) = 1036831949;
  [v35 setShadowOpacity_];
  [v35 setShadowPathIsBounds_];
  [v35 setShadowRadius_];
  [*&v31[v32] setAlpha_];
  [v34 _sf_addEdgeMatchedSubview_];
  v39 = OBJC_IVAR___SFStepper_containerView;
  [*&v34[OBJC_IVAR___SFStepper_containerView] setClipsToBounds_];
  v40 = v39;
  [v34 &selRef:*&v34[v39] :?systemNavigationAction + 5];
  v41 = OBJC_IVAR___SFStepper_leadingButton;
  v42 = *&v34[OBJC_IVAR___SFStepper_leadingButton];
  v43 = sub_18BC20B98();
  [v42 setAccessibilityIdentifier_];

  [*&v34[v41] setTranslatesAutoresizingMaskIntoConstraints_];
  v44 = *&v34[v41];
  v124 = v41;
  sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v44;
  v116 = v45;
  v47 = sub_18BC215E8();
  [v46 addAction:v47 forControlEvents:{0x2000, 0, 0, 0, sub_18BA29CF8, v116}];

  [*&v34[v40] addSubview_];
  v48 = OBJC_IVAR___SFStepper_trailingButton;
  v49 = *&v34[OBJC_IVAR___SFStepper_trailingButton];
  v50 = sub_18BC20B98();
  [v49 setAccessibilityIdentifier_];

  [*&v34[v48] setTranslatesAutoresizingMaskIntoConstraints_];
  v51 = *&v34[v48];
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = v51;

  v54 = sub_18BC215E8();
  [v53 addAction:v54 forControlEvents:{0x2000, 0, 0, 0, sub_18BA29D1C, v52}];

  [*&v34[v40] addSubview_];
  v55 = OBJC_IVAR___SFStepper_separator;
  [*&v34[OBJC_IVAR___SFStepper_separator] setTranslatesAutoresizingMaskIntoConstraints_];
  v56 = v55;
  v118 = v55;
  v57 = *&v34[v55];
  v58 = [v121 separatorColor];
  [v57 setBackgroundColor_];

  [*&v34[v40] addSubview_];
  v59 = OBJC_IVAR___SFStepper_hintView;
  [*&v34[OBJC_IVAR___SFStepper_hintView] setAlpha_];
  v60 = *&v34[v59];
  v61 = [v121 secondarySystemGroupedBackgroundColor];
  [v60 setBackgroundColor_];

  v120 = v59;
  [*&v34[v40] _sf_addEdgeMatchedSubview_];
  v62 = *&v34[OBJC_IVAR___SFStepper_hintLabel];
  v63 = OBJC_IVAR___SFStepper_hintLabel;
  v64 = objc_opt_self();
  v65 = *MEMORY[0x1E69DDCF8];
  v66 = v62;
  v67 = [v64 preferredFontForTextStyle_];
  [v66 setFont_];

  v68 = *&v34[v63];
  v69 = [v121 secondaryLabelColor];
  [v68 setTextColor_];

  v119 = v63;
  [*&v34[v63] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v34[v59] addSubview_];
  v122 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_18BC45300;
  v71 = [*&v34[v124] topAnchor];
  v72 = [*&v34[v40] &selRef_startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn_];
  v73 = [v71 constraintEqualToAnchor_];

  *(v70 + 32) = v73;
  v74 = [*&v34[v124] bottomAnchor];
  v117 = v40;
  v75 = [*&v34[v40] bottomAnchor];
  v76 = [v74 &selRef:v75 containsButtonType:? + 5];

  *(v70 + 40) = v76;
  v77 = [*&v34[v124] leadingAnchor];
  v78 = [*&v34[v40] leadingAnchor];
  v79 = [v77 &selRef:v78 containsButtonType:? + 5];

  *(v70 + 48) = v79;
  v80 = [*&v34[v124] trailingAnchor];
  v81 = v48;
  v82 = [*&v34[v48] leadingAnchor];
  v83 = [v80 &selRef:v82 containsButtonType:? + 5];

  *(v70 + 56) = v83;
  v84 = [*&v34[v48] topAnchor];
  v85 = [*&v34[v117] topAnchor];
  v86 = [v84 &selRef:v85 containsButtonType:? + 5];

  *(v70 + 64) = v86;
  v87 = [*&v34[v48] bottomAnchor];
  v88 = [*&v34[v117] bottomAnchor];
  v89 = [v87 &selRef:v88 containsButtonType:? + 5];

  *(v70 + 72) = v89;
  v90 = [*&v34[v48] trailingAnchor];
  v91 = [*&v34[v117] trailingAnchor];
  v92 = [v90 &selRef:v91 containsButtonType:? + 5];

  *(v70 + 80) = v92;
  v93 = [*&v34[v48] widthAnchor];
  v94 = [*&v34[v124] widthAnchor];
  v95 = [v93 &selRef:v94 containsButtonType:? + 5];

  *(v70 + 88) = v95;
  v96 = [*&v34[v118] topAnchor];
  v97 = [*&v34[v117] topAnchor];
  v98 = OBJC_IVAR___SFStepper_separatorInset;
  v99 = [v96 constraintEqualToAnchor:v97 constant:*&v34[OBJC_IVAR___SFStepper_separatorInset]];

  *(v70 + 96) = v99;
  v100 = [*&v34[v118] bottomAnchor];
  v101 = [*&v34[v117] bottomAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:-*&v34[v98]];

  *(v70 + 104) = v102;
  v103 = [*&v34[v118] leadingAnchor];
  v104 = [*&v34[v81] leadingAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(v70 + 112) = v105;
  v106 = [*&v34[v118] widthAnchor];
  v107 = [v106 constraintEqualToConstant_];

  *(v70 + 120) = v107;
  v108 = [*&v34[v119] centerXAnchor];
  v109 = [*&v34[v120] centerXAnchor];
  v110 = [v108 constraintEqualToAnchor_];

  *(v70 + 128) = v110;
  v111 = [*&v34[v119] centerYAnchor];
  v112 = [*&v34[v120] centerYAnchor];
  v113 = [v111 constraintEqualToAnchor_];

  *(v70 + 136) = v113;
  sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
  v114 = sub_18BC20D88();

  [v122 activateConstraints_];

  return v34;
}

void sub_18BA27604(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong *a3];

    if (v6)
    {
      v6[2](v6);
      _Block_release(v6);
    }
  }
}

void SFStepper.isUserInteractionEnabled.setter(char a1)
{
  v5.super_class = SFStepper;
  v3 = objc_msgSendSuper2(&v5, sel_isUserInteractionEnabled);
  v4.receiver = v1;
  v4.super_class = SFStepper;
  objc_msgSendSuper2(&v4, sel_setUserInteractionEnabled_, a1 & 1);
  sub_18BA27818(v3);
}

void sub_18BA27818(char a1)
{
  if ([v1 isUserInteractionEnabled] != (a1 & 1))
  {
    v2 = [v1 leadingButton];
    v3 = [v1 isUserInteractionEnabled];
    if (v3)
    {
      v4 = OBJC_IVAR___SFStepper_enabledButtons;
      swift_beginAccess();
      LOBYTE(v3) = sub_18B9BAE24(1, *&v1[v4]);
    }

    [v2 setEnabled_];

    v5 = [v1 trailingButton];
    v6 = [v1 isUserInteractionEnabled];
    if (v6)
    {
      v7 = OBJC_IVAR___SFStepper_enabledButtons;
      swift_beginAccess();
      LOBYTE(v6) = sub_18B9BAE24(0, *&v1[v7]);
    }

    [v5 setEnabled_];
  }
}

id SFStepper._continuousCornerRadius.setter(double a1)
{
  v4.super_class = SFStepper;
  objc_msgSendSuper2(&v4, sel__setContinuousCornerRadius_);
  [*(v1 + OBJC_IVAR___SFStepper_containerView) _setContinuousCornerRadius_];
  return [*(v1 + OBJC_IVAR___SFStepper_shadowView) _setContinuousCornerRadius_];
}

uint64_t (*sub_18BA27BC8@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*a1 decrementButtonActionHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    *(result + 2) = sub_18BA2A9D8;
    *(result + 3) = v5;
    v6 = sub_18B9D53B0;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

id sub_18BA27C84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7B0DB0;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
    sub_18BC1E1A8();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_18BA27D64(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_18B824D48(*v2, v2[1]);
  return v3;
}

uint64_t sub_18BA27E88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_18B7E0A10(v7, v8);
}

uint64_t (*sub_18BA27EE4@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*a1 incrementButtonActionHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    *(result + 2) = sub_18BA2A9D8;
    *(result + 3) = v5;
    v6 = sub_18B7D1E94;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void sub_18BA27F8C(uint64_t *a1, void **a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v11 = *a1;
  if (*a1)
  {
    v14 = a1[1];
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = v14;
    v16 = *a2;
    v18[4] = a7;
    v18[5] = v15;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_18B7B0DB0;
    v18[3] = a8;
    v17 = _Block_copy(v18);
    sub_18BC1E1A8();
  }

  else
  {
    v17 = 0;
    v16 = *a2;
  }

  [v16 *a9];
  _Block_release(v17);
}

uint64_t SFStepper.isFocusedInPageMenu.getter()
{
  v1 = OBJC_IVAR___SFStepper_isFocusedInPageMenu;
  swift_beginAccess();
  return *(v0 + v1);
}

void SFStepper.isFocusedInPageMenu.setter(char a1)
{
  v3 = OBJC_IVAR___SFStepper_isFocusedInPageMenu;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SFStepper.hintText.getter()
{
  v1 = (v0 + OBJC_IVAR___SFStepper_hintText);
  swift_beginAccess();
  v2 = *v1;
  sub_18BC1E3F8();
  return v2;
}

double SFStepper.hintText.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___SFStepper_hintText];
  swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_18BC21FD8() & 1) != 0)
      {
        goto LABEL_13;
      }
    }
  }

  else if (!v8)
  {
    return result;
  }

  if (![objc_opt_self() isSolariumEnabled])
  {
    if ([v2 needsInitialBlink])
    {
      [v2 blink];
    }
  }

LABEL_13:

  return result;
}

void sub_18BA283EC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 hintText];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18BC20BD8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_18BA28454(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_18BC20B98();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setHintText_];
}

uint64_t SFStepper.needsInitialBlink.getter()
{
  v1 = OBJC_IVAR___SFStepper_needsInitialBlink;
  swift_beginAccess();
  return *(v0 + v1);
}

void SFStepper.needsInitialBlink.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___SFStepper_needsInitialBlink;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3 && ![objc_opt_self() isSolariumEnabled])
  {
    if ([v1 needsInitialBlink])
    {
      [v1 blink];
    }
  }
}

Swift::Void __swiftcall SFStepper.blink()()
{
  v1 = [v0 hintText];
  if (v1)
  {
    v5 = v1;
    if ([v0 isUserInteractionEnabled])
    {
      [*&v0[OBJC_IVAR___SFStepper_hintLabel] setText_];

      v2 = [*&v0[OBJC_IVAR___SFStepper_hintView] layer];
      v3 = sub_18BA29D40(1);
      v4 = sub_18BC20B98();
      [v2 addAnimation:v3 forKey:v4];

      [v0 setHintText_];

      [v0 setNeedsInitialBlink_];
    }

    else
    {
    }
  }
}

id sub_18BA287EC(double a1, CGFloat a2)
{
  v3 = v2;
  v6 = sub_18BC20B98();
  v7 = [objc_opt_self() animationWithKeyPath_];

  v8 = *(MEMORY[0x1E69792E8] + 80);
  v23 = *(MEMORY[0x1E69792E8] + 64);
  v24 = v8;
  v9 = *(MEMORY[0x1E69792E8] + 112);
  v25 = *(MEMORY[0x1E69792E8] + 96);
  v26 = v9;
  v10 = *(MEMORY[0x1E69792E8] + 16);
  v19 = *MEMORY[0x1E69792E8];
  v20 = v10;
  v11 = *(MEMORY[0x1E69792E8] + 48);
  v21 = *(MEMORY[0x1E69792E8] + 32);
  v22 = v11;
  v12 = v7;
  v13 = sub_18BC211F8();
  [v12 setFromValue_];

  [v3 transform];
  CGAffineTransformScale(&v17, &v18, a2, a2);
  CATransform3DMakeAffineTransform(&v18, &v17);
  v14 = sub_18BC211F8();
  [v12 setToValue_];

  [v12 setDamping_];
  [v12 setMass_];
  [v12 setStiffness_];
  v15 = v12;
  [v15 settlingDuration];
  [v15 setDuration_];
  [v15 setBeginTime_];
  [v15 setFillMode_];
  [v15 setAdditive_];
  [v15 setRemovedOnCompletion_];

  return v15;
}

void sub_18BA28A14()
{
  v1 = OBJC_IVAR___SFStepper_isPulsing;
  if ((v0[OBJC_IVAR___SFStepper_isPulsing] & 1) == 0)
  {
    if ([v0 isUserInteractionEnabled])
    {
      v0[v1] = 1;
      v2 = objc_opt_self();
      [v2 begin];
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      v4[2] = v3;
      v4[3] = 0x7055656C616373;
      v4[4] = 0xE700000000000000;
      v4[5] = 0x776F44656C616373;
      v4[6] = 0xE90000000000006ELL;
      v12[4] = sub_18BA2A68C;
      v12[5] = v4;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_18B7B0DB0;
      v12[3] = &block_descriptor_20;
      v5 = _Block_copy(v12);

      [v2 setCompletionBlock_];
      _Block_release(v5);
      v6 = [v0 layer];
      v7 = sub_18BA287EC(0.0, 1.4);
      v8 = sub_18BC20B98();
      [v6 addAnimation:v7 forKey:v8];

      v9 = [v0 layer];
      v10 = sub_18BA287EC(0.21, 0.714285714);
      v11 = sub_18BC20B98();
      [v9 addAnimation:v10 forKey:v11];

      [v2 commit];
    }
  }
}

void sub_18BA28C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___SFStepper_isPulsing] = 0;
    v6 = Strong;
    v7 = [v6 layer];
    v8 = sub_18BC20B98();
    [v7 removeAnimationForKey_];

    v9 = [v6 layer];
    v10 = sub_18BC20B98();
    [v9 removeAnimationForKey_];
  }
}

Swift::Void __swiftcall SFStepper.prepareForFocus()()
{
  v1 = [v0 leadingButton];
  [v1 setHighlighted_];

  v2 = [v0 trailingButton];
  [v2 setHighlighted_];

  [*&v0[OBJC_IVAR___SFStepper_shadowView] setAlpha_];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_18BA29EE0;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18B7B0DB0;
  v7[3] = &block_descriptor_14;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v3 animateWithDuration:v5 animations:0.15];
  _Block_release(v5);
}

void sub_18BA28F2C(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR___SFStepper_shadowView) layer];
  [v1 setShadowOffset_];
  [v1 setShadowRadius_];
}

void sub_18BA28FF8(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    sub_18BB5F3A0(&v7, a2);
  }

  else
  {
    swift_beginAccess();
    sub_18B9CECD0(a2);
  }

  swift_endAccess();
  if ([v2 isUserInteractionEnabled])
  {
    if (a2 == 1)
    {
      v5 = &selRef_leadingButton;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v5 = &selRef_trailingButton;
    }

    v6 = [v2 *v5];
    [v6 setEnabled_];
  }
}

void sub_18BA2925C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_18BC219A8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FF0, &unk_18BC4F840);
      v3 = sub_18BC21AA8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_18BC219A8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x18CFFD010](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_18BC215B8();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SFFluidCollectionReusableView();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_18BC215C8();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_18BC215B8();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for SFFluidCollectionReusableView();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_18BC215C8();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_18BA2953C(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v8 = a3;
    v9 = a2;
    v10 = sub_18BC219A8();
    a2 = v9;
    a3 = v8;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v5 = sub_18BC21AA8();
      v6 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v4)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = sub_18BC219A8();
      if (!v7)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v5 = MEMORY[0x1E69E7CD0];
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = *(v6 + 16);
  if (!v7)
  {
    return;
  }

LABEL_9:
  v11 = v5 + 56;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    while (1)
    {
      v13 = MEMORY[0x18CFFD010](v12, a1);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      sub_18BC22158();
      MEMORY[0x18CFFD660](v15);
      v16 = sub_18BC221A8();
      v17 = ~(-1 << *(v5 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v11 + 8 * v19);
      v21 = 1 << (v16 & v17);
      v22 = *(v5 + 48);
      if ((v21 & v20) != 0)
      {
        while (*(v22 + 8 * v18) != v15)
        {
          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
        if (v12 == v7)
        {
          return;
        }
      }

      else
      {
LABEL_16:
        *(v11 + 8 * v19) = v21 | v20;
        *(v22 + 8 * v18) = v15;
        v23 = *(v5 + 16);
        v14 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v14)
        {
          goto LABEL_28;
        }

        *(v5 + 16) = v24;
        if (v12 == v7)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v25 = 0;
    v26 = a1 + 32;
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v25 != v27)
    {
      v28 = *(v26 + 8 * v25);
      sub_18BC22158();
      MEMORY[0x18CFFD660](v28);
      v29 = sub_18BC221A8();
      v30 = ~(-1 << *(v5 + 32));
      v31 = v29 & v30;
      v32 = (v29 & v30) >> 6;
      v33 = *(v11 + 8 * v32);
      v34 = 1 << (v29 & v30);
      v35 = *(v5 + 48);
      if ((v34 & v33) != 0)
      {
        while (*(v35 + 8 * v31) != v28)
        {
          v31 = (v31 + 1) & v30;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:
        *(v11 + 8 * v32) = v34 | v33;
        *(v35 + 8 * v31) = v28;
        v36 = *(v5 + 16);
        v14 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v14)
        {
          goto LABEL_30;
        }

        *(v5 + 16) = v37;
        sub_18BC1E1A8();
      }

      if (++v25 == v7)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_18BA29840(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v37 = a2(0);
  v9 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v16 = sub_18BC21AA8();
    v17 = 0;
    v18 = v16 + 56;
    v19 = *(v9 + 80);
    v34 = v15;
    v35 = a1 + ((v19 + 32) & ~v19);
    v20 = *(v9 + 72);
    while (1)
    {
      v36 = v17;
      sub_18B855538(v35 + v20 * v17, v14, a5);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      v21 = sub_18BC221A8();
      v22 = -1 << *(v16 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      v25 = *(v18 + 8 * (v23 >> 6));
      v26 = 1 << v23;
      if (((1 << v23) & v25) != 0)
      {
        v27 = ~v22;
        do
        {
          sub_18B855538(*(v16 + 48) + v23 * v20, v11, a5);
          updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B8153E0(v11, a5);
          if (updated)
          {
            sub_18B8153E0(v14, a5);
            v15 = v34;
            goto LABEL_4;
          }

          v23 = (v23 + 1) & v27;
          v24 = v23 >> 6;
          v25 = *(v18 + 8 * (v23 >> 6));
          v26 = 1 << v23;
        }

        while (((1 << v23) & v25) != 0);
        v15 = v34;
      }

      *(v18 + 8 * v24) = v26 | v25;
      result = sub_18B82976C(v14, *(v16 + 48) + v23 * v20, a5);
      v30 = *(v16 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v16 + 16) = v32;
LABEL_4:
      v17 = v36 + 1;
      if (v36 + 1 == v15)
      {
        return v16;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_18BA29ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FD0, &unk_18BC4F870);
    v3 = sub_18BC21AA8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_18BC22158();
      MEMORY[0x18CFFD660](v10);
      result = sub_18BC221A8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
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
        *(v17 + 8 * v13) = v10;
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

void _sSo9SFStepperC12MobileSafariE5coderABSgSo7NSCoderC_tcfc_0()
{
  v1 = [objc_opt_self() isSolariumEnabled];
  v2 = 0.0;
  if (v1)
  {
    v2 = 12.0;
  }

  *(v0 + OBJC_IVAR___SFStepper_separatorInset) = v2;
  v3 = OBJC_IVAR___SFStepper_enabledButtons;
  *(v0 + v3) = sub_18BA29ABC(&unk_1EFF1A8D8);
  v4 = (v0 + OBJC_IVAR___SFStepper_decrementButtonActionHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___SFStepper_incrementButtonActionHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___SFStepper_isFocusedInPageMenu) = 0;
  v6 = (v0 + OBJC_IVAR___SFStepper_hintText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR___SFStepper_needsInitialBlink) = 0;
  *(v0 + OBJC_IVAR___SFStepper_isPulsing) = 0;
  sub_18BC21CF8();
  __break(1u);
}

id sub_18BA29D40(char a1)
{
  v2 = sub_18BC20B98();
  v3 = [objc_opt_self() animationWithKeyPath_];

  v4 = MEMORY[0x1E69E6530];
  v15 = MEMORY[0x1E69E6530];
  v14[0] = (a1 & 1) == 0;
  __swift_project_boxed_opaque_existential_1Tm(v14, MEMORY[0x1E69E6530]);
  v5 = sub_18BC21FB8();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  [v3 setFromValue_];
  swift_unknownObjectRelease();
  v15 = v4;
  v14[0] = a1 & 1;
  __swift_project_boxed_opaque_existential_1Tm(v14, v4);
  v6 = sub_18BC21FB8();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  [v3 setToValue_];
  swift_unknownObjectRelease();
  v7 = v3;
  [v7 setAutoreverses_];
  [v7 setDuration_];
  v8 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v9) = 1028443341;
  LODWORD(v10) = 1034147594;
  LODWORD(v11) = 1.5;
  v12 = [v8 initWithControlPoints__:v9 :{0.0, v10, v11}];
  [v7 setTimingFunction_];

  return v7;
}

uint64_t sub_18BA29F38(uint64_t a1)
{
  v2 = _s4ItemVMa_0(0);
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v39 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FB0, &qword_18BC55980);
    v9 = sub_18BC21AA8();
    v10 = 0;
    v11 = v9 + 56;
    v12 = *(v3 + 80);
    v40 = v2;
    v41 = a1 + ((v12 + 32) & ~v12);
    v13 = *(v3 + 72);
    v42 = v8;
    while (1)
    {
      v47 = v10;
      v14 = v50;
      sub_18B855538(v41 + v13 * v10, v50, _s4ItemVMa_0);
      sub_18BC22158();
      v15 = *v14;
      sub_18BC22178();
      v51 = v14[1];
      sub_18BC22178();
      v16 = v2[6];
      sub_18BC1EC08();
      sub_18B80D494();
      v49 = v16;
      sub_18BC20A78();
      v17 = *&v14[v2[7]];
      sub_18BC22178();
      if (v17)
      {
        v18 = v17;
        sub_18BC215D8();
      }

      v19 = v50;
      v46 = v50[v2[8]];
      sub_18BC22178();
      v45 = *(v19 + v2[9]);
      sub_18BC22178();
      v20 = (v19 + v2[10]);
      v21 = v20[1];
      v43 = *v20;
      v44 = v21;
      sub_18BC22178();
      if (v21)
      {
        sub_18BC20C28();
      }

      v22 = sub_18BC221A8();
      v23 = ~(-1 << *(v9 + 32));
      v24 = v22 & v23;
      v25 = (v22 & v23) >> 6;
      v26 = *(v11 + 8 * v25);
      v27 = 1 << (v22 & v23);
      if ((v27 & v26) != 0)
      {
        break;
      }

LABEL_27:
      *(v11 + 8 * v25) = v26 | v27;
      result = sub_18B82976C(v50, *(v9 + 48) + v24 * v13, _s4ItemVMa_0);
      v36 = *(v9 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      v34 = v42;
      if (v37)
      {
        __break(1u);
        return result;
      }

      *(v9 + 16) = v38;
LABEL_29:
      v10 = v47 + 1;
      if (v47 + 1 == v34)
      {
        return v9;
      }
    }

    v48 = v17;
    while (1)
    {
      sub_18B855538(*(v9 + 48) + v24 * v13, v5, _s4ItemVMa_0);
      if (v15 != *v5 || v51 != v5[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        goto LABEL_10;
      }

      v28 = *&v5[v2[7]];
      if (v28)
      {
        if (!v48)
        {
          goto LABEL_10;
        }

        sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
        v29 = v48;
        v30 = v28;
        v31 = sub_18BC215C8();

        v2 = v40;
        if ((v31 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v48)
      {
        goto LABEL_10;
      }

      if (v46 == v5[v2[8]] && v45 == v5[v2[9]])
      {
        v32 = &v5[v2[10]];
        v33 = *(v32 + 1);
        if (v33)
        {
          if (v44 && (*v32 == v43 && v33 == v44 || (sub_18BC21FD8() & 1) != 0))
          {
LABEL_26:
            sub_18B8153E0(v5, _s4ItemVMa_0);
            sub_18B8153E0(v50, _s4ItemVMa_0);
            v34 = v42;
            goto LABEL_29;
          }
        }

        else if (!v44)
        {
          goto LABEL_26;
        }
      }

LABEL_10:
      sub_18B8153E0(v5, _s4ItemVMa_0);
      v24 = (v24 + 1) & v23;
      v25 = v24 >> 6;
      v26 = *(v11 + 8 * (v24 >> 6));
      v27 = 1 << v24;
      if ((v26 & (1 << v24)) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_18BA2A444(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = a2(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v17 = sub_18BC21AA8();
    v18 = 0;
    v19 = v17 + 56;
    v32 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v33 = v16;
    v20 = *(v10 + 72);
    while (2)
    {
      sub_18B855538(v32 + v20 * v18, v15, a5);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      v22 = sub_18BC221A8();
      v23 = ~(-1 << *(v17 + 32));
      for (i = v22 & v23; ; i = (i + 1) & v23)
      {
        v25 = *(v19 + 8 * (i >> 6));
        if (((1 << i) & v25) == 0)
        {
          break;
        }

        sub_18B855538(*(v17 + 48) + i * v20, v12, a5);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B8153E0(v12, a5);
        if (updated)
        {
          sub_18B8153E0(v15, a5);
          v21 = v33;
          goto LABEL_4;
        }
      }

      *(v19 + 8 * (i >> 6)) = (1 << i) | v25;
      result = sub_18B82976C(v15, *(v17 + 48) + i * v20, a5);
      v28 = *(v17 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      v21 = v33;
      if (!v29)
      {
        *(v17 + 16) = v30;
LABEL_4:
        if (++v18 == v21)
        {
          return v17;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_18BA2A6A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5020, &unk_18BC42F20);
    v3 = sub_18BC21AA8();
    v4 = 0;
    v5 = v3 + 56;
    v20 = a1 + 32;
    while (1)
    {
      sub_18B833990(v20 + 40 * v4, v33);
      sub_18BC22158();
      sub_18B833990(v33, &v30);
      if (*(&v31 + 1) > 1)
      {
        if (*(&v31 + 1) == 2)
        {
          v6 = 3;
        }

        else
        {
          if (*(&v31 + 1) != 3)
          {
LABEL_12:
            v23[0] = v30;
            v23[1] = v31;
            v24 = v32;
            MEMORY[0x18CFFD660](2);
            sub_18BC21A58();
            sub_18B831014(v23);
            goto LABEL_16;
          }

          v6 = 4;
        }
      }

      else if (*(&v31 + 1))
      {
        if (*(&v31 + 1) != 1)
        {
          goto LABEL_12;
        }

        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      MEMORY[0x18CFFD660](v6);
LABEL_16:
      result = sub_18BC221A8();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          sub_18B833990(*(v3 + 48) + 40 * v9, &v30);
          sub_18B833990(&v30, v25);
          sub_18B833990(v33, &v27);
          if (v26 > 1)
          {
            if (v26 == 2)
            {
              sub_18B833D9C(&v30);
              if (*(&v28 + 1) == 2)
              {
                goto LABEL_3;
              }

              goto LABEL_31;
            }

            if (v26 == 3)
            {
              sub_18B833D9C(&v30);
              if (*(&v28 + 1) == 3)
              {
                goto LABEL_3;
              }

              goto LABEL_31;
            }
          }

          else
          {
            if (!v26)
            {
              sub_18B833D9C(&v30);
              if (!*(&v28 + 1))
              {
                goto LABEL_3;
              }

              goto LABEL_31;
            }

            if (v26 == 1)
            {
              sub_18B833D9C(&v30);
              if (*(&v28 + 1) == 1)
              {
                goto LABEL_3;
              }

              goto LABEL_31;
            }
          }

          sub_18B833990(v25, v23);
          if (*(&v28 + 1) < 4uLL)
          {
            sub_18B833D9C(&v30);
            sub_18B831014(v23);
LABEL_31:
            result = sub_18B86C4A4(v25);
            goto LABEL_32;
          }

          v21[0] = v27;
          v21[1] = v28;
          v22 = v29;
          v13 = MEMORY[0x18CFFCF40](v23, v21);
          sub_18B831014(v21);
          sub_18B833D9C(&v30);
          sub_18B831014(v23);
          if (v13)
          {
LABEL_3:
            sub_18B833D9C(v25);
            sub_18B833D9C(v33);
            goto LABEL_4;
          }

          result = sub_18B833D9C(v25);
LABEL_32:
          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      v14 = *(v3 + 48) + 40 * v9;
      v15 = v33[0];
      v16 = v33[1];
      *(v14 + 32) = v34;
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v19;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_18BA2A9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v62 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6488, &unk_18BC45340);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - v8;
  v10 = *(v4 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_dataSource);
  if (!v10)
  {
    return;
  }

  sub_18BA2CD78();
  v11 = v10;
  sub_18BC1FB28();
  sub_18BC1FA88();
  v12 = v4 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter;
  v13 = *(v4 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8);
  if (!v13)
  {
    goto LABEL_48;
  }

  v14 = *(v12 + 16);
  v15 = *(v12 + 24);
  *&v67 = 0;
  BYTE8(v67) = 1;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  isUniquelyReferenced_nonNull_native = sub_18BC1FA38();
  if (!a2)
  {

    goto LABEL_48;
  }

  v56 = v15;
  v50 = v13;
  v51 = v11;
  v52 = v9;
  v53 = v7;
  v54 = v6;
  v17 = *(v14 + 16);
  if (!v17)
  {
    goto LABEL_47;
  }

  v18 = 0;
  v19 = v14 + 64;
  v58 = *(v14 + 16);
  v48 = v17 - 1;
  v20 = MEMORY[0x1E69E7CC0];
  v49 = v14 + 64;
  do
  {
    v55 = v20;
    v21 = (v19 + 40 * v18);
    v22 = v18;
    while (1)
    {
      if (v22 >= *(v14 + 16))
      {
        __break(1u);
        return;
      }

      v63 = v22;
      v23 = *(v21 - 4);
      v24 = *(v21 - 16);
      v25 = *(v21 - 1);
      v26 = *v21;
      v60 = *(v21 - 3);
      v61 = v23;
      *&v67 = v23;
      *(&v67 + 1) = v60;
      v59 = v24;
      LOBYTE(v68) = v24;
      *(&v68 + 1) = v25;
      v69 = v26;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      *(&v48 - 2) = &v67;
      sub_18BC1E3F8();
      v27 = sub_18B9B51DC(sub_18BA2CE90, (&v48 - 4), v62);
      v28 = v63;
      if ((v27 & 1) == 0)
      {
        goto LABEL_7;
      }

      sub_18B994B7C(v25, v26, v62, v78);
      if (!v79 || ((sub_18B988BAC(v78, &qword_1EA9D4078, &qword_18BC40458), !*(v57 + 16)) || (v29 = sub_18B831970(v25, v26), (v30 & 1) == 0) ? (v69 = 0, v67 = 0u, v68 = 0u) : (v31 = *(v57 + 56) + 16 * v29, v32 = *v31, (v33 = *(v31 + 8)) == 0) ? (*(&v68 + 1) = MEMORY[0x1E69E6370], v69 = MEMORY[0x1E69E6380], LOBYTE(v67) = v32 & 1) : v33 != 1 ? (*(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0, &qword_18BC40478), v69 = sub_18B996184(), *&v67 = v32, v41 = v32) : (*(&v68 + 1) = MEMORY[0x1E69E7DE0], v69 = sub_18B7F3B64(), *&v67 = v32), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64B0, &unk_18BC45360), (swift_dynamicCast() & 1) == 0))
      {
        v76 = 0;
        memset(v75, 0, sizeof(v75));
      }

      sub_18B994B7C(v25, v26, v14, v80);
      if (!v81 || ((sub_18B988BAC(v80, &qword_1EA9D4078, &qword_18BC40458), v34 = v56, !*(v56 + 16)) || (v35 = sub_18B831970(v25, v26), (v36 & 1) == 0) ? (v69 = 0, v67 = 0u, v68 = 0u) : (v37 = *(v34 + 56) + 16 * v35, v38 = *v37, (v39 = *(v37 + 8)) == 0) ? (*(&v68 + 1) = MEMORY[0x1E69E6370], v69 = MEMORY[0x1E69E6380], LOBYTE(v67) = v38 & 1) : v39 != 1 ? (*(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0, &qword_18BC40478), v69 = sub_18B996184(), *&v67 = v38, v42 = v38) : (*(&v68 + 1) = MEMORY[0x1E69E7DE0], v69 = sub_18B7F3B64(), *&v67 = v38), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64B0, &unk_18BC45360), (swift_dynamicCast() & 1) == 0))
      {
        v74 = 0;
        memset(v73, 0, sizeof(v73));
      }

      sub_18BA2CEB0(v75, &v67);
      sub_18BA2CEB0(v73, &v70);
      if (*(&v68 + 1))
      {
        break;
      }

      sub_18B988BAC(v73, &qword_1EA9D4080, &qword_18BC40460);
      sub_18B988BAC(v75, &qword_1EA9D4080, &qword_18BC40460);
      if (*(&v71 + 1))
      {
        goto LABEL_39;
      }

      sub_18B988BAC(&v67, &qword_1EA9D4080, &qword_18BC40460);
LABEL_7:
      v22 = v28 + 1;

      v21 += 5;
      if (v58 == v22)
      {
        goto LABEL_47;
      }
    }

    sub_18BA2CEB0(&v67, v66);
    if (*(&v71 + 1))
    {
      v64[0] = v70;
      v64[1] = v71;
      v65 = v72;
      v40 = MEMORY[0x18CFFCF40](v66, v64);
      sub_18B831014(v64);
      sub_18B988BAC(v73, &qword_1EA9D4080, &qword_18BC40460);
      sub_18B988BAC(v75, &qword_1EA9D4080, &qword_18BC40460);
      sub_18B831014(v66);
      sub_18B988BAC(&v67, &qword_1EA9D4080, &qword_18BC40460);
      if ((v40 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_7;
    }

    sub_18B988BAC(v73, &qword_1EA9D4080, &qword_18BC40460);
    sub_18B988BAC(v75, &qword_1EA9D4080, &qword_18BC40460);
    sub_18B831014(v66);
LABEL_39:
    sub_18B988BAC(&v67, &unk_1EA9D64A0, &unk_18BC45350);
LABEL_40:
    v20 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_18B9B68E4(0, *(v20 + 16) + 1, 1);
      v20 = v77;
    }

    v44 = *(v20 + 16);
    v43 = *(v20 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v55 = v44 + 1;
      isUniquelyReferenced_nonNull_native = sub_18B9B68E4((v43 > 1), v44 + 1, 1);
      v45 = v55;
      v20 = v77;
    }

    v18 = v28 + 1;
    *(v20 + 16) = v45;
    v46 = v20 + 40 * v44;
    v47 = v60;
    *(v46 + 32) = v61;
    *(v46 + 40) = v47;
    *(v46 + 48) = v59;
    *(v46 + 56) = v25;
    *(v46 + 64) = v26;
    v19 = v49;
  }

  while (v48 != v28);
LABEL_47:

  v6 = v54;
  v9 = v52;
  sub_18BC1FA58();

  v7 = v53;
  v11 = v51;
LABEL_48:
  sub_18BC1FDC8();

  (*(v7 + 8))(v9, v6);
}

double sub_18BA2B140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = &v5[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
  v7 = *&v5[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
  v8 = *&v5[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8];
  v9 = *&v5[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 16];
  v10 = *&v5[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 24];
  *v6 = a1;
  *(v6 + 1) = a2;
  *(v6 + 2) = a3;
  *(v6 + 3) = a4;
  if (a2)
  {
    sub_18BC1E3F8();
    v11 = sub_18BC20B98();
  }

  else
  {
    v11 = 0;
  }

  [v5 setTitle_];

  sub_18BA2A9E0(v7, v8, v9, v10);
  sub_18BA2CF70(v7, v8);
  v12 = *&v5[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_editHandler];
  sub_18BC1E1A8();
  v12(v5);

  return result;
}

void (*sub_18BA2B240(uint64_t *a1))(uint64_t **a1, char a2, double a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter);
  v6 = *(v1 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8);
  v7 = *(v1 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 16);
  v8 = *(v1 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 24);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  sub_18BA2CF20(v5, v6, v7, v8);
  return sub_18BA2B2D0;
}

void sub_18BA2B2D0(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    v8 = sub_18BA2CF20(**a1, v5, v6, v7);
    sub_18BA2B140(v4, v5, v6, v7, v8);
    sub_18BA2CF70(*v3, v3[1]);
  }

  else
  {
    sub_18BA2B140(**a1, v5, v6, v7, a3);
  }

  free(v3);
}

id sub_18BA2B388()
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D64C8, &qword_18BC45370);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v39 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64D0, &qword_18BC45378);
  v45 = *(v47 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v39 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v39 - v12;
  result = [v0 view];
  if (result)
  {
    v15 = result;
    v16 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor_];

    v43 = *&v0[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_collectionView];
    [v43 setDelegate_];
    v17 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v18 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v19 = swift_allocObject();
    v19[2] = sub_18BA2B958;
    v19[3] = 0;
    v19[4] = sub_18BA2CFC0;
    v19[5] = v17;
    v19[6] = sub_18BA2CFC8;
    v19[7] = v18;
    sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
    v40 = v13;
    sub_18BC21298();
    swift_allocObject();
    v42 = v0;
    swift_unknownObjectUnownedInit();
    sub_18B7B0AC0(0, &qword_1EA9D64E0, 0x1E69DC7F8);
    v20 = v49;
    sub_18BC21298();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = v9;
    sub_18BC21298();
    v21 = v45;
    v22 = *(v45 + 16);
    v23 = v47;
    v22(v50, v9, v47);
    v24 = v48;
    v25 = v46;
    (*(v48 + 16))(v46, v20, v52);
    v22(v51, v13, v23);
    v26 = *(v21 + 80);
    v27 = (v26 + 16) & ~v26;
    v28 = (v4 + *(v24 + 80) + v27) & ~*(v24 + 80);
    v29 = (v44 + v26 + v28) & ~v26;
    v30 = swift_allocObject();
    v31 = *(v21 + 32);
    v31(v30 + v27, v50, v23);
    v32 = v30 + v28;
    v33 = v52;
    (*(v24 + 32))(v32, v25, v52);
    v31(v30 + v29, v51, v23);
    v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D64E8, &unk_18BC45380));
    v35 = v43;
    v36 = sub_18BC1FCE8();
    v37 = *&v42[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_dataSource];
    *&v42[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_dataSource] = v36;

    sub_18BA2A9E0(0, 0, 0, 0);
    v38 = *(v21 + 8);
    v38(v41, v23);
    (*(v24 + 8))(v49, v33);
    return (v38)(v40, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA2B958(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_18BC1E3F8();
  return v1;
}

uint64_t sub_18BA2B988(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
  v6 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8];
  v7 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 16];
  v8 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 24];
  sub_18BA2CF20(v5, v6, v7, v8);

  if (!v6)
  {
    return 0;
  }

  v9 = sub_18BA2D15C(v2, v3, v7, v8);
  sub_18BA2CF70(v5, v6);
  return v9;
}

void sub_18BA2BA34(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_18BA2B240(v11);
  if (*(v9 + 8))
  {
    v10 = a2;
    sub_18BC1E3F8();
    v8.n128_f64[0] = sub_18B990AD0(a2, v4, v5);
  }

  (v7)(v11, 0, v8);
}

uint64_t sub_18BA2BAD8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4 = a3[1];
  v36 = *a3;
  v37 = v4;
  v38 = *(a3 + 4);
  if (v4)
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  else
  {
    v5 = v36;
    v6 = *(&v37 + 1);
    v7 = v38;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v9 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
    v10 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8];
    v11 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 16];
    v12 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 24];
    sub_18BA2D578(&v36, &v29);
    sub_18BA2CF20(v9, v10, v11, v12);

    if (v10)
    {
      v13 = sub_18BA2D2C0(v6, v7, v11, v12);
      v15 = v14;
      sub_18BA2CF70(v9, v10);
      if (v15)
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = swift_allocObject();
    v17 = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectUnownedInit();

    v18 = swift_allocObject();
    v19 = v37;
    *(v18 + 24) = v36;
    *(v18 + 16) = v16;
    *(v18 + 40) = v19;
    *(v18 + 56) = v38;
    v25 = v5;
    *&v26 = 0x3FB999999999999ALL;
    *(&v26 + 1) = v6;
    *&v27 = v7;
    *(&v27 + 1) = v13;
    *&v28 = sub_18BA2D5D4;
    *(&v28 + 1) = v18;
    v24[3] = &type metadata for SFSliderCellContentConfiguration;
    v24[4] = sub_18BA2D5E0();
    v20 = swift_allocObject();
    v24[0] = v20;
    v21 = v26;
    v20[1] = v5;
    v20[2] = v21;
    v22 = v28;
    v20[3] = v27;
    v20[4] = v22;
    sub_18BA2D578(&v36, &v29);
    sub_18BA2D634(&v25, &v29);
    MEMORY[0x18CFFC900](v24);
    v29 = v5;
    v30 = 0x3FB999999999999ALL;
    v31 = v6;
    v32 = v7;
    v33 = v13;
    v34 = sub_18BA2D5D4;
    v35 = v18;
    return sub_18BA2D690(&v29);
  }

  return result;
}

void sub_18BA2BD2C(uint64_t a1, uint64_t a2, double a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = sub_18BA2B240(v11);
  if (*(v8 + 8))
  {
    v10 = *(a2 + 24);
    v9 = *(a2 + 32);
    sub_18BC1E3F8();
    v7.n128_f64[0] = sub_18B990CD0(*&a3, 0, v10, v9);
  }

  (v6)(v11, 0, v7);
}

char *sub_18BA2BDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_18BC1F568();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1F4E8();
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18BC1FA08();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 24);
  v19 = *(a3 + 32);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v42 = v15;
    v43 = v8;
    v44 = v14;
    v45 = a1;
    v21 = result;
    sub_18BC1F9F8();
    sub_18BC1E3F8();
    sub_18BC1F9B8();
    v51 = v21;
    v22 = &v21[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
    v23 = *&v21[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8];
    if (v23)
    {
      v25 = v22[2];
      v24 = v22[3];
      v26 = *v22;
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v27 = sub_18BA2D418(v18, v19, v25, v24);
      sub_18BA2CF70(v26, v23);
    }

    else
    {
      v27 = 0;
    }

    v28 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
    [v28 setOn_];
    sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = *a3;
    *(v31 + 40) = *(a3 + 16);
    *(v31 + 48) = v18;
    *(v31 + 56) = v19;
    *(v31 + 64) = v29;
    sub_18BC1E3F8();
    v32 = sub_18BC215E8();
    [v28 addAction:v32 forControlEvents:4096];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
    sub_18BC1F598();
    *(swift_allocObject() + 16) = xmmword_18BC3E410;
    v33 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700, &unk_18BC459B0) + 48)];
    v34 = *MEMORY[0x1E69DBF28];
    v35 = sub_18BC1F418();
    (*(*(v35 - 8) + 104))(v11, v34, v35);
    *v33 = sub_18B8390A8;
    v33[1] = 0;
    (*(v46 + 104))(v11, *MEMORY[0x1E69DBF60], v47);
    v36 = sub_18BC1F448();
    (*(*(v36 - 8) + 56))(v43, 1, 1, v36);
    v37 = v28;
    v38 = v48;
    sub_18BC1F4D8();
    sub_18BC1F3D8();
    (*(v49 + 8))(v38, v50);
    sub_18BC21458();
    v39 = v44;
    v52[3] = v44;
    v52[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v52);
    v41 = v42;
    (*(v42 + 16))(boxed_opaque_existential_0Tm, v17, v39);
    MEMORY[0x18CFFC900](v52);

    return (*(v41 + 8))(v17, v39);
  }

  return result;
}

void sub_18BA2C3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_18BA2B240(v14);
    if (*(v8 + 8))
    {
      v9 = *(a3 + 24);
      v10 = *(a3 + 32);
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      sub_18BC1E3F8();
      if (v11)
      {
        v12 = [v11 isOn];
      }

      else
      {
        v12 = 0;
      }

      v13 = sub_18B990914(v12, v9, v10);
      v7(v14, 0, v13);
    }

    else
    {
      (v7)(v14, 0);
    }
  }
}

uint64_t sub_18BA2C510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a3 + 16) == 1)
  {
    v6 = &qword_1EA9D3580;
    v7 = 0x1E69DC868;
  }

  else
  {
    v6 = &qword_1EA9D64E0;
    v7 = 0x1E69DC7F8;
  }

  sub_18B7B0AC0(0, v6, v7);
  sub_18BC1E3F8();
  v8 = sub_18BC212B8();

  return v8;
}

id sub_18BA2C734(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v5 = v4;
  v26[1] = a1;
  v8 = sub_18BC1FEA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1FF18();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_collectionView;
  (*(v9 + 104))(v11, *MEMORY[0x1E69DC248], v8, v14);
  sub_18BC1FEC8();
  sub_18B7B0AC0(0, &qword_1EA9D3560, 0x1E69DC808);
  v18 = sub_18BC214A8();
  (*(v13 + 8))(v16, v12);
  v19 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v18 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v5[v17] = v19;
  *&v5[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_dataSource] = 0;
  v20 = &v5[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_editHandler];
  *v20 = CGRectMake;
  v20[1] = 0;
  v21 = &v5[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  if (a2)
  {
    v22 = sub_18BC20B98();
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for SFFilterEditorViewController();
  v27.receiver = v5;
  v27.super_class = v23;
  v24 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, v22, a3);

  return v24;
}

id sub_18BA2CA1C(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_18BC1FEA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1FF18();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_collectionView;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC248], v5, v11);
  sub_18BC1FEC8();
  sub_18B7B0AC0(0, &qword_1EA9D3560, 0x1E69DC808);
  v15 = sub_18BC214A8();
  (*(v10 + 8))(v13, v9);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v15 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v3[v14] = v16;
  *&v3[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_dataSource] = 0;
  v17 = &v3[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_editHandler];
  *v17 = CGRectMake;
  v17[1] = 0;
  v18 = &v3[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
  v19 = type metadata accessor for SFFilterEditorViewController();
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v22.receiver = v3;
  v22.super_class = v19;
  v20 = objc_msgSendSuper2(&v22, sel_initWithCoder_, a1);

  if (v20)
  {
  }

  return v20;
}

id sub_18BA2CCA8(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SFFilterEditorViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_18BA2CD78()
{
  result = qword_1EA9D6490;
  if (!qword_1EA9D6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6490);
  }

  return result;
}

uint64_t sub_18BA2CDCC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *a2;
  v10 = *(a2 + 8);
  if (v6 == 1)
  {
    if (*&v4 | *&v5)
    {
      if (!*(a2 + 16) || !(*&v9 | *&v10))
      {
        return 0;
      }
    }

    else if (!*(a2 + 16) || *&v9 | *&v10)
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

    if (v4 != v9 || v5 != v10)
    {
      return 0;
    }
  }

  if (v7 == *(a2 + 24) && v8 == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8() & 1;
  }
}

uint64_t sub_18BA2CEB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4080, &qword_18BC40460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_18BA2CF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_18BC1E3F8();
    sub_18BC1E3F8();

    sub_18BC1E3F8();
  }

  return result;
}

double sub_18BA2CF70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_18BA2CFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v13 = *(a3 + 32);
  return sub_18BB7064C(a1, a2, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18BA2D024(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64D0, &qword_18BC45378) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D64C8, &qword_18BC45370) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v3 + ((*(v11 + 64) + v8 + v12) & ~v8);

  return sub_18BA2C510(a1, a2, a3, v3 + v9, v3 + v12, v13);
}

uint64_t sub_18BA2D15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18B994B7C(a1, a2, a3, v15);
  if (!v16)
  {
    return 0;
  }

  sub_18B988BAC(v15, &qword_1EA9D4078, &qword_18BC40458);
  if (*(a4 + 16))
  {
    v7 = sub_18B831970(a1, a2);
    if (v8)
    {
      v9 = *(a4 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      if (v11)
      {
        if (v11 == 1)
        {
          sub_18B7F3B64();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0, &qword_18BC40478);
          sub_18B996184();
          v13 = v10;
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64B0, &unk_18BC45360);
  sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA2D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18B994B7C(a1, a2, a3, v15);
  if (!v16)
  {
    return 0;
  }

  sub_18B988BAC(v15, &qword_1EA9D4078, &qword_18BC40458);
  if (*(a4 + 16))
  {
    v7 = sub_18B831970(a1, a2);
    if (v8)
    {
      v9 = *(a4 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      if (v11)
      {
        if (v11 == 1)
        {
          sub_18B7F3B64();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0, &qword_18BC40478);
          sub_18B996184();
          v13 = v10;
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64B0, &unk_18BC45360);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA2D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18B994B7C(a1, a2, a3, v15);
  if (!v16)
  {
    return 2;
  }

  sub_18B988BAC(v15, &qword_1EA9D4078, &qword_18BC40458);
  if (*(a4 + 16))
  {
    v7 = sub_18B831970(a1, a2);
    if (v8)
    {
      v9 = *(a4 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      if (v11)
      {
        if (v11 == 1)
        {
          sub_18B7F3B64();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0, &qword_18BC40478);
          sub_18B996184();
          v13 = v10;
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64B0, &unk_18BC45360);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_18BA2D5E0()
{
  result = qword_1EA9D6500;
  if (!qword_1EA9D6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6500);
  }

  return result;
}

double sub_18BA2D6E4(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
  v4 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState);
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 8);
  v6 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 16);
  result = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 24);
  v8 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
  v7 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 56);
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v11;
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = *(a1 + 144);
  v12 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v12;
  v13 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v13;
  v14 = v8 == v10;
  v15 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v15;
  if (!v14 || v7 != v9 || v4 != *a1 || v3 != *(a1 + 8) || v6 != *(a1 + 16) || result != *(a1 + 24))
  {
    return sub_18B7E0FE8();
  }

  return result;
}

void sub_18BA2D778()
{
  v1 = v0;
  v2 = sub_18BC1EDD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730, &unk_18BC42A20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18BC3E410;
  *(v6 + 32) = *(*(v1 + 192) + 16) - 1;
  sub_18BC1E1A8();
  MEMORY[0x18CFFA250](v6);
  sub_18B831DF0(0xD000000000000017, 0x800000018BC60750, 0, v20);

  (*(v3 + 8))(v5, v2);
  sub_18B7F4620(v20);
  CGRectGetMinX(v20[0]);
  v7 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 32);
  v8 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 40);
  v9 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
  Height = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 56);
  if (*(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 56) == 1)
  {
    v11 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 56);
    v12 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 32);
    v13 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 40);
    v14 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
    v21.size.width = sub_18B7D2C68();
    v21.size.height = v15;
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    MaxX = CGRectGetMaxX(v21);
    v22.origin.x = v12;
    v22.origin.y = v13;
    v22.size.width = v14;
    v22.size.height = v11;
    v17 = MaxX - CGRectGetMaxX(v22);
    v23.origin.x = v12;
    v23.origin.y = v13;
    v23.size.width = v14;
    v23.size.height = v11;
    MinY = CGRectGetMinY(v23);
    v24.origin.x = v12;
    v24.origin.y = v13;
    v24.size.width = v14;
    v24.size.height = v11;
    Width = CGRectGetWidth(v24);
    v25.origin.x = v12;
    v25.origin.y = v13;
    v25.size.width = v14;
    v25.size.height = v11;
    Height = CGRectGetHeight(v25);
    v7 = v17;
    v8 = MinY;
    v9 = Width;
  }

  CGRectGetMaxX(*&v7);
}

unint64_t sub_18BA2DA14()
{
  result = qword_1EA9D6530;
  if (!qword_1EA9D6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6530);
  }

  return result;
}

__n128 sub_18BA2DA68@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
  v3 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v3;
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = *(v2 + 144);
  v4 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v4;
  v5 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v5;
  result = *v2;
  v7 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_18BA2DAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90, &qword_18BC45500);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_18B82F1AC(a1, &v7 - v3);
  v5 = sub_18B831460(v4);
  sub_18B988BAC(v4, &unk_1EA9DBE90, &qword_18BC45500);
  return v5;
}

unint64_t sub_18BA2DBFC()
{
  result = qword_1EA9D6558;
  if (!qword_1EA9D6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6558);
  }

  return result;
}

double static WBSReaderTheme.allCases.getter()
{
  swift_beginAccess();
  sub_18BC1E3F8();
  return result;
}

double static WBSReaderTheme.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EA9D6560 = a1;

  return result;
}

unint64_t sub_18BA2DD54()
{
  result = qword_1EA9D6568;
  if (!qword_1EA9D6568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D6570, &qword_18BC45558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6568);
  }

  return result;
}

double sub_18BA2DDB8@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EA9D6560;
  sub_18BC1E3F8();
  return result;
}

id sub_18BA2DE08(uint64_t a1)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v14 - v4;
  v6 = &v1[OBJC_IVAR___SFInlinePopUpButton_valueText];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  *&v1[OBJC_IVAR___SFInlinePopUpButton_referenceFont] = 0;
  v7 = type metadata accessor for SFInlinePopUpButton();
  v15.receiver = v1;
  v15.super_class = v7;
  v8 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0, &unk_18BC44660);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18BC3E410;
  v10 = sub_18BC1FF28();
  v11 = MEMORY[0x1E69DC2B0];
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  v14[3] = v7;
  v14[0] = v8;
  v12 = v8;
  MEMORY[0x18CFFCA50](v9, v14, sel_updateValueText);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  [v12 setShowsMenuAsPrimaryAction_];
  sub_18BA2DF98(v2, v5);
  sub_18BC21828();

  return v12;
}

uint64_t sub_18BA2DF98@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E8, &unk_18BC56090);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22[-v3];
  v5 = sub_18BC217E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_18BC21628();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_18BC21808();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18BC217D8();
  v17 = [objc_opt_self() labelColor];
  sub_18BC21708();
  sub_18BC21678();
  (*(v10 + 104))(v12, *MEMORY[0x1E69DC508], v9);
  sub_18BC21638();
  v18 = MEMORY[0x1E69DC588];
  if ((v23 & 1) == 0)
  {
    v18 = MEMORY[0x1E69DC580];
  }

  (*(v6 + 104))(v8, *v18, v5);
  sub_18BC217F8();
  sub_18BC1FBD8();
  v19 = sub_18BC1FBC8();
  (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
  sub_18BC21738();
  sub_18BC216E8();
  v20 = v24;
  (*(v14 + 32))(v24, v16, v13);
  return (*(v14 + 56))(v20, 0, 1, v13);
}

void sub_18BA2E374()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52F8, &unk_18BC455C0);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - v6;
  v29 = sub_18BC1E7F8();
  v28[0] = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v28[1] = v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5300, &qword_18BC43170);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13;
  v15 = objc_opt_self();
  v16 = *MEMORY[0x1E69DDD00];
  v17 = [v1 traitCollection];
  v18 = [v15 preferredFontForTextStyle:v16 compatibleWithTraitCollection:v17];

  v19 = *&v1[OBJC_IVAR___SFInlinePopUpButton_referenceFont];
  if (v19)
  {
    v20 = v19;
    v21 = [v20 fontDescriptor];
    [v18 pointSize];
    v22 = [v15 fontWithDescriptor:v21 size:?];

    v18 = v22;
  }

  sub_18BC1E3F8();
  sub_18BC1E7E8();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v28[-2] = v24;
  swift_getKeyPath();
  sub_18B9EA798();
  sub_18BC1E7C8();

  (*(v28[0] + 8))(v9, v29);
  v32 = v18;
  v25 = v31;
  sub_18BC1E7D8();
  (*(v30 + 8))(v7, v25);
  sub_18BC1E768();
  v26 = sub_18BC1E758();
  (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
  sub_18BC21818();
  v27 = sub_18BC21808();
  if ((*(*(v27 - 8) + 48))(v4, 1, v27) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_18BC216C8();
    sub_18BC21828();
  }
}

id sub_18BA2E858(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SFInlinePopUpButton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_18BA2E900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65B0, &qword_18BC45678);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource);
  if (v5)
  {
    type metadata accessor for SFEditableProperty(0);
    sub_18BA31118();
    v6 = v5;
    sub_18BC1FB28();
    sub_18BC1FA88();
    v9 = 0;
    v10 = 1;
    sub_18BC1E3F8();
    sub_18BC1FA38();

    sub_18BC1FDC8();

    (*(v2 + 8))(v4, v1);
  }

  v7 = *(v0 + OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler);
  sub_18BC1E1A8();
  v7(v0);

  return result;
}

id sub_18BA2EACC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65B0, &qword_18BC45678);
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v51 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65C0, &qword_18BC45680);
  v60 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v64 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v51 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65C8, &qword_18BC45688);
  v68 = *(v59 - 8);
  v7 = v68[8];
  MEMORY[0x1EEE9AC00](v59);
  v66 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v21 = &v51 - v20;
  v22 = v1;
  result = [v1 view];
  if (result)
  {
    v24 = result;
    v25 = [objc_opt_self() systemBackgroundColor];
    [v24 setBackgroundColor_];

    v56 = *&v22[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_collectionView];
    [v56 setDelegate_];
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
    v26 = type metadata accessor for SFEditableProperty(0);
    v55 = v21;
    sub_18BC21298();
    v54 = v17;
    sub_18BC21298();
    swift_allocObject();
    v52 = v22;
    swift_unknownObjectUnownedInit();
    sub_18B7B0AC0(0, &qword_1EA9D64E0, 0x1E69DC7F8);
    v53 = v26;
    sub_18BC21298();
    v27 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v28 = swift_allocObject();
    v28[2] = sub_18BA3008C;
    v28[3] = 0;
    v28[4] = sub_18BA300E4;
    v28[5] = 0;
    v28[6] = sub_18BA31180;
    v28[7] = v27;
    v29 = v67;
    sub_18BC21298();
    v30 = v68;
    v31 = v68[2];
    v51 = v12;
    v32 = v12;
    v33 = v59;
    v31(v32, v21, v59);
    v34 = v60;
    v35 = v57;
    (*(v60 + 16))(v64, v69, v57);
    v31(v65, v29, v33);
    v31(v66, v17, v33);
    v36 = *(v30 + 80);
    v37 = (v36 + 16) & ~v36;
    v38 = (v7 + *(v34 + 80) + v37) & ~*(v34 + 80);
    v39 = (v58 + v36 + v38) & ~v36;
    v40 = (v7 + v36 + v39) & ~v36;
    v41 = swift_allocObject();
    v42 = v30[4];
    v42(v41 + v37, v51, v33);
    (*(v34 + 32))(v41 + v38, v64, v35);
    v42(v41 + v39, v65, v33);
    v42(v41 + v40, v66, v33);
    v43 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D65D0, &qword_18BC45690));
    v44 = v56;
    v45 = sub_18BC1FCE8();
    v46 = *&v52[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource];
    *&v52[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource] = v45;
    v47 = v45;

    sub_18BA31118();
    v48 = v61;
    sub_18BC1FB28();
    v49 = v63;
    sub_18BC1FA88();
    v70 = 0;
    v71 = 1;
    sub_18BC1E3F8();
    sub_18BC1FA38();

    sub_18BC1FDC8();

    (*(v62 + 8))(v48, v49);
    v50 = v68[1];
    v50(v67, v33);
    (*(v34 + 8))(v69, v35);
    v50(v54, v33);
    return (v50)(v55, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA2F26C(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v39 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v33 - v6;
  v7 = sub_18BC1F568();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1F4E8();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1FA08();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  sub_18BC1F9F8();
  v18 = [v17 name];
  sub_18BC20BD8();

  sub_18BC1F9B8();
  v19 = [v17 BOOLValue];
  v20 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
  [v20 setOn_];
  sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
  v21 = swift_allocObject();
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectUnownedInit();

  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  *(v23 + 24) = v21;
  v24 = v17;
  v25 = sub_18BC215E8();
  [v20 addAction:v25 forControlEvents:4096];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  sub_18BC1F598();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700, &unk_18BC459B0) + 48)];
  v27 = *MEMORY[0x1E69DBF28];
  v28 = sub_18BC1F418();
  (*(*(v28 - 8) + 104))(v9, v27, v28);
  *v26 = sub_18B8390A8;
  v26[1] = 0;
  (*(v34 + 104))(v9, *MEMORY[0x1E69DBF60], v35);
  v29 = sub_18BC1F448();
  (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
  v30 = v20;
  sub_18BC1F4D8();
  sub_18BC1F3D8();
  (*(v36 + 8))(v12, v37);
  sub_18BC21458();
  v40[3] = v13;
  v40[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v40);
  (*(v14 + 16))(boxed_opaque_existential_0Tm, v16, v13);
  MEMORY[0x18CFFC900](v40);

  return (*(v14 + 8))(v16, v13);
}

void sub_18BA2F7DC(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 sender])
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
    sub_18B7B1AD4(&v15, &v16);
    sub_18B7B0AC0(0, &unk_1EA9D65E0, 0x1E69DCFD0);
    swift_dynamicCast();
    v4 = [v14 isOn];
    v5 = a2 + OBJC_IVAR___SFEditableProperty_value;
    if (!*(a2 + OBJC_IVAR___SFEditableProperty_value + 32))
    {
      v6 = v4;
      v7 = *v5;
      v8 = *(v5 + 8);
      v9 = *(v5 + 16);
      v10 = *(v5 + 24);
      *(v5 + 32) = 0;
      *v5 = v6;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      sub_18B9882E8(v7, v8, v9, v10, 0);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v12 = *&Strong[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
      sub_18BC1E1A8();

      v13 = swift_unknownObjectUnownedLoadStrong();
      v12();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BA2F964(uint64_t a1, uint64_t a2, char **a3)
{
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = &v26 - v5;
  v6 = sub_18BC1F538();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_18BC1F418();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1FA08();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  sub_18BC1F9F8();
  v17 = [v16 name];
  sub_18BC20BD8();

  sub_18BC1F9B8();
  v18 = *&v16[OBJC_IVAR___SFEditableProperty_value + 8];
  v19 = *&v16[OBJC_IVAR___SFEditableProperty_value + 16];
  v20 = *&v16[OBJC_IVAR___SFEditableProperty_value + 24];
  v21 = v16[OBJC_IVAR___SFEditableProperty_value + 32];
  v31 = *&v16[OBJC_IVAR___SFEditableProperty_value];
  v32 = v18;
  v33 = v19;
  v34 = v20;
  LOBYTE(v35) = v21;
  sub_18B9882C8(v31, v18, v19, v20, v21);
  sub_18BB33854();
  sub_18B9882E8(v31, v32, v33, v34, v35);
  sub_18BC1F7E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  sub_18BC1F598();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  v22 = v26;
  (*(v9 + 104))(v11, *MEMORY[0x1E69DBF28], v26);
  v23 = sub_18BC1F448();
  (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
  sub_18BC1F528();
  sub_18BC1F4C8();
  (*(v28 + 8))(v8, v29);
  (*(v9 + 8))(v11, v22);
  sub_18BC21458();
  v34 = v12;
  v35 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v31);
  (*(v13 + 16))(boxed_opaque_existential_0Tm, v15, v12);
  MEMORY[0x18CFFC900](&v31);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_18BA2FDB4(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = *a3 + OBJC_IVAR___SFEditableProperty_value;
  if (v5[32] == 2)
  {
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    v8 = *(v5 + 1);
    v9 = [*a3 name];
    v10 = sub_18BC20BD8();
    v12 = v11;

    [v4 floatValue];
    v14 = v13;
    v15 = swift_allocObject();
    Strong = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectUnownedInit();

    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v15;
    *&v24 = v8;
    *(&v24 + 1) = v7;
    *&v25 = v6;
    *(&v25 + 1) = v10;
    *&v26 = v12;
    *(&v26 + 1) = v14;
    *&v27 = sub_18BA31304;
    *(&v27 + 1) = v17;
    v23[3] = &type metadata for SFSliderCellContentConfiguration;
    v23[4] = sub_18BA2D5E0();
    v18 = swift_allocObject();
    v23[0] = v18;
    v19 = v25;
    v18[1] = v24;
    v18[2] = v19;
    v20 = v27;
    v18[3] = v26;
    v18[4] = v20;
    v21 = v4;
    sub_18BA2D634(&v24, v28);
    MEMORY[0x18CFFC900](v23);
    v28[0] = v8;
    v28[1] = v7;
    v28[2] = v6;
    v28[3] = v10;
    v28[4] = v12;
    v28[5] = v14;
    v28[6] = sub_18BA31304;
    v28[7] = v17;
    return sub_18BA2D690(v28);
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

void sub_18BA2FF94(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a1 + OBJC_IVAR___SFEditableProperty_value;
  if (*(a1 + OBJC_IVAR___SFEditableProperty_value + 32) == 2)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *v3;
    v7 = *(v3 + 8);
    *v3 = a3;
    sub_18B9882E8(v6, v7, v4, v5, 2);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v9 = *&Strong[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
    sub_18BC1E1A8();

    v10 = swift_unknownObjectUnownedLoadStrong();
    v9();
  }

  else
  {
    sub_18BC21CF8();
    __break(1u);
  }
}

uint64_t sub_18BA3008C(id *a1)
{
  v1 = [*a1 name];
  v2 = sub_18BC20BD8();

  return v2;
}

id sub_18BA300E4(void *a1)
{
  v1 = *a1 + OBJC_IVAR___SFEditableProperty_value;
  if (*(v1 + 32) != 3)
  {
    return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_18BA30134(void *a1, void *a2, uint64_t a3)
{
  v3 = *a1 + OBJC_IVAR___SFEditableProperty_value;
  if (*(v3 + 32) == 3)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
    *v3 = a2;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    sub_18B9882E8(v5, v6, v7, v8, 3);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v10 = *&Strong[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
    v11 = a2;
    sub_18BC1E1A8();

    v12 = swift_unknownObjectUnownedLoadStrong();
    v10();
  }

  else
  {
    sub_18BC21CF8();
    __break(1u);
  }
}

uint64_t sub_18BA30244(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a3;
  if (*(*a3 + OBJC_IVAR___SFEditableProperty_value + 32) > 1u)
  {
    if (*(*a3 + OBJC_IVAR___SFEditableProperty_value + 32) == 2)
    {
      v8 = &qword_1EA9D64E0;
      v9 = 0x1E69DC7F8;
    }

    else
    {
      v8 = &qword_1EA9D3580;
      v9 = 0x1E69DC868;
    }
  }

  else
  {
    v8 = &qword_1EA9D3580;
    v9 = 0x1E69DC868;
  }

  sub_18B7B0AC0(0, v8, v9);
  type metadata accessor for SFEditableProperty(0);
  v10 = v7;
  v11 = sub_18BC212B8();

  return v11;
}

double sub_18BA303B0(char a1)
{
  v3 = sub_18BC1EDD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFPropertiesEditorViewController();
  v21.receiver = v1;
  v21.super_class = v7;
  objc_msgSendSuper2(&v21, sel_viewWillAppear_, a1 & 1);
  v8 = *&v1[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_collectionView];
  v9 = [v8 indexPathsForSelectedItems];
  if (v9)
  {
    v11 = v9;
    v12 = sub_18BC20D98();

    v13 = *(v12 + 16);
    if (v13)
    {
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v19 = v12;
      v20 = v15;
      v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v17 = *(v14 + 56);
      do
      {
        v20(v6, v16, v3);
        v18 = sub_18BC1ED68();
        (*(v14 - 8))(v6, v3);
        [v8 deselectItemAtIndexPath:v18 animated:{a1 & 1, v19}];

        v16 += v17;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

double sub_18BA306BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler);
    v5 = Strong;
    sub_18BC1E1A8();
    v4(v5);
  }

  return result;
}

id sub_18BA30838(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v5 = v4;
  v25[1] = a1;
  v8 = sub_18BC1FEA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1FF18();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_collectionView;
  (*(v9 + 104))(v11, *MEMORY[0x1E69DC248], v8, v14);
  sub_18BC1FEC8();
  sub_18B7B0AC0(0, &qword_1EA9D3560, 0x1E69DC808);
  v18 = sub_18BC214A8();
  (*(v13 + 8))(v16, v12);
  v19 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v18 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v5[v17] = v19;
  *&v5[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource] = 0;
  v20 = &v5[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
  *v20 = CGRectMake;
  v20[1] = 0;
  *&v5[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_properties] = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v21 = sub_18BC20B98();
  }

  else
  {
    v21 = 0;
  }

  v22 = type metadata accessor for SFPropertiesEditorViewController();
  v26.receiver = v5;
  v26.super_class = v22;
  v23 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, v21, a3);

  return v23;
}

id sub_18BA30B20(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_18BC1FEA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1FF18();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_collectionView;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC248], v5, v11);
  sub_18BC1FEC8();
  sub_18B7B0AC0(0, &qword_1EA9D3560, 0x1E69DC808);
  v15 = sub_18BC214A8();
  (*(v10 + 8))(v13, v9);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v15 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v3[v14] = v16;
  *&v3[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource] = 0;
  v17 = &v3[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
  *v17 = CGRectMake;
  v17[1] = 0;
  *&v3[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_properties] = MEMORY[0x1E69E7CC0];
  v18 = type metadata accessor for SFPropertiesEditorViewController();
  v21.receiver = v3;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, sel_initWithCoder_, a1);

  if (v19)
  {
  }

  return v19;
}

id sub_18BA30DAC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SFPropertiesEditorViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18BA30E74(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource);
  if (v2)
  {
    v3 = v2;
    sub_18BC1FD18();

    if (v10)
    {
      v4 = *&v10[OBJC_IVAR___SFEditableProperty_value];
      v5 = *&v10[OBJC_IVAR___SFEditableProperty_value + 8];
      v6 = *&v10[OBJC_IVAR___SFEditableProperty_value + 16];
      v7 = *&v10[OBJC_IVAR___SFEditableProperty_value + 24];
      v8 = v10[OBJC_IVAR___SFEditableProperty_value + 32];
      sub_18B9882C8(v4, v5, v6, v7, v10[OBJC_IVAR___SFEditableProperty_value + 32]);

      if (v8 == 1)
      {
        sub_18B9882E8(v4, v5, v6, v7, 1);
        return 1;
      }

      sub_18B9882E8(v4, v5, v6, v7, v8);
    }
  }

  return 0;
}

void sub_18BA30F48(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource];
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    sub_18BC1FD18();

    if (v14)
    {
      if (v14[OBJC_IVAR___SFEditableProperty_value + 32] == 1)
      {
        v5 = *&v14[OBJC_IVAR___SFEditableProperty_value];
        type metadata accessor for SFPropertiesEditorViewController();
        v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_18BC1E3F8();
        v7 = [v6 init];
        *&v7[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_properties] = v5;

        sub_18BA2E900();
        v8 = v7;
        v9 = [v14 name];
        if (!v9)
        {
          sub_18BC20BD8();
          v9 = sub_18BC20B98();
        }

        [v8 setTitle_];

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = &v8[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
        *v11 = sub_18BA31110;
        v11[1] = v10;

        v12 = [v3 navigationController];
        if (!v12)
        {

          return;
        }

        v13 = v12;
        [v12 pushViewController:v8 animated:1];
      }
    }
  }
}

unint64_t sub_18BA31118()
{
  result = qword_1EA9D65B8;
  if (!qword_1EA9D65B8)
  {
    type metadata accessor for SFEditableProperty(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D65B8);
  }

  return result;
}

uint64_t sub_18BA311BC(uint64_t a1, uint64_t a2, void **a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65C8, &qword_18BC45688) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65C0, &qword_18BC45680) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v8 + v12) & ~v8;

  return sub_18BA30244(a1, a2, a3, v3 + v9, v3 + v12, v3 + v13, v3 + ((v10 + v8 + v13) & ~v8));
}

uint64_t objectdestroy_27Tm()
{

  return swift_deallocObject();
}

uint64_t sub_18BA31354(uint64_t a1, uint64_t a2)
{
  v3 = _s4ItemVMa_0(0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = &v7[*(v4 + 40)];
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_18B80DF38(v10, v7);
      v15 = *v9;
      v14 = *(v9 + 1);
      sub_18BC1E3F8();
      sub_18B813CBC(v7);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_18B7B6718(0, *(v12 + 2) + 1, 1, v12);
        }

        v17 = *(v12 + 2);
        v16 = *(v12 + 3);
        if (v17 >= v16 >> 1)
        {
          v12 = sub_18B7B6718((v16 > 1), v17 + 1, 1, v12);
        }

        *(v12 + 2) = v17 + 1;
        v13 = &v12[16 * v17];
        *(v13 + 4) = v15;
        *(v13 + 5) = v14;
      }

      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_18BBA32A8(v12);

  return v18;
}

void sub_18BA314F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v44 = _s4ItemVMa_0(0);
  v46 = *(v44 - 1);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D65F0, &qword_18BC46530);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v45 = (&v39 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6B10, &qword_18BC456F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v39 - v14);
  v42 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v47 = a3;
  v50 = *(a3 + 16);
  v19 = (v7 + 56);
  v20 = (v7 + 48);
  v21 = 1;
  while (1)
  {
    v43 = v21;
    v22 = v17;
    while (1)
    {
      v17 = v22;
      v49 = v16;
      v51 = v21;
      if (v18 == v50)
      {
        v24 = 1;
        v18 = v50;
      }

      else
      {
        if (v18 >= v50)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (__OFADD__(v18, 1))
        {
          goto LABEL_39;
        }

        v25 = v45;
        v26 = v47 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v18;
        v27 = *(v6 + 48);
        *v45 = v18;
        sub_18B80DF38(v26, v25 + v27);
        sub_18B7CF39C(v25, v11, &unk_1EA9D65F0, &qword_18BC46530);
        v24 = 0;
        ++v18;
      }

      (*v19)(v11, v24, 1, v6, v13);
      sub_18B7CF39C(v11, v15, &unk_1EA9D6B10, &qword_18BC456F8);
      if ((*v20)(v15, 1, v6) == 1)
      {
        goto LABEL_34;
      }

      v48 = *v15;
      sub_18B80DF9C(v15 + *(v6 + 48), v5);
      if (*v5 != *v52)
      {
        goto LABEL_4;
      }

      v28 = v5[1];
      if (v28 == v52[1])
      {
        break;
      }

      sub_18B813CBC(v5);
      if (v28)
      {
        goto LABEL_31;
      }

LABEL_5:
      v16 = 0;
      v22 = 0;
      v21 = 1;
      if (v17)
      {
        goto LABEL_34;
      }
    }

    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    v30 = v52;
    if ((updated & 1) == 0)
    {
      goto LABEL_4;
    }

    v31 = v44[7];
    v32 = *&v52[v31];
    if (!*&v5[v31])
    {
      if (!v32)
      {
        goto LABEL_20;
      }

LABEL_4:
      v23 = v5[1];
      sub_18B813CBC(v5);
      if (v23)
      {
        goto LABEL_31;
      }

      goto LABEL_5;
    }

    if (!v32)
    {
      goto LABEL_4;
    }

    v40 = *&v5[v31];
    v41 = sub_18B7E7DC4();
    v39 = v32;
    v40 = v40;
    v33 = sub_18BC215C8();

    v30 = v52;
    if ((v33 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_20:
    if (v5[v44[8]] != v30[v44[8]] || v5[v44[9]] != v30[v44[9]])
    {
      goto LABEL_4;
    }

    v34 = v44[10];
    v35 = &v5[v34];
    v36 = *&v5[v34 + 8];
    v37 = &v30[v34];
    v38 = *(v37 + 1);
    if (!v36)
    {
      if (!v38)
      {
        goto LABEL_29;
      }

      goto LABEL_4;
    }

    if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_18BC21FD8() & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_29:
    sub_18B813CBC(v5);
    if ((v28 & 1) == 0)
    {
      break;
    }

    v17 = 1;
LABEL_31:
    v21 = 0;
    v16 = v49;
    if (v51)
    {
      v16 = v48;
    }

    v42 = v48;
  }

LABEL_34:
  if ((v51 | v43))
  {
    return;
  }

  if (__OFADD__(v42, 1))
  {
    goto LABEL_40;
  }

  if (v42 + 1 >= v49)
  {
    return;
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_18BA319A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return sub_18B7E8B40(*(a1 + 1), *(a2 + 1));
  }
}

uint64_t sub_18BA31A2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380, &unk_18BC46510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari17BrowsingAssistantC7SectionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18BA31AC8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA31B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_18BA31B70(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_18BA31BA0()
{
  v1 = *v0;
  sub_18BC22158();
  if (v1)
  {
    MEMORY[0x18CFFD660](0);
    sub_18BC20BD8();
    sub_18BC20C28();

    sub_18BC20C28();
  }

  else
  {
    MEMORY[0x18CFFD660](1);
  }

  return sub_18BC221A8();
}

uint64_t sub_18BA31C3C(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x18CFFD660](1);
  }

  MEMORY[0x18CFFD660](0);
  sub_18BC20BD8();
  sub_18BC20C28();

  return sub_18BC20C28();
}

uint64_t sub_18BA31CE8(uint64_t a1)
{
  v2 = *v1;
  sub_18BC22158();
  if (v2)
  {
    MEMORY[0x18CFFD660](0);
    sub_18BC20BD8();
    sub_18BC20C28();

    sub_18BC20C28();
  }

  else
  {
    MEMORY[0x18CFFD660](1);
  }

  return sub_18BC221A8();
}

uint64_t sub_18BA31D80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return v2 == 0;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  v7 = sub_18BC20BD8();
  v9 = v8;
  if (v7 == sub_18BC20BD8() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_18BC21FD8();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_18BC21FD8();
}

unint64_t sub_18BA31EB8()
{
  result = qword_1EA9D6668;
  if (!qword_1EA9D6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6668);
  }

  return result;
}

uint64_t sub_18BA31F0C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2 == 2)
  {
    if (a4 == 2 && a1 == a3)
    {
      return 1;
    }
  }

  else if (a2 == 1)
  {
    if (a4 == 1 && a1 == a3)
    {
      return 1;
    }
  }

  else if (!a2 && !a4 && a1 == a3)
  {
    return 1;
  }

  return 0;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18BA31FA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18BA31FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18BA32054(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_18BA320A0(&v5, &v7) & 1;
}

uint64_t sub_18BA320A0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return (*(a1 + 40) ^ *(a2 + 40) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

char *sub_18BA321C0(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v40 - v10;
  v11 = sub_18BC1F568();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18BC1F4E8();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18BC1FA08();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____SFBrowsingAssistantSwitchCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = &v4[OBJC_IVAR____SFBrowsingAssistantSwitchCell_title];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch;
  *&v4[v22] = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
  v23 = _s10SwitchCellCMa();
  v48.receiver = v4;
  v48.super_class = v23;
  v24 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC1F9A8();
  v25 = [objc_opt_self() labelColor];
  v26 = sub_18BC1F8A8();
  sub_18BC1F858();
  v26(v47, 0);
  v41 = v17;
  v47[3] = v17;
  v47[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v47);
  (*(v18 + 16))(boxed_opaque_existential_0Tm, v20, v17);
  v28 = v24;
  MEMORY[0x18CFFC900](v47);

  v29 = OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch;
  v30 = *&v28[OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch];
  sub_18BA32BB0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v30;
  v32 = sub_18BC215E8();
  [v31 addAction:v32 forControlEvents:4096];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  sub_18BC1F598();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  v33 = *&v28[v29];
  v34 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700, &unk_18BC459B0) + 48)];
  v35 = *MEMORY[0x1E69DBF28];
  v36 = sub_18BC1F418();
  (*(*(v36 - 8) + 104))(v13, v35, v36);
  *v34 = sub_18B8390A8;
  v34[1] = 0;
  (*(v42 + 104))(v13, *MEMORY[0x1E69DBF60], v43);
  v37 = sub_18BC1F448();
  (*(*(v37 - 8) + 56))(v46, 1, 1, v37);
  v38 = v33;
  sub_18BC1F4D8();
  sub_18BC1F3D8();
  (*(v44 + 8))(v16, v45);
  sub_18BC21458();

  (*(v18 + 8))(v20, v41);
  return v28;
}

void sub_18BA32794(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_18BA0F1E4(v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void *sub_18BA32838(__n128 a1)
{
  v2 = v1;
  v3 = sub_18BC1FA08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18BC1F708();
  v8 = _s10SwitchCellCMa();
  v14.receiver = v2;
  v14.super_class = v8;
  objc_msgSendSuper2(&v14, sel__bridgedUpdateConfigurationUsingState_, v7);

  result = MEMORY[0x18CFFC8F0](&v11);
  if (v12)
  {
    sub_18B7C3FA4(&v11, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D66F0, &unk_18BC42638);
    swift_dynamicCast();
    sub_18BC1E3F8();
    sub_18BC1F9B8();
    v13[3] = v3;
    v13[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v13);
    (*(v4 + 16))(boxed_opaque_existential_0Tm, v6, v3);
    MEMORY[0x18CFFC900](v13);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_18BA32AF8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s10SwitchCellCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_18BA32BB0()
{
  result = qword_1EA9D52D0;
  if (!qword_1EA9D52D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D52D0);
  }

  return result;
}

uint64_t SFFluidTabOverviewSectionWrappingMode.hashValue.getter()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

uint64_t SFFluidTabOverviewSupplementary.hashValue.getter()
{
  sub_18BC22158();
  sub_18B833990(v0, &v5);
  if (*(&v6 + 1) > 1)
  {
    if (*(&v6 + 1) == 2)
    {
      v1 = 3;
      goto LABEL_11;
    }

    if (*(&v6 + 1) == 3)
    {
      v1 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(&v6 + 1))
    {
      v1 = 0;
      goto LABEL_11;
    }

    if (*(&v6 + 1) == 1)
    {
      v1 = 1;
LABEL_11:
      MEMORY[0x18CFFD660](v1);
      return sub_18BC221A8();
    }
  }

  v3[0] = v5;
  v3[1] = v6;
  v4 = v7;
  MEMORY[0x18CFFD660](2);
  sub_18BC21A58();
  sub_18B831014(v3);
  return sub_18BC221A8();
}

uint64_t sub_18BA32D9C(uint64_t a1)
{
  sub_18BC22158();
  sub_18B833990(v1, &v6);
  if (*(&v7 + 1) > 1)
  {
    if (*(&v7 + 1) == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (*(&v7 + 1) == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(&v7 + 1))
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (*(&v7 + 1) == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x18CFFD660](v2);
      return sub_18BC221A8();
    }
  }

  v4[0] = v6;
  v4[1] = v7;
  v5 = v8;
  MEMORY[0x18CFFD660](2);
  sub_18BC21A58();
  sub_18B831014(v4);
  return sub_18BC221A8();
}

uint64_t SFFluidCollectionView.TabOverviewGridLayout.InsertionAnimationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

uint64_t sub_18BA32F00(uint64_t a1)
{
  sub_18BC22158();
  SFFluidCollectionView.TabOverviewGridLayout.InsertionAnimationStyle.hash(into:)();
  return sub_18BC221A8();
}

uint64_t (*sub_18BA33144(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_18BA6F928(v3);
  return sub_18BA331B8;
}

void sub_18BA331B8(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_18B85CC2C();
  }

  free(v3);
}

double sub_18BA33214(uint64_t a1)
{
  *(v1 + 608) = a1;

  return result;
}

uint64_t (*sub_18BA33224(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_18B813A04();
  return sub_18BA3326C;
}

double sub_18BA3326C(void *a1)
{
  *(a1[1] + 608) = *a1;

  return result;
}

void (*sub_18BA3327C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + 616);
  return sub_18BA33308;
}

void sub_18BA33308(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  swift_beginAccess();
  v5 = *(v4 + 616);
  *(v4 + 616) = v3;
  sub_18B8658C4(v5);

  free(v2);
}

void sub_18BA33378(double a1)
{
  v3 = swift_beginAccess();
  v4 = v1[78];
  v1[78] = a1;
  if ((*(*v1 + 872))(v3) != v4)
  {
    sub_18B8657E0();
  }
}

void (*sub_18BA33400(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 624);
  return sub_18BA3348C;
}

void sub_18BA3348C(uint64_t a1)
{
  v1 = *a1;
  sub_18BA33378(*(*a1 + 24));

  free(v1);
}

void sub_18BA33594(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_18BA335E0(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18BA33670;
}

void sub_18BA33670(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_18BA33718(double a1, double a2, double a3, double a4)
{
  v4[82] = a1;
  v4[83] = a2;
  v4[84] = a3;
  v4[85] = a4;
}

void sub_18BA3372C(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (v3)
  {
    v4 = v3;
    if (sub_18B81280C())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 120))(v4, v1, a1, ObjectType, v6);
      swift_unknownObjectRelease();

      if (v8 != 0.0)
      {
        return;
      }
    }

    else
    {
    }
  }

  v9 = *(*v1 + 800);

  v9();
}

void sub_18BA3384C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 600);
  v8 = v6[76];
  v9 = v6[77];
  v10 = v6[78];
  v11 = sub_18B8103B0();
  v43 = v7;
  v44 = v8;
  *&v45 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v45 + 1) = v9;
  *&v46 = v10;
  *(&v46 + 1) = v11;
  v35 = type metadata accessor for SFFluidCollectionView.Element(0, &v43);
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v32 - v12;
  v34 = *(a2 + 16);
  type metadata accessor for UIEdgeInsets(0);
  v36 = v14;
  sub_18B85E0CC(v7, v8, &type metadata for SFFluidTabOverviewSupplementary, v9, v10, v11, 0x496E6F6974636573, &v43, 0xED0000737465736ELL);
  v15 = v43;
  v16 = v44;
  (*(*(v7 - 8) + 16))(v13, a1, v7);
  v33 = v45;
  v32 = v46;
  v17 = v35;
  swift_storeEnumTagMultiPayload();
  v42 = v34;
  v39[0] = v15;
  v39[1] = v16;
  v40 = v33;
  v41 = v32;
  v38[0] = v7;
  v38[1] = v8;
  v38[2] = &type metadata for SFFluidTabOverviewSupplementary;
  v38[3] = v9;
  v38[4] = v10;
  v38[5] = v11;
  v18 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics(0, v38);
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(v39, v13, v18, v36, v38);

  v19 = (*(v37 + 8))(v13, v17);
  if ((*(*v3 + 432))(v19))
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    v23 = (*(v21 + 16))(ObjectType, v21);
    swift_unknownObjectRelease();
    [v23 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v47.origin.x = v25;
    v47.origin.y = v27;
    v47.size.width = v29;
    v47.size.height = v31;
    CGRectGetWidth(v47);
  }

  else
  {
    sub_18BC21CF8();
    __break(1u);
  }
}

id sub_18BA33C24@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v64 = a1;
  v59 = a3;
  v6 = *v3;
  v7 = *(*v3 + 600);
  v8 = *(*v3 + 608);
  v9 = *(*v3 + 616);
  v10 = *(v6 + 624);
  v11 = sub_18B8103B0();
  *v66 = v7;
  *&v66[8] = v8;
  v60 = v8;
  *&v66[16] = &type metadata for SFFluidTabOverviewSupplementary;
  *&v66[24] = v9;
  *&v66[32] = v10;
  *&v67 = v11;
  v61 = type metadata accessor for SFFluidCollectionView.Element(0, v66);
  v65 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v52 - v12;
  v77 = *a2;
  v58 = *(a2 + 2);
  v14 = v58;
  v15 = *(a2 + 40);
  v74 = *(a2 + 24);
  v75 = v15;
  v76 = *(a2 + 56);
  *v66 = 0;
  v16 = v9;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(1500408173, 0xE400000000000000, v66, v7, v8, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E7DE0], v9, &v72, v10, v11);
  v19 = v72;
  v18 = v19 >> 64;
  v17 = v19;
  v20 = v73;
  v21 = *(v7 - 8);
  v62 = *(v21 + 16);
  v63 = v21 + 16;
  v62(v13, v64, v7);
  v22 = v61;
  swift_storeEnumTagMultiPayload();
  v71 = v14;
  v69 = __PAIR128__(v18, v17);
  v70 = v20;
  *v66 = v7;
  v23 = v60;
  *&v66[8] = v60;
  *&v66[16] = &type metadata for SFFluidTabOverviewSupplementary;
  *&v66[24] = v16;
  *&v66[32] = v10;
  *&v67 = v11;
  v57 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics(0, v66);
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v69, v13, v57, MEMORY[0x1E69E7DE0], v66);

  v24 = *(v65 + 8);
  v65 += 8;
  v56 = v24;
  v25 = v22;
  v24(v13, v22);
  v26 = *v66;
  *&v72 = 0;
  v54 = v11;
  v55 = v10;
  v53 = v16;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x6548726564616568, 0xEC00000074686769, &v72, v7, v23, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E7DE0], v16, v66, v10, v11);
  v27 = *v66;
  v28 = *&v66[16];
  v29 = v64;
  v62(v13, v64, v7);
  swift_storeEnumTagMultiPayload();
  v30 = v58;
  *&v69 = v58;
  v72 = v27;
  v73 = v28;
  v31 = v59;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v72, v13, v57, MEMORY[0x1E69E7DE0], &v71);

  v32 = v56;
  v56(v13, v25);
  Height = v71;
  *v66 = v77;
  *&v66[16] = v30;
  *&v66[24] = v74;
  v67 = v75;
  v68 = v76;
  sub_18BA3384C(v29, v66);
  v35 = v34;
  v37 = v36;
  memset(v66, 0, sizeof(v66));
  v62(v13, v29, v7);
  v38 = v61;
  swift_storeEnumTagMultiPayload();
  (*(*v4 + 584))(v66, v13);
  v32(v13, v38);
  v39 = sub_18B833D9C(v66);
  result = (*(*v4 + 456))(v39);
  if (result)
  {
    v41 = result;
    v42 = [result effectiveUserInterfaceLayoutDirection];
    [v41 bounds];
    if (v42)
    {
      MaxX = CGRectGetMaxX(*&v43);
      v78.origin.x = v35;
      v78.origin.y = v26;
      v78.size.width = v37;
      v78.size.height = Height;
      v48 = MaxX - CGRectGetMaxX(v78);
      v79.origin.x = v35;
      v79.origin.y = v26;
      v79.size.width = v37;
      v79.size.height = Height;
      MinY = CGRectGetMinY(v79);
      v80.origin.x = v35;
      v80.origin.y = v26;
      v80.size.width = v37;
      v80.size.height = Height;
      Width = CGRectGetWidth(v80);
      v81.origin.x = v35;
      v81.origin.y = v26;
      v81.size.width = v37;
      v81.size.height = Height;
      Height = CGRectGetHeight(v81);
      v35 = v48;
      v26 = MinY;
      v37 = Width;
    }

    *v66 = v7;
    *&v66[8] = v60;
    *&v66[16] = &type metadata for SFFluidTabOverviewSupplementary;
    *&v66[24] = v53;
    *&v66[32] = v55;
    *&v67 = v54;
    v51 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v66);
    result = SFFluidCollectionView.LayoutAttributes.frame.setter(v51, v35, v26, v37, Height);
    *(v31 + v51[21]) = 0xBFE0000000000000;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA34320()
{
  v1 = (*(*v0 + 456))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 traitCollection];

    v4 = [v3 preferredContentSizeCategory];
    LOBYTE(v3) = sub_18BC21438();

    v5 = v0[648] ^ v3;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_18BA343D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a1;
  v40 = a2;
  v4 = *v2;
  v5 = *(v4 + 600);
  v6 = *(v4 + 608);
  v7 = *(v4 + 616);
  v8 = *(v4 + 624);
  v47[0] = v5;
  v47[1] = v6;
  v47[2] = &type metadata for SFFluidTabOverviewSupplementary;
  v47[3] = v7;
  v47[4] = v8;
  v39 = sub_18B8103B0();
  v47[5] = v39;
  v9 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v47);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v36 = &v31 - v12;
  v13 = (*(v4 + 456))(v11);
  if (!v13)
  {
    return (*(v10 + 56))(v40, 1, 1, v9);
  }

  v37 = v13;
  sub_18BA6FE64(v46);
  memcpy(v47, v46, 0x139uLL);
  if (sub_18B81CA10(v47) == 1 || (*&v43 = v5, *(&v43 + 1) = v6, *&v44 = &type metadata for SFFluidTabOverviewSupplementary, *(&v44 + 1) = v7, v14 = v39, *&v45[0] = v8, *(&v45[0] + 1) = v39, v31 = type metadata accessor for SFFluidCollectionView.DataSource.Transaction(0, &v43), v15 = *(v31 - 8), v35 = v8, v16 = v15, (*(v15 + 16))(&v43, &v47[16], v31), *&v43 = v5, *(&v43 + 1) = v6, *&v44 = &type metadata for SFFluidTabOverviewSupplementary, *(&v44 + 1) = v7, *&v45[0] = v35, *(&v45[0] + 1) = v14, type metadata accessor for SFFluidCollectionView.Update(255, &v43), v17 = sub_18BC21848(), (*(*(v17 - 8) + 8))(v46, v17), v33 = v10, v34 = v7, v32 = v9, v18 = *(v16 + 8), sub_18BC1E3F8(), sub_18BC1E3F8(), sub_18BC1E3F8(), v18(&v47[16], v31), v19 = v5, , v9 = v32, v10 = v33, , LOBYTE(v14) = sub_18BC210B8(), v20 = v34, , (v14 & 1) == 0))
  {

    return (*(v10 + 56))(v40, 1, 1, v9);
  }

  if (sub_18B81280C())
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    v24 = v38;
    (*(v22 + 24))(&v43, v37, v3, v38, ObjectType, v22);
    swift_unknownObjectRelease();
    LODWORD(v31) = v43;
  }

  else
  {
    LODWORD(v31) = 1;
    v24 = v38;
  }

  sub_18B81D198(v41);
  *&v43 = v19;
  *(&v43 + 1) = v6;
  *&v44 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v44 + 1) = v20;
  v26 = v35;
  *&v45[0] = v35;
  *(&v45[0] + 1) = v39;
  v27 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v43);
  v28 = v36;
  SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v24, v27, v36);
  v43 = v41[0];
  v44 = v41[1];
  v45[0] = v42[0];
  *(v45 + 9) = *(v42 + 9);
  (*(*(v27 - 1) + 8))(&v43, v27);
  if (v31)
  {
    *(v28 + *(v9 + 68)) = 0;
    *(v28 + *(v9 + 84)) = 0xC000000000000000;
    v29 = v37;
    static SFFluidTabOverviewLayoutSupport.applyTransform<A, B, C>(to:forZPosition:in:)(v28, v37, v19, v6, &type metadata for SFFluidTabOverviewSupplementary, v34, v26, v39, -500.0);
  }

  else
  {

    *(v28 + *(v9 + 68)) = 0;
    *(v28 + *(v9 + 84)) = 0xC000000000000000;
  }

  v30 = v40;
  (*(v10 + 32))(v40, v28, v9);
  return (*(v10 + 56))(v30, 0, 1, v9);
}

uint64_t sub_18BA348CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v45 = a3;
  v7 = *(*v4 + 600);
  v8 = *(*v4 + 608);
  v9 = *(*v4 + 616);
  v10 = *(*v4 + 624);
  v11 = sub_18B8103B0();
  v54[0] = v7;
  v54[1] = v8;
  v54[2] = &type metadata for SFFluidTabOverviewSupplementary;
  v54[3] = v9;
  v54[4] = v10;
  v54[5] = v11;
  v12 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v54);
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v36 - v13;
  v38 = v7;
  v39 = v9;
  v54[0] = v7;
  v40 = v8;
  v41 = v11;
  v54[1] = v8;
  v54[2] = &type metadata for SFFluidTabOverviewSupplementary;
  v54[3] = v9;
  v42 = v10;
  v54[4] = v10;
  v54[5] = v11;
  v14 = type metadata accessor for SFFluidCollectionView.Element(0, v54);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v36 - v16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = swift_allocBox();
  v21 = v20;
  v22 = *(TupleTypeMetadata2 + 48);
  v37 = a1;
  sub_18B833990(a1, v20);
  (*(v15 + 16))(v21 + v22, a2, v14);
  *v17 = v19;
  swift_storeEnumTagMultiPayload();
  sub_18BA6FE64(v53);
  memcpy(v54, v53, 0x139uLL);
  if (sub_18B81CA10(v54) == 1)
  {
    (*(v15 + 8))(v17, v14);
    return (*(v43 + 56))(v45, 1, 1, v44);
  }

  sub_18BC1E3F8();
  swift_getWitnessTable();
  v23 = sub_18BC210B8();

  if ((v23 & 1) == 0)
  {
    (*(v15 + 8))(v17, v14);
    *&v49 = v38;
    *(&v49 + 1) = v40;
    *&v50 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v50 + 1) = v39;
    *&v51[0] = v42;
    *(&v51[0] + 1) = v41;
    type metadata accessor for SFFluidCollectionView.Update(255, &v49);
    v26 = sub_18BC21848();
    (*(*(v26 - 8) + 8))(v53, v26);
    return (*(v43 + 56))(v45, 1, 1, v44);
  }

  sub_18B833990(v37, v52);
  if (v52[3] >= 4uLL)
  {
    sub_18B81D198(&v46);
    v27 = v38;
    v28 = v39;
    *&v49 = v38;
    *(&v49 + 1) = v40;
    *&v50 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v50 + 1) = v39;
    *&v51[0] = v42;
    *(&v51[0] + 1) = v41;
    v29 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v49);
    v30 = v36;
    sub_18B860EBC(v17, v29, v36);
    v49 = v46;
    v50 = v47;
    v51[0] = v48[0];
    *(v51 + 9) = *(v48 + 9);
    v31 = (*(*(v29 - 1) + 8))(&v49, v29);
    (*(*v4 + 848))(v31);
    v32 = v45;
    sub_18BB82920(v30, v45);

    *&v46 = v27;
    *(&v46 + 1) = v40;
    *&v47 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v47 + 1) = v28;
    *&v48[0] = v42;
    *(&v48[0] + 1) = v41;
    type metadata accessor for SFFluidCollectionView.Update(255, &v46);
    v33 = sub_18BC21848();
    (*(*(v33 - 8) + 8))(v53, v33);
    v35 = v43;
    v34 = v44;
    (*(v43 + 8))(v30, v44);
    (*(v15 + 8))(v17, v14);
    (*(v35 + 56))(v32, 0, 1, v34);
    return sub_18B831014(v52);
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    *&v49 = v38;
    *(&v49 + 1) = v40;
    *&v50 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v50 + 1) = v39;
    *&v51[0] = v42;
    *(&v51[0] + 1) = v41;
    type metadata accessor for SFFluidCollectionView.Update(255, &v49);
    v24 = sub_18BC21848();
    (*(*(v24 - 8) + 8))(v53, v24);
    (*(v43 + 56))(v45, 1, 1, v44);
    return sub_18B833D9C(v52);
  }
}

uint64_t sub_18BA34EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 608);
  v8 = *(v6 + 616);
  v9 = *(v6 + 624);
  v48 = *(v6 + 600);
  v49 = v8;
  *v59 = v48;
  *(v59 + 1) = v7;
  *&v59[1] = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v59[1] + 1) = v8;
  *&v59[2] = v9;
  v50 = COERCE_DOUBLE(sub_18B8103B0());
  *(&v59[2] + 1) = v50;
  v10 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v59);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v47 = &v43 - v13;
  v14 = (*(v6 + 456))(v12);
  if (!v14)
  {
    return (*(v11 + 56))(a2, 1, 1, v10);
  }

  v15 = v14;
  sub_18BA6FE64(v58);
  memcpy(v59, v58, 0x139uLL);
  if (sub_18B81CA10(v59) == 1)
  {

    return (*(v11 + 56))(a2, 1, 1, v10);
  }

  v46 = v10;
  sub_18BC1E3F8();
  v16 = sub_18BC210B8();

  if ((v16 & 1) == 0)
  {
    *&v55 = v48;
    *(&v55 + 1) = v7;
    *&v56 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v56 + 1) = v49;
    v57[0] = v9;
    v57[1] = v50;
    type metadata accessor for SFFluidCollectionView.Update(255, &v55);
    v22 = sub_18BC21848();
    (*(*(v22 - 8) + 8))(v58, v22);

    v10 = v46;
    return (*(v11 + 56))(a2, 1, 1, v10);
  }

  v17 = sub_18B81280C();
  v45 = a2;
  if (v17)
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 16))(&v55, v15, v3, a1, ObjectType, v19);
    swift_unknownObjectRelease();
    v44 = v55;
    v21 = BYTE8(v55);
  }

  else
  {
    v44 = 1;
    v21 = 1;
  }

  HIDWORD(v43) = v21;
  v52 = v59[2];
  v53 = v59[3];
  *v54 = v59[4];
  *(&v54[1] + 1) = *(&v59[4] + 9);
  *&v55 = v48;
  *(&v55 + 1) = v7;
  *&v56 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v56 + 1) = v49;
  v57[0] = v9;
  v57[1] = v50;
  v24 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v55);
  v25 = *(v24 - 1);
  (*(v25 + 16))(&v55, &v59[2], v24);
  SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(a1, v24, v47);
  v55 = v52;
  v56 = v53;
  *v57 = *v54;
  *(&v57[1] + 1) = *(&v54[1] + 1);
  (*(v25 + 8))(&v55, v24);
  if (HIDWORD(v43))
  {
    v26 = v45;
    if (v44)
    {
      v28 = v46;
      v27 = v47;
      v29 = (v47 + v46[20]);
      v30 = v29[1];
      *&v51.a = *v29;
      *&v51.c = v30;
      *&v51.tx = v29[2];
      CGAffineTransformScale(&v52, &v51, 0.85, 0.85);
      SFFluidCollectionView.LayoutAttributes.transform.setter(&v52, v28);

      v51.a = v48;
      v51.b = v7;
      *&v51.c = &type metadata for SFFluidTabOverviewSupplementary;
      v51.d = v49;
      v51.tx = v9;
      v51.ty = v50;
      type metadata accessor for SFFluidCollectionView.Update(255, &v51);
      v31 = sub_18BC21848();
      (*(*(v31 - 8) + 8))(v58, v31);
    }

    else
    {

      *&v52 = v48;
      *(&v52 + 1) = v7;
      *&v53 = &type metadata for SFFluidTabOverviewSupplementary;
      *(&v53 + 1) = v49;
      v54[0] = v9;
      v54[1] = v50;
      type metadata accessor for SFFluidCollectionView.Update(255, &v52);
      v34 = sub_18BC21848();
      (*(*(v34 - 8) + 8))(v58, v34);
      v28 = v46;
      v27 = v47;
    }

    *(v27 + v28[17]) = 0;
    *(v27 + v28[21]) = 0xC000000000000000;
    goto LABEL_47;
  }

  v32 = [v15 effectiveUserInterfaceLayoutDirection];
  v26 = v45;
  if ((v44 & 2) == 0)
  {
    if ((v44 & 8) == 0)
    {
      if ((v44 & 1) == 0)
      {
        if ((v44 & 4) == 0)
        {
          goto LABEL_40;
        }

        v33 = 0;
        goto LABEL_44;
      }

      v33 = 0;
      goto LABEL_43;
    }

    v35 = 0;
    v36 = 8;
    if (v32 == 1)
    {
      v36 = 2;
    }

    goto LABEL_35;
  }

  if (v32 == 1)
  {
    if ((v44 & 8) == 0)
    {
      if ((v44 & 1) == 0)
      {
        if ((v44 & 4) == 0)
        {
LABEL_39:
          [v15 bounds];
          Width = CGRectGetWidth(v60);
          v28 = v46;
          v27 = v47;
          v38 = v46[18];
          v39 = Width + v3[75] + *(v47 + v38);
LABEL_46:
          *(v27 + v38) = v39;
          sub_18BABCB8C(v28);

          *&v52 = v48;
          *(&v52 + 1) = v7;
          *&v53 = &type metadata for SFFluidTabOverviewSupplementary;
          *(&v53 + 1) = v49;
          v54[0] = v9;
          v54[1] = v50;
          type metadata accessor for SFFluidCollectionView.Update(255, &v52);
          v42 = sub_18BC21848();
          (*(*(v42 - 8) + 8))(v58, v42);
          goto LABEL_47;
        }

        v33 = 8;
        goto LABEL_44;
      }

      v33 = 8;
LABEL_43:
      v33 |= 1uLL;
      if ((v44 & 4) != 0)
      {
        goto LABEL_44;
      }

      goto LABEL_37;
    }

    v35 = 8;
    v36 = 2;
    goto LABEL_35;
  }

  if ((v44 & 8) != 0)
  {
    v35 = 2;
    v36 = 8;
LABEL_35:
    v33 = v35 | v36;
    if (v44)
    {
      goto LABEL_43;
    }

    if ((v44 & 4) == 0)
    {
LABEL_37:
      if (v33 != 2)
      {
        goto LABEL_38;
      }

LABEL_45:
      [v15 bounds];
      v41 = CGRectGetWidth(v61);
      v28 = v46;
      v27 = v47;
      v38 = v46[18];
      v39 = *(v47 + v38) - (v41 + v3[73]);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (v44)
  {
    v33 = 2;
    goto LABEL_43;
  }

  if ((v44 & 4) == 0)
  {
    goto LABEL_45;
  }

  v33 = 2;
LABEL_44:
  v33 |= 4uLL;
LABEL_38:
  if (v33 == 8)
  {
    goto LABEL_39;
  }

LABEL_40:
  *&v52 = v48;
  *(&v52 + 1) = v7;
  *&v53 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v53 + 1) = v49;
  v54[0] = v9;
  v54[1] = v50;
  type metadata accessor for SFFluidCollectionView.Update(255, &v52);
  v40 = sub_18BC21848();
  (*(*(v40 - 8) + 8))(v58, v40);

  v28 = v46;
  v27 = v47;
LABEL_47:
  (*(v11 + 32))(v26, v27, v28);
  return (*(v11 + 56))(v26, 0, 1, v28);
}

uint64_t sub_18BA35650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v44 = a3;
  v7 = *(*v4 + 600);
  v8 = *(*v4 + 608);
  v9 = *(*v4 + 616);
  v10 = *(*v4 + 624);
  v11 = sub_18B8103B0();
  *&v53[0] = v7;
  *(&v53[0] + 1) = v8;
  *&v53[1] = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v53[1] + 1) = v9;
  *&v53[2] = v10;
  *(&v53[2] + 1) = v11;
  v12 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v53);
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v36 - v13;
  *&v38 = v7;
  *(&v38 + 1) = v8;
  *&v53[0] = v7;
  *(&v53[0] + 1) = v8;
  *&v53[1] = &type metadata for SFFluidTabOverviewSupplementary;
  v40 = v9;
  v41 = v10;
  *(&v53[1] + 1) = v9;
  *&v53[2] = v10;
  v39 = v11;
  *(&v53[2] + 1) = v11;
  v14 = type metadata accessor for SFFluidCollectionView.Element(0, v53);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v36 - v16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = swift_allocBox();
  v21 = v20;
  v22 = *(TupleTypeMetadata2 + 48);
  v37 = a1;
  sub_18B833990(a1, v20);
  (*(v15 + 16))(v21 + v22, a2, v14);
  *v17 = v19;
  swift_storeEnumTagMultiPayload();
  sub_18BA6FE64(v52);
  memcpy(v53, v52, 0x139uLL);
  if (sub_18B81CA10(v53) == 1)
  {
    (*(v15 + 8))(v17, v14);
    return (*(v42 + 56))(v44, 1, 1, v43);
  }

  sub_18BC1E3F8();
  swift_getWitnessTable();
  v23 = sub_18BC210B8();

  if ((v23 & 1) == 0)
  {
    (*(v15 + 8))(v17, v14);
    v48 = v38;
    *&v49 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v49 + 1) = v40;
    *&v50[0] = v41;
    *(&v50[0] + 1) = v39;
    type metadata accessor for SFFluidCollectionView.Update(255, &v48);
    v26 = sub_18BC21848();
    (*(*(v26 - 8) + 8))(v52, v26);
    return (*(v42 + 56))(v44, 1, 1, v43);
  }

  sub_18B833990(v37, v51);
  if (v51[3] >= 4uLL)
  {
    v45 = v53[2];
    v46 = v53[3];
    v47[0] = v53[4];
    *(v47 + 9) = *(&v53[4] + 9);
    v27 = v38;
    v48 = v38;
    *&v49 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v49 + 1) = v40;
    *&v50[0] = v41;
    *(&v50[0] + 1) = v39;
    v28 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v48);
    v29 = *(v28 - 1);
    (*(v29 + 16))(&v48, &v53[2], v28);
    v30 = v36;
    sub_18B860EBC(v17, v28, v36);
    v48 = v45;
    v49 = v46;
    v50[0] = v47[0];
    *(v50 + 9) = *(v47 + 9);
    v31 = (*(v29 + 8))(&v48, v28);
    (*(*v4 + 848))(v31);
    v32 = v44;
    sub_18BB82920(v30, v44);

    v45 = __PAIR128__(*(&v38 + 1), v27);
    *&v46 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v46 + 1) = v40;
    *&v47[0] = v41;
    *(&v47[0] + 1) = v39;
    type metadata accessor for SFFluidCollectionView.Update(255, &v45);
    v33 = sub_18BC21848();
    (*(*(v33 - 8) + 8))(v52, v33);
    v35 = v42;
    v34 = v43;
    (*(v42 + 8))(v30, v43);
    (*(v15 + 8))(v17, v14);
    (*(v35 + 56))(v32, 0, 1, v34);
    return sub_18B831014(v51);
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    v48 = v38;
    *&v49 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v49 + 1) = v40;
    *&v50[0] = v41;
    *(&v50[0] + 1) = v39;
    type metadata accessor for SFFluidCollectionView.Update(255, &v48);
    v24 = sub_18BC21848();
    (*(*(v24 - 8) + 8))(v52, v24);
    (*(v42 + 56))(v44, 1, 1, v43);
    return sub_18B833D9C(v51);
  }
}

double sub_18BA35CB4(double a1, double a2)
{
  (*(*v2 + 848))();
  sub_18BB82880();
  v4 = v3;

  return v4;
}

double sub_18BA35D34@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*v2 + 944))();
  if (v5)
  {
    v6 = v5;
    [v5 bounds];
    v33 = v7;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [a1 bounds];
    [a1 convertRect:v6 toCoordinateSpace:?];
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
    MidX = CGRectGetMidX(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MidY = CGRectGetMidY(v36);
  }

  else
  {
    sub_18BA37720();
    v33 = v20;
    v9 = v21;
    v11 = v22;
    v13 = v23;
    [a1 frame];
    v24 = v37.origin.x;
    v25 = v37.origin.y;
    v26 = v37.size.width;
    v27 = v37.size.height;
    MidX = CGRectGetMidX(v37);
    v38.origin.x = v24;
    v38.origin.y = v25;
    v38.size.width = v26;
    v38.size.height = v27;
    MidY = CGRectGetMidY(v38);
  }

  sub_18BA37720();
  v28 = CGRectGetHeight(v39) * -0.5;
  v40.origin.x = v33;
  v40.origin.y = v9;
  v40.size.width = v11;
  v40.size.height = v13;
  v41 = CGRectInset(v40, 0.0, v28);
  v34.x = MidX;
  v34.y = MidY;
  if (CGRectContainsPoint(v41, v34))
  {
    v29 = [a1 isHiddenOrHasHiddenAncestor] ^ 1;
  }

  else
  {
    v29 = 0;
  }

  v42.origin.x = v33;
  v42.origin.y = v9;
  v42.size.width = v11;
  v42.size.height = v13;
  v30 = CGRectGetMidX(v42);
  v43.origin.x = v33;
  v43.origin.y = v9;
  v43.size.width = v11;
  v43.size.height = v13;
  v31 = CGRectGetMidY(v43);
  result = -((MidX - (v30 + 2.0)) * (MidX - (v30 + 2.0)) + (MidY - (v31 + 2.0)) * (MidY - (v31 + 2.0)));
  *a2 = result;
  *(a2 + 8) = v29;
  return result;
}

void sub_18BA35F3C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v48 = a1;
  v10 = *v5;
  v11 = *(*v5 + 600);
  v12 = *(*v5 + 608);
  v13 = *(*v5 + 616);
  v14 = *(v10 + 624);
  v15 = sub_18B8103B0();
  *&v61 = v11;
  *(&v61 + 1) = v12;
  v16 = v12;
  v62 = &type metadata for SFFluidTabOverviewSupplementary;
  v63 = v13;
  v17 = v13;
  v64 = v14;
  v65 = v15;
  v18 = type metadata accessor for SFFluidCollectionView.Element(0, &v61);
  v49 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  sub_18B81D198(&v59);
  v40 = v60;
  sub_18BC1E3F8();
  *&v61 = v11;
  *(&v61 + 1) = v16;
  v21 = v16;
  v62 = &type metadata for SFFluidTabOverviewSupplementary;
  v63 = v17;
  v64 = v14;
  v65 = v15;
  v45 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v61);
  v22 = *(v45 - 8);
  v46 = *(v22 + 8);
  v47 = v22 + 8;
  v46(&v59, v45);
  *&v61 = 1;
  v37 = v14;
  v23 = v14;
  v24 = v21;
  v41 = v17;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x736E6D756C6F63, 0xE700000000000000, &v61, v11, v21, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E6530], v17, &v56, v37, v15);
  v42 = v56;
  v25 = v57;
  v26 = *(v11 - 8);
  v43 = *(v26 + 16);
  v44 = v26 + 16;
  v43(v20, v48, v11);
  v39 = v18;
  swift_storeEnumTagMultiPayload();
  v53 = v40;
  v50 = v42;
  v51 = v25;
  *&v61 = v11;
  *(&v61 + 1) = v24;
  v62 = &type metadata for SFFluidTabOverviewSupplementary;
  v63 = v17;
  v64 = v23;
  v65 = v15;
  *&v42 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics(0, &v61);
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v50, v20, v42, MEMORY[0x1E69E6530], &v61);

  v27 = *(v49 + 8);
  v49 += 8;
  v27(v20, v18);
  v28 = v27;

  v40 = v61;
  sub_18B81D198(&v61);
  v29 = v62;
  sub_18BC1E3F8();
  v46(&v61, v45);
  type metadata accessor for CGSize(0);
  v31 = v30;
  v50 = 0uLL;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x657A695374696E75, 0xE800000000000000, &v50, v11, v24, &type metadata for SFFluidTabOverviewSupplementary, v30, v41, &v56, v23, v15);
  v32 = v56;
  v33 = v57;
  v34 = v58;
  v43(v20, v48, v11);
  v35 = v39;
  swift_storeEnumTagMultiPayload();
  v55 = v29;
  v50 = v32;
  v51 = v33;
  v52 = v34;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v50, v20, v42, v31, &v53);

  v28(v20, v35);

  if (v54 != 0.0)
  {
    v66.origin.x = a2;
    v66.origin.y = a3;
    v66.size.width = a4;
    v66.size.height = a5;
    v36 = ceil(CGRectGetHeight(v66) / v54);
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v36 > -9.22337204e18)
    {
      if (v36 < 9.22337204e18)
      {
        if (!__OFADD__(v36, 1))
        {
          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_18BA364D4@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v58 = a1;
  v7 = *v4;
  v8 = *(*v4 + 600);
  v9 = *(*v4 + 608);
  v10 = *(*v4 + 616);
  v11 = *(*v4 + 624);
  *&v77 = v8;
  *(&v77 + 1) = v9;
  v78 = &type metadata for SFFluidTabOverviewSupplementary;
  v79 = v10;
  v62 = v10;
  v61 = v11;
  v80 = v11;
  v81 = sub_18B8103B0();
  v60 = v81;
  v59 = type metadata accessor for SFFluidCollectionView.Element(0, &v77);
  v12 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v47 - v13;
  v14 = sub_18BC1EDD8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *a2;
  v19 = (*(v7 + 456))(v16);
  if (!v19)
  {
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }

  v50 = v15;
  v51 = v14;
  v49 = v12;
  v52 = a3;
  v54 = v19;
  sub_18B810930(&v73);
  v69 = v73;
  v70 = v74;
  v71 = v75;
  v72 = v76;
  *&v64 = v8;
  *(&v64 + 1) = v9;
  v65 = &type metadata for SFFluidTabOverviewSupplementary;
  v66 = v62;
  v67 = v61;
  v68 = v60;
  v20 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, &v64);
  v53 = v9;
  v55 = v18;
  v48 = v20;
  SFFluidCollectionView.DataSource.Snapshot.indexPath(of:)(v58, v20);

  sub_18B810930(&v73);
  sub_18BC1E1A8();

  sub_18BC1EDC8();
  v21 = v57;
  sub_18BC21C08();

  swift_storeEnumTagMultiPayload();
  sub_18B81D198(&v77);
  v22 = v78;
  sub_18BC1E3F8();
  v23 = v53;
  *&v73 = v8;
  *(&v73 + 1) = v53;
  v24 = v62;
  *&v74 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v74 + 1) = v62;
  v25 = v61;
  v26 = v60;
  v75 = v61;
  v76 = v60;
  v27 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v73);
  (*(*(v27 - 8) + 8))(&v77, v27);
  *&v73 = 1;
  v28 = MEMORY[0x1E69E6530];
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x736E6D756C6F63, 0xE700000000000000, &v73, v8, v23, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E6530], v24, &v69, v25, v26);
  v63 = v22;
  v64 = v69;
  v65 = v70;
  *&v73 = v8;
  *(&v73 + 1) = v23;
  v29 = v23;
  *&v74 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v74 + 1) = v24;
  v75 = v25;
  v76 = v26;
  v30 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics(0, &v73);
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v64, v21, v30, v28, &v73);

  v31 = v73;
  v32 = v54;
  v33 = [v54 effectiveUserInterfaceLayoutDirection];
  v34 = 0;
  v35 = v55;
  if ((v56 - 1) >= 2)
  {
    if (v56)
    {
      v36 = 1;
    }

    else
    {
      v36 = -1;
    }

    if (v33)
    {
      v34 = -v36;
    }

    else
    {
      v34 = v36;
    }
  }

  if (v56 == 2)
  {
    v38 = -1;
  }

  else
  {
    v38 = v56 == 1;
  }

  result = sub_18BC1EDB8();
  if (!v31)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (result == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_27;
  }

  v39 = result % v31 + v34;
  if (__OFADD__(result % v31, v34))
  {
    goto LABEL_25;
  }

  if (v31 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if ((v39 & 0x8000000000000000) == 0 && v39 < v31)
  {
    v40 = v32;
    v41 = v21;
    v42 = __OFADD__(v34, v31 * v38);
    v43 = v34 + v31 * v38;
    v44 = v52;
    v45 = v51;
    v46 = v50;
    if (!v42)
    {
      sub_18B810930(&v73);
      v69 = v73;
      v70 = v74;
      v71 = v75;
      v72 = v76;
      SFFluidCollectionView.DataSource.Snapshot.item(offsetFrom:by:)(v43, v48, v44);

      (*(v49 + 8))(v41, v59);
      return (*(v46 + 8))(v55, v45);
    }

    goto LABEL_28;
  }

  (*(v49 + 8))(v21, v59);
  (*(v50 + 8))(v35, v51);
  return (*(*(v29 - 8) + 56))(v52, 1, 1, v29);
}

void sub_18BA36C3C(double a1, CGFloat a2)
{
  v4 = *(*v2 + 600);
  v5 = *(*v2 + 608);
  v6 = *(*v2 + 616);
  v7 = *(*v2 + 624);
  v8 = sub_18B8103B0();
  *&v103 = v4;
  *(&v103 + 1) = v5;
  *&v104 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v104 + 1) = v6;
  *v105 = v7;
  *&v105[8] = v8;
  v9 = type metadata accessor for SFFluidCollectionView.Element(0, &v103);
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v68 - v10;
  *&v103 = v4;
  *(&v103 + 1) = v5;
  *&v104 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v104 + 1) = v6;
  v83 = v7;
  *v105 = v7;
  *&v105[8] = v8;
  v78 = v8;
  v11 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v103);
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v68 - v12;
  v13 = sub_18BC21848();
  v75 = *(v13 - 8);
  v76 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v85 = v5;
  v86 = &v68 - v14;
  v84 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v68 - v16;
  v17 = sub_18BC21848();
  v79 = *(v17 - 8);
  *&v80 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v88 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v68 - v21;
  v82 = v2;
  sub_18B810930(&v103);
  v23 = *v105;
  v22 = *&v105[8];
  sub_18BC1E1A8();

  *&v100 = v23;
  *(&v100 + 1) = v22;
  v77 = v6;
  sub_18BC1F0E8();
  swift_getWitnessTable();
  sub_18BC20A98();
  v24 = v88;
  if ((*(v88 + 48))(v19, 1, v4) == 1)
  {
    (*(v79 + 8))(v19, v80);

LABEL_5:

    return;
  }

  (*(v24 + 32))(v87, v19, v4);

  sub_18B810930(&v103);
  v25 = *(&v103 + 1);
  v26 = v104;
  sub_18BC1E1A8();

  *&v100 = v25;
  *(&v100 + 1) = v26;
  *&v80 = v26;
  v27 = v83;
  v28 = v85;
  sub_18BC1F0E8();
  swift_getWitnessTable();
  v29 = v86;
  sub_18BC20A98();
  v30 = v84;
  if ((*(v84 + 48))(v29, 1, v28) == 1)
  {
    (*(v24 + 8))(v87, v4);
    (*(v75 + 8))(v86, v76);

    goto LABEL_5;
  }

  v31 = v85;
  (*(v30 + 32))(v81, v86, v85);

  sub_18B810930(v112);
  v106 = v112[0];
  v107 = v112[1];
  v108 = v112[2];
  v109 = v112[3];
  v110 = v112[4];
  v111 = v112[5];
  v86 = v4;
  *&v103 = v4;
  *(&v103 + 1) = v31;
  v32 = v77;
  *&v104 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v104 + 1) = v77;
  *v105 = v27;
  *&v105[8] = v78;
  type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, &v103);
  v33 = SFFluidCollectionView.DataSource.Snapshot.sectionItemCounts.getter();

  v34 = *(v33 + 16);
  if (!v34)
  {

    (*(v84 + 8))(v81, v31);
LABEL_21:
    (*(v88 + 8))(v87, v86);
    return;
  }

  v79 = *(v33 + 8 * v34 + 24);

  sub_18B81D198(&v100);
  v94 = v86;
  v95 = v31;
  v96 = &type metadata for SFFluidTabOverviewSupplementary;
  v97 = v32;
  v35 = v78;
  v98 = v83;
  v99 = v78;
  v36 = v32;
  v37 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v94);
  v38 = v72;
  v39 = v81;
  SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v81, v37, v72);
  v103 = v100;
  v104 = v101;
  *v105 = v102[0];
  *&v105[9] = *(v102 + 9);
  *&v80 = *(*(v37 - 1) + 8);
  (v80)(&v103, v37);
  v40 = v74;
  v41 = SFFluidCollectionView.LayoutAttributes.frame.getter(v74);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  (*(v73 + 8))(v38, v40);
  v113.origin.x = v41;
  v113.origin.y = v43;
  v113.size.width = v45;
  v113.size.height = v47;
  if (CGRectGetMaxY(v113) < a2)
  {
    (*(v84 + 8))(v39, v85);
    (*(v88 + 8))(v87, v86);
    return;
  }

  v48 = v36;
  v49 = v85;
  v114.origin.x = v41;
  v114.origin.y = v43;
  v114.size.width = v45;
  v114.size.height = v47;
  if (CGRectGetMinY(v114) > a2)
  {
    (*(v84 + 8))(v39, v49);
    goto LABEL_21;
  }

  sub_18B81D198(&v100);
  v50 = v48;
  v76 = v101;
  sub_18BC1E3F8();
  (v80)(&v100, v37);
  v94 = 1;
  v51 = v83;
  v52 = v86;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x736E6D756C6F63, 0xE700000000000000, &v94, v86, v49, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E6530], v50, &v92, v83, v35);
  v80 = v92;
  v53 = v93;
  v54 = v69;
  (*(v88 + 16))(v69, v87, v52);
  v55 = v71;
  swift_storeEnumTagMultiPayload();
  v90 = v53;
  v91 = v76;
  v89 = v80;
  v94 = v52;
  v95 = v49;
  v96 = &type metadata for SFFluidTabOverviewSupplementary;
  v97 = v50;
  v98 = v51;
  v99 = v35;
  v56 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics(0, &v94);
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v89, v54, v56, MEMORY[0x1E69E6530], &v94);

  (*(v70 + 8))(v54, v55);

  if (!v94)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  if (v79 == 0x8000000000000000 && v94 == -1)
  {
    goto LABEL_24;
  }

  v58 = v81;
  if (!(v79 % v94))
  {
    (*(v84 + 8))(v81, v85);
    goto LABEL_21;
  }

  v59 = (*(*v82 + 456))(v57);
  if (!v59)
  {
    goto LABEL_25;
  }

  v60 = v59;
  v61 = [v59 effectiveUserInterfaceLayoutDirection];

  v62 = (v84 + 8);
  v63 = (v88 + 8);
  v64 = v41;
  v65 = v43;
  v66 = v45;
  v67 = v47;
  if (v61)
  {
    CGRectGetMinX(*&v64);
  }

  else
  {
    CGRectGetMaxX(*&v64);
  }

  (*v62)(v58, v85);
  (*v63)(v87, v86);
}

void sub_18BA37720()
{
  v1 = (*(*v0 + 456))();
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 adjustedContentInset];
    v12 = v11;
    v14 = v13;

    UIEdgeInsetsInsetRect(v4, v6, v8, v10, v12, v14);
  }
}

uint64_t SFFluidCollectionView.TabOverviewGridLayout.init()()
{
  __asm { FMOV            V0.2D, #8.0 }

  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  v6 = *MEMORY[0x1E69DDCE0];
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 560) = xmmword_18BC459C0;
  *(v0 + 576) = v6;
  *(v0 + 512) = 0;
  *(v0 + 520) = 0x4020000000000000;
  *(v0 + 592) = v7;
  *(v0 + 608) = 0;
  *(v0 + 624) = 0;
  *(v0 + 616) = 0;
  *(v0 + 632) = 0x3FE5555555555555;
  swift_unknownObjectWeakInit();
  *(v0 + 648) = 0;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;

  return SFFluidCollectionView.Layout.init()();
}

void sub_18BA378C0()
{

  JUMPOUT(0x18CFFF000);
}

void *SFFluidCollectionView.TabOverviewGridLayout.deinit()
{
  v0 = SFFluidCollectionView.Layout.deinit();

  MEMORY[0x18CFFF000](v0 + 80);
  return v0;
}

uint64_t SFFluidCollectionView.TabOverviewGridLayout.__deallocating_deinit()
{
  SFFluidCollectionView.TabOverviewGridLayout.deinit();

  return swift_deallocClassInstance();
}

void (*sub_18BA37958(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BA33144(v2);
  return sub_18B9ACD4C;
}

unint64_t sub_18BA37A4C()
{
  result = qword_1EA9D6710;
  if (!qword_1EA9D6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6710);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InteractiveInsertionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InteractiveInsertionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_18BA37C34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 40))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA37C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 3;
    }
  }

  return result;
}

double sub_18BA37CEC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18BA382BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA382DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_18BA3830C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA38328(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

id SFCapsulePageLayoutTopFloatingFocused.__allocating_init(container:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  return v3;
}

id SFCapsulePageLayoutTopFloatingFocused.init(container:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingFocused();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutTopFloatingFocused.__allocating_init(container:baseLayout:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

id SFCapsulePageLayoutTopFloatingFocused.init(container:baseLayout:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingFocused();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t (*sub_18BA38944(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused_baseLayout;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A9824;
}