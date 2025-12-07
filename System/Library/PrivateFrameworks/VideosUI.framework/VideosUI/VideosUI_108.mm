double sub_1E3F1AE60(double a1)
{
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  type metadata accessor for CollectionInteractor(0);
  OUTLINED_FUNCTION_0_289();
  sub_1E3F1C300(v9, v10, &unk_1E42BD340);
  v11 = sub_1E4200BC4();
  v12 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v13 = *(v11 + v12);

  v23 = 34;
  v14 = *(*v13 + 776);

  v14(v24, &v23, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v24[3])
  {
    v15 = swift_dynamicCast();
    if (v15 && (v23 & 1) != 0)
    {

      return a1;
    }
  }

  else
  {
    v15 = sub_1E325F6F0(v24, &unk_1ECF296E0, &unk_1E4298030);
  }

  v16 = (*(*v13 + 392))(v15);

  if (!v16 || (OUTLINED_FUNCTION_8(), v18 = COERCE_DOUBLE((*(v17 + 1176))()), v20 = v19, , (v20 & 1) != 0) || (type metadata accessor for GridView(0), sub_1E3746E10(v8), v21 = sub_1E3B02A04(), (*(v4 + 8))(v8, v2), (v21 & 1) != 0))
  {
    a1 = *sub_1E3C11B34();
  }

  else
  {

    return v18;
  }

  return a1;
}

uint64_t sub_1E3F1B13C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[1] = a5;
  v9 = type metadata accessor for GridView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6E8, &qword_1E42DDCA8);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  if (!a1 || (OUTLINED_FUNCTION_8(), (v18 = (*(v17 + 872))()) == 0))
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v26[42] = v18;
  swift_getKeyPath();
  sub_1E3F1B90C(a4, v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v10 + 80) + 360) & ~*(v10 + 80);
  v20 = swift_allocObject();
  memcpy((v20 + 16), a2, 0x150uLL);
  *(v20 + 352) = a3;
  sub_1E3F1B970(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_1E37E6E1C(a2, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C718, &qword_1E42DDD38);
  sub_1E32752B0(&qword_1EE23B548, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6338]);
  sub_1E375BEF4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060, &qword_1E42A7B70);
  v22 = OUTLINED_FUNCTION_6_8(v21);
  v26[0] = v21;
  v26[1] = v22;
  swift_getOpaqueTypeConformance2();
  sub_1E4203B34();
  swift_getKeyPath();
  v23 = v25[0];
  sub_1E4203B24();

  return (*(v13 + 8))(v16, v23);
}

uint64_t sub_1E3F1B464(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  v13 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  OUTLINED_FUNCTION_25();
  v19 = sub_1E40EA03C(v14, v15, v16, v17, v18);
  v28[1] = v13;
  if (a3)
  {
    v28[4] = a3;
    type metadata accessor for ViewModel();
    sub_1E3F1C300(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);

    v20 = sub_1E4205E84();

    v21 = 0;
    if (v20)
    {
      type metadata accessor for CollectionInteractor(0);
      OUTLINED_FUNCTION_0_289();
      sub_1E3F1C300(v22, v23, &unk_1E42BD340);
      v24 = sub_1E4200BC4();
      v25 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v21 = *(v24 + v25);
    }
  }

  else
  {
    v21 = 0;
  }

  v26 = OUTLINED_FUNCTION_6_8(v19);
  sub_1E3A610C8(v21, v7, v26);

  return (*(v9 + 8))(v12, v7);
}

void *sub_1E3F1B6AC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750, &unk_1E4297FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata accessor for GridView(uint64_t a1)
{
  result = qword_1EE28FB10;
  if (!qword_1EE28FB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3F1B834()
{
  result = qword_1ECF3C6F0;
  if (!qword_1ECF3C6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C6E8, &qword_1E42DDCA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060, &qword_1E42A7B70);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C6F0);
  }

  return result;
}

uint64_t sub_1E3F1B90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F1B970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3F1B9D4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for GridView(0);
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *a2;
  type metadata accessor for CollectionInteractor(0);
  OUTLINED_FUNCTION_0_289();
  sub_1E3F1C300(v5, v6, &unk_1E42BD340);
  sub_1E4200BC4();
  sub_1E37CDC8C(v4);

  return result;
}

unint64_t sub_1E3F1BAB0()
{
  result = qword_1ECF3C700;
  if (!qword_1ECF3C700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C6C0, &qword_1E42DDC80);
    sub_1E32752B0(&qword_1ECF3C708, &qword_1ECF3C6B8, &qword_1E42DDC78, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C700);
  }

  return result;
}

uint64_t objectdestroyTm_50()
{
  type metadata accessor for GridView(0);
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_1E3264CE0(*(v3 + 16), *(v3 + 24));
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_110();
  OUTLINED_FUNCTION_20_110();
  OUTLINED_FUNCTION_15_140();
  if (!v7)
  {
  }

  return swift_deallocObject();
}

double sub_1E3F1BCE4(char a1)
{
  v1 = type metadata accessor for GridView(0);
  OUTLINED_FUNCTION_17_2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C18, &qword_1E429C8B8);
  sub_1E4203904();
  return result;
}

void sub_1E3F1BDC8(uint64_t a1)
{
  sub_1E3F1BFE0(319);
  if (v1 <= 0x3F)
  {
    sub_1E3E290B0(319);
    if (v2 <= 0x3F)
    {
      sub_1E3F1C074(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1E381EC50(319);
        if (v4 <= 0x3F)
        {
          sub_1E3F1C074(319, &qword_1EE288648, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
          if (v6 <= 0x3F)
          {
            OUTLINED_FUNCTION_6_191(v5, &qword_1EE288690, &unk_1F5D6AC00);
            if (v8 <= 0x3F)
            {
              OUTLINED_FUNCTION_6_191(v7, &qword_1EE288680, MEMORY[0x1E69E7DE0]);
              if (v9 <= 0x3F)
              {
                sub_1E3F1C0D8(319, &qword_1EE259C58, &unk_1F5D8B8B8, MEMORY[0x1E69E6720]);
                if (v10 <= 0x3F)
                {
                  type metadata accessor for CollectionViewModel();
                  if (v11 <= 0x3F)
                  {
                    sub_1E3F1C074(319, qword_1EE283808, type metadata accessor for ShowcaseValue, MEMORY[0x1E69E6720]);
                    if (v12 <= 0x3F)
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

void sub_1E3F1BFE0(uint64_t a1)
{
  if (!qword_1EE289D20)
  {
    type metadata accessor for CollectionEditableModel(255);
    sub_1E3F1C300(&qword_1EE25D778, type metadata accessor for CollectionEditableModel, &unk_1E42A2B70);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289D20);
    }
  }
}

void sub_1E3F1C074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3F1C0D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1E3F1C128()
{
  result = qword_1ECF3C710;
  if (!qword_1ECF3C710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C6D8, &qword_1E42DDC98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C6C8, &qword_1E42DDC88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C6C0, &qword_1E42DDC80);
    type metadata accessor for CollectionViewModel();
    sub_1E3F1BAB0();
    sub_1E3F1C300(&qword_1EE275068, type metadata accessor for CollectionViewModel, &protocol conformance descriptor for ViewModel);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C710);
  }

  return result;
}

uint64_t sub_1E3F1C27C(uint64_t *a1)
{
  v3 = type metadata accessor for GridView(0);
  OUTLINED_FUNCTION_17_2(v3);
  v5 = *(v1 + 352);
  v6 = v1 + ((*(v4 + 80) + 360) & ~*(v4 + 80));

  return sub_1E3F1B464(a1, (v1 + 16), v5, v6);
}

uint64_t sub_1E3F1C300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1E3F1C348(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_overlayView;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI16CarouselViewCell_overlayView], v13);
  v5 = *&v1[v4];
  if (v5)
  {
    if (v5 == a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))();
    MEMORY[0x1EEE9AC00](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
    sub_1E4148DE0(sub_1E3F1DF48);
  }

LABEL_4:
  v6 = [v1 vuiContentView];
  v7 = [v6 vui:*&v2[v4] addSubview:a1 oldView:?];

  if (v7)
  {
    v8 = *&v2[v4];
    v9 = [v2 vuiContentView];
    OUTLINED_FUNCTION_4_0();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    MEMORY[0x1EEE9AC00](v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970, &unk_1E42C5BA0);
    sub_1E4148DE0(sub_1E3EE0DA4);
  }

  return [v2 vui_setNeedsLayout];
}

void *sub_1E3F1C564(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_overlayView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void (*sub_1E3F1C5C0())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_overlayView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3F1C630;
}

uint64_t sub_1E3F1C648(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_isCenterGrowth;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3F1C67C(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_isCenterGrowth;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_isCenterGrowth, a2);
  *(v2 + v4) = a1;
  return result;
}

void *sub_1E3F1C710(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3F1C74C(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0(v1 + v5, v15);
  v7 = *(v1 + v5);
  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v7)
  {
    v8 = v7 == v4;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
LABEL_6:
    OUTLINED_FUNCTION_21();
    v10 = (*(v9 + 280))();
    v11 = *(v1 + v5);
    OUTLINED_FUNCTION_64();
    v13 = *(v12 + 128);
    v14 = v11;
    v13(v11);
  }

LABEL_7:
}

void (*sub_1E3F1C85C())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3F1C8CC;
}

void sub_1E3F1C8E4(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

uint64_t sub_1E3F1C964()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 280))();
  OUTLINED_FUNCTION_64();
  v3 = (*(v2 + 144))();

  return v3;
}

void sub_1E3F1C9F0(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v2 + 280))();
  OUTLINED_FUNCTION_4_218();
  (*(v3 + 152))(a1);
}

void (*sub_1E3F1CA9C(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  OUTLINED_FUNCTION_21();
  v3 += 35;
  v4 = *v3;
  *(v5 + 16) = *v3;
  *(v5 + 24) = v3 & 0xFFFFFFFFFFFFLL | 0x70EC000000000000;
  v6 = v4();
  OUTLINED_FUNCTION_4_218();
  v8 = (*(v7 + 144))();

  *a1 = v8;
  return sub_1E3F1CB58;
}

void sub_1E3F1CB58(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (a2)
  {
    v4 = v3;
    v2();
    OUTLINED_FUNCTION_64();
    v9 = v6;
    (*(v5 + 152))(v3);
  }

  else
  {
    v2();
    OUTLINED_FUNCTION_64();
    v9 = v8;
    (*(v7 + 152))(v3);
  }
}

uint64_t sub_1E3F1CC44()
{
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cornerRadius, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  return sub_1E4148DE0(sub_1E3F1DDB8);
}

uint64_t sub_1E3F1CCC8()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cornerRadius;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cornerRadius, v3);
  return *v1;
}

uint64_t sub_1E3F1CD0C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cornerRadius;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return sub_1E3F1CC44();
}

uint64_t (*sub_1E3F1CD70(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3F1CDC4;
}

uint64_t sub_1E3F1CDC4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E3F1CC44();
  }

  return result;
}

void sub_1E3F1CDF8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_shadow;
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_shadow, v23);
  v5 = *(v2 + v4);
  if (a1)
  {
    if (v5)
    {
      v6 = v5 == a1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  v7 = v5;
  if ([v7 shadowColor])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    sub_1E3755B54();
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = sub_1E329505C(v22);
    v9 = 0;
  }

  *&v22[0] = v9;
  MEMORY[0x1EEE9AC00](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50, &unk_1E42DC510);
  sub_1E4148DE0(sub_1E3F1DD14);

  v10 = OUTLINED_FUNCTION_16_133();
  if (v10)
  {
    v11 = v10;
    [v7 shadowOffset];
    [v11 setShadowOffset_];
  }

  v12 = OUTLINED_FUNCTION_16_133();
  if (v12)
  {
    v13 = v12;
    [v7 shadowBlurRadius];
    [v13 setShadowRadius_];
  }

  v14 = OUTLINED_FUNCTION_16_133();
  if (v14)
  {
    v16 = v14;
    LODWORD(v15) = 1.0;
    [v14 setShadowOpacity_];
  }

  v17 = OUTLINED_FUNCTION_16_133();
  if (v17)
  {
    v18 = v17;
    [v17 setShadowPathIsBounds_];
  }
}

void *sub_1E3F1D02C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_shadow;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3F1D088(void *a1, uint64_t *a2, void (*a3)(void *))
{
  v6 = *a2;
  OUTLINED_FUNCTION_14_0(v3 + *a2, a2);
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;
  a3(v7);
}

void (*sub_1E3F1D0F4())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_shadow;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3F1D164;
}

id sub_1E3F1D17C()
{
  v1 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView];
  }

  else
  {
    v4 = v0;
    type metadata accessor for InlinePlaybackView();
    [v0 vuiBounds];
    v5 = sub_1E3B789F8();
    [v5 setVuiClipsToBounds_];
    v6 = [v4 vuiContentView];
    [v6 vui:v5 addSubview:0 oldView:?];

    v7 = *&v4[v1];
    *&v4[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3F1D250(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView);
  *(v1 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView) = a1;
}

double sub_1E3F1D264(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3F1D298(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress;
  result = OUTLINED_FUNCTION_14_0(v3 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress, a3);
  *(v3 + v5) = a1;
  return result;
}

double sub_1E3F1D2DC(char a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for CarouselViewCell();
  objc_msgSendSuper2(&v13, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v8 = v7;
  if ((a1 & 1) == 0)
  {
    sub_1E3F1D3D0();
    OUTLINED_FUNCTION_21();
    v10 = (*(v9 + 136))();
    if (v10)
    {
      v11 = v10;
      [v3 vuiBounds];
      [v11 setFrame_];
    }
  }

  return v8;
}

void sub_1E3F1D3D0()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 304))();
  [v0 bounds];
  v4 = CGRectGetWidth(v7) * v3 * -0.5;
  v5 = (*((*v1 & *v0) + 0x118))();
  [v0 vuiBounds];
  v9 = CGRectOffset(v8, v4, 0.0);
  [v5 setFrame_];
}

id sub_1E3F1D538()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_isCenterGrowth) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cornerRadius;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_shadow) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress) = 0;
  v11 = type metadata accessor for CarouselViewCell();
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v11);
  if (TVAppFeature.isEnabled.getter(10, v6, v7))
  {
    v8 = objc_opt_self();
    if (([v8 isPhone] & 1) != 0 || objc_msgSend(v8, sel_isPad))
    {
      v9 = [v5 vuiContentView];
      [v9 setVuiClipsToBounds_];
    }
  }

  return v5;
}

void sub_1E3F1D688()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_isCenterGrowth) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cornerRadius;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_shadow) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3F1D75C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CarouselViewCell();
  objc_msgSendSuper2(&v7, sel_vui_prepareForReuse);
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 136))();
  if (v2)
  {
    v4 = v2;
    [v2 vui:0 setOverrideUserInterfaceStyle:?];
  }

  v5 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress;
  result = OUTLINED_FUNCTION_14_0(&v0[OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress], v3);
  *&v0[v5] = 0;
  return result;
}

void sub_1E3F1D840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21();
  v8 = (*(v6 + 280))();
  OUTLINED_FUNCTION_64();
  (*(v7 + 240))(a1, a2, a3);
}

void sub_1E3F1D90C()
{
  OUTLINED_FUNCTION_21();
  if ((*(v1 + 160))() & 1) == 0 && (TVAppFeature.isEnabled.getter(20, v2, v3))
  {
    v4 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    *(v5 + 16) = isEscapingClosureAtFileLocation;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1E3F1E074;
    *(v6 + 24) = v5;
    v20 = sub_1E37D1918;
    v21 = v6;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_27_43();
    v18 = v7;
    v19 = &block_descriptor_15_2;
    v8 = _Block_copy(v17);
    v9 = isEscapingClosureAtFileLocation;

    [v4 vui:v8 performWithoutAnimation:?];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v10 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  *(v11 + 16) = isEscapingClosureAtFileLocation;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1E3F1DB80;
  *(v12 + 24) = v11;
  v20 = sub_1E379E500;
  v21 = v12;
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_27_43();
  v18 = v13;
  v19 = &block_descriptor_136;
  v14 = _Block_copy(v17);
  v15 = isEscapingClosureAtFileLocation;

  [v10 vui:v14 performWithoutAnimation:?];
  _Block_release(v14);
  v16 = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }
}

void sub_1E3F1DB84()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 136))();
  if (v3)
  {
    v4 = v3;
    [v1 vuiBounds];
    [v4 setFrame_];
  }
}

id sub_1E3F1DC28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3F1DCC8(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress;
  OUTLINED_FUNCTION_14_0(v3 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress, a3);
  *(v3 + v5) = a1;
  sub_1E3F1D3D0();
}

void sub_1E3F1DD14(void **a1)
{
  v2 = *a1;
  v3 = [*(v1 + 16) vuiLayer];
  if (v3)
  {
    v5 = v3;
    v4 = [v2 CGColor];
    [v5 setShadowColor_];
  }
}

void sub_1E3F1DDB8(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x118))();
  OUTLINED_FUNCTION_4_218();
  (*(v6 + 176))(v3);

  if ((TVAppFeature.isEnabled.getter(17, v7, v8) & 1) != 0 && (v9 = *((*v4 & *v2) + 0x88), v10 = v9(), v11 = [v10 vuiLayer], v10, objc_msgSend(v11, sel_setCornerRadius_, v3), v11, (v12 = v9()) != 0) && (v13 = v12, v16 = objc_msgSend(v12, sel_vuiLayer), v13, v16))
  {
    [v16 setMasksToBounds_];
    OUTLINED_FUNCTION_14_13();
  }

  else
  {
    OUTLINED_FUNCTION_14_13();
  }
}

void sub_1E3F1DF48(double *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 136);
  v4 = v3();
  v5 = [v4 vuiLayer];

  [v5 setCornerRadius_];
  v6 = v3();
  if (v6 && (v7 = v6, v10 = [v6 vuiLayer], v7, v10))
  {
    [v10 setMasksToBounds_];
    OUTLINED_FUNCTION_14_13();
  }

  else
  {
    OUTLINED_FUNCTION_14_13();
  }
}

void sub_1E3F1E07C(unint64_t a1, unint64_t a2)
{
  v4 = sub_1E41FE5D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() sharedInstance];
    if (!v10)
    {
LABEL_15:

      return;
    }

    v11 = a2 - a1;
    if (a2 < a1)
    {
      __break(1u);
    }

    else
    {
      v12 = v10;
      sub_1E41FE5C4();
      sub_1E41FE574();
      v14 = v13;
      v16 = *(v5 + 8);
      v15 = (v5 + 8);
      v16(v7, v4);
      v17 = v14 * 1000.0;
      if (COERCE__INT64(fabs(v14 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v17 > -1.0)
        {
          if (v17 < 1.84467441e19)
          {
            v18 = v17 - a1;
            if (v17 >= a1)
            {
              v19 = v11 > v18;
              v20 = v11 - v18;
              if (!v19)
              {

                goto LABEL_15;
              }

              v21 = v20 / 0xEA60 % 0x3C;
              v22 = sub_1E4206694();
              OUTLINED_FUNCTION_1_254(v22, v23, v24, v25, v26, v27, v28, v29, v56);
              v31 = v30;

              if (v31)
              {
                if (v20 >= 0x36EE80)
                {
                  v37 = sub_1E4206694();
                  OUTLINED_FUNCTION_1_254(v37, v38, v39, v40, v41, v42, v43, v44, v58);

                  if (v21)
                  {
                    v45 = sub_1E3741090(0xD000000000000024, 0x80000001E42890A0, v9);
                    if (v46)
                    {
                      v48 = OUTLINED_FUNCTION_3_218(v45, v46, v47);
                      v49 = MEMORY[0x1E69E6158];
                      v58 = v48;
                      v59 = v48;
                      v56 = MEMORY[0x1E69E6158];
                      v57 = v48;
                      OUTLINED_FUNCTION_0_290();
                      v50 = sub_1E42071F4();
                      v52 = v51;

                      v60 = v50;
                      v61 = v52;
                      OUTLINED_FUNCTION_2_219();
                      v58 = v48;
                      v59 = v48;
                      v56 = v49;
                      v57 = v48;
                      sub_1E42071F4();
                      OUTLINED_FUNCTION_4_219();
                    }

                    else
                    {
                    }

                    goto LABEL_27;
                  }

                  v53 = sub_1E3741090(0xD00000000000001DLL, 0x80000001E42890D0, v9);
                  if (v54)
                  {
                    v58 = OUTLINED_FUNCTION_3_218(v53, v54, v55);
                    v59 = v58;
                    v56 = MEMORY[0x1E69E6158];
                    v57 = v58;
                    OUTLINED_FUNCTION_0_290();
                    sub_1E42071F4();
                    OUTLINED_FUNCTION_4_219();

                    goto LABEL_27;
                  }
                }

                else
                {
                  if (!v21)
                  {

                    return;
                  }

                  v32 = sub_1E3741090(0xD00000000000001FLL, 0x80000001E4289080, v9);
                  if (v33)
                  {
                    v60 = v32;
                    v61 = v33;
                    OUTLINED_FUNCTION_2_219();
                    v56 = sub_1E32822E0(v34, v35, v36);
                    v57 = v56;
                    OUTLINED_FUNCTION_0_290();
                    sub_1E42071F4();
                    OUTLINED_FUNCTION_4_219();

LABEL_27:

                    return;
                  }
                }

                goto LABEL_27;
              }

LABEL_33:
              __break(1u);
              return;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_30;
  }
}

uint64_t sub_1E3F1E4DC(uint64_t *a1)
{
  v2 = v1;
  v4 = *sub_1E3CFEA54();

  v5 = [v2 addedEntityIDs];
  v6 = sub_1E4206624();

  v7 = [v2 removedEntityIDs];
  v8 = sub_1E4206624();

  (*(*v4 + 400))(v6, v8);

  v9 = sub_1E39C2CD0();
  if (!v10)
  {
    return 2;
  }

  v11 = v9;
  v12 = v10;
  v13 = [v2 addedEntityIDs];
  v14 = sub_1E4206624();

  LOBYTE(v13) = sub_1E3862230(v11, v12, v14);

  if (v13)
  {
  }

  else
  {
    v16 = [v2 removedEntityIDs];
    v17 = sub_1E4206624();

    v18 = sub_1E3862230(v11, v12, v17);

    if (!v18)
    {
      return 0;
    }
  }

  v19 = dynamic_cast_existential_1_conditional(a1, *a1, &protocol descriptor for CollectionChildViewModelDataUpdating);
  if (v19)
  {
    v21 = v19;
    v22 = v20;
    v23 = *v19;
    v24 = *(v20 + 40);

    if (v24(v23, v22))
    {
      v26 = v25;
      ObjectType = swift_getObjectType();
      v28 = (*(v26 + 8))(v21, v22, v2, ObjectType, v26);

      swift_unknownObjectRelease();
      return v28;
    }
  }

  return 1;
}

uint64_t sub_1E3F1E814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContextMenuPreview(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[6]) = a1;
  *(a3 + v6[7]) = a2;
  type metadata accessor for ContextMenuPreviewInteractor(0);
  swift_allocObject();
  result = sub_1E3F21ED4();
  *a3 = sub_1E38074D0;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

void sub_1E3F1E928()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v143 = v2;
  v3 = type metadata accessor for ContextMenuPreview(0);
  OUTLINED_FUNCTION_0_10();
  v140 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v141 = v6;
  OUTLINED_FUNCTION_17_3(v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C758, &qword_1E42DDE28);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C760, &qword_1E42DDE30);
  OUTLINED_FUNCTION_6_4(v10, &v149[5]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C768, &qword_1E42DDE38);
  OUTLINED_FUNCTION_6_4(v13, &v149[4]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C770, &qword_1E42DDE40);
  OUTLINED_FUNCTION_6_4(v16, &v149[8]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C778, &qword_1E42DDE48);
  OUTLINED_FUNCTION_6_4(v19, &v149[10]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C780, &qword_1E42DDE50);
  OUTLINED_FUNCTION_6_4(v22, &v149[13]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v25 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = (v30 - v29);
  v144 = v3;
  v34 = *sub_1E40602F8(v32, v33);
  v35 = (*(v34 + 544))();
  if (v35)
  {
    v36 = v35;
    v37 = [v35 contextMenuEventDataSource];

    if (v37)
    {
      v38 = [v37 documentDataSource];

      if (v38)
      {
        v39 = [v38 uiConfiguration];
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (v40)
        {
          v41 = v40;
          [v40 preferredSize];
          if (v42 > 0.0)
          {
            [v41 preferredSize];
            v44 = v43;
            v46 = v45;

            if (v44 <= 0.0 || v46 != 0.0)
            {
              goto LABEL_14;
            }

            goto LABEL_11;
          }
        }
      }
    }
  }

  type metadata accessor for ContextMenuPreviewItemViewLayout();
  v47 = OUTLINED_FUNCTION_38();
  sub_1E3E09BD8(v47);
  v44 = v48;
  v46 = 0.0;
  if (v48 <= 0.0)
  {
    goto LABEL_14;
  }

LABEL_11:
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v49, v50, &unk_1E42BD340);
  OUTLINED_FUNCTION_85_1();
  sub_1E4200BC4();
  v51 = sub_1E3F21284();

  if (v51)
  {
    OUTLINED_FUNCTION_8();
    v53 = (*(v52 + 432))();
    v55 = v54;

    v149[0] = v53;
    LOBYTE(v149[1]) = v55 & 1;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
    sub_1E3A1F10C(v56, v57, v58);
    sub_1E4149AF0(v56, v148);
    if ((BYTE8(v148[0]) & 1) == 0)
    {
      VUIRoundValue();
      v46 = v59;
    }
  }

LABEL_14:

  v60 = v144;
  sub_1E3746E10(v31);
  v61 = sub_1E3B0352C();
  (*(v27 + 8))(v31, v25);
  v62 = v61 | (v46 <= 0.0);
  v63 = v46;
  if (v61 & 1 | (v46 <= 0.0))
  {
    v63 = 0.0;
  }

  v131 = v63;
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v64, v65, &unk_1E42BD340);
  OUTLINED_FUNCTION_33_75();
  v132 = *(v1 + *(v60 + 28));
  sub_1E3F21454(v132);

  v66 = v133;
  sub_1E3F1F454(v1, v133, v44);
  OUTLINED_FUNCTION_33_75();
  v67 = sub_1E3F21284();

  v130[3] = v62;
  if (v67 && (OUTLINED_FUNCTION_8(), (*(v68 + 176))(v146), v69 = v146[0], v70 = v146[1], v71 = v146[2], v72 = v146[3], , (v147 & 1) == 0))
  {
    v73.n128_u64[0] = v69;
    v74.n128_u64[0] = v70;
    v75.n128_u64[0] = v71;
    v76.n128_u64[0] = v72;
    v77 = j_nullsub_1(v73, v74, v75, v76);
  }

  else
  {
    v77 = OUTLINED_FUNCTION_5_8();
  }

  v81 = v77;
  v82 = v78;
  v83 = v79;
  v84 = v80;
  v85 = v136;
  v86 = sub_1E4202734();
  v87 = v134;
  sub_1E3741EA0(v66, v134, &qword_1ECF3C758, &qword_1E42DDE28);
  OUTLINED_FUNCTION_141();
  v89 = v87 + v88;
  *v89 = v86;
  *(v89 + 8) = v81;
  *(v89 + 16) = v82;
  *(v89 + 24) = v83;
  *(v89 + 32) = v84;
  *(v89 + 40) = 0;
  v90 = sub_1E4203D44();
  v92 = v91;
  OUTLINED_FUNCTION_141();
  v93 = v135;
  v95 = v135 + v94;
  sub_1E4200BC4();
  v96 = sub_1E3F21210();

  *&v148[0] = v96;
  v149[2] = v1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31990, &qword_1E42DDF40);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240, &unk_1E429B770);
  sub_1E4148F70(sub_1E3F22674, v149, v97, v98, v95);

  v99 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C788, &unk_1E42DDE58) + 36));
  *v99 = v90;
  v99[1] = v92;
  sub_1E3741EA0(v87, v93, &qword_1ECF3C760, &qword_1E42DDE30);
  sub_1E4203DB4();
  sub_1E4200D94();
  sub_1E3741EA0(v93, v85, &qword_1ECF3C768, &qword_1E42DDE38);
  OUTLINED_FUNCTION_141();
  v101 = (v85 + v100);
  v102 = v148[1];
  *v101 = v148[0];
  v101[1] = v102;
  v101[2] = v148[2];
  sub_1E4203DA4();
  v103 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_30_8(v103, v104, v105, v106, v107, v108, v109, v110, v129);
  v111 = v85;
  v112 = v137;
  sub_1E3741EA0(v111, v137, &qword_1ECF3C770, &qword_1E42DDE40);
  OUTLINED_FUNCTION_141();
  memcpy((v112 + v113), v149, 0x70uLL);
  v114 = sub_1E4060464();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28, &qword_1E42A2A60);
  sub_1E3DC5070();
  v116 = sub_1E3B501F8(v114, v115);

  v117 = v142;
  sub_1E3F21F38(v1, v142);
  v118 = (*(v140 + 80) + 16) & ~*(v140 + 80);
  v119 = swift_allocObject();
  sub_1E3F21F9C(v117, v119 + v118);
  v120 = v112;
  v121 = v139;
  sub_1E3741EA0(v120, v139, &qword_1ECF3C778, &qword_1E42DDE48);
  v122 = v138;
  *(v121 + *(v138 + 52)) = v116;
  v123 = (v121 + *(v122 + 56));
  *v123 = sub_1E3F22000;
  v123[1] = v119;
  v145 = v132;
  sub_1E3F21F38(v1, v117);
  v124 = swift_allocObject();
  sub_1E3F21F9C(v117, v124 + v118);
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_1_33();
  sub_1E32752B0(v125, &qword_1ECF3C780, &qword_1E42DDE50, v126);
  OUTLINED_FUNCTION_11_159();
  sub_1E3F21EF0(v127, v128, &protocol conformance descriptor for ViewModel);

  sub_1E4203524();

  sub_1E325F6F0(v121, &qword_1ECF3C780, &qword_1E42DDE50);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3F1F454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v127 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7A0, &qword_1E42DDF48);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  v122 = v111 - v10;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7A8, &qword_1E42DDF50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v125 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7B0, &qword_1E42DDF58);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7B8, &qword_1E42DDF60);
  OUTLINED_FUNCTION_6_4(v16, &v133);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7C0, &qword_1E42DDF68);
  OUTLINED_FUNCTION_6_4(v19, &v134);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7C8, &qword_1E42DDF70);
  OUTLINED_FUNCTION_0_10();
  v118 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7D0, &qword_1E42DDF78);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17_3(v111 - v27);
  v28 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = (v33 - v32);
  v128 = a1;
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v35, v36, &unk_1E42BD340);
  OUTLINED_FUNCTION_20_111();
  v37 = sub_1E3F21118();

  if (!v37 || (OUTLINED_FUNCTION_8(), v39 = (*(v38 + 392))(), , !v39))
  {
LABEL_5:
    v40 = sub_1E4201D44();
    OUTLINED_FUNCTION_20_111();
    OUTLINED_FUNCTION_42_2();
    sub_1E3F21284();
    OUTLINED_FUNCTION_50();

    if (v37)
    {
      OUTLINED_FUNCTION_8();
      v42 = (*(v41 + 1176))();
      v44 = v43;

      if (v44)
      {
        v45 = 0;
      }

      else
      {
        v45 = v42;
      }
    }

    else
    {
      v45 = 0;
    }

    v46 = v121;
    *v121 = v40;
    v46[1] = v45;
    *(v46 + 16) = 0;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7D8, &qword_1E42DDF80);
    sub_1E3F208F8(v46 + *(v47 + 44));
    v48 = &qword_1ECF3C7A0;
    v49 = &qword_1E42DDF48;
    v50 = v122;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v51, v52, v53, v54);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v55, v56, v57, v58);
    swift_storeEnumTagMultiPayload();
    sub_1E3F2269C();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v59, &qword_1ECF3C7A0, &qword_1E42DDF48, v60);
    sub_1E4201F44();
    v61 = v50;
    return sub_1E325F6F0(v61, v48, v49);
  }

  type metadata accessor for ContextMenuPreview(0);
  sub_1E3746E10(v34);
  v37 = sub_1E3B0352C();
  (*(v30 + 8))(v34, v28);
  if (v37)
  {

    goto LABEL_5;
  }

  v63 = sub_1E4201D44();
  OUTLINED_FUNCTION_20_111();
  OUTLINED_FUNCTION_42_2();
  sub_1E3F21284();
  OUTLINED_FUNCTION_50();

  if (v37)
  {
    OUTLINED_FUNCTION_8();
    v65 = (*(v64 + 1176))();
    v67 = v66;

    if (v67)
    {
      v68 = 0;
    }

    else
    {
      v68 = v65;
    }
  }

  else
  {
    v68 = 0;
  }

  v69 = v114;
  v70 = v113;
  v71 = v112;
  *v112 = v63;
  *(v71 + 8) = v68;
  *(v71 + 16) = 0;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C808, &qword_1E42DDF88);
  v73 = sub_1E3F1FD9C(v71 + *(v72 + 44));
  (*(*v39 + 176))(v129, v73);
  if (v130)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v76.n128_u64[0] = v129[2];
    v77.n128_u64[0] = v129[3];
    v74.n128_u64[0] = v129[0];
    v75.n128_u64[0] = v129[1];
    j_nullsub_1(v74, v75, v76, v77);
  }

  OUTLINED_FUNCTION_3();
  v78 = v115;
  v79 = sub_1E4202734();
  v80 = sub_1E3741EA0(v71, v70, &qword_1ECF3C7B0, &qword_1E42DDF58);
  v81 = v70 + *(v111[1] + 36);
  *v81 = v79;
  *(v81 + 8) = a3;
  *(v81 + 16) = v3;
  *(v81 + 24) = v4;
  *(v81 + 32) = v5;
  *(v81 + 40) = 0;
  v82 = (*(*v39 + 744))(v80);
  if (!v82)
  {
    v82 = [objc_opt_self() clearColor];
  }

  v83 = v82;
  v84 = sub_1E38F08C4(v82);

  LOBYTE(v83) = sub_1E4202734();
  v85 = sub_1E3741EA0(v70, v69, &qword_1ECF3C7B8, &qword_1E42DDF60);
  v86 = v69 + *(v78 + 36);
  *v86 = v84;
  *(v86 + 8) = v83;
  (*(*v39 + 552))(v131, v85);
  v87 = 0.0;
  if ((v132 & 1) == 0)
  {
    v87 = sub_1E3952BE8(v131[0], v131[1], v131[2], v131[3]);
  }

  v88 = sub_1E3F22790();
  v89 = sub_1E383C8A8();
  v90 = OUTLINED_FUNCTION_18();
  v91 = OUTLINED_FUNCTION_18();
  v92 = v117;
  sub_1E391F7FC(0, v90 & 1, v91 & 1, v78, v88, v89, v87);
  sub_1E325F6F0(v69, &qword_1ECF3C7C0, &qword_1E42DDF68);
  v93 = v116;
  v94 = (v116 + *(v123 + 36));
  v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
  v96 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v97 + 104))(v94 + v95, v96);
  *v94 = swift_getKeyPath();
  (*(v118 + 32))(v93, v92, v119);
  v48 = &qword_1ECF3C7D0;
  v49 = &qword_1E42DDF78;
  v98 = v120;
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v99, v100, v101, v102);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v103, v104, v105, v106);
  swift_storeEnumTagMultiPayload();
  sub_1E3F2269C();
  OUTLINED_FUNCTION_1();
  sub_1E32752B0(v107, v108, v109, v110);
  sub_1E4201F44();

  v61 = v98;
  return sub_1E325F6F0(v61, v48, v49);
}

uint64_t sub_1E3F1FD9C@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C810, &qword_1E42DDFC0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v60 = v4 - v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_6();
  v59 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v58 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v54 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C818, &qword_1E42DDFC8);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C820, &qword_1E42DDFD0);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v62 = v21 - v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  sub_1E3F201D0();
  sub_1E4203DA4();
  v29 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_30_8(v29, v30, v31, v32, v33, v34, v35, v36, v53);
  sub_1E3741EA0(v18, v25, &qword_1ECF3C818, &qword_1E42DDFC8);
  memcpy(&v25[*(v20 + 44)], __src, 0x70uLL);
  v55 = v28;
  sub_1E3741EA0(v25, v28, &qword_1ECF3C820, &qword_1E42DDFD0);
  v37 = OUTLINED_FUNCTION_9_160();
  v54 = v14;
  sub_1E3F206F8(v37, sub_1E3F22978, v14);
  v38 = OUTLINED_FUNCTION_15_141();
  v39 = v56;
  sub_1E3F206F8(v38, sub_1E3F2293C, v56);
  v40 = OUTLINED_FUNCTION_14_153();
  v41 = v57;
  sub_1E3F206F8(v40, sub_1E3F22900, v57);
  v42 = v62;
  sub_1E3743538(v28, v62, &qword_1ECF3C820, &qword_1E42DDFD0);
  v43 = v58;
  OUTLINED_FUNCTION_31_74(v14, v58);
  v44 = v39;
  v45 = v59;
  OUTLINED_FUNCTION_31_74(v39, v59);
  v46 = v41;
  v47 = v41;
  v48 = v60;
  OUTLINED_FUNCTION_31_74(v46, v60);
  v49 = v42;
  v50 = v61;
  sub_1E3743538(v49, v61, &qword_1ECF3C820, &qword_1E42DDFD0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C828, &unk_1E42DDFD8);
  OUTLINED_FUNCTION_31_74(v43, v50 + v51[12]);
  OUTLINED_FUNCTION_31_74(v45, v50 + v51[16]);
  OUTLINED_FUNCTION_31_74(v48, v50 + v51[20]);
  OUTLINED_FUNCTION_34_68(v47);
  OUTLINED_FUNCTION_34_68(v44);
  OUTLINED_FUNCTION_34_68(v54);
  sub_1E325F6F0(v55, &qword_1ECF3C820, &qword_1E42DDFD0);
  OUTLINED_FUNCTION_34_68(v48);
  OUTLINED_FUNCTION_34_68(v45);
  OUTLINED_FUNCTION_34_68(v43);
  return sub_1E325F6F0(v62, &qword_1ECF3C820, &qword_1E42DDFD0);
}

void sub_1E3F201D0()
{
  OUTLINED_FUNCTION_21_5();
  v50 = v2;
  v4 = v3;
  v54 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C830, &qword_1E42DDFE8);
  OUTLINED_FUNCTION_6_4(v6, &v59);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v52 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = *(v0 + 16);
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v13, v14, &unk_1E42BD340);
  OUTLINED_FUNCTION_4_220();
  v15 = sub_1E3F21164();

  v51 = v15;
  if (v15)
  {
    v16 = type metadata accessor for ContextMenuPreview(0);
    v18 = sub_1E40602F8(v16, v17);
    v19 = OUTLINED_FUNCTION_4_220();
    sub_1E3F21284();
    OUTLINED_FUNCTION_38();

    v20 = 0.0;
    if (v19)
    {
      v21 = sub_1E374E9C4();

      (*(*v21 + 152))(v56, v22);
      v23 = *v56;
      v24 = *&v56[1];
      v25 = *&v56[2];
      v26 = *&v56[3];

      if ((v57 & 1) == 0)
      {
        v20 = sub_1E3952BE0(v23, v24, v25, v26);
      }
    }

    v27 = v4 - v20;
    v28 = OUTLINED_FUNCTION_4_220();
    sub_1E3F21284();
    OUTLINED_FUNCTION_38();

    v49 = v11;
    if (v28)
    {
      v29 = sub_1E3E09EB8(v18);

      *v55 = v29;
      sub_1E3A1F10C(v30, v31, v32);
      sub_1E41499CC(MEMORY[0x1E69E7DE0], v58);
      if (v58[8])
      {
        v28 = 0;
      }

      else
      {
        VUIRoundValue();
        v28 = v39;
      }
    }

    v40 = j__OUTLINED_FUNCTION_18();
    v41 = j__OUTLINED_FUNCTION_18();
    sub_1E3EB9C0C(*&v27, v28, 0, 0, 0, 1, (v50 & 1) == 0, 2, v58, 0, 1, 0, 1, 0, 2, v40 & 1, v41 & 1);

    memcpy(v55, v58, 0x5BuLL);
    OUTLINED_FUNCTION_4_220();
    OUTLINED_FUNCTION_42_2();
    sub_1E3F21284();
    OUTLINED_FUNCTION_50();

    if (v28)
    {
      sub_1E374E9C4();
      OUTLINED_FUNCTION_35_2();
    }

    else
    {
      v12 = 0;
    }

    v42 = v49;
    v43 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v51, v55, v12, v43 & 1, 0, 0, v42);

    sub_1E375C31C(v55);
    v44 = v52;
    v45 = v53;
    (*(v52 + 16))(v1, v42, v53);
    swift_storeEnumTagMultiPayload();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29268, &unk_1E42999E0);
    OUTLINED_FUNCTION_6_15(v46);
    sub_1E3761B90();
    OUTLINED_FUNCTION_19_1();
    sub_1E4201F44();

    (*(v44 + 8))(v42, v45);
  }

  else
  {
    v33 = sub_1E42036E4();
    OUTLINED_FUNCTION_4_220();
    v34 = sub_1E3F21284();

    if (v34)
    {
      v36 = ((*v34)[10].info)(v35);
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 1;
    }

    *v1 = v33;
    *(v1 + 8) = 256;
    *(v1 + 16) = v36;
    *(v1 + 24) = v38 & 1;
    *(v1 + 25) = 0;
    swift_storeEnumTagMultiPayload();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29268, &unk_1E42999E0);
    OUTLINED_FUNCTION_6_15(v47);
    sub_1E3761B90();
    OUTLINED_FUNCTION_19_1();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_20_0();
}

double sub_1E3F206F8@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v7, v8, &unk_1E42BD340);
  OUTLINED_FUNCTION_85_1();
  sub_1E4200BC4();
  v9 = a1();

  v15 = v9;
  v14 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088, &qword_1E42B7E40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140, &qword_1E42B7E30);
  sub_1E4148F70(a2, &v13, v10, v11, a3);

  return result;
}

uint64_t sub_1E3F20808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C838, &unk_1E42DDFF0);
  sub_1E3743538(*(a1 + 8), a2 + v5[12], &qword_1ECF3C818, &qword_1E42DDFC8);
  v6 = a2 + v5[16];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v6 = v9;
  *(v6 + 8) = v8;
  sub_1E3743538(v7, a2 + v5[20], &qword_1ECF3C810, &qword_1E42DDFC0);
  sub_1E3743538(*(a1 + 32), a2 + v5[24], &qword_1ECF3C810, &qword_1E42DDFC0);
  return sub_1E3743538(*(a1 + 40), a2 + v5[28], &qword_1ECF3C810, &qword_1E42DDFC0);
}

uint64_t sub_1E3F208F8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C810, &qword_1E42DDFC0);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v33 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v33 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v33 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C818, &qword_1E42DDFC8);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v33 - v27;
  sub_1E3F201D0();
  v29 = OUTLINED_FUNCTION_9_160();
  sub_1E3F206F8(v29, sub_1E3F22978, v20);
  v30 = OUTLINED_FUNCTION_15_141();
  sub_1E3F206F8(v30, sub_1E3F2293C, v17);
  v31 = OUTLINED_FUNCTION_14_153();
  sub_1E3F206F8(v31, sub_1E3F22900, v14);
  v37 = 0;
  v38 = 0;
  v39[0] = &v37;
  sub_1E3743538(v28, v25, &qword_1ECF3C818, &qword_1E42DDFC8);
  v35 = 0;
  v36 = 0;
  v39[1] = v25;
  v39[2] = &v35;
  sub_1E3743538(v20, v11, &qword_1ECF3C810, &qword_1E42DDFC0);
  v39[3] = v11;
  sub_1E3743538(v17, v8, &qword_1ECF3C810, &qword_1E42DDFC0);
  v39[4] = v8;
  sub_1E3743538(v14, v5, &qword_1ECF3C810, &qword_1E42DDFC0);
  v39[5] = v5;
  sub_1E3F20808(v39, v34);
  OUTLINED_FUNCTION_45_3(v14);
  OUTLINED_FUNCTION_45_3(v17);
  OUTLINED_FUNCTION_45_3(v20);
  sub_1E325F6F0(v28, &qword_1ECF3C818, &qword_1E42DDFC8);
  OUTLINED_FUNCTION_45_3(v5);
  OUTLINED_FUNCTION_45_3(v8);
  OUTLINED_FUNCTION_45_3(v11);
  return sub_1E325F6F0(v25, &qword_1ECF3C818, &qword_1E42DDFC8);
}

uint64_t sub_1E3F20C08@<X0>(void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v10, v11, &unk_1E42BD340);
  OUTLINED_FUNCTION_85_1();
  sub_1E4200BC4();
  v12 = sub_1E3F21284();

  if (v12)
  {
    a3(v13);
  }

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();

  v16 = sub_1E3C27528(v14, v15);
  type metadata accessor for ContextMenuPreview(0);
  sub_1E3F21EF0(&qword_1EE2789E8, type metadata accessor for ContextMenuPreview, &unk_1E42DDE68);
  v17 = OUTLINED_FUNCTION_18();
  sub_1E3883DA0(v16, v17 & 1);

  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  (*(v8 + 32))(a4, v4, v20);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140, &qword_1E42B7E30);
  memcpy((a4 + *(v18 + 36)), __src, 0x70uLL);
  return __swift_storeEnumTagSinglePayload(a4, 0, 1, v18);
}

uint64_t sub_1E3F20E84@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v14 = *a1;
  sub_1E3EB9BB4(v30);
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v15, v16, &unk_1E42BD340);
  sub_1E4200BC4();
  v17 = sub_1E3F21284();

  if (v17)
  {
    v18 = sub_1E3B910AC();
  }

  else
  {
    v18 = 0;
  }

  v19 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v14, v30, v18, v19 & 1, 0, 0, v3);

  v20 = sub_1E375C31C(v30);
  v21 = (*(*v14 + 392))(v20);
  if (v21 && ((*(*v21 + 152))(v31), v4 = v31[0], v5 = v31[1], v6 = v31[2], v7 = v31[3], , (v32 & 1) == 0))
  {
    v22.n128_u64[0] = v4;
    v23.n128_u64[0] = v5;
    v24.n128_u64[0] = v6;
    v25.n128_u64[0] = v7;
    j_nullsub_1(v22, v23, v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v26 = sub_1E4202734();
  (*(v12 + 32))(a3, v3, v10);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240, &unk_1E429B770);
  v28 = a3 + *(v27 + 36);
  *v28 = v26;
  *(v28 + 8) = v4;
  *(v28 + 16) = v5;
  *(v28 + 24) = v6;
  *(v28 + 32) = v7;
  *(v28 + 40) = 0;
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v27);
}

uint64_t sub_1E3F21118()
{
  if (!*(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel))
  {
    return 0;
  }

  sub_1E39C408C();
  OUTLINED_FUNCTION_35_2();
  return v0;
}

__objc2_class **sub_1E3F21184(__objc2_class **a1)
{
  if (!*(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel))
  {
    return 0;
  }

  sub_1E39C408C();
  OUTLINED_FUNCTION_35_2();
  if (a1 && *a1 != _TtC8VideosUI13TextViewModel)
  {

    return 0;
  }

  return a1;
}

uint64_t sub_1E3F21218(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel))
  {

    sub_1E39C408C();
    OUTLINED_FUNCTION_35_2();
    if (a1)
    {
      type metadata accessor for ImageViewModel();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

__objc2_class **sub_1E3F21284()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel))
  {
    return 0;
  }

  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 392);

  (v2)(v3);
  OUTLINED_FUNCTION_35_2();
  if (v2 && *v2 != _TtC8VideosUI32ContextMenuPreviewItemViewLayout)
  {

    return 0;
  }

  return v2;
}

double sub_1E3F21334(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel);
  *(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel);

  if (v4)
  {
    v8 = *(v4 + 98);
    if (!v3)
    {
      if (v8 == 263)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v9 = *(v3 + 98);
    if (v8 != 263)
    {
      if (v9 != 263)
      {
        sub_1E3741534(v5, v6, v7);
        if (sub_1E4205E84())
        {
          goto LABEL_16;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_16;
    }

    v9 = *(v3 + 98);
  }

  if (v9 == 263)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (*(v2 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_cardViewModel))
  {

    if (sub_1E3F21284())
    {

      sub_1E3E09A08(v10, v11, v12);
    }
  }

LABEL_16:

  return result;
}

uint64_t sub_1E3F21454(uint64_t a1)
{
  sub_1E3F215B0(a1);
  v3 = OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel);
  if (!v4)
  {
    sub_1E3F21628(a1);
    v4 = *(v1 + v3);
  }

  return v4;
}

double sub_1E3F214BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_1E3741534(a1, a2, a3);
    if (sub_1E4205E84())
    {
    }

    else if (!sub_1E39C408C())
    {
      return result;
    }

    sub_1E3F21334(v4);
    type metadata accessor for ContextMenuPreviewInteractor(0);
    OUTLINED_FUNCTION_0_291();
    sub_1E3F21EF0(v5, v6, &unk_1E42BD340);
    sub_1E4200514();
    sub_1E4200594();
  }

  return result;
}

double sub_1E3F215B0(uint64_t a1)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_cardViewModel;
    if (*(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_cardViewModel) != a1)
    {

      sub_1E3F21334(0);
      *(v1 + v3) = a1;
    }
  }

  return result;
}

void sub_1E3F21628(uint64_t a1)
{
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v44 = a1;
  type metadata accessor for ViewModel();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39490, &qword_1E42D4868);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(&v41, aBlock);
    v16 = v39;
    __swift_project_boxed_opaque_existential_1(aBlock, v38);
    v17 = OUTLINED_FUNCTION_50();
    v19 = v18(v17, v16);
    sub_1E3F21334(v19);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    return;
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v20 = sub_1E325F6F0(&v41, &qword_1ECF3C798, &qword_1E42DDF20);
  v21 = (*(*a1 + 544))(v20);
  if (v21)
  {
    v22 = v21;
    v23 = [v21 contextMenuEventDataSource];

    if (v23)
    {
      v24 = [v23 documentDataSource];

      if (v24)
      {
        v36 = v4;
        v25 = [v24 prefetchData];
        if (v25 && (v26 = v25, v27 = [v25 jsonData], v26, v27) && (v28 = sub_1E4205C64(), v27, v29 = sub_1E374BD08(v28), , v29))
        {
          v38 = &qword_1F5D5CE68;
          v39 = &off_1F5D5C708;
          LOWORD(aBlock[0]) = 230;
          sub_1E3F9F164(aBlock, v29, MEMORY[0x1E69E7CA0] + 8);

          if (*(&v42 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_3;
            }

            v30 = v44;
            __swift_destroy_boxed_opaque_existential_1(aBlock);
            v33 = *sub_1E37AF264();
            v31 = swift_allocObject();
            swift_weakInit();
            v32 = swift_allocObject();
            v32[2] = v31;
            v32[3] = v30;
            v32[4] = a1;
            v39 = sub_1E3F225D4;
            v40 = v32;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1E329EEC4;
            v38 = &block_descriptor_137;
            v35 = _Block_copy(aBlock);

            v34 = v33;

            sub_1E4203FE4();
            *&v41 = MEMORY[0x1E69E7CC0];
            sub_1E3F21EF0(&qword_1EE2882E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
            sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000, MEMORY[0x1E69E6328]);
            sub_1E42072E4();
            MEMORY[0x1E6911380](0, v15, v8, v35);

            _Block_release(v35);
            (*(v36 + 8))(v8, v2);
            (*(v11 + 8))(v15, v9);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(aBlock);
            sub_1E325F6F0(&v41, &unk_1ECF296E0, &unk_1E4298030);
          }
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1E3F21BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    type metadata accessor for ViewModel();

    v11 = sub_1E39BED80(230, a2, a3);
    v12 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v11;

    sub_1E3CC3FD0(0, 0, v8, &unk_1E42DDF30, v13);

    return sub_1E325F6F0(v8, &unk_1ECF2C400, &qword_1E429ABE0);
  }

  return result;
}

uint64_t sub_1E3F21D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E3F21D54, 0, 0);
}

uint64_t sub_1E3F21D54()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  OUTLINED_FUNCTION_42_2();
  *(v0 + 32) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3F21DDC, v2, v1);
}

uint64_t sub_1E3F21DDC()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 24);

  sub_1E3F21E44(v1, 1);
  OUTLINED_FUNCTION_54();

  return v2();
}

double sub_1E3F21E44(uint64_t a1, char a2)
{

  result = sub_1E3F21334(v3);
  if (a2)
  {
    type metadata accessor for ContextMenuPreviewInteractor(0);
    OUTLINED_FUNCTION_0_291();
    sub_1E3F21EF0(v5, v6, &unk_1E42BD340);
    sub_1E4200514();
    sub_1E4200594();
  }

  return result;
}

uint64_t sub_1E3F21ED4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_cardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel) = 0;
  return sub_1E3B500B4();
}

uint64_t sub_1E3F21EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3F21F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextMenuPreview(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F21F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextMenuPreview(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3F22000()
{
  v0 = type metadata accessor for ContextMenuPreview(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_40_63();
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v1, v2, &unk_1E42BD340);
  OUTLINED_FUNCTION_85_1();
  sub_1E4200BC4();
  v3 = OUTLINED_FUNCTION_50();
  sub_1E3F214BC(v3, v4, v5);

  return result;
}

uint64_t objectdestroyTm_51()
{
  v1 = type metadata accessor for ContextMenuPreview(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  sub_1E3264CE0(*v2, v2[1]);
  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_1E3F22204(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ContextMenuPreview(0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_40_63();
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v4, v5, &unk_1E42BD340);
  OUTLINED_FUNCTION_32_77();
  sub_1E3F21334(0);
  sub_1E4200514();
  sub_1E4200594();

  v6 = OUTLINED_FUNCTION_32_77();
  sub_1E3F21284();
  OUTLINED_FUNCTION_38();

  if (v6)
  {
    sub_1E3E09A08(a2, v7, v8);
  }

  return result;
}

void sub_1E3F22374(uint64_t a1)
{
  sub_1E3F22428(319);
  if (v1 <= 0x3F)
  {
    sub_1E38D5D68(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ContextMenuController(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ViewModel();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3F22428(uint64_t a1)
{
  if (!qword_1EE289E20)
  {
    type metadata accessor for ContextMenuPreviewInteractor(255);
    sub_1E3F21EF0(qword_1EE24BC90, type metadata accessor for ContextMenuPreviewInteractor, &unk_1E42BD340);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289E20);
    }
  }
}

double sub_1E3F224BC()
{

  return result;
}

uint64_t sub_1E3F22504()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3F225E0()
{
  OUTLINED_FUNCTION_24();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E37E1058;

  return sub_1E3F21D34(v4, v5, v6, v2, v3);
}

unint64_t sub_1E3F2269C()
{
  result = qword_1ECF3C7E0;
  if (!qword_1ECF3C7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C7D0, &qword_1E42DDF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C7C0, &qword_1E42DDF68);
    sub_1E3F22790();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE2887D0, &qword_1ECF291E0, &qword_1E42AE9A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C7E0);
  }

  return result;
}

unint64_t sub_1E3F22790()
{
  result = qword_1ECF3C7E8;
  if (!qword_1ECF3C7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C7C0, &qword_1E42DDF68);
    sub_1E3F22848();
    sub_1E32752B0(&qword_1EE288898, &qword_1ECF2DCD8, &qword_1E42AE9C0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C7E8);
  }

  return result;
}

unint64_t sub_1E3F22848()
{
  result = qword_1ECF3C7F0;
  if (!qword_1ECF3C7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C7B8, &qword_1E42DDF60);
    sub_1E32752B0(&qword_1ECF3C7F8, &qword_1ECF3C7B0, &qword_1E42DDF58, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C7F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_77()
{

  return sub_1E4200BC4();
}

uint64_t sub_1E3F229D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double (**a3)(uint64_t a1)@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C840, &unk_1E42DE088);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v8 + 16))(&v18 - v13, a1, v6, v12);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, v14, v6);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  *a3 = sub_1E3F23254;
  a3[1] = v16;
}

double sub_1E3F22B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4201414();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v7 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v11);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C840, &unk_1E42DE088);
  v15 = sub_1E32752B0(&qword_1EE288990, &qword_1ECF3C840, &unk_1E42DE088, MEMORY[0x1E697FDF8]);
  sub_1E3783540(sub_1E3F2330C, v13, v14, v15);

  return result;
}

double sub_1E3F22CC0(_WORD *a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*a1 + 1472))(v8);
  if ((v13 & 1) == 0)
  {
    v14 = v11;
    v15 = sub_1E40B977C(v11);
    v16 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v16, v4);

    v17 = sub_1E41FFC94();
    v18 = sub_1E4206814();

    if (os_log_type_enabled(v17, v18))
    {
      v31 = a2;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      v33 = v20;
      *v19 = 136315650;
      v32 = a1[49];
      sub_1E37D144C(v20, v21, v22);
      v23 = sub_1E4207944();
      v25 = sub_1E3270FC8(v23, v24, &v33);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v14;
      *(v19 + 22) = 2080;
      if (v15 && (v26 = *(v15 + 24)) != 0)
      {
        v27 = *(v15 + 16);
      }

      else
      {

        v26 = 0xE300000000000000;
        v27 = 7104878;
      }

      v28 = sub_1E3270FC8(v27, v26, &v33);

      *(v19 + 24) = v28;
      _os_log_impl(&dword_1E323F000, v17, v18, "ItemHighlight:: collection %s, scroll to index %ld,id: %s", v19, 0x20u);
      v29 = v30;
      swift_arrayDestroy();
      MEMORY[0x1E69143B0](v29, -1, -1);
      MEMORY[0x1E69143B0](v19, -1, -1);

      (*(v6 + 8))(v10, v4);
      a2 = v31;
    }

    else
    {

      (*(v6 + 8))(v10, v4);
    }

    sub_1E3F22FB8(v15, a2);
  }

  return result;
}

void sub_1E3F22FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4201414();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - v12;
  if (a1)
  {
    v15 = *(a1 + 24);
    if (v15)
    {
      v16 = *(a1 + 16);
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = *(v6 + 16);
        v18(v22 - v12, a2, v4, v13);
        (v18)(v10, v14, v4);
        v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
        v20 = swift_allocObject();
        (*(v6 + 32))(v20 + v19, v14, v4);
        v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v21 = v16;
        v21[1] = v15;
        v22[0] = v16;
        v22[1] = v15;

        sub_1E4203F74();
        sub_1E4201404();

        (*(v6 + 8))(v10, v4);
      }
    }
  }
}

unint64_t sub_1E3F231D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE29BE00[0];
  if (!qword_1EE29BE00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29BE00);
  }

  return result;
}

double sub_1E3F23254(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C840, &unk_1E42DE088) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E3F22B20(a1, v1 + v4, v5);
}

double sub_1E3F2330C()
{
  v1 = *(sub_1E4201414() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1E3F22CC0(v2, v3);
}

void sub_1E3F23370()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C850, &qword_1E42DE0A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v14 = *(v6 + 98);
  if (v14 > 0x1E)
  {
    goto LABEL_13;
  }

  if (((1 << v14) & 0x47FFFDF8) != 0)
  {
LABEL_3:

    v15 = v4;
    if (!v4)
    {

      v28 = sub_1E3C27528(v26, v27);

      if (v28)
      {
        type metadata accessor for TextLayout();
        v15 = swift_dynamicCastClass();
        if (!v15)
        {
        }
      }

      else
      {
        v15 = 0;
      }
    }

    v16 = sub_1E3FAC85C(v15);
    LOBYTE(v53[0]) = v17 & 1;
    v54[0] = v6;
    v54[1] = v4;
    LOBYTE(v55) = v2;
    WORD4(v55) = v16;
    BYTE10(v55) = BYTE2(v16);
    v56 = v18;
    v57 = v17 & 1;
    v48 = v6;
    v49 = v4;
    v50 = v55;
    v51 = v18;
    v52 = v17 & 1;
    v19 = sub_1E3F23934(v54, v53);
    v22 = sub_1E3F2388C(v19, v20, v21);
    sub_1E3F238E0(v22, v23, v24);
    sub_1E4201F44();
    OUTLINED_FUNCTION_11_160();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C858, &qword_1E42DE0B0);
    v25 = sub_1E3F23800();
    OUTLINED_FUNCTION_5_1(v25);
    OUTLINED_FUNCTION_17_130();
    sub_1E3F2396C(v54);
    goto LABEL_5;
  }

  if (v14 != 9)
  {
LABEL_13:
    if (v14 - 236 >= 3)
    {
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      sub_1E42074B4();
      v40 = MEMORY[0x1E69109E0](0xD000000000000037, 0x80000001E4289170);
      LOWORD(v48) = v14;
      sub_1E37D144C(v40, v41, v42);
      v43 = sub_1E4207944();
      MEMORY[0x1E69109E0](v43);

      nullsub_1();

      (*(v9 + 16))(v0, v12, v7);
      OUTLINED_FUNCTION_75();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C858, &qword_1E42DE0B0);
      v44 = sub_1E3F23800();
      OUTLINED_FUNCTION_5_1(v44);
      OUTLINED_FUNCTION_17_130();
      (*(v9 + 8))(v12, v7);
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v29 = v4;
  if (!v4)
  {

    v47 = sub_1E3C27528(v45, v46);

    if (v47)
    {
      type metadata accessor for TextLayout();
      v29 = swift_dynamicCastClass();
      if (!v29)
      {
      }
    }

    else
    {
      v29 = 0;
    }
  }

  v30 = sub_1E3FAC85C(v29);
  v54[0] = v4;
  v48 = v6;
  v49 = v4;
  *&v50 = v30 & 0xFFFFFF;
  *(&v50 + 1) = v32;
  v51 = v31 & 1;
  v52 = 256;

  v33 = sub_1E37E93E8(v54, v53, &qword_1ECF2B848, &unk_1E42A1750);
  v36 = sub_1E3F2388C(v33, v34, v35);
  sub_1E3F238E0(v36, v37, v38);
  sub_1E4201F44();
  OUTLINED_FUNCTION_11_160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C858, &qword_1E42DE0B0);
  v39 = sub_1E3F23800();
  OUTLINED_FUNCTION_5_1(v39);
  OUTLINED_FUNCTION_75();
  sub_1E4201F44();

  sub_1E325F6F0(v54, &qword_1ECF2B848, &unk_1E42A1750);
LABEL_5:
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3F23800()
{
  result = qword_1EE289100;
  if (!qword_1EE289100)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C858, &qword_1E42DE0B0);
    v6 = sub_1E3F2388C(v1, v2, v3);
    sub_1E3F238E0(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289100);
  }

  return result;
}

unint64_t sub_1E3F2388C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A26F0[0];
  if (!qword_1EE2A26F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A26F0);
  }

  return result;
}

unint64_t sub_1E3F238E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE29F3C8[0];
  if (!qword_1EE29F3C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29F3C8);
  }

  return result;
}

unint64_t sub_1E3F239A8()
{
  result = qword_1EE288CB8;
  if (!qword_1EE288CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C860, &qword_1E42DE0C8);
    sub_1E3F23800();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CB8);
  }

  return result;
}

void *sub_1E3F23A4C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 33) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3F23A94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 41))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3F23AD0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 41) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

double sub_1E3F23B38@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  LOBYTE(v96) = 1;
  v5 = *(*v4 + 776);
  swift_retain_n();
  v5(v101, &v96, &unk_1F5D5DC78, &off_1F5D5C9F8);
  LOBYTE(v96) = 0;
  v6 = (v5)(v100, &v96, &unk_1F5D5DD08, &off_1F5D5CA18);
  v8 = v1[1];
  if (v8)
  {
    v9 = v1[1];
  }

  else
  {
    v9 = sub_1E3C27528(v6, v7);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = *(*v9 + 648);
  v11 = swift_retain_n();
  v12 = v10(v11);
  v2 = v12;

  if (v12 == 5 || (LOBYTE(v96) = v12, LOBYTE(v88) = 3, sub_1E3F25004(v13, v14, v15), (sub_1E4205E84() & 1) == 0))
  {
    v16 = (*(*v9 + 648))();
    if (v16 != 5)
    {
      LOBYTE(v96) = v16;
      LOBYTE(v88) = 4;
      sub_1E3F25004(v16, v17, v18);
      sub_1E4205E84();
    }
  }

LABEL_9:
  sub_1E37E93E8(v101, &v96, &unk_1ECF296E0, &unk_1E4298030);
  if (*(&v97 + 1))
  {
    if (swift_dynamicCast())
    {

      goto LABEL_15;
    }
  }

  else
  {
    sub_1E325F6F0(&v96, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E37E93E8(v100, &v92, &unk_1ECF296E0, &unk_1E4298030);
  if (v95)
  {
    v19 = swift_dynamicCast();

    if (v19)
    {
LABEL_15:
      v20 = v8;
      if (!v8)
      {

        v66 = sub_1E3C27528(v64, v65);

        if (v66)
        {
          type metadata accessor for TextLayout();
          v20 = swift_dynamicCastClass();
          if (!v20)
          {
          }
        }

        else
        {
          v20 = 0;
        }
      }

      v21 = swift_retain_n();
      sub_1E3FAC85C(v21);
      OUTLINED_FUNCTION_21_101();
      if (v20)
      {
        OUTLINED_FUNCTION_30_1();
        v23 = *(v22 + 648);

        v25 = v23(v24);

        if (v25 != 5)
        {
          LOBYTE(v88) = v25;
          v102[0] = 3;
          v29 = sub_1E3F25004(v26, v27, v28);
          if (OUTLINED_FUNCTION_14_154(v29))
          {

LABEL_40:
            OUTLINED_FUNCTION_6_192(v30, v31, v32, v33, v34, v35, v36, v37, a1, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, v92, v93, v94, v95, v96);
            LOBYTE(v92) = 0;
            HIBYTE(v99) = 0;
            v71 = sub_1E3F24F9C(v102, &v88);
            v74 = sub_1E3F24EC4(v71, v72, v73);
            sub_1E3F24F18(v74, v75, v76);
            sub_1E4201F44();

            sub_1E3F24FD4(v102);
            goto LABEL_42;
          }
        }

        OUTLINED_FUNCTION_30_1();
        v57 = (*(v56 + 648))();
        if (v57 != 5)
        {
          LOBYTE(v88) = v57;
          v102[0] = 4;
          v70 = sub_1E3F25004(v57, v58, v59);
          OUTLINED_FUNCTION_14_154(v70);

          goto LABEL_40;
        }
      }

      goto LABEL_40;
    }
  }

  else
  {

    sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
  }

  v38 = v8;
  if (!v8)
  {

    v69 = sub_1E3C27528(v67, v68);

    if (v69)
    {
      type metadata accessor for TextLayout();
      v38 = swift_dynamicCastClass();
      if (!v38)
      {
      }
    }

    else
    {
      v38 = 0;
    }
  }

  v39 = swift_retain_n();
  sub_1E3FAC85C(v39);
  OUTLINED_FUNCTION_21_101();
  if (v38)
  {
    v87 = v2;
    OUTLINED_FUNCTION_30_1();
    v41 = *(v40 + 648);

    v43 = v41(v42);

    if (v43 == 5 || (LOBYTE(v88) = v43, v102[0] = 3, v47 = sub_1E3F25004(v44, v45, v46), (OUTLINED_FUNCTION_14_154(v47) & 1) == 0))
    {
      OUTLINED_FUNCTION_30_1();
      v61 = (*(v60 + 648))();
      if (v61 != 5)
      {
        LOBYTE(v88) = v61;
        v102[0] = 4;
        v77 = sub_1E3F25004(v61, v62, v63);
        OUTLINED_FUNCTION_14_154(v77);
      }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_192(v48, v49, v50, v51, v52, v53, v54, v55, v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, v92, v93, v94, v95, v96);
  HIBYTE(v91) = 1;
  HIBYTE(v99) = 1;
  v78 = sub_1E3F24E8C(v102, &v88);
  v81 = sub_1E3F24EC4(v78, v79, v80);
  sub_1E3F24F18(v81, v82, v83);
  sub_1E4201F44();

  sub_1E3F24F6C(v102);
LABEL_42:
  sub_1E325F6F0(v100, &unk_1ECF296E0, &unk_1E4298030);
  sub_1E325F6F0(v101, &unk_1ECF296E0, &unk_1E4298030);
  v96 = v88;
  v97 = v89;
  v98 = v90;
  v84 = v91;
  v99 = v91;
  v85 = v89;
  *a1 = v88;
  *(a1 + 16) = v85;
  result = *&v98;
  *(a1 + 32) = v98;
  *(a1 + 48) = v84;
  return result;
}

void sub_1E3F24284()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8A0, &qword_1E42DE340);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8A8, &qword_1E42DE348);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23[-v7 - 16];
  v9 = *v0;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  sub_1E3FAC790(v12, v10, v11, &v24);
  if (*(v0 + 8))
  {
    v13 = sub_1E3F244B4(v10);
    v22 = v24;
    *v23 = *v25;
    *&v23[9] = *&v25[9];
    v16 = sub_1E3BD9530(v13, v14, v15);
    sub_1E402D78C(v9, v13, &type metadata for TextView, v16);

    (*(v5 + 16))(v1, v8, v3);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    *&v22 = &type metadata for TextView;
    *(&v22 + 1) = v16;
    OUTLINED_FUNCTION_0_292();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_22_89();
    sub_1E4201F44();
    sub_1E38E12E4(&v24);
    (*(v5 + 8))(v8, v3);
  }

  else
  {
    v17 = *v25;
    *v1 = v24;
    v1[1] = v17;
    *(v1 + 25) = *&v25[9];
    OUTLINED_FUNCTION_75();
    v18 = swift_storeEnumTagMultiPayload();
    v21 = sub_1E3BD9530(v18, v19, v20);
    *&v22 = &type metadata for TextView;
    *(&v22 + 1) = v21;
    OUTLINED_FUNCTION_0_292();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_22_89();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F244B4(uint64_t a1)
{
  type metadata accessor for TextLayout();
  v2 = sub_1E383BCC0();
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = sub_1E383BCC0();
  }

  v4 = *(*v2 + 1648);

  v4(v3);

  (*(*v2 + 2056))(0, 1);
  (*(*v2 + 2104))(0, 1);
  (*(*v2 + 2080))(0, 1);
  return v2;
}

void sub_1E3F24618()
{
  OUTLINED_FUNCTION_31_1();
  v28[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C890, &qword_1E42DE330);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C898, &qword_1E42DE338);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = type metadata accessor for RentalExpirationText(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *v0;
  v17 = *(v0 + 16);

  sub_1E395B454(v18, v17, v15);
  if (*(v0 + 8))
  {
    v19 = sub_1E3F244B4(v17);
    OUTLINED_FUNCTION_2_220();
    v22 = sub_1E3F252FC(v20, v21, &unk_1E42AD498);
    v28[0] = v3;
    v23 = v22;
    sub_1E402D78C(v16, v19, v11, v22);

    (*(v7 + 16))(v1, v10, v5);
    swift_storeEnumTagMultiPayload();
    v29 = v11;
    v30 = v23;
    OUTLINED_FUNCTION_0_292();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_18_120();
    (*(v7 + 8))(v10, v5);
  }

  else
  {
    sub_1E395CFE0(v15, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_220();
    v26 = sub_1E3F252FC(v24, v25, &unk_1E42AD498);
    v29 = v11;
    v30 = v26;
    OUTLINED_FUNCTION_0_292();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_18_120();
  }

  OUTLINED_FUNCTION_2_220();
  sub_1E3F25344(v15, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F24894()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v66 = v2;
  v64 = type metadata accessor for FocusableText(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C868, &qword_1E42DE200);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C870, &qword_1E42DE208);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v61 = sub_1E42023A4();
  OUTLINED_FUNCTION_0_10();
  v58 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C878, &qword_1E42DE210);
  OUTLINED_FUNCTION_0_10();
  v60 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v57 - v22;
  v23 = *v0;
  v24 = *(**v0 + 648);
  v25 = swift_retain_n();
  v26 = v24(v25);
  if (!v26 || (v27 = v26, swift_beginAccess(), v28 = *(v27 + 56), , , !v28))
  {

    goto LABEL_6;
  }

  v29 = *(v28 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);

  LOBYTE(v69) = v29;
  LOBYTE(v67) = 9;
  sub_1E3905190(v30, v31, v32);
  v33 = sub_1E4205E84();

  if ((v33 & 1) == 0)
  {
LABEL_6:
    v46 = v1[1];

    v47 = sub_1E3BF493C();
    sub_1E3BF4978(v23, v46, v47, v49, v48 & 1, v6);
    v50 = sub_1E3F252FC(qword_1EE2844B8, type metadata accessor for FocusableText, &unk_1E42C27F8);
    v51 = v64;
    sub_1E40443A0();
    sub_1E3F25344(v6, type metadata accessor for FocusableText);
    v52 = v65;
    (*(v8 + 16))(v14, v11, v65);
    v53 = swift_storeEnumTagMultiPayload();
    v56 = sub_1E3BD9530(v53, v54, v55);
    *&v69 = &type metadata for TextView;
    *(&v69 + 1) = v61;
    *v70 = v56;
    *&v70[8] = MEMORY[0x1E69803B8];
    OUTLINED_FUNCTION_8_172();
    swift_getOpaqueTypeConformance2();
    *&v69 = v51;
    *(&v69 + 1) = v50;
    *v70 = &off_1F5D77648;
    OUTLINED_FUNCTION_8_168();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v8 + 8))(v11, v52);
    goto LABEL_7;
  }

  v34 = v1[1];

  v35 = OUTLINED_FUNCTION_18();
  sub_1E3FAC790(v23, v34, v35, &v67);
  v36 = sub_1E4202394();
  v39 = sub_1E3BD9530(v36, v37, v38);
  v40 = MEMORY[0x1E69803B8];
  v41 = v59;
  v42 = v61;
  sub_1E4202EF4();
  (*(v58 + 8))(v19, v42);
  v69 = v67;
  *v70 = *v68;
  *&v70[9] = *&v68[9];
  sub_1E38E12E4(&v69);
  v43 = v60;
  v44 = v63;
  (*(v60 + 16))(v14, v41, v63);
  swift_storeEnumTagMultiPayload();
  *&v67 = &type metadata for TextView;
  *(&v67 + 1) = v42;
  *v68 = v39;
  *&v68[8] = v40;
  OUTLINED_FUNCTION_8_172();
  swift_getOpaqueTypeConformance2();
  v45 = sub_1E3F252FC(qword_1EE2844B8, type metadata accessor for FocusableText, &unk_1E42C27F8);
  *&v67 = v64;
  *(&v67 + 1) = v45;
  *v68 = &off_1F5D77648;
  OUTLINED_FUNCTION_8_168();
  swift_getOpaqueTypeConformance2();
  sub_1E4201F44();
  (*(v43 + 8))(v41, v44);
LABEL_7:
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3F24EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2973D0[0];
  if (!qword_1EE2973D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2973D0);
  }

  return result;
}

unint64_t sub_1E3F24F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A1E98[0];
  if (!qword_1EE2A1E98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A1E98);
  }

  return result;
}

unint64_t sub_1E3F25004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE287250;
  if (!qword_1EE287250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287250);
  }

  return result;
}

uint64_t sub_1E3F2506C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 49))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3F250A8(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[5] = 0;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 49) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3F250FC()
{
  result = qword_1EE289020;
  if (!qword_1EE289020)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C880, &qword_1E42DE280);
    v6 = sub_1E3F24EC4(v1, v2, v3);
    sub_1E3F24F18(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289020);
  }

  return result;
}

unint64_t sub_1E3F25188()
{
  result = qword_1EE288DF8;
  if (!qword_1EE288DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C888, &qword_1E42DE288);
    v1 = sub_1E42023A4();
    sub_1E3BD9530(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for FocusableText(255);
    sub_1E3F252FC(qword_1EE2844B8, type metadata accessor for FocusableText, &unk_1E42C27F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DF8);
  }

  return result;
}

uint64_t sub_1E3F252FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3F25344(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3F2539C()
{
  result = qword_1EE288E40;
  if (!qword_1EE288E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C8B0, &qword_1E42DE350);
    type metadata accessor for RentalExpirationText(255);
    sub_1E3F252FC(qword_1EE26A840, type metadata accessor for RentalExpirationText, &unk_1E42AD498);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E40);
  }

  return result;
}

unint64_t sub_1E3F2548C()
{
  result = qword_1EE288E38;
  if (!qword_1EE288E38)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C8B8, &qword_1E42DE358);
    sub_1E3BD9530(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E38);
  }

  return result;
}

void sub_1E3F25548(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_retain_n();
  do
  {
    while (1)
    {
      OUTLINED_FUNCTION_30_1();
      v8 = (*(v7 + 624))();

      if (!v8)
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        sub_1E325F6F0(&v13, &qword_1ECF2FFF0, &unk_1E42AFDA0);
        v10 = 0;
        if (a2 == 2)
        {
LABEL_8:

          v10 = 0;
          a2 = 0;
          goto LABEL_14;
        }

LABEL_12:

        goto LABEL_13;
      }

      OUTLINED_FUNCTION_30_1();
      (*(v9 + 416))(&v13);
      if (*(&v14 + 1))
      {
        break;
      }

      sub_1E325F6F0(&v13, &qword_1ECF2FFF0, &unk_1E42AFDA0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A250, &unk_1E42D6ED0);
    type metadata accessor for PickerValueVariantResolver(0);
  }

  while ((swift_dynamicCast() & 1) == 0);
  v10 = v12;
  if (a2 != 2)
  {
    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_8();
  a2 = (*(v11 + 440))(a1);

LABEL_13:

LABEL_14:
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = v10;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
}

uint64_t sub_1E3F25764@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v59 = sub_1E42014E4();
  OUTLINED_FUNCTION_0_10();
  v58 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17_3(v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8C0, &qword_1E42DE388);
  OUTLINED_FUNCTION_0_10();
  v51[0] = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v51 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8C8, &qword_1E42DE390);
  OUTLINED_FUNCTION_0_10();
  v51[1] = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v51 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8D0, &qword_1E42DE398);
  OUTLINED_FUNCTION_0_10();
  v54 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17_3(v51 - v16);
  v17 = (*(**v1 + 392))();
  v74[0] = *(v1 + 8);
  v18 = *(v1 + 32);
  v73 = *(v1 + 24);
  v71 = v18;
  v72 = *(v1 + 40);
  OUTLINED_FUNCTION_44_8();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_16_134(v19);
  v60 = v1;
  v61 = v17;

  sub_1E3743538(v74, &v66, &qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E3743538(&v73, &v66, &qword_1ECF3B8C8, &qword_1E42DB520);
  sub_1E3743538(&v71, &v66, &qword_1ECF3B8D0, &qword_1E42DB528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8D8, &qword_1E42DE3A0);
  sub_1E3F261DC();
  sub_1E4203964();
  if (v73)
  {
    OUTLINED_FUNCTION_8();
    *&v21 = COERCE_DOUBLE((*(v20 + 320))());
    v23 = v22;
  }

  else
  {
    *&v21 = 0.0;
    v23 = 0.0;
  }

  v66 = *&v21;
  v67 = v23;
  OUTLINED_FUNCTION_44_8();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_16_134(v24);

  sub_1E3743538(v74, &v62, &qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E3743538(&v73, &v62, &qword_1ECF3B8C8, &qword_1E42DB520);
  sub_1E3743538(&v71, &v62, &qword_1ECF3B8D0, &qword_1E42DB528);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  OUTLINED_FUNCTION_3_120();
  v30 = sub_1E32752B0(v26, v27, v28, v29);
  v31 = sub_1E3C0E09C();
  sub_1E4203524();

  OUTLINED_FUNCTION_15_5();
  v32(v9, v5);
  if (v17)
  {
    v33 = *(*v17 + 552);

    v33(&v66, v34);
    v35 = v66;
    v36 = v67;
    v37 = v68;
    v38 = v69;

    if ((v70 & 1) == 0)
    {
      sub_1E3952BE8(v35, v36, v37, v38);
    }
  }

  v62 = v5;
  v63 = v25;
  v64 = v30;
  v65 = v31;
  OUTLINED_FUNCTION_3_219();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v53;
  v41 = v52;
  sub_1E3E361E8();
  OUTLINED_FUNCTION_15_5();
  v42(v13, v41);
  v43 = v56;
  sub_1E42014D4();
  v62 = v41;
  v63 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_6_20();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_5_201();
  sub_1E3F275CC(v44, v45, MEMORY[0x1E697C240]);
  v46 = v55;
  v47 = v59;
  sub_1E4202D94();

  OUTLINED_FUNCTION_15_5();
  v48(v43, v47);
  OUTLINED_FUNCTION_15_5();
  return v49(v40, v46);
}

uint64_t sub_1E3F25DE0()
{
  v1 = sub_1E3F27770(*(v0 + 48), *(v0 + 56));
  if (v1)
  {
    v2 = (*(*v1 + 232))(v1);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 16);
  if (*(v0 + 40) && (OUTLINED_FUNCTION_8(), ((*(v4 + 432))(v3) & 1) != 0))
  {
    (*(*v3 + 808))(2, v2);
  }

  else
  {
    (*(*v3 + 800))(2, v2, 0, 0);
  }
}

uint64_t sub_1E3F25F20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C910, &qword_1E42DE3B8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C900, &qword_1E42DE3B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8F0, &qword_1E42DE3A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32[-1] - v12;
  v14 = sub_1E3F2648C(v7);
  if (a1 && ((*(*a1 + 176))(v32, v14), (v33 & 1) == 0))
  {
    v17.n128_u64[0] = v32[2];
    v18.n128_u64[0] = v32[3];
    v16.n128_u64[0] = v32[1];
    v15.n128_u64[0] = v32[0];
    v19 = j_nullsub_1(v15, v16, v17, v18);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_5_8();
  }

  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = sub_1E4202734();
  sub_1E3741EA0(v7, v2, &qword_1ECF3C910, &qword_1E42DE3B8);
  v28 = v2 + *(v8 + 36);
  *v28 = v27;
  *(v28 + 8) = v23;
  *(v28 + 16) = v24;
  *(v28 + 24) = v25;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E3741EA0(v2, v13, &qword_1ECF3C900, &qword_1E42DE3B0);
  memcpy(&v13[*(v10 + 36)], __src, 0x70uLL);
  v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8D8, &qword_1E42DE3A0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C938, &qword_1E42E7250);
  sub_1E4201614();
  *v29 = 0;
  return sub_1E3741EA0(v13, a2, &qword_1ECF3C8F0, &qword_1E42DE3A8);
}

unint64_t sub_1E3F261DC()
{
  result = qword_1ECF3C8E0;
  if (!qword_1ECF3C8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C8D8, &qword_1E42DE3A0);
    sub_1E3F26294();
    sub_1E32752B0(&qword_1EE288850, &qword_1ECF3C938, &qword_1E42E7250, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C8E0);
  }

  return result;
}

unint64_t sub_1E3F26294()
{
  result = qword_1ECF3C8E8;
  if (!qword_1ECF3C8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C8F0, &qword_1E42DE3A8);
    sub_1E3F26320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C8E8);
  }

  return result;
}

unint64_t sub_1E3F26320()
{
  result = qword_1ECF3C8F8;
  if (!qword_1ECF3C8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C900, &qword_1E42DE3B0);
    sub_1E3F263AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C8F8);
  }

  return result;
}

unint64_t sub_1E3F263AC()
{
  result = qword_1ECF3C908;
  if (!qword_1ECF3C908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C910, &qword_1E42DE3B8);
    v1 = MEMORY[0x1E69817F8];
    sub_1E32752B0(&qword_1ECF3C918, &qword_1ECF3C920, &qword_1E42DE3C0, MEMORY[0x1E69817F8]);
    sub_1E32752B0(&qword_1ECF3C928, &qword_1ECF3C930, &qword_1E42DE3C8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C908);
  }

  return result;
}

uint64_t sub_1E3F2648C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1;
  v55[5] = a1;
  v55[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C930, &qword_1E42DE3C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v6);
  v55[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C948, &qword_1E42DE4B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v55[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C920, &qword_1E42DE3C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v55 - v13;
  v15 = sub_1E39DFFC8();
  v16 = *v1;
  v17 = (*(**v1 + 392))();
  v18 = v17;
  if (v15)
  {
    if (v17)
    {
      OUTLINED_FUNCTION_30_1();
      v20 = (*(v19 + 1152))();
      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20;
      }
    }

    else
    {
      v22 = 0;
    }

    *v11 = sub_1E4201B84();
    *(v11 + 8) = v22;
    *(v11 + 16) = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C988, &qword_1E42DE500);
    sub_1E3F26B08(v4, v11 + *(v31 + 44));
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v32, v33, v34, &qword_1E42DE3C0);
    sub_1E3743538(v14, v2, &qword_1ECF3C920, &qword_1E42DE3C0);
    swift_storeEnumTagMultiPayload();
    v35 = MEMORY[0x1E69817F8];
    sub_1E32752B0(&qword_1ECF3C918, &qword_1ECF3C920, &qword_1E42DE3C0, MEMORY[0x1E69817F8]);
    sub_1E32752B0(&qword_1ECF3C928, &qword_1ECF3C930, &qword_1E42DE3C8, v35);
    OUTLINED_FUNCTION_20_112();
    sub_1E4201F44();

    v36 = OUTLINED_FUNCTION_32_0();
    v38 = &qword_1E42DE3C0;
  }

  else
  {
    v23 = (*(*v16 + 464))();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    if (v18)
    {
      OUTLINED_FUNCTION_30_1();
      v26 = *(v25 + 1152);

      v28 = v26(v27);
      v30 = v29;

      if (v30)
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    *v3 = sub_1E4201B84();
    *(v3 + 8) = v28;
    *(v3 + 16) = 0;
    v55[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C950, &unk_1E42DE4C0) + 44);
    v57 = v24;
    swift_getKeyPath();
    v61 = *(v4 + 8);
    v39 = *(v4 + 32);
    v60 = *(v4 + 24);
    v58 = v39;
    v59 = *(v4 + 40);
    OUTLINED_FUNCTION_44_8();
    v40 = swift_allocObject();
    v41 = *(v4 + 16);
    v40[1] = *v4;
    v40[2] = v41;
    *(v40 + 41) = *(v4 + 25);

    sub_1E3743538(&v61, v56, &qword_1ECF294E0, &qword_1E429C8B0);
    sub_1E3743538(&v60, v56, &qword_1ECF3B8C8, &qword_1E42DB520);
    sub_1E3743538(&v58, v56, &qword_1ECF3B8D0, &qword_1E42DB528);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C958, &qword_1E42DE4E8);
    sub_1E32752B0(&qword_1EE23B548, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6338]);
    sub_1E3F275CC(qword_1EE23BA70, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
    sub_1E3F27614();
    sub_1E4203B34();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v42, v43, v44, v45);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v46, v47, v48, v49);
    swift_storeEnumTagMultiPayload();
    v50 = MEMORY[0x1E69817F8];
    sub_1E32752B0(&qword_1ECF3C918, &qword_1ECF3C920, &qword_1E42DE3C0, MEMORY[0x1E69817F8]);
    OUTLINED_FUNCTION_21_1();
    sub_1E32752B0(v51, v52, v53, v50);
    OUTLINED_FUNCTION_20_112();
    sub_1E4201F44();

    OUTLINED_FUNCTION_21_1();
  }

  return sub_1E325F6F0(v36, v37, v38);
}

double sub_1E3F26A54()
{
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 440))();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203904();
  return result;
}

uint64_t sub_1E3F26B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v55 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_3(v54 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_4_6();
  v60 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_3(v54 - v11);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v56 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C990, &qword_1E42DE508);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C998, &qword_1E42DE510);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v54 - v23;
  if (!sub_1E39C408C())
  {
    goto LABEL_8;
  }

  type metadata accessor for ImageViewModel();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

LABEL_8:
    v29 = 1;
    goto LABEL_9;
  }

  v26 = v25;
  sub_1E3EB9BB4(v64);
  v27 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v26, v64, 0, v27 & 1, 0, 0, v15);
  sub_1E375C31C(v64);
  v63 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();

  if (v62)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  (*(v56 + 32))(v2, v15, v57);
  *(v2 + *(v16 + 36)) = v28;
  sub_1E3741EA0(v2, v20, &qword_1ECF3C990, &qword_1E42DE508);
  sub_1E3741EA0(v20, v24, &qword_1ECF3C990, &qword_1E42DE508);
  v29 = 0;
LABEL_9:
  v30 = v58;
  v31 = 1;
  __swift_storeEnumTagSinglePayload(v24, v29, 1, v16);
  v32 = sub_1E39C408C();
  if (!v32)
  {
LABEL_13:
    v34 = v59;
    goto LABEL_14;
  }

  if (*v32 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_18();
  v33 = v54[1];
  sub_1E3F23370();

  v34 = v59;
  (*(v55 + 32))(v30, v33, v59);
  v31 = 0;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v30, v31, 1, v34);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v35, v36, v37, v38);
  v39 = v60;
  sub_1E3743538(v30, v60, &qword_1ECF29210, &qword_1E4299980);
  v40 = v61;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v41, v42, v43, v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9A0, &qword_1E42DE518);
  sub_1E3743538(v39, v40 + *(v45 + 48), &qword_1ECF29210, &qword_1E4299980);
  v46 = v40 + *(v45 + 64);
  *v46 = 0;
  *(v46 + 8) = 0;
  sub_1E325F6F0(v30, &qword_1ECF29210, &qword_1E4299980);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v47, v48, v49);
  sub_1E325F6F0(v39, &qword_1ECF29210, &qword_1E4299980);
  OUTLINED_FUNCTION_21_1();
  return sub_1E325F6F0(v50, v51, v52);
}

uint64_t sub_1E3F27060@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54[0] = a2;
  v56 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C980, &qword_1E42DE4F8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v7);
  v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9A8, &qword_1E42DE520);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v54[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C970, &qword_1E42DE4F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8, &qword_1E4297EB0);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v54 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v54 - v23;
  v25 = *a1;
  if (sub_1E373F6E0(*(v25 + 98), 23, v26, v27, v28, v29))
  {
    OUTLINED_FUNCTION_14_155(0);
    sub_1E382A9B4(v25, v30, 0, v24);
    v31 = *(v14 + 16);
    v31(v21, v24, v12);
    v31(v11, v21, v12);
    v32 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9B0, &qword_1E42DE528) + 48)];
    *v32 = 0;
    v32[8] = 0;
    v33 = *(v14 + 8);
    v33(v21, v12);
    sub_1E3743538(v11, v3, &qword_1ECF3C970, &qword_1E42DE4F0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v34, &qword_1ECF3C970, &qword_1E42DE4F0, v35);
    sub_1E3F276CC();
    sub_1E4201F44();
    sub_1E325F6F0(v11, &qword_1ECF3C970, &qword_1E42DE4F0);
    return (v33)(v24, v12);
  }

  else
  {
    OUTLINED_FUNCTION_14_155(0);
    sub_1E382A9B4(v25, v37, 0, v18);
    v58 = *(v54[0] + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
    sub_1E42038F4();
    if (v57)
    {
      v38 = 1.0;
    }

    else
    {
      v38 = 0.0;
    }

    (*(v14 + 32))(v4, v18, v12);
    *(v4 + *(v55 + 36)) = v38;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v39, v40, v41, v42);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v43, v44, v45, v46);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v47, v48, v49, v50);
    sub_1E3F276CC();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    return sub_1E325F6F0(v51, v52, v53);
  }
}

uint64_t sub_1E3F274D8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3F27518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_52()
{

  j__swift_release(*(v0 + 48));
  OUTLINED_FUNCTION_44_8();

  return swift_deallocObject();
}

uint64_t sub_1E3F275CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3F27614()
{
  result = qword_1ECF3C960;
  if (!qword_1ECF3C960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C958, &qword_1E42DE4E8);
    sub_1E32752B0(&qword_1ECF3C968, &qword_1ECF3C970, &qword_1E42DE4F0, MEMORY[0x1E6981F48]);
    sub_1E3F276CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C960);
  }

  return result;
}

unint64_t sub_1E3F276CC()
{
  result = qword_1ECF3C978;
  if (!qword_1ECF3C978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C980, &qword_1E42DE4F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C978);
  }

  return result;
}

void *sub_1E3F27770(uint64_t a1, char a2)
{
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_1E4206804();
    v9 = sub_1E42026D4();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1E3270FC8(0xD00000000000001DLL, 0x80000001E42891B0, &v14);
      _os_log_impl(&dword_1E323F000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E69143B0](v11, -1, -1);
      MEMORY[0x1E69143B0](v10, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();
    j__swift_release(a1);
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_1E3F2793C(uint64_t a1)
{
  type metadata accessor for VUIViewsThatFitHorizontal.Coordinator();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  return a1;
}

uint64_t sub_1E3F279C4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  LODWORD(v133) = a8;
  v135 = a7;
  v136 = a4;
  v128 = a3;
  v118 = a2;
  v132 = a1;
  v113[0] = a9;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9B8, &qword_1E42DE530);
  OUTLINED_FUNCTION_0_10();
  v117 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v126 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9C0, &qword_1E42DE538);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v113 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9C8, &qword_1E42DE540);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v113 - v20;
  v137 = sub_1E4202244();
  OUTLINED_FUNCTION_0_10();
  v116 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_3();
  v115 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9D0, &qword_1E42DE548);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (v113 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9D8, &qword_1E42DE550);
  OUTLINED_FUNCTION_17_2(v34);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  v130 = v36;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9E0, &qword_1E42DE558) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  v134 = v38;
  v39 = sub_1E4202334();
  OUTLINED_FUNCTION_0_10();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4_6();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v113 - v47;
  sub_1E4202344();
  v49 = *(v41 + 16);
  v50 = v130;
  v113[1] = v48;
  v49(v130, v48, v39);
  v113[2] = v41;
  (*(v41 + 32))(v45, v50, v39);
  OUTLINED_FUNCTION_4_221();
  sub_1E3F282E0(v51, v52, MEMORY[0x1E6980300]);
  v53 = v134;
  v113[3] = v39;
  sub_1E4206194();
  v114 = *(v131 + 44);
  *(v53 + v114) = 0;
  v131 = sub_1E4202324();
  OUTLINED_FUNCTION_3_220();
  v56 = sub_1E3F282E0(v54, v55, MEMORY[0x1E69802F0]);
  v129 = 0;
  v130 = v56;
  v118 &= v133;
  v57 = (v133 & 1) == 0;
  v133 = (v116 + 32);
  ++v117;
  v116 += 8;
  v58 = *&v135;
  if (!v57)
  {
    v58 = *&v132;
  }

  v59 = v58;
  v60 = -1;
  v61 = 1.79769313e308;
  v136 &= 1u;
  v62 = 0.0;
  *&v63 = 1.79769313e308;
  v125 = v16;
  v124 = v13;
  v122 = v21;
  v120 = v30;
  v119 = v33;
  while (1)
  {
    v132 = v60;
    sub_1E4207174();
    if (__swift_getEnumTagSinglePayload(v21, 1, v137) == 1)
    {
      sub_1E325F6F0(v21, &qword_1ECF3C9C8, &qword_1E42DE540);
      v64 = 1;
    }

    else
    {
      v65 = *v133;
      v66 = v115;
      v67 = v137;
      (*v133)(v115, v21, v137);
      v68 = *(v13 + 48);
      v69 = v129;
      *v16 = v129;
      result = (v65)(v16 + v68, v66, v67);
      if (__OFADD__(v69, 1))
      {
        __break(1u);
        return result;
      }

      v129 = v69 + 1;
      *(v134 + v114) = v69 + 1;
      sub_1E379E528(v16, v30, &qword_1ECF3C9C0, &qword_1E42DE538);
      v64 = 0;
    }

    __swift_storeEnumTagSinglePayload(v30, v64, 1, v13);
    sub_1E379E528(v30, v33, &qword_1ECF3C9D0, &qword_1E42DE548);
    if (__swift_getEnumTagSinglePayload(v33, 1, v13) == 1)
    {
      break;
    }

    v135 = *v33;
    v71 = v33 + *(v13 + 48);
    v72 = v121;
    v73 = v137;
    (*v133)(v121, v71, v137);
    v74 = v123;
    OUTLINED_FUNCTION_21_18();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
    v141 = 0;
    v140 = v136;
    v79 = OUTLINED_FUNCTION_15_142();
    v80 = v128;
    OUTLINED_FUNCTION_16_135(v79, v81, v128, v82, 0);
    sub_1E325F6F0(v74, &qword_1ECF3C9C8, &qword_1E42DE540);
    v83 = COERCE_DOUBLE(sub_1E4202214());
    v85 = v84;
    v86 = *v117;
    v87 = v127;
    (*v117)(v30, v127);
    v88 = 0.0;
    if (v85)
    {
      v89 = 0.0;
    }

    else
    {
      v89 = v83;
    }

    OUTLINED_FUNCTION_21_18();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    v139 = 0;
    v138 = v136;
    v94 = OUTLINED_FUNCTION_15_142();
    OUTLINED_FUNCTION_16_135(v94, v95, v80, v96, 1);
    sub_1E325F6F0(v74, &qword_1ECF3C9C8, &qword_1E42DE540);
    v97 = COERCE_DOUBLE(sub_1E4202214());
    v99 = v98;
    v86(v30, v87);
    OUTLINED_FUNCTION_36_5();
    v100 = v73;
    v101 = v135;
    v102(v72, v100);
    if ((v99 & 1) == 0)
    {
      v88 = v97;
    }

    v103 = v101;
    v104 = v89;
    v105 = v88;
    v106 = v89;
    if (v89 >= v61)
    {
      v103 = v132;
      v104 = v61;
      v105 = v62;
      v106 = *&v63;
    }

    v60 = v103;
    v61 = v104;
    v62 = v105;
    *&v63 = v106;
    v13 = v124;
    v16 = v125;
    v21 = v122;
    v30 = v120;
    v33 = v119;
    if (!(v118 & 1 | (v89 > v59)))
    {
      sub_1E325F6F0(v134, &qword_1ECF3C9E0, &qword_1E42DE558);
      v107 = OUTLINED_FUNCTION_8_173();
      result = v108(v107);
      v109 = v113[0];
      *(v113[0] + 16) = v101;
      *(v109 + 24) = 0;
      goto LABEL_19;
    }
  }

  sub_1E325F6F0(v134, &qword_1ECF3C9E0, &qword_1E42DE558);
  v110 = OUTLINED_FUNCTION_8_173();
  result = v111(v110);
  v88 = 0.0;
  v103 = v132;
  v89 = 0.0;
LABEL_19:
  if (v89 == 0.0 && v88 == 0.0)
  {
    v112 = v113[0];
    *(v113[0] + 16) = v103;
    *(v112 + 24) = 0;
  }

  return result;
}

uint64_t sub_1E3F282E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3F2832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v134 = a7;
  v118 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9F8, &qword_1E42DE560);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v128 = v9;
  v132 = sub_1E4202544();
  OUTLINED_FUNCTION_0_10();
  v119 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v127 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v126 = v14;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA00, qword_1E42DE568);
  OUTLINED_FUNCTION_0_10();
  v133 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v122 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9C0, &qword_1E42DE538);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v131 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9C8, &qword_1E42DE540);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v140 = v23;
  v139 = sub_1E4202244();
  OUTLINED_FUNCTION_0_10();
  v120 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v130 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9D0, &qword_1E42DE548);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v138 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25_3();
  v137 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9D8, &qword_1E42DE550);
  OUTLINED_FUNCTION_17_2(v33);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v112 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9E0, &qword_1E42DE558) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v112 - v39;
  v41 = sub_1E4202334();
  OUTLINED_FUNCTION_0_10();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4_6();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v112 - v49;
  sub_1E4202344();
  v51 = *(v43 + 16);
  v112 = v50;
  v51(v36, v50, v41);
  v113 = v43;
  v52 = *(v43 + 32);
  v53 = v36;
  v54 = v137;
  v55 = v131;
  v52(v47, v53, v41);
  OUTLINED_FUNCTION_4_221();
  sub_1E3F282E0(v56, v57, MEMORY[0x1E6980300]);
  v58 = v139;
  v114 = v41;
  sub_1E4206194();
  v59 = v115;
  v60 = *(v37 + 44);
  v61 = v138;
  v141 = v40;
  v129 = v60;
  *&v40[v60] = 0;
  v136 = sub_1E4202324();
  OUTLINED_FUNCTION_3_220();
  v135 = sub_1E3F282E0(v62, v63, MEMORY[0x1E69802F0]);
  v64 = 0;
  v65 = (v120 + 32);
  v124 = (v119 + 32);
  v117 = v119 + 16;
  v116 = v119 + 8;
  v123 = v133 + 8;
  v133 = v120 + 8;
  v125 = v18;
  while (1)
  {
    sub_1E4207174();
    v66 = v140;
    if (__swift_getEnumTagSinglePayload(v140, 1, v58) == 1)
    {
      sub_1E325F6F0(v66, &qword_1ECF3C9C8, &qword_1E42DE540);
      v67 = 1;
      goto LABEL_6;
    }

    v68 = v59;
    v69 = *v65;
    v70 = v130;
    (*v65)(v130, v66, v58);
    v71 = *(v18 + 48);
    *v55 = v64;
    result = (v69)(v55 + v71, v70, v58);
    if (__OFADD__(v64++, 1))
    {
      break;
    }

    *&v141[v129] = v64;
    v61 = v138;
    sub_1E379E528(v55, v138, &qword_1ECF3C9C0, &qword_1E42DE538);
    v67 = 0;
    v58 = v139;
    v59 = v68;
    v54 = v137;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v61, v67, 1, v18);
    sub_1E379E528(v61, v54, &qword_1ECF3C9D0, &qword_1E42DE548);
    if (__swift_getEnumTagSinglePayload(v54, 1, v18) == 1)
    {
      sub_1E325F6F0(v141, &qword_1ECF3C9E0, &qword_1E42DE558);
      return (*(v113 + 8))(v112, v114);
    }

    v74 = v58;
    v75 = *v54;
    (*v65)(v59, v54 + *(v18 + 48), v74);
    if ((*(v134 + 24) & 1) != 0 || v75 != *(v134 + 16))
    {
      v89 = OUTLINED_FUNCTION_10_147();
      v58 = v139;
      v90(v89, v139);
    }

    else
    {
      sub_1E4201504();
      v77 = v76;
      v78 = v121;
      v79 = v122;
      v81 = v80;
      sub_1E4203F04();
      v142[0] = v77 & 1;
      v142[32] = v81 & 1;
      sub_1E4202234();
      v82 = v128;
      sub_1E4202204();
      v83 = v132;
      if (__swift_getEnumTagSinglePayload(v82, 1, v132) == 1)
      {
        OUTLINED_FUNCTION_36_5();
        v84(v79, v78);
        v85 = OUTLINED_FUNCTION_10_147();
        v86 = v139;
        v87(v85, v139);
        v88 = v82;
        v58 = v86;
        sub_1E325F6F0(v88, &qword_1ECF3C9F8, &qword_1E42DE560);
      }

      else
      {
        v91 = v126;
        v120 = *v124;
        (v120)(v126, v82, v83);
        OUTLINED_FUNCTION_36_5();
        v92(v127, v91, v83);
        v93 = sub_1E4202444();
        v95 = v94;
        v96 = *v94;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v95 = v96;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_21_18();
          v96 = sub_1E3F28DDC(v104, v105, v106, v107);
          *v95 = v96;
        }

        v98 = v96[2];
        if (v98 >= v96[3] >> 1)
        {
          OUTLINED_FUNCTION_21_18();
          v96 = sub_1E3F28DDC(v108, v109, v110, v111);
          *v95 = v96;
        }

        v96[2] = v98 + 1;
        v99 = v119;
        v100 = v132;
        (v120)(v96 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v98, v127, v132);
        v93(v142, 0);
        (*(v99 + 8))(v126, v100);
        OUTLINED_FUNCTION_36_5();
        v101(v79, v78);
        v102 = OUTLINED_FUNCTION_10_147();
        v58 = v139;
        v103(v102, v139);
      }

      v18 = v125;
      v55 = v131;
      v54 = v137;
      v61 = v138;
    }
  }

  __break(1u);
  return result;
}

double sub_1E3F28CE8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void (*sub_1E3F28D68(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

void *sub_1E3F28DDC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E3F28F30(v8, v7);
  v10 = *(sub_1E4202544() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3F2902C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

unint64_t sub_1E3F28ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3CA08;
  if (!qword_1ECF3CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CA08);
  }

  return result;
}

void *sub_1E3F28F30(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA10, &qword_1E42DE698);
  v4 = *(sub_1E4202544() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F2902C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E4202544(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E4202544();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E3F29100()
{
  v1 = OUTLINED_FUNCTION_173();
  type metadata accessor for SportsBannerScoreboardView(v1);
  return sub_1E38F861C(v0);
}

uint64_t sub_1E3F29170()
{
  OUTLINED_FUNCTION_82_20();
}

uint64_t sub_1E3F291A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3F291E4()
{
  type metadata accessor for SportsBannerScoreboardView(0);
  OUTLINED_FUNCTION_134_3();
}

uint64_t sub_1E3F29218()
{
  v2 = v0;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E3746E10(v1);
  v4 = sub_1E42012B4();
  v5 = OUTLINED_FUNCTION_74();
  v6(v5);
  result = 0;
  if (v4)
  {
    if (*(v2 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60)) && (sub_1E37573D0(), OUTLINED_FUNCTION_30(), (*(v8 + 176))(&v12), , (v13 & 1) == 0))
    {
      v9 = OUTLINED_FUNCTION_6();
      return sub_1E3952BD8(v9, v10, v11);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1E3F29364()
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_26_100();
  if (!*(v0 + v3))
  {
    return 0;
  }

  sub_1E3757540();
  OUTLINED_FUNCTION_30();
  v5 = (*(v4 + 2408))();

  sub_1E375796C();
  v6 = sub_1E3757E68();

  v8 = (*(*v6 + 2408))(v7);

  sub_1E3746E10(v1);
  v9 = sub_1E42012B4();
  v10 = OUTLINED_FUNCTION_11_6();
  v11(v10);
  if (v9)
  {
    v12 = v5;
  }

  else
  {
    v12 = v8;
  }

  v13 = [objc_opt_self() vui:v12 fontFromTextLayout:?];

  return v13;
}

void sub_1E3F2951C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = OUTLINED_FUNCTION_26_100();
  if (*(v0 + v10))
  {
    v11 = v9;
    sub_1E3757540();
    OUTLINED_FUNCTION_30();
    v13 = (*(v12 + 2408))();

    sub_1E375796C();
    v14 = sub_1E3757E68();

    v16 = (*(*v14 + 2408))(v15);

    sub_1E3746E10(v8);
    v17 = sub_1E42012B4();
    (*(v4 + 8))(v8, v2);
    v18 = (v17 & 1) != 0 ? v13 : v16;
    v19 = [objc_opt_self() vui:v18 fontFromTextLayout:?];

    if (v19)
    {
      v20 = (**(v1 + *(v11 + 32) + 8) + 1424);
      v21 = *v20;
      (*v20)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8, &qword_1E42A0FA0);
      OUTLINED_FUNCTION_46();
      sub_1E3A1558C(v22, v23);
      OUTLINED_FUNCTION_129_12();

      if (v30 && (sub_1E3C27024(), v25 = v24, v26 = , v25))
      {
        (v21)(v26);
        OUTLINED_FUNCTION_129_12();

        sub_1E3C27024();
        v28 = v27;

        if (v28)
        {
          v29 = v19;
          String.widthOfString(usingFont:)(v19);

          String.widthOfString(usingFont:)(v19);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F29850()
{
  OUTLINED_FUNCTION_9_4();
  v111 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v110 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v7 - v6);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA28, &qword_1E42DE778);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_50_1();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA30, &qword_1E42DE780);
  OUTLINED_FUNCTION_0_10();
  v100 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA38, &qword_1E42DE788);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA40, &qword_1E42DE790);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA48, &qword_1E42DE798);
  OUTLINED_FUNCTION_0_10();
  v107 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA50, &qword_1E42DE7A0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v105 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v23);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA58, &qword_1E42DE7A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA60, &qword_1E42DE7B0);
  OUTLINED_FUNCTION_17_2(v26);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_49_2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA68, &qword_1E42DE7B8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_28_6();
  v31 = type metadata accessor for SportsBannerScoreboardView(0);
  OUTLINED_FUNCTION_40_16();
  if ((*(v32 + 1088))())
  {
    v33 = sub_1E4201D44();
    v34 = sub_1E3F29218();
    *v3 = v33;
    *(v3 + 8) = v34;
    *(v3 + 16) = v35 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CAD8, &qword_1E42DE7F0);
    sub_1E3F2A49C();
    v36 = 0.0;
    if (*(v1 + *(v31 + 60)))
    {
      OUTLINED_FUNCTION_8();
      (*(v37 + 552))(v114);
      if ((LOBYTE(v114[4]) & 1) == 0)
      {
        v36 = sub_1E3952BE8(v114[0], v114[1], v114[2], v114[3]);
      }
    }

    v38 = (v2 + *(v28 + 36));
    v39 = *(sub_1E4201534() + 20);
    v40 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v41 + 104))(v38 + v39, v40);
    *v38 = v36;
    v38[1] = v36;
    *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
    sub_1E3741EA0(v3, v2, &qword_1ECF3CA60, &qword_1E42DE7B0);
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v42, v43, v44, v45);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v46, v47, v48, v49);
    swift_storeEnumTagMultiPayload();
    sub_1E3F2C1A0();
    sub_1E3F2C310();
    OUTLINED_FUNCTION_87_2();
    sub_1E4201F44();
    goto LABEL_22;
  }

  *v0 = sub_1E4203DA4();
  v0[1] = v50;
  v51 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA70, &qword_1E42DE7C0) + 44);
  sub_1E3F2B9A4();
  v52 = sub_1E401C3EC();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA78, &qword_1E42DE7C8);
  *&v51[*(v53 + 36)] = v52;
  MEMORY[0x1EEE9AC00](v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA80, &unk_1E42DE7D0);
  OUTLINED_FUNCTION_17_5();
  *&v114[0] = v99;
  *&v114[1] = sub_1E3A1558C(v55, v56);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_155_3();
  sub_1E3E35D1C(v54, v57);
  sub_1E325F69C(v0, &qword_1ECF3CA28);
  v58 = *(v1 + *(v31 + 60));
  if (v58)
  {
    v59 = sub_1E3756AD0();
    (*(*v59 + 328))();
  }

  v60 = v102;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_71_13();
  sub_1E42015C4();
  (*(v100 + 32))(v102, v98, v101);
  memcpy((v102 + *(v12 + 36)), v114, 0x70uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v62 = sub_1E4202764();
  *(inited + 32) = v62;
  v63 = sub_1E4202784();
  *(inited + 33) = v63;
  v64 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v62)
  {
    v64 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v63)
  {
    v64 = sub_1E4202774();
  }

  if (!v58)
  {
    v66 = 0uLL;
    goto LABEL_16;
  }

  sub_1E3756AD0();
  OUTLINED_FUNCTION_30();
  (*(v65 + 176))(&v115);

  if (v116[24])
  {
    v66 = 0uLL;
LABEL_16:
    v106 = v66;
    v67 = 1;
    v68 = &v114[9];
    goto LABEL_18;
  }

  v69 = OUTLINED_FUNCTION_6();
  sub_1E3952BE0(v69, v70, v71, v72);
  sub_1E4200A54();
  v67 = 0;
  *(&v74 + 1) = v73;
  v102 = v74;
  *(&v66 + 1) = v75;
  v68 = v116;
LABEL_18:
  *(v68 - 16) = v66;
  v76 = v60;
  v77 = v104;
  sub_1E3741EA0(v76, v104, &qword_1ECF3CA38, &qword_1E42DE788);
  v78 = v77 + *(v103 + 36);
  *v78 = v64;
  *(v78 + 24) = v102;
  *(v78 + 8) = v106;
  *(v78 + 40) = v67;
  v79 = v109;
  sub_1E3746E10(v109);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA90, &qword_1E42DE7E0);
  sub_1E3F2BF14();
  sub_1E3F2C0E8();
  View.ifAccessibilityOff<A>(typeSize:transform:)();
  (*(v110 + 8))(v79, v111);
  v80 = sub_1E325F69C(v77, &qword_1ECF3CA40);
  v81 = 0.0;
  if (v58)
  {
    (*(*v58 + 552))(v117, v80);
    if ((v118 & 1) == 0)
    {
      v81 = sub_1E3952BE8(v117[0], v117[1], v117[2], v117[3]);
    }
  }

  v82 = (v105 + *(v113 + 36));
  v83 = *(sub_1E4201534() + 20);
  v84 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v85 + 104))(v82 + v83, v84);
  *v82 = v81;
  v82[1] = v81;
  *(v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
  v86 = OUTLINED_FUNCTION_123_1();
  v87(v86);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v88, v89, v90, v91);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v92, v93, v94, v95);
  swift_storeEnumTagMultiPayload();
  sub_1E3F2C1A0();
  sub_1E3F2C310();
  sub_1E4201F44();
LABEL_22:
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v96, v97);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F2A49C()
{
  OUTLINED_FUNCTION_93();
  v5 = v4;
  v74 = v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF98, &qword_1E42DF078);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v64 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFA0, &qword_1E42DF080);
  OUTLINED_FUNCTION_0_10();
  v69 = v10;
  v70 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v68 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFA8, &qword_1E42DF088);
  OUTLINED_FUNCTION_0_10();
  v72 = v14;
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v71 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v76 = v17;
  OUTLINED_FUNCTION_138();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v77 = v19;
  v78 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v22 = (v21 - v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_17_2(v23);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFB0, &qword_1E42DF090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_26_2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFB8, &qword_1E42DF098);
  OUTLINED_FUNCTION_0_10();
  v62 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_50_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFC0, &qword_1E42DF0A0);
  OUTLINED_FUNCTION_0_10();
  v66 = v30;
  v67 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v65 = v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_28_6();
  sub_1E3F2ACB0();
  v60 = type metadata accessor for SportsBannerScoreboardView(0);
  *(v1 + *(v25 + 36)) = sub_1E401C3EC();
  sub_1E3FE29A8();
  sub_1E4202474();
  sub_1E4202494();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_1E3F364B0();
  sub_1E3E038E0();

  sub_1E325F69C(v3, &qword_1ECF2E400);
  sub_1E325F69C(v1, &qword_1ECF3CFB0);
  sub_1E3746E10(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFD0, &qword_1E42DF0A8);
  OUTLINED_FUNCTION_7_22();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3F3653C();
  v75 = v2;
  OUTLINED_FUNCTION_140_3();
  View.ifAccessibilityOff<A>(typeSize:transform:)();
  v38 = *(v77 + 8);
  v38(v22, v78);
  (*(v62 + 8))(v0, v61);
  sub_1E3F2B1A4();
  v39 = sub_1E401C3EC();
  *(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFE0, &qword_1E42DF0B0) + 36)) = v39;
  *(v64 + *(v63 + 36)) = 256;
  if (*(v5 + *(v60 + 60)))
  {
    sub_1E375681C();
    OUTLINED_FUNCTION_30();
    (*(v40 + 328))();
    OUTLINED_FUNCTION_128_11();
    if (OpaqueTypeConformance2)
    {
      v41 = 0;
    }

    else
    {
      v41 = v0;
    }
  }

  else
  {
    v41 = 0;
  }

  sub_1E3746E10(v22);
  v42 = sub_1E42012B4();
  v38(v22, v78);
  v43 = sub_1E3F36630();
  v44 = sub_1E3B6C5B4();
  v59 = v45 & 1;
  v57 = v44;
  v58 = v46;
  OUTLINED_FUNCTION_15_54();
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v47, v48, v49, v50, 0x7FF0000000000000, 0, v41, 0, 0, 1, 0, 1, v57, v58, v59, (v42 & 1) == 0, v63, v43);
  sub_1E325F69C(v64, &qword_1ECF3CF98);
  v51 = sub_1E3746E10(v22);
  MEMORY[0x1EEE9AC00](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFF8, &qword_1E42DF0B8);
  swift_getOpaqueTypeConformance2();
  sub_1E3F36750();
  OUTLINED_FUNCTION_140_3();
  View.ifAccessibilityOff<A>(typeSize:transform:)();
  v38(v22, v78);
  (*(v69 + 8))(v68, v70);
  v52 = *(v66 + 16);
  v52(v65, v75, v67);
  v79 = *(v72 + 16);
  v79(v71, v76, v73);
  v53 = OUTLINED_FUNCTION_53();
  (v52)(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D008, &unk_1E42DF0C0);
  v79(v74 + *(v54 + 48), v71, v73);
  v55 = *(v72 + 8);
  v55(v76, v73);
  v56 = *(v66 + 8);
  v56(v75, v67);
  v55(v71, v73);
  v56(v65, v67);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F2ACB0()
{
  OUTLINED_FUNCTION_93();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CAE0, &qword_1E42DE7F8);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v36 = v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CAE8, &qword_1E42DE800);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v37 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CAF0, &qword_1E42DE808);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CAF8, &qword_1E42DE810);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_50_1();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v1;
  sub_1E3746E10((v15 - v14));
  v17 = sub_1E42012B4();
  v18 = OUTLINED_FUNCTION_119_0();
  v19(v18);
  if (v17)
  {
    sub_1E3FE5E88(v0);
    v20 = OUTLINED_FUNCTION_11_6();
    v21(v20);
    OUTLINED_FUNCTION_75();
    v22 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_63_29(v22);
    sub_1E3F2D314();
    sub_1E4201F44();
    (*(v11 + 8))(v0, v9);
  }

  else
  {
    sub_1E3F2D10C();
    OUTLINED_FUNCTION_26_100();
    if (*(v16 + v23))
    {
      sub_1E3756660();
      OUTLINED_FUNCTION_30();
      (*(v24 + 328))();
      OUTLINED_FUNCTION_128_11();
    }

    sub_1E4203DA4();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_71_13();
    sub_1E42015C4();
    sub_1E3741EA0(v36, v37, &qword_1ECF3CAE0, &qword_1E42DE7F8);
    memcpy((v37 + *(v38 + 36)), v39, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v25, v26, v27, v28);
    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v29, v30, v31, v32);
    v33 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_63_29(v33);
    sub_1E3F2D314();
    OUTLINED_FUNCTION_140_3();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v34, v35);
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3F2B0E8@<X0>(uint64_t a1@<X8>)
{
  v1 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFD0, &qword_1E42DF0A8) + 36);
  sub_1E4203D14();
  v2 = sub_1E4202734();
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658, &qword_1E42B5AC0) + 36)) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFB8, &qword_1E42DF098);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_16_0();

  return v4(v3);
}

void sub_1E3F2B1A4()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB40, &qword_1E42DE830);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB48, &qword_1E42DE838);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB50, &qword_1E42DE840);
  OUTLINED_FUNCTION_0_10();
  v39 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_3();
  v10 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = v0;
  sub_1E3746E10((v13 - v12));
  v16 = sub_1E42012B4();
  v17 = OUTLINED_FUNCTION_13_8();
  v18(v17);
  if (v16)
  {
    sub_1E3FE6550();
    (*(v39 + 16))(v1, v3, v7);
    v19 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_64_32(v19);
    OUTLINED_FUNCTION_1();
    sub_1E3A1558C(v20, v21);
    OUTLINED_FUNCTION_53();
    sub_1E4201F44();
    (*(v39 + 8))(v3, v7);
  }

  else
  {
    v22 = sub_1E4201D44();
    OUTLINED_FUNCTION_26_100();
    if (*(v15 + v23))
    {
      sub_1E375681C();
      OUTLINED_FUNCTION_30();
      (*(v24 + 1176))();
      OUTLINED_FUNCTION_128_11();
      if (v14)
      {
        v25 = 0;
      }

      else
      {
        v25 = v10;
      }
    }

    else
    {
      v25 = 0;
    }

    *v2 = v22;
    *(v2 + 8) = v25;
    *(v2 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB58, &qword_1E42DE848);
    sub_1E3F2EDDC();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v26, v27, v28, v29);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v30, v31, v32, v33);
    v34 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_64_32(v34);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E3A1558C(v35, v36);
    OUTLINED_FUNCTION_140_3();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v37, v38);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F2B52C()
{
  OUTLINED_FUNCTION_31_1();
  v20 = v2;
  v4 = v3;
  v5 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34_1();
  sub_1E4203D34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v11 = OUTLINED_FUNCTION_72_13();
  type metadata accessor for SportsBannerScoreboardView(v11);
  sub_1E379EBAC(v1);
  (*(v7 + 104))(v0, *MEMORY[0x1E697DBA8], v5);
  v12 = sub_1E4200B34();
  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_168();
  v13(v14);
  (v13)(v1, v5);
  if (v12)
  {
    sub_1E4203D24();
  }

  else
  {
    sub_1E4203CE4();
  }

  v15 = sub_1E4202734();
  v16 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFF8, &qword_1E42DF0B8) + 36);
  v17 = OUTLINED_FUNCTION_24_4();
  v18(v17);
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658, &qword_1E42B5AC0) + 36)) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFA0, &qword_1E42DF080);
  OUTLINED_FUNCTION_2();
  (*(v19 + 16))(v4, v20);
  OUTLINED_FUNCTION_25_2();
}

void *sub_1E3F2B760@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  memmove(a2, *a1, 0x80uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF28, &qword_1E42DF000);
  sub_1E3743538(*(a1 + 8), &a2[v4[12]], &qword_1ECF3CF18, &qword_1E42DEFF0);
  memmove(&a2[v4[16]], *(a1 + 16), 0x80uLL);
  sub_1E3743538(*(a1 + 24), &a2[v4[20]], &qword_1ECF3CF10, &qword_1E42DEFE8);
  memmove(&a2[v4[24]], *(a1 + 32), 0x80uLL);
  sub_1E3743538(*(a1 + 40), &a2[v4[28]], &qword_1ECF3CF08, &qword_1E42DEFE0);
  memmove(&a2[v4[32]], *(a1 + 48), 0x80uLL);
  sub_1E3743538(*(a1 + 56), &a2[v4[36]], &qword_1ECF3CF10, &qword_1E42DEFE8);
  memmove(&a2[v4[40]], *(a1 + 64), 0x80uLL);
  sub_1E3743538(*(a1 + 72), &a2[v4[44]], &qword_1ECF3CF18, &qword_1E42DEFF0);
  v5 = *(a1 + 80);
  v6 = &a2[v4[48]];

  return memmove(v6, v5, 0x80uLL);
}

double sub_1E3F2B8D4@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = *v2;
  v3 = v2[1];
  v6 = v2[3];
  v5 = *(v2 + 16);
  v7 = a1[2];
  v8 = a1[3];
  v9 = *v7;
  v10 = v7[1];
  v12 = v7[3];
  v11 = *(v7 + 16);
  v13 = *v8;
  v16 = *(v8 + 8);
  v14 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v16;
  sub_1E37E6F1C(v4, v3, v5);

  sub_1E37E6F1C(v9, v10, v11);

  return result;
}

void sub_1E3F2B9A4()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB68, &qword_1E42DE850);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB70, &qword_1E42DE858);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = type metadata accessor for SportsBannerScoreboardView(0);
  if (sub_1E3F95854() == 3)
  {
    v7 = sub_1E4201D44();
    if (*(v0 + *(v6 + 60)))
    {
      sub_1E3756AD0();
      OUTLINED_FUNCTION_30();
      v9 = (*(v8 + 1176))();
      v11 = v10;

      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = v9;
      }
    }

    else
    {
      v12 = 0;
    }

    *v2 = v7;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB78, &qword_1E42DE860);
    sub_1E3F2F6C8();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v15, v16, v17, v18);
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v19, v20, v21, v22);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB18, &qword_1E42DE818);
    sub_1E3F2D458();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E3A1558C(v23, v24);
    OUTLINED_FUNCTION_125();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v25, v26);
  }

  else
  {
    sub_1E3F2D510();
    memcpy(v1, v27, 0xE8uLL);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB18, &qword_1E42DE818);
    sub_1E3F2D458();
    OUTLINED_FUNCTION_1();
    sub_1E3A1558C(v13, v14);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_82();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F2BC6C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_23_8();
  v7 = sub_1E4202794();
  sub_1E3746E10(v1);
  v8 = *(v4 + 104);
  v8(v0, *MEMORY[0x1E697E708], v2);
  OUTLINED_FUNCTION_123_1();
  v9 = sub_1E42012D4();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_124();
  v10(v11);
  v12 = OUTLINED_FUNCTION_168();
  v10(v12);
  if (v9 & 1) != 0 || (sub_1E3746E10(v1), v8(v0, *MEMORY[0x1E697E720], v2), OUTLINED_FUNCTION_123_1(), v13 = sub_1E42012D4(), v14 = OUTLINED_FUNCTION_124(), v10(v14), v15 = OUTLINED_FUNCTION_168(), v10(v15), (v13))
  {
    v16 = 1;
  }

  else
  {
    sub_1E3746E10(v1);
    v8(v0, *MEMORY[0x1E697E728], v2);
    OUTLINED_FUNCTION_123_1();
    v16 = sub_1E42012D4();
    v17 = OUTLINED_FUNCTION_124();
    v10(v17);
    v18 = OUTLINED_FUNCTION_168();
    v10(v18);
  }

  v19 = OUTLINED_FUNCTION_24_4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_40_13();
  v24 = sub_1E3A1558C(v22, v23);
  View.conditionalPadding(edges:length:condition:)(v7, 0x4018000000000000, 0, v16 & 1, v21, v24);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F2BE88@<X0>(uint64_t a1@<X8>)
{
  v1 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA90, &qword_1E42DE7E0) + 36);
  sub_1E4203CE4();
  v2 = sub_1E4202734();
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658, &qword_1E42B5AC0) + 36)) = v2;
  v3 = OUTLINED_FUNCTION_32_0();
  return sub_1E3743538(v3, v4, v5, v6);
}

unint64_t sub_1E3F2BF14()
{
  result = qword_1ECF3CA98;
  if (!qword_1ECF3CA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA40, &qword_1E42DE790);
    sub_1E3F2BFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CA98);
  }

  return result;
}

unint64_t sub_1E3F2BFA0()
{
  result = qword_1ECF3CAA0;
  if (!qword_1ECF3CAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA38, &qword_1E42DE788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA28, &qword_1E42DE778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA80, &unk_1E42DE7D0);
    sub_1E3A1558C(&qword_1ECF3CA88, &qword_1ECF3CA28);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CAA0);
  }

  return result;
}

unint64_t sub_1E3F2C0E8()
{
  result = qword_1ECF3CAA8;
  if (!qword_1ECF3CAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA90, &qword_1E42DE7E0);
    sub_1E3F2BF14();
    sub_1E3A1558C(&qword_1EE288890, &qword_1ECF2F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CAA8);
  }

  return result;
}

unint64_t sub_1E3F2C1A0()
{
  result = qword_1ECF3CAB0;
  if (!qword_1ECF3CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA68, &qword_1E42DE7B8);
    sub_1E3F2C258();
    sub_1E3A1558C(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CAB0);
  }

  return result;
}

unint64_t sub_1E3F2C258()
{
  result = qword_1ECF3CAB8;
  if (!qword_1ECF3CAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA60, &qword_1E42DE7B0);
    sub_1E3A1558C(&qword_1ECF3CAC0, &unk_1ECF3CAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CAB8);
  }

  return result;
}

unint64_t sub_1E3F2C310()
{
  result = qword_1ECF3CAD0;
  if (!qword_1ECF3CAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA50, &qword_1E42DE7A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA40, &qword_1E42DE790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA90, &qword_1E42DE7E0);
    sub_1E3F2BF14();
    sub_1E3F2C0E8();
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CAD0);
  }

  return result;
}

void sub_1E3F2C430(uint64_t *a2@<X8>)
{
  *a2 = sub_1E4203D94();
  a2[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB88, &unk_1E42DE868);
  OUTLINED_FUNCTION_16_0();
  sub_1E3F2C488();
}

void sub_1E3F2C488()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_173();
  v78 = type metadata accessor for SportsBannerScoreboardView.WinIndicator(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF48, &qword_1E42DF020);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v80 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF50, &qword_1E42DF028);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v87 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v86 = v17;
  v18 = OUTLINED_FUNCTION_138();
  v19 = type metadata accessor for SportsBannerScoreboardView(v18);
  v20 = *(v4 + *(v19 + 32) + 8);
  OUTLINED_FUNCTION_42_7();
  v77 = *(v21 + 1424);
  v77();
  LOBYTE(v89[1]) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8, &qword_1E42A0FA0);
  OUTLINED_FUNCTION_46();
  sub_1E3A1558C(v23, v24);
  v25 = OUTLINED_FUNCTION_135_6();
  *(v26 - 256) = v22;
  sub_1E38D2054(v25, v27);

  v89[0] = v20;
  v28 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);

  v83 = sub_1E383ACA0(v2, v28, &off_1F5D8FCF0);
  type metadata accessor for SportsVoiceOverViewModel(0);
  OUTLINED_FUNCTION_19_130();
  sub_1E3F291A0(v29, v30);

  OUTLINED_FUNCTION_167_0();
  v31 = v2;
  v82 = sub_1E42010C4();
  v84 = v32;
  OUTLINED_FUNCTION_42_7();
  v34 = (*(v33 + 1712))();
  v89[0] = v20;
  v35 = OUTLINED_FUNCTION_119_0();
  LOBYTE(v28) = sub_1E383ACA0(v35, v36, &off_1F5D8FCF0);

  OUTLINED_FUNCTION_42_7();
  v38 = (*(v37 + 1568))();
  if (v28)
  {
    if ((v38 & 1) == 0)
    {
LABEL_3:
      v39 = 1;
      v40 = v85;
      v41 = v86;
      goto LABEL_17;
    }
  }

  else if ((v38 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v76 = v34;
  v42 = *(v4 + *(v19 + 60));
  if (v42)
  {
    sub_1E375796C();
    v42 = sub_1E3757E68();
  }

  *v81 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  v43 = swift_storeEnumTagMultiPayload();
  *(v81 + *(v78 + 20)) = v42;
  (v77)(v43);
  v89[0] = v31;
  LOBYTE(v89[1]) = 0;
  v44 = OUTLINED_FUNCTION_135_6();
  sub_1E38D2054(v44, v45);

  v46 = v88;
  if (v88)
  {
    sub_1E3C27024();
    v48 = v47;

    if (v48)
    {
      v49 = sub_1E3F29364();
      v50 = String.widthOfString(usingFont:)(v49);

      v51 = 0;
      v46 = *&v50;
      goto LABEL_12;
    }

    v46 = 0;
  }

  v51 = 1;
LABEL_12:
  sub_1E4203DA4();
  if ((v51 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v52)
    {
      v53 = v31;
      v54 = sub_1E4206804();
      v55 = sub_1E42026D4();
      v56 = v54;
      v31 = v53;
      OUTLINED_FUNCTION_108(v56, &dword_1E323F000, v55, "Contradictory frame constraints specified.");
    }
  }

  OUTLINED_FUNCTION_27_17();
  v57 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_99_1(v57, v58, v59, v60, v46, v51, v61, v62, v75);
  sub_1E3F363AC(v81, v80);
  v40 = v85;
  memcpy((v80 + *(v85 + 36)), v89, 0x70uLL);
  OUTLINED_FUNCTION_98_7();
  sub_1E3741EA0(v63, v64, v65, &qword_1E42DF020);
  v41 = v86;
  sub_1E3741EA0(v79, v86, &qword_1ECF3CF48, &qword_1E42DF020);
  v39 = 0;
  v34 = v76;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v41, v39, 1, v40);
  if (v34)
  {
    v66 = 1.0;
  }

  else
  {
    v66 = 0.0;
  }

  OUTLINED_FUNCTION_98_7();
  sub_1E3743538(v67, v68, v69, &qword_1E42DF028);
  *v0 = v88;
  *(v0 + 8) = v83 & 1;
  *(v0 + 16) = v31;
  *(v0 + 24) = v82;
  *(v0 + 32) = v84;
  *(v0 + 40) = v66;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF58, &qword_1E42DF030);
  sub_1E3743538(v87, v0 + *(v70 + 48), &qword_1ECF3CF50, &qword_1E42DF028);

  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v71, v72);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v73, v74);

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F2CB10(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB90, &qword_1E42DE878);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  sub_1E3F2CC48();
  v5 = sub_1E4202724();
  OUTLINED_FUNCTION_26_100();
  if (*(v1 + v6))
  {
    sub_1E37573D0();
    OUTLINED_FUNCTION_30();
    (*(v7 + 176))(&v13);

    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_83_18();
    }
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_11_6();
  sub_1E3741EA0(v8, v9, v10, v11);
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB98, &qword_1E42DE880) + 36));
  *v12 = v5;
  OUTLINED_FUNCTION_11_4(v12);
}

void sub_1E3F2CC48()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v53 = type metadata accessor for BaseballClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF40, &qword_1E42DF018);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v48 = v12;
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  type metadata accessor for SportsClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CCD0, &qword_1E42DEB70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v47 - v18;
  v20 = *(type metadata accessor for SportsBannerScoreboardView(0) + 32);
  v50 = v3;
  v21 = *(v3 + v20 + 8);
  type metadata accessor for SportsBaseballScoreboardViewModel(0);
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v23 = *(v22 + 2432);

    v23(v24);
    v25 = *(*v0 + 1520);

    v25(v26);
    v28 = v27;
    LOBYTE(v25) = v29;

    v30 = sub_1E3DF33F8();
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_67_0();
    sub_1E3DF3424(v31, v28, v25, 1, 3, v30, v32, v33);
    sub_1E3F36458(v9, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_48_47();
    sub_1E3F291A0(v34, v35);
    sub_1E3F3518C();
    sub_1E4201F44();

    sub_1E3F36404();
  }

  else
  {
    (*(*v21 + 1520))();
    sub_1E3B47648();
    v47[1] = v5;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_32_0();
    sub_1E3B476D4();
    sub_1E4202464();
    sub_1E3F291A0(qword_1EE2800B8, type metadata accessor for SportsClockView);
    sub_1E4203224();
    (*(v48 + 8))(v15, v49);
    sub_1E3F36404();

    v36 = sub_1E3FEA350();
    v37 = &v19[*(v51 + 36)];
    *v37 = v36;
    v37[1] = v38;
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v39, v40, v41, v42);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_48_47();
    sub_1E3F291A0(v43, v44);
    sub_1E3F3518C();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v45, v46);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F2D10C()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB38, &qword_1E42DE828);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBA0, &qword_1E42DE888);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_82_20();
  if (sub_1E3F95854() == 3)
  {
    *v1 = sub_1E4201B84();
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBA8, &qword_1E42DE890);
    sub_1E3F2D914();
    v4 = OUTLINED_FUNCTION_53();
    sub_1E3743538(v4, v5, &qword_1ECF3CB38, &qword_1E42DE828);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB18, &qword_1E42DE818);
    sub_1E3F2D458();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_155_3();
    sub_1E3A1558C(v6, v7);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_87_2();
    sub_1E4201F44();
    OUTLINED_FUNCTION_155_3();
    sub_1E325F69C(v8, v9);
  }

  else
  {
    sub_1E3F2D510();
    memcpy(v0, v12, 0xE8uLL);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB18, &qword_1E42DE818);
    sub_1E3F2D458();
    OUTLINED_FUNCTION_9_0();
    sub_1E3A1558C(v10, v11);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_82();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3F2D314()
{
  result = qword_1ECF3CB00;
  if (!qword_1ECF3CB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CAE8, &qword_1E42DE800);
    sub_1E3F2D3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CB00);
  }

  return result;
}

unint64_t sub_1E3F2D3A0()
{
  result = qword_1ECF3CB08;
  if (!qword_1ECF3CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CAE0, &qword_1E42DE7F8);
    sub_1E3F2D458();
    sub_1E3A1558C(&qword_1ECF3CB30, &qword_1ECF3CB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CB08);
  }

  return result;
}

unint64_t sub_1E3F2D458()
{
  result = qword_1ECF3CB10;
  if (!qword_1ECF3CB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CB18, &qword_1E42DE818);
    sub_1E3A1558C(&qword_1ECF3CB20, &unk_1ECF3CB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CB10);
  }

  return result;
}

void sub_1E3F2D510()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v55 = v3;
  OUTLINED_FUNCTION_26_100();
  if (*(v0 + v4))
  {
    v5 = objc_opt_self();

    sub_1E3757774();
    OUTLINED_FUNCTION_2_1();
    v7 = (*(v6 + 2408))();

    v8 = [v5 vui:v7 fontFromTextLayout:?];

    sub_1E3757888();
    OUTLINED_FUNCTION_2_1();
    v10 = (*(v9 + 2408))();

    v11 = [v5 vui:v10 fontFromTextLayout:?];
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  v53 = sub_1E4201D44();
  v61 = 0;
  v65[0] = SportsDisplayError.title.getter();
  v65[1] = v12;
  sub_1E32822E0(v65[0], v12, v13);
  sub_1E4202C44();
  if (v8)
  {
    sub_1E405EEA0();
  }

  v14 = sub_1E4202C04();
  v49 = v15;
  v50 = v14;
  v17 = v16;
  v51 = v18;

  v19 = OUTLINED_FUNCTION_125();
  sub_1E37434B8(v19, v20, v21);

  v65[0] = SportsDisplayError.subtitle.getter(v2);
  v65[1] = v22;
  v23 = sub_1E4202C44();
  v25 = v24;
  v27 = v26;
  v54 = v8;
  v52 = v11;
  if (v11)
  {
    sub_1E405EEA0();
  }

  OUTLINED_FUNCTION_16_0();
  v28 = sub_1E4202C04();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_1E37434B8(v23, v25, v27 & 1);

  v68 = 0;
  v69 = 1;
  __dst[0] = v50;
  __dst[1] = v49;
  LOBYTE(__dst[2]) = v17 & 1;
  __dst[3] = v51;
  v64[0] = &v68;
  v64[1] = __dst;
  v56 = v28;
  v57 = v30;
  v58 = v32 & 1;
  v59 = v34;
  v66 = 0;
  v67 = 1;
  v64[2] = &v56;
  v64[3] = &v66;
  sub_1E3F2B8D4(v64, v65);
  sub_1E37434B8(v56, v57, v58);

  sub_1E37434B8(__dst[0], __dst[1], __dst[2]);

  memcpy(__dst, v65, 0x59uLL);
  memcpy(v64, v65, 0x59uLL);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v35, v36, v37, v38);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v39, v40);
  memcpy(&__src[7], __dst, 0x59uLL);
  v41 = v61;
  sub_1E4203DA4();
  v42 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_99_1(v42, v43, v44, v45, 0x7FEFFFFFFFFFFFFFLL, 0, v46, v47, v48);

  memcpy(&v62[7], v65, 0x70uLL);
  *v55 = v53;
  *(v55 + 8) = 0;
  *(v55 + 16) = v41;
  memcpy((v55 + 17), __src, 0x60uLL);
  memcpy((v55 + 113), v62, 0x77uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F2D914()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v207 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF08, &qword_1E42DEFE0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v208 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v200 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v216 = v11;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF10, &qword_1E42DEFE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v206 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v217 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v215 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v219 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8_4();
  v22 = type metadata accessor for SportsBannerLogoView(0);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v212 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v209 = v26;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF18, &qword_1E42DEFF0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_5();
  v205 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  v214 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v204 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  v213 = v34;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25_3();
  v218 = v37;
  v38 = OUTLINED_FUNCTION_138();
  v220 = *(v3 + *(type metadata accessor for SportsBannerScoreboardView(v38) + 60));
  if (v220 && (sub_1E3756660(), OUTLINED_FUNCTION_30(), (*(v39 + 152))(v246), , (v247 & 1) == 0))
  {
    v42 = OUTLINED_FUNCTION_6();
    v41 = 0;
    v40 = sub_1E3952BE0(v42, v43, v44, v45);
  }

  else
  {
    v40 = 0;
    v41 = 1;
  }

  sub_1E4203DA4();
  if ((v41 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v46)
    {
      v47 = sub_1E4206804();
      v203 = v1;
      v48 = sub_1E42026D4();
      OUTLINED_FUNCTION_108(v47, &dword_1E323F000, v48, "Contradictory frame constraints specified.");

      v1 = v203;
    }
  }

  v49 = 1;
  v50 = OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8(v50, v51, v40, v41, v52, v53, v54, v55, v199);
  v245[120] = 0;
  memcpy(&v245[7], v248, 0x70uLL);
  type metadata accessor for SportsBannerLogoViewModel();
  v201 = swift_retain_n();
  sub_1E3CBAB38(v201, 0);

  sub_1E3CBCBC0();

  v202 = v0;
  OUTLINED_FUNCTION_82();
  sub_1E3CBCC24(v56, v57, v58, v59);
  if (v220)
  {
    sub_1E3756C24();
    OUTLINED_FUNCTION_30();
    v61 = (*(v60 + 224))();
    v63 = v62;

    sub_1E3756C24();
    OUTLINED_FUNCTION_30();
    v65 = (*(v64 + 200))();
    v49 = v66;
  }

  else
  {
    v65 = 0;
    v61 = 0;
    v63 = 1;
  }

  sub_1E4203DA4();
  v67 = *&v61;
  if (v63)
  {
    v67 = -INFINITY;
  }

  v68 = *&v65;
  if (v49)
  {
    v68 = v67;
  }

  if (v67 > v68)
  {
    v69 = v1;
    v70 = sub_1E4206804();
    v71 = sub_1E42026D4();
    v72 = v70;
    v1 = v69;
    OUTLINED_FUNCTION_108(v72, &dword_1E323F000, v71, "Contradictory frame constraints specified.");
  }

  v73 = 1;
  OUTLINED_FUNCTION_15_54();
  OUTLINED_FUNCTION_99_1(v74, v75, v76, v77, v65, v78, v79, v80, 0);
  OUTLINED_FUNCTION_45_62();
  sub_1E3F363AC(v209, v1);
  memcpy((v1 + *(v211 + 36)), v249, 0x70uLL);
  sub_1E3741EA0(v1, v218, &qword_1ECF3CF18, &qword_1E42DEFF0);
  if (v220)
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    (*(v81 + 152))(v250);

    if (v251)
    {
      v82 = 0;
      v73 = 1;
    }

    else
    {
      v83 = OUTLINED_FUNCTION_6();
      v73 = 0;
      v82 = sub_1E3952BE0(v83, v84, v85, v86);
    }
  }

  else
  {
    v82 = 0;
  }

  sub_1E4203DA4();
  v87 = 1;
  v88 = OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8(v88, v89, v82, v73, v90, v91, v92, v93, v195);
  v244[120] = 0;
  memcpy(&v244[7], v252, 0x70uLL);
  *v219 = sub_1E4203D94();
  v219[1] = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB88, &unk_1E42DE868);
  sub_1E3F2C488();
  sub_1E3F2951C();
  sub_1E4203D74();
  OUTLINED_FUNCTION_15_54();
  sub_1E4200D94();
  v95 = (v219 + *(v210 + 36));
  v96 = v254;
  *v95 = v253;
  v95[1] = v96;
  v95[2] = v255;
  if (v220 && (sub_1E3756660(), OUTLINED_FUNCTION_30(), (*(v97 + 152))(v256), , (v257 & 1) == 0))
  {
    v99 = OUTLINED_FUNCTION_6();
    v87 = 0;
    v98 = sub_1E3952BE0(v99, v100, v101, v102);
  }

  else
  {
    v98 = 0;
  }

  sub_1E4203DA4();
  if ((v87 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v46)
    {
      v103 = sub_1E4206804();
      v104 = sub_1E42026D4();
      OUTLINED_FUNCTION_108(v103, &dword_1E323F000, v104, "Contradictory frame constraints specified.");
    }
  }

  OUTLINED_FUNCTION_27_17();
  v105 = OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8(v105, v106, v98, v87, v107, v108, v109, v110, v196);
  v243[120] = 0;
  memcpy(&v243[7], v258, 0x70uLL);
  v111 = sub_1E4201D44();
  v112 = v220;
  if (v220)
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    v114 = (*(v113 + 1176))();
    v116 = v115;

    if (v116)
    {
      v112 = 0;
    }

    else
    {
      v112 = v114;
    }
  }

  *v200 = v111;
  *(v200 + 8) = v112;
  *(v200 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF20, &qword_1E42DEFF8);
  sub_1E3F2E9C8();
  sub_1E3741EA0(v200, v216, &qword_1ECF3CF08, &qword_1E42DEFE0);
  if (v220 && (sub_1E3756660(), OUTLINED_FUNCTION_30(), (*(v117 + 152))(v259), , (v260 & 1) == 0))
  {
    v120 = OUTLINED_FUNCTION_6();
    v119 = 0;
    v118 = sub_1E3952BE0(v120, v121, v122, v123);
  }

  else
  {
    v118 = 0;
    v119 = 1;
  }

  sub_1E4203DA4();
  if ((v119 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v46)
    {
      v124 = sub_1E4206804();
      v125 = sub_1E42026D4();
      OUTLINED_FUNCTION_108(v124, &dword_1E323F000, v125, "Contradictory frame constraints specified.");
    }
  }

  v126 = 1;
  v127 = OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8(v127, v128, v118, v119, v129, v130, v131, v132, v197);
  v242[120] = 0;
  memcpy(&v242[7], v261, 0x70uLL);
  *v215 = sub_1E4203D94();
  v215[1] = v133;
  sub_1E3F2C488();
  sub_1E3F2951C();
  sub_1E4203D64();
  OUTLINED_FUNCTION_15_54();
  sub_1E4200D94();
  v134 = (v215 + *(v210 + 36));
  v135 = v263;
  *v134 = v262;
  v134[1] = v135;
  v134[2] = v264;
  if (v220)
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    (*(v136 + 152))(v265);

    v137 = v202;
    if (v266)
    {
      v138 = 0;
      v126 = 1;
    }

    else
    {
      v139 = OUTLINED_FUNCTION_6();
      v126 = 0;
      v138 = sub_1E3952BE0(v139, v140, v141, v142);
    }
  }

  else
  {
    v138 = 0;
    v137 = v202;
  }

  sub_1E4203DA4();
  if ((v126 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v46)
    {
      v143 = sub_1E4206804();
      v144 = sub_1E42026D4();
      OUTLINED_FUNCTION_108(v143, &dword_1E323F000, v144, "Contradictory frame constraints specified.");
    }
  }

  v145 = 1;
  v146 = OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8(v146, v147, v138, v126, v148, v149, v150, v151, v198);
  v241[120] = 0;
  memcpy(&v241[7], v267, 0x70uLL);
  v152 = sub_1E3CBAB38(v201, 1);
  sub_1E3CBCBC0();
  sub_1E3CBCC24(v137, v152, v220, v212);
  if (v220)
  {
    sub_1E3756C24();
    OUTLINED_FUNCTION_30();
    v154 = (*(v153 + 224))();
    v156 = v155;

    sub_1E3756C24();
    OUTLINED_FUNCTION_30();
    v158 = (*(v157 + 200))();
    v145 = v159;
  }

  else
  {
    v158 = 0;
    v154 = 0;
    v156 = 1;
  }

  sub_1E4203DA4();
  v160 = *&v154;
  if (v156)
  {
    v160 = -INFINITY;
  }

  v161 = *&v158;
  if (v145)
  {
    v161 = v160;
  }

  if (v160 > v161)
  {
    v162 = sub_1E4206804();
    v163 = sub_1E42026D4();
    OUTLINED_FUNCTION_108(v162, &dword_1E323F000, v163, "Contradictory frame constraints specified.");
  }

  v164 = 1;
  OUTLINED_FUNCTION_15_54();
  OUTLINED_FUNCTION_99_1(v165, v166, v167, v168, v158, v169, v170, v171, 0);
  OUTLINED_FUNCTION_45_62();
  sub_1E3F363AC(v212, v204);
  memcpy((v204 + *(v211 + 36)), v268, 0x70uLL);
  sub_1E3741EA0(v204, v213, &qword_1ECF3CF18, &qword_1E42DEFF0);
  if (v220)
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    (*(v172 + 152))(v269);

    if (v270)
    {
      v173 = 0;
      v164 = 1;
    }

    else
    {
      v174 = OUTLINED_FUNCTION_6();
      v164 = 0;
      v173 = sub_1E3952BE0(v174, v175, v176, v177);
    }
  }

  else
  {
    v173 = 0;
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_27_17();
  v178 = OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8(v178, v179, v173, v164, v180, v181, v182, v183, v194);
  v240[120] = 0;
  memcpy(&v240[7], v271, 0x70uLL);
  v236 = 0;
  v237 = 0;
  memcpy(v238, v245, sizeof(v238));
  v239[0] = &v236;
  sub_1E3743538(v218, v214, &qword_1ECF3CF18, &qword_1E42DEFF0);
  v239[1] = v214;
  v233 = 0;
  v234 = 0;
  memcpy(v235, v244, sizeof(v235));
  v239[2] = &v233;
  sub_1E3743538(v219, v217, &qword_1ECF3CF10, &qword_1E42DEFE8);
  v239[3] = v217;
  v230 = 0;
  v231 = 0;
  memcpy(v232, v243, sizeof(v232));
  v239[4] = &v230;
  sub_1E3743538(v216, v208, &qword_1ECF3CF08, &qword_1E42DEFE0);
  v239[5] = v208;
  v227 = 0;
  v228 = 0;
  memcpy(v229, v242, sizeof(v229));
  v239[6] = &v227;
  sub_1E3743538(v215, v206, &qword_1ECF3CF10, &qword_1E42DEFE8);
  v239[7] = v206;
  v224 = 0;
  v225 = 0;
  memcpy(v226, v241, sizeof(v226));
  v239[8] = &v224;
  sub_1E3743538(v213, v205, &qword_1ECF3CF18, &qword_1E42DEFF0);
  v239[9] = v205;
  v221 = 0;
  v222 = 0;
  memcpy(v223, v240, sizeof(v223));
  v239[10] = &v221;
  sub_1E3F2B760(v239, v207);
  sub_1E325F69C(v213, &qword_1ECF3CF18);
  sub_1E325F69C(v215, &qword_1ECF3CF10);
  sub_1E325F69C(v216, &qword_1ECF3CF08);
  sub_1E325F69C(v219, &qword_1ECF3CF10);
  OUTLINED_FUNCTION_98_7();
  sub_1E325F69C(v184, v185);
  v186 = OUTLINED_FUNCTION_75();
  sub_1E325F69C(v186, v187);
  v188 = OUTLINED_FUNCTION_8_6();
  sub_1E325F69C(v188, v189);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v190, v191);
  sub_1E325F69C(v217, &qword_1ECF3CF10);
  OUTLINED_FUNCTION_98_7();
  sub_1E325F69C(v192, v193);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F2E9C8()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v55 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB90, &qword_1E42DE878);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_2();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB98, &qword_1E42DE880);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v54 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF30, &qword_1E42DF008);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v53 - v16);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_8();
  v19 = type metadata accessor for SportsBannerScoreboardView(0);
  OUTLINED_FUNCTION_40_16();
  if ((*(v20 + 1304))())
  {
    v21 = OUTLINED_FUNCTION_106();
    v22 = type metadata accessor for SportsBannerScoreboardView.BadgeView(v21);
    sub_1E4203D34();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
    swift_storeEnumTagMultiPayload();
    *(v17 + *(v22 + 20)) = v0;
    OUTLINED_FUNCTION_114();
    v30 = v22;
  }

  else
  {
    type metadata accessor for SportsBannerScoreboardView.BadgeView(0);
    OUTLINED_FUNCTION_32_2();
  }

  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_1E3741EA0(v17, v2, &qword_1ECF3CF30, &qword_1E42DF008);
  sub_1E3F2CC48();
  v31 = sub_1E4202724();
  if (*(v4 + *(v19 + 60)))
  {
    sub_1E37573D0();
    OUTLINED_FUNCTION_30();
    (*(v32 + 176))(&v56);

    if ((v57 & 1) == 0)
    {
      OUTLINED_FUNCTION_83_18();
    }
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v1, v12, &qword_1ECF3CB90, &qword_1E42DE878);
  v33 = &v12[*(v53 + 36)];
  *v33 = v31;
  OUTLINED_FUNCTION_11_4(v33);
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v34, v35, v36, v37);
  v38 = v54;
  sub_1E3743538(v12, v54, &qword_1ECF3CB98, &qword_1E42DE880);
  v39 = v55;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v40, v41, v42, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF38, &qword_1E42DF010);
  sub_1E3743538(v38, v39 + *(v44 + 48), &qword_1ECF3CB98, &qword_1E42DE880);
  v45 = OUTLINED_FUNCTION_125();
  sub_1E325F69C(v45, v46);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v47, v48);
  v49 = OUTLINED_FUNCTION_58_1();
  sub_1E325F69C(v49, v50);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v51, v52);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3F2ED6C()
{
  OUTLINED_FUNCTION_109_9();
  sub_1E3741EA0(v3, v4, &qword_1ECF28BB8, &unk_1E429B6A0);
  v5 = type metadata accessor for SportsBannerScoreboardView.BadgeView(0);
  *(v2 + *(v5 + 20)) = v1;
  return sub_1E3741EA0(v0, v2 + *(v5 + 24), &qword_1ECF2A258, &qword_1E42DE8A0);
}

void sub_1E3F2EDDC()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF88, &qword_1E42DF068);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_7();
  v13 = type metadata accessor for SportsBannerScoreboardView.EventTitleView(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_8();
  v16 = *(v5 + *(type metadata accessor for SportsBannerScoreboardView(0) + 44));
  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *(v3 + *(v14 + 28)) = v16;

  sub_1E3F2F098();
  sub_1E3F36458(v3, v2);
  v17 = *(v10 + 16);
  v18 = OUTLINED_FUNCTION_75();
  v17(v18);
  v19 = OUTLINED_FUNCTION_8_6();
  sub_1E3F36458(v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF90, &qword_1E42DF070);
  (v17)(v7 + *(v21 + 48), v0, v8);
  v22 = *(v10 + 8);
  v22(v1, v8);
  sub_1E3F36404();
  v23 = OUTLINED_FUNCTION_11_6();
  (v22)(v23);
  sub_1E3F36404();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F2F044()
{
  OUTLINED_FUNCTION_109_9();
  sub_1E3741EA0(v3, v4, &qword_1ECF28BB8, &unk_1E429B6A0);
  result = v0(0);
  *(v2 + *(result + 20)) = v1;
  return result;
}

void sub_1E3F2F098()
{
  OUTLINED_FUNCTION_21_5();
  v25 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v24 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBB8, &qword_1E42DE8A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_50_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBC0, &qword_1E42DE8B0);
  OUTLINED_FUNCTION_0_10();
  v26 = v11;
  v27 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBC8, &qword_1E42DE8B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_26_100();
  v15 = 0.0;
  if (*(v1 + v14))
  {
    sub_1E3756F7C();
    OUTLINED_FUNCTION_30();
    (*(v16 + 176))(&v28);

    if ((v29 & 1) == 0)
    {
      v15 = OUTLINED_FUNCTION_83_18();
    }
  }

  *v0 = sub_1E4201B84();
  *(v0 + 8) = v15;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBD0, &qword_1E42DE8C0);
  sub_1E3F2FD3C();
  sub_1E4202474();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_40_13();
  sub_1E3A1558C(v17, v18);
  sub_1E4203224();
  (*(v24 + 8))(v8, v25);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v19, v20);
  sub_1E3FE7E74();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_23_16();
  sub_1E4202EC4();
  v21 = OUTLINED_FUNCTION_23_16();
  sub_1E37434B8(v21, v22, v23);

  (*(v26 + 8))(v3, v27);
  sub_1E3F341AC();
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  sub_1E325F69C(v2, &qword_1ECF3CBC8);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3F2F3E8()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBE8, &qword_1E42DE8C8);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_2();
  if (*(v0 + *(type metadata accessor for SportsBannerScoreboardView.EventTitleView(0) + 20)))
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E3C27024();
    v35[1] = v4;
    sub_1E4202494();
    OUTLINED_FUNCTION_32_2();
    v21 = __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_0_21(v21);
    v35[0] = v13;
    v23 = v15;
    v24 = v22;
    sub_1E3E038E0();

    sub_1E325F69C(v8, &qword_1ECF2E400);
    (*(v11 + 8))(v2, v9);
    v35[2] = v9;
    v35[3] = v24;
    OUTLINED_FUNCTION_7_22();
    swift_getOpaqueTypeConformance2();
    v25 = v35[0];
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    (*(v23 + 8))(v1, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBF0, &qword_1E42DE8D0);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBF0, &qword_1E42DE8D0);
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }
}

void sub_1E3F2F6C8()
{
  OUTLINED_FUNCTION_93();
  v77 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CCF0, &qword_1E42DEB80);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v72 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v76 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v71 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF60, &qword_1E42DF038);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v75 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF68, &qword_1E42DF040);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v69 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF70, &qword_1E42DF048);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v74 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  v24 = v23;
  OUTLINED_FUNCTION_82_20();
  OUTLINED_FUNCTION_40_16();
  v26 = v25 + 1304;
  v73 = *(v25 + 1304);
  v27 = v73();
  if (v27)
  {
    v28 = v27;
    v29 = type metadata accessor for SportsBannerScoreboardView.BadgeView(0);
    v69[1] = v26;
    v70 = v1;
    v30 = v29;

    sub_1E4203CE4();
    sub_1E4203D34();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    *v18 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
    swift_storeEnumTagMultiPayload();
    *(v18 + *(v30 + 20)) = v28;
    v69[0] = swift_getKeyPath();
    v35 = v18 + *(v15 + 36);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
    v37 = *MEMORY[0x1E697DBB8];
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    v39 = (*(v38 + 104))(&v35[v36], v37);
    *v35 = v69[0];
    v1 = v70;
    if ((*(*v0 + 1760))(v39))
    {
      v40 = 1.0;
    }

    else
    {
      v40 = 0.0;
    }

    sub_1E3741EA0(v18, v24, &qword_1ECF3CF68, &qword_1E42DF040);
    *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF78, &qword_1E42DF050) + 36)) = v40;
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF78, &qword_1E42DF050);
    OUTLINED_FUNCTION_32_2();
    v45 = __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  }

  if (v73)(v45) && (, OUTLINED_FUNCTION_8(), ((*(v50 + 2048))()))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v51 + 1328))())
    {
      OUTLINED_FUNCTION_18();
      v52 = v71;
      sub_1E3F23370();

      v53 = 0;
    }

    else
    {
      v53 = 1;
      v52 = v71;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
    v55 = OUTLINED_FUNCTION_121_1();
    __swift_storeEnumTagSinglePayload(v55, v53, 1, v56);
    sub_1E3741EA0(v52, v1, &qword_1ECF29210, &qword_1E4299980);
    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  __swift_storeEnumTagSinglePayload(v1, v54, 1, v8);
  v57 = v1;
  v58 = v76;
  sub_1E3F2B1A4();
  v59 = v24;
  v60 = v74;
  sub_1E3743538(v24, v74, &qword_1ECF3CF70, &qword_1E42DF048);
  v61 = v75;
  sub_1E3743538(v57, v75, &qword_1ECF3CF60, &qword_1E42DF038);
  v62 = v72;
  sub_1E3743538(v58, v72, &qword_1ECF3CCF0, &qword_1E42DEB80);
  v63 = v77;
  sub_1E3743538(v60, v77, &qword_1ECF3CF70, &qword_1E42DF048);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF80, &unk_1E42DF058);
  sub_1E3743538(v61, v63 + *(v64 + 48), &qword_1ECF3CF60, &qword_1E42DF038);
  sub_1E3743538(v62, v63 + *(v64 + 64), &qword_1ECF3CCF0, &qword_1E42DEB80);
  sub_1E325F69C(v58, &qword_1ECF3CCF0);
  sub_1E325F69C(v57, &qword_1ECF3CF60);
  sub_1E325F69C(v59, &qword_1ECF3CF70);
  sub_1E325F69C(v62, &qword_1ECF3CCF0);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v65, v66);
  v67 = OUTLINED_FUNCTION_8_6();
  sub_1E325F69C(v67, v68);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F2FD3C()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v61 = v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE60, &qword_1E42DEF20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE68, &unk_1E42DEF28);
  OUTLINED_FUNCTION_0_10();
  v58 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v64 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35378, &qword_1E42C3E10);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v65 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE70, &qword_1E42DEF38);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v62 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  v59 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE78, &qword_1E42DEF40);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52 - v28;
  *v29 = sub_1E42026E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE80, &qword_1E42DEF48);
  v60 = v29;
  sub_1E3F30220();
  if (*(v4 + *(type metadata accessor for SportsBannerScoreboardView(0) + 52)))
  {
    v56 = v19;
    sub_1E3F30BA0();
    sub_1E3F30DCC();
    v53 = v0;
    v57 = v2;
    v30 = v7;
    v31 = *(v14 + 16);
    v32 = OUTLINED_FUNCTION_35_5();
    v31(v32);
    v33 = v58;
    v54 = v1;
    v55 = v12;
    v34 = *(v58 + 16);
    OUTLINED_FUNCTION_33_4();
    v34();
    v35 = v53;
    v36 = OUTLINED_FUNCTION_119_0();
    v31(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE90, &qword_1E42DEF58);
    OUTLINED_FUNCTION_33_4();
    v34();
    v37 = *(v33 + 8);
    v37(v64, v30);
    v38 = *(v14 + 8);
    v39 = v55;
    v38(v56, v55);
    v40 = OUTLINED_FUNCTION_39_0();
    v2 = v57;
    (v37)(v40);
    v38(v65, v39);
    v41 = v59;
    sub_1E3741EA0(v35, v59, &qword_1ECF3CE60, &qword_1E42DEF20);
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v41 = v59;
  }

  __swift_storeEnumTagSinglePayload(v41, v42, 1, v63);
  v43 = v60;
  sub_1E3743538(v60, v2, &qword_1ECF3CE78, &qword_1E42DEF40);
  v44 = v62;
  sub_1E3743538(v41, v62, &qword_1ECF3CE70, &qword_1E42DEF38);
  v45 = v61;
  *v61 = 0;
  *(v45 + 8) = 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE88, &qword_1E42DEF50);
  sub_1E3743538(v2, v45 + v46[12], &qword_1ECF3CE78, &qword_1E42DEF40);
  sub_1E3743538(v44, v45 + v46[16], &qword_1ECF3CE70, &qword_1E42DEF38);
  v47 = v45 + v46[20];
  *v47 = 0;
  v47[8] = 1;
  v48 = OUTLINED_FUNCTION_8_6();
  sub_1E325F69C(v48, v49);
  sub_1E325F69C(v43, &qword_1ECF3CE78);
  sub_1E325F69C(v44, &qword_1ECF3CE70);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v50, v51);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F30220()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE98, &qword_1E42DEF60);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_28_6();
  *v1 = sub_1E4201B84();
  *(v1 + 8) = v6;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CEA0, &qword_1E42DEF68);
  sub_1E3F304A8();
  v20 = *(v4 + *(type metadata accessor for SportsBannerScoreboardView(0) + 48));
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = v8;
    MEMORY[0x1E6911E60](0);
    goto LABEL_4;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = v8;

LABEL_4:
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    sub_1E3743538(v1, v18, &qword_1ECF3CE98, &qword_1E42DEF60);
    v22 = *(v11 + 16);
    OUTLINED_FUNCTION_141_9();
    v22();
    sub_1E3743538(v18, v21, &qword_1ECF3CE98, &qword_1E42DEF60);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CEA8, &qword_1E42DEF70);
    (v22)(v21 + *(v23 + 48), v0, v9);
    v24 = *(v11 + 8);
    v24(v2, v9);
    OUTLINED_FUNCTION_167_0();
    sub_1E325F69C(v25, v26);
    v24(v0, v9);
    OUTLINED_FUNCTION_167_0();
    sub_1E325F69C(v27, v28);
    OUTLINED_FUNCTION_54_0();
    return;
  }

  __break(1u);
}

void sub_1E3F304A8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for SportsBannerScoreboardView(v2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E3F360A0(*(v1 + *(v6 + 56)));
  v21[1] = v7;
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_58_1();
  sub_1E3F36458(v8, v9);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1E3F363AC(v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1E3F3625C;
  *(v12 + 24) = v11;
  v13 = OUTLINED_FUNCTION_24_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  v15 = OUTLINED_FUNCTION_39_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_40_13();
  sub_1E3A1558C(v17, v18);
  sub_1E3F291A0(&qword_1EE283760, type metadata accessor for TextViewModel);
  OUTLINED_FUNCTION_33_4();
  sub_1E3A1558C(v19, v20);
  sub_1E4203B34();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F306F8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v74 = v4;
  v75 = v3;
  v73 = v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35378, &qword_1E42C3E10);
  OUTLINED_FUNCTION_0_10();
  v67 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v66 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CED0, &qword_1E42DEFA8);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v72 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v71 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v69 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CED8, &qword_1E42DEFB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_50_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CEE0, &qword_1E42DEFB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_19_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CEE8, &unk_1E42DEFC0);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v24);
  v25 = *(type metadata accessor for SportsBannerScoreboardView(0) + 48);
  v68 = v2;
  v26 = *(v2 + v25);
  v27 = sub_1E32AE9B0(v26);
  v28 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_18();
  if (v28 == v75)
  {
    v29 = v75;
    sub_1E3F23370();
    *(v0 + *(v20 + 36)) = 0xBFF0000000000000;
    OUTLINED_FUNCTION_21_1();
    sub_1E3743538(v30, v31, v32, v33);
    OUTLINED_FUNCTION_23_16();
    swift_storeEnumTagMultiPayload();
    v34 = sub_1E3F362DC();
    OUTLINED_FUNCTION_0_21(v34);
    OUTLINED_FUNCTION_116_12();
    sub_1E4201F44();
    v35 = OUTLINED_FUNCTION_67_0();
    sub_1E325F69C(v35, v36);
  }

  else
  {
    sub_1E3F23370();
    v37 = v69;
    v38 = OUTLINED_FUNCTION_32_0();
    v39(v38);
    OUTLINED_FUNCTION_23_16();
    swift_storeEnumTagMultiPayload();
    v40 = sub_1E3F362DC();
    OUTLINED_FUNCTION_0_21(v40);
    OUTLINED_FUNCTION_116_12();
    sub_1E4201F44();
    (*(v37 + 8))(v18, v14);
    v29 = v75;
  }

  v41 = sub_1E32AE9B0(v26);
  if (__OFSUB__(v41, 1))
  {
    goto LABEL_11;
  }

  if (v41 - 1 <= v29)
  {
    v46 = 1;
    v45 = v70;
    v43 = v71;
  }

  else
  {
    v42 = v66;
    sub_1E3F30BA0();
    v43 = v71;
    v44 = v42;
    v45 = v70;
    (*(v67 + 32))(v71, v44, v70);
    v46 = 0;
  }

  __swift_storeEnumTagSinglePayload(v43, v46, 1, v45);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v47, v48, v49, v50);
  v51 = v72;
  sub_1E3743538(v43, v72, &qword_1ECF3CED0, &qword_1E42DEFA8);
  v52 = v73;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v53, v54, v55, v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CEF8, &qword_1E42DEFD0);
  sub_1E3743538(v51, v52 + *(v57 + 48), &qword_1ECF3CED0, &qword_1E42DEFA8);
  v58 = OUTLINED_FUNCTION_119_0();
  sub_1E325F69C(v58, v59);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v60, v61);
  v62 = OUTLINED_FUNCTION_8_6();
  sub_1E325F69C(v62, v63);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v64, v65);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F30BA0()
{
  OUTLINED_FUNCTION_26_100();
  if (*(v0 + v1))
  {
    v2 = objc_opt_self();

    sub_1E3756F7C();
    OUTLINED_FUNCTION_2_1();
    v4 = (*(v3 + 2408))();

    v5 = [v2 vui:v4 fontFromTextLayout:?];

    sub_1E3756F7C();
    OUTLINED_FUNCTION_2_1();
    v19 = (*(v6 + 672))();
  }

  else
  {
    v19 = 0;
    v5 = 0;
  }

  sub_1E4201C14();
  v7 = sub_1E4202C24();
  v9 = v8;
  v11 = v10;
  if (v5)
  {
    v12 = v5;
    sub_1E405EEA0();
  }

  OUTLINED_FUNCTION_167_0();
  v13 = sub_1E4202C04();
  v15 = v14;
  v17 = v16;

  sub_1E37434B8(v7, v9, v11 & 1);

  sub_1E39B9138();

  sub_1E37434B8(v13, v15, v17 & 1);
}

void sub_1E3F30DCC()
{
  OUTLINED_FUNCTION_31_1();
  v28 = v4;
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v29 = v6;
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v26 = v8;
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_72_13();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v24 = v10;
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBF8, &qword_1E42DE8D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21_3();
  *v3 = sub_1E4201B84();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC00, &qword_1E42DE8E0);
  sub_1E3F310C8();
  v16 = type metadata accessor for SportsBannerScoreboardView(0);
  if (*(v0 + *(v16 + 52)) && sub_1E3C27528(v16, v17))
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_20_2();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
    }
  }

  else
  {
    v18 = 0;
  }

  sub_1E3746E10(v13);
  sub_1E374709C(v2);
  OUTLINED_FUNCTION_9_0();
  v20 = sub_1E3A1558C(v19, &qword_1ECF3CBF8);
  OUTLINED_FUNCTION_67_0();
  v21 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_67_0();
  sub_1E37B5FBC(v22);
  OUTLINED_FUNCTION_67_0();
  v23 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v18, v13, v2, v21, v1, v23 & 1, v14, v20, v28);

  (*(v29 + 8))(v1, v30);
  (*(v26 + 8))(v2, v27);
  (*(v24 + 8))(v13, v25);
  sub_1E325F69C(v3, &qword_1ECF3CBF8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F310C8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE38, &unk_1E42DEEE8);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_7();
  v15 = type metadata accessor for SportsBannerScoreboardView(0);
  if (*(v2 + *(v15 + 52)))
  {
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
    v17 = v0;
    v18 = 0;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
    v17 = v0;
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
  v19 = OUTLINED_FUNCTION_168();
  sub_1E3741EA0(v19, v20, v21, v22);
  if (*(v2 + *(v15 + 56)))
  {
    sub_1E3F3135C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE40, &qword_1E42DEEF8);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  v27 = OUTLINED_FUNCTION_53();
  sub_1E3743538(v27, v28, &qword_1ECF29210, &qword_1E4299980);
  v29 = OUTLINED_FUNCTION_13_8();
  sub_1E3743538(v29, v30, &qword_1ECF3CE38, &unk_1E42DEEE8);
  OUTLINED_FUNCTION_155_3();
  sub_1E3743538(v31, v32, v33, &qword_1E4299980);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE48, &unk_1E42DEF00);
  sub_1E3743538(v9, v4 + *(v34 + 48), &qword_1ECF3CE38, &unk_1E42DEEE8);
  OUTLINED_FUNCTION_141_9();
  sub_1E325F69C(v35, v36);
  OUTLINED_FUNCTION_167_0();
  sub_1E325F69C(v37, v38);
  OUTLINED_FUNCTION_141_9();
  sub_1E325F69C(v39, v40);
  v41 = OUTLINED_FUNCTION_125();
  sub_1E325F69C(v41, v42);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F3135C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v60 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE50, &qword_1E42DEF10);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE58, &qword_1E42DEF18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_2();
  v10 = *v5;
  OUTLINED_FUNCTION_26_100();
  v12 = *(v3 + v11);
  if (v12)
  {
    sub_1E3757238();
    OUTLINED_FUNCTION_30();
    (*(v13 + 1696))();

    j__OUTLINED_FUNCTION_18();
    v55 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_59_34();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_71_13();
    sub_1E3EB9C0C(v14, v15, v16, v17, v18, v19, 0, 2, v20, v49, v50, v51, v52, v53, v54, SHIBYTE(v54), v55);
    v21 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v10, v61, 0, v21 & 1, 0, 0, v1);
    sub_1E375C31C(v61);
    sub_1E3757238();
    OUTLINED_FUNCTION_2_1();
    v23 = (*(v22 + 672))();
  }

  else
  {
    j__OUTLINED_FUNCTION_18();
    v56 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_59_34();
    OUTLINED_FUNCTION_165();
    OUTLINED_FUNCTION_71_13();
    sub_1E3EB9C0C(v24, v25, v26, v27, v28, v29, 0, 2, v30, v49, v50, v51, v52, v53, v54, SHIBYTE(v54), v56);
    v31 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v10, v61, 0, v31 & 1, 0, 0, v1);
    sub_1E375C31C(v61);
    v23 = 0;
  }

  swift_getOpaqueTypeConformance2();
  sub_1E39B9138();

  v32 = OUTLINED_FUNCTION_24_4();
  v33(v32);
  v34 = OUTLINED_FUNCTION_13_8();
  v35(v34);
  *(v0 + *(v57 + 36)) = 257;
  v36 = sub_1E4202764();
  v37 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v36)
  {
    v37 = sub_1E4202774();
  }

  if (v12 && (sub_1E3757238(), OUTLINED_FUNCTION_30(), (*(v38 + 176))(v62), , (v63 & 1) == 0))
  {
    sub_1E4200A54();
    v39 = 0;
    *(&v41 + 1) = v40;
    v58 = v41;
    *(&v43 + 1) = v42;
    v59 = v43;
  }

  else
  {
    v59 = 0u;
    v39 = 1;
    v58 = 0u;
  }

  sub_1E3741EA0(v0, v60, &qword_1ECF3CE58, &qword_1E42DEF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE40, &qword_1E42DEEF8);
  OUTLINED_FUNCTION_134_3();
  *v44 = v37;
  *(v44 + 24) = v58;
  *(v44 + 8) = v59;
  *(v44 + 40) = v39;
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F3181C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_72_13();
  v6 = type metadata accessor for SportsBannerScoreboardView.ScoreView(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE00, &qword_1E42DEEB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE08, &qword_1E42DEEC0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = v0[2];
  v27 = *v0;
  v14 = v27;
  v15 = *(v0 + 8);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *(v10 + v6[5]) = v14;
  v16 = v6[6];
  _s20ScoreboardViewLayoutCMa();
  sub_1E3743538(&v27, v26, &qword_1ECF29088, &qword_1E42B7E40);
  *(v10 + v16) = sub_1E3757A38();
  *(v10 + v6[7]) = v15;
  sub_1E3F291A0(&qword_1ECF3CE10, type metadata accessor for SportsBannerScoreboardView.ScoreView);
  sub_1E4202ED4();
  sub_1E3F36404();
  if (v13)
  {
    sub_1E3FE28A8();
    v17 = 4;
  }

  else
  {
    sub_1E3FE2854();
    v17 = 3;
  }

  sub_1E4202464();
  sub_1E4202494();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_1E3FE2AC4(v17);
  sub_1E3F35FB4();
  sub_1E3E038E0();

  sub_1E325F69C(v1, &qword_1ECF2E400);
  sub_1E325F69C(v2, &qword_1ECF3CE00);
  if (v13)
  {
    v22 = sub_1E3FE28A8();
  }

  else
  {
    v22 = sub_1E3FE2854();
  }

  v26[0] = v22;
  v26[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  OUTLINED_FUNCTION_7_22();
  swift_getOpaqueTypeConformance2();
  sub_1E3C0E09C();
  sub_1E4203524();

  v24 = OUTLINED_FUNCTION_74();
  v25(v24);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F31BF0()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC10, &qword_1E42DE8E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v3 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC18, &unk_1E42DE8F0) + 44);
  v4 = *(v0 + *(type metadata accessor for SportsBannerScoreboardView.ScoreView(0) + 20));
  if (v4)
  {
    sub_1E3F31E98();
    *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE28, &qword_1E42DEED0) + 52)) = v4;

    sub_1E4200DD4();
    sub_1E4200DC4();
    sub_1E4200DE4();

    sub_1E4203E74();
    sub_1E4200E04();

    sub_1E4200DD4();
    sub_1E4200DC4();
    sub_1E4200DE4();

    sub_1E4203E74();
    sub_1E4200E04();

    v5 = sub_1E4200DB4();

    *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE30, &unk_1E42DEED8) + 36)) = v5;
    v6 = sub_1E4203E64();
    v7 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE20, &qword_1E42DEEC8) + 36));
    *v7 = v6;
    v7[1] = v4;
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE20, &qword_1E42DEEC8);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_131_13();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_13();
  sub_1E3A1558C(v16, v17);
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  v18 = OUTLINED_FUNCTION_75();
  sub_1E325F69C(v18, v19);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F31E98()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C558, &unk_1E42DD898);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC28, &qword_1E42DE900);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC30, &qword_1E42DE908);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v56 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC38, &qword_1E42DE910);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC40, &qword_1E42F3680);
  OUTLINED_FUNCTION_0_10();
  v55 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v54 = v14;
  OUTLINED_FUNCTION_138();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E3746E10(v2);
  v16 = sub_1E42012B4();
  v17 = OUTLINED_FUNCTION_11_6();
  v18(v17);
  v19 = *(v3 + *(type metadata accessor for SportsBannerScoreboardView.ScoreView(0) + 20));
  if (v16)
  {
    if (!v19 || (v20 = sub_1E3C27024(), !v21))
    {

      v20 = 0;
      v21 = 0xE000000000000000;
    }

    sub_1E32822E0(v20, v21, v22);
    v23 = sub_1E4202C44();
    v25 = v24;
    v27 = v26;
    v28 = objc_opt_self();
    sub_1E3757540();
    OUTLINED_FUNCTION_2_1();
    v30 = (*(v29 + 2408))();

    v31 = [v28 vui:v30 fontFromTextLayout:?];

    if (v31)
    {
      sub_1E405EEA0();
    }

    v42 = sub_1E4202C04();
    v44 = v43;
    v46 = v45;

    sub_1E37434B8(v23, v25, v27 & 1);

    OUTLINED_FUNCTION_131_13();
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    sub_1E37434B8(v42, v44, v46 & 1);

    (*(v55 + 16))(v56, v54, v57);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_47_50();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_0_21(OpaqueTypeConformance2);
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_58_1();
    sub_1E4201F44();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v48, v49, v50, v51);
    swift_storeEnumTagMultiPayload();
    sub_1E3F342F8();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v52, v53);
    (*(v55 + 8))(v54, v57);
  }

  else if (v19)
  {

    sub_1E375796C();
    sub_1E3757E68();

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    OUTLINED_FUNCTION_131_13();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    v32 = OUTLINED_FUNCTION_39_0();
    v33(v32);
    (*(v6 + 16))(v56, v1, v58);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_47_50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v34, v35, v36, v37);
    swift_storeEnumTagMultiPayload();
    sub_1E3F342F8();
    sub_1E4201F44();

    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v38, v39);
    v40 = OUTLINED_FUNCTION_58_1();
    v41(v40);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3F342F8();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F32654()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v75 = v6;
  v76 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v73 = (v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8, &qword_1E42BB500);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v11 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v71 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC50, &qword_1E42DE918);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31_2();
  v19 = type metadata accessor for SportsBannerScoreboardView.BadgeView(0);
  v74 = v0;
  v20 = *(v0 + *(v19 + 20));
  OUTLINED_FUNCTION_42_7();
  if ((*(v21 + 392))())
  {
    v22 = OUTLINED_FUNCTION_106();
    type metadata accessor for TextBadgeLayout(v22);
    OUTLINED_FUNCTION_20_2();
    v23 = swift_dynamicCastClass();
    if (!v23)
    {
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = (*(*v20 + 488))();
  if (!v24)
  {
    goto LABEL_15;
  }

  v77 = v4;
  v26 = sub_1E373E010(17, v24, v25);

  if (!v26)
  {
    goto LABEL_15;
  }

  if (*v26 != _TtC8VideosUI13TextViewModel || (, sub_1E3C27024(), v28 = v27, , !v28))
  {

LABEL_15:

    goto LABEL_16;
  }

  if (v23)
  {
    v68 = *(*v23 + 1848);

    v30 = v68(v29);

    if (v30)
    {
      v67 = v2;
      OUTLINED_FUNCTION_8();
      v32 = (*(v31 + 672))();

      if (v32)
      {
        sub_1E32822E0(v33, v34, v35);
        sub_1E42071D4();

        sub_1E4202C44();
        (*(v71 + 104))(v16, *MEMORY[0x1E6980F20], v11);
        v65 = *MEMORY[0x1E6980E28];
        v36 = sub_1E42028E4();
        OUTLINED_FUNCTION_2();
        (*(v37 + 104))(v1, v65, v36);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v38, v39, v40, v36);
        sub_1E4202974();
        OUTLINED_FUNCTION_124();
        sub_1E42029D4();
        sub_1E325F69C(v1, &qword_1ECF335F8);
        (*(v71 + 8))(v16, v11);
        sub_1E4202C04();

        v41 = OUTLINED_FUNCTION_168();
        sub_1E37434B8(v41, v42, v43);

        sub_1E38F08C4(v32);
        v44 = sub_1E4202B94();
        v69 = v45;
        v70 = v44;
        v66 = v46;
        v72 = v47;

        v48 = OUTLINED_FUNCTION_75();
        sub_1E37434B8(v48, v49, v50);

        v51 = *(v19 + 24);
        v52 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC58, &qword_1E42DE920) + 36));
        v53 = type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(0);
        sub_1E3743538(v74 + v51, v52 + *(v53 + 24), &qword_1ECF2A258, &qword_1E42DE8A0);
        *v52 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
        swift_storeEnumTagMultiPayload();
        *(v52 + *(v53 + 20)) = v23;
        *v67 = v70;
        *(v67 + 8) = v69;
        *(v67 + 16) = v66 & 1;
        *(v67 + 24) = v72;
        *(v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC60, &qword_1E42DE928) + 36)) = v20;
        KeyPath = swift_getKeyPath();
        v55 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC68, &qword_1E42DE960) + 36);
        *v55 = KeyPath;
        *(v55 + 8) = 1;

        sub_1E3746E10(v73);
        LOBYTE(KeyPath) = sub_1E42012B4();

        (*(v75 + 8))(v73, v76);
        v56 = (v67 + *(v17 + 36));
        *v56 = (KeyPath & 1) == 0;
        v56[1] = 1;
        sub_1E3741EA0(v67, v77, &qword_1ECF3CC50, &qword_1E42DE918);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v57, v58, v59, v17);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  else
  {
  }

LABEL_16:
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
}

uint64_t sub_1E3F32D68()
{
  v3 = OUTLINED_FUNCTION_75();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v7 = sub_1E4203D34();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_28_6();
  v12 = type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(0);
  sub_1E3743538(v0 + *(v12 + 24), v1, &qword_1ECF2A258, &qword_1E42DE8A0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    sub_1E325F69C(v1, &qword_1ECF2A258);
    sub_1E42036E4();
    return sub_1E4200DA4();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_8_6();
    v15(v14);
    v16 = OUTLINED_FUNCTION_123_1();
    v17(v16);
    v13 = sub_1E4200DA4();
    (*(v9 + 8))(v2, v7);
  }

  return v13;
}

double sub_1E3F32F3C()
{
  v2 = v0;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E3746E10(v1);
  v4 = sub_1E42012B4();
  v5 = OUTLINED_FUNCTION_74();
  v6(v5);
  if (v4)
  {
    v7.n128_f64[0] = j__OUTLINED_FUNCTION_33_15();
    return j_nullsub_1(v7, v8, v9, v10);
  }

  else if (*(v2 + *(type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(0) + 20)) && (OUTLINED_FUNCTION_8(), (*(v12 + 176))(v18), (v19 & 1) == 0))
  {
    v15.n128_u64[0] = v18[2];
    v16.n128_u64[0] = v18[3];
    v13.n128_u64[0] = v18[0];
    v14.n128_u64[0] = v18[1];
    j_nullsub_1(v13, v14, v15, v16);
    return 0.0;
  }

  else
  {
    v11 = 0.0;
    OUTLINED_FUNCTION_5_8();
  }

  return v11;
}

void sub_1E3F3307C()
{
  OUTLINED_FUNCTION_93();
  v3 = v0;
  v27 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  sub_1E4203AF4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_72_13();
  v9 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28[-1] - v14;
  sub_1E3746E10((&v28[-1] - v14));
  (*(v11 + 104))(v2, *MEMORY[0x1E697E6F8], v9);
  OUTLINED_FUNCTION_51_43();
  sub_1E3F291A0(v16, v17);
  v18 = sub_1E4205E14();
  v19 = *(v11 + 8);
  v19(v2, v9);
  v19(v15, v9);
  if (v18)
  {
    v20 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v21 + 104))(v1, v20);
    sub_1E3F291A0(&qword_1ECF2BAB8, MEMORY[0x1E6981998]);
  }

  else
  {
    v22 = 0.0;
    if (*(v3 + *(type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(0) + 20)))
    {
      OUTLINED_FUNCTION_8();
      (*(v23 + 552))(v28);
      if ((v29 & 1) == 0)
      {
        v22 = sub_1E3952BE8(v28[0], v28[1], v28[2], v28[3]);
      }
    }

    v24 = *(v27 + 20);
    v25 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v26 + 104))(v7 + v24, v25);
    *v7 = v22;
    v7[1] = v22;
    sub_1E3F291A0(&qword_1EE2893F0, MEMORY[0x1E697EAF0]);
  }

  sub_1E4203BD4();
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F333AC()
{
  OUTLINED_FUNCTION_9_4();
  v63 = v1;
  v56 = v4;
  v57 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CD78, &qword_1E42DEE58);
  OUTLINED_FUNCTION_0_10();
  v60 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CD80, &qword_1E42DEE60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CD88, &qword_1E42DEE68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21_3();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CD90, &qword_1E42DEE70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CD98, &qword_1E42DEE78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31_2();
  v18 = *MEMORY[0x1E697E6C8];
  v19 = sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v20 + 104))(v0, v18, v19);
  OUTLINED_FUNCTION_51_43();
  sub_1E3F291A0(v21, v22);
  if (sub_1E4205E84())
  {
    v53 = v9;
    v54 = v16;
    v55 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CDA0, &qword_1E42DEE80);
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_82();
    sub_1E3A1558C(v23, v24);
    sub_1E3A1558C(&qword_1EE23ACD8, &qword_1ECF2A1F8);
    OUTLINED_FUNCTION_141_9();
    sub_1E4202FA4();
    sub_1E325F69C(v0, &qword_1ECF2A1F8);
    v25 = *(v63 + *(type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(0) + 20));
    if (v25)
    {
      (*(*v25 + 328))();
      v27 = v26;
    }

    else
    {
      v27 = 1;
    }

    sub_1E4203DA4();
    if ((v27 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_17();
      if (v28)
      {
        v29 = sub_1E4206804();
        v30 = sub_1E42026D4();
        v56 = v3;
        v31 = v30;
        OUTLINED_FUNCTION_108(v29, &dword_1E323F000, v30, "Contradictory frame constraints specified.");

        v3 = v56;
      }
    }

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_71_13();
    sub_1E42015C4();
    v32 = v59;
    v33 = OUTLINED_FUNCTION_35_5();
    v34(v33);
    memcpy((v32 + *(v53 + 36)), v64, 0x70uLL);
    sub_1E3F32F3C();
    OUTLINED_FUNCTION_3();
    v35 = sub_1E4202734();
    sub_1E3741EA0(v32, v3, &qword_1ECF3CD80, &qword_1E42DEE60);
    v36 = (v3 + *(v58 + 36));
    *v36 = v35;
    OUTLINED_FUNCTION_11_4(v36);
    v37 = v55;
    if (!v25 || (v38 = (*(*v25 + 744))()) == 0)
    {
      v38 = [objc_opt_self() clearColor];
    }

    v39 = v38;
    v40 = v54;
    v41 = sub_1E38F08C4(v38);

    LOBYTE(v39) = sub_1E4202734();
    sub_1E3741EA0(v3, v15, &qword_1ECF3CD88, &qword_1E42DEE68);
    v42 = &v15[*(v62 + 36)];
    *v42 = v41;
    v42[8] = v39;
    v43 = sub_1E3F32D68();
    v44 = sub_1E4202734();
    v45 = OUTLINED_FUNCTION_8_6();
    sub_1E3741EA0(v45, v46, v47, v48);
    v49 = v37 + *(v40 + 36);
    *v49 = v43;
    *(v49 + 8) = v44;
    sub_1E3F3307C();
    v51 = v50;
    sub_1E3741EA0(v37, v57, &qword_1ECF3CD98, &qword_1E42DEE78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CDB0, &qword_1E42DEE88);
    OUTLINED_FUNCTION_134_3();
    *v52 = v51;
    *(v52 + 8) = 256;
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3F339AC()
{
  v1 = OUTLINED_FUNCTION_75();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_32_0();
  sub_1E3F33A70();
  sub_1E3F35D18();
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  return sub_1E325F69C(v0, &unk_1ECF3CDB8);
}

void sub_1E3F33A70()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CDF8, &qword_1E42DEEB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CDE0, &qword_1E42DEEA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v9 = sub_1E373F6E0(*(v2 + 98), 53, v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CDF0, &qword_1E42DEEA8);
  if (v9)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1E3A1558C(v10, v11);
    sub_1E4202ED4();
    v12 = OUTLINED_FUNCTION_119_0();
    sub_1E3743538(v12, v13, &qword_1ECF3CDE0, &qword_1E42DEEA0);
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    sub_1E3F35E78();
    sub_1E4201F44();
    sub_1E325F69C(v0, &qword_1ECF3CDE0);
  }

  else
  {
    OUTLINED_FUNCTION_155_3();
    v14();
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    sub_1E3F35E78();
    OUTLINED_FUNCTION_1_11();
    sub_1E3A1558C(v15, v16);
    OUTLINED_FUNCTION_125_1();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3F33C78()
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E3746E10(v0);
  v4 = sub_1E3B02A04();
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_74();
  v5(v6);
  if (v4)
  {
    OUTLINED_FUNCTION_125_12();

    sub_1E37588F4(v12, v7);
    sub_1E37588C4(v12);
    return *&v12[5];
  }

  else
  {
    sub_1E3746E10(v0);
    v9 = sub_1E3B0352C();
    v10 = OUTLINED_FUNCTION_74();
    v5(v10);
    OUTLINED_FUNCTION_125_12();

    sub_1E37588F4(v12, v11);
    sub_1E37588C4(v12);
    if (v9)
    {
      return *&v12[3];
    }

    else
    {
      return *&v12[1];
    }
  }
}

__n128 sub_1E3F33DD8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *sub_1E3E5FD88();
  v3 = sub_1E38F08C4(v2);

  sub_1E3F33C78();
  sub_1E3F33C78();
  sub_1E4203DA4();
  sub_1E4200D94();
  *&v9[6] = v10;
  *&v9[22] = v11;
  *&v9[38] = v12;
  OUTLINED_FUNCTION_125_12();

  sub_1E37588F4(v13, v4);
  v5 = sub_1E3F33C78();
  v7 = sub_1E3758798(v5, v6);
  sub_1E37588C4(v13);
  *a1 = v3;
  *(a1 + 8) = 256;
  *(a1 + 10) = *v9;
  *(a1 + 26) = *&v9[16];
  result = *&v9[32];
  *(a1 + 42) = *&v9[32];
  *(a1 + 56) = *(&v12 + 1);
  *(a1 + 64) = 0;
  *(a1 + 72) = v7;
  return result;
}

double sub_1E3F33EDC@<D0>(uint64_t a1@<X8>)
{
  sub_1E4202B44();
  v6.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMidX(v6);
  v7.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMinY(v7);
  OUTLINED_FUNCTION_76_23();
  sub_1E4202B24();
  v8.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMinX(v8);
  v9.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMaxY(v9);
  OUTLINED_FUNCTION_76_23();
  sub_1E4202B34();
  v10.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMaxX(v10);
  v11.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMaxY(v11);
  OUTLINED_FUNCTION_76_23();
  sub_1E4202B34();
  v12.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMidX(v12);
  v13.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMinY(v13);
  OUTLINED_FUNCTION_76_23();
  sub_1E4202B34();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1E3F33FB4@<D0>(uint64_t a1@<X8>)
{
  sub_1E3F33EDC(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1E3F34000())(void *a1)
{
  OUTLINED_FUNCTION_5_3();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *v0 = v1;
  v1[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3F3406C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F35F60(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDE4440](v3);
}

uint64_t sub_1E3F340C4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F35F60(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDE43F0](v3);
}

uint64_t sub_1E3F3411C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E3F35F60(a1, a2, a3);

  return MEMORY[0x1EEDE4410](a1, v4);
}

unint64_t sub_1E3F341AC()
{
  result = qword_1ECF3CBE0;
  if (!qword_1ECF3CBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CBC8, &qword_1E42DE8B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CBB8, &qword_1E42DE8A8);
    sub_1E3A1558C(&qword_1ECF3CBD8, &qword_1ECF3CBB8);
    swift_getOpaqueTypeConformance2();
    sub_1E3F291A0(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CBE0);
  }

  return result;
}

unint64_t sub_1E3F342F8()
{
  result = qword_1ECF3CC48;
  if (!qword_1ECF3CC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC38, &qword_1E42DE910);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CB8, &unk_1E429B6E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CC48);
  }

  return result;
}

uint64_t sub_1E3F34440()
{
  OUTLINED_FUNCTION_109_9();
  *v0 = swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3F34494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1E3741EA0(a1, a7, &qword_1ECF28BB8, &unk_1E429B6A0);
  v13 = type metadata accessor for SportsBannerScoreboardView(0);
  v14 = v13[5];
  *(a7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  sub_1E3741EA0(a2, a7 + v13[6], &qword_1ECF2D758, &unk_1E42A9F00);
  sub_1E3741EA0(a3, a7 + v13[7], &qword_1ECF29BF8, "62\v");
  v15 = (a7 + v13[8]);
  type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
  OUTLINED_FUNCTION_20_113();
  sub_1E3F291A0(v16, v17);
  OUTLINED_FUNCTION_39_0();
  *v15 = sub_1E42010C4();
  v15[1] = v18;
  v19 = (a7 + v13[9]);
  type metadata accessor for SportsVoiceOverViewModel(0);
  OUTLINED_FUNCTION_19_130();
  sub_1E3F291A0(v20, v21);
  *v19 = sub_1E42010C4();
  v19[1] = v22;
  v23 = (a7 + v13[10]);
  type metadata accessor for SportsCanonicalBannerProxy(0);
  OUTLINED_FUNCTION_52_48();
  sub_1E3F291A0(v24, v25);
  OUTLINED_FUNCTION_125();
  result = sub_1E42010C4();
  *v23 = result;
  v23[1] = v27;
  *(a7 + v13[11]) = a5;
  *(a7 + v13[12]) = a6;
  *(a7 + v13[13]) = a8;
  *(a7 + v13[14]) = a9;
  *(a7 + v13[15]) = a10;
  return result;
}

uint64_t sub_1E3F3474C()
{
  OUTLINED_FUNCTION_2_221();
  sub_1E3F35B20(319, v1, v2, MEMORY[0x1E697DCC0]);
  OUTLINED_FUNCTION_39_6();
  if (!(!v4 & v3))
  {
    sub_1E3F35B20(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    OUTLINED_FUNCTION_39_6();
    if (!(!v4 & v3))
    {
      sub_1E38FED58(319);
      OUTLINED_FUNCTION_39_6();
      if (!(!v4 & v3))
      {
        sub_1E3F35B20(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        OUTLINED_FUNCTION_39_6();
        if (!(!v4 & v3))
        {
          sub_1E3867038(319);
          OUTLINED_FUNCTION_39_6();
          if (!(!v4 & v3))
          {
            sub_1E3F349D0(319);
            OUTLINED_FUNCTION_39_6();
            if (!(!v4 & v3))
            {
              sub_1E3F34A64(319);
              OUTLINED_FUNCTION_39_6();
              if (!(!v4 & v3))
              {
                OUTLINED_FUNCTION_18_121();
                sub_1E3F35B20(319, v5, v6, MEMORY[0x1E69E6720]);
                OUTLINED_FUNCTION_39_6();
                if (!(!v4 & v3))
                {
                  OUTLINED_FUNCTION_18_121();
                  sub_1E3F35B20(319, v7, v8, MEMORY[0x1E69E62F8]);
                  if (v10 > 0x3F)
                  {
                    return v9;
                  }

                  else
                  {
                    sub_1E3F35B20(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
                    OUTLINED_FUNCTION_39_6();
                    if (!(!v4 & v3))
                    {
                      sub_1E3F35B20(319, &qword_1ECF36B08, _s20ScoreboardViewLayoutCMa, MEMORY[0x1E69E6720]);
                      OUTLINED_FUNCTION_39_6();
                      if (!(!v4 & v3))
                      {
                        OUTLINED_FUNCTION_72();
                        swift_cvw_initStructMetadataWithLayoutString();
                        return 0;
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

  return v0;
}