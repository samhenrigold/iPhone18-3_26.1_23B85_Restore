void *sub_273D994D0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_273D82D04(&qword_280926330, &qword_273DA4330);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_273D99540(char *result, int64_t a2, char a3, char *a4)
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
    sub_273D82D04(&qword_280926330, &qword_273DA4330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_273D99638()
{
  result = qword_280926328;
  if (!qword_280926328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926328);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WelcomeListStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x273D998CCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_273D99904(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_273D99978()
{

  JUMPOUT(0x2743DE750);
}

uint64_t sub_273D99990()
{
  v0 = sub_273D82D04(&qword_280926338, &qword_273DA4338);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - v4;
  v6 = sub_273DA19BC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
  sub_273D9880C(v13, qword_280927820);
  v24 = sub_273D833F0(v13, qword_280927820);
  v14 = v7[13];
  v14(v12, *MEMORY[0x277CDF9F8], v6);
  v14(v10, *MEMORY[0x277CDFA00], v6);
  sub_273D99C88();
  result = sub_273DA235C();
  if (result)
  {
    v16 = v7[2];
    v16(v5, v12, v6);
    v16(&v5[*(v0 + 48)], v10, v6);
    sub_273D99CE0(v5, v3);
    v17 = *(v0 + 48);
    v23 = v10;
    v21 = v0;
    v18 = v7[4];
    v19 = v24;
    v18(v24, v3, v6);
    v22 = v12;
    v20 = v7[1];
    v20(&v3[v17], v6);
    sub_273D99D50(v5, v3);
    v18(v19 + *(v13 + 36), &v3[*(v21 + 48)], v6);
    v20(v23, v6);
    v20(v22, v6);
    return (v20)(v3, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_273D99C88()
{
  result = qword_280926340;
  if (!qword_280926340)
  {
    sub_273DA19BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926340);
  }

  return result;
}

uint64_t sub_273D99CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280926338, &qword_273DA4338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D99D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280926338, &qword_273DA4338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *WelcomeUIViewController.init(_:onContinue:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_273D82E38(a1, &v3[OBJC_IVAR____TtC7Welcome23WelcomeUIViewController_welcomeContent]);
  v7 = &v3[OBJC_IVAR____TtC7Welcome23WelcomeUIViewController_continueAction];
  *v7 = a2;
  *(v7 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for WelcomeUIViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  sub_273D82E9C(a1);
  return v8;
}

void sub_273D99F80()
{
  v1 = type metadata accessor for WelcomeView(0);
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - v6;
  v8 = type metadata accessor for WelcomeUIViewController();
  v59.receiver = v0;
  v59.super_class = v8;
  objc_msgSendSuper2(&v59, sel_viewDidLoad);
  sub_273D82E38(&v0[OBJC_IVAR____TtC7Welcome23WelcomeUIViewController_welcomeContent], v7);
  LOBYTE(v54) = 1;
  sub_273DA225C();
  v9 = v57;
  v52 = v56;
  v10 = v58;
  v12 = *&v0[OBJC_IVAR____TtC7Welcome23WelcomeUIViewController_continueAction];
  v11 = *&v0[OBJC_IVAR____TtC7Welcome23WelcomeUIViewController_continueAction + 8];
  *(v7 + 10) = 0;
  *(v7 + 11) = 0;
  v7[96] = 1;
  *(v7 + 13) = swift_getKeyPath();
  *(v7 + 14) = 0;
  v7[120] = 0;
  v53 = 0;

  sub_273DA21BC();
  v13 = v55;
  *(v7 + 16) = v54;
  *(v7 + 17) = v13;
  v14 = *(v2 + 52);
  *&v7[v14] = swift_getKeyPath();
  sub_273D82D04(&qword_280925828, &qword_273DA2E38);
  swift_storeEnumTagMultiPayload();
  v15 = *(v2 + 56);
  *&v7[v15] = swift_getKeyPath();
  v16 = v0;
  swift_storeEnumTagMultiPayload();
  *(v7 + 5) = v52;
  *(v7 + 6) = v9;
  v7[56] = v10;
  *(v7 + 8) = v12;
  *(v7 + 9) = v11;
  sub_273D9A79C(v7, v5);
  v17 = objc_allocWithZone(sub_273D82D04(&qword_280926358, &qword_273DA43E0));
  v18 = sub_273DA1C4C();
  [v16 addChildViewController_];
  v19 = sub_273D9A900();
  if (!v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v19;
  v21 = sub_273D9A8E8();
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21;
  [v20 addSubview_];

  [v18 didMoveToParentViewController_];
  v23 = sub_273D9A8E8();

  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_273D82D04(&qword_280926360, &qword_273DA43E8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_273DA4340;
  v25 = sub_273D9A8E8();

  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = [v25 topAnchor];

  v27 = sub_273D9A900();
  if (!v27)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = sub_273D9A8CC();
  *(v24 + 32) = v30;
  v31 = sub_273D9A8E8();

  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = [v31 bottomAnchor];

  v33 = sub_273D9A900();
  if (!v33)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = sub_273D9A8CC();
  *(v24 + 40) = v36;
  v37 = sub_273D9A8E8();

  if (!v37)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = [v37 leadingAnchor];

  v39 = sub_273D9A900();
  if (!v39)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = v39;
  v41 = [v39 leadingAnchor];

  v42 = sub_273D9A8CC();
  *(v24 + 48) = v42;
  v43 = sub_273D9A8E8();

  if (!v43)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = [v43 trailingAnchor];

  v45 = sub_273D9A900();
  if (v45)
  {
    v46 = v45;
    v47 = objc_opt_self();
    v48 = [v46 trailingAnchor];

    v49 = [v44 constraintEqualToAnchor_];
    *(v24 + 56) = v49;
    sub_273D9A800();
    v50 = sub_273DA240C();

    [v47 activateConstraints_];

    [v16 setModalInPresentation_];
    sub_273D9A844(v7);
    return;
  }

LABEL_23:
  __break(1u);
}

id WelcomeUIViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_273DA239C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WelcomeUIViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WelcomeUIViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_273D9A79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_273D9A800()
{
  result = qword_280926368;
  if (!qword_280926368)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280926368);
  }

  return result;
}

uint64_t sub_273D9A844(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_273D9A8CC()
{

  return [v0 (v2 + 3941)];
}

id sub_273D9A8E8()
{

  return [v0 (v1 + 2808)];
}

id sub_273D9A900()
{

  return [v0 (v1 + 2808)];
}

id sub_273D9A918(uint64_t a1, char a2)
{
  swift_setAtReferenceWritableKeyPath();

  return v3;
}

id static WelcomeMicaView.Asset.layer(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return a1;
}

id static WelcomeMicaView.Asset.layers(lightMode:darkMode:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  v3 = a1;

  return a2;
}

void static WelcomeMicaView.Asset.url(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_273DA172C();
  sub_273D8AF94();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_273D9AAEC();
  (*(v6 + 16))(v9, a1, v4);
  sub_273DA23AC();
  sub_273D9B6AC();
  sub_273D9B6B8();
  v14 = sub_273D9AB30(v10, v11, v12, v13);
  if (v14)
  {
    v16 = sub_273D9ACF8(v14);
    v15 = -1;
    if (v18 == -1)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      v15 = v18 & 1;
      *a2 = v16;
      *(a2 + 8) = v17;
    }
  }

  else
  {
    sub_273D9B6DC();
  }

  *(a2 + 16) = v15;
}

unint64_t sub_273D9AAEC()
{
  result = qword_280926370;
  if (!qword_280926370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280926370);
  }

  return result;
}

id sub_273D9AB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_273DA16FC();
  v7 = sub_273DA239C();

  if (a4)
  {
    v8 = sub_273DA233C();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_273DA172C();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_273DA16BC();

    swift_willThrow();
    v15 = sub_273DA172C();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

id sub_273D9ACF8(void *a1)
{
  v2 = [a1 rootLayer];
  if (v2)
  {
    v3 = v2;
    KeyPath = swift_getKeyPath();
    v5 = sub_273D9A918(KeyPath, [a1 isGeometryFlipped]);
  }

  else
  {

    return 0;
  }

  return v5;
}

void static WelcomeMicaView.Asset.urls(lightMode:darkMode:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_273DA172C();
  sub_273D8AF94();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v30[-v13];
  sub_273D9AAEC();
  v15 = *(v8 + 16);
  v15(v14, a1, v6);
  sub_273DA23AC();
  sub_273D9B6AC();
  sub_273D9B6B8();
  v20 = sub_273D9AB30(v16, v17, v18, v19);
  if (!v20)
  {
    goto LABEL_4;
  }

  v15(v12, a2, v6);
  sub_273DA23AC();
  sub_273D9B6AC();
  sub_273D9B6B8();
  v25 = sub_273D9AB30(v21, v22, v23, v24);
  if (!v25)
  {

LABEL_4:
    sub_273D9B6DC();
    goto LABEL_5;
  }

  v27 = sub_273D9AF58(v20, v25);
  v26 = -1;
  if (v29 == -1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    v26 = v29 & 1;
    *a3 = v27;
    *(a3 + 8) = v28;
  }

LABEL_5:
  *(a3 + 16) = v26;
}

id sub_273D9AF58(void *a1, void *a2)
{
  v4 = [a1 rootLayer];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [a2 rootLayer];
  if (!v6)
  {

LABEL_5:
    return 0;
  }

  v7 = v6;
  KeyPath = swift_getKeyPath();
  v9 = sub_273D9A918(KeyPath, [a1 isGeometryFlipped]);

  v10 = swift_getKeyPath();
  sub_273D9A918(v10, [a2 isGeometryFlipped]);

  return v9;
}

void static WelcomeMicaView.Asset.asset(_:in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  objc_allocWithZone(MEMORY[0x277D74218]);

  v8 = sub_273D9B514(a1, a2, a3);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = sub_273D9AAEC();
  v11 = [v9 data];
  v12 = sub_273DA174C();
  v14 = v13;

  sub_273DA23AC();
  sub_273D9B6AC();
  v17 = sub_273D9B1AC(v12, v14, v15, v16, 0);
  if (!v17)
  {

LABEL_4:
    sub_273D9B6DC();
LABEL_5:
    *(a4 + 16) = v18;
    return;
  }

  sub_273D9ACF8(v17);
  sub_273D9B6C8();
  v20 = v14 & ~v19;

  if (v20)
  {
    v18 = v12 & 1;
    *a4 = v10;
    *(a4 + 8) = 0;
    goto LABEL_5;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = v14;
}

id sub_273D9B1AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = sub_273DA173C();
  v9 = sub_273DA239C();

  if (a5)
  {
    v10 = sub_273DA233C();
  }

  else
  {
    v10 = 0;
  }

  v15[0] = 0;
  v11 = [swift_getObjCClassFromMetadata() packageWithData:v8 type:v9 options:v10 error:v15];

  if (v11)
  {
    v12 = v15[0];
  }

  else
  {
    v13 = v15[0];
    sub_273DA16BC();

    swift_willThrow();
  }

  sub_273D8CC88(a1, a2);
  return v11;
}

void static WelcomeMicaView.Asset.assets(lightMode:darkMode:in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  objc_allocWithZone(MEMORY[0x277D74218]);

  v12 = a5;
  v13 = sub_273D9B514(a1, a2, v12);
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = v13;
  v15 = sub_273D9AAEC();
  v16 = [v14 data];
  v17 = sub_273DA174C();
  v19 = v18;

  sub_273DA23AC();
  sub_273D9B6AC();
  v22 = sub_273D9B1AC(v17, v19, v20, v21, 0);
  v23 = v22;
  v38 = v15;
  if (!v22)
  {
    goto LABEL_3;
  }

  v25 = objc_allocWithZone(MEMORY[0x277D74218]);
  v26 = v12;

  v27 = sub_273D9B514(a3, a4, v26);
  if (!v27)
  {

    goto LABEL_4;
  }

  v28 = v27;
  v29 = [v27 data];
  v30 = sub_273DA174C();
  v32 = v31;

  sub_273DA23AC();
  sub_273D9B6AC();
  v35 = sub_273D9B1AC(v30, v32, v33, v34, 0);
  if (!v35)
  {

LABEL_3:
    v23 = v14;
LABEL_4:

LABEL_5:
    sub_273D9B6DC();
LABEL_6:
    *(a6 + 16) = v24;
    return;
  }

  sub_273D9AF58(v23, v35);
  sub_273D9B6C8();
  v37 = 0x79EB3000 & ~v36;

  if (v37)
  {
    v24 = v23 & 1;
    *a6 = v38;
    *(a6 + 8) = 0;
    goto LABEL_6;
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0x79EB3000u;
}

id sub_273D9B514(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_273DA239C();

  v6 = [v3 initWithName:v5 bundle:a3];

  return v6;
}

__n128 sub_273D9B584(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_273D9B5AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_273D9B5F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

id sub_273D9B65C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isGeometryFlipped];
  *a2 = result;
  return result;
}

id sub_273D9B6E8(void *a1, id a2, uint64_t (*a3)(id), double a4, double a5)
{
  [a2 setContentsGravity_];
  [a2 setMasksToBounds_];
  [a2 setFillMode_];
  [a1 bounds];
  if (v11 != 0.0 || v10 != 0.0)
  {
    [a1 bounds];
    a4 = v12;
    a5 = v13;
  }

  sub_273D9B7F4(a4, a5);
  [a1 addSublayer_];
  result = [a1 setNeedsDisplay];
  if (a3)
  {
    return a3(result);
  }

  return result;
}

void sub_273D9B7F4(double a1, double a2)
{
  [v2 bounds];
  if (v6 != 0.0 || v5 != 0.0)
  {
    v7 = sub_273D9BABC(0, &qword_280926380, 0x277CD9FF0);
    v8 = v2;

    sub_273D88CE4(a1, a2, v7, v8);
  }
}

id sub_273D9B890(void *a1, double a2, double a3)
{
  [a1 setPosition_];
  [a1 bounds];
  v7 = a2 / v6;
  [a1 bounds];
  v9 = a3 / v8;
  if (a3 / v8 >= v7)
  {
    v9 = v7;
  }

  CATransform3DMakeScale(&v11, v9, v9, 1.0);
  return [a1 setTransform_];
}

uint64_t sub_273D9B930()
{
  v1 = [v0 states];
  if (!v1 || (v2 = v1, v3 = sub_273DA241C(), v2, v4 = sub_273D9B9B0(v3), , !v4))
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_273D9B9B0(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_273DA25AC();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_273D99904(v3, v5);
    sub_273D9BABC(0, &qword_280926378, 0x277CD9FA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_273DA258C();
    sub_273DA25BC();
    sub_273DA25CC();
    sub_273DA259C();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_273D9BABC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t WelcomeVideoView.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_273D82D04(&qword_280926388, &qword_273DA4550);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_273DA172C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *(type metadata accessor for WelcomeVideoView(0) + 20);
  *(a2 + v14) = 0;
  sub_273D9BDCC(a1, a2);
  sub_273D9BDCC(a1, v6);
  if (sub_273D82FAC(v6, 1, v7) == 1)
  {
    sub_273D9BE3C(a1);
    return sub_273D9BE3C(v6);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v16 = [objc_opt_self() defaultManager];
    sub_273DA171C();
    v17 = sub_273DA239C();

    v18 = [v16 fileExistsAtPath_];

    if (v18)
    {
      sub_273D9BEA4();
      (*(v8 + 16))(v11, v13, v7);
      v19 = sub_273D9BEE8(v11);
      sub_273D9BE3C(a1);
      result = (*(v8 + 8))(v13, v7);
      *(a2 + v14) = v19;
    }

    else
    {
      sub_273D9BE3C(a1);
      return (*(v8 + 8))(v13, v7);
    }
  }

  return result;
}

uint64_t type metadata accessor for WelcomeVideoView(uint64_t a1)
{
  result = qword_2809263A8;
  if (!qword_2809263A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_273D9BDCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280926388, &qword_273DA4550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D9BE3C(uint64_t a1)
{
  v2 = sub_273D82D04(&qword_280926388, &qword_273DA4550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_273D9BEA4()
{
  result = qword_280926390;
  if (!qword_280926390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280926390);
  }

  return result;
}

id sub_273D9BEE8(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_273DA16FC();
  v4 = [v2 initWithURL_];

  v5 = sub_273DA172C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

double WelcomeVideoView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for WelcomeVideoView(0) + 20));
  if (v3)
  {
    *(swift_allocObject() + 16) = v3;
    v4 = v3;
  }

  sub_273D82D04(&qword_280926398, &qword_273DA4558);
  sub_273D9C070();
  sub_273DA1C5C();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  return result;
}

unint64_t sub_273D9C070()
{
  result = qword_2809263A0;
  if (!qword_2809263A0)
  {
    sub_273D832AC(&qword_280926398, &qword_273DA4558);
    sub_273D8F6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809263A0);
  }

  return result;
}

uint64_t sub_273D9C0FC(void *a1)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 play];
}

uint64_t sub_273D9C1A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273D9C214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D82D04(&qword_280926388, &qword_273DA4550);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_273D82FAC(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_273D9C2EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_273D82D04(&qword_280926388, &qword_273DA4550);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_273D83074(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_273D9C3A0(uint64_t a1)
{
  sub_273D9C45C(319, &qword_2809263B8, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_273D9C45C(319, &qword_2809263C0, sub_273D9BEA4);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_273D9C45C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_273DA24FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_273D9C4B4()
{
  result = qword_2809263C8;
  if (!qword_2809263C8)
  {
    sub_273D832AC(&qword_2809263D0, &qword_273DA45D8);
    sub_273D9C070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809263C8);
  }

  return result;
}

uint64_t WelcomeIconImageView.init(image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_getKeyPath();
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = a1;
  return result;
}

uint64_t WelcomeIconImageView.init(_:)@<X0>(uint64_t a3@<X8>)
{
  *(a3 + 8) = swift_getKeyPath();
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = sub_273DA219C();
  *a3 = result;
  return result;
}

uint64_t WelcomeIconImageView.init(systemName:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_273D82D04(&qword_2809263D8, &qword_273DA4608);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  *(a3 + 8) = swift_getKeyPath();
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  sub_273DA214C();
  sub_273DA1C2C();
  v7 = sub_273DA1C3C();
  sub_273D83074(v6, 0, 1, v7);
  v8 = sub_273DA216C();

  result = sub_273D9C9FC(v6);
  *a3 = v8;
  return result;
}

double WelcomeIconImageView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v27 = sub_273DA1B6C();
  sub_273D8AF94();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_273DA215C();
  sub_273D8AF94();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  (*(v10 + 104))(v13, *MEMORY[0x277CE0FE0], v8);
  v17 = sub_273DA218C();
  (*(v10 + 8))(v13, v8);
  if (v16 == 1)
  {
    v28 = v14;
    v29 = v15;
  }

  else
  {

    sub_273DA24BC();
    v18 = sub_273DA1E2C();
    sub_273DA17BC();

    sub_273DA1B5C();
    swift_getAtKeyPath();
    sub_273D83480(v14, v15, 0);
    v19 = *(v4 + 8);
    v20 = v17;
    v21 = v27;
    v19(v7, v27);
    v26 = v31;

    sub_273DA24BC();
    v22 = sub_273DA1E2C();
    sub_273DA17BC();

    sub_273DA1B5C();
    swift_getAtKeyPath();
    sub_273D83480(v14, v15, 0);
    v23 = v21;
    v17 = v20;
    v19(v7, v23);
  }

  sub_273DA22DC();
  sub_273DA18EC();
  *&v30[6] = v31;
  *&v30[22] = v32;
  *&v30[38] = v33;
  v24 = *&v30[16];
  *(a1 + 18) = *v30;
  *a1 = v17;
  *(a1 + 8) = 0;
  *(a1 + 16) = 257;
  *(a1 + 34) = v24;
  result = *&v30[32];
  *(a1 + 50) = *&v30[32];
  *(a1 + 64) = *&v30[46];
  return result;
}

uint64_t sub_273D9C9FC(uint64_t a1)
{
  v2 = sub_273D82D04(&qword_2809263D8, &qword_273DA4608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_273D9CA8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_273D9CAA0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_273D9CAE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_273D9CB38()
{
  result = qword_2809263E0;
  if (!qword_2809263E0)
  {
    sub_273D832AC(&qword_2809263E8, ",C");
    sub_273D89B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809263E0);
  }

  return result;
}

id sub_273D9CBF8()
{
  _s15WelcomeKitClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280927838 = result;
  return result;
}

uint64_t sub_273D9CC50()
{
  v0 = sub_273DA172C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_273DA16CC();
  sub_273D9880C(v4, qword_280927840);
  v5 = sub_273D833F0(v4, qword_280927840);
  if (qword_280925818 != -1)
  {
    swift_once();
  }

  v6 = qword_280927838;
  v7 = [v6 bundleURL];

  sub_273DA170C();
  (*(v1 + 32))(v5, v3, v0);
  return (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277CC9118], v4);
}

uint64_t sub_273D9CDF0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_273D9CE08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_273D9CE24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_273D9CE64(uint64_t result, int a2, int a3)
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

uint64_t sub_273D9CEDC()
{
  sub_273D82D04(&qword_2809263F0, qword_273DA47C0);
  sub_273D86338(&qword_2809263F8, &qword_2809263F0, qword_273DA47C0, MEMORY[0x277CE1198]);
  return sub_273DA1C6C();
}

__n128 sub_273D9CF94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_273D9CFA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_273D9CFE8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_273D9D098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v59 = a2;
  v57 = sub_273DA1A2C();
  sub_273D8AF94();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_273D82D04(&qword_280926410, &qword_273DA4868);
  sub_273D8AF94();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v53 = sub_273D82D04(&qword_280926418, &qword_273DA4870);
  MEMORY[0x28223BE20](v53);
  v54 = &v52 - v13;
  v14 = sub_273DA1D3C();
  sub_273D8AF94();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_273D82D04(&qword_280926420, &qword_273DA4878);
  sub_273D8AF94();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  if (*v2)
  {
    sub_273DA1A1C();
    v25 = sub_273D82D04(&qword_280926428, &qword_273DA4880);
    sub_273D9D7D4();
    v29 = sub_273D86338(v26, v27, &qword_273DA4880, v28);
    sub_273D9D7F0();
    v32 = v4;
    v33 = sub_273D9D5E4(v30, v31, MEMORY[0x277CDDA90]);
    v34 = v57;
    sub_273DA1FBC();
    (*(v32 + 8))(v7, v34);
    v35 = v58;
    (*(v9 + 16))(v54, v12, v58);
    swift_storeEnumTagMultiPayload();
    sub_273D9D820();
    v38 = sub_273D9D5E4(v36, v37, MEMORY[0x277CDE338]);
    v60 = v25;
    v61 = v14;
    v62 = v29;
    v63 = v38;
    sub_273D9D808();
    swift_getOpaqueTypeConformance2();
    v60 = v25;
    v61 = v34;
    v62 = v29;
    v63 = v33;
    swift_getOpaqueTypeConformance2();
    sub_273DA1C5C();
    return (*(v9 + 8))(v12, v35);
  }

  else
  {
    sub_273DA1D2C();
    v40 = sub_273D82D04(&qword_280926428, &qword_273DA4880);
    sub_273D9D7D4();
    v44 = sub_273D86338(v41, v42, &qword_273DA4880, v43);
    sub_273D9D820();
    v47 = sub_273D9D5E4(v45, v46, MEMORY[0x277CDE338]);
    sub_273DA1FBC();
    (*(v16 + 8))(v19, v14);
    v48 = v56;
    (*(v21 + 16))(v54, v24, v56);
    swift_storeEnumTagMultiPayload();
    v60 = v40;
    v61 = v14;
    v62 = v44;
    v63 = v47;
    sub_273D9D808();
    swift_getOpaqueTypeConformance2();
    sub_273D9D7F0();
    v51 = sub_273D9D5E4(v49, v50, MEMORY[0x277CDDA90]);
    v60 = v40;
    v61 = v57;
    v62 = v44;
    v63 = v51;
    swift_getOpaqueTypeConformance2();
    sub_273DA1C5C();
    return (*(v21 + 8))(v24, v48);
  }
}

uint64_t sub_273D9D5E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_273D9D630()
{
  result = qword_280926440;
  if (!qword_280926440)
  {
    sub_273D832AC(&qword_280926448, &qword_273DA4888);
    sub_273D832AC(&qword_280926428, &qword_273DA4880);
    sub_273DA1D3C();
    sub_273D86338(&qword_280926430, &qword_280926428, &qword_273DA4880, MEMORY[0x277CE04B0]);
    sub_273D9D5E4(&qword_280925C28, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
    swift_getOpaqueTypeConformance2();
    sub_273DA1A2C();
    sub_273D9D5E4(&qword_280926438, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926440);
  }

  return result;
}

id sub_273D9D838(id result, uint64_t a2, char a3, double a4)
{
  if (result)
  {
    if (a3)
    {
      LODWORD(a4) = 1.0;
      return [v4 setState:result ofLayer:a2 transitionSpeed:a4];
    }

    else
    {
      return [v4 setState:result ofLayer:{a2, a4}];
    }
  }

  return result;
}

uint64_t sub_273D9D878(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_273DA261C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_273D9D89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_273D82D04(&qword_2809262B8, &unk_273DA4200);
  v10 = sub_273D8D8A8(v9);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_273D8F510(a3, v25 - v11, &qword_2809262B8, &unk_273DA4200);
  v13 = sub_273DA246C();
  v14 = sub_273D82FAC(v12, 1, v13);

  if (v14 == 1)
  {
    sub_273D884D0(v12, &qword_2809262B8, &unk_273DA4200);
  }

  else
  {
    sub_273DA245C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_273DA242C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_273DA23BC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_273D884D0(a3, &qword_2809262B8, &unk_273DA4200);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_273D884D0(a3, &qword_2809262B8, &unk_273DA4200);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_273D9DB7C()
{
  v1 = sub_273DA1B6C();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_273D82D04(&qword_280926450, &qword_273DA48A0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = sub_273DA185C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v14 = *v0;
  v13 = *(v0 + 8);
  v15 = *(v0 + 16);
  v16 = type metadata accessor for WelcomeMicaView(0);
  sub_273D8F510(v0 + *(v16 + 20), v6, &qword_280926450, &qword_273DA48A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v36 = v7;
  v34 = v13;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v8 + 32))(v12, v6, v7);
    sub_273DA121C(v14, v13, v15);
  }

  else
  {
    sub_273DA121C(v14, v13, v15);
    sub_273DA24BC();
    v18 = sub_273DA1E2C();
    sub_273DA17BC();

    sub_273DA1B5C();
    swift_getAtKeyPath();

    (*(v32 + 8))(v3, v33);
  }

  v19 = v14;
  v20 = v35;
  if (v15)
  {
    v21 = *(v8 + 104);
    v22 = v36;
    v21(v35, *MEMORY[0x277CDF3D0], v36);
    v23 = v19;
    v24 = sub_273DA184C();
    v25 = *(v8 + 8);
    v25(v20, v22);
    if (v24)
    {
      v25(v12, v22);
      sub_273D9E76C(v19, v34, 1);
    }

    else
    {

      v21(v20, *MEMORY[0x277CDF3C0], v22);
      v27 = v34;
      v28 = v34;
      v29 = sub_273DA184C();
      v25(v20, v22);
      if (v29)
      {
        v25(v12, v22);
        sub_273D9E76C(v19, v27, 1);
        return v27;
      }

      else
      {

        v30 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
        v25(v12, v22);
        sub_273D9E76C(v19, v27, 1);
        return v30;
      }
    }
  }

  else
  {
    (*(v8 + 8))(v12, v36);
  }

  return v19;
}

uint64_t WelcomeMicaView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = type metadata accessor for WelcomeMicaView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_273D9E704(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_273D9E7C4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_273D9E828;
  a1[1] = v7;
  return result;
}

uint64_t type metadata accessor for WelcomeMicaView(uint64_t a1)
{
  result = qword_280926470;
  if (!qword_280926470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_273D9E0F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for WelcomeMicaView(0);
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_273D82D04(&qword_2809264A8, &qword_273DA4960);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v8 = sub_273D82D04(&qword_2809264B0, &qword_273DA4968);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - v9;
  v48 = sub_273D82D04(&qword_2809264B8, &qword_273DA4970);
  MEMORY[0x28223BE20](v48);
  v11 = &v42 - v10;
  v12 = sub_273D82D04(&qword_2809264C0, &qword_273DA4978);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v42 - v13;
  sub_273DA244C();
  v49 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_273D9DB7C();
  if (v14)
  {
    v15 = v14;
    v43 = v5;
    v16 = v15;
    sub_273DA191C();
    v18 = v17;
    v20 = v19;
    sub_273D9E704(a1, &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v44 = v8;
    v21 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v22 = swift_allocObject();
    sub_273D9E7C4(&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v23 = sub_273D9BABC(0, &qword_2809264C8, 0x277CD9ED0);
    v24 = swift_allocObject();
    v24[2] = v16;
    v24[3] = v18;
    v24[4] = v20;
    v24[5] = sub_273DA126C;
    v24[6] = v22;
    sub_273DA18DC();
    sub_273D9E704(a1, &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = swift_allocObject();
    sub_273D9E7C4(&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v21);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_273DA03BC;
    *(v26 + 24) = v25;
    v27 = v43;
    v28 = &v7[*(v43 + 36)];
    *v28 = sub_273DA03F8;
    v28[1] = v26;
    v28[2] = 0;
    v28[3] = 0;
    v52 = v16;
    sub_273D9E704(a1, &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = swift_allocObject();
    sub_273D9E7C4(&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v21);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_273DA126C;
    *(v30 + 24) = v29;
    v31 = sub_273DA05AC();
    v32 = sub_273DA0664();
    v33 = v46;
    v34 = v27;
    sub_273DA20DC();

    sub_273D884D0(v7, &qword_2809264A8, &qword_273DA4960);
    v35 = v47;
    v36 = v44;
    (*(v47 + 16))(v11, v33, v44);
    swift_storeEnumTagMultiPayload();
    v52 = v34;
    v53 = v23;
    v54 = v31;
    v55 = v32;
    swift_getOpaqueTypeConformance2();
    v37 = v50;
    sub_273DA1C5C();

    (*(v35 + 8))(v33, v36);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v38 = sub_273D9BABC(255, &qword_2809264C8, 0x277CD9ED0);
    v39 = sub_273DA05AC();
    v40 = sub_273DA0664();
    v52 = v5;
    v53 = v38;
    v54 = v39;
    v55 = v40;
    swift_getOpaqueTypeConformance2();
    v37 = v50;
    sub_273DA1C5C();
  }

  sub_273DA06CC(v37, v51);
}

uint64_t sub_273D9E704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeMicaView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_273D9E76C(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_273D9E7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeMicaView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D9E828@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WelcomeMicaView(0);
  sub_273D8D8A8(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_273D9E0F0(v5, a1);
}

void sub_273D9E8A4()
{
  v1 = v0;
  v2 = type metadata accessor for WelcomeMicaView(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_273D82D04(&qword_2809262B8, &unk_273DA4200);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_273D9DB7C();
  if (v9)
  {
    v40 = v9;
    v10 = [v9 superlayer];
    if (v10)
    {

      v11 = sub_273D9B930();
      if (sub_273D9D878(v11))
      {
        v39 = v3;
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2743DE070](0, v11);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v12 = *(v11 + 32);
        }

        v13 = v12;

        v14 = (v1 + v2[8]);
        v16 = *v14;
        v15 = v14[1];
        v42 = *v14;
        v43 = v15;
        sub_273D82D04(&qword_2809264F0, &qword_273DA4988);
        sub_273DA21CC();
        v17 = v41;
        if (v41)
        {
        }

        else
        {
          v19 = objc_allocWithZone(MEMORY[0x277CD9FB8]);
          v20 = [v19 initWithLayer_];
          v42 = v16;
          v43 = v15;
          v41 = v20;
          sub_273DA21DC();
          v42 = v16;
          v43 = v15;
          sub_273DA21CC();
          v21 = v41;
          if (v41)
          {
            v22 = v13;
            sub_273D9D838(v13, v40, 0, v23);
          }

          else
          {
          }
        }

        v3 = v39;
      }

      else
      {
      }

      v24 = sub_273D9B930();
      v25 = sub_273D9D878(v24);

      if (v25 >= 2)
      {
        v26 = v1 + v2[7];
        v27 = *v26;
        v28 = *(v26 + 8);
        LOBYTE(v42) = *v26;
        v43 = v28;
        sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
        sub_273DA21CC();
        if ((v41 & 1) == 0)
        {
          LOBYTE(v42) = v27;
          v43 = v28;
          LOBYTE(v41) = 1;
          sub_273DA21DC();
          v29 = (v1 + v2[6]);
          v30 = *v29;
          v31 = v29[1];
          v42 = *v29;
          v43 = v31;
          sub_273D82D04(&qword_2809264F8, &qword_273DA4990);
          sub_273DA21CC();
          if (v41)
          {
            sub_273DA247C();
          }

          v32 = sub_273DA246C();
          sub_273D83074(v8, 1, 1, v32);
          sub_273D9E704(v1, &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_273DA244C();
          v33 = sub_273DA243C();
          v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v35 = swift_allocObject();
          v36 = MEMORY[0x277D85700];
          *(v35 + 16) = v33;
          *(v35 + 24) = v36;
          sub_273D9E7C4(v5, v35 + v34);
          v37 = sub_273D9D89C(0, 0, v8, &unk_273DA49A0, v35);
          v42 = v30;
          v43 = v31;
          v41 = v37;
          sub_273DA21DC();
        }
      }
    }

    else
    {
      v18 = v40;
    }
  }
}

uint64_t sub_273D9ECD8(void (*a1)(uint64_t))
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t WelcomeMicaView.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WelcomeMicaView(0);
  sub_273D86380();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v21 = a1[1];
  v22 = v9;
  v10 = *(a1 + 16);
  v11 = *(v6 + 20);
  *&v8[v11] = swift_getKeyPath();
  sub_273D82D04(&qword_280926450, &qword_273DA48A0);
  swift_storeEnumTagMultiPayload();
  v12 = &v8[v4[6]];
  v23 = 0;
  sub_273D82D04(&qword_280926458, &qword_273DA48D8);
  sub_273DA21BC();
  v13 = v25;
  *v12 = v24;
  *(v12 + 1) = v13;
  v14 = &v8[v4[7]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v8[v4[8]];
  v23 = 0;
  sub_273D82D04(&qword_280926460, &qword_273DA48E0);
  sub_273DA21BC();
  v17 = v24;
  v16 = v25;
  *v15 = v24;
  *(v15 + 1) = v16;
  if (v10 == 255)
  {
    sub_273D884D0(&v8[v11], &qword_280926468, &qword_273DA48E8);

    return sub_273D83074(a2, 1, 1, v4);
  }

  else
  {
    v18 = v21;
    *v8 = v22;
    *(v8 + 1) = v18;
    v8[16] = v10 & 1;
    sub_273D9E704(v8, a2);
    sub_273D83074(a2, 0, 1, v4);
    return sub_273D9FF10(v8);
  }
}

uint64_t sub_273D9EF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_273DA244C();
  v4[5] = sub_273DA243C();
  v6 = sub_273DA242C();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_273D9F000, v6, v5);
}

uint64_t sub_273D9F000()
{
  sub_273DA1320();
  v1 = *(v0 + 32);
  v2 = (v1 + *(type metadata accessor for WelcomeMicaView(0) + 28));
  v3 = *v2;
  *(v0 + 81) = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 64) = v4;
  *(v0 + 24) = v4;
  sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
  sub_273DA21CC();
  if (*(v0 + 80) == 1)
  {
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    sub_273DA12BC(v5);

    return sub_273D9F2E8();
  }

  else
  {

    sub_273DA1314();

    return v7();
  }
}

uint64_t sub_273D9F0F8()
{
  sub_273DA1320();
  v1 = *v0;
  v2 = *v0;
  sub_273DA1280();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_273D9F20C, v5, v4);
}

uint64_t sub_273D9F20C()
{
  sub_273DA1320();
  *(v0 + 16) = *(v0 + 81);
  *(v0 + 24) = *(v0 + 64);
  sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
  sub_273DA21CC();
  if (*(v0 + 80) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    sub_273DA12BC(v1);

    return sub_273D9F2E8();
  }

  else
  {

    sub_273DA1314();

    return v3();
  }
}

uint64_t sub_273D9F2E8()
{
  v1[15] = v0;
  v2 = sub_273DA25DC();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v3 = sub_273DA25EC();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  sub_273DA244C();
  v1[23] = sub_273DA243C();
  v5 = sub_273DA242C();
  v1[24] = v5;
  v1[25] = v4;

  return MEMORY[0x2822009F8](sub_273D9F444, v5, v4);
}

uint64_t sub_273D9F444()
{
  v1 = sub_273D9DB7C();
  *(v0 + 208) = v1;
  if (!v1)
  {

    goto LABEL_32;
  }

  v2 = sub_273D9B930();
  *(v0 + 216) = v2;
  v3 = sub_273D9D878(v2);
  v5 = 0;
  *(v0 + 224) = v3;
  for (i = 1; ; i = 0)
  {
    v7 = *(v0 + 216);
    if (v5 == v3)
    {
      v18 = *(v0 + 208);

      goto LABEL_31;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2743DE070](v5);
    }

    else
    {
      if (v5 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        return MEMORY[0x2822009F8](v3, v7, v4);
      }

      v8 = *(v7 + 8 * v5 + 32);
    }

    v9 = v8;
    *(v0 + 232) = v8;
    *(v0 + 240) = v5 + 1;
    v10 = type metadata accessor for WelcomeMicaView(0);
    sub_273DA134C(v10);
    sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
    sub_273DA21CC();
    if (*(v0 + 33) != 1)
    {
      v18 = *(v0 + 208);

LABEL_31:

LABEL_32:

      sub_273DA1314();
      sub_273DA1378();

      __asm { BRAA            X1, X16 }
    }

    if ((i & 1) == 0)
    {
      goto LABEL_37;
    }

    *(v0 + 88) = *(*(v0 + 120) + *(v10 + 32));
    sub_273D82D04(&qword_2809264F0, &qword_273DA4988);
    sub_273DA21CC();
    v11 = *(v0 + 112);
    if (v11)
    {
      v12 = [*(v0 + 112) stateOfLayer_];
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_273D9B930();
    v14 = v13;
    if (v13 >> 62)
    {
      break;
    }

    v3 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_25;
    }

LABEL_14:
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x2743DE070](0, v14);
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v15 = *(v14 + 32);
    }

    v16 = v15;

    if (v12)
    {
      if (!v16)
      {
        goto LABEL_35;
      }

      sub_273D9BABC(0, &qword_280926378, 0x277CD9FA8);
      v17 = sub_273DA24EC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (v16)
    {
      goto LABEL_36;
    }

LABEL_26:

    v3 = *(v0 + 224);
    v5 = 1;
  }

  v3 = sub_273DA261C();
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_25:

  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_35:
  v16 = v12;
LABEL_36:

LABEL_37:
  *(v0 + 56) = *(*(v0 + 120) + *(v10 + 32));
  sub_273D82D04(&qword_2809264F0, &qword_273DA4988);
  sub_273DA21CC();
  v21 = *(v0 + 104);
  if (v21)
  {
    v22 = *(v0 + 208);
    v23 = v9;
    sub_273D9D838(v9, v22, 1, v24);
  }

  sub_273DA26DC();
  sub_273DA1290(xmmword_273DA4890);
  sub_273DA1378();

  return MEMORY[0x2822009F8](v3, v7, v4);
}

uint64_t sub_273D9F7AC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_273DA12FC();
  v6 = sub_273DA11D4(v4, v5, MEMORY[0x277D85930]);
  sub_273DA26BC();
  sub_273DA12E4();
  sub_273DA11D4(v7, v8, MEMORY[0x277D85920]);
  sub_273DA25FC();
  v9 = *(v2 + 8);
  v0[31] = v9;
  v0[32] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  v10 = swift_task_alloc();
  v0[33] = v10;
  *v10 = v0;
  v10[1] = sub_273D9F910;
  v12 = v0[19];
  v11 = v0[20];

  return MEMORY[0x2822008C8](v12, v0 + 2, v11, v6);
}

uint64_t sub_273D9F910()
{
  sub_273DA13A0();
  sub_273DA1394();
  v3 = v2;
  v4 = *v1;
  sub_273DA1280();
  *v5 = v4;

  if (v0)
  {
    v6 = v3[31];
    v7 = v3[19];
    v8 = v3[16];

    v6(v7, v8);
    v9 = sub_273D9FDAC;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v13 = v3[21];
    v12 = v3[22];
    v14 = v3[20];
    (v3[31])(v3[19], v3[16]);
    (*(v13 + 8))(v12, v14);
    v10 = v3[24];
    v11 = v3[25];
    v9 = sub_273D9FA74;
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_273D9FA74()
{
  for (i = *(v0 + 240); ; i = 1)
  {
    v4 = *(v0 + 216);
    if (i == *(v0 + 224))
    {
      v14 = *(v0 + 208);

      goto LABEL_30;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x2743DE070](i);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v1 = *(v4 + 8 * i + 32);
    }

    v5 = v1;
    *(v0 + 232) = v1;
    *(v0 + 240) = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return MEMORY[0x2822009F8](v1, v4, v2);
    }

    v6 = type metadata accessor for WelcomeMicaView(0);
    sub_273DA134C(v6);
    sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
    sub_273DA21CC();
    if (*(v0 + 33) != 1)
    {
      v14 = *(v0 + 208);

LABEL_30:

      sub_273DA1314();
      sub_273DA1378();

      __asm { BRAA            X1, X16 }
    }

    if (i)
    {
      goto LABEL_35;
    }

    *(v0 + 88) = *(*(v0 + 120) + *(v6 + 32));
    sub_273D82D04(&qword_2809264F0, &qword_273DA4988);
    sub_273DA21CC();
    v7 = *(v0 + 112);
    if (v7)
    {
      v8 = [*(v0 + 112) stateOfLayer_];
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_273D9B930();
    v10 = v9;
    if (v9 >> 62)
    {
      break;
    }

    v1 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_25;
    }

LABEL_14:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2743DE070](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v11 = *(v10 + 32);
    }

    v12 = v11;

    if (v8)
    {
      if (!v12)
      {
        goto LABEL_33;
      }

      sub_273D9BABC(0, &qword_280926378, 0x277CD9FA8);
      v13 = sub_273DA24EC();

      if ((v13 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v12)
    {
      goto LABEL_34;
    }

LABEL_26:
  }

  v1 = sub_273DA261C();
  if (v1)
  {
    goto LABEL_14;
  }

LABEL_25:

  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_33:
  v12 = v8;
LABEL_34:

LABEL_35:
  *(v0 + 56) = *(*(v0 + 120) + *(v6 + 32));
  sub_273D82D04(&qword_2809264F0, &qword_273DA4988);
  sub_273DA21CC();
  v17 = *(v0 + 104);
  if (v17)
  {
    v18 = *(v0 + 208);
    v19 = v5;
    sub_273D9D838(v5, v18, 1, v20);
  }

  sub_273DA26DC();
  sub_273DA1290(xmmword_273DA4890);
  sub_273DA1378();

  return MEMORY[0x2822009F8](v1, v4, v2);
}

uint64_t sub_273D9FDAC()
{
  sub_273DA1320();
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[24];
  v2 = v0[25];

  return MEMORY[0x2822009F8](sub_273DA1274, v1, v2);
}

uint64_t sub_273D9FE44(uint64_t a1)
{
  v2 = sub_273DA185C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_273DA1ABC();
}

uint64_t sub_273D9FF10(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeMicaView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_273D9FF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D82D04(&qword_280926468, &qword_273DA48E8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_273D82FAC(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_273DA0078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_273D82D04(&qword_280926468, &qword_273DA48E8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_273D83074(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_273DA0130(uint64_t a1)
{
  sub_273DA0224(319);
  if (v1 <= 0x3F)
  {
    sub_273DA02CC(319, &qword_280926488, &qword_280926458, &qword_273DA48D8);
    if (v2 <= 0x3F)
    {
      sub_273DA027C();
      if (v3 <= 0x3F)
      {
        sub_273DA02CC(319, &qword_280926490, &qword_280926460, &qword_273DA48E0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_273DA0224(uint64_t a1)
{
  if (!qword_280926480)
  {
    sub_273DA185C();
    v1 = sub_273DA186C();
    if (!v2)
    {
      atomic_store(v1, &qword_280926480);
    }
  }
}

void sub_273DA027C()
{
  if (!qword_2809260D8)
  {
    v0 = sub_273DA21FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2809260D8);
    }
  }
}

void sub_273DA02CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_273D832AC(a3, a4);
    v5 = sub_273DA21FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_273DA0364()
{
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_273DA03C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273DA0400()
{
  type metadata accessor for WelcomeMicaView(0);
  sub_273D973B8();
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = (v3 + 16) & ~v3;
  v7 = v1 + v6;
  sub_273D9E76C(*(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16));
  v8 = *(v0 + 20);
  sub_273D82D04(&qword_280926450, &qword_273DA48A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_273DA185C();
    sub_273D86380();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v6 + v5, v3 | 7);
}

void sub_273DA0554()
{
  v0 = type metadata accessor for WelcomeMicaView(0);
  sub_273D8D8A8(v0);
  sub_273D9E8A4();
}

unint64_t sub_273DA05AC()
{
  result = qword_2809264D0;
  if (!qword_2809264D0)
  {
    sub_273D832AC(&qword_2809264A8, &qword_273DA4960);
    sub_273D86338(&qword_2809264D8, &qword_2809264E0, &qword_273DA4980, MEMORY[0x277CDF660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809264D0);
  }

  return result;
}

unint64_t sub_273DA0664()
{
  result = qword_2809264E8;
  if (!qword_2809264E8)
  {
    sub_273D9BABC(255, &qword_2809264C8, 0x277CD9ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809264E8);
  }

  return result;
}

uint64_t sub_273DA06CC(uint64_t a1, uint64_t a2)
{
  sub_273D82D04(&qword_2809264C0, &qword_273DA4978);
  sub_273D86380();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_273DA0734(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_273DA082C;

  return v6(a1);
}

uint64_t sub_273DA082C()
{
  sub_273DA1320();
  sub_273DA1394();
  v1 = *v0;
  sub_273DA1280();
  *v2 = v1;

  sub_273DA1314();

  return v3();
}

uint64_t sub_273DA0910()
{
  sub_273DA13A0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_273DA25DC();
  *(v1 + 64) = v12;
  *(v1 + 72) = *(v12 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;

  return MEMORY[0x2822009F8](sub_273DA0A0C, 0, 0);
}

uint64_t sub_273DA0A0C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_273DA25EC();
  sub_273DA12FC();
  v7 = sub_273DA11D4(v5, v6, MEMORY[0x277D85930]);
  sub_273DA26BC();
  sub_273DA12E4();
  sub_273DA11D4(v8, v9, MEMORY[0x277D85920]);
  sub_273DA25FC();
  v10 = *(v3 + 8);
  v0[12] = v10;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_273DA0B7C;
  v12 = v0[11];

  return MEMORY[0x2822008C8](v12, v0 + 2, v4, v7);
}

uint64_t sub_273DA0B7C()
{
  sub_273DA13A0();
  sub_273DA1394();
  v3 = v2;
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[8];
  v7 = *v1;
  sub_273DA1280();
  *v8 = v7;
  v3[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_273DA0D24, 0, 0);
  }

  else
  {

    sub_273DA1314();

    return v9();
  }
}

uint64_t sub_273DA0D24()
{
  sub_273DA1320();

  sub_273DA1314();

  return v0();
}

uint64_t sub_273DA0D88()
{
  type metadata accessor for WelcomeMicaView(0);
  sub_273D973B8();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = v1 + v4;
  sub_273D9E76C(*(v1 + v4), *(v1 + v4 + 8), *(v1 + v4 + 16));
  v8 = *(v0 + 20);
  sub_273D82D04(&qword_280926450, &qword_273DA48A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_273DA185C();
    sub_273D86380();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_273DA0EE4()
{
  sub_273DA13A0();
  v2 = v1;
  v3 = type metadata accessor for WelcomeMicaView(0);
  sub_273D8D8A8(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  v9 = sub_273DA1368(v8);
  *v9 = v10;
  v9[1] = sub_273DA0FC4;

  return sub_273D9EF68(v2, v6, v7, v0 + v5);
}

uint64_t sub_273DA0FC4()
{
  sub_273DA1320();
  sub_273DA1394();
  v1 = *v0;
  sub_273DA1280();
  *v2 = v1;

  sub_273DA1314();

  return v3();
}

uint64_t sub_273DA10A4()
{
  v0 = swift_task_alloc();
  v1 = sub_273DA1368(v0);
  *v1 = v2;
  v3 = sub_273DA132C(v1);

  return v4(v3);
}

uint64_t sub_273DA113C()
{
  v0 = swift_task_alloc();
  v1 = sub_273DA1368(v0);
  *v1 = v2;
  v3 = sub_273DA132C(v1);

  return v4(v3);
}

uint64_t sub_273DA11D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_273DA121C(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

uint64_t (*sub_273DA1290(__n128 a1))()
{
  *(v1 + 72) = a1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  return sub_273D9F7AC;
}

uint64_t sub_273DA134C(uint64_t result)
{
  v3 = (v1 + *(result + 28));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v2 + 40) = v4;
  *(v2 + 48) = v5;
  return result;
}

uint64_t WelcomeAction.WelcomeActionType.hashValue.getter()
{
  v1 = *v0;
  sub_273DA26FC();
  MEMORY[0x2743DE210](v1);
  return sub_273DA271C();
}

uint64_t WelcomeAction.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_273DA1494@<X0>(char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a3;

  result = sub_273DA23FC();
  *(a4 + 8) = result;
  *(a4 + 16) = v6;
  return result;
}

unint64_t sub_273DA14F4()
{
  result = qword_280926510;
  if (!qword_280926510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926510);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WelcomeAction.WelcomeActionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x273DA1624);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}