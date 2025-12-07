void sub_B3088()
{
  v1 = [v0 view];
  [v1 setUserInteractionEnabled:0];

  v2 = objc_allocWithZone(type metadata accessor for LoadingViewController());
  v3 = sub_BBD88(2);

  sub_B17F8(v3);
}

void sub_B3100()
{
  v1 = [v0 view];
  [v1 setUserInteractionEnabled:1];

  sub_B17F8(0);
}

id sub_B31F8(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HalfSheetPageViewController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for HalfSheetPageViewController(uint64_t a1)
{
  result = qword_19EC90;
  if (!qword_19EC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B3314(uint64_t a1)
{
  result = type metadata accessor for HalfSheetPageDestination(319);
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

uint64_t sub_B33D8()
{
  v1 = sub_9A0C4();
  v2(v1);
  sub_9F94();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_B342C()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_B34E0()
{

  return type metadata accessor for HalfSheetPageViewController(0);
}

uint64_t sub_B34FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1 == 0x6853726564616568 && a2 == 0xEB00000000666C65;
  if (v4 || (sub_13C144() & 1) != 0 || (a1 == 0x656C746974627573 ? (v7 = a2 == 0xED0000666C656853) : (v7 = 0), v7 || (sub_13C144() & 1) != 0 || (a1 == 0x6465747065636361 ? (v10 = a2 == 0xED0000726566664FLL) : (v10 = 0), v10 || (sub_13C144() & 1) != 0 || (a1 == 0xD000000000000015 ? (v11 = 0x8000000000150AE0 == a2) : (v11 = 0), v11 || (sub_13C144() & 1) != 0 || (v14._countAndFlagsBits = 0xD000000000000013, v14._object = 0x8000000000150B00, sub_13BBD4(v14)) || (v15._countAndFlagsBits = 0xD000000000000011, v15._object = 0x8000000000150B20, sub_13BBD4(v15)) || (a1 == 0x776F4E746F6ELL ? (v12 = a2 == 0xE600000000000000) : (v12 = 0), v12 || (result = sub_13C144(), (result & 1) != 0))))))
  {
    sub_139F34();
    a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
    a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
    v8 = swift_allocObject();
    *a3 = v8;
    return memcpy((v8 + 16), __src, 0x58uLL);
  }

  else
  {
    a3[3] = &type metadata for HardwareOffersSheetLayout.BodySpacing;
    a3[4] = &off_18ABA0;
  }

  return result;
}

uint64_t sub_B3970@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_B3A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_B3970(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_B3AC0()
{
  sub_3C04(v0 + 2);
  sub_3C04(v0 + 7);
  sub_3C04(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_B3B28()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t type metadata accessor for IconBulletList(uint64_t a1)
{
  result = qword_19ED00;
  if (!qword_19ED00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B3C18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v6 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - v7;
  v9 = sub_13B584();
  v79 = *(v9 - 8);
  v80 = v9;
  __chkstk_darwin(v9);
  sub_18B60();
  __chkstk_darwin(v10);
  sub_18B60();
  __chkstk_darwin(v11);
  sub_18B60();
  __chkstk_darwin(v12);
  v14 = &v68 - v13;
  v15 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  v19 = type metadata accessor for IconBulletList(0);
  sub_9F94();
  __chkstk_darwin(v20);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v78 = swift_initStackObject();
  v86 = a2;
  v81 = a2;
  v23 = sub_9DD0();
  if (v3)
  {

    v23 = 0;
  }

  v76 = v23;
  *v22 = v23;
  __chkstk_darwin(v23);
  *(&v68 - 2) = v86;
  v75 = sub_9DD0();
  *(v22 + 1) = v75;
  v24 = sub_BB310();
  v70 = 0;
  *&v83 = v24;
  *(&v83 + 1) = v25;
  sub_13BFB4();
  v69 = a1;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_7738(v14, v86, v26);
  if (sub_52E0(v8, 1, v15) == 1)
  {
    sub_928C(v8, &qword_19A420, &unk_13F430);
LABEL_6:
    sub_13BAB4();
    sub_B4A24();
    v29 = sub_B4698(v27, v28, &protocol conformance descriptor for JSONError);
    sub_9F18(v29);
    *v30 = 0xD000000000000011;
    v30[1] = 0x800000000014E730;
    v30[2] = v19;
    sub_2B538();
    (*(v31 + 104))();
    swift_willThrow();
    v32 = sub_B4A74();
    v33(v32);

    v34 = sub_13B7A4();
    sub_53A8(v18, 1, 1, v34);
    v35 = 0;
    goto LABEL_8;
  }

  v36 = sub_B4A74();
  v37(v36);
  sub_92E4(v8, v18);
  v35 = v70;
LABEL_8:
  sub_92E4(v18, &v22[*(v19 + 36)]);
  v38 = v72;
  v39 = v69;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_11:
    v35 = v38;
    sub_13BAB4();
    sub_B4A24();
    sub_B4698(v40, v41, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v42 = 0x6575676573;
    v42[1] = 0xE500000000000000;
    v42[2] = v19;
    sub_2B538();
    (*(v43 + 104))();
    swift_willThrow();
    v74(v38, v80);

    sub_B4A8C();
    goto LABEL_12;
  }

  sub_139BC4();
  if (v35)
  {

    sub_18BAC();
    sub_928C(v82, &unk_19E320, &unk_140950);
    goto LABEL_11;
  }

  v74(v38, v80);
  sub_9414(v82, &v83);
LABEL_12:
  v44 = &v22[*(v19 + 40)];
  v45 = v84;
  *v44 = v83;
  *(v44 + 1) = v45;
  *(v44 + 4) = v85;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_15:
    sub_13BAB4();
    sub_B4A24();
    v48 = sub_B4698(v46, v47, &protocol conformance descriptor for JSONError);
    sub_9F18(v48);
    *v49 = 0x656C746974627573;
    v49[1] = 0xE800000000000000;
    v49[2] = v19;
    sub_2B538();
    (*(v50 + 104))();
    swift_willThrow();
    v51 = sub_B4A5C();
    v52(v51);

    sub_B4A8C();
    goto LABEL_16;
  }

  sub_139DB4();
  if (v35)
  {

    sub_18BAC();
    sub_928C(v82, &qword_19E960, &qword_13FD30);
    goto LABEL_15;
  }

  v64 = sub_B4A5C();
  v65(v64);
  sub_9414(v82, &v83);
LABEL_16:
  v53 = v84;
  *(v22 + 1) = v83;
  *(v22 + 2) = v53;
  *(v22 + 6) = v85;
  v54 = v73;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v55 = v86;
    sub_139DB4();
    if (!v35)
    {
      v66 = sub_B4A3C();
      MEMORY[0x656C746974](v66);
      MEMORY[0x656C746974](v54, v39);
      sub_9414(v82, &v83);
      sub_9414(&v83, (v22 + 56));
      sub_B46E0(v22, v71);
      sub_13B5A4();
      sub_9F94();
      (*(v67 + 8))(v55);
      sub_B4744(v22);
      return;
    }

    sub_18BAC();
    sub_928C(v82, &qword_19E960, &qword_13FD30);
  }

  sub_13BAB4();
  sub_B4A24();
  v58 = sub_B4698(v56, v57, &protocol conformance descriptor for JSONError);
  sub_9F18(v58);
  *v59 = 0x656C746974;
  v59[1] = 0xE500000000000000;
  v59[2] = v19;
  sub_2B538();
  (*(v60 + 104))();
  swift_willThrow();

  v61 = sub_B4A3C();
  MEMORY[0x656C746974](v61);
  MEMORY[0x656C746974](v54, v39);
  v62 = v70;
  sub_13B5A4();
  sub_9F94();
  (*(v63 + 8))(v86);

  if (!v62)
  {
    sub_928C((v22 + 16), &qword_19E960, &qword_13FD30);
    sub_9238((v22 + 96));
    sub_928C(&v22[*(v19 + 36)], &qword_19A350, &unk_13F2C0);
    sub_928C(&v22[*(v19 + 40)], &unk_19E320, &unk_140950);
  }
}

uint64_t sub_B4698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_B46E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconBulletList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B4744(uint64_t a1)
{
  v2 = type metadata accessor for IconBulletList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B47B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 36);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_B485C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 36);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_B48E8(uint64_t a1)
{
  sub_248A0(319, &qword_19AE30, &type metadata accessor for Artwork);
  if (v1 <= 0x3F)
  {
    sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
    if (v2 <= 0x3F)
    {
      sub_18A28();
      if (v3 <= 0x3F)
      {
        sub_248A0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
        if (v4 <= 0x3F)
        {
          sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_B4A74()
{
  result = v0;
  *(v1 - 296) = *(*(v1 - 256) + 8);
  return result;
}

double sub_B4A8C()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t sub_B4AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_19EDA0, &qword_147C38);
  sub_B5010();

  if (v9[0])
  {
    swift_getKeyPath();
    sub_B5010();

    sub_B5D04(v9[0], v9[0], a3);
  }

  swift_getKeyPath();
  sub_B5010();

  if (v8)
  {
    sub_9414(&v7, v9);
    (*(&stru_158.size + (swift_isaMask & **(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_subtitleLabel))))(v9, a3);
    sub_3C04(v9);
  }

  else
  {
    sub_2519C(&v7);
  }

  v5 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_titleLabel);
  swift_getKeyPath();
  sub_B5010();

  (*(&stru_158.size + (swift_isaMask & *v5)))(v9, a3);
  return sub_3C04(v9);
}

uint64_t sub_B4CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for IconBulletListComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_B4D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for IconBulletListComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_B4D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_B4DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_B4E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_B4EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_B4FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_B5010()
{

  return sub_13B5E4();
}

id sub_B5028(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_139A34();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_9EC0();
  v16 = v15 - v14;
  if (_UISolariumEnabled())
  {
    (*(v12 + 104))(v16, enum case for FlagKeys.Solarium(_:), v10);
    sub_139A24();
    (*(v12 + 8))(v16, v10);
  }

  v17 = OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_artworkView;
  v18 = objc_allocWithZone(sub_139CF4());
  *&v5[v17] = sub_139CE4();
  v19 = OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_subtitleLabel;
  sub_139BB4();
  v20 = objc_opt_self();
  v21 = [v20 ams_secondaryText];
  v22 = sub_13A2A4();
  v34 = v22;
  v35 = &protocol witness table for FontSource;
  *sub_CC08(v33) = UIFontTextStyleSubheadline;
  v23 = *(*(v22 - 8) + 104);
  v23();
  v24 = UIFontTextStyleSubheadline;
  *&v5[v19] = sub_139BA4();
  v25 = OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_titleLabel;
  v26 = [v20 ams_primaryText];
  v34 = v22;
  v35 = &protocol witness table for FontSource;
  v27 = sub_CC08(v33);
  *v27 = v24;
  v27[1] = *&UIFontWeightBold;
  v28 = enum case for FontUseCase.preferredFontDerivative(_:);
  v29 = sub_13A3E4();
  (*(*(v29 - 8) + 104))(v27, v28, v29);
  (v23)(v27, enum case for FontSource.useCase(_:), v22);
  *&v5[v25] = sub_139BA4();
  swift_weakInit();
  v32.receiver = v5;
  v32.super_class = type metadata accessor for IconBulletListComponent();
  v30 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  [v30 setUserInteractionEnabled:0];
  sub_B5C30();

  return v30;
}

uint64_t sub_B53C0()
{
  v1 = sub_13A314();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for IconBulletListComponent();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v8 = [v0 contentView];
  [v8 bounds];
  sub_1D3D0();

  if (qword_19A008 != -1)
  {
    sub_B6404(&qword_19A008);
  }

  sub_B6450();
  sub_1D3D0();
  sub_B5E14(v15);
  v9 = [v0 contentView];
  sub_B6424(v10, v11, v12, v13, v9);

  (*(v3 + 8))(v7, v1);
  return sub_B63B0(v15);
}

uint64_t sub_B5578(double a1, double a2, float a3, float a4)
{
  v5 = sub_13A514();
  sub_9E94();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_9EC0();
  v11 = v10 - v9;
  if (qword_19A008 != -1)
  {
    sub_B6404(&qword_19A008);
  }

  sub_13BE64();
  sub_B6478();
  sub_B5E14(v17);
  v12 = [v4 contentView];
  v13 = [v12 traitCollection];
  sub_13BDE4();

  v14 = [v12 traitCollection];
  sub_13BDE4();

  v15 = [v12 traitCollection];
  [v15 layoutDirection];

  sub_13BE64();
  sub_B6478();
  sub_B686C();
  sub_13A464();
  sub_B6478();

  (*(v7 + 8))(v11, v5);
  sub_13BE74();
  sub_B6478();
  return sub_B63B0(v17);
}

uint64_t sub_B5894(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for IconBulletListComponent();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  sub_4ACC4();
  (*(v2 + 320))();
  sub_4ACC4();
  (*(v3 + 392))();
  sub_4ACC4();
  return (*(v4 + 392))();
}

uint64_t sub_B59F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_13A314();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for IconBulletListComponent();
  objc_msgSendSuper2(&v21, "traitCollectionDidChange:", a1);
  v11 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_artworkView];
  v12 = sub_B5F44();
  (*(&stru_68.reloff + (swift_isaMask & *v11)))(v12);
  v13 = [v2 contentView];
  [v13 bounds];
  sub_1D3D0();

  if (qword_19A008 != -1)
  {
    sub_B6404(&qword_19A008);
  }

  sub_B6450();
  sub_1D3D0();
  sub_B5E14(v20);
  v14 = [v2 contentView];
  sub_B6424(v15, v16, v17, v18, v14);

  (*(v6 + 8))(v10, v4);
  return sub_B63B0(v20);
}

void sub_B5C30()
{
  v1 = [v0 contentView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_artworkView]];

  v2 = [v0 contentView];
  [v2 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_subtitleLabel]];

  v3 = [v0 contentView];
  [v3 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_titleLabel]];
}

double sub_B5D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_artworkView);
  v8 = sub_B5F44();
  (*(&stru_68.reloff + (swift_isaMask & *v7)))(v8);
  sub_139C94();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  v10 = *(&stru_108.offset + (swift_isaMask & *v7));

  v10(v9, a3);

  return result;
}

id sub_B5E14@<X0>(double *a2@<X8>)
{
  v4 = sub_B5F44();
  v6 = v5;
  if (qword_19A010 != -1)
  {
    swift_once();
  }

  v7 = qword_19EDC8;
  *(a2 + 6) = &type metadata for CGFloat;
  *(a2 + 7) = &protocol witness table for CGFloat;
  a2[3] = 0.0;
  *(a2 + 11) = &type metadata for CGFloat;
  *(a2 + 12) = &protocol witness table for CGFloat;
  a2[8] = 0.0;
  *(a2 + 16) = &type metadata for CGFloat;
  *(a2 + 17) = &protocol witness table for CGFloat;
  a2[13] = 0.0;
  *a2 = v4;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  v8 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_artworkView);
  *(a2 + 21) = sub_139CF4();
  *(a2 + 22) = protocol witness table for UIView;
  *(a2 + 18) = v8;
  v9 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_subtitleLabel);
  v10 = sub_139BB4();
  *(a2 + 26) = v10;
  v11 = sub_270D8();
  *(a2 + 23) = v9;
  v15 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin23IconBulletListComponent_titleLabel);
  *(a2 + 31) = v10;
  *(a2 + 32) = v11;
  *(a2 + 27) = v11;
  *(a2 + 28) = v15;
  v12 = v8;
  v13 = v9;

  return v15;
}

double sub_B5F44()
{
  v1 = sub_139A34();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v8 = [v0 traitCollection];
  v9 = sub_13BDE4();

  if (v9)
  {
    return 60.0;
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v7, enum case for FlagKeys.Solarium(_:), v1);
    v11 = sub_139A24();
    (*(v3 + 8))(v7, v1);
    if (v11)
    {
      return 38.0;
    }
  }

  return 40.0;
}

id sub_B60C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IconBulletListComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_B6188()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (result && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), (v5 & 1) != 0))
  {
    v6 = xmmword_147CA0;
    v7 = 0.0;
  }

  else
  {
    v6 = xmmword_147CB0;
    v7 = 12.0;
  }

  qword_19EDA8 = *&v7;
  unk_19EDB0 = v6;
  qword_19EDC0 = v6;
  return result;
}

uint64_t sub_B62AC()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 16.0, (v5 & 1) == 0))
  {
    v6 = 14.0;
  }

  qword_19EDC8 = *&v6;
  return result;
}

uint64_t sub_B6404(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_B6424(__n128 a1, __n128 a2, __n128 a3, __n128 a4, void *a5)
{

  return sub_B6484(a5, v6, v7, v8, v9);
}

double sub_B6450()
{

  sub_13BE34();
  return result;
}

uint64_t sub_B6484(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_13A514();
  sub_9E94();
  v35 = v9;
  v36 = v8;
  __chkstk_darwin(v8);
  sub_9EC0();
  v12 = v11 - v10;
  sub_13A314();
  sub_9E94();
  v37 = v14;
  v38 = v13;
  __chkstk_darwin(v13);
  sub_9EC0();
  v17 = v16 - v15;
  v18 = sub_139A34();
  sub_9E94();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_9EC0();
  v24 = v23 - v22;
  swift_getObjectType();
  v25 = [a1 traitCollection];
  v26 = [v25 layoutDirection];

  v27 = [a1 traitCollection];
  v28 = sub_13BDE4();

  v29 = sub_3001C();
  if (v26)
  {
    CGRectGetMaxX(*&v29);
  }

  else
  {
    CGRectGetMinX(*&v29);
  }

  if (!_UISolariumEnabled())
  {
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(v20 + 104))(v24, enum case for FlagKeys.Solarium(_:), v18);
  v33 = sub_139A24();
  (*(v20 + 8))(v24, v18);
  if (((v33 | v28) & 1) == 0)
  {
LABEL_8:
    v39.origin.x = sub_3001C();
    CGRectGetMidY(v39);
  }

LABEL_9:
  sub_162F0((v6 + 144), *(v6 + 168));
  sub_13A354();
  sub_B7068(a1, v6);
  sub_13BE34();
  sub_B686C();
  sub_13A474();
  (*(v35 + 8))(v12, v36);
  if ((v28 & 1) == 0)
  {
    v41.origin.x = sub_B72B8();
    CGRectGetWidth(v41);
  }

  sub_13A2D4();
  sub_13A2D4();
  v40.origin.x = sub_B72B8();
  CGRectGetHeight(v40);
  v42.origin.x = sub_B72B8();
  CGRectGetMinX(v42);
  v43.origin.x = sub_B72B8();
  CGRectGetMinY(v43);
  sub_13A2C4();
  return (*(v37 + 8))(v17, v38);
}

uint64_t sub_B686C()
{
  v1 = v0;
  sub_13A4C4();
  sub_9E94();
  v37 = v2;
  v38 = v3;
  __chkstk_darwin(v2);
  sub_9EC0();
  v36 = v5 - v4;
  v32 = sub_13A454();
  sub_9E94();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_9EC0();
  v11 = v10 - v9;
  v12 = sub_13A4B4();
  v34 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_9EC0();
  v35 = v14 - v13;
  sub_4948(&qword_19AFE8, &unk_140260);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v41[0] = v15;
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  v33 = v12;
  sub_13BF64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  sub_13A4F4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  v16 = v0[31];
  v17 = v0[32];
  v18 = sub_162F0(v1 + 28, v1[31]);
  v42 = v16;
  v43 = *(v17 + 8);
  v19 = sub_CC08(v41);
  (*(*(v16 - 8) + 16))(v19, v18, v16);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v31 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v30 = *(v7 + 104);
  v30(v11);
  v29 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v28 = *(v38 + 104);
  v28(v36);
  v20 = v11;
  sub_13A4E4();
  v21 = *(v38 + 8);
  v21(v36, v37);
  v22 = *(v7 + 8);
  v22(v20, v32);
  sub_1D2CC(v39);
  sub_3C04(v41);
  v24 = v1[26];
  v23 = v1[27];
  v25 = sub_162F0(v1 + 23, v24);
  v42 = v24;
  v43 = *(v23 + 8);
  v26 = sub_CC08(v41);
  (*(*(v24 - 8) + 16))(v26, v25, v24);
  sub_4B14((v1 + 3), v39);
  (v30)(v20, v31, v32);
  (v28)(v36, v29, v37);
  sub_13A4E4();
  v21(v36, v37);
  v22(v20, v32);
  sub_1D2CC(v39);
  sub_3C04(v41);
  sub_13A4D4();
  return (*(v34 + 8))(v35, v33);
}

double sub_B6E40(void *a1)
{
  v2 = v1;
  v4 = sub_13A514();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  swift_getObjectType();
  v11 = [a1 traitCollection];
  v12 = sub_13BDE4();

  sub_B7068(a1, v2);
  sub_13BE64();
  sub_B686C();
  sub_13A464();
  v14 = v13;
  (*(v6 + 8))(v10, v4);
  if ((v12 & 1) == 0)
  {
    return v14 + *v2;
  }

  return v14;
}

unint64_t sub_B6FDC()
{
  result = qword_19EE18;
  if (!qword_19EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19EE18);
  }

  return result;
}

double sub_B7068(void *a1, uint64_t a2)
{
  v4 = [a1 traitCollection];
  v5 = sub_13BDE4();

  if (v5)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [a1 traitCollection];
  [v7 layoutDirection];

  return v6;
}

uint64_t sub_B7134(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_B7174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B71E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_B7228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_B72B8()
{
  sub_162F0((v0 + 144), *(v0 + 168));

  sub_13A344();
  return result;
}

__n128 sub_B72F4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v10 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v11 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  v6 = v13;
  v7 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v12[2];
  *(a1 + 48) = v6;
  *(a1 + 56) = v14;
  result = v15;
  *(a1 + 72) = v15;
  return result;
}

void sub_B7504(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{

  v7._rawValue = &off_1846E8;
  v8 = sub_662D4(a1, a2, v7);
  if (v8 == 2)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v9 = sub_139A14();
    sub_4910(v9, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v10 = type metadata accessor for IconBulletListSheetLayout.BodySpacing();
    __dst[3] = v10;
    __dst[0] = v3;

    sub_139984();
    sub_49C8(__dst);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v18._countAndFlagsBits = a1;
    v18._object = a2;
    sub_13BBC4(v18);
    v19._object = 0x800000000014E6F0;
    v19._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v19);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = v10;
    a3[4] = &off_18ADC0;
    *a3 = v3;
  }

  else
  {
    if (v8)
    {
      memcpy(__dst, (v3 + 104), sizeof(__dst));
      v16 = &type metadata for BoxedLayoutCollectionSpacingModel;
      v17 = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      *&v15 = swift_allocObject();
      v11 = (v15 + 16);
      v12 = (v3 + 104);
    }

    else
    {
      memcpy(__dst, (v3 + 16), sizeof(__dst));
      v16 = &type metadata for BoxedLayoutCollectionSpacingModel;
      v17 = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      *&v15 = swift_allocObject();
      v11 = (v15 + 16);
      v12 = (v3 + 16);
    }

    memcpy(v11, v12, 0x58uLL);
    sub_4AB8(__dst, &v13);
    sub_9414(&v15, a3);
  }
}

uint64_t *sub_B77FC()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_C9FC(v0[9], v0[10]);
  sub_C9FC(v1, v2);
  v3 = v0[22];
  v4 = v0[23];
  sub_C9FC(v0[20], v0[21]);
  sub_C9FC(v3, v4);
  return v0;
}

uint64_t sub_B7854()
{
  v0 = sub_B77FC();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_B78A8()
{
  v3[3] = &type metadata for DefaultLayoutCollectionSpacingModel;
  v3[4] = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  memcpy((v0 + 16), __src, 0x58uLL);
  sub_B72F4(v3);
  memcpy((v0 + 104), v3, 0x58uLL);
  return v0;
}

__n128 sub_B79A4@<Q0>(uint64_t a4@<X8>)
{
  v5 = sub_139A34();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v6 + 104))(v8, enum case for FlagKeys.Solarium(_:), v5);
    sub_139A24();
    (*(v6 + 8))(v8, v5);
  }

  sub_B8084(&type metadata for DefaultLayoutCollectionSpacingModel);
  sub_B80C8();
  sub_139F34();
  v9 = *(v8 + 6);
  v10 = *(v8 + 1);
  *a4 = *v8;
  *(a4 + 16) = v10;
  *(a4 + 32) = *(v8 + 2);
  *(a4 + 48) = v9;
  *(a4 + 56) = *(v8 + 56);
  result = *(v8 + 72);
  *(a4 + 72) = result;
  return result;
}

void sub_B7B38(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{

  v7._rawValue = &off_184738;
  v8 = sub_662D4(a1, a2, v7);
  if (v8 == 2)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v9 = sub_139A14();
    sub_4910(v9, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v10 = type metadata accessor for IconBulletListSheetLayout.FooterSpacing();
    v15[3] = v10;
    v15[0] = v3;

    sub_139984();
    sub_49C8(v15);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_13BFE4(42);

    v15[0] = 0xD000000000000018;
    v15[1] = 0x800000000014E6D0;
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    sub_13BBC4(v16);
    v17._object = 0x800000000014E6F0;
    v17._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v17);
    v15[3] = &type metadata for String;
    sub_139984();
    sub_49C8(v15);
    sub_1399F4();

    a3[3] = v10;
    a3[4] = &off_18AD70;
    *a3 = v3;
  }

  else
  {
    if (v8)
    {
      sub_B7984(v15);
    }

    else
    {
      sub_B7994(v15);
    }

    v11 = swift_allocObject();
    memcpy((v11 + 16), v15, 0x58uLL);
    v13 = &type metadata for BoxedLayoutCollectionSpacingModel;
    v14 = &protocol witness table for BoxedLayoutCollectionSpacingModel;
    *&v12 = v11;
    sub_9414(&v12, a3);
  }
}

uint64_t sub_B7E40()
{
  type metadata accessor for IconBulletListSheetLayout.BodySpacing();
  swift_allocObject();
  sub_B78A8();
  type metadata accessor for IconBulletListSheetLayout.FooterSpacing();
  swift_allocObject();
  return sub_139E54();
}

uint64_t sub_B7F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for BoxedLayoutSpacingModel;
  a3[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a3 = swift_allocObject();
  sub_B7E40();
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_B7FDC()
{
  sub_3C04(v0 + 2);
  sub_3C04(v0 + 7);
  sub_3C04(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_B8024()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_B8084@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 168) = a1;
  *(v2 - 160) = v1;
  return v2 - 192;
}

uint64_t ImpressionMetrics.hash(into:)(uint64_t a1, __n128 a2)
{
  v2 = sub_13B764();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13B784();
  sub_B84C4();
  sub_B847C(v8, v9, &protocol conformance descriptor for ImpressionMetrics.ID);
  sub_13BB24();
  return (*(v4 + 8))(v7, v2);
}

uint64_t static ImpressionMetrics.== infix(_:_:)(__n128 a1)
{
  v1 = sub_13B764();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_13B784();
  sub_13B784();
  v10 = sub_13B744();
  v11 = *(v3 + 8);
  v11(v6, v1);
  v11(v9, v1);
  return v10 & 1;
}

Swift::Int ImpressionMetrics.hashValue.getter(__n128 a1)
{
  v1 = sub_13B764();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C214();
  sub_13B784();
  sub_B84C4();
  sub_B847C(v7, v8, &protocol conformance descriptor for ImpressionMetrics.ID);
  sub_13BB24();
  (*(v3 + 8))(v6, v1);
  return sub_13C234();
}

Swift::Int sub_B83F8()
{
  sub_13C214();
  ImpressionMetrics.hash(into:)(v2, v0);
  return sub_13C234();
}

uint64_t sub_B847C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_B84DC()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  result = [v4 deviceIsiPad];
  if ((result & 1) == 0)
  {
    result = _UISolariumEnabled();
    if (result)
    {
      (*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0);
      v6 = sub_139A24();
      result = (*(v1 + 8))(v3, v0);
      if (v6)
      {
        result = [v4 deviceIsiPhone];
        if (result)
        {
          return [objc_opt_self() type];
        }
      }
    }
  }

  return result;
}

uint64_t sub_B86B8(uint64_t a1, uint64_t a2)
{
  v6 = sub_BB310();
  if (!v2)
  {
    v8 = v6;
    v3 = v7;
    v9 = v6 == 0x6D6F74737563 && v7 == 0xE600000000000000;
    if (v9 || (sub_13C144() & 1) != 0)
    {

      sub_BB8B0();
      v3 = v13;
    }

    else
    {
      v14 = v8 == 0x486E6F6974636573 && v3 == 0xED00007265646165;
      if (!v14 && (sub_13C144() & 1) == 0)
      {
        if (v8 == 0x616E794477656976 && v3 == 0xEB0000000063696DLL)
        {
        }

        else
        {
          v16 = sub_13C144();

          if ((v16 & 1) == 0)
          {
            [objc_allocWithZone(NSError) init];
            swift_willThrow();
            goto LABEL_8;
          }
        }

        v3 = 1;
        goto LABEL_8;
      }

      v3 = 0;
    }
  }

LABEL_8:
  sub_13B5A4();
  sub_5224();
  (*(v10 + 8))(a2);
  sub_13B584();
  sub_5224();
  (*(v11 + 8))(a1);
  return v3;
}

uint64_t sub_B8914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_B86B8(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

unint64_t sub_B8958(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184788;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_B89A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B8958(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_B89D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_B8958(a1, a2);
  if (v7 == 3)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v19 = &type metadata for IntelligenceSheetLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_BA024(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_13BBC4(v21);
    v22._object = 0x800000000014E6F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v22);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for IntelligenceSheetLayout.BodySpacing;
    a3[4] = &off_18B1E0;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x108uLL);
    return sub_BA024(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v19 = &type metadata for IntelligenceSheetLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_BA024(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for IntelligenceSheetLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      if (v11 == 1)
      {
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = (v3 + 88);
      }

      else
      {
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = (v3 + 176);
      }
    }

    else
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = v3;
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v18);
  }
}

void *sub_B8EF8@<X0>(void *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v9 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v10 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  v6 = [objc_opt_self() currentDevice];
  [v6 userInterfaceIdiom];

  v9 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v10 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  v9 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v10 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  return memcpy(a1, v11, 0x108uLL);
}

uint64_t sub_B9250(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_1847F0;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_B92A4(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x68537265746F6F66;
  }
}

uint64_t sub_B9370@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B9250(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_B93A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B92A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_B93CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_B9250(a1, a2);
  if (v7 == 2)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v18 = &type metadata for IntelligenceSheetLayout.FooterSpacing;
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v3, 0xB0uLL);
    sub_BA0AC(v3, __dst);
    sub_139984();
    sub_49C8(v17);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    sub_13BBC4(v20);
    v21._object = 0x800000000014E6F0;
    v21._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v21);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for IntelligenceSheetLayout.FooterSpacing;
    a3[4] = &off_18B190;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0xB0uLL);
    return sub_BA0AC(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v18 = &type metadata for IntelligenceSheetLayout.FooterSpacing;
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v3, 0xB0uLL);
    sub_BA0AC(v3, __dst);
    sub_139984();
    sub_49C8(v17);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for IntelligenceSheetLayout.FooterSpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11 & 1;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v13 = swift_allocObject();
      *a3 = v13;
      v14 = (v13 + 16);
      v15 = v3;
    }

    else
    {
      memcpy(__dst, (v3 + 88), 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = (v3 + 88);
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v17);
  }
}

void *sub_B98AC@<X0>(void *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  return memcpy(a1, __src, 0xB0uLL);
}

uint64_t sub_B9CF0@<X0>(uint64_t *a1@<X8>)
{
  sub_B8EF8(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x108uLL);
  sub_B98AC(v6);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v6, 0xB0uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_B9E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_B9CF0(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_B9EAC()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_B9F3C()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_B9FAC()
{
  sub_3C04(v0 + 2);
  sub_3C04(v0 + 7);
  sub_3C04(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_BA05C()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

_BYTE *storeEnumTagSinglePayload for IntelligenceSheetLayout.FooterSpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xBA1B0);
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

_BYTE *storeEnumTagSinglePayload for IntelligenceSheetLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xBA2B4);
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

unint64_t sub_BA2F0()
{
  result = qword_19EFA8;
  if (!qword_19EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19EFA8);
  }

  return result;
}

unint64_t sub_BA348()
{
  result = qword_19EFB0[0];
  if (!qword_19EFB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_19EFB0);
  }

  return result;
}

uint64_t linearInterpolate<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v20[1] = a1;
  v20[2] = a2;
  v20[3] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = *(a4 - 8);
  __chkstk_darwin(v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  __chkstk_darwin(v15);
  v17 = v20 - v16;
  swift_getAssociatedConformanceWitness();
  sub_13C154();
  sub_13C124();
  sub_13C0B4();
  v18 = *(v8 + 8);
  v18(v14, a4);
  sub_13BCF4();
  sub_13BCF4();
  sub_13C0A4();
  v18(v11, a4);
  v18(v14, a4);
  return (v18)(v17, a4);
}

double static CGRect.solvedValue(between:and:forInput:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  MinX = CGRectGetMinX(*&a1);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  v16 = (1.0 - a9) * MinX + CGRectGetMinX(v21) * a9;
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetMinY(v22);
  v23.origin.x = a5;
  v23.origin.y = a6;
  v23.size.width = a7;
  v23.size.height = a8;
  CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetWidth(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetWidth(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetHeight(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetHeight(v27);
  return v16;
}

void sub_BA8DC(CGFloat *a1@<X0>, CGFloat *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = static CGRect.solvedValue(between:and:forInput:)(*a1, a1[1], a1[2], a1[3], *a2, a2[1], a2[2], a2[3], a4);
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
}

uint64_t Interpolator.init(fromValue:toValue:curve:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v15 = type metadata accessor for Interpolator(0, a6, a7, a4);
  v27 = *(a6 - 8);
  v16 = *(v27 + 16);
  v16(&a8[*(v15 + 36)], a1, a6);
  v16(&a8[*(v15 + 40)], a2, a6);
  if (a5)
  {
    switch(a3)
    {
      case 1:
        v17 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseIn];
        break;
      case 2:
        v17 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
        break;
      case 3:
        v17 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
        break;
      default:
        v17 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        break;
    }

    v23 = v17;
  }

  else
  {
    v18 = objc_allocWithZone(CAMediaTimingFunction);
    LODWORD(v20) = HIDWORD(a3);
    LODWORD(v19) = a3;
    LODWORD(v22) = HIDWORD(a4);
    LODWORD(v21) = a4;
    v23 = [v18 initWithControlPoints:v19 :v20 :v21 :v22];
  }

  v24 = v23;
  v25 = *(v27 + 8);
  v25(a2, a6);
  result = (v25)(a1, a6);
  *a8 = v24;
  return result;
}

uint64_t Interpolator.value(forInput:)(uint64_t a1, double a2)
{
  *&a2 = a2;
  [*v2 _solveForInput:a2];
  return (*(*(a1 + 24) + 8))(v2 + *(a1 + 36), v2 + *(a1 + 40), v4);
}

uint64_t sub_BAC3C(uint64_t a1)
{
  result = sub_BB0DC();
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

uint64_t sub_BACC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((*(*(v4 - 8) + 64) + v7 + ((v7 + 8) & ~v7)) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_52E0((a1 + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_BAE60(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64);
  v12 = (v11 + v10 + ((v10 + 8) & ~v10)) & ~v10;
  v13 = v12 + v11;
  v14 = 8 * (v12 + v11);
  v15 = a3 >= v9;
  v16 = a3 - v9;
  if (v16 != 0 && v15)
  {
    if (v13 <= 3)
    {
      v20 = ((v16 + ~(-1 << v14)) >> v14) + 1;
      if (HIWORD(v20))
      {
        v17 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v9 < a2)
  {
    v18 = ~v9 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> v14) + 1;
      if (v13)
      {
        v22 = v18 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v13 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v13] = v19;
        return;
      case 2:
        *&a1[v13] = v19;
        return;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v13] = v19;
        return;
      default:
        return;
    }
  }

  switch(v17)
  {
    case 1:
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_45:
      __break(1u);
      JUMPOUT(0xBB0B4);
    case 4:
      *&a1[v13] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v8 & 0x80000000) != 0)
        {
          v24 = &a1[v10 + 8] & ~v10;

          sub_53A8(v24, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v23 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v23 = (a2 - 1);
          }

          *a1 = v23;
        }
      }

      return;
  }
}

unint64_t sub_BB0DC()
{
  result = qword_19F038;
  if (!qword_19F038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19F038);
  }

  return result;
}

double NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  [v3 layoutDirection];

  return a2;
}

id sub_BB1E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = [objc_opt_self() preferredFontForTextStyle:a1 compatibleWithTraitCollection:0];

    return v4;
  }

  else
  {
    v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [v6 pointSize];
    v8 = [ObjCClassFromMetadata systemFontOfSize:? weight:?];
    v9 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a1];
    v10 = [v9 scaledFontForFont:v8];

    return v10;
  }
}

uint64_t sub_BB310()
{
  sub_BBBDC();
  sub_9E94();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_BBB98();
  if ((sub_13B564() & 1) != 0 || (v3 = sub_13B574(), !v4))
  {
    v5 = sub_13BAB4();
    v8 = sub_677B8();
    v9 = sub_9F18(v8);
    sub_BBBC8(v9, v10);
    sub_9EF8();
    (*(v11 + 104))();
    swift_willThrow();
    v12 = *(v1 + 8);

    v13 = sub_A0B4();
    v12(v13);
  }

  else
  {
    v5 = v3;
    v6 = sub_A0B4();
    v7(v6);
  }

  return v5;
}

uint64_t sub_BB458()
{
  sub_BBBDC();
  sub_9E94();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_BBB98();
  if ((sub_13B564() & 1) != 0 || (v3 = sub_13B534(), v3 == 2))
  {
    v4 = sub_13BAB4();
    v5 = sub_677B8();
    v6 = sub_9F18(v5);
    sub_BBBC8(v6, v7);
    sub_9EF8();
    (*(v8 + 104))();
    swift_willThrow();
    v9 = *(v1 + 8);

    v10 = sub_A0B4();
    v9(v10);
  }

  else
  {
    v4 = v3;
    v11 = sub_A0B4();
    v12(v11);
  }

  return v4 & 1;
}

uint64_t sub_BB5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_4948(&qword_19B778, &qword_141E00);
  __chkstk_darwin(v7 - 8);
  v9 = v22 - v8;
  v10 = sub_13B584();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v22[1] = v3;
    v16 = a3;
    sub_13B544();
    v17 = sub_13BAA4();
    if (sub_52E0(v9, 1, v17) != 1)
    {
      a2 = sub_13BA94();
      (*(*(v17 - 8) + 8))(v9, v17);
      (*(v12 + 8))(v15, v10);
      return a2;
    }

    sub_BB848(v9);
    a3 = v16;
  }

  v18 = sub_13BAB4();
  sub_677B8();
  swift_allocError();
  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  (*(*(v18 - 8) + 104))(v19, enum case for JSONError.missingProperty(_:), v18);
  swift_willThrow();
  v20 = *(v12 + 8);

  v20(v15, v10);
  return a2;
}

uint64_t sub_BB848(uint64_t a1)
{
  v2 = sub_4948(&qword_19B778, &qword_141E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BB8B0()
{
  sub_BBBDC();
  sub_9E94();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_BBB98();
  if (sub_13B564() & 1) != 0 || (sub_13B554(), (v3))
  {
    sub_13BAB4();
    v4 = sub_677B8();
    v5 = sub_9F18(v4);
    sub_BBBC8(v5, v6);
    sub_9EF8();
    (*(v7 + 104))();
    swift_willThrow();
    v8 = *(v1 + 8);

    v9 = sub_A0B4();
    return v8(v9);
  }

  else
  {
    v11 = sub_A0B4();
    return v12(v11);
  }
}

uint64_t sub_BB9E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_13B574();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_BBA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_BBBDC();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_BBB98();
  if (sub_13B564() & 1) != 0 || (v8 = a4(), (v9))
  {
    v10 = sub_13BAB4();
    v11 = sub_677B8();
    v12 = sub_9F18(v11);
    sub_BBBC8(v12, v13);
    sub_9EF8();
    (*(v14 + 104))();
    swift_willThrow();
    v15 = *(v6 + 8);

    v16 = sub_A0B4();
    v15(v16);
  }

  else
  {
    v10 = v8;
    v17 = sub_A0B4();
    v18(v17);
  }

  return v10;
}

uint64_t sub_BBB98()
{

  return sub_13B594();
}

void *sub_BBBC8(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v4;
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

uint64_t sub_BBBDC()
{

  return sub_13B584();
}

BOOL sub_BBC00()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (((v2 - 1) & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    return 0;
  }

  [v0 contentSize];
  return v4 >= 400.0;
}

uint64_t sub_BBC90()
{
  [v0 contentSize];

  return sub_B84DC();
}

BOOL sub_BBCC4()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (((v2 - 1) & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    return 0;
  }

  v4 = [v0 window];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;

  return v7 >= 400.0;
}

id sub_BBD88(char a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_activityIndicator;
  v4 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v4 setActivityIndicatorViewStyle:100];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_loadingView;
  *&v1[v5] = [objc_allocWithZone(AMSUICommonView) init];
  v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_style] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for LoadingViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void sub_BBE44()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_activityIndicator;
  v2 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v2 setActivityIndicatorViewStyle:100];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_loadingView;
  *(v0 + v3) = [objc_allocWithZone(AMSUICommonView) init];
  sub_13C094();
  __break(1u);
}

id sub_BBF60()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v5 = [v2 navigationItem];

      return v5;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for LoadingViewController();
  v3 = objc_msgSendSuper2(&v6, "navigationItem");

  return v3;
}

void sub_BC024(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LoadingViewController();
  objc_msgSendSuper2(&v5, "loadView");
  v2 = [v1 view];
  v3 = [objc_opt_self() ams_clear];
  [v2 setBackgroundColor:v3];

  v4 = [v1 view];
  [v4 setUserInteractionEnabled:0];
}

void sub_BC138(uint64_t a1)
{
  v2.receiver = v1;
  v2.super_class = type metadata accessor for LoadingViewController();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  sub_BC2C0();
}

void sub_BC1B8(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for LoadingViewController();
  objc_msgSendSuper2(&v12, "viewWillLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_loadingView];
  v3 = [v1 view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
}

void sub_BC2C0()
{
  v1 = [v0 navigationItem];
  [v1 ams_configureWithTransparentBackground];

  sub_BC508();

  sub_BC31C();
}

void sub_BC31C()
{
  v1 = v0;
  v2 = [v0 view];
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_activityIndicator;
  [v2 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_activityIndicator]];

  v4 = *&v1[v3];
  sub_12BB38(0, 0, 1);

  [*&v1[v3] startAnimating];
  [*&v1[v3] setAlpha:0.0];
  v5 = dbl_1484F8[v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_style]];
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_BCAB8;
  v10[5] = v7;
  sub_BCAE0();
  sub_BCAC8();
  v10[2] = v8;
  v10[3] = &unk_18B538;
  v9 = _Block_copy(v10);

  [v6 animateWithDuration:0 delay:v9 options:0 animations:0.5 completion:v5];
  _Block_release(v9);
}

void sub_BC48C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_activityIndicator);

    [v3 setAlpha:1.0];
  }
}

void sub_BC508()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 view];
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_loadingView;
  [v2 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_loadingView]];

  v4 = v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_style];
  if (v4 == 2)
  {
    v6 = &selRef_ams_dim;
    goto LABEL_9;
  }

  if (v4 == 1)
  {
    v6 = &selRef_ams_defaultPlatformBackgroundColor;
LABEL_9:
    v7 = *&v0[v3];
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 *v6];
    [v9 setBackgroundColor:v10];

    [*&v0[v3] setAlpha:0.0];
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = ObjectType;
    v16[4] = sub_BCA98;
    v16[5] = v13;
    sub_BCAE0();
    sub_BCAC8();
    v16[2] = v14;
    v16[3] = &unk_18B510;
    v15 = _Block_copy(v16);

    [v11 animateWithDuration:0 delay:v15 options:0 animations:0.5 completion:0.0];
    _Block_release(v15);
    return;
  }

  if (!v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_style])
  {
    v5 = *&v0[v3];

    [v5 setAlpha:0.0];
  }
}

void sub_BC70C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_loadingView);
    v4 = 1.0;
    if (!v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin21LoadingViewController_style])
    {
      v4 = 0.0;
    }

    [v3 setAlpha:v4];
  }
}

id sub_BC828(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LoadingViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

_BYTE *storeEnumTagSinglePayload for LoadingViewController.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xBC998);
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

unint64_t sub_BC9D4()
{
  result = qword_19F080;
  if (!qword_19F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F080);
  }

  return result;
}

uint64_t sub_BCA28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_BCA60()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_BCAA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_BCB24()
{
  v0 = sub_139A14();
  sub_7E5D8(v0, qword_1B2B00);
  sub_4910(v0, qword_1B2B00);
  return sub_139A04();
}

void sub_BCBA0(uint64_t a1)
{
  v4 = sub_C14F0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_C08D0(v4, 1, sub_58ABC);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  sub_13A4F4();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_BCCD0(uint64_t a1)
{
  v4 = sub_C14F0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_C08D0(v4, 1, sub_58D58);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_C151C();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_BCD8C(uint64_t a1)
{
  v4 = sub_C14F0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_C08D0(v4, 1, sub_58E18);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_C151C();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_BCE74(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_C094C(v10, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(&dword_10 + v12) + 32, (*(&dword_18 + v12) >> 1) - *(&dword_10 + v12), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

id sub_BCF34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingDynamicUIPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_BCF8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingDynamicUIPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_BCFE4()
{
  result = sub_BD004();
  qword_1B2B18 = result;
  return result;
}

void *sub_BD004()
{
  sub_4948(&qword_1A0B00, &unk_147390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_148530;
  type metadata accessor for ChannelLinkAction(0);
  sub_C0C80(&qword_19DE88, type metadata accessor for ChannelLinkAction, &unk_145990);
  sub_C0C80(&qword_19F148, type metadata accessor for ChannelLinkAction, &unk_1459B8);
  sub_139CD4();
  swift_allocObject();
  *(inited + 32) = sub_139CC4();
  swift_allocObject();
  *(inited + 40) = sub_139CC4();
  type metadata accessor for DelegateAction(0);
  sub_C0C80(&qword_19E3F0, type metadata accessor for DelegateAction, &unk_146210);
  sub_C0C80(&qword_19F150, type metadata accessor for DelegateAction, &unk_146238);
  swift_allocObject();
  *(inited + 48) = sub_139CC4();
  type metadata accessor for PromptLocationAction(0);
  sub_C0C80(&qword_19F158, type metadata accessor for PromptLocationAction, &unk_14A1A0);
  sub_C0C80(&qword_19F160, type metadata accessor for PromptLocationAction, &unk_14A1C8);
  swift_allocObject();
  *(inited + 56) = sub_139CC4();
  type metadata accessor for PromptNotificationAction(0);
  sub_C0C80(&qword_19F168, type metadata accessor for PromptNotificationAction, &unk_14A410);
  sub_C0C80(&qword_19F170, type metadata accessor for PromptNotificationAction, &unk_14A438);
  swift_allocObject();
  *(inited + 64) = sub_139CC4();
  type metadata accessor for UpdateGranularSettingsAction(0);
  sub_C0C80(&qword_19F178, type metadata accessor for UpdateGranularSettingsAction, &unk_14D420);
  sub_C0C80(&qword_19F180, type metadata accessor for UpdateGranularSettingsAction, &unk_14D448);
  swift_allocObject();
  *(inited + 72) = sub_139CC4();
  sub_BCE74(inited, sub_624D0, sub_C0B0C);
  type metadata accessor for PurchaseIntentAction(0);
  sub_C0C80(&qword_19F188, type metadata accessor for PurchaseIntentAction, &unk_14A510);
  sub_C0C80(&qword_19F190, type metadata accessor for PurchaseIntentAction, &unk_14A538);
  swift_allocObject();
  sub_139CC4();
  sub_13BC04();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_13BC34();
  }

  sub_13BC54();
  type metadata accessor for ExternalAuthenticationAction(0);
  sub_C0C80(&qword_19E638, type metadata accessor for ExternalAuthenticationAction, &unk_146660);
  sub_C0C80(&qword_19F198, type metadata accessor for ExternalAuthenticationAction, &unk_1466E8);
  swift_allocObject();
  sub_139CC4();
  sub_13BC04();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_13BC34();
  }

  sub_13BC54();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_BD80C()
{
  v2 = sub_C1508();
  v3(v2);
  swift_allocObject();
  sub_4948(v1, v0);
  swift_allocObject();
  return sub_139F64();
}

uint64_t sub_BD898()
{
  v2 = sub_C1508();
  [objc_allocWithZone(v3(v2)) init];
  sub_4948(v1, v0);
  swift_allocObject();
  return sub_139F64();
}

void *sub_BD938()
{
  result = sub_BD958();
  qword_1B2B20 = result;
  return result;
}

void *sub_BD958()
{
  sub_4948(&qword_19C580, &unk_148610);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_148540;
  type metadata accessor for AppLockup(0);
  sub_C0C80(&qword_19AEA0, type metadata accessor for AppLockup, &unk_13FFF0);
  sub_C0C80(&qword_19F1E8, type metadata accessor for AppLockup, &unk_140088);
  type metadata accessor for AppLockupComponent();
  sub_139DD4();
  *(v0 + 32) = v5;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;
  type metadata accessor for BannerHeader(0);
  sub_C0C80(&qword_19B598, type metadata accessor for BannerHeader, &unk_141378);
  sub_C0C80(&qword_19F1F0, type metadata accessor for BannerHeader, &unk_141458);
  type metadata accessor for BannerHeaderComponent();
  sub_139DD4();
  *(v0 + 88) = v9;
  *(v0 + 104) = v10;
  *(v0 + 120) = v11;
  *(v0 + 136) = v12;
  type metadata accessor for Badge(0);
  sub_C0C80(&qword_19B440, type metadata accessor for Badge, &unk_141160);
  sub_C0C80(&qword_19A478, type metadata accessor for Badge, &unk_1411C8);
  type metadata accessor for BadgeComponent();
  sub_139DD4();
  *(v0 + 144) = v13;
  *(v0 + 160) = v14;
  *(v0 + 176) = v15;
  *(v0 + 192) = v16;
  type metadata accessor for BundleFocused(0);
  sub_C0C80(&qword_19C100, type metadata accessor for BundleFocused, &unk_142D30);
  sub_C0C80(&qword_19F1F8, type metadata accessor for BundleFocused, &unk_142D98);
  type metadata accessor for BundleFocusedComponent();
  sub_139DD4();
  *(v0 + 200) = v17;
  *(v0 + 216) = v18;
  *(v0 + 232) = v19;
  *(v0 + 248) = v20;
  type metadata accessor for BundleList(0);
  sub_C0C80(&qword_19C290, type metadata accessor for BundleList, &unk_142F60);
  sub_C0C80(&qword_19F200, type metadata accessor for BundleList, &unk_142FC8);
  type metadata accessor for BundleListComponent();
  sub_139DD4();
  *(v0 + 256) = v21;
  *(v0 + 272) = v22;
  *(v0 + 288) = v23;
  *(v0 + 304) = v24;
  type metadata accessor for BundleOption(0);
  sub_C0C80(&qword_19C470, type metadata accessor for BundleOption, &unk_1431E0);
  sub_C0C80(&qword_19F208, type metadata accessor for BundleOption, &unk_143278);
  type metadata accessor for BundleOptionComponent();
  sub_139DD4();
  *(v0 + 312) = v25;
  *(v0 + 328) = v26;
  *(v0 + 344) = v27;
  *(v0 + 360) = v28;
  type metadata accessor for BundleTile(0);
  sub_C0C80(&qword_19C7F0, type metadata accessor for BundleTile, &unk_143B80);
  sub_C0C80(&qword_19F210, type metadata accessor for BundleTile, &unk_143BE8);
  type metadata accessor for BundleTileComponent();
  sub_139DD4();
  *(v0 + 368) = v29;
  *(v0 + 384) = v30;
  *(v0 + 400) = v31;
  *(v0 + 416) = v32;
  type metadata accessor for OfferPlatter(0);
  sub_C0C80(&qword_19F218, type metadata accessor for OfferPlatter, &unk_148F88);
  sub_C0C80(&qword_19F220, type metadata accessor for OfferPlatter, &unk_148FF8);
  type metadata accessor for OfferPlatterComponent();
  sub_139DD4();
  *(v0 + 424) = v33;
  *(v0 + 440) = v34;
  *(v0 + 456) = v35;
  *(v0 + 472) = v36;
  type metadata accessor for ServiceOption(0);
  sub_C0C80(&qword_19F228, type metadata accessor for ServiceOption, &unk_14AAA0);
  sub_C0C80(&qword_19F230, type metadata accessor for ServiceOption, &unk_14AB08);
  type metadata accessor for ServiceOptionComponent();
  sub_139DD4();
  *(v0 + 480) = v37;
  *(v0 + 496) = v38;
  *(v0 + 512) = v39;
  *(v0 + 528) = v40;
  type metadata accessor for TextHeader(0);
  sub_C0C80(&qword_19F238, type metadata accessor for TextHeader, &unk_14CFC0);
  sub_C0C80(&qword_19F240, type metadata accessor for TextHeader, &unk_14D028);
  type metadata accessor for TextHeaderComponent();
  sub_139DD4();
  *(v0 + 536) = v41;
  *(v0 + 552) = v42;
  *(v0 + 568) = v43;
  *(v0 + 584) = v44;
  sub_BCCD0(v0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_142F10;
  type metadata accessor for IconBulletList(0);
  sub_C0C80(&qword_19ED50, type metadata accessor for IconBulletList, &unk_147B30);
  sub_C0C80(&qword_19F248, type metadata accessor for IconBulletList, &unk_147B98);
  type metadata accessor for IconBulletListComponent();
  sub_139DD4();
  *(v1 + 32) = v45;
  *(v1 + 48) = v46;
  *(v1 + 64) = v47;
  *(v1 + 80) = v48;
  type metadata accessor for ArtworkHeader(0);
  sub_C0C80(&qword_19B2B8, type metadata accessor for ArtworkHeader, &unk_140DB8);
  sub_C0C80(&qword_19F250, type metadata accessor for ArtworkHeader, &unk_140DF8);
  type metadata accessor for ArtworkHeaderComponent();
  sub_139DD4();
  *(v1 + 88) = v49;
  *(v1 + 104) = v50;
  *(v1 + 120) = v51;
  *(v1 + 136) = v52;
  type metadata accessor for BundlePreview(0);
  sub_C0C80(&qword_19C658, type metadata accessor for BundlePreview, &unk_143830);
  sub_C0C80(&qword_19F258, type metadata accessor for BundlePreview, &unk_143898);
  type metadata accessor for BundlePreviewComponent();
  sub_139DD4();
  *(v1 + 144) = v53;
  *(v1 + 160) = v54;
  *(v1 + 176) = v55;
  *(v1 + 192) = v56;
  type metadata accessor for Carousel(0);
  sub_C0C80(&qword_19D460, type metadata accessor for Carousel, &unk_144358);
  sub_C0C80(&qword_19F260, type metadata accessor for Carousel, &unk_144468);
  type metadata accessor for CarouselComponent();
  sub_139DD4();
  *(v1 + 200) = v57;
  *(v1 + 216) = v58;
  *(v1 + 232) = v59;
  *(v1 + 248) = v60;
  type metadata accessor for VisualAreaArtworkComponentModel(0);
  sub_C0C80(&qword_19F268, type metadata accessor for VisualAreaArtworkComponentModel, &unk_14D610);
  sub_C0C80(&qword_19F270, type metadata accessor for VisualAreaArtworkComponentModel, &unk_14D678);
  type metadata accessor for VisualAreaArtworkComponent();
  sub_139DD4();
  *(v1 + 256) = v61;
  *(v1 + 272) = v62;
  *(v1 + 288) = v63;
  *(v1 + 304) = v64;
  type metadata accessor for RecessedPlatter(0);
  sub_C0C80(&qword_19F278, type metadata accessor for RecessedPlatter, &unk_14A600);
  sub_C0C80(&qword_19F280, type metadata accessor for RecessedPlatter, &unk_14A668);
  type metadata accessor for RecessedPlatterComponent();
  sub_139DD4();
  *(v1 + 312) = v65;
  *(v1 + 328) = v66;
  *(v1 + 344) = v67;
  *(v1 + 360) = v68;
  sub_BCCD0(v1);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_142F10;
  type metadata accessor for AppRatingLockup(0);
  sub_C0C80(&qword_19B0D8, type metadata accessor for AppRatingLockup, &unk_1408B0);
  sub_C0C80(&qword_19F288, type metadata accessor for AppRatingLockup, &unk_140918);
  type metadata accessor for AppRatingLockupComponent();
  sub_139DD4();
  *(v2 + 32) = v69;
  *(v2 + 48) = v70;
  *(v2 + 64) = v71;
  *(v2 + 80) = v72;
  type metadata accessor for AnimationHeader(0);
  sub_C0C80(&qword_19A540, type metadata accessor for AnimationHeader, &unk_13F3C0);
  sub_C0C80(&qword_19F290, type metadata accessor for AnimationHeader, &unk_13F400);
  type metadata accessor for AnimationHeaderComponent();
  sub_139DD4();
  *(v2 + 88) = v73;
  *(v2 + 104) = v74;
  *(v2 + 120) = v75;
  *(v2 + 136) = v76;
  sub_139DD4();
  *(v2 + 144) = v77;
  *(v2 + 160) = v78;
  *(v2 + 176) = v79;
  *(v2 + 192) = v80;
  type metadata accessor for PlatterList(0);
  sub_C0C80(&qword_19F298, type metadata accessor for PlatterList, &unk_14980C);
  sub_C0C80(&qword_19F2A0, type metadata accessor for PlatterList, &unk_14984C);
  type metadata accessor for PlatterListComponent();
  sub_139DD4();
  *(v2 + 200) = v81;
  *(v2 + 216) = v82;
  *(v2 + 232) = v83;
  *(v2 + 248) = v84;
  type metadata accessor for TextGradient(0);
  sub_C0C80(&qword_19F2A8, type metadata accessor for TextGradient, &unk_14CBD0);
  sub_C0C80(&qword_19F2B0, type metadata accessor for TextGradient, &unk_14CC68);
  type metadata accessor for TextGradientComponent();
  sub_139DD4();
  *(v2 + 256) = v85;
  *(v2 + 272) = v86;
  *(v2 + 288) = v87;
  *(v2 + 304) = v88;
  type metadata accessor for WelcomeCarousel(0);
  sub_C0C80(&qword_19F2B8, type metadata accessor for WelcomeCarousel, &unk_14D730);
  sub_C0C80(&qword_19F2C0, type metadata accessor for WelcomeCarousel, &unk_14D798);
  type metadata accessor for WelcomeCarouselComponent();
  sub_139DD4();
  *(v2 + 312) = v89;
  *(v2 + 328) = v90;
  *(v2 + 344) = v91;
  *(v2 + 360) = v92;
  sub_BCCD0(v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_140280;
  type metadata accessor for BundleDetail(0);
  sub_C0C80(&qword_19BBD0, type metadata accessor for BundleDetail, &unk_141CE8);
  sub_C0C80(&qword_19F2C8, type metadata accessor for BundleDetail, &unk_141DB8);
  type metadata accessor for BundleDetailComponent(0);
  sub_139DD4();
  *(v3 + 32) = v93;
  *(v3 + 48) = v94;
  *(v3 + 64) = v95;
  *(v3 + 80) = v96;
  sub_BCCD0(v3);
  return _swiftEmptyArrayStorage;
}

void *sub_BECEC()
{
  result = sub_BED0C();
  qword_1B2B28 = result;
  return result;
}

void *sub_BED0C()
{
  sub_4948(&qword_19C588, &qword_143800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_140290;
  sub_C0CC8();
  sub_139D64();
  *(inited + 32) = v6;
  *(inited + 48) = v7;
  *(inited + 64) = v8;
  sub_C0D1C();
  sub_139D64();
  *(inited + 72) = v9;
  *(inited + 88) = v10;
  *(inited + 104) = v11;
  sub_C0D70();
  sub_139D64();
  *(inited + 112) = v12;
  *(inited + 128) = v13;
  *(inited + 144) = v14;
  sub_C0DC4();
  sub_139D64();
  *(inited + 152) = v15;
  *(inited + 168) = v16;
  *(inited + 184) = v17;
  sub_BCD8C(inited);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_140280;
  sub_C0E18();
  sub_139D64();
  *(v1 + 32) = v18;
  *(v1 + 48) = v19;
  *(v1 + 64) = v20;
  sub_BCD8C(v1);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_148550;
  sub_C0E6C();
  sub_139D64();
  *(v2 + 32) = v21;
  *(v2 + 48) = v22;
  *(v2 + 64) = v23;
  sub_C0EC0();
  sub_139D64();
  *(v2 + 72) = v24;
  *(v2 + 88) = v25;
  *(v2 + 104) = v26;
  sub_C0F14();
  sub_139D64();
  *(v2 + 112) = v27;
  *(v2 + 128) = v28;
  *(v2 + 144) = v29;
  sub_C0F68();
  sub_139D64();
  *(v2 + 152) = v30;
  *(v2 + 168) = v31;
  *(v2 + 184) = v32;
  sub_C0FBC();
  sub_139D64();
  *(v2 + 192) = v33;
  *(v2 + 208) = v34;
  *(v2 + 224) = v35;
  sub_C1010();
  sub_139D64();
  *(v2 + 232) = v36;
  *(v2 + 248) = v37;
  *(v2 + 264) = v38;
  sub_C1064();
  sub_139D64();
  *(v2 + 272) = v39;
  *(v2 + 288) = v40;
  *(v2 + 304) = v41;
  sub_BCD8C(v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_13E660;
  sub_C10B8();
  sub_139D64();
  *(v3 + 32) = v42;
  *(v3 + 48) = v43;
  *(v3 + 64) = v44;
  sub_C110C();
  sub_139D64();
  *(v3 + 72) = v45;
  *(v3 + 88) = v46;
  *(v3 + 104) = v47;
  sub_C1160();
  sub_139D64();
  *(v3 + 112) = v48;
  *(v3 + 128) = v49;
  *(v3 + 144) = v50;
  sub_BCD8C(v3);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_140280;
  sub_C11B4();
  sub_139D64();
  *(v4 + 32) = v51;
  *(v4 + 48) = v52;
  *(v4 + 64) = v53;
  sub_BCD8C(v4);
  return _swiftEmptyArrayStorage;
}

void *sub_BF358()
{
  result = sub_BF378();
  qword_1B2B30 = result;
  return result;
}

void *sub_BF378()
{
  sub_4948(&qword_1A0B00, &unk_147390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_147280;
  sub_139CB4();
  swift_allocObject();
  *(inited + 32) = sub_139CA4();
  swift_allocObject();
  *(inited + 40) = sub_139CA4();
  sub_BCE74(inited, sub_624D0, sub_C1208);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_147270;
  swift_allocObject();
  *(v1 + 32) = sub_139CA4();
  swift_allocObject();
  *(v1 + 40) = sub_139CA4();
  swift_allocObject();
  *(v1 + 48) = sub_139CA4();
  swift_allocObject();
  *(v1 + 56) = sub_139CA4();
  sub_BCE74(v1, sub_624D0, sub_C1208);
  return _swiftEmptyArrayStorage;
}

char *sub_BF628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a1;
  v27 = a2;
  v3 = sub_13B5A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13B584();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4948(&qword_19F380, &qword_148648);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ServiceProductPageDestination(0);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v25 - v19;
  (*(v8 + 16))(v10, v26, v7, v18);
  (*(v4 + 16))(v6, v27, v3);
  sub_10992C(v10, v6, v13);
  sub_53A8(v13, 0, 1, v14);
  sub_C13D0(v13, v20, type metadata accessor for ServiceProductPageDestination);
  sub_C1430(v20, v16, type metadata accessor for ServiceProductPageDestination);
  v21 = objc_allocWithZone(type metadata accessor for ServiceProductPageViewController(0));
  v22 = v25;

  v23 = sub_1110C8(v16, v22);
  sub_C1490(v20, type metadata accessor for ServiceProductPageDestination);
  return v23;
}

char *sub_BF92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a1;
  v27 = a2;
  v3 = sub_13B5A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13B584();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4948(&qword_19F380, &qword_148648);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ServiceProductPageDestination(0);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v25 - v19;
  (*(v8 + 16))(v10, v26, v7, v18);
  (*(v4 + 16))(v6, v27, v3);
  sub_109D34(v10, v6, v13);
  sub_53A8(v13, 0, 1, v14);
  sub_C13D0(v13, v20, type metadata accessor for ServiceProductPageDestination);
  sub_C1430(v20, v16, type metadata accessor for ServiceProductPageDestination);
  v21 = objc_allocWithZone(type metadata accessor for ServiceProductPageViewController(0));
  v22 = v25;

  v23 = sub_1110C8(v16, v22);
  sub_C1490(v20, type metadata accessor for ServiceProductPageDestination);
  return v23;
}

char *sub_BFC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a1;
  v27 = a2;
  v3 = sub_13B5A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13B584();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4948(&qword_19F368, &qword_148638);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for HalfSheetPageDestination(0);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v25 - v19;
  (*(v8 + 16))(v10, v26, v7, v18);
  (*(v4 + 16))(v6, v27, v3);
  sub_AACC8(v10, v6, v13);
  sub_53A8(v13, 0, 1, v14);
  sub_C13D0(v13, v20, type metadata accessor for HalfSheetPageDestination);
  sub_C1430(v20, v16, type metadata accessor for HalfSheetPageDestination);
  v21 = objc_allocWithZone(type metadata accessor for HalfSheetPageViewController(0));
  v22 = v25;

  v23 = sub_B1144(v16, v22);
  sub_C1490(v20, type metadata accessor for HalfSheetPageDestination);
  return v23;
}

id sub_BFF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v27 = a1;
  v28 = a2;
  v3 = sub_13B5A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13B584();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4948(&qword_19F360, &qword_148630);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for ServiceProductCardPageDestination(0);
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v26 - v19;
  (*(v8 + 16))(v10, v27, v7, v18);
  (*(v4 + 16))(v6, v28, v3);
  sub_10186C(v10, v6, v13);
  sub_53A8(v13, 0, 1, v14);
  sub_C13D0(v13, v20, type metadata accessor for ServiceProductCardPageDestination);
  sub_C1430(v20, v16, type metadata accessor for ServiceProductCardPageDestination);
  v21 = objc_allocWithZone(type metadata accessor for ServiceProductCardPageViewController(0));
  v22 = v26;

  v24 = sub_10286C(v16, v22, v23);
  sub_C1490(v20, type metadata accessor for ServiceProductCardPageDestination);
  return v24;
}

char *sub_C0238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a1;
  v27 = a2;
  v3 = sub_13B5A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13B584();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4948(&qword_19F358, &qword_148628);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for FullSheetOverlayPageDestination(0);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v25 - v19;
  (*(v8 + 16))(v10, v26, v7, v18);
  (*(v4 + 16))(v6, v27, v3);
  sub_9F1AC(v10, v6, v13);
  sub_53A8(v13, 0, 1, v14);
  sub_C13D0(v13, v20, type metadata accessor for FullSheetOverlayPageDestination);
  sub_C1430(v20, v16, type metadata accessor for FullSheetOverlayPageDestination);
  v21 = objc_allocWithZone(type metadata accessor for FullSheetOverlayPageViewController(0));
  v22 = v25;

  v23 = sub_A6A18(v16, v22);
  sub_C1490(v20, type metadata accessor for FullSheetOverlayPageDestination);
  return v23;
}

char *sub_C053C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a1;
  v27 = a2;
  v3 = sub_13B5A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13B584();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_4948(&qword_19F350, &qword_148620);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ServiceProductBadgedPageDestination(0);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v25 - v19;
  (*(v8 + 16))(v10, v26, v7, v18);
  (*(v4 + 16))(v6, v27, v3);
  sub_F6C04(v10, v6, v13);
  sub_53A8(v13, 0, 1, v14);
  sub_C13D0(v13, v20, type metadata accessor for ServiceProductBadgedPageDestination);
  sub_C1430(v20, v16, type metadata accessor for ServiceProductBadgedPageDestination);
  v21 = objc_allocWithZone(type metadata accessor for ServiceProductBadgedPageViewController(0));
  v22 = v25;

  v23 = sub_FC238(v16, v22);
  sub_C1490(v20, type metadata accessor for ServiceProductBadgedPageDestination);
  return v23;
}

uint64_t sub_C0840(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_C08D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_C094C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_13C0C4();
LABEL_9:
  result = sub_13C014();
  *v2 = result;
  return result;
}

double (*sub_C09EC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v4 = sub_C08C4(a3);
  sub_127E58(v5);
  if (v4)
  {
  }

  else
  {
    v6 = sub_13C004();
  }

  *a1 = v6;
  return sub_C14EC;
}

double (*sub_C0A78(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v4 = sub_C08C4(a3);
  sub_127E58(v5);
  if (v4)
  {
  }

  else
  {
    v6 = sub_13C004();
  }

  *a1 = v6;
  return sub_C0B04;
}

uint64_t sub_C0B0C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_13C0C4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_624D0();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_139CD4();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_C137C(&qword_19F1B8, &qword_19F1B0, &qword_1485E0);
        for (i = 0; i != v7; ++i)
        {
          sub_4948(&qword_19F1B0, &qword_1485E0);
          v9 = sub_C09EC(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_C0C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_C0CC8()
{
  result = qword_19F2D0;
  if (!qword_19F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F2D0);
  }

  return result;
}

unint64_t sub_C0D1C()
{
  result = qword_19F2D8;
  if (!qword_19F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F2D8);
  }

  return result;
}

unint64_t sub_C0D70()
{
  result = qword_19F2E0;
  if (!qword_19F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F2E0);
  }

  return result;
}

unint64_t sub_C0DC4()
{
  result = qword_19F2E8;
  if (!qword_19F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F2E8);
  }

  return result;
}

unint64_t sub_C0E18()
{
  result = qword_19F2F0;
  if (!qword_19F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F2F0);
  }

  return result;
}

unint64_t sub_C0E6C()
{
  result = qword_19F2F8;
  if (!qword_19F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F2F8);
  }

  return result;
}

unint64_t sub_C0EC0()
{
  result = qword_19F300;
  if (!qword_19F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F300);
  }

  return result;
}

unint64_t sub_C0F14()
{
  result = qword_19F308;
  if (!qword_19F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F308);
  }

  return result;
}

unint64_t sub_C0F68()
{
  result = qword_19F310;
  if (!qword_19F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F310);
  }

  return result;
}

unint64_t sub_C0FBC()
{
  result = qword_19F318;
  if (!qword_19F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F318);
  }

  return result;
}

unint64_t sub_C1010()
{
  result = qword_19F320;
  if (!qword_19F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F320);
  }

  return result;
}

unint64_t sub_C1064()
{
  result = qword_19F328;
  if (!qword_19F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F328);
  }

  return result;
}

unint64_t sub_C10B8()
{
  result = qword_19F330;
  if (!qword_19F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F330);
  }

  return result;
}

unint64_t sub_C110C()
{
  result = qword_19F338;
  if (!qword_19F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F338);
  }

  return result;
}

unint64_t sub_C1160()
{
  result = qword_19F340;
  if (!qword_19F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F340);
  }

  return result;
}

unint64_t sub_C11B4()
{
  result = qword_19F348;
  if (!qword_19F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F348);
  }

  return result;
}

uint64_t sub_C1208(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_13C0C4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_624D0();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_139CB4();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_C137C(&qword_19F378, &qword_19F370, &qword_148640);
        for (i = 0; i != v7; ++i)
        {
          sub_4948(&qword_19F370, &qword_148640);
          v9 = sub_C0A78(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_C137C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_558C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C13D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_C1430(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_C1490(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_9F94();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_C1538(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_C158C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_C1608(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v6 = sub_13B584();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  sub_139DC4();
  inited = swift_initStackObject();
  sub_73A8(0xD000000000000010, 0x8000000000151460, &type metadata for MarketingItemDetail);
  if (v3)
  {
    (*(v7 + 8))(a1, v6);

LABEL_6:
    sub_13B5A4();
    sub_5224();
    (*(v20 + 8))(v45);
    return;
  }

  v34 = a3;
  v35 = v9;
  sub_C1C54();
  v40[0] = v14;
  sub_13B594();
  if (sub_13B564())
  {
    v16 = sub_13BAB4();
    v17 = sub_677B8();
    sub_9F18(v17);
    *v18 = 0x6D69616C63736964;
    v18[1] = a3;
    v18[2] = &type metadata for MarketingItemDetail;
    (*(*(v16 - 8) + 104))(v18, enum case for JSONError.missingProperty(_:), v16);
    swift_willThrow();

    v19 = *(v7 + 8);
    v19(a1, v6);
    v19(v12, v6);
    goto LABEL_6;
  }

  v15 = v45;
  v33[1] = inited;
  sub_139DB4();
  v21 = *(v7 + 8);
  v21(v12, v6);
  v22 = sub_9414(v38, v41);
  __chkstk_darwin(v22);
  v33[-2] = v15;
  v23 = sub_9DD0();
  v33[0] = 0;
  v41[5] = v23;
  v24 = v35;
  sub_13B594();
  v25 = sub_13B564();
  v26 = v45;
  if (v25)
  {
    goto LABEL_10;
  }

  v27 = v33[0];
  sub_139DB4();
  if (v27)
  {

    v37 = 0;
    memset(v36, 0, sizeof(v36));
    sub_2519C(v36);
LABEL_10:
    v28 = sub_13BAB4();
    v29 = sub_677B8();
    sub_9F18(v29);
    *v30 = 0x656C746974;
    v30[1] = 0xE500000000000000;
    v30[2] = &type metadata for MarketingItemDetail;
    (*(*(v28 - 8) + 104))(v30, enum case for JSONError.missingProperty(_:), v28);
    swift_willThrow();
    v21(a1, v6);
    v21(v24, v6);
    sub_13B5A4();
    sub_5224();
    (*(v31 + 8))(v26);
    sub_2519C(v41);

    return;
  }

  v21(a1, v6);
  v21(v24, v6);
  sub_9414(v36, v38);
  v42 = v38[0];
  v43 = v38[1];
  v44 = v39;
  sub_C1BEC(v40, v34);
  sub_13B5A4();
  sub_5224();
  (*(v32 + 8))(v26);
  sub_C1C24(v40);
}

void sub_C1C78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v51 = sub_13B584();
  v6 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v43 - v9;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v52 = swift_initStackObject();
  v14 = sub_BB310();
  v50 = inited;
  if (v3)
  {

    v17 = 0;
  }

  else
  {
    v18 = v14;
    v19 = v15;
    sub_4BF80();
    v16 = sub_395B0(v18, v19);
    v17 = v16;
  }

  v57[0] = v17;
  __chkstk_darwin(v16);
  v64 = a2;
  *(&v43 - 2) = a2;
  v57[1] = sub_9DB8(0x6B726F77747261, 0xE700000000000000, &type metadata for MarketingItemService, sub_4BE58, (&v43 - 4));
  v20 = sub_BB310();
  v45 = v6;
  v46 = a1;
  v44 = v17;
  v57[2] = v20;
  v57[3] = v21;
  sub_13B594();
  if (sub_13B564())
  {
    v22 = sub_13BAB4();
    sub_677B8();
    swift_allocError();
    *v23 = 0x7470697263736564;
    v23[1] = 0xEB000000006E6F69;
    v23[2] = &type metadata for MarketingItemService;
    (*(*(v22 - 8) + 104))(v23, enum case for JSONError.missingProperty(_:), v22);
    swift_willThrow();

    v24 = *(v45 + 8);
    v25 = v51;
    v24(a1, v51);
    v24(v12, v25);
    v26 = v44;
    sub_13B5A4();
    sub_9F94();
    (*(v27 + 8))(v64);
  }

  else
  {
    sub_C24FC();
    v28 = *(v45 + 8);
    v28(v12, v51);
    sub_9414(v53, &v54);
    sub_9414(&v54, v58);
    v29 = v47;
    sub_13B594();
    v30 = sub_13B564();
    if (v30)
    {
      v31 = sub_13BAB4();
      v32 = sub_677B8();
      sub_9F18(v32);
      *v33 = 0x6C6961746564;
      v33[1] = 0xE600000000000000;
      v33[2] = &type metadata for MarketingItemService;
      (*(*(v31 - 8) + 104))(v33, enum case for JSONError.missingProperty(_:), v31);
      swift_willThrow();
      v28(v29, v51);

      v56 = 0;
      v54 = 0u;
      v55 = 0u;
      v41 = v28;
    }

    else
    {
      sub_C24FC();
      v41 = v28;
      v28(v29, v51);
      sub_9414(v53, &v54);
    }

    *&v58[40] = v54;
    v59 = v55;
    v60 = v56;
    v34 = v48;
    v35 = v46;
    sub_13B594();
    if (sub_13B564())
    {
      v36 = sub_13BAB4();
      v37 = sub_677B8();
      sub_9F18(v37);
      *v38 = 0xD000000000000010;
      v38[1] = 0x800000000014F5E0;
      v38[2] = &type metadata for MarketingItemService;
      (*(*(v36 - 8) + 104))(v38, enum case for JSONError.missingProperty(_:), v36);
      swift_willThrow();

      v39 = v51;
      v41(v35, v51);
      v41(v34, v39);

      v56 = 0;
      v54 = 0u;
      v55 = 0u;
    }

    else
    {
      sub_139BC4();

      v42 = v51;
      v41(v35, v51);
      v41(v34, v42);
      sub_9414(v53, &v54);
    }

    v61 = v54;
    v62 = v55;
    v63 = v56;
    sub_4D8D4(v57, v49);
    sub_13B5A4();
    sub_9F94();
    (*(v40 + 8))(v64);
    sub_4D9A0(v57);
  }
}

id sub_C2468()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_C2498()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_C24FC()
{

  return sub_139DB4();
}

uint64_t sub_C2520(uint64_t a1, int a2)
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

uint64_t sub_C2560(uint64_t result, int a2, int a3)
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

uint64_t sub_C25C8()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_162F0(v0, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t sub_C261C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = sub_13B584();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139DC4();
  swift_initStackObject();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_4;
  }

  v22 = a1;
  v23 = a2;
  v9 = v31;
  sub_139DB4();
  if (v9)
  {

    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_2519C(v25);
    a2 = v23;
    a1 = v22;
LABEL_4:
    v10 = sub_13BAB4();
    sub_677B8();
    swift_allocError();
    *v11 = 0x7470697263736564;
    v11[1] = 0xEB000000006E6F69;
    v11[2] = &type metadata for MarketingItemValueProposition;
    (*(*(v10 - 8) + 104))(v11, enum case for JSONError.missingProperty(_:), v10);
    swift_willThrow();
    v12 = *(v6 + 8);
    v12(a1, v5);
    v12(v8, v5);
    sub_13B5A4();
    sub_5224();
    return (*(v13 + 8))(a2);
  }

  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_9414(v25, v27);
  sub_9414(v27, v28);
  v16 = v22;
  v17 = sub_BB310();
  v19 = v18;
  v15(v16, v5);
  v29 = v17;
  v30 = v19;
  sub_C29B8(v28, v24);
  sub_13B5A4();
  sub_5224();
  (*(v20 + 8))(v23);
  return sub_C29F0(v28);
}

uint64_t sub_C2990@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C25C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_C2A20(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184840;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_C2A6C(char a1)
{
  result = 0x6F42646567646162;
  switch(a1)
  {
    case 1:
      result = 0x6568536567646162;
      break;
    case 2:
      result = 0x6C65685379646F62;
      break;
    case 3:
      result = 0x6D69616C63736964;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x68537265746F6F66;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_C2B80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_C2A20(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_C2BB0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_C2A6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_C2BDC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;

  v8 = sub_C2A20(a1, a2);
  if (v8 == 6)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v9 = sub_139A14();
    sub_4910(v9, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v30 = &type metadata for MessageFullSheetLayout.BodySpacing;
    v29[0] = swift_allocObject();
    memcpy((v29[0] + 16), v3, 0x160uLL);
    sub_C4620(v3, __dst);
    sub_139984();
    sub_49C8(v29);
    *&__dst[0] = 0;
    *(&__dst[0] + 1) = 0xE000000000000000;
    sub_13BFE4(42);

    *&__dst[0] = 0xD000000000000018;
    *(&__dst[0] + 1) = 0x800000000014E6D0;
    v32._countAndFlagsBits = a1;
    v32._object = a2;
    sub_13BBC4(v32);
    v33._object = 0x800000000014E6F0;
    v33._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v33);
    *(&__dst[1] + 1) = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for MessageFullSheetLayout.BodySpacing;
    a3[4] = &off_18B9C8;
    v10 = swift_allocObject();
    *a3 = v10;
    memcpy((v10 + 16), v3, 0x160uLL);
    return sub_C4620(v3, __dst);
  }

  else
  {
    v12 = v8;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v13 = sub_139A14();
    sub_4910(v13, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v30 = &type metadata for MessageFullSheetLayout.BodySpacing;
    v29[0] = swift_allocObject();
    memcpy((v29[0] + 16), v3, 0x160uLL);
    sub_C4620(v3, __dst);
    sub_139984();
    sub_49C8(v29);
    *(&__dst[1] + 1) = &type metadata for String;
    *&__dst[0] = 0xD00000000000001CLL;
    *(&__dst[0] + 1) = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    *(&__dst[1] + 1) = &type metadata for MessageFullSheetLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v12;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    switch(v12)
    {
      case 1:
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v21 = swift_allocObject();
        *a3 = v21;
        v15 = (v21 + 16);
        v16 = (v3 + 88);
        goto LABEL_14;
      case 2:
        v17 = [objc_opt_self() currentDevice];
        v18 = [v17 userInterfaceIdiom];

        if (v18 || ![objc_opt_self() isTouchIDSupported])
        {
          v19 = v4;
        }

        else
        {
          v19 = (v4 + 176);
        }

        memcpy(__dst, v19, 0x58uLL);
        v27 = *(&__dst[3] + 8);
        v28 = *(&__dst[4] + 8);
        v23 = *(&__dst[2] + 1);
        v22 = *&__dst[3];
        v24 = *&__dst[2];
        v25 = __dst[0];
        v26 = __dst[1];
        sub_4AB8(__dst, v29);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        result = swift_allocObject();
        *a3 = result;
        *(result + 16) = v25;
        *(result + 32) = v26;
        *(result + 48) = v24;
        *(result + 56) = v23;
        *(result + 64) = v22;
        *(result + 88) = v28;
        *(result + 72) = v27;
        return result;
      case 3:
      case 4:
      case 5:
        memcpy(__dst, (v3 + 264), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v14 = swift_allocObject();
        *a3 = v14;
        v15 = (v14 + 16);
        v16 = (v3 + 264);
        goto LABEL_14;
      default:
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v20 = swift_allocObject();
        *a3 = v20;
        v15 = (v20 + 16);
        v16 = (v3 + 176);
LABEL_14:
        memcpy(v15, v16, 0x58uLL);
        result = sub_4AB8(__dst, v29);
        break;
    }
  }

  return result;
}

void *sub_C3234@<X0>(void *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  return memcpy(a1, v10, 0x160uLL);
}

unint64_t sub_C3670(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1848F0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_C36BC(char a1)
{
  if (!a1)
  {
    return 0x6D69616C63736964;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x68537265746F6F66;
}

unint64_t sub_C3790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_C3670(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_C37C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C36BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_C37EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_C3670(a1, a2);
  if (v7 == 3)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v19 = &type metadata for MessageFullSheetLayout.FooterSpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_C46A8(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_13BBC4(v21);
    v22._object = 0x800000000014E6F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v22);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for MessageFullSheetLayout.FooterSpacing;
    a3[4] = &off_18B978;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x108uLL);
    return sub_C46A8(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v19 = &type metadata for MessageFullSheetLayout.FooterSpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_C46A8(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for MessageFullSheetLayout.FooterSpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      if (v11 == 1)
      {
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = (v3 + 176);
      }

      else
      {
        memcpy(__dst, v3, 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = v3;
      }
    }

    else
    {
      memcpy(__dst, (v3 + 88), 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = (v3 + 88);
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v18);
  }
}

void *sub_C3D10@<X0>(void *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  return memcpy(a1, v10, 0x108uLL);
}

uint64_t sub_C41A8@<X0>(uint64_t *a1@<X8>)
{
  sub_C3234(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x160uLL);
  sub_C3D10(v6);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v6, 0x108uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_C42BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_C41A8(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_C4364()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  if (v0[42])
  {
  }

  if (v0[44])
  {
  }

  return _swift_deallocObject(v0, 368, 7);
}

uint64_t sub_C4414()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_C44A4()
{
  sub_3C04(v0 + 2);
  sub_3C04(v0 + 7);
  sub_3C04(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_C44FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 352))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_C4550(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 352) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 352) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_C4658()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

_BYTE *storeEnumTagSinglePayload for MessageFullSheetLayout.FooterSpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xC47ACLL);
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

uint64_t getEnumTagSinglePayload for MessageFullSheetLayout.BodySpacing.OverrideSectionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageFullSheetLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0xC4938);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_C4974()
{
  result = qword_19F388;
  if (!qword_19F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F388);
  }

  return result;
}

unint64_t sub_C49CC()
{
  result = qword_19F390;
  if (!qword_19F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F390);
  }

  return result;
}

uint64_t sub_C4A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4948(&qword_19A968, &unk_13FAF0);
  sub_17250();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_52E0(v9, a2, v8);
  }

  sub_4948(&qword_19A970, &unk_142620);
  sub_17250();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 32));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_C4B4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_4948(&qword_19A968, &unk_13FAF0);
  sub_17250();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_4948(&qword_19A970, &unk_142620);
    sub_17250();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_53A8(v11, a2, a2, v10);
}

uint64_t type metadata accessor for OfferBadge(uint64_t a1)
{
  result = qword_19F3F0;
  if (!qword_19F3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_C4C98(uint64_t a1)
{
  sub_C4DFC(319, &qword_19A9E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_C4DFC(319, &qword_19A9F0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_C4DFC(319, &unk_19F400, type metadata accessor for CGSize, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_13B6B4();
        if (v4 <= 0x3F)
        {
          sub_18A28();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_C4DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_C4E7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_13AB24();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  sub_4948(&qword_19AC58, &qword_13FDB0);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_825A0(v2, &v17 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_9F94();
    return (*(v14 + 32))(a1, v13);
  }

  else
  {
    sub_13BD54();
    v16 = sub_13AE64();
    sub_13A004();

    sub_13AB14();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_C503C@<X0>(uint64_t a1@<X8>)
{
  v132 = a1;
  v131 = sub_4948(&qword_19ACD0, &qword_142980);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v6);
  sub_17214();
  sub_2159C(v7);
  v144 = sub_13A9A4();
  sub_9F94();
  __chkstk_darwin(v8);
  sub_9EC0();
  sub_2159C(v10 - v9);
  v128 = sub_13A734();
  sub_9E94();
  v127 = v11;
  __chkstk_darwin(v12);
  v126 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = sub_2159C(&v124 - v15);
  v17 = type metadata accessor for OfferBadge(v16);
  sub_9E94();
  v137 = v18;
  __chkstk_darwin(v19);
  v138 = v20;
  sub_2159C(&v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = sub_139A34();
  sub_9E94();
  v129 = v21;
  __chkstk_darwin(v22);
  sub_9EC0();
  sub_2159C(v24 - v23);
  v25 = sub_139D44();
  __chkstk_darwin(v25 - 8);
  v27 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v124 - v29;
  __chkstk_darwin(v31);
  v33 = &v124 - v32;
  v34 = sub_4948(&qword_19F440, &qword_148DA8);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v35);
  v37 = &v124 - v36;
  v134 = sub_4948(&qword_19F448, &qword_148DB0);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v38);
  v40 = &v124 - v39;
  v135 = sub_4948(&qword_19F450, &qword_148DB8);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v41);
  v43 = &v124 - v42;
  v136 = sub_4948(&qword_19F458, &qword_148DC0);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v44);
  sub_17214();
  v148 = v45;
  v140 = sub_4948(&qword_19F460, &qword_148DC8);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v46);
  sub_17214();
  v141 = v47;
  v142 = sub_4948(&qword_19F468, &qword_148DD0);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v48);
  sub_17214();
  v143 = v49;
  sub_4B14(v1 + *(v17 + 36), &v151);
  v147 = v17;
  v149 = v1;

  sub_139D24();
  sub_139D14();
  sub_C5DE8(v27);
  sub_139D04();
  sub_C5DE8(v30);
  sub_4948(&qword_19AAA0, &qword_1427B0);
  inited = swift_initStackObject();
  v133 = xmmword_13E650;
  *(inited + 16) = xmmword_13E650;
  v51 = sub_13AEC4();
  *(inited + 32) = v51;
  v52 = sub_13AED4();
  *(inited + 33) = v52;
  v53 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v51)
  {
    v53 = sub_13AEF4();
  }

  sub_13AEF4();
  if (sub_13AEF4() != v52)
  {
    v53 = sub_13AEF4();
  }

  v54 = *(v149 + *(v147 + 28));
  sub_13A6E4();
  sub_1D3D0();
  sub_C60BC(v33, v37, &type metadata accessor for DynamicLabelText);
  v55 = &v37[*(v34 + 36)];
  *v55 = v53;
  *(v55 + 1) = v2;
  *(v55 + 2) = v3;
  *(v55 + 3) = v4;
  *(v55 + 4) = v5;
  v55[40] = 0;
  v56 = swift_initStackObject();
  *(v56 + 16) = v133;
  v57 = sub_13AEE4();
  *(v56 + 32) = v57;
  v58 = sub_13AF04();
  *(v56 + 33) = v58;
  v59 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v57)
  {
    v59 = sub_13AEF4();
  }

  sub_13AEF4();
  if (sub_13AEF4() != v58)
  {
    v59 = sub_13AEF4();
  }

  if ((v54 & 1) == 0 && _UISolariumEnabled())
  {
    sub_C66FC();
    v61 = *(v60 - 256);
    v62 = sub_C66A4();
    v63(v62);
    sub_139A24();
    (*(v61 + 8))(v56, v57);
  }

  sub_13A6E4();
  sub_1D3D0();
  sub_6D49C(v37, v40, &qword_19F440, &qword_148DA8);
  sub_171FC();
  v65 = &v40[v64];
  *v65 = v59;
  *(v65 + 1) = v2;
  *(v65 + 2) = v3;
  *(v65 + 3) = v4;
  *(v65 + 4) = v5;
  v65[40] = 0;
  v66 = sub_13B3C4();
  v68 = v67;
  sub_6D49C(v40, v43, &qword_19F448, &qword_148DB0);
  sub_171FC();
  v70 = &v43[v69];
  *v70 = sub_42104;
  v70[1] = 0;
  v70[2] = v66;
  v70[3] = v68;
  v71 = v139;
  sub_C5E44(v149, v139);
  v72 = (*(v137 + 80) + 16) & ~*(v137 + 80);
  v73 = swift_allocObject();
  sub_C60BC(v71, v73 + v72, type metadata accessor for OfferBadge);
  v74 = v148;
  sub_6D49C(v43, v148, &qword_19F450, &qword_148DB8);
  v75 = 0;
  sub_171FC();
  v77 = (v74 + v76);
  *v77 = sub_C604C;
  v77[1] = v73;
  v78 = v146;
  v79 = v143;
  v80 = v141;
  if ((v54 & 1) == 0)
  {
    LODWORD(v139) = v54;
    v81 = v125;
    sub_C4E7C(v125);
    v82 = v127;
    v83 = v126;
    v84 = v128;
    (*(v127 + 104))(v126, enum case for ColorScheme.dark(_:), v128);
    v85 = sub_13A724();
    v86 = *(v82 + 8);
    v86(v83, v84);
    v86(v81, v84);
    v87 = _UISolariumEnabled();
    if (v85)
    {
      if (v87)
      {
        sub_C66FC();
        v74 = *(v88 - 256);
        v89 = sub_C66A4();
        v90(v89);
        sub_139A24();
        v91 = sub_C66DC();
        v92(v91);
        if (v85)
        {
          *&v151 = sub_13B194();
          sub_C658C();
          sub_13B1F4();
          v75 = sub_13B1B4();

LABEL_23:
          LOBYTE(v54) = v139;
          goto LABEL_24;
        }
      }
    }

    else if (!v87 || (sub_C66FC(), v74 = *(v93 - 256), v94 = sub_C66A4(), v95(v94), sub_139A24(), v96 = sub_C66DC(), v97(v96), (v85 & 1) == 0))
    {
      v98 = [objc_opt_self() ams_secondaryBackground];
      goto LABEL_22;
    }

    v98 = [objc_opt_self() ams_tertiarySystemFillColor];
LABEL_22:
    v99 = v98;
    v75 = sub_13B1E4();
    goto LABEL_23;
  }

LABEL_24:
  v100 = sub_13B3C4();
  v102 = v101;
  sub_6D49C(v74, v80, &qword_19F458, &qword_148DC0);
  sub_171FC();
  v104 = (v80 + v103);
  *v104 = v75;
  v104[1] = v100;
  v104[2] = v102;
  v105 = 0.0;
  if ((v54 & 1) == 0)
  {
    v105 = 4.0;
    if (_UISolariumEnabled())
    {
      sub_C66FC();
      v107 = *(v106 - 256);
      v108 = sub_C66A4();
      v109(v108);
      v110 = sub_139A24();
      (*(v107 + 8))(v100, v102);
      if (v110)
      {
        v111 = (v149 + *(v147 + 24));
        v112 = *(v111 + 2);
        v151 = *v111;
        v152 = v112;
        sub_4948(&qword_19F4D8, &unk_148DF0);
        sub_13B234();
        v105 = v150 * 0.5;
      }
    }
  }

  v113 = *(v144 + 20);
  v114 = enum case for RoundedCornerStyle.continuous(_:);
  sub_13ABA4();
  sub_9F94();
  v116 = v145;
  (*(v115 + 104))(v145 + v113, v114);
  *v116 = v105;
  v116[1] = v105;
  v117 = v79 + *(v142 + 36);
  sub_C60BC(v116, v117, &type metadata accessor for RoundedRectangle);
  *(v117 + *(sub_4948(&qword_19AAB0, &qword_1426D0) + 36)) = 256;
  sub_6D49C(v80, v79, &qword_19F460, &qword_148DC8);
  v118 = enum case for DynamicTypeSize.accessibility2(_:);
  v119 = sub_13A934();
  sub_9F94();
  (*(v120 + 104))(v78, v118, v119);
  sub_C6544(&qword_19ACF0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_13BB44();
  if (result)
  {
    sub_C611C();
    sub_C66C4();
    sub_CBC0(v122, &qword_19ACD0, &qword_142980, v123);
    sub_13B0C4();
    sub_928C(v78, &qword_19ACD0, &qword_142980);
    return sub_928C(v79, &qword_19F468, &qword_148DD0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_C5D68(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for OfferBadge(0);
  sub_4948(&qword_19F4D8, &unk_148DF0);
  return sub_13B244();
}

uint64_t sub_C5DE8(uint64_t a1)
{
  v2 = sub_139D44();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C5E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferBadge(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C5EA8()
{
  v1 = type metadata accessor for OfferBadge(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_4948(&qword_19AC58, &qword_13FDB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_9F94();
    (*(v6 + 8))(v0 + v3);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_4948(&qword_19AC60, &qword_144730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_9F94();
    (*(v8 + 8))(v5 + v7);
  }

  else
  {
  }

  sub_3C04((v5 + *(v1 + 36)));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_C604C(uint64_t *a1)
{
  v3 = *(type metadata accessor for OfferBadge(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_C5D68(a1, v4);
}

uint64_t sub_C60BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_C611C()
{
  result = qword_19F470;
  if (!qword_19F470)
  {
    sub_558C(&qword_19F468, &qword_148DD0);
    sub_C61D4();
    sub_CBC0(&qword_19AB20, &qword_19AAB0, &qword_1426D0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F470);
  }

  return result;
}

unint64_t sub_C61D4()
{
  result = qword_19F478;
  if (!qword_19F478)
  {
    sub_558C(&qword_19F460, &qword_148DC8);
    sub_C628C();
    sub_CBC0(&qword_19F4C8, &qword_19F4D0, &qword_148DE8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F478);
  }

  return result;
}

unint64_t sub_C628C()
{
  result = qword_19F480;
  if (!qword_19F480)
  {
    sub_558C(&qword_19F458, &qword_148DC0);
    sub_C6344();
    sub_CBC0(&qword_19F4B8, &qword_19F4C0, &qword_148DE0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F480);
  }

  return result;
}

unint64_t sub_C6344()
{
  result = qword_19F488;
  if (!qword_19F488)
  {
    sub_558C(&qword_19F450, &qword_148DB8);
    sub_C63FC();
    sub_CBC0(&qword_19F4A8, &qword_19F4B0, &qword_148DD8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F488);
  }

  return result;
}

unint64_t sub_C63FC()
{
  result = qword_19F490;
  if (!qword_19F490)
  {
    sub_558C(&qword_19F448, &qword_148DB0);
    sub_C6488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F490);
  }

  return result;
}

unint64_t sub_C6488()
{
  result = qword_19F498;
  if (!qword_19F498)
  {
    sub_558C(&qword_19F440, &qword_148DA8);
    sub_C6544(&qword_19F4A0, &type metadata accessor for DynamicLabelText, &protocol conformance descriptor for DynamicLabelText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F498);
  }

  return result;
}

uint64_t sub_C6544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_C658C()
{
  result = qword_19F4E0;
  if (!qword_19F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F4E0);
  }

  return result;
}

uint64_t sub_C65F0()
{
  sub_558C(&qword_19F468, &qword_148DD0);
  sub_558C(&qword_19ACD0, &qword_142980);
  sub_C611C();
  sub_C66C4();
  sub_CBC0(v0, &qword_19ACD0, &qword_142980, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C671C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 48);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_C67C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 48);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for OfferPlatter(uint64_t a1)
{
  result = qword_19F540;
  if (!qword_19F540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_C689C(uint64_t a1)
{
  sub_24850();
  if (v1 <= 0x3F)
  {
    sub_248A0(319, &qword_19AE30, &type metadata accessor for Artwork);
    if (v2 <= 0x3F)
    {
      sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
      if (v3 <= 0x3F)
      {
        sub_18A28();
        if (v4 <= 0x3F)
        {
          sub_248A0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
          if (v5 <= 0x3F)
          {
            sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
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

_BYTE *storeEnumTagSinglePayload for OfferPlatter.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xC6AECLL);
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

uint64_t sub_C6B24(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_184958;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C6B78(char a1)
{
  if (a1)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_C6BD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_C6B24(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_C6C08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C6B78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_C6C38()
{
  result = qword_19F5A0;
  if (!qword_19F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F5A0);
  }

  return result;
}

void sub_C6D48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a1;
  v109 = a3;
  v5 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v5 - 8);
  v112 = v107 - v6;
  v111 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v7);
  v113 = v107 - v8;
  v118 = sub_13B584();
  sub_9E94();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_18B60();
  __chkstk_darwin(v12);
  sub_18B60();
  __chkstk_darwin(v13);
  sub_18B60();
  __chkstk_darwin(v14);
  sub_18B60();
  __chkstk_darwin(v15);
  v17 = v107 - v16;
  __chkstk_darwin(v18);
  v20 = v107 - v19;
  v21 = type metadata accessor for OfferPlatter(0);
  sub_9F94();
  __chkstk_darwin(v22);
  v24 = (v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v117 = swift_initStackObject();
  v25 = v21;
  v26 = sub_BB310();
  if (v3)
  {

    v26 = 0;
    v27 = 0;
  }

  *v24 = v26;
  v24[1] = v27;
  v120 = v24;
  v115 = v27;
  __chkstk_darwin(v26);
  v107[-2] = a2;
  v28 = sub_9DD0();
  v119 = a2;
  v29 = v10;
  v114 = v28;
  v120[2] = v28;
  v30 = v127;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_7;
  }

  sub_86F8(v20, v119);
  if (!v123)
  {
    sub_184DC(&v121, &qword_19F5B0, &qword_149030);
    v30 = v127;
LABEL_7:
    sub_13BAB4();
    sub_C8108();
    v41 = sub_C7F90(v39, v40, &protocol conformance descriptor for JSONError);
    sub_18B70(v41);
    *v42 = 0x6E6F74747562;
    v42[1] = 0xE600000000000000;
    v42[2] = v21;
    sub_2B538();
    (*(v43 + 104))();
    swift_willThrow();

    v44 = sub_C8188();
    v45 = *(v29 + 8);
    v46 = v118;
    v45(v30, v118, v44);
    (v45)(v20, v46);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v51 = v119;
    v50 = v120;
    goto LABEL_8;
  }

  v31 = v29 + 8;
  v32 = v20;
  v33 = *(v29 + 8);
  (v33)(v32, v118);
  v35 = v122;
  v34 = v123;
  v125 = v122;
  v126 = v123;
  v124 = v121;
  v36 = v120;
  *(v120 + 3) = v121;
  *(v36 + 5) = v35;
  *(v36 + 7) = v34;
  v37 = sub_BB310();
  v108 = v33;
  *&v124 = v37;
  *(&v124 + 1) = v38;
  sub_13BFB4();
  sub_13B594();
  v53 = sub_13B564();
  v107[1] = v31;
  if ((v53 & 1) == 0)
  {
    v55 = v112;
    sub_7738(v17, v119, v54);
    if (sub_52E0(v55, 1, v111) != 1)
    {
      sub_C8140();
      v63();
      v62 = v113;
      sub_92E4(v55, v113);
      goto LABEL_25;
    }

    sub_184DC(v55, &qword_19A420, &unk_13F430);
  }

  sub_13BAB4();
  sub_C8108();
  sub_C7F90(v56, v57, &protocol conformance descriptor for JSONError);
  swift_allocError();
  *v58 = 0xD000000000000011;
  v58[1] = 0x800000000014E730;
  v58[2] = v25;
  sub_2B538();
  (*(v59 + 104))();
  swift_willThrow();
  sub_C8140();
  v60();

  v61 = sub_13B7A4();
  v62 = v113;
  sub_53A8(v113, 1, 1, v61);
LABEL_25:
  sub_92E4(v62, v36 + v25[12]);
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_C8108();
    v66 = sub_C7F90(v64, v65, &protocol conformance descriptor for JSONError);
    sub_18B70(v66);
    *v67 = 1868983913;
    v67[1] = 0xE400000000000000;
    v67[2] = v25;
    sub_2B538();
    (*(v68 + 104))();
    swift_willThrow();
    sub_C8134();
    v108();

    sub_66260();
  }

  else
  {
    sub_139DB4();
    sub_C8134();
    v108();
    sub_C8170();
  }

  v69 = v125;
  v50 = v120;
  *(v120 + 9) = v124;
  *(v50 + 88) = v69;
  *(v50 + 104) = v126;
  *(v50 + v25[14]) = sub_BB458() & 1;
  sub_C8150();
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_C8108();
    v72 = sub_C7F90(v70, v71, &protocol conformance descriptor for JSONError);
    v73 = sub_9F18(v72);
    sub_C815C(v73, v74);
    sub_2B538();
    (*(v75 + 104))();
    swift_willThrow();
    sub_C8120();
    v76();

    sub_66260();
  }

  else
  {
    sub_139BC4();
    sub_C8120();
    v97();
    sub_C8170();
  }

  v77 = v50 + v25[13];
  v78 = v125;
  *v77 = v124;
  *(v77 + 16) = v78;
  *(v77 + 32) = v126;
  sub_13B594();
  v79 = sub_13B564();
  v80 = v110;
  if (v79)
  {
    sub_13BAB4();
    sub_C8108();
    v83 = sub_C7F90(v81, v82, &protocol conformance descriptor for JSONError);
    v84 = sub_9F18(v83);
    sub_C815C(v84, v85);
    sub_2B538();
    (*(v86 + 104))();
    swift_willThrow();
    v98 = v118;
    sub_C8120();
    v87();

    sub_66260();
  }

  else
  {
    sub_139DB4();
    v98 = v118;
    sub_C8120();
    v99();
    sub_C8170();
  }

  v88 = v125;
  *(v50 + 112) = v124;
  *(v50 + 128) = v88;
  *(v50 + 144) = v126;
  sub_7340(0x656C797473, 0xE500000000000000, v25, v100, v101, v102, v103, v104);
  *(v50 + 152) = v89 & 1;
  sub_C8150();
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v90 = v119;
    sub_139DB4();
    sub_C8134();
    v105 = v108;
    v108();
    (v105)(v80, v98);
    sub_C8170();
    sub_9414(&v124, v50 + 160);
    sub_C8008(v50, v109);
    sub_13B5A4();
    sub_5224();
    (*(v106 + 8))(v90);
    sub_C806C(v50);
    return;
  }

  sub_13BAB4();
  sub_C8108();
  v93 = sub_C7F90(v91, v92, &protocol conformance descriptor for JSONError);
  sub_9F18(v93);
  *v94 = 0x656C746974;
  v94[1] = 0xE500000000000000;
  v94[2] = v25;
  sub_2B538();
  (*(v95 + 104))();
  swift_willThrow();

  sub_C8188();
  sub_C8134();
  v96 = v108;
  v108();
  (v96)(v80, v98);
  v47 = 1;
  v48 = 1;
  v49 = 1;
  v51 = v119;
LABEL_8:
  sub_13B5A4();
  sub_5224();
  (*(v52 + 8))(v51);

  if (v47)
  {
    sub_C7FD8(v50 + 24);
    if (!v48)
    {
LABEL_10:
      if (!v49)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else if (!v48)
  {
    goto LABEL_10;
  }

  sub_184DC(v50 + 72, &qword_19E960, &qword_13FD30);
  if (!v49)
  {
LABEL_11:
    if (!v48)
    {
      goto LABEL_12;
    }

LABEL_17:
    sub_9238(v50 + 200);
    sub_184DC(v50 + v25[12], &qword_19A350, &unk_13F2C0);
    if (!v49)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_16:
  sub_184DC(v50 + 112, &qword_19E960, &qword_13FD30);
  if (v48)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (!v49)
  {
    return;
  }

LABEL_18:
  sub_184DC(v50 + v25[13], &unk_19E320, &unk_140950);
}

void sub_C7BFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v6 = sub_13B584();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139B64();
  v12 = swift_allocObject();
  sub_139DC4();
  inited = swift_initStackObject();
  v33 = v12;
  v34 = v12;
  v35 = a2;
  v40 = a2;
  sub_C8150();
  v18 = sub_9DB8(v13, v14, v15, v16, v17);
  if (v3)
  {

    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v38 = v19;
  sub_C8150();
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_C8108();
    v23 = sub_C7F90(v21, v22, &protocol conformance descriptor for JSONError);
    sub_18B70(v23);
    *v24 = 0x656C746974;
    v24[1] = 0xE500000000000000;
    v24[2] = &type metadata for OfferPlatter.Button;
    sub_2B538();
    (*(v25 + 104))();
    swift_willThrow();

    v26 = *(v8 + 8);
    v26(a1, v6);
    v26(v11, v6);
    sub_13B5A4();
    sub_5224();
    (*(v27 + 8))(v40);
  }

  else
  {
    v20 = v40;
    sub_139DB4();

    v28 = *(v8 + 8);
    v28(a1, v6);
    v28(v11, v6);
    sub_9414(&v36, v37);
    sub_9414(v37, &v39);
    sub_C80D0(&v38, v31);
    sub_13B5A4();
    sub_5224();
    (*(v29 + 8))(v20);
    sub_C7FD8(&v38);
  }
}

uint64_t sub_C7F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_C8008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferPlatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C806C(uint64_t a1)
{
  v2 = type metadata accessor for OfferPlatter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_C815C(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
  return result;
}

uint64_t sub_C8170()
{

  return sub_9414((v0 - 224), v0 - 176);
}

double sub_C8188()
{

  return result;
}

void sub_C81A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getKeyPath();
  sub_4948(&qword_19F600, &qword_149088);
  sub_13B5E4();

  v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_style] = v15;
  sub_C8DF8();
  swift_getKeyPath();
  sub_C87C8();
  sub_13B5E4();

  if (v13)
  {
    sub_9414(&v12, &v15);
    sub_C87D8();
    (*(v6 + 384))(&v15, a3);
    sub_3C04(&v15);
  }

  else
  {
    sub_2519C(&v12);
  }

  swift_getKeyPath();
  sub_C87C8();
  sub_13B5E4();

  if (v13)
  {
    sub_9414(&v12, &v15);
    sub_C87D8();
    (*(v7 + 384))(&v15, a3);
    sub_3C04(&v15);
  }

  else
  {
    sub_2519C(&v12);
  }

  v8 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_titleLabel];
  swift_getKeyPath();
  sub_13B5E4();

  (*(&stru_158.size + (swift_isaMask & *v8)))(&v15, a3);
  sub_3C04(&v15);
  swift_getKeyPath();
  sub_13B5E4();

  sub_4B14(&v16, v14);
  sub_C7FD8(&v15);
  swift_getKeyPath();
  sub_C87C8();
  sub_13B5E4();

  v9 = v12;
  v10 = v12;
  sub_C7FD8(&v12);
  sub_C9F90(v14, v9, a3);

  sub_3C04(v14);
  [v4 setIsAccessibilityElement:0];
  v11 = [v4 contentView];
  [v11 setIsAccessibilityElement:0];
}

uint64_t sub_C84D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for OfferPlatterComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_C853C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for OfferPlatterComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_C85A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_C85F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_C8674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_C86F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_C8770()
{
  result = qword_19F218;
  if (!qword_19F218)
  {
    type metadata accessor for OfferPlatter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F218);
  }

  return result;
}

id sub_C87F0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_buttonView;
  v11 = [objc_allocWithZone(type metadata accessor for DynamicButton(0)) init];
  v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 0;
  sub_8F358(0);
  [v11 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [*(*&v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView] + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel) setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_infoLabel;
  sub_139BB4();
  v13 = objc_opt_self();
  v14 = [v13 ams_secondaryText];
  v15 = sub_13A2A4();
  __src[3] = v15;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleCaption1;
  v16 = *(*(v15 - 8) + 104);
  v16();
  v17 = UIFontTextStyleCaption1;
  *&v5[v12] = sub_CC938(v17, v18, v19);
  v20 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_subtitleLabel;
  v21 = [v13 ams_primaryText];
  __src[3] = v15;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleFootnote;
  v16();
  v22 = UIFontTextStyleFootnote;
  *&v5[v20] = sub_CC938(v22, v23, v24);
  v25 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_titleLabel;
  v26 = [v13 ams_primaryText];
  __src[3] = v15;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleTitle3;
  v16();
  v27 = UIFontTextStyleTitle3;
  *&v5[v25] = sub_139BA4();
  v28 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_containerView;
  *&v5[v28] = [objc_allocWithZone(AMSUICommonView) init];
  v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_style] = 0;
  v29 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_separatorView;
  *&v5[v29] = [objc_allocWithZone(AMSUICommonView) init];
  sub_C8B3C(0, __src);
  memcpy(&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_metrics], __src, 0x110uLL);
  v32.receiver = v5;
  v32.super_class = type metadata accessor for OfferPlatterComponent();
  v30 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  sub_CA364();

  return v30;
}

uint64_t sub_C8B3C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_139A34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 34.0;
  v32 = &type metadata for CGFloat;
  v33 = &protocol witness table for CGFloat;
  if ((a1 & 1) == 0)
  {
    v8 = 28.0;
  }

  v30 = &protocol witness table for CGFloat;
  *&v31 = 0x4028000000000000;
  v29 = &type metadata for CGFloat;
  *&v28 = v8;
  v26 = &type metadata for CGFloat;
  v27 = &protocol witness table for CGFloat;
  v24 = &protocol witness table for CGFloat;
  *&v25 = 0x405CC00000000000;
  v23 = &type metadata for CGFloat;
  *&v22 = 0x4051000000000000;
  if (_UISolariumEnabled() && ((*(v5 + 104))(v7, enum case for FlagKeys.Solarium(_:), v4), v9 = sub_139A24(), (*(v5 + 8))(v7, v4), (v9 & 1) != 0))
  {
    v10 = 4.0;
    v11 = &protocol witness table for Double;
    v12 = &type metadata for Double;
  }

  else
  {
    v10 = 2.0;
    v11 = &protocol witness table for CGFloat;
    v12 = &type metadata for CGFloat;
  }

  v20 = v12;
  v21 = v11;
  *&v19 = v10;
  v13 = 1.0;
  if (_UISolariumEnabled())
  {
    (*(v5 + 104))(v7, enum case for FlagKeys.Solarium(_:), v4);
    v14 = sub_139A24();
    (*(v5 + 8))(v7, v4);
    if (v14)
    {
      v13 = 6.0;
    }

    else
    {
      v13 = 1.0;
    }
  }

  v17 = &type metadata for Double;
  v18 = &protocol witness table for Double;
  *&v16 = v13;
  sub_21520(&v31, a2);
  sub_21520(&v28, a2 + 40);
  sub_21520(&v25, a2 + 80);
  sub_21520(&v22, a2 + 120);
  *(a2 + 160) = xmmword_149110;
  *(a2 + 176) = xmmword_149110;
  sub_21520(&v19, a2 + 192);
  return sub_21520(&v16, a2 + 232);
}

void sub_C8DF8()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_style];
  v10 = [v1 contentView];
  v18 = v10;
  if (v9)
  {
    if (qword_19A050 != -1)
    {
      swift_once();
      v10 = v18;
    }

    [v10 setBackgroundColor:qword_1B2B48];

    v11 = [v1 contentView];
    v12 = [v11 layer];

    if (qword_19A058 != -1)
    {
      swift_once();
    }

    [v12 setBorderColor:qword_1B2B50];

    if (!_UISolariumEnabled() || (v13 = sub_CC8F8(), v14(v13), v15 = sub_139A24(), (*(v4 + 8))(v8, v2), (v15 & 1) == 0))
    {
      v16 = [v1 contentView];
      v17 = [v16 layer];
      [v17 setShadowOpacity:0.0];
    }

    [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_separatorView] setHidden:0];
  }

  else
  {
    if (qword_19A078 != -1)
    {
      sub_CC87C(&qword_19A078);
      v10 = v18;
    }

    [v10 setBackgroundColor:qword_1B2B70];
  }
}

id sub_C90E4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OfferPlatterComponent();
  return objc_msgSendSuper2(&v3, "isHighlighted");
}

id sub_C916C(uint64_t a1)
{
  v2 = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for OfferPlatterComponent();
  objc_msgSendSuper2(&v4, "setHighlighted:", v2 & 1);
  return sub_C91C8([v1 isHighlighted], 1);
}

id sub_C91C8(char a1, char a2)
{
  v3 = v2;
  sub_139A34();
  sub_9E94();
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v10 = objc_opt_self();
  v11 = [v10 areAnimationsEnabled];
  [v10 setAnimationsEnabled:a2 & 1];
  v12 = _UISolariumEnabled();
  if ((a1 & 1) == 0)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    v20 = sub_CC8F8();
    v21(v20);
    sub_139A24();
    v22 = sub_CC904();
    v23(v22);
    if ((a1 & 1) == 0)
    {
      goto LABEL_11;
    }

    if (*(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_style))
    {
      sub_CC81C();
      sub_CC8C4();
      if ((v9 & 1) == 0)
      {
LABEL_11:
        sub_1D450();
        v24 = swift_allocObject();
        sub_CC89C(v24);
        sub_CC7E0();
        sub_CC804(COERCE_DOUBLE(1107296256));
        v26 = &unk_18BD68;
LABEL_12:
        v31 = v25;
        v32 = v26;
        v19 = _Block_copy(aBlock);

        [v10 animateWithDuration:v19 animations:0.25];
        goto LABEL_13;
      }
    }

    else
    {
    }

    sub_1D450();
    v29 = swift_allocObject();
    sub_CC89C(v29);
    sub_CC7E0();
    sub_CC804(COERCE_DOUBLE(1107296256));
    v26 = &unk_18BD90;
    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = sub_CC8F8();
  v14(v13);
  sub_139A24();
  v15 = sub_CC904();
  v16(v15);
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((*(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_style) & 1) == 0)
  {

    goto LABEL_15;
  }

  sub_CC81C();
  sub_CC8C4();
  if (v9)
  {
LABEL_15:
    sub_1D450();
    v28 = swift_allocObject();
    sub_CC89C(v28);
    sub_CC7E0();
    sub_CC804(COERCE_DOUBLE(1107296256));
    v26 = &unk_18BDE0;
    goto LABEL_12;
  }

LABEL_6:
  sub_1D450();
  v17 = swift_allocObject();
  sub_CC89C(v17);
  sub_CC7E0();
  sub_CC804(COERCE_DOUBLE(1107296256));
  v31 = v18;
  v32 = &unk_18BDB8;
  v19 = _Block_copy(aBlock);

  [v10 animateWithDuration:v19 animations:0.165];
LABEL_13:
  _Block_release(v19);
  return [v10 setAnimationsEnabled:v11];
}

void sub_C94EC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    CGAffineTransformMakeScale(&v5, 0.99, 0.99);
    [v2 setTransform:&v5];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha:0.95];
  }
}

void sub_C95B0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong contentView];

    if (*a2 != -1)
    {
      swift_once();
    }

    [v8 setBackgroundColor:*a3];
  }
}

void sub_C9668(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v5[0] = 0x3FF0000000000000;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = 0x3FF0000000000000;
    v5[4] = 0;
    v5[5] = 0;
    [Strong setTransform:v5];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha:1.0];
  }
}

void sub_C9710(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_139A34();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for OfferPlatterComponent();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  v11 = [v1 traitCollection];
  v12 = sub_13BDE4();

  if (!a1 || (LOBYTE(v13) = a1, (sub_13BDE4() & 1) != (v12 & 1)))
  {
    v14 = [v2 traitCollection];
    v15 = sub_13BDE4();

    sub_C8B3C(v15 & 1, v18);
    v13 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_metrics;
    swift_beginAccess();
    sub_CC708(v18, v2 + v13);
    swift_endAccess();
  }

  if (!_UISolariumEnabled() || ((*(v6 + 104))(v10, enum case for FlagKeys.Solarium(_:), v4), LOBYTE(v13) = sub_139A24(), (*(v6 + 8))(v10, v4), (v13 & 1) == 0))
  {
    if (*(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_style))
    {
      sub_CC81C();
      v16 = sub_CC8C4();
      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    v17 = [v2 contentView];
    if (qword_19A060 != -1)
    {
      sub_CC85C(&qword_19A060);
    }

    sub_CC918(qword_1B2B58);
  }
}

uint64_t sub_C99CC(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for OfferPlatterComponent();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  sub_4ACC4();
  (*(v2 + 392))();
  sub_4ACC4();
  (*(v3 + 392))();
  sub_4ACC4();
  return (*(v4 + 392))();
}

uint64_t sub_C9B30()
{
  v1 = v0;
  swift_getObjectType();
  sub_13A314();
  sub_9E94();
  v43 = v3;
  v44 = v2;
  __chkstk_darwin(v2);
  sub_9EC0();
  v42 = v5 - v4;
  v47.receiver = v0;
  v47.super_class = type metadata accessor for OfferPlatterComponent();
  objc_msgSendSuper2(&v47, "layoutSubviews");
  v6 = [v0 traitCollection];
  v7 = sub_13BDE4();

  sub_C8B3C(v7 & 1, v45);
  v8 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_metrics;
  swift_beginAccess();
  sub_CC708(v45, &v1[v8]);
  swift_endAccess();
  v9 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_containerView];
  v10 = [v1 contentView];
  [v10 bounds];
  sub_1D3D0();

  v11 = sub_35BE8();
  [v12 v13];
  if (v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_style] == 1)
  {

LABEL_4:
    v15 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_separatorView];
    [v15 setHidden:0];
    [v9 frame];
    MinX = CGRectGetMinX(v48);
    [v9 frame];
    MinY = CGRectGetMinY(v49);
    [v9 frame];
    [v15 setFrame:{MinX, MinY, CGRectGetWidth(v50), 0.5}];
    goto LABEL_5;
  }

  v14 = sub_13C144();

  if (v14)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_CBA90(&v1[v8], &v46);
  v18 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_titleLabel];
  v19 = sub_139BB4();
  v45[3] = v19;
  sub_1D3B8();
  v22 = sub_9A68(v20, v21, &protocol conformance descriptor for DynamicLabel);
  v45[4] = v22;
  v45[0] = v18;
  v23 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_buttonView];
  v24 = *(*&v23[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView] + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel);
  v45[8] = v19;
  v45[9] = v22;
  v45[5] = v24;
  v45[13] = type metadata accessor for DynamicButton(0);
  v45[14] = protocol witness table for UIView;
  v45[10] = v23;
  v25 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_subtitleLabel];
  v45[18] = v19;
  v45[19] = v22;
  v45[15] = v25;
  v26 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_infoLabel];
  v45[23] = v19;
  v45[24] = v22;
  v45[20] = v26;
  v27 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_separatorView];
  v45[28] = sub_1B964();
  v45[29] = protocol witness table for UIView;
  v45[25] = v27;
  v28 = v18;
  v29 = v24;
  v30 = v23;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  v34 = [v1 contentView];
  [v34 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_13BE34();
  sub_1D3D0();
  v35 = [v1 contentView];
  v36 = sub_35BE8();
  OfferPlatterComponentLayout.placeChildren(relativeTo:in:)(v37, v36, v38, v39, v40);

  (*(v43 + 8))(v42, v44);
  return sub_CC6B4(v45);
}

double sub_C9F90(uint64_t a1, void *a2, uint64_t a3)
{
  sub_4B14(a1, v23);
  sub_4948(&qword_19AE48, &qword_140110);
  if (swift_dynamicCast())
  {
    memcpy(__dst, __src, 0xC0uLL);

    v6 = sub_13BBB4();
    v7 = &UIFontTextStyleFootnote;
    if (v6 >= 13)
    {
      v7 = &UIFontTextStyleCaption1;
    }

    v8 = *v7;
    v22 = a2;
    v9 = __dst[8];
    v23[3] = &type metadata for OfferPlatterComponent.AdjustedCustomTextStyle;
    v23[4] = sub_CB75C();
    v23[0] = v8;
    v10 = __dst[21];
    sub_139DE4();
    v11 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_buttonView];
    sub_CB7B0(__src, v23);
    v12 = *(v11 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView);
    v13 = v10;
    v14 = v8;

    v15 = v9;
    sub_CB80C(v23, a3, v12);
    sub_CB8F8(v23);
    if (v22)
    {
      v16 = v22;
      sub_8E8AC(v22);
    }

    sub_CB8F8(__src);
    sub_CB8F8(__dst);
  }

  else
  {
    bzero(__src, 0xC0uLL);
    sub_CC68(__src, &qword_19F670, &unk_149168);
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v18 = sub_139A14();
    sub_4910(v18, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    __dst[3] = type metadata accessor for OfferPlatterComponent();
    __dst[0] = v3;
    v19 = v3;
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(__dst);
    sub_139974();
    sub_1399E4();
  }

  return result;
}

void sub_CA364()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = sub_CC8E0();
  if (qword_19A078 != -1)
  {
    sub_CC87C(&qword_19A078);
  }

  [v9 setBackgroundColor:qword_1B2B70];

  if (!_UISolariumEnabled() || (v10 = sub_CC8F8(), v11(v10), v12 = sub_139A24(), (*(v4 + 8))(v8, v2), (v12 & 1) == 0))
  {
    v13 = sub_CC8E0();
    if (qword_19A060 != -1)
    {
      sub_CC85C(&qword_19A060);
    }

    sub_CC918(qword_1B2B58);
  }

  v14 = sub_CC8E0();
  if (qword_19A068 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_1B2B60);

  v15 = sub_CC8E0();
  v16 = [v15 layer];

  if (qword_19A040 != -1)
  {
    swift_once();
  }

  [v16 setBorderWidth:*&qword_1B2B38];

  v17 = sub_CC8E0();
  v18 = [v17 layer];

  if (qword_19A048 != -1)
  {
    swift_once();
  }

  [v18 setBorderColor:qword_1B2B40];

  v19 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_containerView);
  v20 = [objc_opt_self() ams_clear];
  [v19 setBackgroundColor:v20];

  v21 = sub_CC8E0();
  [v21 addSubview:v19];

  v22 = [v19 layer];
  [v22 setMasksToBounds:1];

  v23 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_buttonView);
  v23[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 0;
  sub_8F358(0);
  [v23 setUserInteractionEnabled:0];
  v24 = sub_CC8B8();
  [v24 v25];
  v26 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_titleLabel);
  v27 = sub_CC8B8();
  [v27 v28];
  v29 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_subtitleLabel);
  v30 = sub_CC8B8();
  [v30 v31];
  v32 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_infoLabel);
  v33 = sub_CC8B8();
  [v33 v34];
  v35 = sub_CC8B8();
  [v35 v36];
  sub_CA7D4();
  sub_4948(&qword_19E998, &unk_147300);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_140290;
  v38 = sub_139BB4();
  *(v37 + 32) = v26;
  *(v37 + 56) = v38;
  *(v37 + 64) = v29;
  *(v37 + 120) = v38;
  *(v37 + 88) = v38;
  *(v37 + 96) = v32;
  *(v37 + 152) = type metadata accessor for DynamicButton(0);
  *(v37 + 128) = v23;
  v39 = v26;
  v40 = v29;
  v41 = v32;
  v42 = v23;
  sub_1166F0(v37, v19);
}

void sub_CA7D4()
{
  v1 = sub_139A34();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_separatorView);
  if (_UISolariumEnabled() && ((*(v3 + 104))(v7, enum case for FlagKeys.Solarium(_:), v1), v9 = sub_139A24(), (*(v3 + 8))(v7, v1), (v9 & 1) != 0))
  {
    v10 = &selRef_ams_defaultLine;
  }

  else
  {
    v10 = &selRef_ams_mediaBorder;
  }

  v11 = [objc_opt_self() *v10];
  [v8 setBackgroundColor:v11];
}

double sub_CA918(double a1, double a2, float a3)
{
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_metrics;
  swift_beginAccess();
  sub_CBA90(&v3[v6], &v46);
  v7 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_titleLabel];
  v29 = sub_139BB4();
  sub_1D3B8();
  v30 = sub_9A68(v8, v9, &protocol conformance descriptor for DynamicLabel);
  v28[0] = v7;
  v10 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_buttonView];
  v11 = *(*&v10[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView] + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel);
  v32 = v29;
  v33 = v30;
  v31 = v11;
  v35 = type metadata accessor for DynamicButton(0);
  v36 = protocol witness table for UIView;
  v34 = v10;
  v12 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_subtitleLabel];
  v38 = v29;
  v39 = v30;
  v37 = v12;
  v13 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_infoLabel];
  v41 = v29;
  v42 = v30;
  v40 = v13;
  v14 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21OfferPlatterComponent_separatorView];
  v44 = sub_1B964();
  v45 = protocol witness table for UIView;
  v43 = v14;
  v15 = v7;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_27C54();
  sub_13BE64();
  v22 = v21;
  v24 = v23;
  v25 = [v3 contentView];
  sub_CBAEC(v25, v28, v22, v24);

  sub_27C54();
  sub_13BE74();
  if (a3 != 1000.0)
  {
    a1 = v26;
  }

  sub_CC6B4(v28);
  return a1;
}

id sub_CABC0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OfferPlatterComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_CACB4()
{
  v0 = objc_opt_self();
  v1 = [v0 absoluteDimension:150.0];
  v2 = [v0 estimatedDimension:300.0];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  return v3;
}

id sub_CAD64()
{
  v0 = sub_139A34();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  v7 = sub_1D4CC();
  swift_getObjectType();
  v8 = sub_BBC00();
  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = 176.0;
  }

  else
  {
    v9 = 48.0;
  }

  if (_UISolariumEnabled() && ((*(v2 + 104))(v6, enum case for FlagKeys.Solarium(_:), v0), v10 = sub_139A24(), (*(v2 + 8))(v6, v0), (v10 & 1) != 0))
  {
    [sub_1D4CC() contentSize];
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = sub_1D4CC();
    swift_getObjectType();
    sub_BBC90();
    v15 = v14;
    swift_unknownObjectRelease();
    v16 = v12 - (v15 + v15);
  }

  else
  {
    [sub_1D4CC() contentSize];
    v18 = v17;
    swift_unknownObjectRelease();
    v16 = v18 - v9;
  }

  if (v16 <= 360.0)
  {
    v19 = v16;
  }

  else
  {
    v19 = 360.0;
  }

  v20 = objc_opt_self();
  v21 = [v20 absoluteDimension:v19];
  v22 = [v20 estimatedDimension:300.0];
  v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

  return v23;
}

uint64_t sub_CAFF0()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 1.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_1B2B38 = *&v6;
  return result;
}

void sub_CB0F4()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.25];
  }

  else
  {
    v6 = [objc_opt_self() ams_clear];
  }

  v7 = [v6 CGColor];

  qword_1B2B40 = v7;
}

void sub_CB290()
{
  v0 = [objc_opt_self() ams_clear];
  v1 = [v0 CGColor];

  qword_1B2B50 = v1;
}

void sub_CB2F4()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 colorWithAlphaComponent:0.1];

  v3 = [v0 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.1];

  v5 = [v0 ams_dynamicColorWithLightColor:v2 darkColor:v4];
  v6 = [v5 CGColor];

  qword_1B2B58 = v6;
}

uint64_t sub_CB400()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 18.0;
  }

  qword_1B2B60 = *&v6;
  return result;
}

id sub_CB518(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_CB55C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v5 = &selRef_ams_componentBackground;
  }

  result = [objc_opt_self() *v5];
  qword_1B2B70 = result;
  return result;
}

id sub_CB688(void *a1, uint64_t a2)
{
  v4 = [a1 preferredContentSizeCategory];
  v5 = sub_13BE14();

  if (v5)
  {
    v6 = [a1 preferredContentSizeCategory];
  }

  else
  {
    v6 = UIContentSizeCategoryLarge;
  }

  v7 = v6;
  result = [objc_opt_self() _preferredFontForTextStyle:a2 variant:1024 maximumContentSizeCategory:v6];
  if (result)
  {
    v9 = result;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_CB75C()
{
  result = qword_19F678;
  if (!qword_19F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F678);
  }

  return result;
}

uint64_t sub_CB80C(uint64_t a1, uint64_t a2, char *a3)
{
  v7[3] = &type metadata for DynamicMarkdownText;
  v7[4] = &protocol witness table for DynamicMarkdownText;
  v7[0] = swift_allocObject();
  sub_CB7B0(a1, v7[0] + 16);
  (*(&stru_158.size + (swift_isaMask & **&a3[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel])))(v7, a2);
  [a3 setNeedsLayout];
  return sub_3C04(v7);
}

uint64_t sub_CB94C()
{

  if (*(v0 + 112))
  {
    sub_3C04((v0 + 88));
  }

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_CB9BC()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

double sub_CB9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_CBAEC(void *a1, void *a2, double a3, double a4)
{
  v82 = sub_13A514();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_13A4C4();
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v79 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_13A4B4();
  v78 = *(v86 - 8);
  v91 = v78;
  __chkstk_darwin(v86);
  v85 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_13A454();
  v90 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_13C114();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[33];
  v15 = a2[34];
  sub_162F0(a2 + 30, v14);
  sub_20038(v14, v15);
  sub_13A404();
  v16 = *(v11 + 8);
  v16(v13, v10);
  v17 = a2[48];
  v18 = a2[49];
  sub_162F0(a2 + 45, v17);
  sub_20038(v17, v18);
  sub_13A404();
  v16(v13, v10);
  v19 = a2[38];
  v20 = a2[39];
  sub_162F0(a2 + 35, v19);
  sub_20038(v19, v20);
  sub_13A404();
  v16(v13, v10);
  v21 = a2[43];
  v22 = a2[44];
  sub_162F0(a2 + 40, v21);
  sub_20038(v21, v22);
  sub_13A404();
  v16(v13, v10);
  sub_162F0(a2 + 5, a2[8]);
  v23 = [a1 traitCollection];
  sub_13A3A4();

  sub_162F0(a2, a2[3]);
  v77 = a1;
  sub_13A384();
  v24 = [a1 traitCollection];
  [v24 layoutDirection];

  sub_13BE64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v25 = *(sub_13A4F4() - 8);
  v75 = *(v25 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v76 = v27;
  *(v27 + 16) = xmmword_13E650;
  v83 = v27 + v26;
  v29 = a2[18];
  v28 = a2[19];
  v30 = sub_162F0(a2 + 15, v29);
  v97 = v29;
  v98 = *(v28 + 8);
  v31 = sub_CC08(&v96);
  (*(*(v29 - 8) + 16))(v31, v30, v29);
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v72 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v32 = *(v90 + 104);
  v73 = v90 + 104;
  v74 = v32;
  v32(v84);
  v71 = sub_4948(&qword_19AFE8, &unk_140260);
  v33 = *(v78 + 72);
  v65 = *(v91 + 80);
  v66 = (v65 + 32) & ~v65;
  v78 = 3 * v33;
  v34 = swift_allocObject();
  v70 = xmmword_13E660;
  *(v34 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v92 = v34;
  v68 = sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v67 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v69 = sub_1D268();
  v35 = v85;
  v36 = v86;
  sub_13BF64();
  v64 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v37 = v89;
  v63 = *(v89 + 104);
  v38 = v79;
  v39 = v88;
  v63(v79);
  v40 = v84;
  sub_13A4E4();
  v41 = *(v37 + 8);
  v89 = v37 + 8;
  v62 = v41;
  v41(v38, v39);
  v42 = *(v91 + 8);
  v91 += 8;
  v42(v35, v36);
  v43 = *(v90 + 8);
  v90 += 8;
  v61 = v43;
  v44 = v40;
  v45 = v87;
  v43(v40, v87);
  sub_CC68(&v93, &qword_19AFF8, &unk_140270);
  sub_3C04(&v96);
  v46 = a2[23];
  v47 = a2[24];
  v48 = sub_162F0(a2 + 20, v46);
  v97 = v46;
  v98 = *(v47 + 8);
  v49 = sub_CC08(&v96);
  (*(*(v46 - 8) + 16))(v49, v48, v46);
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v50 = v44;
  v51 = v45;
  v74(v44, v72, v45);
  v52 = swift_allocObject();
  *(v52 + 16) = v70;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v92 = v52;
  v53 = v85;
  v54 = v86;
  sub_13BF64();
  v55 = v88;
  (v63)(v38, v64, v88);
  sub_13A4E4();
  v62(v38, v55);
  v42(v53, v54);
  v61(v50, v51);
  sub_CC68(&v93, &qword_19AFF8, &unk_140270);
  sub_3C04(&v96);
  v56 = v80;
  sub_13A4D4();
  sub_13A464();
  v58 = v57;
  (*(v81 + 8))(v56, v82);
  return v58;
}

void sub_CC7E0()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  *(v2 - 128) = _NSConcreteStackBlock;
}

uint64_t sub_CC81C()
{

  return sub_13C144();
}

uint64_t sub_CC85C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_CC87C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_CC89C(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

double sub_CC8C4()
{

  return result;
}

id sub_CC8E0()
{
  v3 = *(v1 + 3456);

  return [v0 v3];
}

void sub_CC918(uint64_t a1)
{

  sub_12BE00(a1, 7.0, 1.0, 0.0, 3.0);
}

uint64_t sub_CC938(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_139BA4();
}

uint64_t OfferPlatterComponentLayout.init(metrics:titleView:buttonLabel:buttonView:subtitleView:infoView:separatorView:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  memcpy((a8 + 240), __src, 0x110uLL);
  sub_9414(a2, a8);
  sub_9414(a3, a8 + 40);
  sub_9414(a4, a8 + 80);
  sub_9414(a5, a8 + 120);
  sub_9414(a6, a8 + 160);

  return sub_9414(a7, a8 + 200);
}

uint64_t OfferPlatterComponentLayout.placeChildren(relativeTo:in:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v55 = sub_13A314();
  sub_9E94();
  v54 = v8;
  __chkstk_darwin(v9);
  sub_21548();
  sub_2159C(v10);
  v53 = sub_13A514();
  sub_9E94();
  v52 = v11;
  __chkstk_darwin(v12);
  sub_21548();
  sub_2159C(v13);
  v59 = sub_13A4C4();
  sub_9E94();
  v60 = v14;
  __chkstk_darwin(v15);
  sub_21548();
  sub_2159C(v16);
  v57 = sub_13A4B4();
  v62 = *(v57 - 8);
  __chkstk_darwin(v57);
  sub_21548();
  sub_2159C(v17);
  v58 = sub_13A454();
  sub_9E94();
  v61 = v18;
  __chkstk_darwin(v19);
  sub_21548();
  sub_2159C(v20);
  sub_13C114();
  sub_9E94();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_CE424(v5 + 45);
  sub_CE400();
  v24 = *(v22 + 8);
  v25 = sub_7FCE0();
  v24(v25);
  sub_CE424(v5 + 30);
  sub_CE400();
  v26 = sub_7FCE0();
  v24(v26);
  sub_CE424(v5 + 35);
  sub_CE400();
  v27 = sub_7FCE0();
  v24(v27);
  sub_CE424(v5 + 40);
  sub_CE400();
  v28 = sub_7FCE0();
  v24(v28);
  sub_21664(v5 + 5);
  v29 = [a1 traitCollection];
  sub_13A3A4();

  sub_21664(v5 + 10);
  sub_CE3F0();
  CGRectGetMaxX(v69);
  sub_CE3F0();
  CGRectGetMinY(v70);
  sub_CE3F0();
  sub_13BE44();
  sub_13A354();
  sub_21664(v5);
  sub_13A384();
  sub_21664(v5);
  sub_CE3F0();
  CGRectGetMinX(v71);
  sub_CE3F0();
  CGRectGetMinY(v72);
  sub_CE3F0();
  sub_13BE44();
  sub_13A354();
  sub_21664(v5 + 10);
  sub_13A344();
  CGRectGetWidth(v73);
  v30 = [a1 traitCollection];
  [v30 layoutDirection];

  sub_13BE34();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v31 = *(sub_13A4F4() - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  *(swift_allocObject() + 16) = xmmword_13E650;
  v33 = v6[18];
  v34 = v6[19];
  sub_21664(v6 + 15);
  v67 = v33;
  v68 = *(v34 + 8);
  v35 = sub_CC08(&v66);
  (*(*(v33 - 8) + 16))(v35, v32, v33);
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v46 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v47 = *(v61 + 104);
  v47();
  sub_4948(&qword_19AFE8, &unk_140260);
  *(swift_allocObject() + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  sub_13BF64();
  v45 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v44 = *(v60 + 104);
  v44();
  sub_13A4E4();
  v43 = *(v60 + 8);
  v43(v49, v59);
  v42 = *(v62 + 8);
  v42(v48, v57);
  v41 = *(v61 + 8);
  v41(v56, v58);
  sub_1D2CC(&v63);
  sub_3C04(&v66);
  v36 = v6[23];
  v37 = v6[24];
  v38 = sub_162F0(v6 + 20, v36);
  v67 = v36;
  v68 = *(v37 + 8);
  v39 = sub_CC08(&v66);
  (*(*(v36 - 8) + 16))(v39, v38, v36);
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  (v47)(v56, v46, v58);
  *(swift_allocObject() + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  sub_13BF64();
  (v44)(v49, v45, v59);
  sub_13A4E4();
  v43(v49, v59);
  v42(v48, v57);
  v41(v56, v58);
  sub_1D2CC(&v63);
  sub_3C04(&v66);
  sub_13A4D4();
  sub_13A474();
  sub_13A2D4();
  sub_CE3F0();
  CGRectGetMinX(v74);
  sub_CE3F0();
  CGRectGetMinY(v75);
  sub_13A2C4();
  (*(v54 + 8))(v51, v55);
  return (*(v52 + 8))(v50, v53);
}

uint64_t OfferPlatterComponentLayout.Metrics.init(titleTrailingSpace:maximumButtonHeight:maximumButtonWidth:minimumButtonWidth:buttonInsets:subtitleTopSpace:infoTopSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, double *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  sub_9414(a1, a7);
  sub_9414(a2, (a7 + 5));
  sub_9414(a3, (a7 + 10));
  sub_9414(a4, (a7 + 15));
  a7[20] = a8;
  a7[21] = a9;
  a7[22] = a10;
  a7[23] = a11;
  sub_9414(a5, (a7 + 24));

  return sub_9414(a6, (a7 + 29));
}

double OfferPlatterComponentLayout.measurements(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();
  v1 = sub_2171C();

  return sub_CD73C(v1, v2, v3, v4);
}

double sub_CD73C(void *a1, void *a2, double a3, double a4)
{
  v82 = sub_13A514();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_13A4C4();
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v79 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_13A4B4();
  v78 = *(v86 - 8);
  v91 = v78;
  __chkstk_darwin(v86);
  v85 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_13A454();
  v90 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_13C114();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[33];
  v15 = a2[34];
  sub_162F0(a2 + 30, v14);
  sub_20038(v14, v15);
  sub_13A404();
  v16 = *(v11 + 8);
  v16(v13, v10);
  v17 = a2[48];
  v18 = a2[49];
  sub_162F0(a2 + 45, v17);
  sub_20038(v17, v18);
  sub_13A404();
  v16(v13, v10);
  v19 = a2[38];
  v20 = a2[39];
  sub_162F0(a2 + 35, v19);
  sub_20038(v19, v20);
  sub_13A404();
  v16(v13, v10);
  v21 = a2[43];
  v22 = a2[44];
  sub_162F0(a2 + 40, v21);
  sub_20038(v21, v22);
  sub_13A404();
  v16(v13, v10);
  sub_162F0(a2 + 5, a2[8]);
  v23 = [a1 traitCollection];
  sub_13A3A4();

  sub_162F0(a2, a2[3]);
  v77 = a1;
  sub_13A384();
  v24 = [a1 traitCollection];
  [v24 layoutDirection];

  sub_13BE64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v25 = *(sub_13A4F4() - 8);
  v75 = *(v25 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v76 = v27;
  *(v27 + 16) = xmmword_13E650;
  v83 = v27 + v26;
  v29 = a2[18];
  v28 = a2[19];
  v30 = sub_162F0(a2 + 15, v29);
  v97 = v29;
  v98 = *(v28 + 8);
  v31 = sub_CC08(&v96);
  (*(*(v29 - 8) + 16))(v31, v30, v29);
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v72 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v32 = *(v90 + 104);
  v73 = v90 + 104;
  v74 = v32;
  v32(v84);
  v71 = sub_4948(&qword_19AFE8, &unk_140260);
  v33 = *(v78 + 72);
  v65 = *(v91 + 80);
  v66 = (v65 + 32) & ~v65;
  v78 = 3 * v33;
  v34 = swift_allocObject();
  v70 = xmmword_13E660;
  *(v34 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v92 = v34;
  v68 = sub_20068();
  v67 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v69 = sub_1D268();
  v35 = v85;
  v36 = v86;
  sub_13BF64();
  v64 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v37 = v89;
  v63 = *(v89 + 104);
  v38 = v79;
  v39 = v88;
  v63(v79);
  v40 = v84;
  sub_13A4E4();
  v41 = *(v37 + 8);
  v89 = v37 + 8;
  v62 = v41;
  v41(v38, v39);
  v42 = *(v91 + 8);
  v91 += 8;
  v42(v35, v36);
  v43 = *(v90 + 8);
  v90 += 8;
  v61 = v43;
  v44 = v40;
  v45 = v87;
  v43(v40, v87);
  sub_1D2CC(&v93);
  sub_3C04(&v96);
  v46 = a2[23];
  v47 = a2[24];
  v48 = sub_162F0(a2 + 20, v46);
  v97 = v46;
  v98 = *(v47 + 8);
  v49 = sub_CC08(&v96);
  (*(*(v46 - 8) + 16))(v49, v48, v46);
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v50 = v44;
  v51 = v45;
  v74(v44, v72, v45);
  v52 = swift_allocObject();
  *(v52 + 16) = v70;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v92 = v52;
  v53 = v85;
  v54 = v86;
  sub_13BF64();
  v55 = v88;
  (v63)(v38, v64, v88);
  sub_13A4E4();
  v62(v38, v55);
  v42(v53, v54);
  v61(v50, v51);
  sub_1D2CC(&v93);
  sub_3C04(&v96);
  v56 = v80;
  sub_13A4D4();
  sub_13A464();
  v58 = v57;
  (*(v81 + 8))(v56, v82);
  return v58;
}

unint64_t sub_CE2B8()
{
  result = qword_19F680;
  if (!qword_19F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F680);
  }

  return result;
}

uint64_t sub_CE31C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_CE35C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_CE400()
{

  sub_13A404();
  return result;
}

uint64_t sub_CE424(void *a1)
{
  sub_162F0(a1, v1);

  return sub_20038(v1, v2);
}

BOOL sub_CE45C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1849A8;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  return v4 != 0;
}

BOOL sub_CE4CC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_CE45C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_CE500@<X0>(uint64_t *a1@<X8>)
{
  result = sub_CE4A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_CE528@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;

  v8._rawValue = &off_1849A8;
  v23._countAndFlagsBits = a1;
  v23._object = a2;
  v9 = sub_13C104(v8, v23);

  if (v9)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v10 = sub_139A14();
    sub_4910(v10, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v11 = &type metadata for PFODSheetLayout.BodySpacing;
    v20 = &type metadata for PFODSheetLayout.BodySpacing;
    v19[0] = swift_allocObject();
    memcpy((v19[0] + 16), v4, 0x58uLL);
    sub_CF724(v4, &v16);
    sub_139984();
    sub_49C8(v19);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_13BFE4(42);

    v16 = 0xD000000000000018;
    v17 = 0x800000000014E6D0;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_13BBC4(v21);
    v22._object = 0x800000000014E6F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v22);
    v18 = &type metadata for String;
    sub_139984();
    sub_49C8(&v16);
    sub_1399F4();
    v12 = &off_18C1B0;
  }

  else
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v13 = sub_139A14();
    sub_4910(v13, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v20 = &type metadata for PFODSheetLayout.BodySpacing;
    v19[0] = swift_allocObject();
    memcpy((v19[0] + 16), v4, 0x58uLL);
    sub_CF724(v4, &v16);
    sub_139984();
    sub_49C8(v19);
    v18 = &type metadata for String;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000000014E710;
    sub_139984();
    sub_49C8(&v16);
    v18 = &type metadata for PFODSheetLayout.BodySpacing.OverrideSectionIdentifier;
    sub_139984();
    sub_49C8(&v16);
    sub_1399F4();
    v12 = &protocol witness table for BoxedLayoutCollectionSpacingModel;
    v11 = &type metadata for BoxedLayoutCollectionSpacingModel;
  }

  a3[3] = v11;
  a3[4] = v12;
  v14 = swift_allocObject();
  *a3 = v14;
  memcpy((v14 + 16), v4, 0x58uLL);
  return sub_CF724(v4, &v16);
}

unint64_t sub_CE964(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1849E0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_CEA0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_CE964(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_CEA3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_CE964(a1, a2);
  if (v7 == 3)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v19 = &type metadata for PFODSheetLayout.FooterSpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_CF75C(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_13BBC4(v21);
    v22._object = 0x800000000014E6F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v22);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for PFODSheetLayout.FooterSpacing;
    a3[4] = &off_18C160;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x108uLL);
    return sub_CF75C(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v19 = &type metadata for PFODSheetLayout.FooterSpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_CF75C(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for PFODSheetLayout.FooterSpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      if (v11 == 1)
      {
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = (v3 + 176);
      }

      else
      {
        memcpy(__dst, v3, 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = v3;
      }
    }

    else
    {
      memcpy(__dst, (v3 + 88), 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = (v3 + 88);
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v18);
  }
}

void *sub_CEF60@<X0>(void *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  return memcpy(a1, v10, 0x108uLL);
}