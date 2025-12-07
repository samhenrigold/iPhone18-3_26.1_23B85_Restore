uint64_t sub_24ED5DE6C()
{

  return swift_deallocObject();
}

uint64_t sub_24ED5DEB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24ED5DEEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED5DF3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24ED4F120(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24ED5E068()
{

  return swift_deallocObject();
}

uint64_t sub_24ED5E544(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    goto LABEL_21;
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
    if (!sub_24F92C738())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  v6 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (v7 >> 62)
  {
    if (!sub_24F92C738())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  v8 = *(a1 + v4);
  if (v8 >> 62)
  {
    v9 = sub_24F92C738();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = *(a2 + v6);
  if (!(v10 >> 62))
  {
    if (v9 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_21:
    v14 = 0;
    return v14 & 1;
  }

  if (v9 != sub_24F92C738())
  {
    goto LABEL_21;
  }

LABEL_10:
  v11 = *(a1 + v4);
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  result = sub_24F92C738();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v11 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x253052270](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v13 = *(v11 + 32);
  }

LABEL_25:
  v15 = *(a2 + v6);
  if (v15 >> 62)
  {
    result = sub_24F92C738();
    if (result)
    {
      goto LABEL_27;
    }

LABEL_33:
    if (v13)
    {
      goto LABEL_34;
    }

LABEL_40:
    v14 = 1;
    return v14 & 1;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_27:
  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = MEMORY[0x253052270](0, v15);

    if (v13)
    {
LABEL_30:
      if (v16)
      {
        v14 = _s12GameStoreKit12ProductMediaC2eeoiySbAC_ACtFZ_0(v13, v16);

LABEL_39:

        return v14 & 1;
      }

LABEL_34:
      v14 = 0;
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 32);

    if (v13)
    {
      goto LABEL_30;
    }

LABEL_37:
    if (v16)
    {
      v14 = 0;
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_24ED5E7D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct) = a1;

  v8 = sub_24F92B858();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_24EA998B8(0, 0, v6, &unk_24F99AE98, v9);

  v10 = *(v2 + v7);
  if (v10)
  {
    v11 = type metadata accessor for ProductPage(0);
    v12 = &off_2861DE828;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v18[1] = 0;
    v18[2] = 0;
  }

  v18[0] = v10;
  v18[3] = v11;
  v18[4] = v12;
  v13 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController;
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController);
  v15 = *(v13 + 8);

  sub_24E8E49A8(v18, v14, v15);
  return sub_24E601704(v18, &qword_27F221020, &qword_24F9657B8);
}

uint64_t sub_24ED5E988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24ED5AD54(a1, v4, v5, v6);
}

uint64_t sub_24ED5EA3C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED5EA84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ED5EACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ED5EB2C(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2 && *(v2 + 121) == 1)
  {
    v3 = a1;
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (v4 && (v5 = *(v4 + 304)) != 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 >> 62)
      {
        v8 = sub_24F92C738();
        v3 = a1;
        v7 = 0;
      }

      else
      {
        v7 = 0;
        v8 = *(v6 + 16);
      }
    }

    else
    {
      v8 = 0;
      v7 = 1;
    }

    v10 = *(v3 + 304);
    v11 = v10 == 0;
    if (v10)
    {
      if (v10 >> 62)
      {
        v22 = *(v3 + 304);
        v23 = v8;
        v21 = v7;
        v19 = sub_24F92C738();
        v7 = v21;
        v12 = v19;
        v10 = v22;
        v8 = v23;
      }

      else
      {
        v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v8 == v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if (v7)
    {
      v14 = v11;
    }

    v9 = v14 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v15 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v15 && (v16 = *(v15 + 240)) != 0)
  {
    sub_24E60169C(v16 + 144, &v24, &qword_27F2129B0, &unk_24F945320);
    v17 = (*(&v25 + 1) == 0) | v9;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v17 = 1;
  }

  sub_24E601704(&v24, &qword_27F2129B0, &unk_24F945320);
  return v17 & 1;
}

uint64_t objectdestroyTm_36(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t sub_24ED5ED30()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED5ED78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24ED56BF8(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_67Tm()
{
  v1 = sub_24F9287F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_24F929158();
  v6 = *(v5 - 8);
  v7 = (((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 8) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24ED5F168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, unint64_t, void, void, void, void, void, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(sub_24F9287F8() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(sub_24F929158() - 8);
  return a5(a1, *(v5 + 16), v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v5 + ((v13 + 39) & 0xFFFFFFFFFFFFFFF8)), v5 + ((((v13 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v14 + 80) + 8) & ~*(v14 + 80)), a2, a3, a4);
}

uint64_t sub_24ED5F2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void, void, uint64_t, unint64_t, unint64_t, void, uint64_t, uint64_t))
{
  v7 = *(sub_24F929158() - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_24F928738() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  return a3(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + 56, v3 + v8, v3 + v11, *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

double ShelfBasedProductPageIntent.init(deserializing:using:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a2;
  v5 = sub_24F9285B8();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = sub_24F91F4A8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v50 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a3;
  *a3 = 0xD00000000000001BLL;
  a3[1] = 0x800000024F99AF20;
  v59 = a1;
  sub_24F928398();
  sub_24F928268();
  v22 = v18;
  v48 = *(v11 + 8);
  v49 = v10;
  v23 = v11 + 8;
  v48(v22, v10);
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    sub_24E601704(v9, &qword_27F228530, &unk_24F93C6E0);
    v24 = sub_24F92AC38();
    sub_24ED60220(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v26 = v25;
    v27 = type metadata accessor for ShelfBasedProductPageIntent(0);
    *v26 = 7107189;
    v26[1] = 0xE300000000000000;
    v26[2] = v27;
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v52 + 8))(v54, v53);
    v48(v59, v49);
  }

  else
  {
    v29 = v50;
    (*(v20 + 32))(v50, v9, v19);
    sub_24F928398();
    v30 = sub_24F928278();
    v31 = v48;
    v32 = v49;
    v44 = v23;
    v48(v15, v49);
    v33 = type metadata accessor for ShelfBasedProductPageIntent(0);
    v34 = *(v33 + 20);
    v35 = v33;
    v45 = v33;
    v36 = v51;
    (*(v20 + 16))(v51 + v34, v29, v19);
    *(v36 + *(v35 + 24)) = v30 & 1;
    sub_24F928398();
    v37 = v52;
    v38 = v53;
    v39 = v54;
    (*(v52 + 16))(v47, v54, v53);
    sub_24EC55728();
    sub_24F929548();
    (*(v37 + 8))(v39, v38);
    v31(v59, v32);
    (*(v20 + 8))(v50, v19);
    v40 = v57;
    v41 = v58;
    v42 = v51 + *(v45 + 28);
    result = *&v55;
    v43 = v56;
    *v42 = v55;
    *(v42 + 1) = v43;
    *(v42 + 4) = v40;
    v42[40] = v41;
  }

  return result;
}

uint64_t type metadata accessor for ShelfBasedProductPageIntent(uint64_t a1)
{
  result = qword_27F22ED60;
  if (!qword_27F22ED60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ShelfBasedProductPageIntent.init(url:preloading:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  *a4 = 0xD00000000000001BLL;
  *(a4 + 1) = 0x800000024F99AF20;
  v10 = type metadata accessor for ShelfBasedProductPageIntent(0);
  v11 = v10[5];
  v12 = sub_24F91F4A8();
  v15 = *(a3 + 16);
  v16 = *a3;
  (*(*(v12 - 8) + 32))(&a4[v11], a1, v12);
  a4[v10[6]] = a2;
  v13 = &a4[v10[7]];
  result = v16;
  *v13 = v16;
  *(v13 + 1) = v15;
  *(v13 + 4) = v8;
  v13[40] = v9;
  return result;
}

uint64_t ShelfBasedProductPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShelfBasedProductPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfBasedProductPageIntent(0) + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double ShelfBasedProductPageIntent.referrerData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShelfBasedProductPageIntent(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  return sub_24EA145F0(v4, v5, v6, v7, v8, v9);
}

JSValue __swiftcall ShelfBasedProductPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_10;
  }

  isa = result.super.isa;
  v7 = type metadata accessor for ShelfBasedProductPageIntent(0);
  v8 = isa;
  sub_24F91F398();
  v9 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24F92C328();
  v10 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_24F92C328();
  if (*(v2 + *(v7 + 28) + 8) == 1)
  {
    v11 = in.super.isa;
    v12 = 0;
  }

  else
  {
    v15 = sub_24EDC3010();
    v13 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v12 = sub_24F92CDE8();
    sub_24E601704(&v15, &qword_27F251730, &unk_24F964AF0);
  }

  v14 = [v4 valueWithObject:v12 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_24F92C328();

    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24ED60220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ED60280(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ED60340(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24ED603E4(uint64_t a1)
{
  sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    sub_24ED60480();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ED60480()
{
  if (!qword_27F22ED70)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22ED70);
    }
  }
}

uint64_t PrivacyFooterLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t PrivacyFooterLayout.Metrics.actionButtonLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t PrivacyFooterLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t PrivacyFooterLayout.Metrics.init(bodyTopSpace:actionButtonLeadingMargin:maxTextWidth:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 112) = 0;
  *(a5 + 96) = 0u;
  *(a5 + 80) = 0u;
  v9 = a5 + 80;
  sub_24E612C80(a1, a5);
  sub_24E612C80(a2, a5 + 40);
  sub_24EA63A70(a3, v9);

  return sub_24E612C80(a4, a5 + 120);
}

uint64_t PrivacyFooterLayout.init(metrics:bodyLabel:actionButtons:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[7];
  *(a4 + 96) = a1[6];
  *(a4 + 112) = v6;
  v7 = a1[9];
  *(a4 + 128) = a1[8];
  *(a4 + 144) = v7;
  v8 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v8;
  v9 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v9;
  v10 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v10;
  result = sub_24E612C80(a2, a4 + 160);
  *(a4 + 200) = a3;
  return result;
}

double static PrivacyFooterLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_24F9225E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_24F922618();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v6 + 104))(v8, *MEMORY[0x277D22788], v5, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93A400;
  sub_24E615E00(a1, v21);
  v15 = sub_24F9229A8();
  v16 = MEMORY[0x277D228E0];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 120, v21);
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  __swift_allocate_boxed_opaque_existential_1((v14 + 72));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  return v18;
}

uint64_t PrivacyFooterLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[8];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v12);
  sub_24E8ED7D8(v12);
  v13 = sub_24F9223A8();
  v14 = *(v9 + 8);
  v40 = v8;
  v41 = v14;
  v14(v11, v8);
  v15 = v4[25];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;
    v18 = 0.0;
    v19 = a2;
    do
    {
      sub_24E615E00(v17, v44);
      __swift_project_boxed_opaque_existential_1(v44, v45);
      sub_24F922288();
      v21 = v20;
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1(v44);
      v19 = v19 - v21 - v13;
      if (v18 <= v23)
      {
        v18 = v23;
      }

      v17 += 40;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = a2;
  }

  sub_24E930DFC((v4 + 10), v44);
  v24 = v45;
  if (v45)
  {
    __swift_project_boxed_opaque_existential_1(v44, v45);
    sub_24E8ED7D8(v24);
    v25 = sub_24F9223A8();
    v26 = v40;
    v41(v11, v40);
    __swift_destroy_boxed_opaque_existential_1(v44);
    if (v25 < v19)
    {
      v19 = v25;
    }
  }

  else
  {
    sub_24E930E6C(v44);
    v26 = v40;
  }

  v49 = 0;
  v48 = 0u;
  *&v47[40] = 0u;
  sub_24E615E00((v4 + 20), v44);
  sub_24E615E00(v4, v47);
  v46 = 0;
  v50 = 8;
  sub_24E9D682C(v44, v42);
  v27 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_24E617A24((v28 > 1), v29 + 1, 1, v27);
  }

  sub_24E9D6888(v44);
  *(v27 + 2) = v29 + 1;
  v30 = &v27[136 * v29];
  v31 = v42[4];
  v32 = v42[2];
  v33 = v42[1];
  *(v30 + 5) = v42[3];
  *(v30 + 6) = v31;
  *(v30 + 3) = v33;
  *(v30 + 4) = v32;
  v34 = v42[7];
  v35 = v42[6];
  v36 = v42[5];
  *(v30 + 20) = v43;
  *(v30 + 8) = v35;
  *(v30 + 9) = v34;
  *(v30 + 7) = v36;
  *(v30 + 2) = v42[0];
  LOBYTE(v44[0]) = 0;
  v44[1] = v27;
  _VerticalFlowLayout.measurements(fitting:in:)(a1, v19, a3);

  v37 = v4[18];
  __swift_project_boxed_opaque_existential_1(v4 + 15, v37);
  sub_24E8ED7D8(v37);
  sub_24F9223A8();
  return (v41)(v11, v26);
}

uint64_t PrivacyFooterLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v54 = a2;
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + 64);
  __swift_project_boxed_opaque_existential_1((v7 + 40), v16);
  sub_24E8ED7D8(v16);
  v17 = sub_24F9223A8();
  v52 = *(v13 + 8);
  v53 = v12;
  v52(v15, v12);
  v66.origin.x = a3;
  v66.origin.y = a4;
  v55.size.width = a5;
  v55.size.height = a6;
  v66.size.width = a5;
  v66.size.height = a6;
  MaxX = CGRectGetMaxX(v66);
  v19 = *(v7 + 200);
  v20 = *(v19 + 16);
  v55.origin.x = a3;
  v55.origin.y = a4;
  if (v20)
  {
    v21 = v19 + 32;
    do
    {
      sub_24E615E00(v21, v59);
      __swift_project_boxed_opaque_existential_1(v59, v60);
      width = v55.size.width;
      height = v55.size.height;
      sub_24F922288();
      v56 = v24;
      v26 = MaxX - v25;
      v67.origin.x = v55.origin.x;
      v67.origin.y = v55.origin.y;
      v67.size.width = width;
      v67.size.height = height;
      CGRectGetMinY(v67);
      __swift_project_boxed_opaque_existential_1(v59, v60);
      sub_24F92C1D8();
      sub_24F922228();
      __swift_destroy_boxed_opaque_existential_1(v59);
      MaxX = v26 - v17;
      v21 += 40;
      --v20;
    }

    while (v20);
  }

  x = v55.origin.x;
  y = v55.origin.y;
  v30 = v55.size.width;
  v29 = v55.size.height;
  CGRectGetMaxX(v55);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = v30;
  v68.size.height = v29;
  CGRectGetWidth(v68);
  sub_24E930DFC(v7 + 80, v59);
  v31 = v60;
  if (v60)
  {
    __swift_project_boxed_opaque_existential_1(v59, v60);
    sub_24E8ED7D8(v31);
    sub_24F9223A8();
    v52(v15, v53);
    __swift_destroy_boxed_opaque_existential_1(v59);
    v30 = v55.size.width;
    v29 = v55.size.height;
  }

  else
  {
    sub_24E930E6C(v59);
  }

  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = v30;
  v69.size.height = v29;
  CGRectGetMinX(v69);
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = v30;
  v70.size.height = v29;
  CGRectGetMinY(v70);
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = v30;
  v71.size.height = v29;
  CGRectGetHeight(v71);
  sub_24F92C1D8();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v64 = 0;
  v63 = 0u;
  *&v62[40] = 0u;
  sub_24E615E00(v7 + 160, v59);
  sub_24E615E00(v7, v62);
  v61 = 0;
  v65 = 8;
  sub_24E9D682C(v59, v57);
  v40 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
  v42 = *(v40 + 2);
  v41 = *(v40 + 3);
  if (v42 >= v41 >> 1)
  {
    v40 = sub_24E617A24((v41 > 1), v42 + 1, 1, v40);
  }

  sub_24E9D6888(v59);
  *(v40 + 2) = v42 + 1;
  v43 = &v40[136 * v42];
  v44 = v57[4];
  v45 = v57[2];
  v46 = v57[1];
  *(v43 + 5) = v57[3];
  *(v43 + 6) = v44;
  *(v43 + 3) = v46;
  *(v43 + 4) = v45;
  v47 = v57[7];
  v48 = v57[6];
  v49 = v57[5];
  *(v43 + 20) = v58;
  *(v43 + 8) = v48;
  *(v43 + 9) = v47;
  *(v43 + 7) = v49;
  *(v43 + 2) = v57[0];
  LOBYTE(v59[0]) = 0;
  v59[1] = v40;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v54, v33, v35, v37, v39);
}

uint64_t sub_24ED61334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F928AD8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24ED61444(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F928AD8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for UpdateCrossUseConsentAction(uint64_t a1)
{
  result = qword_27F22ED78;
  if (!qword_27F22ED78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ED61598(uint64_t a1)
{
  sub_24E637694(319);
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24ED61624(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED98, &qword_24F99B2B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED61DA0();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24E6BD740(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CCF8();
  if (!v1)
  {
    type metadata accessor for UpdateCrossUseConsentAction(0);
    v8[14] = 1;
    sub_24F92CD38();
    v8[13] = 2;
    sub_24F928AD8();
    sub_24E6BD740(&qword_27F216080, MEMORY[0x277D21C88], MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24ED61854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_24F928AD8();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v24 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED88, &qword_24F99B2A8);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v24 - v8;
  updated = type metadata accessor for UpdateCrossUseConsentAction(0);
  MEMORY[0x28223BE20](updated);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED61DA0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = a1;
  v13 = v12;
  v15 = v28;
  v14 = v29;
  type metadata accessor for Player(0);
  v34 = 0;
  sub_24E6BD740(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v16 = v30;
  sub_24F92CC18();
  v17 = v16;
  v18 = v13;
  sub_24E6365D4(v17, v13);
  v33 = 1;
  v19 = updated;
  *(v18 + *(updated + 20)) = sub_24F92CC58();
  v32 = 2;
  sub_24E6BD740(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
  v30 = v5;
  v20 = v14;
  v21 = v31;
  sub_24F92CC68();
  (*(v15 + 8))(v9, v21);
  v22 = v25;
  (*(v26 + 32))(v18 + *(v19 + 24), v30, v20);
  sub_24ED61DF4(v18, v27);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_24ED61E58(v18);
}

unint64_t sub_24ED61C68()
{
  v1 = 0xD000000000000022;
  if (*v0 != 1)
  {
    v1 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24ED61CD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ED61FCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ED61CF8(uint64_t a1)
{
  v2 = sub_24ED61DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED61D34(uint64_t a1)
{
  v2 = sub_24ED61DA0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24ED61DA0()
{
  result = qword_27F22ED90;
  if (!qword_27F22ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22ED90);
  }

  return result;
}

uint64_t sub_24ED61DF4(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateCrossUseConsentAction(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24ED61E58(uint64_t a1)
{
  updated = type metadata accessor for UpdateCrossUseConsentAction(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_24ED61EC8()
{
  result = qword_27F22EDA0;
  if (!qword_27F22EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EDA0);
  }

  return result;
}

unint64_t sub_24ED61F20()
{
  result = qword_27F22EDA8;
  if (!qword_27F22EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EDA8);
  }

  return result;
}

unint64_t sub_24ED61F78()
{
  result = qword_27F22EDB0;
  if (!qword_27F22EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EDB0);
  }

  return result;
}

uint64_t sub_24ED61FCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x800000024FA5C390 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24ED620F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v0 - 8);
  v50 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v52 = &v47 - v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_24F928818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  memset(v58, 0, sizeof(v58));
  sub_24F928808();
  v17 = sub_24F9285B8();
  v56 = *(v17 - 8);
  (*(v56 + 56))(v9, 1, 1, v17);
  type metadata accessor for GenericPage(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = sub_24EEF0A68(MEMORY[0x277D84F90]);
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v20;
  v21 = (v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  *v21 = 0;
  v21[1] = 0;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
  sub_24E60169C(v58, v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v18 + v19) = 0;

  *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v53 = v11;
  v22 = *(v11 + 16);
  v55 = v16;
  v23 = v16;
  v24 = v10;
  v22(v13, v23, v10);
  v54 = v9;
  sub_24E60169C(v9, v6, &qword_27F2218B0, &unk_24F975980);
  *(v18 + 16) = 0;
  v25 = v13;
  v22((v18 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v13, v24);
  *(v18 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = 0;
  v26 = v52;
  sub_24E60169C(v6, v52, &qword_27F2218B0, &unk_24F975980);
  v27 = *(v56 + 48);
  v51 = v17;
  if (v27(v26, 1, v17) == 1)
  {
    sub_24E601704(v6, &qword_27F2218B0, &unk_24F975980);
    v28 = *(v53 + 8);
    v28(v25, v24);
    sub_24E601704(v54, &qword_27F2218B0, &unk_24F975980);
    v28(v55, v24);
    sub_24E601704(v58, &qword_27F2129B0, &unk_24F945320);
    v29 = v26;
    v30 = &qword_27F2218B0;
    v31 = &unk_24F975980;
  }

  else
  {
    v32 = v26;
    v48 = v25;
    v49 = v6;
    v33 = v53;
    v34 = v24;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v35, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v36 = v57;
    v37 = v49;
    if (v57)
    {
    }

    v38 = v56 + 8;
    v39 = v32;
    v40 = v51;
    v41 = *(v56 + 8);
    v41(v39, v51);
    if (v36)
    {
      v56 = v38;
      v42 = v50;
      sub_24E60169C(v37, v50, &qword_27F2218B0, &unk_24F975980);
      if (v27(v42, 1, v40) != 1)
      {
        sub_24ECDF110();
        sub_24E601704(v37, &qword_27F2218B0, &unk_24F975980);
        v46 = *(v33 + 8);
        v46(v48, v34);
        sub_24E601704(v54, &qword_27F2218B0, &unk_24F975980);
        v46(v55, v34);
        sub_24E601704(v58, &qword_27F2129B0, &unk_24F945320);
        result = (v41)(v42, v40);
        goto LABEL_12;
      }

      sub_24E601704(v37, &qword_27F2218B0, &unk_24F975980);
      v43 = *(v33 + 8);
      v43(v48, v34);
      sub_24E601704(v54, &qword_27F2218B0, &unk_24F975980);
      v43(v55, v34);
      sub_24E601704(v58, &qword_27F2129B0, &unk_24F945320);
      v29 = v42;
      v30 = &qword_27F2218B0;
      v31 = &unk_24F975980;
    }

    else
    {
      sub_24E601704(v37, &qword_27F2218B0, &unk_24F975980);
      v44 = *(v33 + 8);
      v44(v48, v34);
      sub_24E601704(v54, &qword_27F2218B0, &unk_24F975980);
      v44(v55, v34);
      v30 = &qword_27F2129B0;
      v31 = &unk_24F945320;
      v29 = v58;
    }
  }

  result = sub_24E601704(v29, v30, v31);
LABEL_12:
  qword_27F22EDB8 = v18;
  return result;
}

uint64_t TVPurchasesDetailsPresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24ED63C04(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t TVPurchasesDetailsPresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24ED63C04(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_24ED628BC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_view);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

double sub_24ED6292C()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_24ED6297C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_view);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void sub_24ED62A3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  *(v3 + v4) = v2;

  sub_24ED63968();
}

double sub_24ED62AF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_24ED63968();

  return result;
}

void (*sub_24ED62B60(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24ED62BC4;
}

void sub_24ED62BC4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24ED63968();
  }
}

uint64_t sub_24ED62BFC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = *(v4 + 16);
  v7 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = 0;
  do
  {
    v9 = v4 + 32 + 40 * v8;
    v10 = v8;
    while (1)
    {
      if (v10 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      sub_24E65864C(v9, v15);
      if (*(*(v2 + v7) + 16))
      {
        break;
      }

LABEL_4:
      ++v10;
      sub_24E6585F8(v15);
      v9 += 40;
      if (v6 == v10)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v15);
    if ((v11 & 1) == 0)
    {

      goto LABEL_4;
    }

    v12 = sub_24E6585F8(v15);
    MEMORY[0x253050F00](v12);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v8 = v10 + 1;
    sub_24F92B638();
    v5 = v16;
  }

  while (v6 - 1 != v10);
LABEL_12:

  if (v5 >> 62)
  {
LABEL_16:
    v13 = sub_24F92C738();
  }

  else
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v13;
}

uint64_t sub_24ED62E18(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_24E65864C(v12, v18);
      if (*(*(v4 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_24E6585F8(v18);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v18);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_24E6585F8(v18);
    MEMORY[0x253050F00](v15);
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v10 = v13 + 1;
    sub_24F92B638();
    v7 = v19;
    v11 = v6 + 32;
  }

  while (v8 - 1 != v13);
LABEL_12:

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v17 = MEMORY[0x253052270](a1, v7);
LABEL_16:

    return v17;
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v17 = *(v7 + 8 * a1 + 32);

      goto LABEL_16;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24ED63054()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED63098(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL sub_24ED63148(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      sub_24E65864C(v12, v18);
      if (*(*(v4 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_24E6585F8(v18);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v18);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_24E6585F8(v18);
    MEMORY[0x253050F00](v15);
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v10 = v13 + 1;
    sub_24F92B638();
    v7 = v19;
    v11 = v6 + 32;
  }

  while (v8 - 1 != v13);
LABEL_12:

  if (v7 >> 62)
  {
LABEL_16:
    v16 = sub_24F92C738();
  }

  else
  {
    v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v16 > a1;
}

uint64_t sub_24ED6336C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24F91FA18();
  v4 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  v34 = v4;
  v35 = v2;
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  v9 = *(v7 + 16);
  v10 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (v9)
  {
    v11 = 0;
    v12 = v7 + 32;
    v13 = MEMORY[0x277D84F90];
    v36 = v3;
    while (1)
    {
      v14 = v12 + 40 * v11;
      v3 = v11;
      while (1)
      {
        if (v3 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        sub_24E65864C(v14, v39);
        if (!*(*(v5 + v10) + 16))
        {
          goto LABEL_4;
        }

        sub_24E76D934(v39);
        if (v15)
        {
          break;
        }

LABEL_4:
        ++v3;
        sub_24E6585F8(v39);
        v14 += 40;
        if (v9 == v3)
        {
          v3 = v36;
          goto LABEL_16;
        }
      }

      v16 = sub_24E6585F8(v39);
      MEMORY[0x253050F00](v16);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v11 = v3 + 1;
      sub_24F92B638();
      v13 = v38;
      v12 = v7 + 32;
      v17 = v9 - 1 == v3;
      v3 = v36;
      if (v17)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = v8;
LABEL_16:

  if (v13 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {

    if (v3 >= i)
    {
      return 0;
    }

    v19 = sub_24F91FA18();
    v3 = *(v35 + v34);
    v20 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
    swift_beginAccess();
    v21 = *(v3 + v20);
    v37 = v8;
    v22 = *(v21 + 16);
    v23 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

    swift_beginAccess();
    if (!v22)
    {
      break;
    }

    v24 = 0;
    v25 = v21 + 32;
    v35 = v22 - 1;
    v8 = MEMORY[0x277D84F90];
LABEL_21:
    v26 = v25 + 40 * v24;
    v27 = v24;
    while (v27 < *(v21 + 16))
    {
      sub_24E65864C(v26, v39);
      if (*(*(v3 + v23) + 16))
      {

        sub_24E76D934(v39);
        if (v28)
        {

          v29 = sub_24E6585F8(v39);
          MEMORY[0x253050F00](v29);
          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v24 = v27 + 1;
          sub_24F92B638();
          v8 = v37;
          v25 = v21 + 32;
          if (v35 != v27)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }
      }

      ++v27;
      sub_24E6585F8(v39);
      v26 += 40;
      if (v22 == v27)
      {
        goto LABEL_32;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_32:

  if ((v8 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x253052270](v19, v8);
    goto LABEL_36;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v8 + 8 * v19 + 32);

LABEL_36:

    v32 = *(v31 + 24);

    v33 = *(v32 + 16);

    return sub_24F91FA08() < v33;
  }

  __break(1u);
  return result;
}

double sub_24ED637DC()
{
  swift_unknownObjectRelease();

  return result;
}

uint64_t TVPurchasesDetailsPresenter.deinit()
{
  v0 = BasePresenter.deinit();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t TVPurchasesDetailsPresenter.__deallocating_deinit()
{
  BasePresenter.deinit();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_24ED63968()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_view);
  swift_beginAccess();
  if (*v5)
  {
    v6 = v5[1];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    swift_unknownObjectRetain();

    v8 = sub_24EC9C404();

    (*(v6 + 32))(v8, ObjectType, v6);

    swift_unknownObjectRelease();
    if (*v5)
    {
      v9 = v5[1];
      v10 = swift_getObjectType();
      v11 = *(v9 + 16);
      v12 = *(v11 + 8);
      swift_unknownObjectRetain();
      v12(v10, v11);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v13 = *(v0 + 16);
  if (v13)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v15 = v14;
    (*(v2 + 8))(v4, v1);
    v16 = v13 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v16 = v15;
    *(v16 + 8) = 0;
    v17 = *(v13 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v17 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }
}

uint64_t sub_24ED63C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_view);
  *v9 = 0;
  v9[1] = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_isPreparingNextPage) = 0;
  if (qword_27F2106C8 != -1)
  {
    swift_once();
  }

  *(v4 + OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page) = qword_27F22EDB8;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

  return sub_24EC8415C(a1, a2, a3, a4);
}

unint64_t sub_24ED63D04(uint64_t a1)
{
  result = sub_24ED63D2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24ED63D2C()
{
  result = qword_27F22EDC0;
  if (!qword_27F22EDC0)
  {
    type metadata accessor for TVPurchasesDetailsPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EDC0);
  }

  return result;
}

uint64_t type metadata accessor for TVPurchasesDetailsPresenter(uint64_t a1)
{
  result = qword_27F22EDC8;
  if (!qword_27F22EDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24ED63DD0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_view;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_24ED63E34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_page;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24ED63E94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24ED63EEC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit27TVPurchasesDetailsPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t PageRefreshPolicy.__allocating_init(strategy:updateDelayInterval:shouldSendEventsForPageExit:refreshForDeviceDrivenContentChange:)(uint64_t a1, char a2, char a3, double a4)
{
  v8 = swift_allocObject();
  sub_24E6009C8(a1, v8 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578, &unk_24F99B450);
  *(v8 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval) = a4;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = a2;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = a3;
  return v8;
}

uint64_t PageRefreshPolicy.init(strategy:updateDelayInterval:shouldSendEventsForPageExit:refreshForDeviceDrivenContentChange:)(uint64_t a1, char a2, char a3, double a4)
{
  sub_24E6009C8(a1, v4 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578, &unk_24F99B450);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval) = a4;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = a2;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = a3;
  return v4;
}

uint64_t PageRefreshPolicy.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = &v78 - v4;
  v5 = sub_24F91F648();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x28223BE20](v5);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9288E8();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v88 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v86 = &v78 - v13;
  MEMORY[0x28223BE20](v14);
  v80 = &v78 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v78 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v78 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578, &unk_24F99B450);
  MEMORY[0x28223BE20](v25 - 8);
  v87 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v78 - v28);
  v96 = a1;
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v33 = *(v10 + 8);
  v33(v24, v9);
  v34 = MEMORY[0x277D21C40];
  v95 = v9;
  v91 = v10 + 8;
  v92 = v33;
  if (v32)
  {
    if (v30 == 0xD000000000000011 && 0x800000024FA5C450 == v32 || (sub_24F92CE08() & 1) != 0)
    {

      v35 = 0x800000024FA5C490;
      sub_24F928398();
      v37 = v93;
      v36 = v94;
      v38 = v90;
      (*(v93 + 104))(v90, *v34, v94);
      v39 = sub_24F928228();
      v41 = v40;
      v42 = *(v37 + 8);
      v33 = v92;
      v42(v38, v36);
      v43 = v95;
      v33(v21, v95);
      if (v41)
      {
        v44 = MEMORY[0x277D22530];
        v45 = 0xD000000000000019;
LABEL_7:
        v46 = sub_24F92AC38();
        sub_24E8F2E6C();
        swift_allocError();
        *v47 = v45;
        v47[1] = v35;
        v47[2] = v85;
        (*(*(v46 - 8) + 104))(v47, *v44, v46);
        swift_willThrow();
        v48 = sub_24F9285B8();
        (*(*(v48 - 8) + 8))(v89, v48);
        return (v33)(v96, v43);
      }

      *v29 = v39;
      refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
    }

    else
    {
      if (v30 == 0x694C6F54656D6974 && v32 == 0xEA00000000006576)
      {
      }

      else
      {
        v70 = sub_24F92CE08();

        if ((v70 & 1) == 0)
        {
          v44 = MEMORY[0x277D22520];
          v35 = 0xE800000000000000;
          v45 = 0x7967657461727473;
          v43 = v95;
          goto LABEL_7;
        }
      }

      v79 = 0x800000024FA5C470;
      sub_24F928398();
      v71 = v81;
      sub_24F928288();
      v72 = v71;
      v43 = v95;
      v33(v18, v95);
      v73 = v83;
      v74 = v84;
      if ((*(v83 + 48))(v72, 1, v84) == 1)
      {
        sub_24E601704(v72, &unk_27F22EC30, &qword_24F939880);
        v44 = MEMORY[0x277D22530];
        v45 = 0xD000000000000011;
        v35 = v79;
        goto LABEL_7;
      }

      v75 = v43;
      v85 = *(v73 + 32);
      v85(v82, v72, v74);
      v76 = v80;
      sub_24F928398();
      LODWORD(v83) = sub_24F928278();
      v33(v76, v75);
      v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226580, &qword_24F99B460) + 48);
      v85(v29, v82, v74);
      *(v29 + v77) = v83 & 1;
      refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
    }

    swift_storeEnumTagMultiPayload();
    (*(*(refreshed - 8) + 56))(v29, 0, 1, refreshed);
    v51 = v96;
    v34 = MEMORY[0x277D21C40];
  }

  else
  {
    v50 = type metadata accessor for PageRefreshPolicy.Strategy(0);
    (*(*(v50 - 8) + 56))(v29, 1, 1, v50);
    v51 = v96;
  }

  sub_24F928398();
  v54 = v93;
  v53 = v94;
  v55 = v90;
  (*(v93 + 104))(v90, *v34, v94);
  v56 = COERCE_DOUBLE(sub_24F928228());
  v58 = v57;
  (*(v54 + 8))(v55, v53);
  v59 = v21;
  v60 = v95;
  v61 = v92;
  v92(v59, v95);
  if (v58)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = v56;
  }

  v63 = v86;
  sub_24F928398();
  v64 = sub_24F928278();
  v61(v63, v60);
  v65 = v88;
  sub_24F928398();
  v66 = sub_24F928278();
  v67 = sub_24F9285B8();
  (*(*(v67 - 8) + 8))(v89, v67);
  v61(v51, v60);
  v61(v65, v60);
  v68 = v87;
  sub_24E6009C8(v29, v87, &qword_27F226578, &unk_24F99B450);
  type metadata accessor for PageRefreshPolicy(0);
  v69 = swift_allocObject();
  sub_24E6009C8(v68, v69 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578, &unk_24F99B450);
  result = v69;
  *(v69 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval) = v62;
  *(v69 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = v64 & 1;
  *(v69 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = v66 & 1;
  return result;
}

uint64_t sub_24ED64D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578, &unk_24F99B450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED64DBC(uint64_t a1)
{
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EDD8, &qword_24F99B468);
  MEMORY[0x28223BE20](v10);
  v12 = v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578, &unk_24F99B450);
  MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v57 - v15);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = (v57 - v18);
  MEMORY[0x28223BE20](v20);
  v26 = v57 - v25;
  if (!a1)
  {

    return v1;
  }

  v63 = v21;
  v64 = v24;
  v59 = v23;
  v60 = v22;
  v61 = v9;
  v62 = v6;
  v67 = v4;
  v68 = v3;
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  v28 = *(refreshed - 8);
  (*(v28 + 56))(v26, 1, 1, refreshed);
  v29 = OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy;
  v57[1] = v10;
  v30 = *(v10 + 48);
  sub_24ED64D1C(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, v12);
  sub_24ED64D1C(a1 + v29, &v12[v30]);
  v31 = *(v28 + 48);
  if (v31(v12, 1, refreshed) == 1)
  {

    sub_24E601704(v26, &qword_27F226578, &unk_24F99B450);
    sub_24ED64D1C(a1 + v29, v26);

    v32 = &v12[v30];
LABEL_4:
    sub_24E601704(v32, &qword_27F226578, &unk_24F99B450);
LABEL_12:
    sub_24E601704(v12, &qword_27F226578, &unk_24F99B450);
    v38 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
    v39 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit);
    v40 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange);
    type metadata accessor for PageRefreshPolicy(0);
    v1 = swift_allocObject();
    sub_24E6009C8(v26, v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578, &unk_24F99B450);
    *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval) = v38;
    *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = v39;
    *(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = v40;
    return v1;
  }

  v58 = v29;
  v65 = v26;
  v66 = v30;
  v69 = a1;
  sub_24ED64D1C(v12, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v66;
    if (v31(&v12[v66], 1, refreshed) == 1)
    {
      v34 = *(v67 + 8);

      v34(v19, v68);
      v35 = v66;
      goto LABEL_10;
    }

    v42 = v63;
    sub_24ED64D1C(&v12[v33], v63);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v53 = v69;

      v26 = v65;
      sub_24E601704(v65, &qword_27F226578, &unk_24F99B450);
      sub_24ED64D1C(v53 + v58, v26);

      (*(v67 + 8))(v19, v68);
      v32 = &v12[v33];
      goto LABEL_4;
    }

    v44 = v67;
    v43 = v68;
    v45 = *(v67 + 32);
    v46 = v61;
    v45(v61, v19, v68);
    v47 = v62;
    v45(v62, v42, v43);
    v48 = v69;

    v49 = sub_24F91F598();
    v50 = *(v44 + 8);
    v50(v47, v43);
    v50(v46, v43);
    sub_24E601704(v65, &qword_27F226578, &unk_24F99B450);
    if (v49)
    {
      v51 = v60;
      sub_24ED64D1C(v48 + v58, v60);
    }

    else
    {

      v51 = v60;
      sub_24ED64D1C(v1 + v58, v60);
    }

    v56 = v51;
LABEL_26:
    v26 = v65;
    sub_24E6009C8(v56, v65, &qword_27F226578, &unk_24F99B450);
    v32 = &v12[v66];
    goto LABEL_4;
  }

  v36 = *v19;
  v35 = v66;
  v37 = v31(&v12[v66], 1, refreshed);

  if (v37 != 1)
  {
    v26 = v65;
    sub_24E601704(v65, &qword_27F226578, &unk_24F99B450);
    v52 = v64;
    sub_24ED64D1C(&v12[v35], v64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24ED64D1C(v69 + v58, v26);

      (*(v67 + 8))(v52, v68);
      v32 = &v12[v35];
      goto LABEL_4;
    }

    v54 = v58;
    if (*v52 >= v36)
    {

      v55 = v59;
      sub_24ED64D1C(v1 + v54, v59);
    }

    else
    {
      v55 = v59;
      sub_24ED64D1C(v69 + v58, v59);
    }

    v56 = v55;
    goto LABEL_26;
  }

LABEL_10:
  if (v31(&v12[v35], 1, refreshed) == 1)
  {

    v26 = v65;
    sub_24E601704(v65, &qword_27F226578, &unk_24F99B450);
    sub_24ED64D1C(v1 + v58, v26);
    goto LABEL_12;
  }

  result = sub_24F92CDF8();
  __break(1u);
  return result;
}

uint64_t sub_24ED6555C(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578, &unk_24F99B450);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  v14 = sub_24F91F648();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  MEMORY[0x28223BE20](v26);
  v73 = a1;
  v30 = *(a1 + 2);
  if (!v30)
  {
    return 0;
  }

  v69 = v5;
  v70 = &v62 - v27;
  v67 = v29;
  v68 = v1;
  v71 = v28;
  sub_24ED64D1C(v1 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, v13);
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  v66 = *(refreshed - 8);
  if ((*(v66 + 48))(v13, 1, refreshed) == 1)
  {
    sub_24E601704(v13, &qword_27F226578, &unk_24F99B450);
    return 0;
  }

  v77 = refreshed;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24EA69CC8(v13);
    return 0;
  }

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226580, &qword_24F99B460);
  v63 = v13[*(v62 + 48)];
  v32 = v70;
  v78 = *(v15 + 32);
  v79 = v15 + 32;
  v78(v70, v13, v14);
  v75 = *(v15 + 16);
  v76 = v15 + 16;
  v75(v25, v32, v14);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_24E616878(0, v30 + 1, 1, v73);
  }

  v35 = *(v73 + 2);
  v34 = *(v73 + 3);
  v64 = v10;
  if (v35 >= v34 >> 1)
  {
    v73 = sub_24E616878((v34 > 1), v35 + 1, 1, v73);
  }

  v36 = v73;
  *(v73 + 2) = v35 + 1;
  v74 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v37 = &v36[v74];
  v38 = *(v65 + 72);
  v78(&v36[v74 + v38 * v35], v25, v14);
  v39 = sub_24F91F638();
  v40 = *(v36 + 2);
  if (v40)
  {
    v41 = MEMORY[0x277D84F90];
    v42 = v78;
    do
    {
      v75(v21, v37, v14);
      v42(v17, v21, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_24E616878(0, v41[2] + 1, 1, v41);
      }

      v44 = v41[2];
      v43 = v41[3];
      if (v44 >= v43 >> 1)
      {
        v41 = sub_24E616878((v43 > 1), v44 + 1, 1, v41);
      }

      v41[2] = v44 + 1;
      v42 = v78;
      v39 = (v78)(v41 + v74 + v44 * v38, v17, v14);
      v37 += v38;
      --v40;
      v45 = v77;
    }

    while (v40);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
    v45 = v77;
  }

  MEMORY[0x28223BE20](v39);
  v46 = v71;
  *(&v62 - 2) = v71;
  sub_24ED75E50(sub_24ED65D78, (&v62 - 4), v41);
  v48 = v47;

  v49 = v72;
  sub_24ED78CC4(v48, v72);

  v50 = v65;
  v51 = *(v65 + 8);
  v51(v70, v14);
  v52 = v69;
  sub_24E6009C8(v49, v69, &unk_27F22EC30, &qword_24F939880);
  if ((*(v50 + 48))(v52, 1, v14) == 1)
  {
    sub_24E601704(v52, &unk_27F22EC30, &qword_24F939880);
    v51(v46, v14);
    return 0;
  }

  v54 = v67;
  v55 = v78;
  v78(v67, v52, v14);
  v56 = *(v62 + 48);
  v57 = v64;
  v55(v64, v54, v14);
  *(v57 + v56) = v63;
  swift_storeEnumTagMultiPayload();
  (*(v66 + 56))(v57, 0, 1, v45);
  v58 = *(v68 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
  v59 = *(v68 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit);
  v60 = *(v68 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange);
  type metadata accessor for PageRefreshPolicy(0);
  v61 = swift_allocObject();
  sub_24E6009C8(v57, v61 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578, &unk_24F99B450);
  *(v61 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval) = v58;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = v59;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = v60;
  v51(v46, v14);
  return v61;
}

uint64_t PageRefreshPolicy.__deallocating_deinit()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, &qword_27F226578, &unk_24F99B450);

  return swift_deallocClassInstance();
}

uint64_t sub_24ED65D4C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PageRefreshPolicy.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24ED65DB0(uint64_t a1)
{
  sub_24ED65EF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24ED65EF4(uint64_t a1)
{
  if (!qword_27F22EDF0)
  {
    type metadata accessor for PageRefreshPolicy.Strategy(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22EDF0);
    }
  }
}

void sub_24ED65F4C(uint64_t a1)
{
  sub_24ED65FC0();
  if (v1 <= 0x3F)
  {
    sub_24ED65FF0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24ED65FC0()
{
  result = qword_27F22EE08;
  if (!qword_27F22EE08)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_27F22EE08);
  }

  return result;
}

void sub_24ED65FF0(uint64_t a1)
{
  if (!qword_27F22EE10)
  {
    sub_24F91F648();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F22EE10);
    }
  }
}

uint64_t sub_24ED6605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *(a1 + 16);
  if (!v40)
  {
LABEL_44:
    swift_beginAccess();

    sub_24F92A9C8();
  }

  v3 = 0;
  v39 = a1 + 32;
  while (1)
  {
    v5 = (v39 + 56 * v3);
    v6 = v5[1];
    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = *v5;
    v8 = v5[5];
    v9 = v5[6];
    if (!*(v8 + 16))
    {

LABEL_19:
      v16 = 0;
      goto LABEL_21;
    }

    sub_24F92D068();

    sub_24F92B218();
    v10 = sub_24F92D0B8();
    v11 = -1 << *(v8 + 32);
    v12 = v10 & ~v11;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_19;
    }

    v13 = ~v11;
    while (1)
    {
      v14 = (*(v8 + 48) + 16 * v12);
      v15 = *v14 == v7 && v6 == v14[1];
      if (v15 || (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v16 = 1;
LABEL_21:
    if (*(v9 + 16))
    {
      sub_24F92D068();

      sub_24F92B218();
      v17 = sub_24F92D0B8();
      v18 = -1 << *(v9 + 32);
      v19 = v17 & ~v18;
      if ((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(v9 + 48) + 16 * v19);
          v22 = *v21 == v7 && v6 == v21[1];
          if (v22 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *(a3 + 16);
        *(a3 + 16) = 0x8000000000000000;
        sub_24E81D1F0(1, v7, v6, isUniquelyReferenced_nonNull_native);
        *(a3 + 16) = v41;
        goto LABEL_4;
      }

LABEL_30:
    }

    if (!v16)
    {
      goto LABEL_5;
    }

    swift_beginAccess();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    v26 = sub_24E76D644(v7, v6);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (v23)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_24E8AEFBC();
        if ((v30 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      sub_24E89B4DC(v29, v23);
      v31 = sub_24E76D644(v7, v6);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_47;
      }

      v26 = v31;
      if ((v30 & 1) == 0)
      {
LABEL_36:
        v24[(v26 >> 6) + 8] |= 1 << v26;
        v33 = (v24[6] + 16 * v26);
        *v33 = v7;
        v33[1] = v6;
        *(v24[7] + v26) = 0;
        v34 = v24[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_46;
        }

        v24[2] = v36;

        goto LABEL_41;
      }
    }

    *(v24[7] + v26) = 0;
LABEL_41:
    *(a3 + 16) = v24;
LABEL_4:
    swift_endAccess();
LABEL_5:
    sub_24ED66F88(v7, v6);
LABEL_6:
    if (++v3 == v40)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24ED664BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((sub_24F92A928() & 1) == 0)
  {
    if (a4)
    {
      v10 = a4;
      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v11 = sub_24F92AAE8();
      __swift_project_value_buffer(v11, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      swift_getErrorValue();
      v14[3] = v13;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
      (*(*(v13 - 8) + 16))(boxed_opaque_existential_1);
      sub_24F928438();
      sub_24E857CC8(v14);
      sub_24F92A5A8();

      sub_24F92A9A8();
    }

    else
    {

      sub_24F92A9C8();
    }
  }
}

void sub_24ED66748(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24F93DE60;
    v11 = a4;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000031, 0x800000024FA5C540);
    v83 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    sub_24F92CA38();
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_24F92D038();

    sub_24F92A9A8();

    return;
  }

  v12 = a6;
  v76 = a7;
  v71 = a8;
  v72 = a5;
  v14 = *(isUniquelyReferenced_nonNull_native + 16);
  v73 = isUniquelyReferenced_nonNull_native;
  v74 = a3;
  v79 = a6;
  if (!v14)
  {
    v17 = MEMORY[0x277D84F90];
    v26 = *(a6 + 16);
    if (!v26)
    {
      goto LABEL_29;
    }

LABEL_19:
    v27 = (v12 + 40);
    v28 = v73;
    do
    {
      v29 = v17;
      v31 = *(v27 - 1);
      v30 = *v27;
      v81 = v31;
      v82 = v30;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v70 = &v81;

      if (sub_24E6159B8(sub_24E7FAFB0, v69, v28))
      {

        v17 = v29;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v17 = v29;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = sub_24E615CF4(0, *(v29 + 16) + 1, 1, v29);
          v17 = isUniquelyReferenced_nonNull_native;
        }

        v33 = *(v17 + 16);
        v32 = *(v17 + 24);
        if (v33 >= v32 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_24E615CF4((v32 > 1), v33 + 1, 1, v17);
          v17 = isUniquelyReferenced_nonNull_native;
        }

        *(v17 + 16) = v33 + 1;
        v34 = v17 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v30;
      }

      v27 += 2;
      --v26;
    }

    while (v26);
LABEL_29:
    v78 = *(v17 + 16);
    if (!v78)
    {
      v75 = MEMORY[0x277D84F90];
LABEL_62:

      v59 = v75;
      v83 = v75;
      v60 = v73;
      if (a9)
      {
        v61 = v71;
        v81 = v71;
        v82 = a9;
        MEMORY[0x28223BE20](v58);
        v70 = &v81;

        v62 = sub_24E6159B8(sub_24E7FAFB0, v69, v79);
        if (v62 & 1) != 0 || (v81 = v61, v82 = a9, MEMORY[0x28223BE20](v62), v70 = &v81, (sub_24E6159B8(sub_24E7FAFB0, v69, v60)))
        {
          v63 = *(v59 + 2);
          if (v63)
          {
            v64 = 0;
            v65 = v59 + 40;
            while (1)
            {
              v66 = *(v65 - 1) == v61 && *v65 == a9;
              if (v66 || (sub_24F92CE08() & 1) != 0)
              {
                break;
              }

              ++v64;
              v65 += 2;
              if (v63 == v64)
              {
                goto LABEL_76;
              }
            }

            sub_24EA0E6F4(v64);

            v59 = v83;
          }

LABEL_76:
          v67 = *(v59 + 2);
          v68 = swift_isUniquelyReferenced_nonNull_native();
          if (!v68 || v67 >= *(v59 + 3) >> 1)
          {
            v59 = sub_24E615CF4(v68, v67 + 1, 1, v59);
            v83 = v59;
          }

          sub_24EDAB2A8(0, 0, 1, v61, a9);
        }
      }

      v81 = v59;
      sub_24F92A9C8();

      return;
    }

    v35 = 0;
    v77 = v17 + 32;
    v36 = a2 + 56;
    v37 = v74;
    v38 = v74 + 56;
    v75 = MEMORY[0x277D84F90];
    v80 = v17;
    while (1)
    {
      if (v35 >= *(v17 + 16))
      {
        goto LABEL_84;
      }

      v39 = (v77 + 16 * v35);
      v41 = *v39;
      v40 = v39[1];
      ++v35;
      if (*(a2 + 16))
      {
        sub_24F92D068();

        sub_24F92B218();
        v42 = sub_24F92D0B8();
        v43 = -1 << *(a2 + 32);
        v44 = v42 & ~v43;
        if ((*(v36 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
        {
          v45 = ~v43;
          do
          {
            v46 = (*(a2 + 48) + 16 * v44);
            if (*v46 == v41 && v46[1] == v40)
            {
              goto LABEL_32;
            }

            v42 = sub_24F92CE08();
            if (v42)
            {
              goto LABEL_32;
            }

            v44 = (v44 + 1) & v45;
          }

          while (((*(v36 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0);
        }
      }

      else
      {
      }

      if (*(v37 + 16))
      {
        sub_24F92D068();
        sub_24F92B218();
        v42 = sub_24F92D0B8();
        v48 = -1 << *(v37 + 32);
        v49 = v42 & ~v48;
        if ((*(v38 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
        {
          break;
        }
      }

LABEL_31:
      v81 = v41;
      v82 = v40;
      MEMORY[0x28223BE20](v42);
      v70 = &v81;
      if (sub_24E6159B8(sub_24E7FAFB0, v69, v76))
      {
LABEL_55:
        v53 = v75;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v53;
        if ((v54 & 1) == 0)
        {
          sub_24F4578E0(0, *(v53 + 2) + 1, 1);
          v53 = v83;
        }

        v17 = v80;
        v56 = *(v53 + 2);
        v55 = *(v53 + 3);
        if (v56 >= v55 >> 1)
        {
          sub_24F4578E0((v55 > 1), v56 + 1, 1);
          v17 = v80;
          v53 = v83;
        }

        *(v53 + 2) = v56 + 1;
        v75 = v53;
        v57 = &v53[16 * v56];
        *(v57 + 4) = v41;
        *(v57 + 5) = v40;
        v37 = v74;
        if (v35 == v78)
        {
          goto LABEL_62;
        }
      }

      else
      {
LABEL_32:

        v17 = v80;
        if (v35 == v78)
        {
          goto LABEL_62;
        }
      }
    }

    v50 = ~v48;
    while (1)
    {
      v51 = (*(v37 + 48) + 16 * v49);
      if (*v51 == v41 && v51[1] == v40)
      {
        goto LABEL_55;
      }

      v42 = sub_24F92CE08();
      if (v42)
      {
        goto LABEL_55;
      }

      v49 = (v49 + 1) & v50;
      if (((*(v38 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  v15 = 0;
  v16 = isUniquelyReferenced_nonNull_native + 40;
  v17 = MEMORY[0x277D84F90];
  v78 = isUniquelyReferenced_nonNull_native + 40;
LABEL_5:
  v80 = v17;
  v18 = (v16 + 16 * v15);
  v19 = v15;
  while (v19 < v14)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_83;
    }

    v21 = *(v18 - 1);
    v20 = *v18;
    v81 = v21;
    v82 = v20;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v70 = &v81;

    v12 = v79;
    if (sub_24E6159B8(sub_24E7FA94C, v69, v79))
    {
      v22 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v22;
      v83 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_24F4578E0(0, *(v22 + 2) + 1, 1);
        v12 = v79;
        v17 = v83;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_24F4578E0((v23 > 1), v24 + 1, 1);
        v12 = v79;
        v17 = v83;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v20;
      v16 = v78;
      if (v15 == v14)
      {
LABEL_16:
        v26 = *(v12 + 16);
        if (!v26)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      goto LABEL_5;
    }

    ++v19;
    v18 += 2;
    if (v15 == v14)
    {
      v17 = v80;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

uint64_t sub_24ED66F88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t AskToBuy.init(promptString:isException:isInAppPurchase:approveClosure:declineClosure:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

uint64_t AskToBuy.promptString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AskToBuy.approveClosure.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AskToBuy.declineClosure.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24ED670C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24ED67108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

const char *sub_24ED67164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v37 = a4;
  v38 = a1;
  v41 = a2;
  v6 = sub_24F922068();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92AC68();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v16 = MEMORY[0x25304F260]();
  if (!v16)
  {
    v23 = v10;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v24 = sub_24F922058();
    __swift_project_value_buffer(v24, qword_27F23DAC0);
    v25 = sub_24F922038();
    sub_24F922078();
    LODWORD(v40) = sub_24F92C048();
    v26 = v9;
    v27 = v23;
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      v28 = v34;
      if ((*(v34 + 88))(v8, v6) == *MEMORY[0x277D85B00])
      {
        v29 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 8))(v8, v6);
        v29 = "success=false";
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v25, v40, v31, "TreatmentArea", v29, v30, 2u);
      MEMORY[0x2530542D0](v30, -1, -1);
    }

    (*(v27 + 8))(v12, v26);
    v18 = "TreatmentAreaPromise";
    sub_24F92A868();
    sub_24ED6B280(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_13;
  }

  v17 = v16;
  v18 = swift_allocObject();
  v19 = v38;
  v20 = v39;
  *(v18 + 2) = v37;
  *(v18 + 3) = v20;
  *(v18 + 4) = v17;
  *(v18 + 5) = a3;
  v21 = v19;

  v22 = v40;
  sub_24F92AC48();
  if (v22)
  {

LABEL_13:
    sub_24ED69000(v41, "TreatmentAreaPromise");
    return v18;
  }

  v18 = sub_24F92AC58();

  (*(v35 + 8))(v15, v36);
  sub_24ED69000(v41, "TreatmentAreaPromise");
  return v18;
}

void sub_24ED6761C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v46 = a6;
  v48 = a7;
  v40 = a4;
  v43 = a3;
  v44 = a2;
  v45 = a1;
  v10 = sub_24F9281B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v38 = &v37 - v14;
  v16 = [objc_opt_self() defaultTreatmentStore];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = a4;
  v39 = a5;
  *(inited + 40) = a5;

  sub_24F45D828(inited);
  swift_setDeallocating();
  sub_24EB715C4(inited + 32);
  v18 = sub_24F92BA98();

  v42 = [v16 treatmentsForAreas_];

  v19 = v11;
  v20 = *(v11 + 16);
  v21 = v10;
  v20(v15, v43, v10);
  v22 = v41;
  v20(v41, v44, v21);
  v23 = *(v19 + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v23 + v26 + 16) & ~v23;
  v28 = swift_allocObject();
  v29 = v48;
  *(v28 + 16) = v46;
  *(v28 + 24) = v29;
  v30 = *(v19 + 32);
  v30(v28 + v24, v38, v21);
  v31 = v45;
  *(v28 + v25) = v45;
  v32 = (v28 + v26);
  v33 = v39;
  *v32 = v40;
  v32[1] = v33;
  v30(v28 + v27, v22, v21);
  aBlock[4] = sub_24ED6B474;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_17_1;
  v34 = _Block_copy(aBlock);

  v35 = v31;

  v36 = v42;
  [v42 resultWithCompletion_];
  _Block_release(v34);
}

double sub_24ED67984(void *a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39 = a8;
  v40 = a9;
  v41 = a3;
  v42 = a7;
  v35 = a4;
  v38 = a1;
  v12 = sub_24F9281B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v36 = &v35 - v17;
  v18 = *(v13 + 16);
  v18(v16);
  (v18)(&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a10, v12);
  v19 = *(v13 + 80);
  v20 = (v19 + 32) & ~v19;
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v19 + v23 + 16) & ~v19;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a4;
  v26 = *(v13 + 32);
  v26(v25 + v20, v36, v12);
  *(v25 + v21) = v42;
  v28 = v38;
  v27 = v39;
  *(v25 + v22) = v38;
  v29 = (v25 + v23);
  v30 = v40;
  *v29 = v27;
  v29[1] = v30;
  v26(v25 + v24, v37, v12);
  v31 = a2;
  v32 = v28;

  v33 = v42;
  sub_24F9298E8();

  return result;
}

void sub_24ED67BA8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v84 = a4;
  v81 = a3;
  *&v86 = a2;
  v80 = sub_24F922068();
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v78 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v78 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v78 - v20;
  v83 = sub_24F922028();
  v85 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v29 = &v78 - v28;
  if (!a1)
  {
    v81 = a8;
    v78 = v12;
    v79 = v25;
    v39 = v27;
    if (a5)
    {
      v40 = v26;
      v41 = a5;
      v42 = sub_24F92B098();
      v43 = [v41 valueForKey_];

      if (v43)
      {
        sub_24F92C648();
        swift_unknownObjectRelease();
      }

      else
      {
        v88 = 0u;
        v89 = 0u;
      }

      v90[0] = v88;
      v90[1] = v89;
      if (*(&v89 + 1))
      {
        sub_24E69A5C4(0, &qword_27F22EE30, 0x277CEE6B8);
        if (swift_dynamicCast())
        {
          v49 = v87;
          *&v90[0] = sub_24ED6890C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
          v50 = sub_24F92CF68();
          v51 = [objc_opt_self() valueWithObject:v50 inContext:v84];
          swift_unknownObjectRelease();
          if (v51)
          {
            v52 = v83;
            if (qword_27F211060 != -1)
            {
              swift_once();
            }

            v53 = sub_24F922058();
            __swift_project_value_buffer(v53, qword_27F23DAC0);
            v54 = sub_24F922038();
            v55 = v40;
            sub_24F922078();
            v56 = sub_24F92C048();
            if (sub_24F92C478())
            {
              v84 = v49;

              v57 = v18;
              sub_24F9220A8();

              v58 = v82;
              v59 = v80;
              if ((*(v82 + 88))(v57, v80) == *MEMORY[0x277D85B00])
              {
                v60 = "[Error] Interval already ended";
              }

              else
              {
                (*(v58 + 8))(v57, v59);
                v60 = "success=true";
              }

              v75 = swift_slowAlloc();
              *v75 = 0;
              v55 = v40;
              v76 = sub_24F922008();
              _os_signpost_emit_with_name_impl(&dword_24E5DD000, v54, v56, v76, "TreatmentArea", v60, v75, 2u);
              MEMORY[0x2530542D0](v75, -1, -1);
              v49 = v84;
            }

            (*(v85 + 8))(v55, v52);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
            v77 = swift_allocObject();
            *(v77 + 16) = xmmword_24F93DE60;
            *(v77 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
            *(v77 + 32) = v51;
            v73 = v51;
            v74 = sub_24F9281A8();

LABEL_33:

            return;
          }

          goto LABEL_38;
        }
      }

      else
      {

        sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
      }
    }

    v61 = [objc_opt_self() valueWithNullInContext_];
    if (v61)
    {
      v62 = v61;
      v63 = v85;
      v64 = v82;
      if (qword_27F211060 != -1)
      {
        swift_once();
      }

      v65 = sub_24F922058();
      __swift_project_value_buffer(v65, qword_27F23DAC0);
      v66 = sub_24F922038();
      sub_24F922078();
      v67 = sub_24F92C048();
      if (sub_24F92C478())
      {

        sub_24F9220A8();

        v68 = v80;
        if ((*(v64 + 88))(v15, v80) == *MEMORY[0x277D85B00])
        {
          v69 = "[Error] Interval already ended";
        }

        else
        {
          (*(v64 + 8))(v15, v68);
          v69 = "success=false";
        }

        v70 = swift_slowAlloc();
        *v70 = 0;
        v71 = sub_24F922008();
        _os_signpost_emit_with_name_impl(&dword_24E5DD000, v66, v67, v71, "TreatmentArea", v69, v70, 2u);
        MEMORY[0x2530542D0](v70, -1, -1);
      }

      (*(v63 + 8))(v39, v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_24F93DE60;
      *(v72 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
      *(v72 + 32) = v62;
      v73 = v62;
      v74 = sub_24F9281A8();
      goto LABEL_33;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v30 = a1;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v31 = sub_24F922058();
  __swift_project_value_buffer(v31, qword_27F23DAC0);
  v32 = sub_24F922038();
  sub_24F922078();
  v33 = sub_24F92C048();
  v34 = sub_24F92C478();
  v35 = v83;
  if (v34)
  {

    sub_24F9220A8();

    v36 = v82;
    v37 = v80;
    if ((*(v82 + 88))(v21, v80) == *MEMORY[0x277D85B00])
    {
      v38 = "[Error] Interval already ended";
    }

    else
    {
      (*(v36 + 8))(v21, v37);
      v38 = "success=false";
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v32, v33, v45, "TreatmentArea", v38, v44, 2u);
    MEMORY[0x2530542D0](v44, -1, -1);
  }

  (*(v85 + 8))(v29, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v46 = swift_allocObject();
  v86 = xmmword_24F93DE60;
  *(v46 + 16) = xmmword_24F93DE60;
  v47 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v48 = MEMORY[0x253051C90](a1, v84);
  *(v46 + 56) = v47;
  *(v46 + 32) = v48;
}

unint64_t sub_24ED6890C()
{
  v1 = v0;
  v2 = sub_24E608448(MEMORY[0x277D84F90]);
  v3 = [v1 identifier];
  v4 = sub_24F92B0D8();
  v6 = v5;

  v16 = MEMORY[0x277D837D0];
  *&v15 = v4;
  *(&v15 + 1) = v6;
  sub_24E612B0C(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v14, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v8 = [v1 startDate];
  v9 = sub_24F91F648();
  v16 = v9;
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F91F608();

  sub_24E612B0C(&v15, v14);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v14, 0x7461447472617473, 0xE900000000000065, v10);
  v11 = [v1 endDate];
  v16 = v9;
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F91F608();

  sub_24E612B0C(&v15, v14);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v14, 0x65746144646E65, 0xE700000000000000, v12);
  return v2;
}

const char *sub_24ED68B44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a2;
  v37 = a1;
  v5 = sub_24F922068();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922028();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92AC68();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v15 = MEMORY[0x25304F260]();
  if (!v15)
  {
    v39 = v7;
    v21 = v9;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v22 = sub_24F922058();
    __swift_project_value_buffer(v22, qword_27F23DAC0);
    v23 = sub_24F922038();
    v24 = v11;
    sub_24F922078();
    v25 = sub_24F92C048();
    v26 = v8;
    v27 = v21;
    if (sub_24F92C478())
    {

      v28 = v39;
      sub_24F9220A8();

      v29 = v34;
      if ((*(v34 + 88))(v28, v5) == *MEMORY[0x277D85B00])
      {
        v30 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v28, v5);
        v30 = "success=false";
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v23, v25, v32, "TreatmentAreas", v30, v31, 2u);
      MEMORY[0x2530542D0](v31, -1, -1);
    }

    (*(v27 + 8))(v24, v26);
    v17 = "TreatmentAreasPromise";
    sub_24F92A868();
    sub_24ED6B280(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_13;
  }

  v16 = v15;
  v17 = swift_allocObject();
  v18 = v37;
  *(v17 + 2) = v38;
  *(v17 + 3) = v16;
  *(v17 + 4) = a3;
  v19 = v18;

  v20 = v39;
  sub_24F92AC48();
  if (v20)
  {

LABEL_13:
    sub_24ED69000(v40, "TreatmentAreasPromise");
    return v17;
  }

  v17 = sub_24F92AC58();

  (*(v35 + 8))(v14, v36);
  sub_24ED69000(v40, "TreatmentAreasPromise");
  return v17;
}

uint64_t sub_24ED69000(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_24F922068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v10 = sub_24F922058();
  __swift_project_value_buffer(v10, qword_27F23DAC0);
  v11 = sub_24F922038();
  sub_24F922078();
  v12 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_24ED69290(void *a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v31 = a3;
  v32 = a2;
  v35 = a1;
  v7 = sub_24F9281B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v28 = &v28 - v11;
  v13 = [objc_opt_self() defaultTreatmentStore];

  sub_24F45D828(v14);

  v15 = sub_24F92BA98();

  v30 = [v13 treatmentsForAreas_];

  v16 = *(v8 + 16);
  v16(v12, v31, v7);
  v16(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v7);
  v17 = *(v8 + 80);
  v18 = (v17 + 32) & ~v17;
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v17 + v19 + 8) & ~v17;
  v21 = swift_allocObject();
  v22 = v34;
  *(v21 + 16) = v33;
  *(v21 + 24) = v22;
  v23 = *(v8 + 32);
  v23(v21 + v18, v28, v7);
  v24 = v35;
  *(v21 + v19) = v35;
  v23(v21 + v20, v29, v7);
  aBlock[4] = sub_24ED6AFDC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_73;
  v25 = _Block_copy(aBlock);

  v26 = v24;

  v27 = v30;
  [v30 resultWithCompletion_];
  _Block_release(v25);
}

double sub_24ED69574(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, __n128 a8)
{
  v36 = a6;
  v37 = a3;
  v34 = a4;
  v35 = a1;
  v32 = a2;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v18 = *(v12 + 16);
  v18(&v32 - v16, a5, v11, v15);
  (v18)(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v11);
  v19 = *(v12 + 80);
  v20 = (v19 + 32) & ~v19;
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v19 + v22 + 8) & ~v19;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = v34;
  v25 = *(v12 + 32);
  v25(v24 + v20, v17, v11);
  v27 = v35;
  v26 = v36;
  *(v24 + v21) = v36;
  *(v24 + v22) = v27;
  v25(v24 + v23, v33, v11);
  v28 = v32;
  v29 = v27;

  v30 = v26;
  sub_24F9298E8();

  return result;
}

void sub_24ED69774(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v92 = a4;
  v93 = a3;
  *&v91 = a2;
  v89 = sub_24F922068();
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v81 - v15;
  v17 = sub_24F922028();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v25 = &v81 - v24;
  if (!a1)
  {
    v85 = v13;
    v87 = a6;
    if (a5)
    {
      v86 = v23;
      v83 = v18;
      v84 = v17;
      v33 = a5;
      v93 = sub_24E6091DC(MEMORY[0x277D84F90]);
      v82 = v33;
      v103 = sub_24F92BD48();
      v34 = sub_24F92BD58();
      v35 = sub_24ED6B280(&qword_27F22EE18, MEMORY[0x277CC9CC0], MEMORY[0x277CC9CC8]);
      sub_24F92C4D8();
      if (*(&v100 + 1))
      {
        v36 = MEMORY[0x277D837D0];
        v37 = &unk_27F22EE28;
        v88 = v35;
        do
        {
          v97[0] = v99;
          v97[1] = v100;
          v98[0] = v101;
          v98[1] = v102;
          sub_24E643A9C(v97, v96);
          if (swift_dynamicCast())
          {
            v44 = v37;
            v45 = v94;
            v46 = v95;
            sub_24E643A9C(v98, v96);
            sub_24E69A5C4(0, &qword_27F22EE30, 0x277CEE6B8);
            if (swift_dynamicCast())
            {
              v38 = v93;
              v39 = v34;
              v40 = v36;
              v41 = v94;
              v42 = sub_24ED6890C();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v96[0] = v38;
              sub_24E820B80(v42, v45, v46, isUniquelyReferenced_nonNull_native);

              v36 = v40;
              v34 = v39;

              v93 = v96[0];
            }

            else
            {
            }

            v37 = v44;
          }

          sub_24E601704(v97, v37, &qword_24F99B600);
          sub_24F92C4D8();
        }

        while (*(&v100 + 1));
      }

      *&v99 = v93;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EE20, &qword_24F99B5F8);
      v47 = sub_24F92CF68();
      v48 = [objc_opt_self() valueWithObject:v47 inContext:v92];
      swift_unknownObjectRelease();
      v49 = v84;
      v50 = v83;
      if (v48)
      {
        v51 = v90;
        if (qword_27F211060 != -1)
        {
          swift_once();
        }

        v52 = sub_24F922058();
        __swift_project_value_buffer(v52, qword_27F23DAC0);
        v53 = sub_24F922038();
        v54 = v86;
        sub_24F922078();
        v55 = sub_24F92C048();
        if (sub_24F92C478())
        {

          v56 = v85;
          sub_24F9220A8();

          v57 = v89;
          if ((*(v51 + 88))(v56, v89) == *MEMORY[0x277D85B00])
          {
            v58 = "[Error] Interval already ended";
          }

          else
          {
            (*(v51 + 8))(v56, v57);
            v58 = "success=true";
          }

          v72 = swift_slowAlloc();
          *v72 = 0;
          v54 = v86;
          v73 = sub_24F922008();
          _os_signpost_emit_with_name_impl(&dword_24E5DD000, v53, v55, v73, "TreatmentAreas", v58, v72, 2u);
          MEMORY[0x2530542D0](v72, -1, -1);
        }

        (*(v50 + 8))(v54, v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_24F93DE60;
        *(v74 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
        *(v74 + 32) = v48;
        v75 = v48;
        v76 = sub_24F9281A8();

LABEL_37:

        return;
      }

      __break(1u);
    }

    else
    {
      v64 = [objc_opt_self() valueWithNewObjectInContext_];
      if (v64)
      {
        v65 = v64;
        if (qword_27F211060 != -1)
        {
          swift_once();
        }

        v66 = sub_24F922058();
        __swift_project_value_buffer(v66, qword_27F23DAC0);
        v67 = sub_24F922038();
        sub_24F922078();
        v68 = sub_24F92C048();
        if (sub_24F92C478())
        {

          sub_24F9220A8();

          v69 = v90;
          v70 = v89;
          if ((*(v90 + 88))(v10, v89) == *MEMORY[0x277D85B00])
          {
            v71 = "[Error] Interval already ended";
          }

          else
          {
            (*(v69 + 8))(v10, v70);
            v71 = "success=false";
          }

          v77 = swift_slowAlloc();
          *v77 = 0;
          v78 = sub_24F922008();
          _os_signpost_emit_with_name_impl(&dword_24E5DD000, v67, v68, v78, "TreatmentAreas", v71, v77, 2u);
          MEMORY[0x2530542D0](v77, -1, -1);
        }

        (*(v18 + 8))(v20, v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_24F93DE60;
        *(v79 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
        *(v79 + 32) = v65;
        v80 = v65;
        v76 = sub_24F9281A8();

        goto LABEL_37;
      }
    }

    __break(1u);
    return;
  }

  v26 = a1;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v27 = sub_24F922058();
  __swift_project_value_buffer(v27, qword_27F23DAC0);
  v28 = sub_24F922038();
  sub_24F922078();
  v29 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    v30 = v90;
    v31 = v89;
    if ((*(v90 + 88))(v16, v89) == *MEMORY[0x277D85B00])
    {
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v30 + 8))(v16, v31);
      v32 = "success=false";
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v28, v29, v60, "TreatmentAreas", v32, v59, 2u);
    MEMORY[0x2530542D0](v59, -1, -1);
  }

  (*(v18 + 8))(v25, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v61 = swift_allocObject();
  v91 = xmmword_24F93DE60;
  *(v61 + 16) = xmmword_24F93DE60;
  v62 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v63 = MEMORY[0x253051C90](a1, v92);
  *(v61 + 56) = v62;
  *(v61 + 32) = v63;
}

uint64_t sub_24ED6A5CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v13 = sub_24F922058();
  __swift_project_value_buffer(v13, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();

  v14 = sub_24F922038();
  v15 = sub_24F92C058();

  v16 = sub_24F92C478();
  v47 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v46 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v49 = v5;
    v50 = v19;
    v20 = a2;
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_24E7620D4(a1, v20, &v50);
    v22 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v14, v15, v22, "TreatmentAreaPromise", "area=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v23 = v21;
    a2 = v20;
    v5 = v49;
    MEMORY[0x2530542D0](v23, -1, -1);
    v24 = v18;
    v7 = v46;
    MEMORY[0x2530542D0](v24, -1, -1);
  }

  v45 = *(v5 + 16);
  v45(v48, v12, v4);
  sub_24F922098();
  swift_allocObject();
  v46 = sub_24F922088();
  v25 = *(v5 + 8);
  v49 = v5 + 8;
  v25(v12, v4);
  sub_24F922038();
  sub_24F921FF8();

  v26 = sub_24F922038();
  v27 = sub_24F92C058();

  if (sub_24F92C478())
  {
    v28 = v7;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44 = v4;
    v31 = a2;
    v32 = v30;
    v50 = v30;
    *v29 = 136315138;
    v33 = v47;
    *(v29 + 4) = sub_24E7620D4(v47, v31, &v50);
    v34 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v26, v27, v34, "TreatmentArea", "area=%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v35 = v32;
    a2 = v31;
    v4 = v44;
    MEMORY[0x2530542D0](v35, -1, -1);
    v36 = v29;
    v7 = v28;
    MEMORY[0x2530542D0](v36, -1, -1);
  }

  else
  {

    v33 = v47;
  }

  v45(v48, v7, v4);
  swift_allocObject();
  v37 = sub_24F922088();
  v38 = v7;
  v39 = v37;
  v25(v38, v4);
  sub_24E69A5C4(0, &qword_27F21C8C8, 0x277CD4640);
  v40 = sub_24F92C448();
  MEMORY[0x28223BE20](v40);
  *(&v43 - 4) = v46;
  *(&v43 - 3) = v39;
  *(&v43 - 2) = v33;
  *(&v43 - 1) = a2;
  v41 = sub_24F92C458();

  return v41;
}

uint64_t sub_24ED6AA80(uint64_t a1)
{
  v34 = a1;
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v11 = sub_24F922058();
  __swift_project_value_buffer(v11, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v12 = sub_24F922038();
  v13 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v14 = v1;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v12, v13, v16, "TreatmentAreasPromise", "", v15, 2u);
    v17 = v15;
    v1 = v14;
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  v18 = *(v2 + 16);
  v18(v7, v10, v1);
  sub_24F922098();
  swift_allocObject();
  v32 = sub_24F922088();
  v19 = v2 + 8;
  v20 = *(v2 + 8);
  v33 = v19;
  v20(v10, v1);
  sub_24F922038();
  sub_24F921FF8();
  v21 = sub_24F922038();
  v22 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v23 = swift_slowAlloc();
    v31 = v1;
    v24 = v23;
    *v23 = 0;
    v25 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v21, v22, v25, "TreatmentAreas", "", v24, 2u);
    v26 = v24;
    v1 = v31;
    MEMORY[0x2530542D0](v26, -1, -1);
  }

  v18(v7, v4, v1);
  swift_allocObject();
  v27 = sub_24F922088();
  v20(v4, v1);
  sub_24E69A5C4(0, &qword_27F21C8C8, 0x277CD4640);
  v28 = sub_24F92C448();
  MEMORY[0x28223BE20](v28);
  *(&v31 - 4) = v32;
  *(&v31 - 3) = v27;
  *(&v31 - 2) = v34;
  v29 = sub_24F92C458();

  return v29;
}

uint64_t sub_24ED6AE64()
{

  return swift_deallocObject();
}

uint64_t sub_24ED6AECC(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v3 + 8);
  v7(v1 + v5, v2);

  v7(v1 + ((v4 + v6 + 8) & ~v4), v2);

  return swift_deallocObject();
}

double sub_24ED6AFDC(void *a1, void *a2, __n128 a3)
{
  v6 = *(sub_24F9281B8() - 8);
  v8 = *(v6 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = (*(v6 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + v10);

  return sub_24ED69574(a1, a2, v11, v12, v3 + v9, v13, v3 + ((v8 + v10 + 8) & ~v8), v7);
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ED6B0B4(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v3 + 8);
  v8(v1 + v5, v2);

  v8(v1 + ((v4 + v7 + 8) & ~v4), v2);

  return swift_deallocObject();
}

void sub_24ED6B1D4(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);

  sub_24ED69774(v7, v8, v1 + v4, v9, v10, v1 + ((v3 + v6 + 8) & ~v3));
}

uint64_t sub_24ED6B280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ED6B2E8()
{

  return swift_deallocObject();
}

uint64_t sub_24ED6B350(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v3 + 8);
  v7(v1 + v5, v2);

  v7(v1 + ((v4 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v4), v2);

  return swift_deallocObject();
}

double sub_24ED6B474(void *a1, void *a2, __n128 a3)
{
  v6 = *(sub_24F9281B8() - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24ED67984(a1, a2, *(v3 + 16), *(v3 + 24), v10, v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v3 + ((v7 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7));
}

uint64_t sub_24ED6B544(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v3 + 8);
  v8(v1 + v5, v2);

  v8(v1 + ((v4 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v4), v2);

  return swift_deallocObject();
}

void sub_24ED6B688(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);

  sub_24ED67BA8(v10, v11, v1 + v4, v8, v9, v12, v13, v1 + ((v3 + v7 + 16) & ~v3));
}

uint64_t ArticlePagePresenter.init(objectGraph:articlePage:pageUrl:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_touchMode) = 2;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shouldTerminateOnClose) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_hasData) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_initialContentTypes) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_footerLockup) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_arcadeFooterLockup) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shareAction) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_isPreparingNextPage) = 0;
  sub_24E99091C(a3, v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];
  v7 = sub_24EC8415C(a1, 0, 0, 0);

  if (a2)
  {
    *(v7 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_initialContentTypes) = sub_24EB43744();

    sub_24ED6CEF4(a2, 1);

    sub_24E601704(a3, &qword_27F228530, &unk_24F93C6E0);
  }

  else
  {
    sub_24E601704(a3, &qword_27F228530, &unk_24F93C6E0);
  }

  return v7;
}

uint64_t sub_24ED6B978@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_touchMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24ED6B9CC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shouldTerminateOnClose;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED6BA60(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24ED6BACC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24ED6BBCC(uint64_t a1)
{
  sub_24F01DD24();
  v2 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_initialContentTypes;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_initialContentTypes))
  {
    v3 = v1 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 8);
      v7 = *(v6 + 32);

      v7(v8, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    swift_beginAccess();

    sub_24F01B85C(v9, 0);

    *(v1 + v2) = 0;
  }

  v10 = v1 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    v12 = swift_getObjectType();
    (*(v11 + 40))(v12, v11);
    swift_unknownObjectRelease();
  }

  return sub_24ED6D4E8();
}

uint64_t sub_24ED6BD40(char a1)
{
  v3 = type metadata accessor for ArticlePageIntent(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A088();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((*(v1 + 32) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) & 1) == 0)
  {
    v27 = v5;
    sub_24E99091C(v1 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      return sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      if (*(v1 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_hasData) != 1 || (a1 & 1) != 0)
      {
        *(v1 + 32) = 1;
        v17 = v1 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = *(v17 + 8);
          ObjectType = swift_getObjectType();
          (*(*(*(v18 + 8) + 24) + 8))(ObjectType);
          swift_unknownObjectRelease();
        }

        sub_24F01DFD8(0);
        v20 = v1;
        swift_beginAccess();
        v21 = v27;
        if (*(v1 + 24))
        {
          *v8 = 1;
          v22 = v28;
          (*(v28 + 104))(v8, *MEMORY[0x277D222A0], v6);

          sub_24F92A0D8();
          v20 = v1;

          (*(v22 + 8))(v8, v6);
          v21 = v27;
        }

        v29[0] = 0xD000000000000011;
        v29[1] = 0x800000024FA53E10;
        sub_24F92C7F8();
        (*(v13 + 16))(v21 + *(v3 + 20), v15, v12);
        type metadata accessor for JSIntentDispatcher();
        sub_24F928FD8();
        sub_24F92A758();
        sub_24F929C28();

        sub_24F928FE8();

        sub_24F929BF8();

        v23 = sub_24F929C08();

        sub_24EB472E8(v21, v23, "GameStoreKit/ArticlePagePresenter.swift", 39, 2);
        v30 = sub_24F929638();
        v31 = MEMORY[0x277D21FB0];
        __swift_allocate_boxed_opaque_existential_1(v29);
        sub_24F929628();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EE70, &unk_24F99B608);
        sub_24F92A938();

        __swift_destroy_boxed_opaque_existential_1(v29);
        v24 = swift_allocObject();
        *(v24 + 16) = sub_24ED6E490;
        *(v24 + 24) = v20;
        v25 = sub_24E74EC40();
        swift_retain_n();
        v26 = sub_24F92BEF8();
        v30 = v25;
        v31 = MEMORY[0x277D225C0];
        v29[0] = v26;
        sub_24F92A958();

        sub_24ED6EB80(v21, type metadata accessor for ArticlePageIntent);
        (*(v13 + 8))(v15, v12);
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }

      else
      {
        return (*(v13 + 8))(v15, v12);
      }
    }
  }

  return result;
}

uint64_t sub_24ED6C374@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  result = sub_24EB43744();
  a2[1] = result;
  return result;
}

void sub_24ED6C3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92A078();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F648();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ED6CEF4(a1, 0);
  v10 = a3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v11 + 8) + 32))(a2, ObjectType);
    swift_unknownObjectRelease();
  }

  sub_24ED6D4E8();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v10 + 8);
    v14 = swift_getObjectType();
    (*(*(*(v13 + 8) + 16) + 8))(v14);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v10 + 8);
    v16 = swift_getObjectType();
    (*(v15 + 40))(v16, v15);
    swift_unknownObjectRelease();
  }

  v17 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = MEMORY[0x277D84F90];
  v54[0] = MEMORY[0x277D84F90];
  v20 = *(v18 + 16);
  v21 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;

  swift_beginAccess();
  if (v20)
  {
    v22 = 0;
    v23 = v18 + 32;
    v44 = v20 - 1;
    v45 = v18 + 32;
    v46 = v10;
    v47 = a3;
    while (1)
    {
      v24 = v23 + 40 * v22;
      v25 = v22;
      while (1)
      {
        if (v25 >= *(v18 + 16))
        {
          __break(1u);
          return;
        }

        sub_24E65864C(v24, v55);
        if (*(*(a1 + v21) + 16))
        {
          break;
        }

LABEL_10:
        ++v25;
        sub_24E6585F8(v55);
        v24 += 40;
        if (v20 == v25)
        {
          v10 = v46;
          a3 = v47;
          goto LABEL_21;
        }
      }

      sub_24E76D934(v55);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v27 = sub_24E6585F8(v55);
      MEMORY[0x253050F00](v27);
      if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v22 = v25 + 1;
      sub_24F92B638();
      v19 = v54[0];
      v23 = v45;
      v28 = v44 == v25;
      v10 = v46;
      a3 = v47;
      if (v28)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_10;
  }

LABEL_21:

  sub_24F01B85C(v19, 0);

  swift_beginAccess();
  v29 = *(a3 + 16);
  if (v29)
  {

    v30 = v48;
    sub_24F91F638();
    sub_24F91F5E8();
    v32 = v31;
    (*(v49 + 8))(v30, v50);
    v33 = v29 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v33 = v32;
    *(v33 + 8) = 0;
    v34 = *(v29 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v34 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  swift_beginAccess();
  if (*(a3 + 24))
  {
    v35 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v36 = sub_24F928818();
    v37 = v51;
    (*(*(v36 - 8) + 16))(v51, a1 + v35, v36);
    v39 = v52;
    v38 = v53;
    (*(v52 + 104))(v37, *MEMORY[0x277D22290], v53);

    sub_24F92A0C8();

    (*(v39 + 8))(v37, v38);
  }

  swift_beginAccess();
  v40 = *(a3 + 32);
  *(a3 + 32) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(v10 + 8);
    v42 = swift_getObjectType();
    (*(*(*(v41 + 8) + 24) + 16))(v42);
    swift_unknownObjectRelease();
  }

  sub_24F01DFD8(v40);
}

void sub_24ED6C9A8(void *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v10 = *(a2 + 32);
  *(a2 + 32) = 0;
  v11 = a2 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v12 + 8) + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_24F01DFD8(v10);
  sub_24E99091C(a2 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, v9 + *(v7 + 20));
  *v9 = a1;
  swift_beginAccess();
  v14 = *(a2 + 16);
  if (v14)
  {
    v32 = v4;
    sub_24ED6EBE0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v31 = swift_allocError();
    sub_24EBDEC38(v9, v15);
    v16 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v17 = *(v14 + v16);
    v18 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_24E617130(0, v17[2] + 1, 1, v17);
      *(v14 + v16) = v17;
    }

    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      v17 = sub_24E617130((v20 > 1), v21 + 1, 1, v17);
    }

    v17[2] = v21 + 1;
    v17[v21 + 4] = v31;
    *(v14 + v16) = v17;
    swift_endAccess();

    v4 = v32;
  }

  else
  {
    v22 = a1;
  }

  swift_beginAccess();
  if (*(a2 + 24))
  {
    sub_24ED6EBE0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v23 = swift_allocError();
    sub_24EBDEC38(v9, v24);
    *v6 = v23;
    v25 = v33;
    (*(v33 + 104))(v6, *MEMORY[0x277D22280], v4);

    sub_24F92A0C8();

    (*(v25 + 8))(v6, v4);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v11 + 8);
    v27 = swift_getObjectType();
    sub_24ED6EBE0(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v28 = swift_allocError();
    sub_24EBDEC38(v9, v29);
    (*(*(*(v26 + 8) + 24) + 24))(v28, v27);
    swift_unknownObjectRelease();
    sub_24ED6EB80(v9, type metadata accessor for PresenterError);
  }

  else
  {
    sub_24ED6EB80(v9, type metadata accessor for PresenterError);
  }
}

double sub_24ED6CE44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

uint64_t sub_24ED6CEF4(uint64_t a1, int a2)
{
  v3 = v2;
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v39 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete);
  if (v39 == 1)
  {
    sub_24E99091C(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, &v35 - v8);
    v10 = sub_24F91F4A8();
    v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) == 1;
    sub_24E601704(v9, &qword_27F228530, &unk_24F93C6E0);
  }

  else
  {
    v11 = 1;
  }

  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_hasData) = v11;
  v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card);
  if (v12)
  {
    v13 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card;
    swift_beginAccess();
    *(v3 + v13) = v12;
  }

  v14 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = MEMORY[0x277D84F90];
  v44[0] = MEMORY[0x277D84F90];
  v17 = *(v15 + 16);
  v18 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;

  result = swift_beginAccess();
  if (v17)
  {
    v20 = 0;
    v21 = v15 + 32;
    v35 = v17 - 1;
    v36 = v15 + 32;
    while (1)
    {
      v22 = v21 + 40 * v20;
      v23 = v20;
      while (1)
      {
        if (v23 >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        sub_24E65864C(v22, v40);
        if (*(*(a1 + v18) + 16))
        {
          break;
        }

LABEL_9:
        ++v23;
        result = sub_24E6585F8(v40);
        v22 += 40;
        if (v17 == v23)
        {
          goto LABEL_17;
        }
      }

      sub_24E76D934(v40);
      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = sub_24E6585F8(v40);
      MEMORY[0x253050F00](v25);
      if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v20 = v23 + 1;
      result = sub_24F92B638();
      v16 = v44[0];
      v21 = v36;
      if (v35 == v23)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_9;
  }

LABEL_17:

  v26 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  *(v3 + v26) = v16;

  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_footerLockup) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup);

  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_arcadeFooterLockup) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup);

  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shareAction) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction);

  v27 = type metadata accessor for ArticlePage(0);
  v41 = v27;
  v42 = &protocol witness table for BasePage;
  v28 = sub_24ED6EBE0(&qword_27F216890, type metadata accessor for ArticlePage, &protocol conformance descriptor for BasePage);
  v43 = v28;
  v40[0] = a1;
  swift_beginAccess();

  sub_24EA095A4(v40, v3 + 40);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(v40, &qword_27F224F98, &unk_24F974A70);
  LOBYTE(v26) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode);
  v29 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_touchMode;
  swift_beginAccess();
  *(v3 + v29) = v26;
  LOBYTE(v26) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose);
  v30 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shouldTerminateOnClose;
  result = swift_beginAccess();
  *(v3 + v30) = v26;
  if ((v38 & 1) == 0)
  {
    if (v39)
    {
      return result;
    }

    goto LABEL_23;
  }

  v31 = v37;
  sub_24E99091C(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, v37);
  v32 = sub_24F91F4A8();
  v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
  result = sub_24E601704(v31, &qword_27F228530, &unk_24F93C6E0);
  v34 = v39;
  if (v33 == 1)
  {
    v34 = 0;
  }

  if ((v34 & 1) == 0)
  {
LABEL_23:
    result = swift_beginAccess();
    if (*(v3 + 16))
    {
      v42 = &protocol witness table for BasePage;
      v43 = v28;
      v41 = v27;
      v40[0] = a1;

      PendingPageRender.use(pageRenderEventFrom:)(v40);

      return sub_24E601704(v40, &qword_27F224F98, &unk_24F974A70);
    }
  }

  return result;
}

uint64_t sub_24ED6D4E8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card;
  result = swift_beginAccess();
  if (*(v0 + v1))
  {
    v3 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 16);

      v6(v7, ObjectType, v4);

      result = swift_unknownObjectRelease();
    }
  }

  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_footerLockup))
  {
    v8 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v9 = *(v8 + 8);
    v10 = swift_getObjectType();
    v11 = *(v9 + 24);

    v11(v12, v10, v9);
    goto LABEL_10;
  }

  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_arcadeFooterLockup))
  {
    v13 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = *(v13 + 8);
      v15 = swift_getObjectType();
      v16 = *(v14 + 32);

      v16(v17, v15, v14);
LABEL_10:

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24ED6D6A8()
{
  if (!*(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_footerLockup) && !*(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_arcadeFooterLockup))
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_34:
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {

    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 1;
  while (2)
  {
    v9 = v6;
    v6 = v5;
    while (2)
    {
      v5 = v6;
      v6 = v4;
      while ((v2 & 0xC000000000000001) == 0)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v4 = v6 + 1;
        v10 = *(*(v2 + 32 + 8 * v6) + 16);
        switch(v10)
        {
          case '\'':
            goto LABEL_23;
          case '4':
            goto LABEL_25;
          case 'C':
            goto LABEL_23;
        }

LABEL_15:
        v6 = v4;
        if (v4 == v3)
        {
          v6 = v9;
          goto LABEL_26;
        }
      }

      v13 = v9;
      v14 = v8;
      result = MEMORY[0x253052270](v6, v2);
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return result;
      }

      v12 = *(result + 16);
      swift_unknownObjectRelease();
      if (v12 == 39)
      {
        v8 = v14;
        v9 = v13;
LABEL_23:
        v7 = 0;
        if (v4 != v3)
        {
          continue;
        }

        return v6;
      }

      break;
    }

    v8 = v14;
    v9 = v13;
    if (v12 == 67)
    {
      goto LABEL_23;
    }

    if (v12 != 52)
    {
      goto LABEL_15;
    }

LABEL_25:
    v8 = 0;
    if (v4 != v3)
    {
      continue;
    }

    break;
  }

LABEL_26:

  if (v7)
  {
    return v6;
  }

  return v5;
}

uint64_t sub_24ED6D8C0()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || !*(v2 + 72) || (v16[0] = *(v2 + 72), type metadata accessor for TodayCardOverlay(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38, &unk_24F992830), (swift_dynamicCast() & 1) == 0))
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    return sub_24E601704(&v13, &qword_27F22CE30, &qword_24F99AA80);
  }

  if (!*(&v14 + 1))
  {
    return sub_24E601704(&v13, &qword_27F22CE30, &qword_24F99AA80);
  }

  sub_24E612E28(&v13, v16);
  v3 = v17;
  v4 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v5 = (*(v4 + 8))(v3, v4);
  if (v5)
  {
    v6 = v5;
    v7 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = v17;
      v11 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v11 + 16))(&v13, v10, v11);
      (*(*(*(v8 + 8) + 8) + 8))(v6, &v13, ObjectType);

      swift_unknownObjectRelease();
      sub_24E601704(&v13, &qword_27F2129B0, &unk_24F945320);
    }

    else
    {
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_24ED6DAC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_footerLockup);
  if (v1)
  {
    v2 = *(v1 + 264);
    if (v2)
    {
      v3 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        v8[3] = type metadata accessor for Lockup(0);
        v8[0] = v1;
        v6 = *(*(v4 + 8) + 8);
        v7 = *(v6 + 8);

        v7(v2, v8, ObjectType, v6);

        swift_unknownObjectRelease();
        sub_24E601704(v8, &qword_27F2129B0, &unk_24F945320);
      }
    }
  }
}

uint64_t sub_24ED6DBC4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_24ED6DC2C(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x253052270](a1, v5);

    return v6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(v5 + 8 * a1 + 32);

    return v6;
  }

  __break(1u);
  return result;
}

void sub_24ED6DCD8(unint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v6 = *(v2 + v5);

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v2 + v5) = v6;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_24ECDE964(v6);
    *(v2 + v5) = v6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;
    *(v2 + v5) = v6;
    swift_endAccess();

    return;
  }

  __break(1u);
}

uint64_t sub_24ED6DDA0(unint64_t a1, uint64_t a2)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v8 = *(v2 + v7);
  v9 = v8 >> 62;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
    {
      goto LABEL_3;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (sub_24F92C738() < a1)
  {
    goto LABEL_29;
  }

LABEL_3:
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v9)
  {
    result = sub_24F92C738();
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a2)
  {
    goto LABEL_31;
  }

  if (a2 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v8 & 0xC000000000000001) == 0)
  {
LABEL_12:
    swift_bridgeObjectRetain_n();
    goto LABEL_16;
  }

  if (a2 < a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1 == a2)
  {
    goto LABEL_12;
  }

  if (a1 < a2)
  {
    type metadata accessor for Shelf(0);
    swift_bridgeObjectRetain_n();
    v11 = a1;
    do
    {
      v12 = v11 + 1;
      sub_24F92C8C8();
      v11 = v12;
    }

    while (a2 != v12);
LABEL_16:

    if (v9)
    {
      v3 = sub_24F92CB18();
      v4 = v13;
      a1 = v14;
      v9 = v15;

      if ((v9 & 1) == 0)
      {
LABEL_19:
        sub_24E6B8B64(v3, v4, a1, v9);
        v17 = v16;
        goto LABEL_26;
      }
    }

    else
    {
      v3 = v8 & 0xFFFFFFFFFFFFFF8;
      v4 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9 = (2 * a2) | 1;
    }

    sub_24F92CEF8();
    swift_unknownObjectRetain_n();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      swift_unknownObjectRelease();
      v18 = MEMORY[0x277D84F90];
    }

    v19 = *(v18 + 16);

    if (!__OFSUB__(v9 >> 1, a1))
    {
      if (v19 == (v9 >> 1) - a1)
      {
        v17 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v17)
        {
          return v17;
        }

        v17 = MEMORY[0x277D84F90];
LABEL_26:
        swift_unknownObjectRelease();
        return v17;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    swift_unknownObjectRelease_n();
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

unint64_t sub_24ED6DFD8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    return result > a1;
  }

  result = sub_24F92C738();
  if ((result & 0x8000000000000000) == 0)
  {
    return result > a1;
  }

  __break(1u);
  return result;
}

unint64_t sub_24ED6E058(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24F91FA18();
  v4 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
    result = sub_24F92C738();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= result)
  {
    return 0;
  }

  result = sub_24F91FA18();
  v2 = *(v1 + v4);
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v10 = result;

    v7 = MEMORY[0x253052270](v10, v2);

    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v2 + 8 * result + 32);

LABEL_8:
    v8 = *(v7 + 24);

    v9 = *(v8 + 16);

    return sub_24F91FA08() < v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ED6E17C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED6E1C0(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_24ED6E2A0()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view);

  return result;
}

uint64_t ArticlePagePresenter.deinit()
{
  v0 = BasePresenter.deinit();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view);

  return v0;
}

uint64_t ArticlePagePresenter.__deallocating_deinit()
{
  ArticlePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED6E498()
{

  return swift_deallocObject();
}

uint64_t sub_24ED6E4D8(uint64_t a1)
{
  result = sub_24ED6EBE0(&qword_27F22EE78, type metadata accessor for ArticlePagePresenter, &protocol conformance descriptor for BasePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ArticlePagePresenter(uint64_t a1)
{
  result = qword_27F22EE80;
  if (!qword_27F22EE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED6E57C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_touchMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24ED6E5D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_touchMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24ED6E640@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24ED6E69C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24ED6E700@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24ED6E7D0(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24ED6EB80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ED6EBE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ED6EC84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_24ED6ECC8(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

id PendingPageRender.add(updateError:)(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
  swift_beginAccess();
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_24E617130(0, v4[2] + 1, 1, v4);
    *(v1 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_24E617130((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a1;
  *(v1 + v3) = v4;
  swift_endAccess();
  return a1;
}

void PendingPageRender.initialRequestEndTime.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_initialRequestEndTime;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = *&a1;
  *(v6 + 8) = v5;
  if (a2)
  {
    if (v8)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v7 != *&a1)
  {
    LOBYTE(v8) = 1;
  }

  if (v8)
  {
LABEL_7:
    v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime);
    swift_beginAccess();
    *(v9 + 40) = (a2 & 1) == 0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }

    PendingPageRender.tryToEstablishUserReadyTime()();
  }
}

double PendingPageRender.use(pageRenderEventFrom:)(uint64_t a1)
{
  v2 = v1;
  sub_24E60169C(a1, v8, &qword_27F224F98, &unk_24F974A70);
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_24E601704(v8, &qword_27F224F98, &unk_24F974A70);
    v5 = 0;
  }

  *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event) = v5;

  v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasEvent);
  swift_beginAccess();
  *(v6 + 40) = 1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  return result;
}

uint64_t PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_u64[0];
  v6 = sub_24F929FB8();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t PendingPageRender.disappearTime.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  sub_24EBFE1C8(a1, v1 + v3);
  swift_endAccess();
  sub_24ED71208();
  return sub_24E601704(a1, &qword_27F22B5C8, &qword_24F98BA80);
}

double PendingPageRender.observeAssets(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoader);
  if (!*(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoader))
  {
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 32);
    v8 = swift_unknownObjectRetain();
    v7(v8, &protocol witness table for PendingPageRender, ObjectType, a2);
    v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoaderIsIdle);
    v10 = *(a2 + 8);

    v11 = v10(ObjectType, a2);
    swift_beginAccess();
    *(v9 + 40) = (v11 & 1) == 0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }

    *v3 = a1;
    v3[1] = a2;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
  }

  return result;
}

void sub_24ED6F318()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (v3)
  {
    goto LABEL_5;
  }

  *(v1 + 48) = v4;
  v5 = v4 == 0;
  swift_beginAccess();
  *(v1 + 40) = v5;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  if (!*(v1 + 48))
  {
LABEL_5:
    PendingPageRender.tryToEstablishUserReadyTime()();
  }
}

uint64_t PendingPageRender.add(requestsFrom:)()
{
  swift_beginAccess();

  sub_24EA0A8D8(v0);
  return swift_endAccess();
}

uint64_t PendingPageRender.add(errorsFrom:)()
{
  swift_beginAccess();

  sub_24EA0A904(v0);
  return swift_endAccess();
}

uint64_t sub_24ED6F4A4()
{
  result = sub_24F92B098();
  qword_27F22EE90 = result;
  return result;
}

uint64_t sub_24ED6F500()
{
  result = sub_24F92B098();
  qword_27F22EE98 = result;
  return result;
}

char *PendingPageRender.init(bag:metricsPipeline:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v117 = a2;
  v118 = a1;
  v113 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x28223BE20](v4);
  v110 = v93 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v115 = *(v6 - 8);
  v116 = v6;
  MEMORY[0x28223BE20](v6);
  v114 = v93 - v7;
  v8 = sub_24F9288E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_gate;
  sub_24E74EC40();
  v13 = sub_24F92BEF8();
  type metadata accessor for Gate();
  swift_allocObject();
  v14 = Gate.init(queue:passingDelay:)(v13, 1.0);
  v109 = v12;
  *&v3[v12] = v14;
  v15 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasEvent;
  type metadata accessor for Gate.Condition();
  v16 = swift_allocObject();
  swift_weakInit();
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v108 = v15;
  *&v3[v15] = v16;
  v106 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event;
  *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event] = 0;
  v17 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime;
  v18 = swift_allocObject();
  swift_weakInit();
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  v107 = v17;
  *&v3[v17] = v18;
  v19 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime];
  *v19 = 0;
  v19[8] = 1;
  v20 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime;
  v21 = swift_allocObject();
  swift_weakInit();
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  v105 = v20;
  *&v3[v20] = v21;
  v22 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime];
  *v22 = 0;
  v22[8] = 1;
  v23 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  v24 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  v25 = *(*(v24 - 8) + 56);
  v104 = v23;
  v25(&v3[v23], 1, 1, v24);
  v26 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestEndTime];
  *v28 = 0;
  v28[8] = 1;
  v29 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_userReadyTime];
  *v29 = 0;
  v29[8] = 1;
  v30 = MEMORY[0x277D84F90];
  v102 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requests;
  *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requests] = MEMORY[0x277D84F90];
  v31 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady;
  v32 = swift_allocObject();
  swift_weakInit();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  v103 = v31;
  *&v3[v31] = v32;
  v33 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime;
  v34 = swift_allocObject();
  swift_weakInit();
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 40) = 0;
  v101 = v33;
  *&v3[v33] = v34;
  v35 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime];
  *v35 = 0;
  v35[8] = 1;
  v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLowDataMode] = 2;
  v36 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoaderIsIdle;
  v37 = swift_allocObject();
  swift_weakInit();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 40) = 0;
  v100 = v36;
  *&v3[v36] = v37;
  v38 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoader];
  *v38 = 0;
  *(v38 + 1) = 0;
  v98 = v38;
  v39 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime;
  v40 = swift_allocObject();
  swift_weakInit();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 40) = 0;
  v99 = v39;
  *&v3[v39] = v40;
  v41 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_initialRequestEndTime];
  *v41 = 0;
  v41[8] = 1;
  v42 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests;
  type metadata accessor for Gate.CountingCondition();
  v43 = swift_allocObject();
  *(v43 + 48) = 0;
  swift_weakInit();
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 40) = 1;
  v97 = v42;
  *&v3[v42] = v43;
  v44 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasUserReadyTime;
  v45 = swift_allocObject();
  swift_weakInit();
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  v96 = v44;
  *&v3[v44] = v45;
  v46 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasNetworkQualityReports;
  v47 = swift_allocObject();
  swift_weakInit();
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 40) = 0;
  v95 = v46;
  *&v3[v46] = v47;
  v93[1] = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityReports;
  *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityReports] = 0;
  v48 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityInquiry;
  v49 = [objc_allocWithZone(ASKNetworkQualityInquiry) init];
  v94 = v48;
  *&v3[v48] = v49;
  v50 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkInquiry];
  v51 = _s12GameStoreKit20NWPathNetworkInquiryCACycfC_0();
  *(v50 + 3) = type metadata accessor for NWPathNetworkInquiry(0);
  *(v50 + 4) = &protocol witness table for NWPathNetworkInquiry;
  *v50 = v51;
  *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors] = v30;
  v52 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider];
  *v52 = sub_24ED726A4;
  v52[1] = 0;
  v53 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost];
  *v53 = 0;
  *(v53 + 1) = 0;
  if (qword_27F2108B0 != -1)
  {
    swift_once();
  }

  (*(v9 + 104))(v11, *MEMORY[0x277D21C38], v8);
  v54 = v114;
  sub_24F92A368();
  (*(v9 + 8))(v11, v8);
  v55 = v116;
  sub_24F92A408();
  (*(v115 + 8))(v54, v55);
  v56 = v119;
  LOBYTE(v119) = 1;
  v120 = 0;
  v121 = v56;
  if (sub_24EA76044())
  {
    v57 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_metricsPipeline;
    v58 = sub_24F929158();
    v59 = *(v58 - 8);
    (*(v59 + 16))(&v3[v57], v117, v58);
    if (qword_27F2108A8 != -1)
    {
      swift_once();
    }

    v60 = v110;
    sub_24F92A448();
    v61 = v112;
    sub_24F92A408();
    (*(v111 + 8))(v60, v61);
    v62 = v120;
    v63 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_metricsPageRenderTopic];
    *v63 = v119;
    *(v63 + 1) = v62;
    v64 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_lottery];
    *v64 = 1;
    *(v64 + 1) = 0;
    *(v64 + 2) = v56;
    *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_xpSessionDuration] = v56;
    *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_xpSamplingPercentageUsers] = 0;
    v65 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_gate;
    v66 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_gate];
    swift_beginAccess();
    *(v66 + 32) = 0xD00000000000001DLL;
    *(v66 + 40) = 0x800000024FA5C830;

    v67 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasEvent];
    swift_beginAccess();
    *(v67 + 24) = 0xD000000000000026;
    *(v67 + 32) = 0x800000024FA5C850;

    Gate.add(condition:)(v68);

    v69 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime];
    swift_beginAccess();
    *(v69 + 24) = 0xD00000000000002ELL;
    *(v69 + 32) = 0x800000024FA5C880;

    Gate.add(condition:)(v70);

    v71 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime];
    swift_beginAccess();
    *(v71 + 24) = 0xD00000000000002BLL;
    *(v71 + 32) = 0x800000024FA5C8B0;

    Gate.add(condition:)(v72);

    v73 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime];
    swift_beginAccess();
    *(v73 + 24) = 0xD000000000000037;
    *(v73 + 32) = 0x800000024FA5C8E0;

    Gate.add(condition:)(v74);

    v75 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests];
    swift_beginAccess();
    *(v75 + 24) = 0xD000000000000029;
    *(v75 + 32) = 0x800000024FA5C920;

    Gate.add(condition:)(v76);

    v77 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasUserReadyTime];
    swift_beginAccess();
    *(v77 + 24) = 0xD00000000000002ELL;
    *(v77 + 32) = 0x800000024FA5C950;

    Gate.add(condition:)(v78);

    v79 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady];
    swift_beginAccess();
    *(v79 + 24) = 0xD00000000000002BLL;
    *(v79 + 32) = 0x800000024FA5C980;

    Gate.add(condition:)(v80);

    v81 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime];
    swift_beginAccess();
    *(v81 + 24) = 0xD000000000000018;
    *(v81 + 32) = 0x800000024FA5C9B0;

    Gate.add(condition:)(v82);

    v83 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasNetworkQualityReports];
    swift_beginAccess();
    *(v83 + 24) = 0xD000000000000036;
    *(v83 + 32) = 0x800000024FA5C9D0;

    Gate.add(condition:)(v84);

    v85 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoaderIsIdle];
    swift_beginAccess();
    *(v85 + 24) = 0xD00000000000002FLL;
    *(v85 + 32) = 0x800000024FA5CA10;

    Gate.add(condition:)(v86);

    v87 = *&v3[v65];
    v88 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v89 = *(v87 + 120);
    v90 = *(v87 + 128);
    *(v87 + 120) = sub_24ED72EE8;
    *(v87 + 128) = v88;

    sub_24E824448(v89, v90);

    sub_24ED70D54();

    (*(v59 + 8))(v117, v58);
  }

  else
  {
    v91 = sub_24F929158();
    (*(*(v91 - 8) + 8))(v117, v91);

    sub_24E601704(&v3[v104], &qword_27F22B5C8, &qword_24F98BA80);

    swift_unknownObjectRelease();

    sub_24E601704(v50, &qword_27F22B760, &unk_24F99B6F0);

    sub_24E824448(*&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost], *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost + 8]);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

double sub_24ED704F0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24ED70548();
  }

  return result;
}

double sub_24ED70548()
{
  v1 = v0;
  v2 = sub_24F928698();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F929AB8();
  *&result = MEMORY[0x28223BE20](v6).n128_u64[0];
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event);
  if (v12)
  {
    v54 = v2;
    v55 = v8;
    v56 = v7;
    v57 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event;
    v14 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_metricsPageRenderTopic);
    v13 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_metricsPageRenderTopic + 8);
    swift_beginAccess();
    *(v12 + 24) = v14;
    *(v12 + 32) = v13;

    v15 = (v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime);
    swift_beginAccess();
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    swift_beginAccess();
    *(v12 + 40) = v16;
    *(v12 + 48) = v15;
    v17 = (v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime);
    swift_beginAccess();
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    swift_beginAccess();
    *(v12 + 56) = v18;
    *(v12 + 64) = v17;
    v19 = v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
    swift_beginAccess();
    v20 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
    v21 = (*(*(v20 - 8) + 48))(v19, 1, v20);
    v22 = 0;
    if (!v21)
    {
      v22 = *(v19 + *(v20 + 20));
    }

    v23 = v21 != 0;
    IsPerformanceTesting = 1;
    swift_beginAccess();
    *(v12 + 72) = v22;
    *(v12 + 80) = v23;
    v25 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime);
    v26 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime + 8);
    swift_beginAccess();
    *(v12 + 104) = v25;
    *(v12 + 112) = v26;
    v27 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime);
    v28 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime + 8);
    swift_beginAccess();
    *(v12 + 120) = v27;
    *(v12 + 128) = v28;
    v29 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestEndTime);
    v30 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestEndTime + 8);
    swift_beginAccess();
    *(v12 + 136) = v29;
    *(v12 + 144) = v30;
    v31 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_userReadyTime);
    v32 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_userReadyTime + 8);
    swift_beginAccess();
    *(v12 + 152) = v31;
    *(v12 + 160) = v32;
    v33 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requests;
    swift_beginAccess();
    v34 = *(v1 + v33);
    swift_beginAccess();
    *(v12 + 96) = v34;

    v35 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityReports);
    swift_beginAccess();
    *(v12 + 168) = v35;

    v36 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v37 = *(v1 + v36);
    swift_beginAccess();
    *(v12 + 176) = v37;

    v38 = (v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime);
    swift_beginAccess();
    v39 = *v38;
    LOBYTE(v38) = *(v38 + 8);
    swift_beginAccess();
    *(v12 + 216) = v39;
    *(v12 + 224) = v38;
    *(v12 + 257) = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLowDataMode);
    LOBYTE(v58) = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_lottery);
    v59 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_lottery + 8);
    if ((sub_24EA75D24() & 1) == 0)
    {
      IsPerformanceTesting = ASKBuildTypeIsPerformanceTesting();
    }

    swift_beginAccess();
    *(v12 + 273) = IsPerformanceTesting;
    v40 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_xpSessionDuration);
    swift_beginAccess();
    *(v12 + 264) = v40;
    *(v12 + 272) = 0;
    v41 = swift_beginAccess();
    *(v12 + 280) = 0;
    *(v12 + 288) = 0;
    if (sub_24EA76370(v41))
    {
      if (qword_27F210580 != -1)
      {
        swift_once();
      }

      v42 = sub_24F92AAE8();
      __swift_project_value_buffer(v42, qword_27F39C3E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      v60 = type metadata accessor for PageRenderMetricsEvent();
      v58 = v12;

      sub_24F928438();
      sub_24E601704(&v58, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A588();
    }

    v43 = (v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider);
    swift_beginAccess();
    v44 = *v43;

    v44(v45);

    PageRenderMetricsEvent.metricsData.getter(v5);
    sub_24F929138();

    (*(v3 + 8))(v5, v54);
    v46 = [objc_opt_self() defaultCenter];
    if (qword_27F2106D0 != -1)
    {
      swift_once();
    }

    [v46 postNotificationName:qword_27F22EE90 object:v1];

    v47 = (v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
    swift_beginAccess();
    v48 = *v47;
    if (*v47)
    {
      v49 = v47[1];
      swift_endAccess();

      v48(v50);
      sub_24E824448(v48, v49);

      (*(v55 + 8))(v11, v56);
    }

    else
    {
      (*(v55 + 8))(v11, v56);
      swift_endAccess();
    }

    v51 = *v47;
    v52 = v47[1];
    *v47 = 0;
    v47[1] = 0;
    sub_24E824448(v51, v52);
    *(v1 + v57) = 0;
  }

  return result;
}

uint64_t sub_24ED70D54()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityInquiry);
  if (v2)
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v12 = sub_24ED73568;
    v13 = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24ED72624;
    v11 = &block_descriptor_74;
    v4 = _Block_copy(aBlock);
    v5 = v2;

    [v5 investigateNetworksWithCompletionBlock_];
    _Block_release(v4);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasNetworkQualityReports);
    swift_beginAccess();
    *(v6 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  sub_24E60169C(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkInquiry, &v14, &qword_27F22B760, &unk_24F99B6F0);
  if (!v15)
  {
    return sub_24E601704(&v14, &qword_27F22B760, &unk_24F99B6F0);
  }

  sub_24E612C80(&v14, aBlock);
  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1(aBlock, v11);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLowDataMode) = (*(v8 + 4))(v7, v8) & 1;
  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

double sub_24ED70F54(uint64_t a1, char a2, void *a3, void *a4)
{
  v8 = v4 + *a3;
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  v9 = *(v4 + *a4);
  swift_beginAccess();
  *(v9 + 40) = (a2 & 1) == 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  return result;
}

uint64_t (*PendingPageRender.appearTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_24ED710A8;
}

uint64_t PendingPageRender.disappearTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22B5C8, &qword_24F98BA80);
}

uint64_t sub_24ED7111C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5C8, &qword_24F98BA80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24E60169C(a1, &v10 - v5, &qword_27F22B5C8, &qword_24F98BA80);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  sub_24EBFE1C8(v6, v7 + v8);
  swift_endAccess();
  sub_24ED71208();
  return sub_24E601704(v6, &qword_27F22B5C8, &qword_24F98BA80);
}

uint64_t sub_24ED71208()
{
  v1 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F929FB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v28 = &v28 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  result = (*(v2 + 48))(v0 + v17, 1, v1);
  if (!result)
  {
    v19 = v0;
    sub_24ED73588(v0 + v17, v4);
    v20 = *(v6 + 32);
    v20(v13, v4, v5);
    v20(v16, v13, v5);
    v21 = v28;
    (*(v6 + 16))(v28, v16, v5);
    sub_24F929F98();
    sub_24ED735EC(v22);
    v23 = sub_24F92AFF8();
    v24 = *(v6 + 8);
    v24(v8, v5);
    if (v23)
    {
      v24(v21, v5);
    }

    else
    {
      sub_24F929FA8();
      v25 = sub_24F92AFF8();
      v24(v8, v5);
      v24(v21, v5);
      if ((v25 & 1) == 0)
      {
        return (v24)(v16, v5, v26);
      }
    }

    v27 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event;
    if (!*(v19 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event))
    {
      type metadata accessor for PageRenderMetricsEvent();
      swift_allocObject();
      *(v19 + v27) = sub_24EE230B8();
    }

    v26.n128_f64[0] = sub_24ED70548();
    return (v24)(v16, v5, v26);
  }

  return result;
}

uint64_t (*PendingPageRender.disappearTime.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24ED715BC;
}

uint64_t sub_24ED715BC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24ED71208();
  }

  return result;
}

BOOL PendingPageRender.isLayoutPending.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
  swift_beginAccess();
  return (*(v1 + 40) & 1) == 0;
}

double sub_24ED71640(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
  swift_beginAccess();
  *(v3 + 40) = (v2 & 1) == 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  return result;
}

double PendingPageRender.isLayoutPending.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
  v3 = a1 ^ 1;
  swift_beginAccess();
  *(v2 + 40) = v3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  return result;
}

void (*PendingPageRender.isLayoutPending.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
  *(v3 + 72) = v5;
  swift_beginAccess();
  *(v4 + 80) = (*(v5 + 40) & 1) == 0;
  return sub_24ED717EC;
}

void sub_24ED717EC(char **a1, char a2)
{
  v2 = *a1;
  *(*(*a1 + 9) + 40) = ((*a1)[80] & 1) == 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  free(v2);
}

uint64_t (*PendingPageRender.rootViewModelPresentTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_24ED71904;
}

void sub_24ED71910(void *a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v5[6];
    v7 = *(v6 + *a3);
    v8 = *(v6 + v5[7] + 8);
    swift_beginAccess();
    *(v7 + 40) = (v8 & 1) == 0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  free(v5);
}

double sub_24ED719C8()
{
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27F230F98;
  v2 = v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
  swift_beginAccess();
  *v2 = v1;
  *(v2 + 8) = 0;
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
  swift_beginAccess();
  *(v3 + 40) = 1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  return result;
}

Swift::Void __swiftcall PendingPageRender.didBeginFetchingAssets()()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoaderIsIdle);
  swift_beginAccess();
  *(v5 + 40) = 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24EA6BFA0();
  }

  v6 = v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime + 8) == 1)
  {
    sub_24F91F638();
    sub_24F91F5E8();
    v8 = v7;
    (*(v2 + 8))(v4, v1);
    *v6 = v8;
    *(v6 + 8) = 0;
  }
}

Swift::Void __swiftcall PendingPageRender.didFinishFetchingOnScreenAssets()()
{
  v1 = v0;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F638();
  sub_24F91F5E8();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime;
  *v8 = v7;
  *(v8 + 8) = 0;
  PendingPageRender.tryToEstablishUserReadyTime()();
}

Swift::Void __swiftcall PendingPageRender.tryToEstablishUserReadyTime()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasUserReadyTime);
  swift_beginAccess();
  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime);
    swift_beginAccess();
    if (*(v2 + 40) == 1)
    {
      v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      if (*(v3 + 40) == 1)
      {
        v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
        swift_beginAccess();
        if (*(v4 + 40) == 1)
        {
          if (*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoader))
          {
            v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoader + 8);
            ObjectType = swift_getObjectType();
            v7 = *(v5 + 16);
            swift_unknownObjectRetain();
            if ((v7(ObjectType, v5) & 1) == 0 && ((*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime + 8) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestEndTime + 8) & 1) == 0))
            {
              v8 = (v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_initialRequestEndTime);
              swift_beginAccess();
              if (v8[1])
              {
                v9 = MEMORY[0x277D84F90];
              }

              else
              {
                v10 = *v8;
                v9 = sub_24E617688(0, 1, 1, MEMORY[0x277D84F90]);
                v12 = *(v9 + 2);
                v11 = *(v9 + 3);
                if (v12 >= v11 >> 1)
                {
                  v9 = sub_24E617688((v11 > 1), v12 + 1, 1, v9);
                }

                *(v9 + 2) = v12 + 1;
                *&v9[8 * v12 + 32] = v10;
              }

              if (*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime + 8))
              {
                v13 = *(v9 + 2);
                if (!v13)
                {

                  if (qword_27F210580 != -1)
                  {
                    swift_once();
                  }

                  v14 = sub_24F92AAE8();
                  __swift_project_value_buffer(v14, qword_27F39C3E0);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
                  sub_24F928468();
                  *(swift_allocObject() + 16) = xmmword_24F93A400;
                  sub_24F928448();
                  sub_24F9283A8();
                  sub_24F92A5A8();

                  goto LABEL_34;
                }
              }

              else
              {
                v15 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime);
                v16 = v9;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v16 = sub_24E617688(0, *(v16 + 2) + 1, 1, v16);
                }

                v9 = v16;
                v18 = *(v16 + 2);
                v17 = *(v16 + 3);
                v13 = v18 + 1;
                if (v18 >= v17 >> 1)
                {
                  v9 = sub_24E617688((v17 > 1), v18 + 1, 1, v9);
                }

                *(v9 + 2) = v13;
                *&v9[8 * v18 + 32] = v15;
              }

              v19 = *(v9 + 4);
              v20 = v13 - 1;
              if (v13 != 1)
              {
                v21 = (v9 + 40);
                do
                {
                  v22 = *v21++;
                  v23 = v22;
                  if (v19 < v22)
                  {
                    v19 = v23;
                  }

                  --v20;
                }

                while (v20);
              }

              v24 = v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_userReadyTime;
              *v24 = v19;
              *(v24 + 8) = 0;
              *(v1 + 40) = 1;
              swift_beginAccess();
              if (swift_weakLoadStrong())
              {
                sub_24EA6BFA0();
              }

              v25 = [objc_opt_self() defaultCenter];
              if (qword_27F2106D8 != -1)
              {
                swift_once();
              }

              [v25 postNotificationName:qword_27F22EE98 object:v0];
            }

LABEL_34:
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall PendingPageRender.didFinishFetchingAllAssets()()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoaderIsIdle);
  swift_beginAccess();
  *(v5 + 40) = 1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24EA6BFA0();
  }

  sub_24F91F638();
  sub_24F91F5E8();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v8 = v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestEndTime;
  *v8 = v7;
  *(v8 + 8) = 0;
  PendingPageRender.tryToEstablishUserReadyTime()();
}

uint64_t sub_24ED72340(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void (*PendingPageRender.initialRequestEndTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_initialRequestEndTime;
  *(v3 + 88) = v1;
  *(v3 + 96) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_24ED72428;
}

void sub_24ED72428(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(v3 + 80);
  if (a2)
  {
    PendingPageRender.initialRequestEndTime.setter(*&v4, v5);
    goto LABEL_12;
  }

  v6 = *(v3 + 88) + *(v3 + 96);
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v4;
  *(v6 + 8) = v5;
  if (v5)
  {
    if (v8)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v7 != v4)
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_9:
    v9 = *(*(v3 + 88) + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime);
    v10 = v5 ^ 1;
    swift_beginAccess();
    *(v9 + 40) = v10;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }

    PendingPageRender.tryToEstablishUserReadyTime()();
  }

LABEL_12:

  free(v3);
}

double sub_24ED7251C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityReports;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityReports) = a1;

  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasNetworkQualityReports);
  LOBYTE(v2) = *(v1 + v2) != 0;
  swift_beginAccess();
  *(v3 + 40) = v2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  return result;
}

double sub_24ED725C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24ED7251C(v3);
  }

  return result;
}

uint64_t sub_24ED72624(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EF78, &qword_24F99B808);
  v3 = sub_24F92B5A8();

  v2(v3);
}

uint64_t sub_24ED726A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v2 = sub_24F929AB8();
  v3 = __swift_project_value_buffer(v2, qword_27F22E3B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double sub_24ED7274C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t PendingPageRender.contextProvider.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double PendingPageRender.contextProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_24ED728D0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24E972460;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4, v5);
}

double sub_24ED72970(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24E9A0188;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24E5FCA4C(v3, v4);
  return sub_24E824448(v8, v9);
}

uint64_t PendingPageRender.didPost.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v2 = *v1;
  sub_24E5FCA4C(*v1, v1[1]);
  return v2;
}

double PendingPageRender.didPost.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24E824448(v6, v7);
}

uint64_t PendingPageRender.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_metricsPipeline;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime, &qword_27F22B5C8, &qword_24F98BA80);

  swift_unknownObjectRelease();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkInquiry, &qword_27F22B760, &unk_24F99B6F0);

  sub_24E824448(*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost), *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost + 8));
  return v0;
}

uint64_t PendingPageRender.__deallocating_deinit()
{
  PendingPageRender.deinit();

  return swift_deallocClassInstance();
}

void sub_24ED72D9C()
{
  v1 = v0;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F638();
  sub_24F91F5E8();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime;
  *v8 = v7;
  *(v8 + 8) = 0;
  PendingPageRender.tryToEstablishUserReadyTime()();
}

uint64_t sub_24ED72EB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ED72F80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F22B5C8, &qword_24F98BA80);
}

uint64_t sub_24ED72FF0@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
  result = swift_beginAccess();
  *a2 = (*(v3 + 40) & 1) == 0;
  return result;
}

uint64_t keypath_getTm_3@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_24ED73128@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

void sub_24ED731B4(uint64_t a1)
{
  sub_24F929158();
  if (v1 <= 0x3F)
  {
    sub_24ED73360(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24ED73360(uint64_t a1)
{
  if (!qword_27F22EF60)
  {
    type metadata accessor for PendingPageRender.DisappearTimeAndReason(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22EF60);
    }
  }
}

uint64_t sub_24ED733CC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_24F929FB8();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_24ED7344C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_24F929FB8();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, a2, a2, v5);
}

uint64_t sub_24ED734BC(uint64_t a1, __n128 a2)
{
  result = sub_24F929FB8();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ED73530()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ED73588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ED735EC(__n128 a1)
{
  result = qword_27F22EF80;
  if (!qword_27F22EF80)
  {
    sub_24F929FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EF80);
  }

  return result;
}

uint64_t static MetadataRibbonTextStyle.fontSource(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F922118();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id static MetadataRibbonTextStyle.textStyle(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D22620];
  v4 = sub_24F922118();
  (*(*(v4 - 8) + 104))(a2, v3, v4);

  return a1;
}

uint64_t static MetadataRibbonTextStyle.useCase(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F922378();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *MEMORY[0x277D22618];
  v6 = sub_24F922118();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_24ED73838(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922118();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ED738B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922118();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MetadataRibbonTextStyle(uint64_t a1)
{
  result = qword_27F22EF88;
  if (!qword_27F22EF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED73974(uint64_t a1)
{
  result = sub_24F922118();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ED739E0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_24F92B7F8();
  v2[6] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_24ED73A7C, v4, v3);
}

uint64_t sub_24ED73A7C()
{
  if ([*(v0[4] + OBJC_IVAR____TtC12GameStoreKit20ViewPresentationTask_request) viewIdentifier])
  {

    sub_24ED741FC();
    swift_allocError();
    swift_willThrow();
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[3];
    v4 = [objc_allocWithZone(type metadata accessor for BackgroundAssetConsentViewController()) init];
    v0[9] = v4;
    v5 = sub_24F92B7E8();
    v0[10] = v5;
    v6 = swift_task_alloc();
    v0[11] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = swift_task_alloc();
    v0[12] = v7;
    v8 = sub_24ED74258();
    *v7 = v0;
    v7[1] = sub_24ED73C38;
    v9 = MEMORY[0x277D85700];

    return MEMORY[0x2822008A0](v0 + 2, v5, v9, 0xD000000000000018, 0x800000024FA5CE20, sub_24ED74250, v6, v8);
  }
}

uint64_t sub_24ED73C38()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_24ED73DD0;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_24ED73D5C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24ED73D5C()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24ED73DD0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

id sub_24ED73E58(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFB0, &unk_24F99B880);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_24ED7437C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24ED7412C;
  aBlock[3] = &block_descriptor_75;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a3;

  [v14 setResponseBlock_];
  _Block_release(v13);
  return [v15 presentViewController:v14 animated:1 completion:0];
}

void sub_24ED74040(void *a1, id a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  if (a1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CEC4D0]);
    v4 = a1;
    [v3 initWithNumber_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFB0, &unk_24F99B880);
    sub_24F92B798();
  }

  else
  {
    sub_24ED74414();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFB0, &unk_24F99B880);
    sub_24F92B788();
  }
}

void sub_24ED7412C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t sub_24ED741FC()
{
  result = qword_27F22EFA0;
  if (!qword_27F22EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EFA0);
  }

  return result;
}

unint64_t sub_24ED74258()
{
  result = qword_27F22EFA8;
  if (!qword_27F22EFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22EFA8);
  }

  return result;
}

uint64_t sub_24ED742A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFB0, &unk_24F99B880);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24ED7437C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFB0, &unk_24F99B880);
  v3 = *(v1 + 16);

  sub_24ED74040(a1, v3);
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24ED74414()
{
  result = qword_27F22EFB8;
  if (!qword_27F22EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EFB8);
  }

  return result;
}

unint64_t sub_24ED7447C()
{
  result = qword_27F22EFC0;
  if (!qword_27F22EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EFC0);
  }

  return result;
}

void sub_24ED744D0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468, &qword_24F962020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BB8, qword_24F99BAB0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BC0, &qword_24F97BFA0);
  *&v13 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v15 = &v20 - v14;
  if ((*(v2 + OBJC_IVAR____TtC12GameStoreKit13VideoObserver_playerSubscriptionsAdded) & 1) == 0)
  {
    v21 = v12;
    swift_getKeyPath();
    v22 = a1;
    sub_24F91F368();

    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v16 = sub_24F92BEF8();
    v23 = v16;
    v17 = sub_24F92BEB8();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_24E602068(&qword_27F226BC8, &qword_27F226BB8, qword_24F99BAB0, MEMORY[0x277CC9E08]);
    sub_24EA9B900();
    sub_24F923118();
    sub_24E601704(v6, &qword_27F21F468, &qword_24F962020);

    (*(v8 + 8))(v10, v7);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_24E602068(&qword_27F226BD0, &qword_27F226BC0, &qword_24F97BFA0, MEMORY[0x277CBCD60]);
    sub_24F923148();

    (*(v21 + 8))(v15, v11);
    swift_beginAccess();
    sub_24F922F58();
    swift_endAccess();
    a1 = v22;
  }

  v18 = [a1 currentItem];
  sub_24ED74930(v18, a1, v19);
}

double sub_24ED748A4(unsigned int *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_24F922FB8();
  }

  return result;
}

void sub_24ED74930(void *a1, void *a2, __n128 a3)
{
  v82 = a2;
  v5 = sub_24F92C0E8();
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v84 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFF0, &qword_24F99BA10);
  v83 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v87 = &v62 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFF8, &qword_24F99BA18);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F000, &unk_24F99BA20);
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468, &qword_24F962020);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F008, &qword_24F99BA30);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F010, &unk_24F99BA38);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - v21;
  if (a1)
  {
    if ((*(v3 + OBJC_IVAR____TtC12GameStoreKit13VideoObserver_playerItemSubscriptionsAdded) & 1) == 0)
    {
      v69 = OBJC_IVAR____TtC12GameStoreKit13VideoObserver_playerItemSubscriptionsAdded;
      v64 = v20;
      swift_getKeyPath();
      v68 = v7;
      v67 = a1;
      v23 = a1;
      v63 = v3;
      sub_24F91F368();

      v70 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      v24 = sub_24F92BEF8();
      time.value = v24;
      v74 = sub_24F92BEB8();
      v25 = *(v74 - 8);
      v75 = *(v25 + 56);
      v73 = v25 + 56;
      v75(v14, 1, 1, v74);
      v65 = MEMORY[0x277CC9E08];
      sub_24E602068(&qword_27F22F018, &qword_27F22F008, &qword_24F99BA30, MEMORY[0x277CC9E08]);
      v72 = sub_24EA9B900();
      v71 = v14;
      sub_24F923118();
      sub_24E601704(v14, &qword_27F21F468, &qword_24F962020);

      (*(v16 + 8))(v18, v15);
      v26 = swift_allocObject();
      v27 = v63;
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      *(v28 + 24) = v23;
      v29 = MEMORY[0x277CBCD60];
      v66 = MEMORY[0x277CBCD60];
      sub_24E602068(&qword_27F22F020, &qword_27F22F010, &unk_24F99BA38, MEMORY[0x277CBCD60]);
      v30 = v23;
      sub_24F923148();

      (*(v64 + 8))(v22, v19);
      swift_beginAccess();
      sub_24F922F58();
      swift_endAccess();

      swift_getKeyPath();
      v31 = v76;
      sub_24F91F368();

      v32 = sub_24F92BEF8();
      time.value = v32;
      v33 = v71;
      v75(v71, 1, 1, v74);
      sub_24E602068(&qword_27F22F028, &qword_27F22EFF8, &qword_24F99BA18, v65);
      v34 = v78;
      v35 = v79;
      sub_24F923118();
      sub_24E601704(v33, &qword_27F21F468, &qword_24F962020);

      (*(v77 + 8))(v31, v34);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_24E602068(&qword_27F22F030, &qword_27F22F000, &unk_24F99BA20, v29);
      v36 = v81;
      sub_24F923148();

      (*(v80 + 8))(v35, v36);
      swift_beginAccess();
      v37 = v27;
      sub_24F922F58();
      swift_endAccess();

      [v30 duration];
      CMTimeGetSeconds(&time);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_24F941C80;
      v39 = sub_24F92C258();
      LODWORD(v36) = v40;
      v42 = v41;
      v43 = HIDWORD(v40);
      v44 = objc_opt_self();
      time.value = v39;
      time.timescale = v36;
      time.flags = v43;
      time.epoch = v42;
      *(v38 + 32) = [v44 valueWithCMTime_];
      sub_24E69A5C4(0, &qword_27F22F038, 0x277CCAE60);
      v45 = sub_24F92B588();

      v46 = sub_24F92BEF8();
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      *(v48 + 16) = v47;
      *(v48 + 24) = v30;
      v90 = sub_24ED75B8C;
      v91 = v48;
      time.value = MEMORY[0x277D85DD0];
      *&time.timescale = 1107296256;
      time.epoch = sub_24EAF8248;
      v89 = &block_descriptor_76;
      v49 = _Block_copy(&time);
      v50 = v30;

      v51 = [v82 addBoundaryTimeObserverForTimes:v45 queue:v46 usingBlock:v49];
      _Block_release(v49);

      sub_24F92C648();
      swift_unknownObjectRelease();
      v52 = OBJC_IVAR____TtC12GameStoreKit13VideoObserver_timeObserver;
      swift_beginAccess();
      sub_24E8E7708(&time, v37 + v52);
      swift_endAccess();
      v53 = [objc_opt_self() defaultCenter];
      v54 = v50;
      v55 = v84;
      sub_24F92C0F8();

      v56 = sub_24F92BEF8();
      time.value = v56;
      v57 = v71;
      v58.n128_f64[0] = v75(v71, 1, 1, v74);
      sub_24ED75BAC(v58);
      v60 = v86;
      v59 = v87;
      sub_24F923118();
      sub_24E601704(v57, &qword_27F21F468, &qword_24F962020);

      (*(v85 + 8))(v55, v60);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_24E602068(&qword_27F22F040, &qword_27F22EFF0, &qword_24F99BA10, v66);
      v61 = v68;
      sub_24F923148();

      (*(v83 + 8))(v59, v61);
      swift_beginAccess();
      sub_24F922F58();
      swift_endAccess();

      *(v37 + v69) = 1;
    }
  }
}

void sub_24ED75594(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((*a1 - 1) <= 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;

      if ([a3 error])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
        sub_24E69A5C4(0, &qword_27F22C210, 0x277CCA9B8);
        if (swift_dynamicCast())
        {
          v6 = v7;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      sub_24F922FB8();
    }
  }
}

double sub_24ED756AC(unsigned __int8 *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_24F922FB8();
  }

  return result;
}

double sub_24ED75738(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    [a2 currentTime];
    v6.value = CMTimeGetSeconds(&v6);
    *&v6.timescale = 0;
    LOBYTE(v6.epoch) = 2;
    sub_24F922FB8();
  }

  return result;
}

double sub_24ED757FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_24F922FB8();
  }

  return result;
}

id sub_24ED75938(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VideoObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit13VideoObserverC6ChangeO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_24ED75A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24ED75A54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24ED75A98(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

id sub_24ED75ACC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_24ED75B00()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

id sub_24ED75B50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPlaybackLikelyToKeepUp];
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24ED75BAC(__n128 a1)
{
  result = qword_27F21F480;
  if (!qword_27F21F480)
  {
    sub_24F92C0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F480);
  }

  return result;
}

uint64_t (*sub_24ED75C20(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v23 = result;
    v24 = a3;
    v22 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_24E615E00(v8, v28);
      v10 = v6(v28);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v28);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_24E612C80(v28, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F457A9C(0, *(v9 + 16) + 1, 1);
          v9 = v29;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_24F457A9C((v12 > 1), v13 + 1, 1);
        }

        v14 = v26;
        v15 = v27;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
        v17 = MEMORY[0x28223BE20](v16);
        v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19, v17);
        sub_24ED8F474(v13, v19, &v29, v14, v15);
        result = __swift_destroy_boxed_opaque_existential_1(v25);
        v9 = v29;
        v6 = v23;
        v4 = v24;
        v5 = v22;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v28);
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

void sub_24ED75E50(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_24F91F648();
  MEMORY[0x28223BE20](v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = MEMORY[0x277D84F90];
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F458640(0, *(v23 + 16) + 1, 1);
          v23 = v39;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_24F458640((v25 > 1), v26 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v26 + 1;
        v36 = v23;
        v22((v23 + v13 + v26 * v14), v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

id Shelf.withItems(_:ofType:removeMarkers:isHidden:)(uint64_t a1, unsigned __int8 *a2, char a3, int a4)
{
  v5 = v4;
  v121 = a1;
  v131 = *v4;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820, &unk_24F97B5F0);
  v96 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v92 - v9;
  v10 = sub_24F91F6B8();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10);
  v93 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v12 - 8);
  v127 = &v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v14 - 8);
  v125 = &v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v16 - 8);
  v124 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v92 - v19;
  v20 = *a2;
  sub_24E65864C(v4 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v161);
  if (v20 == 104)
  {
    v20 = *(v4 + 16);
  }

  if (a3)
  {
    v21 = 1;
  }

  else
  {
    v21 = *(v4 + 18);
  }

  v118 = v21;
  v117 = *(v4 + 17);
  v22 = v4[5];
  sub_24E60169C(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v126, &qword_27F228530, &unk_24F93C6E0);
  v23 = (v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v24 = (v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *&v128 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle);
  v122 = v20;
  v120 = v22;
  if (a4 == 2)
  {
    v123 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden);
  }

  else
  {
    v123 = a4;
  }

  v115 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched);
  v116 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy);
  v101 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  v109 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);
  v107 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior);
  v26 = *v23;
  v25 = v23[1];
  v114 = v26;
  v119 = v25;
  v105 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized);
  v110 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  v27 = v24[1];
  v100 = *v24;
  v29 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
  v28 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
  v102 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel);
  v30 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  v31 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
  v134 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
  v104 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
  v32 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
  v33 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48);
  v158 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32);
  v159 = v33;
  v160 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 64);
  v34 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16);
  v156 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata);
  v157 = v34;
  sub_24E60169C(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v125, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, v127, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, v124, &qword_27F228530, &unk_24F93C6E0);
  v35 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 8);
  v99 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v36 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 16);
  v37 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 24);
  v97 = v36;
  v132 = swift_allocObject();
  sub_24E60169C(v161, &v153, &qword_27F235830, &qword_24F93B8C0);
  v133 = v37;
  v112 = v28;
  v113 = v29;
  v111 = v30;
  v106 = v32;
  v103 = v27;
  if (*(&v154 + 1))
  {
    v150 = v153;
    v151 = v154;
    v152 = v155;

    v38 = v128;
    sub_24ED8F454(v128);

    sub_24E951F10(v29, v28, v31, v134, v32);
  }

  else
  {

    v39 = v128;
    sub_24ED8F454(v128);

    sub_24E951F10(v29, v28, v31, v134, v32);

    v40 = v93;
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v42 = v35;
    v44 = v43;
    (*(v94 + 8))(v40, v95);
    *&v146 = v41;
    v38 = v39;
    *(&v146 + 1) = v44;
    v35 = v42;
    v37 = v133;
    sub_24F92C7F8();
    sub_24E601704(&v153, &qword_27F235830, &qword_24F93B8C0);
  }

  v45 = v132;
  v46 = v132 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v47 = v151;
  *v46 = v150;
  *(v46 + 16) = v47;
  *(v46 + 32) = v152;
  sub_24E60169C(v127, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v48 = v122;
  *(v45 + 16) = v122;
  v49 = v118;
  *(v45 + 17) = v117;
  *(v45 + 18) = v49;
  *(v45 + 24) = v121;
  LOBYTE(v150) = v48;

  v51 = v45;
  *(v45 + 32) = sub_24F2EBA74(v50, &v150);
  sub_24E60169C(v126, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v115;
  v52 = (v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v54 = v119;
  v53 = v120;
  *v52 = v114;
  v52[1] = v54;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v116;
  *(v51 + 40) = v53;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v123 & 1;
  v55 = v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  v56 = v159;
  *(v55 + 32) = v158;
  *(v55 + 48) = v56;
  *(v55 + 64) = v160;
  v57 = v157;
  *v55 = v156;
  *(v55 + 16) = v57;
  v98 = v35;
  v108 = v31;
  if (v38 <= 1)
  {

    sub_24EA1F04C(&v156, &v150);
    v58 = v110;
    v59 = v107;
LABEL_14:
    v60 = (v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    v61 = v101;
    v62 = v103;
    *v60 = v100;
    v60[1] = v62;
    *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v61;
    *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v128;

    goto LABEL_15;
  }

  v87 = objc_opt_self();

  sub_24EA1F04C(&v156, &v150);
  result = [v87 defaultWorkspace];
  if (!result)
  {
    goto LABEL_59;
  }

  v88 = result;
  v89 = sub_24F92B098();
  v90 = [v88 applicationIsInstalled_];

  v58 = v110;
  v59 = v107;
  if (v90)
  {
    goto LABEL_14;
  }

  sub_24ED8F464(v128);

  v91 = (v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *v91 = 0;
  v91[1] = 0;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
LABEL_15:
  sub_24E60169C(v125, v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v124, v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v104;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v109;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v59;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = v105;
  v64 = v111;
  v63 = v112;
  if (!v58)
  {
    LOBYTE(v150) = v48;
    v58 = sub_24F2EBC94();
  }

  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v58;
  v65 = v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  *v65 = v113;
  *(v65 + 8) = v63;
  v66 = v134;
  *(v65 + 16) = v108;
  *(v65 + 24) = v66;
  *(v65 + 32) = v106;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v102;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v64;
  v67 = *(v51 + 24);
  v68 = sub_24EA90A64();

  v69 = 0;
  v149 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v68);
  v134 = (v67 + 32);
  v70 = 0uLL;
  v128 = xmmword_24F950E90;
  while (2)
  {
    while (2)
    {
      v71 = *(v67 + 16);
      if (v69 == v71)
      {
LABEL_19:
        v141 = 0;
        v69 = v71;
        v139 = v70;
        v140 = v70;
        goto LABEL_23;
      }

      while (1)
      {
        if ((v69 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        if (v69 >= *(v67 + 16))
        {
          goto LABEL_54;
        }

        sub_24E615E00(v134 + 40 * v69++, &v139);
LABEL_23:
        v137[0] = v139;
        v137[1] = v140;
        v138 = v141;
        if (!*(&v140 + 1))
        {
          memset(v142, 0, 24);
          *(&v142[1] + 8) = v128;
LABEL_31:
          sub_24E601704(v142, &qword_27F226830, &unk_24F97B610);
          v148 = 0;
          v146 = 0u;
          v147 = 0u;
          goto LABEL_32;
        }

        sub_24E612C80(v137, v136);
        sub_24E615E00(v136, &v135);
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v142, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v136);
        if (*(&v142[1] + 1) == 1)
        {
          goto LABEL_31;
        }

        v143 = v142[0];
        v144 = v142[1];
        v145 = *&v142[2];
        if (*(&v142[1] + 1))
        {
          break;
        }

        sub_24E601704(&v143, &qword_27F222730, &unk_24F9E1470);
        v70 = 0uLL;
        if (v69 == v71)
        {
          goto LABEL_19;
        }
      }

      *(&v144 + 1) = *(&v142[1] + 1);
      result = sub_24E60169C(&v143, v142, &qword_27F222730, &unk_24F9E1470);
      if (!*(&v142[1] + 1))
      {
        goto LABEL_58;
      }

      sub_24E612C80(v142, &v146);
      sub_24E601704(&v143, &qword_27F222730, &unk_24F9E1470);
      if (!*(&v147 + 1))
      {
LABEL_32:
        sub_24E601704(&v146, &qword_27F222730, &unk_24F9E1470);
        v150 = 0u;
        v151 = 0u;
        v152 = 0;
        goto LABEL_33;
      }

      sub_24E612C80(&v146, &v153);
      v76 = *(&v154 + 1);
      v77 = v155;
      v78 = __swift_project_boxed_opaque_existential_1(&v153, *(&v154 + 1));
      v79 = v76;
      v68 = v78;
      if ((PersonalizableModel.needsClientPersonalization.getter(v79, v77) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v153);
        v37 = v133;
        v70 = 0uLL;
        continue;
      }

      break;
    }

    sub_24E612C80(&v153, &v150);
    v37 = v133;
LABEL_33:
    v153 = v150;
    v154 = v151;
    v155 = v152;
    if (*(&v151 + 1))
    {
      sub_24E612C80(&v153, &v146);
      v72 = *(&v147 + 1);
      v73 = v148;
      __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
      v74 = v72;
      v37 = v133;
      (*(v73 + 16))(&v143, v74, v73);
      LOBYTE(v73) = v143;
      __swift_destroy_boxed_opaque_existential_1(&v146);
      v68 = &v149;
      sub_24ED7CC74(&v150, v73);
      v70 = 0uLL;
      continue;
    }

    break;
  }

  v69 = v132;
  *(v132 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v149;
  v80 = (v69 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v81 = v98;
  *v80 = v99;
  v80[1] = v81;
  v80[2] = v97;
  v80[3] = v37;
  v68 = *(v69 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (!(v68 >> 62))
  {
    v82 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
      goto LABEL_42;
    }

LABEL_49:
    sub_24E601704(v124, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v127, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v125, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(v126, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v161, &qword_27F235830, &qword_24F93B8C0);
    return v69;
  }

LABEL_55:
  v82 = sub_24F92C738();
  if (!v82)
  {
    goto LABEL_49;
  }

LABEL_42:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
  if (v82 >= 1)
  {
    v134 = (v68 & 0xC000000000000001);
    v83 = (v96 + 8);

    v84 = 0;
    v85 = v68;
    do
    {
      if (v134)
      {
        MEMORY[0x253052270](v84, v68);
      }

      else
      {
      }

      ++v84;
      sub_24E602068(&qword_27F226838, &qword_27F225160, &unk_24F97B620, MEMORY[0x277D21A98]);
      sub_24F9288B8();
      v86 = v129;
      sub_24F9288C8();

      __swift_destroy_boxed_opaque_existential_1(&v150);
      (*v83)(v86, v130);
      v68 = v85;
    }

    while (v82 != v84);

    v69 = v132;
    goto LABEL_49;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

char *Shelf.mergingWith(_:)(char *a1)
{
  v2 = v1;
  v184 = *v1;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820, &unk_24F97B5F0);
  v167 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v181 = &v138 - v4;
  v5 = sub_24F91F6B8();
  v165 = *(v5 - 8);
  v166 = v5;
  MEMORY[0x28223BE20](v5);
  v164 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v7 - 8);
  v169 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v179 = &v138 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v11 - 8);
  *&v180 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v174 = &v138 - v14;
  MEMORY[0x28223BE20](v15);
  v178 = &v138 - v16;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v17 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v173 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v138 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v138 - v23;
  MEMORY[0x28223BE20](v25);
  v177 = &v138 - v26;
  v172 = sub_24F91F648();
  v176 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v183 = &v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v175 = &v138 - v29;
  LOBYTE(v206) = v1[16];
  if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v30 == 0xEB00000000726564)
  {
  }

  else
  {
    v32 = sub_24F92CE08();

    if ((v32 & 1) == 0)
    {
LABEL_6:
      v33 = 0;
      goto LABEL_8;
    }
  }

  if (v1[17] == 104)
  {
    goto LABEL_6;
  }

  LOBYTE(v206) = v1[17];
  LOBYTE(v200) = a1[16];
  v33 = Shelf.ContentType.isCompatible(with:)(&v200, v31);
LABEL_8:
  LOBYTE(v206) = v1[16];
  LOBYTE(v200) = a1[16];
  v34 = Shelf.ContentType.isCompatible(with:)(&v200, v31);
  if ((v33 & 1) == 0 && (v34 & 1) == 0)
  {
    v35 = sub_24F929618();
    sub_24ED8F50C(&qword_27F22F048, MEMORY[0x277D21F98], MEMORY[0x277D21FA0]);
    swift_allocError();
    v36 = v2[16];
    *(v37 + 24) = &type metadata for Shelf.ContentType;
    *v37 = v36;
    v38 = a1[16];
    *(v37 + 56) = &type metadata for Shelf.ContentType;
    *(v37 + 32) = v38;
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D21F90], v35);
    swift_willThrow();
    return v2;
  }

  sub_24F91F638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213910, &unk_24F93B4A0);
  v39 = *(v17 + 72);
  v40 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v163 = swift_allocObject();
  v41 = a1;
  v42 = (v163 + v40);
  v185 = v41;
  sub_24E60169C(&v41[OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate], v163 + v40, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate], v39 + v42, &unk_27F22EC30, &qword_24F939880);
  v168 = v42;
  sub_24E60169C(v42, v24, &unk_27F22EC30, &qword_24F939880);
  sub_24E6C4F90(v24, v21);
  v43 = v176 + 48;
  v44 = (v176 + 32);
  v45 = v172;
  v162 = *(v176 + 48);
  if (v162(v21, 1, v172) == 1)
  {
    sub_24E601704(v21, &unk_27F22EC30, &qword_24F939880);
    v46 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v160 = *v44;
  v161 = (v43 - 16);
  v160(v183, v21, v45);
  v46 = MEMORY[0x277D84F90];
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_14;
  }

  while (1)
  {
    v46 = sub_24E616878(0, *(v46 + 16) + 1, 1, v46);
LABEL_14:
    v48 = *(v46 + 16);
    v47 = *(v46 + 24);
    if (v48 >= v47 >> 1)
    {
      v46 = sub_24E616878((v47 > 1), v48 + 1, 1, v46);
    }

    *(v46 + 16) = v48 + 1;
    v49 = v46 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v48;
    v45 = v172;
    v44 = v161;
    v160(v49, v183, v172);
LABEL_17:
    sub_24E60169C(v39 + v168, v24, &unk_27F22EC30, &qword_24F939880);
    sub_24E6C4F90(v24, v21);
    if (v162(v21, 1, v45) == 1)
    {
      sub_24E601704(v21, &unk_27F22EC30, &qword_24F939880);
      v50 = v185;
    }

    else
    {
      v51 = *v44;
      (*v44)(v183, v21, v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v185;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = sub_24E616878(0, *(v46 + 16) + 1, 1, v46);
      }

      v54 = *(v46 + 16);
      v53 = *(v46 + 24);
      if (v54 >= v53 >> 1)
      {
        v46 = sub_24E616878((v53 > 1), v54 + 1, 1, v46);
      }

      *(v46 + 16) = v54 + 1;
      v51((v46 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v54), v183, v45);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    v55 = swift_deallocClassInstance();
    MEMORY[0x28223BE20](v55);
    *(&v138 - 2) = v175;
    v56 = v171;
    sub_24ED75E50(sub_24ED65D78, (&v138 - 4), v46);
    v138 = v56;
    sub_24ED78CC4(v57, v177);

    LOBYTE(v206) = v2[16];
    if (Shelf.ContentType.rawValue.getter() == 0x6863746566657270 && v58 == 0xEE0072656B72614DLL)
    {
      goto LABEL_26;
    }

    v59 = sub_24F92CE08();

    if (v59)
    {
      goto LABEL_28;
    }

    LOBYTE(v206) = v2[16];
    if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v136 == 0xEB00000000726564)
    {
LABEL_26:

LABEL_28:
      LODWORD(v163) = v50[16];
      v60 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    v137 = sub_24F92CE08();

    if (v137)
    {
      goto LABEL_28;
    }

    LODWORD(v163) = v2[16];
    v60 = *(v2 + 3);

LABEL_29:
    sub_24E65864C(&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_id], v211);
    LODWORD(v160) = v2[17];
    *&v206 = v60;

    sub_24EA0AEC0(v61);
    v62 = v206;
    v171 = sub_24EF94F20(*(v50 + 5), *(v2 + 5), 1);
    sub_24E60169C(&v50[OBJC_IVAR____TtC12GameStoreKit5Shelf_url], v178, &qword_27F228530, &unk_24F93C6E0);
    v159 = v50[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched];
    v158 = v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy];
    v63 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup + 8];
    v157 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup];
    v64 = *&v50[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8];
    if (v64)
    {
      v143 = *&v50[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle];
      v149 = v64;
    }

    else
    {
      v65 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8];
      v143 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle];
      v149 = v65;
    }

    v161 = v63;
    v170 = *&v50[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction];
    if (!v170)
    {
      v170 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction];
    }

    v155 = v64;
    v162 = v62;
    v66 = *&v50[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle];
    v67 = v66;
    if (v66 == 1)
    {
      v67 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle];
      sub_24ED8F454(v67);
    }

    v168 = v67;
    v156 = v50[OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden];
    v148 = v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal];
    v147 = v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior];
    v146 = v50[OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized];
    v150 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn];
    v68 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_background];
    v69 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8];
    v70 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24];
    v183 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16];
    v71 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32];
    v154 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel];
    *&v206 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents];

    sub_24ED8F454(v66);
    v155 = v68;
    v152 = v70;
    v153 = v69;
    v151 = v71;
    sub_24E951F10(v68, v69, v183, v70, v71);

    v73 = v185;
    sub_24EA0AE94(v72);
    v144 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints];
    v145 = v206;
    v74 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48];
    v208 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32];
    v209 = v74;
    v210 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 64];
    v75 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16];
    v206 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata];
    v207 = v75;
    sub_24E60169C(v177, v173, &unk_27F22EC30, &qword_24F939880);
    v76 = v169;
    sub_24E60169C(&v73[OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics], v169, &qword_27F213E68, &unk_24F93BC80);
    v77 = sub_24F929608();
    v78 = *(v77 - 8);
    v79 = *(v78 + 48);
    if (v79(v76, 1, v77) == 1)
    {
      sub_24E60169C(&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics], v179, &qword_27F213E68, &unk_24F93BC80);
      if (v79(v76, 1, v77) != 1)
      {
        sub_24E601704(v76, &qword_27F213E68, &unk_24F93BC80);
      }
    }

    else
    {
      v80 = v179;
      (*(v78 + 32))(v179, v76, v77);
      (*(v78 + 56))(v80, 0, 1, v77);
    }

    v81 = v180;
    sub_24E60169C(&v73[OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl], v180, &qword_27F228530, &unk_24F93C6E0);
    v82 = sub_24F91F4A8();
    v83 = *(v82 - 8);
    v84 = *(v83 + 48);
    if (v84(v81, 1, v82) == 1)
    {
      sub_24E60169C(&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl], v174, &qword_27F228530, &unk_24F93C6E0);
      if (v84(v81, 1, v82) != 1)
      {
        sub_24E601704(v81, &qword_27F228530, &unk_24F93C6E0);
      }
    }

    else
    {
      v85 = v174;
      (*(v83 + 32))(v174, v81, v82);
      (*(v83 + 56))(v85, 0, 1, v82);
    }

    v86 = v185;
    v87 = *&v185[OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics];
    if (!v87)
    {
      v87 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics];
    }

    v89 = *&v86[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata];
    v88 = *&v86[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 8];
    v90 = *&v86[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 24];
    v140 = *&v86[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 16];
    v91 = swift_allocObject();
    sub_24E60169C(v211, &v203, &qword_27F235830, &qword_24F93B8C0);
    v141 = v88;
    v139 = v90;
    if (*(&v204 + 1))
    {
      v200 = v203;
      v201 = v204;
      v202 = v205;
    }

    else
    {

      v92 = v164;
      sub_24F91F6A8();
      v93 = sub_24F91F668();
      v95 = v94;
      (*(v165 + 8))(v92, v166);
      *&v197 = v93;
      *(&v197 + 1) = v95;
      sub_24F92C7F8();
      sub_24E601704(&v203, &qword_27F235830, &qword_24F93B8C0);
    }

    v96 = v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
    v97 = v201;
    *v96 = v200;
    *(v96 + 16) = v97;
    *(v96 + 32) = v202;
    sub_24E60169C(v179, v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
    v98 = v163;
    *(v91 + 16) = v163;
    *(v91 + 17) = v160;
    *(v91 + 18) = 1;
    *(v91 + 24) = v162;
    LOBYTE(v200) = v98;

    *(v91 + 32) = sub_24F2EBA74(v99, &v200);
    sub_24E60169C(v178, v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v159;
    v100 = (v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
    v101 = v161;
    *v100 = v157;
    v100[1] = v101;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v158;
    *(v91 + 40) = v171;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v156;
    v102 = v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
    v103 = v209;
    *(v102 + 32) = v208;
    *(v102 + 48) = v103;
    *(v102 + 64) = v210;
    v104 = v207;
    *v102 = v206;
    *(v102 + 16) = v104;
    v105 = v168;
    v142 = v89;
    if (v168 > 1)
    {
      v131 = objc_opt_self();

      sub_24EA1F04C(&v206, &v200);
      result = [v131 defaultWorkspace];
      if (!result)
      {
        goto LABEL_104;
      }

      v132 = result;

      v133 = sub_24F92B098();
      v134 = [v132 applicationIsInstalled_];

      v105 = v168;
      if ((v134 & 1) == 0)
      {
        sub_24ED8F464(v168);

        v135 = (v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
        *v135 = 0;
        v135[1] = 0;
        *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
        *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
        goto LABEL_52;
      }
    }

    else
    {

      sub_24EA1F04C(&v206, &v200);
    }

    v106 = (v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    v107 = v149;
    *v106 = v143;
    v106[1] = v107;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v170;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v105;

LABEL_52:
    sub_24E60169C(v173, v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
    sub_24E60169C(v174, v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = v87;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v144;
    v108 = v147;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v148;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v108;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = v146;
    v169 = v87;
    v109 = v150;
    if (v150)
    {
    }

    else
    {
      LOBYTE(v200) = v98;

      v109 = sub_24F2EBC94();
    }

    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v109;
    v110 = v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
    v111 = v154;
    v112 = v153;
    *v110 = v155;
    *(v110 + 8) = v112;
    v113 = v152;
    *(v110 + 16) = v183;
    *(v110 + 24) = v113;
    *(v110 + 32) = v151;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v111;
    *(v91 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v145;
    v183 = v91;
    v21 = *(v91 + 24);
    v114 = sub_24EA90A64();

    v46 = 0;
    v212 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v114);
    v115 = v21 + 32;
    v116 = 0uLL;
    v39 = &qword_27F222730;
    v180 = xmmword_24F950E90;
    v2 = &unk_24F97B630;
    v185 = v21 + 32;
    while (2)
    {
      v24 = *(v21 + 2);
      if (v46 != v24)
      {
LABEL_59:
        if ((v46 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v46 < *(v21 + 2))
        {
          sub_24E615E00(&v115[40 * v46++], &v190);
          goto LABEL_63;
        }

        __break(1u);
        goto LABEL_99;
      }

      while (1)
      {
        v192 = 0;
        v46 = v24;
        v190 = v116;
        v191 = v116;
LABEL_63:
        v188[0] = v190;
        v188[1] = v191;
        v189 = v192;
        if (!*(&v191 + 1))
        {
          memset(v193, 0, 24);
          *(&v193[1] + 8) = v180;
LABEL_71:
          sub_24E601704(v193, &qword_27F226830, &unk_24F97B610);
          v199 = 0;
          v197 = 0u;
          v198 = 0u;
LABEL_72:
          sub_24E601704(&v197, &qword_27F222730, &unk_24F9E1470);
          v200 = 0u;
          v201 = 0u;
          v202 = 0;
          goto LABEL_73;
        }

        sub_24E612C80(v188, v187);
        sub_24E615E00(v187, &v186);
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v193, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v187);
        if (*(&v193[1] + 1) == 1)
        {
          goto LABEL_71;
        }

        v194 = v193[0];
        v195 = v193[1];
        v196 = *&v193[2];
        if (*(&v193[1] + 1))
        {
          break;
        }

        sub_24E601704(&v194, &qword_27F222730, &unk_24F9E1470);
        v116 = 0uLL;
        if (v46 != v24)
        {
          goto LABEL_59;
        }
      }

      *(&v195 + 1) = *(&v193[1] + 1);
      result = sub_24E60169C(&v194, v193, &qword_27F222730, &unk_24F9E1470);
      if (!*(&v193[1] + 1))
      {
        __break(1u);
LABEL_104:
        __break(1u);
        return result;
      }

      sub_24E612C80(v193, &v197);
      sub_24E601704(&v194, &qword_27F222730, &unk_24F9E1470);
      if (!*(&v198 + 1))
      {
        goto LABEL_72;
      }

      sub_24E612C80(&v197, &v203);
      v120 = *(&v204 + 1);
      v121 = v205;
      v122 = __swift_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
      v123 = v120;
      v111 = v122;
      if ((PersonalizableModel.needsClientPersonalization.getter(v123, v121) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v203);
LABEL_57:
        v115 = v185;
        v116 = 0uLL;
        continue;
      }

      break;
    }

    sub_24E612C80(&v203, &v200);
LABEL_73:
    v203 = v200;
    v204 = v201;
    v205 = v202;
    if (*(&v201 + 1))
    {
      sub_24E612C80(&v203, &v197);
      v117 = *(&v198 + 1);
      v118 = v199;
      __swift_project_boxed_opaque_existential_1(&v197, *(&v198 + 1));
      (*(v118 + 16))(&v194, v117, v118);
      LOBYTE(v118) = v194;
      __swift_destroy_boxed_opaque_existential_1(&v197);
      v111 = &v212;
      sub_24ED7CC74(&v200, v118);
      goto LABEL_57;
    }

    v2 = v183;
    *&v183[OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles] = v212;
    v124 = &v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata];
    v125 = v141;
    *v124 = v142;
    *(v124 + 1) = v125;
    v126 = v139;
    *(v124 + 2) = v140;
    *(v124 + 3) = v126;
    v111 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents];
    if (!(v111 >> 62))
    {
      break;
    }

LABEL_99:
    v127 = sub_24F92C738();
    if (!v127)
    {
      goto LABEL_88;
    }

LABEL_81:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
    if (v127 >= 1)
    {
      *&v180 = v111 & 0xC000000000000001;
      v128 = (v167 + 8);

      v129 = 0;
      v185 = v111;
      do
      {
        if (v180)
        {
          MEMORY[0x253052270](v129, v111);
        }

        else
        {
        }

        ++v129;
        sub_24E602068(&qword_27F226838, &qword_27F225160, &unk_24F97B620, MEMORY[0x277D21A98]);
        sub_24F9288B8();
        v130 = v181;
        sub_24F9288C8();

        __swift_destroy_boxed_opaque_existential_1(&v200);
        (*v128)(v130, v182);
        v111 = v185;
      }

      while (v127 != v129);

      v2 = v183;
      goto LABEL_88;
    }

    __break(1u);
  }

  v127 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v127)
  {
    goto LABEL_81;
  }

LABEL_88:

  sub_24E601704(v174, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v179, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v173, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v178, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v211, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v177, &unk_27F22EC30, &qword_24F939880);
  (*(v176 + 8))(v175, v172);
  return v2;
}