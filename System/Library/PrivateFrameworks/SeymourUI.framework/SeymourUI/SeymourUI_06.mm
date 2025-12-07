unint64_t sub_20B5E5BD0()
{
  result = qword_27C7618A0;
  if (!qword_27C7618A0)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7618A0);
  }

  return result;
}

unint64_t sub_20B5E5C28()
{
  result = qword_27C762910;
  if (!qword_27C762910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C762910);
  }

  return result;
}

void sub_20B5E5CC8()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_landscapeConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_portraitConstraints) = v2;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_previousBounds);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_spinnerView;
  v5 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v4) = v5;
  v46 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_lookingLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v7 = *MEMORY[0x277D76918];
  v8 = *MEMORY[0x277D74420];
  v9 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v11 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_20C14F980;
  v13 = *MEMORY[0x277D74430];
  *(v12 + 32) = *MEMORY[0x277D74430];
  *(v12 + 40) = v8;
  v14 = v11;
  v15 = v13;
  v16 = sub_20B6B134C(v12);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v16;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v17 = sub_20C13C744();

  v18 = [v9 fontDescriptorByAddingAttributes_];

  v19 = objc_opt_self();
  v20 = [v19 fontWithDescriptor:v18 size:0.0];

  [v6 setFont_];
  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v6 setTextColor_];

  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  [v6 setTextAlignment_];
  v22 = v6;
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v22 setContentCompressionResistancePriority:1 forAxis:v24];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v46) = v22;
  v25 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_checkLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v27 = [v19 preferredFontForTextStyle_];
  [v26 setFont_];

  v28 = objc_opt_self();
  v29 = [v28 labelColor];
  [v26 setTextColor_];

  [v26 setTextAlignment_];
  v30 = v26;
  LODWORD(v31) = 1132068864;
  [v30 setContentCompressionResistancePriority:1 forAxis:v31];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v25) = v30;
  v32 = [v28 whiteColor];
  type metadata accessor for RoundedButton();
  v33 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v33 setTitle:0 forState:0];
  v34 = v33;
  v35 = [v34 titleLabel];
  if (v35)
  {
    v36 = v35;
    [v35 setAdjustsFontForContentSizeCategory_];
  }

  v37 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton;
  sub_20BD4F054(0, 0, 1, 0);
  [v34 setTintColor_];

  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = [v28 systemBackgroundColor];
  [v34 setTintColor_];

  *(v1 + v37) = v34;
  v39 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_imageView;
  v40 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  LODWORD(v41) = 1148846080;
  [v40 setContentCompressionResistancePriority:0 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [v40 setContentCompressionResistancePriority:1 forAxis:v42];
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v39) = v40;
  v43 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_connectingView;
  v44 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v44 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v43) = v44;
  v45 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackViewCenterYConstraint;
  *(v1 + v45) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

void sub_20B5E6378(void (*a1)(uint64_t *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v6 = type metadata accessor for ShelfDiffableItemIdentifier(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];
    sub_20BB5D40C(0, v10, 0);
    v11 = v20;
    v12 = (a3 + 32);
    while (1)
    {
      v13 = *v12++;
      v19 = v13;

      (v17)(&v19);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_20BB5D40C((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_20B5E7874(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for ShelfDiffableItemIdentifier);
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_20B5E6658(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v26 = a7;
  v27 = a1;
  v10 = v7;
  v28 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v23 - v15;
  v17 = *(a3 + 16);
  if (v17)
  {
    v29 = MEMORY[0x277D84F90];
    v24 = a5;
    (a5)(0, v17, 0, v14);
    v18 = v29;
    v19 = *(a6(0) - 8);
    v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v25 = *(v19 + 72);
    while (1)
    {
      v27(v20);
      if (v10)
      {
        break;
      }

      v10 = 0;
      v29 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        v24(v21 > 1, v22 + 1, 1);
        v18 = v29;
      }

      *(v18 + 16) = v22 + 1;
      sub_20B5E7874(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v26);
      v20 += v25;
      if (!--v17)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_20B5E68CC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_20C135D04();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    sub_20BB5DAAC(0, v9, 0);
    v10 = v21;
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = a3 + v17;
    v16 = (v6 + 32);
    v12 = *(v6 + 72);
    while (1)
    {
      v19(v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20BB5DAAC((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      (*v16)(v10 + v17 + v14 * v12, v8, v18);
      v11 += v12;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_20B5E6A88(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v18 = MEMORY[0x277D84F90];
    sub_20BB5E398(0, v5, 0);
    v7 = v18;
    for (i = (a3 + 40); ; i += 2)
    {
      v9 = *i;
      v16[0] = *(i - 1);
      v16[1] = v9;

      (a1)(&v17, v16);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v17;
      v11 = BYTE4(v17);
      v18 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20BB5E398((v12 > 1), v13 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 8 * v13;
      *(v14 + 32) = v10;
      *(v14 + 36) = v11;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_20B5E6BB8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v23 = a2;
  v7 = type metadata accessor for ShelfItemX(0);
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a4;
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 == -1)
  {
    return;
  }

  v25 = MEMORY[0x277D84F90];
  sub_20BB5E57C(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = v25;
    while (v12 < v11)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_20;
      }

      if (v13)
      {
        goto LABEL_26;
      }

      v16 = a3;
      v24 = a3;
      v22(&v24);
      if (v4)
      {
        goto LABEL_25;
      }

      v25 = v14;
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v17 >= v18 >> 1)
      {
        sub_20BB5E57C((v18 > 1), v17 + 1, 1);
        v14 = v25;
      }

      *(v14 + 16) = v17 + 1;
      sub_20B5E7874(v9, v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, type metadata accessor for ShelfItemX);
      v13 = a3 == v21;
      if (a3 == v21)
      {
        a3 = 0;
      }

      else
      {
        ++a3;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_21;
        }
      }

      v4 = 0;
      ++v12;
      if (v15 == v11)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
LABEL_25:

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_20B5E6DF4(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5)
  {
    v22 = MEMORY[0x277D84F90];
    sub_20BB5E5C0(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v9 = v22;
      if (a4 <= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = a4;
      }

      v11 = a3 - v10;
      while (1)
      {
        v19 = a3 + v8;
        a1(v20, &v19);
        if (v4)
        {
          goto LABEL_23;
        }

        *&v18[10] = *&v21[10];
        v17 = v20[1];
        *v18 = *v21;
        v16 = v20[0];
        v22 = v9;
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_20BB5E5C0((v12 > 1), v13 + 1, 1);
          v9 = v22;
        }

        *(v9 + 16) = v13 + 1;
        v14 = (v9 + (v13 << 6));
        *(v14 + 74) = *&v18[10];
        v14[3] = v17;
        v14[4] = *v18;
        v14[2] = v16;
        if (a4 < a3)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (!(v11 + v8))
        {
          goto LABEL_19;
        }

        if (~a3 + a4 == v8)
        {
          return;
        }

        if (__OFADD__(++v8, 1))
        {
          goto LABEL_20;
        }
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:

    __break(1u);
  }
}

void sub_20B5E6F7C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for MetadataEntry(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];
    sub_20BB5E624(0, v10, 0);
    v11 = v20;
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a3 + v17;
    v13 = *(v7 + 72);
    while (1)
    {
      v18(v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_20BB5E624((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_20B5E7874(v9, v11 + v17 + v15 * v13, type metadata accessor for MetadataEntry);
      v12 += v13;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_20B5E7178(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v25 = a1;
  v26 = a2;
  v24 = a4(0);
  v11 = *(v24 - 8);
  v12 = MEMORY[0x28223BE20](v24);
  v14 = &v21 - v13;
  v15 = *(a3 + 16);
  if (v15)
  {
    v27 = MEMORY[0x277D84F90];
    v21 = a5;
    (a5)(0, v15, 0, v12);
    v16 = v27;
    v17 = *(a6(0) - 8);
    v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = v11 + 32;
    v22 = *(v17 + 72);
    while (1)
    {
      v25(v18);
      if (v9)
      {
        break;
      }

      v9 = 0;
      v27 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        v21(v19 > 1, v20 + 1, 1);
        v16 = v27;
      }

      *(v16 + 16) = v20 + 1;
      (*(v11 + 32))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v24);
      v18 += v22;
      if (!--v15)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_20B5E7398(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v26 = MEMORY[0x277D84F90];
    sub_20BB5E910(0, v4, 0);
    v6 = v26;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270, &qword_20C155560) - 8);
    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v19 = *(v7 + 72);
    while (1)
    {
      a1(&v21, v8);
      if (v3)
      {
        break;
      }

      v10 = v21;
      v9 = v22;
      v11 = v23;
      v13 = v24;
      v12 = v25;
      v26 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        v18 = v25;
        v17 = v22;
        sub_20BB5E910((v14 > 1), v15 + 1, 1);
        v12 = v18;
        v9 = v17;
        v6 = v26;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 40 * v15;
      *(v16 + 32) = v10;
      *(v16 + 40) = v9;
      *(v16 + 48) = v11;
      *(v16 + 56) = v13;
      *(v16 + 64) = v12;
      v8 += v19;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t ShowcaseLockupContent.applyingRemoteBrowsingEnvironment(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_20C135E24();
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B5E76F0(v3, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20C134A74();
      sub_20B5E7754();
      v13 = sub_20C13CC94();

      *a2 = v13;
    }

    else
    {
      v15 = sub_20C137654();
      (*(*(v15 - 8) + 32))(a2, v8, v15);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      return sub_20B5E76F0(v3, a2);
    }

    v10 = *v8;
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *&v16[-16] = a1;
    sub_20B5E68CC(sub_20B5E784C, &v16[-32], v10);
    v12 = v11;

    *a2 = v12;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_20B5E76F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135E24();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B5E7754()
{
  result = qword_27C7625D0;
  if (!qword_27C7625D0)
  {
    sub_20C134A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7625D0);
  }

  return result;
}

uint64_t sub_20B5E77AC(uint64_t a1, uint64_t a2)
{
  sub_20C135CE4();
  sub_20C135CF4();
  sub_20C134A74();
  sub_20B5E7754();
  sub_20C13CC94();

  return sub_20C135CD4();
}

uint64_t sub_20B5E7874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B5E78DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v96 = a2;
  v97 = a1;
  v107 = a3;
  v5 = sub_20C13BB84();
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v92 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v92 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v92 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v92 - v18;
  MEMORY[0x28223BE20](v20);
  v101 = &v92 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7625D8, &unk_20C150110);
  MEMORY[0x28223BE20](v22 - 8);
  v99 = &v92 - v23;
  v24 = sub_20C135E74();
  v98 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v94 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v100 = &v92 - v27;
  v28 = sub_20C132C14();
  v102 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v93 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v92 - v31;
  v34 = MEMORY[0x28223BE20](v33);
  v103 = &v92 - v35;
  v95 = v4;
  v36 = [v4 contentPages];
  sub_20B51C88C(0, &qword_27C7625E0, 0x277D1B298);
  v37 = sub_20C13CC74();

  if (!(v37 >> 62))
  {
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_42:

    sub_20C13B424();
    v80 = sub_20C13BB74();
    v81 = sub_20C13D1D4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_20B517000, v80, v81, "Banner message missing content page", v82, 2u);
      MEMORY[0x20F2F6A40](v82, -1, -1);
    }

    (*(v105 + 8))(v7, v106);
    goto LABEL_52;
  }

  if (!sub_20C13DB34())
  {
    goto LABEL_42;
  }

LABEL_3:
  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x20F2F5430](0, v37);
  }

  else
  {
    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v38 = *(v37 + 32);
  }

  v39 = v38;

  v104 = v39;
  v40 = [v39 images];
  if (!v40)
  {
LABEL_49:
    sub_20C13B424();
    v83 = sub_20C13BB74();
    v84 = sub_20C13D1D4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_20B517000, v83, v84, "Banner message missing image", v85, 2u);
      MEMORY[0x20F2F6A40](v85, -1, -1);
    }

    (*(v105 + 8))(v10, v106);
    goto LABEL_52;
  }

  v37 = v40;
  sub_20B51C88C(0, &qword_27C7625E8, 0x277D1B2B0);
  v7 = sub_20C13CC74();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  if (!sub_20C13DB34())
  {
LABEL_48:

    goto LABEL_49;
  }

LABEL_9:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x20F2F5430](0, v7);
    v41 = v102;
  }

  else
  {
    v41 = v102;
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v42 = *(v7 + 32);
  }

  v43 = [v42 url];

  sub_20C132B94();
  v37 = v28;
  (*(v41 + 32))(v103, v32, v28);
  v44 = v104;
  v45 = [v104 title];
  if (!v45)
  {
    sub_20C13B424();
    v62 = sub_20C13BB74();
    v63 = sub_20C13D1D4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_20B517000, v62, v63, "Banner message missing title", v64, 2u);
      MEMORY[0x20F2F6A40](v64, -1, -1);
    }

    (*(v105 + 8))(v13, v106);
    goto LABEL_32;
  }

  v46 = v45;
  sub_20C13C954();

  v47 = [v44 subtitle];
  if (!v47)
  {

    sub_20C13B424();
    v65 = sub_20C13BB74();
    v66 = sub_20C13D1D4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_20B517000, v65, v66, "Banner message missing subtitle", v67, 2u);
      MEMORY[0x20F2F6A40](v67, -1, -1);
    }

    (*(v105 + 8))(v16, v106);
LABEL_32:
    (*(v41 + 8))(v103, v28);
LABEL_52:
    v73 = 1;
    v71 = v107;
    goto LABEL_53;
  }

  v48 = v47;
  v49 = sub_20C13C954();

  v50 = [v44 contentParameters];
  if (!v50)
  {
    goto LABEL_33;
  }

  v92 = v49;
  v51 = v50;
  v52 = sub_20C13C754();

  v108 = sub_20C135594();
  v109 = v53;
  sub_20C13DC04();
  if (!*(v52 + 16) || (v54 = sub_20B65B190(v110), (v55 & 1) == 0))
  {

    sub_20B51D9C4(v110);
    goto LABEL_35;
  }

  sub_20B51F1D8(*(v52 + 56) + 32 * v54, v111);
  sub_20B51D9C4(v110);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:

LABEL_35:
    sub_20C13B424();
    v68 = sub_20C13BB74();
    v69 = sub_20C13D1D4();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v107;
    if (v70)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_20B517000, v68, v69, "Banner message missing content parameters", v72, 2u);
      MEMORY[0x20F2F6A40](v72, -1, -1);
    }

    (*(v105 + 8))(v19, v106);
    goto LABEL_38;
  }

  v32 = v108;
  v56 = [v104 actions];
  if (!v56)
  {

LABEL_59:
    v87 = v101;
    sub_20C13B424();
    v88 = sub_20C13BB74();
    v89 = sub_20C13D1D4();
    v90 = os_log_type_enabled(v88, v89);
    v71 = v107;
    if (v90)
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_20B517000, v88, v89, "Banner message malformed action", v91, 2u);
      MEMORY[0x20F2F6A40](v91, -1, -1);
    }

    (*(v105 + 8))(v87, v106);
LABEL_38:
    (*(v41 + 8))(v103, v37);
    v73 = 1;
LABEL_53:
    v86 = sub_20C1362B4();
    return (*(*(v86 - 8) + 56))(v71, v73, 1, v86);
  }

  v57 = v56;
  sub_20B51C88C(0, &qword_27C7625F0, 0x277D1B290);
  v41 = sub_20C13CC74();

  if (!(v41 >> 62))
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_21;
    }

LABEL_57:

LABEL_58:
    v41 = v102;
    goto LABEL_59;
  }

LABEL_56:
  result = sub_20C13DB34();
  if (!result)
  {
    goto LABEL_57;
  }

LABEL_21:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v59 = MEMORY[0x20F2F5430](0, v41);
    goto LABEL_24;
  }

  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v59 = *(v41 + 32);
LABEL_24:
    v60 = v59;

    v61 = v99;
    sub_20BB0C00C(v99);
    if ((*(v98 + 48))(v61, 1, v24) != 1)
    {
      v74 = v61;
      v106 = v32;
      v75 = v100;
      sub_20B5E8614(v74, v100);
      sub_20B5E8678(v75, v94);
      v76 = [v95 identifier];
      v105 = sub_20C13C954();
      v101 = v77;

      v78 = v102;
      v79 = v103;
      (*(v102 + 16))(v93, v103, v37);

      v71 = v107;
      sub_20C136274();

      sub_20B5E86DC(v100);
      (*(v78 + 8))(v79, v37);
      v73 = 0;
      goto LABEL_53;
    }

    sub_20B5E85AC(v61);
    goto LABEL_58;
  }

  __break(1u);
  return result;
}

uint64_t sub_20B5E85AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7625D8, &unk_20C150110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B5E8614(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135E74();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5E8678(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135E74();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5E86DC(uint64_t a1)
{
  v2 = sub_20C135E74();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B5E8738()
{
  v0 = sub_20C13A814();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762648, &qword_20C16E2D0);
  __swift_allocate_value_buffer(v4, qword_27C7625F8);
  __swift_project_value_buffer(v4, qword_27C7625F8);
  (*(v1 + 104))(v3, *MEMORY[0x277D4EEC0], v0);
  v6[15] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768830, &unk_20C1723F0);
  sub_20B5EB060(&unk_27C76BB90, MEMORY[0x277D4F9F8], MEMORY[0x277D4FA50]);
  sub_20B5EB060(&unk_27C768840, MEMORY[0x277D839C8], MEMORY[0x277D84F50]);
  return sub_20C13A384();
}

char *sub_20B5E88D0(int a1)
{
  v150 = a1;
  v2 = sub_20C13C554();
  v152 = *(v2 - 8);
  v153 = v2;
  MEMORY[0x28223BE20](v2);
  v151 = (&v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20C132EE4();
  v166 = *(v4 - 8);
  v167 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v163 = &v148 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v155 = *(v9 - 8);
  v156 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v154 = &v148 - v13;
  v14 = sub_20C133154();
  v157 = *(v14 - 8);
  v158 = v14;
  MEMORY[0x28223BE20](v14);
  v159 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762648, &qword_20C16E2D0);
  v17 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v19 = &v148 - v18;
  v169 = v1;
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated);
  if (v20)
  {
    v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated + 8);

    v20(v22);
    sub_20B583ECC(v20, v21);
  }

  v23 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_durations);
  v24 = MEMORY[0x277D84F90];
  if (v23 && *(v23 + 16))
  {
    v168 = *(v23 + 16);
    v25 = qword_27C760658;

    if (v25 != -1)
    {
      goto LABEL_119;
    }

LABEL_6:
    v26 = __swift_project_value_buffer(v16, qword_27C7625F8);
    (*(v17 + 16))(v19, v26, v16);
    sub_20C13A344();
    (*(v17 + 8))(v19, v16);
    if (v191 == 2 || (v191 & 1) == 0)
    {
      v27 = &unk_2822880F0;
    }

    else
    {
      v27 = &unk_282288090;
    }

    v53 = v27[2];
    v54 = &OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dependencies;
    v164 = v23;
    if (v53)
    {
      *&v191 = v24;
      sub_20BB5DAF0(0, v53, 0);
      v55 = v191;
      v161 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_workoutPlanStringBuilder);
      v162 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekCount;
      v56 = 4;
      v160 = xmmword_20C14F980;
      v165 = v27;
      do
      {
        v57 = v27[v56];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
        v58 = swift_allocObject();
        *(v58 + 16) = v160;
        *(v58 + 56) = MEMORY[0x277D83B88];
        *(v58 + 64) = MEMORY[0x277D83C10];
        *(v58 + 32) = v57;
        v59 = *(v161 + 72);
        v60 = *(v161 + 80);
        __swift_project_boxed_opaque_existential_1((v161 + 48), v59);
        v61 = sub_20B5E10B0(0x4B4545575F4D554ELL, 0xE900000000000053, v58, v59, v60);
        v63 = v62;

        if (*(v169 + v162) == v57)
        {
          v64 = 2;
        }

        else
        {
          v64 = 1;
        }

        *&v191 = v55;
        v66 = *(v55 + 16);
        v65 = *(v55 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_20BB5DAF0((v65 > 1), v66 + 1, 1);
          v55 = v191;
        }

        *(v55 + 16) = v66 + 1;
        v67 = v55 + 32 * v66;
        *(v67 + 32) = v61;
        *(v67 + 40) = v63;
        *(v67 + 48) = v57;
        *(v67 + 56) = v64;
        ++v56;
        --v53;
        v27 = v165;
      }

      while (v53);
      v161 = v55;

      v23 = v164;
      v54 = &OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dependencies;
    }

    else
    {

      v161 = MEMORY[0x277D84F90];
    }

    v165 = *(v169 + v54[196]);
    v68 = MEMORY[0x277D84F90];
    v24 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedTime;
    v69 = 32;
    while (1)
    {
      v17 = *(v23 + v69);
      v70 = (v17 * 60) >> 64;
      if (v70 != (60 * v17) >> 63)
      {
        break;
      }

      __swift_project_boxed_opaque_existential_1(v165 + 6, v165[9]);
      v71 = sub_20C138CD4();
      if (v72)
      {
        v19 = v71;
      }

      else
      {
        v19 = 0;
      }

      if (v72)
      {
        v73 = v72;
      }

      else
      {
        v73 = 0xE000000000000000;
      }

      if (*(v24 + v169) == v17)
      {
        v74 = 2;
      }

      else
      {
        v74 = 1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_20BC064B0(0, *(v68 + 2) + 1, 1, v68);
      }

      v76 = *(v68 + 2);
      v75 = *(v68 + 3);
      if (v76 >= v75 >> 1)
      {
        v68 = sub_20BC064B0((v75 > 1), v76 + 1, 1, v68);
      }

      *(v68 + 2) = v76 + 1;
      v77 = &v68[32 * v76];
      *(v77 + 4) = v19;
      *(v77 + 5) = v73;
      *(v77 + 6) = v17;
      v77[56] = v74;
      v69 += 8;
      --v168;
      v23 = v164;
      if (!v168)
      {

        sub_20C133014();
        v23 = *(sub_20C1330B4() + 16);

        v78 = MEMORY[0x277D84F90];
        if (!v23)
        {
LABEL_75:
          v94 = swift_allocObject();
          v95 = v165;
          v96 = v165[9];
          v97 = v165[10];
          __swift_project_boxed_opaque_existential_1(v165 + 6, v96);
          *(v94 + 16) = sub_20B5E107C(0xD000000000000016, 0x800000020C1936D0, v96, v97);
          *(v94 + 24) = v98;
          *(v94 + 32) = v161;
          v99 = v95[9];
          v100 = v95[10];
          __swift_project_boxed_opaque_existential_1(v95 + 6, v99);
          *(v94 + 40) = sub_20B5E107C(0xD000000000000012, 0x800000020C1936F0, v99, v100);
          *(v94 + 48) = v101;
          *(v94 + 56) = v68;
          *(v94 + 64) = v78;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
          v102 = swift_allocObject();
          *(v102 + 16) = xmmword_20C14F980;
          *(v102 + 32) = v94 | 0x6000000000000004;
          v17 = "TOTAL_TIME_PER_DAY";
          v103 = v95[9];
          v104 = v95[10];
          __swift_project_boxed_opaque_existential_1(v95 + 6, v103);

          v105 = sub_20B5E107C(0xD000000000000024, 0x800000020C193710, v103, v104);
          v183 = 0uLL;
          LOBYTE(v184) = 1;
          *(&v184 + 1) = 0;
          *&v185 = 0;
          WORD4(v185) = 128;
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          LOBYTE(v189) = 0;
          *(&v189 + 1) = v102;
          *v190 = MEMORY[0x277D84F90];
          *&v190[16] = 0;
          *&v190[8] = 0;
          *&v190[24] = v105;
          *&v190[32] = v106;
          *&v190[40] = xmmword_20C150190;
          nullsub_1();
          v24 = (v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row);
          v107 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 144);
          v199 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 128);
          v200 = v107;
          v201 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 160);
          v108 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 80);
          v195 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 64);
          v196 = v108;
          v109 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 112);
          v197 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 96);
          v198 = v109;
          v110 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 16);
          v191 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row);
          v192 = v110;
          v111 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 48);
          v193 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 32);
          v194 = v111;
          v112 = *&v190[32];
          *(v24 + 8) = *&v190[16];
          *(v24 + 9) = v112;
          v24[20] = *&v190[48];
          v113 = v188;
          *(v24 + 4) = v187;
          *(v24 + 5) = v113;
          v114 = *v190;
          *(v24 + 6) = v189;
          *(v24 + 7) = v114;
          v115 = v184;
          *v24 = v183;
          *(v24 + 1) = v115;
          v116 = v186;
          *(v24 + 2) = v185;
          *(v24 + 3) = v116;
          sub_20B520158(&v191, &qword_27C762340, &unk_20C150290);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            goto LABEL_78;
          }

          v118 = Strong;
          if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
          {
            swift_unknownObjectRelease();
LABEL_78:

LABEL_101:
            v136 = v157;
            v135 = v158;
            return (*(v136 + 1))(v159, v135);
          }

          if ([*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
            if (swift_dynamicCastClass())
            {
              v148 = v94;
              v149 = v118;
              v19 = v154;
              sub_20C13BFA4();
              swift_unknownObjectRelease();
              v119 = v156;
              v120 = sub_20C13BE74();
              (*(v155 + 8))(v19, v119);
              v165 = *(v120 + 16);
              if (v165)
              {
                v23 = 0;
                v161 = v120 + 32;
                v162 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_identifier;
                *&v160 = v166 + 16;
                v164 = (v166 + 8);
                v16 = &qword_27C7641A0;
                v155 = v120;
                while (2)
                {
                  if (v23 >= *(v120 + 16))
                  {
                    goto LABEL_118;
                  }

                  v121 = (v161 + 24 * v23);
                  v17 = v121[1];
                  v156 = *v121;
                  v122 = v121[2];
                  ++v23;
                  (*v160)(v163, v169 + v162, v167);
                  v19 = *(v17 + 16);

                  v168 = v122;

                  v123 = 0;
                  do
                  {
                    if (v19 == v123)
                    {
                      (*v164)(v163, v167);

                      goto LABEL_84;
                    }

                    v124 = v123 + 1;
                    sub_20B5EAF44(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                    v125 = sub_20C13C894();
                    v123 = v124;
                  }

                  while ((v125 & 1) == 0);
                  (*v164)(v163, v167);
                  v126 = *(v24 + 9);
                  v180 = *(v24 + 8);
                  v181 = v126;
                  v182 = v24[20];
                  v127 = *(v24 + 5);
                  v176 = *(v24 + 4);
                  v177 = v127;
                  v128 = *(v24 + 7);
                  v178 = *(v24 + 6);
                  v179 = v128;
                  v129 = *(v24 + 1);
                  v172 = *v24;
                  v173 = v129;
                  v130 = *(v24 + 3);
                  v174 = *(v24 + 2);
                  v175 = v130;
                  v131 = sub_20B5EAF8C(&v172);
                  if (v131 == 1)
                  {
                    v132 = 0;
                    v133 = 0;
                  }

                  else
                  {
                    v132 = *(&v180 + 1);
                    v133 = v181;
                  }

                  v134 = v168;
                  v171[0] = v132;
                  v171[1] = v133;
                  MEMORY[0x28223BE20](v131);
                  *(&v148 - 2) = v171;
                  v19 = sub_20B796758(sub_20B5EB0CC, (&v148 - 4), v134);

                  if ((v19 & 1) == 0)
                  {

                    v120 = v155;
LABEL_84:
                    if (v23 == v165)
                    {
                      goto LABEL_98;
                    }

                    continue;
                  }

                  break;
                }

                sub_20B5E2E18();
                v142 = sub_20C13D374();
                v144 = v151;
                v143 = v152;
                *v151 = v142;
                v145 = v153;
                (*(v143 + 104))(v144, *MEMORY[0x277D85200], v153);
                v146 = sub_20C13C584();
                result = (*(v143 + 8))(v144, v145);
                if ((v146 & 1) == 0)
                {
                  goto LABEL_121;
                }

                v136 = v157;
                v147 = v158;
                if ((v150 & 0x80) != 0)
                {
                  sub_20C10AB7C(v169, v156, v150 & 1, v149);
                }

                else
                {
                  sub_20B61EB50(v156, v17, v168, v169, v150 & 1, v149);
                }

                swift_unknownObjectRelease();

                v135 = v147;
                return (*(v136 + 1))(v159, v135);
              }

LABEL_98:
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          sub_20C0C2D50(0);

          swift_unknownObjectRelease();
          goto LABEL_101;
        }

        v168 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekdays;
        swift_beginAccess();
        v16 = 0;
        v162 = v23;
        while (1)
        {
          v80 = MEMORY[0x20F2EF6F0](v16);
          if (v80 != 7)
          {
            v81 = v80;
            v82 = sub_20C1330B4();
            v83 = sub_20C137F44();
            if ((v83 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
LABEL_119:
              swift_once();
              goto LABEL_6;
            }

            if (v83 >= *(v82 + 16))
            {
              goto LABEL_116;
            }

            v84 = objc_allocWithZone(MEMORY[0x277CCA898]);
            v85 = sub_20C13C914();

            v24 = [v84 initWithString_];

            v86 = *(v169 + v168);
            if (*(v86 + 16))
            {
              sub_20C13E164();

              v87 = sub_20C137F94();
              MEMORY[0x20F2F58E0](v87);
              v88 = sub_20C13E1B4();
              v89 = -1 << *(v86 + 32);
              v90 = v88 & ~v89;
              if ((*(v86 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
              {
                v164 = v24;
                v91 = ~v89;
                while (1)
                {
                  v92 = sub_20C137F94();
                  if (v92 == sub_20C137F94())
                  {
                    break;
                  }

                  v90 = (v90 + 1) & v91;
                  if (((*(v86 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
                  {
                    v17 = 1;
                    goto LABEL_69;
                  }
                }

                v17 = 2;
LABEL_69:
                v24 = v164;
              }

              else
              {
                v17 = 1;
              }

              v23 = v162;
            }

            else
            {
              v17 = 1;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = sub_20BC063A4(0, *(v78 + 2) + 1, 1, v78);
            }

            v19 = *(v78 + 2);
            v93 = *(v78 + 3);
            if (v19 >= v93 >> 1)
            {
              v78 = sub_20BC063A4((v93 > 1), v19 + 1, 1, v78);
            }

            *(v78 + 2) = v19 + 1;
            v79 = &v78[16 * v19];
            *(v79 + 4) = v24;
            v79[40] = v17;
            v79[41] = v81;
          }

          v16 = (v16 + 1);
          if (v16 == v23)
          {
            goto LABEL_75;
          }
        }
      }
    }

    __break(1u);
    goto LABEL_111;
  }

  v183 = 0uLL;
  LOBYTE(v184) = 1;
  *(&v184 + 1) = 0;
  *&v185 = 0;
  WORD4(v185) = 128;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  LOBYTE(v189) = 0;
  *(&v189 + 1) = MEMORY[0x277D84F90];
  *v190 = MEMORY[0x277D84F90];
  memset(&v190[8], 0, 40);
  *&v190[48] = 2;
  nullsub_1();
  v23 = v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row;
  v28 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 144);
  v199 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 128);
  v200 = v28;
  v201 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 160);
  v29 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 80);
  v195 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 64);
  v196 = v29;
  v30 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 112);
  v197 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 96);
  v198 = v30;
  v31 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 16);
  v191 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row);
  v192 = v31;
  v32 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 48);
  v193 = *(v169 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 32);
  v194 = v32;
  v33 = *&v190[32];
  *(v23 + 128) = *&v190[16];
  *(v23 + 144) = v33;
  *(v23 + 160) = *&v190[48];
  v34 = v188;
  *(v23 + 64) = v187;
  *(v23 + 80) = v34;
  v35 = *v190;
  *(v23 + 96) = v189;
  *(v23 + 112) = v35;
  v36 = v184;
  *v23 = v183;
  *(v23 + 16) = v36;
  v37 = v186;
  *(v23 + 32) = v185;
  *(v23 + 48) = v37;
  sub_20B520158(&v191, &qword_27C762340, &unk_20C150290);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (!*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
    {
      v157 = result;
      if ([*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
        if (swift_dynamicCastClass())
        {
          sub_20C13BFA4();
          swift_unknownObjectRelease();
          v19 = v156;
          v39 = sub_20C13BE74();
          (*(v155 + 8))(v11, v19);
          v164 = *(v39 + 16);
          v165 = v39;
          if (v164)
          {
            v40 = 0;
            v162 = (v165 + 4);
            v163 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_identifier;
            v161 = v166 + 16;
            *&v160 = v166 + 8;
            v24 = &qword_27C7641A0;
LABEL_17:
            if (v40 >= v165[2])
            {
              goto LABEL_117;
            }

            v41 = (v162 + 24 * v40);
            v16 = v41[1];
            v159 = *v41;
            v42 = v41[2];
            v40 = (v40 + 1);
            (*v161)(v6, &v163[v169], v167);
            v19 = v16[2];

            v168 = v42;

            v43 = 0;
            do
            {
              if (v19 == v43)
              {
                (*v160)(v6, v167);
LABEL_16:

                if (v40 == v164)
                {
                  goto LABEL_94;
                }

                goto LABEL_17;
              }

              v17 = v43 + 1;
              sub_20B5EAF44(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v44 = sub_20C13C894();
              v43 = v17;
            }

            while ((v44 & 1) == 0);
            (*v160)(v6, v167);
            v45 = *(v23 + 144);
            v180 = *(v23 + 128);
            v181 = v45;
            v182 = *(v23 + 160);
            v46 = *(v23 + 80);
            v176 = *(v23 + 64);
            v177 = v46;
            v47 = *(v23 + 112);
            v178 = *(v23 + 96);
            v179 = v47;
            v48 = *(v23 + 16);
            v172 = *v23;
            v173 = v48;
            v49 = *(v23 + 48);
            v174 = *(v23 + 32);
            v175 = v49;
            v50 = sub_20B5EAF8C(&v172);
            if (v50 == 1)
            {
              v51 = 0;
              v52 = 0;
            }

            else
            {
              v51 = *(&v180 + 1);
              v52 = v181;
            }

            v17 = v168;
            v158 = &v148;
            v170[0] = v51;
            v170[1] = v52;
            MEMORY[0x28223BE20](v50);
            *(&v148 - 2) = v170;
            v19 = sub_20B796758(sub_20B5EAFA4, (&v148 - 4), v17);

            if ((v19 & 1) == 0)
            {
              goto LABEL_16;
            }

            sub_20B5E2E18();
            v137 = sub_20C13D374();
            v139 = v151;
            v138 = v152;
            *v151 = v137;
            v140 = v153;
            (*(v138 + 104))(v139, *MEMORY[0x277D85200], v153);
            v141 = sub_20C13C584();
            result = (*(v138 + 8))(v139, v140);
            if (v141)
            {
              LOBYTE(v70) = v150;
              if ((v150 & 0x80) == 0)
              {
                sub_20B61EB50(v159, v16, v168, v169, v150 & 1, v157);
LABEL_112:

                return swift_unknownObjectRelease();
              }

LABEL_111:
              sub_20C10AB7C(v169, v159, v70 & 1, v157);
              goto LABEL_112;
            }

            __break(1u);
LABEL_121:
            __break(1u);
            return result;
          }

LABEL_94:
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      sub_20C0C2D50(0);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B5E9D34()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);
  swift_unknownObjectRelease();

  sub_20B583ECC(*(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated), *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated + 8));

  v8 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_metricPage;
  v9 = sub_20C1333A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return v0;
}

uint64_t sub_20B5E9E9C()
{
  sub_20B5E9D34();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanSurveySchedulePickerShelf(uint64_t a1)
{
  result = qword_27C762630;
  if (!qword_27C762630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B5E9F48(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = sub_20C1333A4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20B5EA070@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B5EA0E8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B5EA1D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v5 = v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row;
  sub_20B5D8060(v17);
  v6 = v17[7];
  v7 = v17[9];
  *(v5 + 128) = v17[8];
  *(v5 + 144) = v7;
  *(v5 + 160) = v18;
  v8 = v17[5];
  *(v5 + 64) = v17[4];
  *(v5 + 80) = v8;
  *(v5 + 96) = v17[6];
  *(v5 + 112) = v6;
  v9 = v17[1];
  *v5 = v17[0];
  *(v5 + 16) = v9;
  v10 = v17[3];
  *(v5 + 32) = v17[2];
  *(v5 + 48) = v10;
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf____lazy_storage___numberFormatter) = 0;
  v11 = (v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedTime) = 30;
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekCount) = 4;
  v12 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekdays;
  *(v2 + v12) = sub_20C135BD4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_durations) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_eventHub) = v16;
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_workoutPlanStringBuilder) = v16;
  v13 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_metricPage;
  v14 = sub_20C1333A4();
  (*(*(v14 - 8) + 32))(v3 + v13, a2, v14);
  return v3;
}

unint64_t sub_20B5EA38C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_20C1352E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C133154();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133014();
  v15 = sub_20C1330C4();
  (*(v12 + 8))(v14, v11);
  result = sub_20C137F44();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v15 + 16))
  {

    v18[1] = v3;
    (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
    v17 = sub_20C135ED4();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    type metadata accessor for WorkoutPlanSurveySchedulePickerShelf(0);
    sub_20B5EAF44(&qword_27C762640, type metadata accessor for WorkoutPlanSurveySchedulePickerShelf, &unk_20C150250);
    sub_20C138D94();

    sub_20B520158(v6, &unk_27C7621D0, &unk_20C14D9B0);
    return (*(v8 + 8))(v10, v7);
  }

  __break(1u);
  return result;
}

void sub_20B5EA6A4(unint64_t a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v43 - v9;
  v45 = sub_20C1352E4();
  v11 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_20C134F24();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v15);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5EAE70(a2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 10)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v28 = *(v17 + 2);

      *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekCount) = v28;
      sub_20B5E88D0(128);
      return;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v19 = *(v17 + 2);
      v20 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedTime;
      if (*(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedTime) == v19)
      {
      }

      else
      {
        v43[1] = *v17;
        v50[0] = v2;
        v35 = *MEMORY[0x277D51450];
        v36 = v46;
        v44 = v19;
        (*(v46 + 104))(v47, v35, v48);
        v37 = v11;
        (*(v11 + 104))(v13, *MEMORY[0x277D51768], v45);
        v38 = sub_20C135ED4();
        (*(*(v38 - 8) + 56))(v10, 1, 1, v38);
        type metadata accessor for WorkoutPlanSurveySchedulePickerShelf(0);
        sub_20B5EAF44(&qword_27C762640, type metadata accessor for WorkoutPlanSurveySchedulePickerShelf, &unk_20C150250);
        v39 = v47;
        sub_20C138D94();
        sub_20B520158(v10, &unk_27C7621D0, &unk_20C14D9B0);
        (*(v37 + 8))(v13, v45);
        (*(v36 + 8))(v39, v48);

        *(v2 + v20) = v44;
        sub_20B5E88D0(128);
      }

      return;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 11)
  {
    v29 = *v17;
    v30 = v17[9];
    v31 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekdays;
    swift_beginAccess();
    v32 = *(v2 + v31);

    v33 = sub_20B8D7460(v30, v32);

    if (v33)
    {
      if (*(*(v2 + v31) + 16) < 2uLL)
      {
LABEL_20:
        sub_20B5E88D0(0);

        return;
      }

      swift_beginAccess();
      sub_20B6C9D3C(v30);
      swift_endAccess();
      v34 = MEMORY[0x277D51440];
    }

    else
    {
      swift_beginAccess();
      sub_20B700680(&v49, v30);
      swift_endAccess();
      v34 = MEMORY[0x277D51450];
    }

    v41 = v46;
    v40 = v47;
    v42 = v48;
    (*(v46 + 104))(v47, *v34, v48);
    sub_20B5EA38C(v30, v40);
    (*(v41 + 8))(v40, v42);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 16)
  {
LABEL_10:
    sub_20C13B534();
    v25 = sub_20C13BB74();
    v26 = sub_20C13D1D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20B517000, v25, v26, "[WorkoutPlanSurveySchedulePickerShelf] Unexpected shelf item action", v27, 2u);
      MEMORY[0x20F2F6A40](v27, -1, -1);
    }

    (*(v44 + 8))(v7, v5);
    sub_20B5E2760(v17);
    return;
  }

  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x34)
  {
    v50[0] = v2;
    v22 = v46;
    v21 = v47;
    (*(v46 + 104))(v47, *MEMORY[0x277D51450], v48);
    v23 = v45;
    (*(v11 + 104))(v13, *MEMORY[0x277D51768], v45);
    v24 = sub_20C135ED4();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    type metadata accessor for WorkoutPlanSurveySchedulePickerShelf(0);
    sub_20B5EAF44(&qword_27C762640, type metadata accessor for WorkoutPlanSurveySchedulePickerShelf, &unk_20C150250);
    sub_20C138D94();
    sub_20B520158(v10, &unk_27C7621D0, &unk_20C14D9B0);
    (*(v11 + 8))(v13, v23);
    (*(v22 + 8))(v21, v48);
  }
}

uint64_t sub_20B5EAE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfItemAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5EAED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762340, &unk_20C150290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5EAF44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B5EAF8C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_20B5EB060(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C768830, &unk_20C1723F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_20B5EB17C(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for TintableShapeLayer();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

void sub_20B5EB248(void *a1, SEL *a2, SEL *a3, void *a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for TintableShapeLayer();
  objc_msgSendSuper2(&v10, *a2, a1);
  if (*&v4[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_tintAdjustmentMode] != 2)
  {
    v9 = [v4 *a3];

    a1 = *&v4[*a4];
    *&v4[*a4] = v9;
  }
}

void sub_20B5EB2E4(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_tintAdjustmentMode] = a1;
  if (a1 == 2)
  {
    v3 = [v1 borderColor];
    if (v3)
    {
      v4 = v3;
      v5 = sub_20C09BB98();
      [v2 setBorderColor_];
    }

    v6 = [v2 strokeColor];
    if (v6)
    {
      v7 = v6;
      v9 = sub_20C09BB98();
      [v2 setStrokeColor_];
    }
  }

  else
  {
    [v1 setBorderColor_];
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedStrokeColor];

    [v1 setStrokeColor_];
  }
}

id sub_20B5EB54C(void *a1)
{
  *&v1[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_tintAdjustmentMode] = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedBorderColor] = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedStrokeColor] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TintableShapeLayer();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_20B5EB600()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TintableShapeLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B5EB6A4(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B5EB728(v4, v5, v2, v3);
  }
}

uint64_t sub_20B5EB728(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v67 = a2;
  v64 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v65 = v9;
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61 - v15;
  v17 = sub_20C136C64();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v63 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v73 = &v61 - v21;
  v22 = sub_20C13BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v61 - v27;
  sub_20C13B4A4();
  sub_20C13BB64();
  v62 = *(v23 + 8);
  v62(v28, v22);
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  sub_20C13B174();
  v29 = v17;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_20B5EC5BC(v16);
    sub_20C13B4A4();
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1D4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20B517000, v30, v31, "Completed tip but no active environment, not updating", v32, 2u);
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    return (v62)(v25, v22);
  }

  else
  {
    v34 = *(v18 + 32);
    v35 = v73;
    v36 = v29;
    v34(v73, v16, v29);
    __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
    sub_20C1398E4();
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = v18;
    v39 = *(v18 + 16);
    v40 = v63;
    v41 = v35;
    v42 = v36;
    v61 = v36;
    v39(v63, v41, v36);
    v43 = v38;
    v44 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v37;
    *(v45 + 24) = a4;
    *(v45 + 32) = a3;
    v34((v45 + v44), v40, v42);
    v46 = (v45 + ((v19 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
    v47 = v67;
    *v46 = v64;
    v46[1] = v47;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_20B5EC624;
    *(v48 + 24) = v45;
    v50 = v69;
    v49 = v70;
    v51 = v66;
    v52 = v74;
    (*(v69 + 16))(v66, v74, v70);
    v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v54 = (v65 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    (*(v50 + 32))(v55 + v53, v51, v49);
    v56 = (v55 + v54);
    *v56 = sub_20B58D058;
    v56[1] = v48;

    v57 = v68;
    sub_20C137C94();
    (*(v50 + 8))(v52, v49);
    v58 = v72;
    v59 = sub_20C137CB4();
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    v59(sub_20B52347C, v60);

    (*(v71 + 8))(v57, v58);
    return (*(v43 + 8))(v73, v61);
  }
}

void sub_20B5EBE30(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v67 = a7;
  v64 = a5;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v59 - v14;
  v16 = sub_20C13B0C4();
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x28223BE20](v16);
  v61 = (v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_20C132E94();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_20C137404();
  v68 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v65 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v59 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v27 = Strong;
  if (a1 <= 0.0)
  {
    sub_20C13B534();
    v20 = sub_20C13BB74();
    v32 = sub_20C13D1F4();
    if (os_log_type_enabled(v20, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20B517000, v20, v32, "[RemoteBrowsingCompletedTipObserver] invalid tip duration, not journaling", v33, 2u);
      MEMORY[0x20F2F6A40](v33, -1, -1);

LABEL_12:
      (v10)[1](v12, v9);
      return;
    }

LABEL_11:

    goto LABEL_12;
  }

  sub_20C1340C4();
  if (v28 <= a2 / a1)
  {
    v60 = v27;
    v34 = sub_20C136AA4();
    v35 = v67;

    v36 = v34;
    v37 = v70;
    v12 = sub_20B5EE244(v36, v66, v35);
    v10 = v37;

    v38 = *(v12 + 2);
    if (v38)
    {
      v39 = sub_20BEDE99C(*(v12 + 2), 0);
      sub_20BEE2114(v69, &v39[(*(v68 + 80) + 32) & ~*(v68 + 80)], v38, v12);
      v70 = v40;
      v41 = v69[0];
      v9 = v69[2];
      v64 = v69[3];
      v59[1] = v69[4];

      sub_20B583EDC(v41);
      if (v70 != v38)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v69[0] = v39;
    sub_20B5EC6D8(v69);
    v70 = v10;
    if (!v10)
    {

      v42 = *(v69[0] + 16);
      v43 = v60;
      if (v42)
      {
        v44 = v68;
        (*(v68 + 16))(v25, v69[0] + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v68 + 72) * (v42 - 1), v21);

        v45 = sub_20C1373D4();
        (*(v44 + 8))(v25, v21);
        if (!__OFADD__(v45, 1))
        {
LABEL_19:

          sub_20C132E84();
          v46 = v65;
          sub_20C1373E4();
          v47 = v43[10];
          v67 = v43[11];
          __swift_project_boxed_opaque_existential_1(v43 + 7, v47);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762668, &unk_20C150370);
          v48 = v68;
          v49 = (*(v68 + 80) + 32) & ~*(v68 + 80);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_20C14F980;
          (*(v48 + 16))(v50 + v49, v46, v21);
          v51 = sub_20BE8CE0C(v50);
          swift_setDeallocating();
          v52 = *(v48 + 8);
          v52(v50 + v49, v21);
          swift_deallocClassInstance();
          v53 = v61;
          *v61 = v51;
          v54 = *MEMORY[0x277D4F628];
          v55 = sub_20C13B254();
          (*(*(v55 - 8) + 104))(v53, v54, v55);
          v57 = v62;
          v56 = v63;
          (*(v62 + 104))(v53, *MEMORY[0x277D4F518], v63);
          sub_20C13B2A4();

          (*(v57 + 8))(v53, v56);
          v52(v65, v21);
          return;
        }
      }

      else
      {

        if (!v58)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_20C13B534();
  v29 = sub_20C13BB74();
  v30 = sub_20C13D1F4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_20B517000, v29, v30, "[RemoteBrowsingCompletedTipObserver] percent complete does not meet threshold, not journaling", v31, 2u);
    MEMORY[0x20F2F6A40](v31, -1, -1);
  }

  else
  {
  }

  (v10)[1](v15, v9);
}

uint64_t sub_20B5EC550()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_20B5EC5BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20B5EC624(uint64_t a1)
{
  v3 = *(sub_20C136C64() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_20B5EBE30(*(v1 + 24), *(v1 + 32), a1, *(v1 + 16), v1 + v4, *v5, v5[1]);
}

void sub_20B5EC6D8(uint64_t *a1)
{
  v2 = *(sub_20C137404() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0EC0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20B5EC780(v5);
  *a1 = v3;
}

void sub_20B5EC780(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C137404();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C137404() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20B5ECC4C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20B5EC8AC(0, v2, 1, a1);
  }
}

void sub_20B5EC8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20C132E94();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_20C137404();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20C1373C4();
      v32 = v59;
      sub_20C1373C4();
      v62 = sub_20C132E04();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20B5ECC4C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_20C132E94();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_20C137404();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_20B6A07A0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_20B5ED84C(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20B6A07A0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_20B6A0714(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_20C1373C4();
      v34 = v159;
      sub_20C1373C4();
      LODWORD(v149) = sub_20C132E04();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_20C1373C4();
        v46 = v159;
        sub_20C1373C4();
        LOBYTE(v162) = sub_20C132E04() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_20BC05740(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_20BC05740((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20B5ED84C(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20B6A07A0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_20B6A0714(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_20C1373C4();
    v120 = v159;
    sub_20C1373C4();
    LODWORD(v162) = sub_20C132E04();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_20B5ED84C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_20C132E94();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_20C137404();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_20C1373C4();
            v48 = v66;
            sub_20C1373C4();
            v68 = sub_20C132E04();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_20C1373C4();
        v28 = v66;
        sub_20C1373C4();
        v68 = sub_20C132E04();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_20B6A08E8(&v75, &v74, &v73);
}

unint64_t *sub_20B5EDF28(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20B5EDFCC(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

void sub_20B5EDFCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v35 = a5;
  v36 = a4;
  v29 = a1;
  v6 = sub_20C137404();
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v33 = v7;
  v34 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v32 = v7 + 16;
  v30 = 0;
  v31 = (v7 + 8);
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v11 << 6);
    (*(v33 + 16))(v10, *(v34 + 48) + *(v33 + 72) * v23, v6, v8);
    if (sub_20C1373F4() == v36 && v24 == v35)
    {

      (*v31)(v10, v6);
      goto LABEL_15;
    }

    v19 = sub_20C13DFF4();

    (*v31)(v10, v6);
    if (v19)
    {
LABEL_15:
      *(v29 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_18:
        v26 = v34;

        sub_20BC0F700(v29, v28, v30, v26);
        return;
      }
    }
  }

  v21 = v11;
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_18;
    }

    v22 = *(v13 + 8 * v11);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v17 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20B5EE244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v37 = sub_20C137404();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;
  v35 = a3;

  if (v10 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v28 = v11;
    v29 = v4;
    v27 = &v27;
    MEMORY[0x28223BE20](v13);
    v30 = &v27 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v12);
    v14 = 0;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v11 = v16 & *(a1 + 56);
    v4 = (v15 + 63) >> 6;
    v33 = v7 + 16;
    v34 = v7;
    v31 = 0;
    v32 = (v7 + 8);
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v20 = v17 | (v14 << 6);
      v7 = a1;
      (*(v34 + 16))(v9, *(a1 + 48) + *(v34 + 72) * v20, v37);
      if (sub_20C1373F4() == v36 && v21 == v35)
      {

        (*v32)(v9, v37);
        goto LABEL_16;
      }

      v12 = sub_20C13DFF4();

      (*v32)(v9, v37);
      if (v12)
      {
LABEL_16:
        *&v30[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_19:
          v23 = sub_20BC0F700(v30, v28, v31, a1);

          return v23;
        }
      }
    }

    v18 = v14;
    while (1)
    {
      v14 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v14 >= v4)
      {
        goto LABEL_19;
      }

      v19 = *(a1 + 56 + 8 * v14);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v25 = swift_slowAlloc();
  v26 = v35;

  v23 = sub_20B5EDF28(v25, v11, a1, v36, v26);

  MEMORY[0x20F2F6A40](v25, -1, -1);

  return v23;
}

void sub_20B5EE614(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9SeymourUI19SessionDistanceView_presenter] = a1;
  v13.receiver = v1;
  v13.super_class = ObjectType;

  v4 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6 = v4;
  v7 = [v5 initWithWhite:0.921568627 alpha:{1.0, v13.receiver, v13.super_class}];
  [*&v6[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel] setTextColor_];
  v8 = v6;

  v9 = [objc_opt_self() distanceColors];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 nonGradientTextColor];

    if (v11)
    {
      [*&v8[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel] setTextColor_];

      *(*&v8[OBJC_IVAR____TtC9SeymourUI19SessionDistanceView_presenter] + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_display + 8) = &off_2822D0928;
      swift_unknownObjectWeakAssign();
      v12 = v8;

      sub_20B78E8EC();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_20B5EE860()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_20B5EE8CC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = _UISolariumEnabled();
  v12 = 0.0;
  if (v11)
  {
    v12 = 7.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_layout];
  *v13 = xmmword_20C1503F0;
  *(v13 + 1) = xmmword_20C150400;
  *(v13 + 2) = xmmword_20C150410;
  *(v13 + 3) = xmmword_20C150420;
  *(v13 + 4) = xmmword_20C150430;
  *(v13 + 10) = v12;
  v14 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v15 = 16.0;
  }

  else
  {
    v15 = 8.0;
  }

  v16 = &v4[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
  v17 = [v14 layer];
  [v17 setCornerRadius_];

  [v14 setClipsToBounds_];
  *v16 = v14;
  *(v16 + 1) = &off_2822B63E8;
  v18 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_contentGuide;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  LODWORD(v20) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v20];

  v21 = *MEMORY[0x277D769A8];
  v243 = objc_opt_self();
  v22 = [v243 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
  v23 = [v22 fontDescriptorWithSymbolicTraits_];
  if (v23)
  {
    v24 = v23;

    v22 = v24;
  }

  v25 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_titleLabel;
  v241 = objc_opt_self();
  v26 = [v241 fontWithDescriptor:v22 size:0.0];

  [v19 setFont_];
  [v19 setNumberOfLines_];
  [v19 setLineBreakMode_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  v239 = objc_opt_self();
  v27 = [v239 whiteColor];
  [v19 setTextColor_];

  *&v4[v25] = v19;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setAdjustsFontForContentSizeCategory_];
  LODWORD(v29) = 1148846080;
  [v28 setContentCompressionResistancePriority:1 forAxis:v29];

  v245 = *MEMORY[0x277D76918];
  v30 = [v243 preferredFontDescriptorWithTextStyle_compatibleWithTraitCollection_];
  v31 = [v30 fontDescriptorWithSymbolicTraits_];
  if (v31)
  {
    v32 = v31;

    v30 = v32;
  }

  v33 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel;
  v34 = v241;
  v35 = [v241 fontWithDescriptor:v30 size:0.0];

  [v28 setFont_];
  [v28 setNumberOfLines_];
  [v28 setLineBreakMode_];
  [v28 setAllowsDefaultTighteningForTruncation_];
  v36 = v239;
  v37 = [v239 secondaryLabelColor];
  [v28 setTextColor_];

  *&v4[v33] = v28;
  v38 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel;
  v39 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v39 &selRef_count + 2];
  [v39 setAdjustsFontForContentSizeCategory_];
  LODWORD(v40) = 1148846080;
  [v39 setContentCompressionResistancePriority:1 forAxis:v40];

  v41 = [v34 preferredFontForTextStyle_];
  [v39 setFont_];

  [v39 setNumberOfLines_];
  [v39 setAllowsDefaultTighteningForTruncation_];
  v42 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v39 setTextColor_];

  *&v4[v38] = v39;
  v43 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel;
  v44 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v44 &selRef_count + 2];
  [v44 setAdjustsFontForContentSizeCategory_];
  LODWORD(v45) = 1148846080;
  [v44 setContentCompressionResistancePriority:1 forAxis:v45];

  v46 = [v34 preferredFontForTextStyle_];
  [v44 setFont_];

  [v44 setNumberOfLines_];
  [v44 setLineBreakMode_];
  [v44 setAllowsDefaultTighteningForTruncation_];
  v47 = [v36 secondaryLabelColor];
  [v44 setTextColor_];

  *&v4[v43] = v44;
  v48 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton;
  type metadata accessor for IconButton();
  v49 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v49 &selRef_count + 2];
  *&v4[v48] = v49;
  v50 = type metadata accessor for ActionButtonTemplateBuilder();
  v51 = swift_allocObject();
  type metadata accessor for ActionButtonTemplateParser();
  v52 = swift_allocObject();
  v53 = qword_27C760AA0;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = qword_27C76CF70;
  if (qword_27C760AA8 != -1)
  {
    swift_once();
  }

  v55 = qword_27C76CF78;
  v253[3] = v50;
  v253[4] = &off_2822EEB00;
  v238 = v51;
  v253[0] = v51;
  v251 = &type metadata for ActionButtonViewFactory;
  v252 = &off_2822B2B20;
  v56 = type metadata accessor for ActionButtonContainerView();
  v57 = objc_allocWithZone(v56);
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v253, v50);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (&v229 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  __swift_mutable_project_boxed_opaque_existential_1(&v250, v251);
  v63 = *v61;
  v249[3] = v50;
  v249[4] = &off_2822EEB00;
  v249[0] = v63;
  v248[3] = &type metadata for ActionButtonViewFactory;
  v248[4] = &off_2822B2B20;
  *&v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions] = MEMORY[0x277D84F90];
  *&v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView] = 0;
  sub_20B51CC64(v249, &v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateBuilder]);
  v64 = &v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser];
  v237 = v52;
  *v64 = v52;
  v64[1] = &off_28229AE20;
  sub_20B51CC64(v248, &v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_viewFactory]);
  *&v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing] = v54;
  *&v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing] = v55;
  v247.receiver = v57;
  v247.super_class = v56;
  v65 = objc_msgSendSuper2(&v247, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v248);
  __swift_destroy_boxed_opaque_existential_1(v249);
  v66 = v65;
  __swift_destroy_boxed_opaque_existential_1(&v250);
  __swift_destroy_boxed_opaque_existential_1(v253);
  [v66 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_actionButtonContainerView] = v66;
  v67 = type metadata accessor for TabletWorkoutPlanBrickItemCell(0);
  v246.receiver = v4;
  v246.super_class = v67;
  v68 = objc_msgSendSuper2(&v246, sel_initWithFrame_, a1, a2, a3, a4);
  v69 = [v68 contentView];
  v230 = &v68[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
  [v69 addSubview_];

  v70 = [v68 contentView];
  v232 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel;
  [v70 &selRef_onDisplayDisconnected];

  v233 = v68;
  v71 = v68;
  v72 = [v71 contentView];
  v235 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel;
  [v72 &selRef_onDisplayDisconnected];

  v73 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_actionButtonContainerView;
  *(*&v71[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_actionButtonContainerView] + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8) = &off_2822968A8;
  swift_unknownObjectWeakAssign();

  v74 = [v71 contentView];
  v236 = v73;
  [v74 &selRef_onDisplayDisconnected];

  v75 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v76 = [v71 contentView];
  v242 = v75;
  [v76 addLayoutGuide_];

  v77 = [v71 contentView];
  v240 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_contentGuide;
  [v77 addLayoutGuide_];

  v78 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v78 setTranslatesAutoresizingMaskIntoConstraints_];
  [v78 setAxis_];
  [v78 setAlignment_];
  v79 = &v71[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_layout];
  [v78 setSpacing_];
  v80 = [v71 contentView];
  [v80 addSubview_];

  v81 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v81 setTranslatesAutoresizingMaskIntoConstraints_];
  [v81 setAxis_];
  v245 = v79;
  [v81 setSpacing_];
  v82 = v78;
  [v78 addArrangedSubview_];
  [v81 addArrangedSubview_];
  v83 = *&v71[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel];
  v234 = v81;
  [v81 addArrangedSubview_];
  v84 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton;
  v85 = *&v71[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton];
  v86 = [v239 whiteColor];
  [v85 setTintColor_];

  v87 = [v243 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:0];
  v88 = [v87 fontDescriptorWithSymbolicTraits_];
  if (v88)
  {
    v89 = v88;

    v87 = v89;
  }

  v90 = [v241 fontWithDescriptor:v87 size:0.0];

  v91 = [objc_opt_self() configurationWithFont_];
  v92 = *&v71[v84];
  v93 = v91;
  v94 = sub_20C13C914();
  v95 = objc_opt_self();
  v241 = v93;
  v96 = [v95 systemImageNamed:v94 withConfiguration:v93];

  v97 = *&v92[OBJC_IVAR____TtC9SeymourUI10IconButton_image];
  *&v92[OBJC_IVAR____TtC9SeymourUI10IconButton_image] = v96;

  [v92 setNeedsUpdateConfiguration];
  [*&v71[v84] addTarget:v71 action:sel_swapButtonTapped_ forControlEvents:64];
  v98 = *&v71[v84];
  v244 = v82;
  [v82 addArrangedSubview_];
  v99 = v230;
  v100 = *v230;
  v101 = v230[1];
  ObjectType = swift_getObjectType();
  v103 = v245[10];
  v231 = v84;
  v104 = v245;
  v105 = v101[31];
  v106 = v100;
  v105(ObjectType, v101, v103, v103, v103, v103);

  v239 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_20C150440;
  v108 = [*v99 leadingAnchor];
  v109 = [v71 contentView];
  v110 = [v109 leadingAnchor];

  v111 = [v108 constraintEqualToAnchor_];
  *(v107 + 32) = v111;
  v112 = [*v99 topAnchor];
  v113 = [v71 contentView];
  v114 = [v113 &selRef_setLineBreakMode_];

  v115 = [v112 &selRef:v114 alertControllerReleasedDictationButton:? + 5];
  *(v107 + 40) = v115;
  v116 = [*v99 bottomAnchor];
  v117 = [v71 contentView];
  v118 = [v117 &selRef_secondaryLabel + 5];

  v119 = [v116 constraintLessThanOrEqualToAnchor:v118 constant:-v104[3]];
  type metadata accessor for UILayoutPriority(0);
  v121 = v120;
  LODWORD(v250) = 1148846080;
  LODWORD(v249[0]) = 1065353216;
  v243 = sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  sub_20C13BBA4();
  LODWORD(v122) = v253[0];
  [v119 setPriority_];
  *(v107 + 48) = v119;
  v123 = [*v99 &selRef_secondaryLabel + 5];
  v124 = [v71 contentView];
  v125 = [v124 &selRef_secondaryLabel + 5];

  v126 = [v123 constraintEqualToAnchor:v125 constant:-v104[3]];
  LODWORD(v250) = 1148846080;
  LODWORD(v249[0]) = 1065353216;
  v229 = v121;
  sub_20C13BBA4();
  LODWORD(v127) = v253[0];
  [v126 &selRef_meterUnit];
  *(v107 + 56) = v126;
  v128 = [*v99 widthAnchor];
  v129 = [v71 contentView];
  v130 = [v129 widthAnchor];

  v131 = [v128 constraintEqualToAnchor:v130 multiplier:v104[2]];
  *(v107 + 64) = v131;
  v132 = [*v99 heightAnchor];
  v133 = [*v99 widthAnchor];
  v134 = v104;
  v135 = [v132 constraintEqualToAnchor:v133 multiplier:*v104];

  *(v107 + 72) = v135;
  v136 = v242;
  v137 = [v242 leadingAnchor];
  v138 = [*v99 trailingAnchor];
  v139 = [v137 constraintEqualToAnchor_];

  *(v107 + 80) = v139;
  v140 = [v136 trailingAnchor];
  v141 = [v71 contentView];
  v142 = [v141 trailingAnchor];

  v143 = [v140 constraintEqualToAnchor_];
  *(v107 + 88) = v143;
  v144 = [v136 topAnchor];
  v145 = [v71 contentView];
  v146 = [v145 topAnchor];

  v147 = [v144 &selRef:v146 alertControllerReleasedDictationButton:? + 5];
  *(v107 + 96) = v147;
  v148 = [v136 bottomAnchor];
  v149 = [v71 contentView];

  v150 = [v149 bottomAnchor];
  v151 = [v148 &selRef:v150 alertControllerReleasedDictationButton:? + 5];

  *(v107 + 104) = v151;
  v152 = v240;
  v153 = [*&v71[v240] leadingAnchor];
  v154 = [v136 leadingAnchor];
  v155 = [v153 constraintEqualToAnchor:v154 constant:v134[1]];

  *(v107 + 112) = v155;
  v156 = [*&v71[v152] trailingAnchor];
  v157 = [v136 trailingAnchor];
  v158 = [v156 &selRef:v157 alertControllerReleasedDictationButton:? + 5];

  LODWORD(v250) = 1148846080;
  LODWORD(v249[0]) = 1065353216;
  sub_20C13BBA4();
  LODWORD(v159) = v253[0];
  [v158 setPriority_];
  *(v107 + 120) = v158;
  v160 = [*&v71[v152] topAnchor];
  v161 = [v136 topAnchor];
  v162 = [v160 constraintGreaterThanOrEqualToAnchor_];

  *(v107 + 128) = v162;
  v163 = [*&v71[v152] bottomAnchor];
  v164 = [v136 bottomAnchor];
  v165 = [v163 constraintLessThanOrEqualToAnchor_];

  *(v107 + 136) = v165;
  v166 = [*&v71[v152] centerYAnchor];
  v167 = [v136 centerYAnchor];
  v168 = [v166 constraintEqualToAnchor_];

  LODWORD(v250) = 1148846080;
  LODWORD(v249[0]) = 1065353216;
  sub_20C13BBA4();
  LODWORD(v169) = v253[0];
  [v168 setPriority_];
  *(v107 + 144) = v168;
  v170 = v233;
  v171 = v232;
  v172 = [*&v233[v232] leadingAnchor];
  v173 = [*&v71[v152] leadingAnchor];
  v174 = [v172 constraintEqualToAnchor_];

  *(v107 + 152) = v174;
  v175 = [*&v170[v171] topAnchor];
  v176 = [*&v71[v152] topAnchor];
  v177 = [v175 constraintEqualToAnchor_];

  *(v107 + 160) = v177;
  v178 = [*&v170[v171] trailingAnchor];
  v179 = [*&v71[v152] trailingAnchor];
  v180 = [v178 constraintEqualToAnchor_];

  *(v107 + 168) = v180;
  v181 = v244;
  v182 = [v244 &selRef_setLineBreakMode_];
  v183 = [*&v170[v171] bottomAnchor];
  v184 = v245;
  v185 = [v182 constraintEqualToAnchor:v183 constant:v245[4]];

  *(v107 + 176) = v185;
  v186 = [v181 leadingAnchor];
  v187 = [*&v71[v152] leadingAnchor];
  v188 = [v186 constraintEqualToAnchor_];

  *(v107 + 184) = v188;
  v189 = [v181 trailingAnchor];
  v190 = [*&v71[v152] trailingAnchor];
  v191 = [v189 constraintEqualToAnchor_];

  *(v107 + 192) = v191;
  v192 = v231;
  v193 = [*&v71[v231] widthAnchor];
  v194 = [v193 constraintEqualToConstant_];

  *(v107 + 200) = v194;
  v195 = [*&v71[v192] heightAnchor];
  v196 = [*&v71[v192] widthAnchor];
  v197 = [v195 constraintEqualToAnchor_];

  *(v107 + 208) = v197;
  v198 = v235;
  v199 = [*&v71[v235] leadingAnchor];
  v200 = [*&v71[v152] leadingAnchor];
  v201 = [v199 constraintEqualToAnchor_];

  *(v107 + 216) = v201;
  v202 = [*&v71[v198] topAnchor];
  v203 = v244;
  v204 = [v244 bottomAnchor];

  v205 = [v202 constraintEqualToAnchor:v204 constant:v184[6]];
  *(v107 + 224) = v205;
  v206 = [*&v71[v198] trailingAnchor];
  v207 = v240;
  v208 = [*&v71[v240] trailingAnchor];
  v209 = [v206 constraintEqualToAnchor_];

  *(v107 + 232) = v209;
  v210 = v236;
  v211 = [*&v71[v236] leadingAnchor];
  v212 = [*&v71[v207] leadingAnchor];
  v213 = [v211 constraintEqualToAnchor_];

  *(v107 + 240) = v213;
  v214 = [*&v71[v210] trailingAnchor];
  v215 = [*&v71[v207] trailingAnchor];
  v216 = [v214 constraintEqualToAnchor_];

  *(v107 + 248) = v216;
  v217 = [*&v71[v210] topAnchor];
  v218 = [*&v71[v198] bottomAnchor];
  v219 = v245;
  v220 = [v217 constraintEqualToAnchor:v218 constant:v245[5]];

  *(v107 + 256) = v220;
  v221 = [*&v71[v210] bottomAnchor];
  v222 = [*&v71[v207] bottomAnchor];
  v223 = [v221 constraintLessThanOrEqualToAnchor:v222 constant:-v219[3]];

  *(v107 + 264) = v223;
  v224 = [*&v71[v210] heightAnchor];
  v225 = [v224 constraintEqualToConstant_];

  LODWORD(v226) = 1132068864;
  [v225 setPriority_];
  *(v107 + 272) = v225;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v227 = sub_20C13CC54();

  [v239 activateConstraints_];

  return v71;
}

uint64_t sub_20B5F0830()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TabletWorkoutPlanBrickItemCell(0);
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

void sub_20B5F0A34(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (a3 == -1 || (sub_20B590B28(), sub_20B590B7C(), (sub_20C133C04() & 1) == 0))
  {
    v6 = *(v4 + *a4);
    v9 = [v6 layer];
    [v9 setBorderColor_];
    v10 = 0.0;
  }

  else
  {
    v6 = *(v4 + *a4);
    v7 = [v6 layer];
    v8 = [objc_opt_self() separatorColor];
    v9 = [v8 CGColor];

    [v7 setBorderColor_];
    v10 = 1.0;
  }

  v11 = [v6 layer];
  [v11 setBorderWidth_];
}

uint64_t sub_20B5F0C80(void *a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    *v9 = a1;
    v12 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v12);
    *(&v17 - 4) = 0;
    *(&v17 - 24) = 1;
    *(&v17 - 2) = v9;
    *(&v17 - 1) = v11;
    v13 = *(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v14 = a1;
    v15 = [v13 indexPathForCell_];
    if (v15)
    {
      v16 = v15;
      sub_20C1331E4();

      sub_20C0C1CDC(v6, sub_20B5E2A84);
      (*(v4 + 8))(v6, v3);
    }

    swift_unknownObjectRelease();
    return sub_20B5F6724(v9, type metadata accessor for ShelfItemAction);
  }

  return result;
}

id sub_20B5F0EF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabletWorkoutPlanBrickItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TabletWorkoutPlanBrickItemCell(uint64_t a1)
{
  result = qword_27C7626C0;
  if (!qword_27C7626C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B5F1060(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_20B5F114C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B5F116C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 88) = v3;
  return result;
}

uint64_t sub_20B5F11BC(uint64_t a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_20B5F15A8(a1, v9);
    v12 = swift_storeEnumTagMultiPayload();
    v13 = MEMORY[0x28223BE20](v12);
    *(&v16 - 4) = 0;
    *(&v16 - 24) = 1;
    *(&v16 - 2) = v9;
    *(&v16 - 1) = v11;
    v14 = [*(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v14)
    {
      v15 = v14;
      sub_20C1331E4();

      sub_20C0C1CDC(v6, sub_20B5E275C);
      (*(v4 + 8))(v6, v3);
    }

    swift_unknownObjectRelease();
    return sub_20B5F6724(v9, type metadata accessor for ShelfItemAction);
  }

  return result;
}

double sub_20B5F13D0(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v4 = v3;
  swift_unknownObjectRelease();
  sub_20B755B8C(v9, v4);
  sub_20B5F320C(v9);
  v5 = *v9;
  [objc_msgSend(a2 container)];
  v7 = v6;
  swift_unknownObjectRelease();
  return v7 - v5 - v5;
}

uint64_t sub_20B5F1490(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B5F14DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20B5F1544(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B5F15A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5F165C@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      (*(v10 + 168))(v8, a1, ObjectType, v10);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_20B5F6F04();
      v13 = swift_allocError();
      *(swift_allocObject() + 16) = v13;
      v14 = v13;
      sub_20B51C88C(0, &qword_27C7626E8, 0x277D755B8);
      sub_20C137CA4();
      swift_unknownObjectRelease();
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v16 = *(*(v15 - 8) + 56);

  return v16(a5, v12, 1, v15);
}

void sub_20B5F1F68(void *a1, uint64_t a2, void *a3, int a4, void (*a5)(id), uint64_t a6, uint64_t *a7, double a8, double a9)
{
  v57 = a7;
  v58 = a3;
  v50[1] = a6;
  v51 = a1;
  v54 = a5;
  v53 = a4;
  v9 = sub_20C137C24();
  v59 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0, &qword_20C161880);
  MEMORY[0x28223BE20](v56);
  v12 = v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v13 - 8);
  v55 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v50 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v50 - v19;
  v21 = sub_20C13C554();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  *v24 = sub_20C13D374();
  (*(v22 + 104))(v24, *MEMORY[0x277D85200], v21);
  v25 = sub_20C13C584();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = *v57;
    v57 = Strong;
    v28 = Strong + v27;
    v29 = *v28;
    v30 = *(v28 + 1);
    v50[0] = v28;
    v31 = v59;
    (*(v59 + 16))(v20, v58, v9);
    (*(v31 + 56))(v20, 0, 1, v9);
    ObjectType = swift_getObjectType();
    v33 = *(v30 + 8);
    v58 = v29;
    v33(ObjectType, v30);
    v34 = *(v56 + 48);
    sub_20B52F9E8(v20, v12, &unk_27C766680, &unk_20C14F920);
    sub_20B52F9E8(v17, &v12[v34], &unk_27C766680, &unk_20C14F920);
    v35 = *(v31 + 48);
    if (v35(v12, 1, v9) == 1)
    {
      sub_20B520158(v17, &unk_27C766680, &unk_20C14F920);
      sub_20B520158(v20, &unk_27C766680, &unk_20C14F920);
      if (v35(&v12[v34], 1, v9) == 1)
      {
        sub_20B520158(v12, &unk_27C766680, &unk_20C14F920);
LABEL_10:
        if ((v53 & 1) != 0 || ([v58 bounds], sub_20C13D504(), round(fabs(v49)) <= 1.0) && round(fabs(v48)) <= 1.0)
        {
          v41 = v50[0];
          v42 = *(v50[0] + 8);
          v43 = swift_getObjectType();
          v44 = *(v42 + 120);
          v45 = v51;
          v46 = v51;
          v44(v45, v43, v42);
          v47 = [*v41 setBackgroundColor_];
          if (v54)
          {
            v54(v47);
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v36 = v55;
      sub_20B52F9E8(v12, v55, &unk_27C766680, &unk_20C14F920);
      if (v35(&v12[v34], 1, v9) != 1)
      {
        v37 = v59;
        v38 = v52;
        (*(v59 + 32))(v52, &v12[v34], v9);
        sub_20B5F7718(&qword_27C7626D8, MEMORY[0x277D53A78], MEMORY[0x277D53A90]);
        v39 = sub_20C13C894();
        v40 = *(v37 + 8);
        v40(v38, v9);
        sub_20B520158(v17, &unk_27C766680, &unk_20C14F920);
        sub_20B520158(v20, &unk_27C766680, &unk_20C14F920);
        v40(v55, v9);
        sub_20B520158(v12, &unk_27C766680, &unk_20C14F920);
        if (v39)
        {
          goto LABEL_10;
        }

LABEL_15:

        return;
      }

      sub_20B520158(v17, &unk_27C766680, &unk_20C14F920);
      sub_20B520158(v20, &unk_27C766680, &unk_20C14F920);
      (*(v59 + 8))(v36, v9);
    }

    sub_20B520158(v12, &qword_27C7626D0, &qword_20C161880);
    goto LABEL_15;
  }
}

void sub_20B5F2808(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(id), uint64_t a6, char *a7, double a8, double a9)
{
  v52 = a7;
  v53 = a3;
  v46 = a6;
  v47 = a1;
  v48 = a5;
  v49 = a4;
  v9 = sub_20C137C24();
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0, &qword_20C161880);
  MEMORY[0x28223BE20](v51);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v14 - 8);
  v50 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = sub_20C13C554();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  *v22 = sub_20C13D374();
  (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
  v23 = sub_20C13C584();
  (*(v20 + 8))(v22, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = *v52;
    v52 = Strong;
    v44 = v25;
    v45 = v11;
    v26 = *&Strong[v25];
    v27 = v54;
    (*(v54 + 16))(v18, v53, v9);
    (*(v27 + 56))(v18, 0, 1, v9);
    v28 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
    swift_beginAccess();
    v29 = *(v51 + 12);
    sub_20B52F9E8(v18, v13, &unk_27C766680, &unk_20C14F920);
    sub_20B52F9E8(&v26[v28], &v13[v29], &unk_27C766680, &unk_20C14F920);
    v30 = *(v27 + 48);
    if (v30(v13, 1, v9) == 1)
    {
      v31 = v26;
      sub_20B520158(v18, &unk_27C766680, &unk_20C14F920);
      if (v30(&v13[v29], 1, v9) == 1)
      {
        sub_20B520158(v13, &unk_27C766680, &unk_20C14F920);
LABEL_10:
        if (v49)
        {

          v26 = v52;
          goto LABEL_12;
        }

        [v26 bounds];
        sub_20C13D504();
        v40 = v39;
        v42 = v41;

        if (round(fabs(v40)) <= 1.0)
        {
          v26 = v52;
          if (round(fabs(v42)) <= 1.0)
          {
LABEL_12:
            v37 = v44;
            [*&v26[v44] setStackImage_];
            v38 = [*&v26[v37] setBackgroundColor_];
            if (v48)
            {
              v48(v38);
            }
          }
        }

        else
        {
          v26 = v52;
        }

LABEL_18:

        return;
      }
    }

    else
    {
      v32 = v50;
      sub_20B52F9E8(v13, v50, &unk_27C766680, &unk_20C14F920);
      if (v30(&v13[v29], 1, v9) != 1)
      {
        v34 = v54;
        v35 = v45;
        (*(v54 + 32))(v45, &v13[v29], v9);
        sub_20B5F7718(&qword_27C7626D8, MEMORY[0x277D53A78], MEMORY[0x277D53A90]);
        v51 = v26;
        LODWORD(v53) = sub_20C13C894();
        v36 = *(v34 + 8);
        v36(v35, v9);
        sub_20B520158(v18, &unk_27C766680, &unk_20C14F920);
        v36(v32, v9);
        sub_20B520158(v13, &unk_27C766680, &unk_20C14F920);
        if ((v53 & 1) == 0)
        {

          v26 = v51;
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      v33 = v26;
      sub_20B520158(v18, &unk_27C766680, &unk_20C14F920);
      (*(v54 + 8))(v32, v9);
    }

    sub_20B520158(v13, &qword_27C7626D0, &qword_20C161880);

    goto LABEL_18;
  }
}

id sub_20B5F3284(unint64_t a1)
{
  v442 = sub_20C13BB84();
  v441 = *(v442 - 8);
  MEMORY[0x28223BE20](v442);
  v440 = (&v396 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v459 = type metadata accessor for ButtonAction(0);
  v456 = *(v459 - 8);
  MEMORY[0x28223BE20](v459);
  v458 = &v396 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330, &qword_20C1875B0);
  v438 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v439 = (&v396 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v457 = &v396 - v7;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v424 = *(v425 - 8);
  MEMORY[0x28223BE20](v425);
  v421 = &v396 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v422 = &v396 - v10;
  v420 = v11;
  MEMORY[0x28223BE20](v12);
  v423 = &v396 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v14 - 8);
  v426 = &v396 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v427 = &v396 - v17;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v436 = *(v437 - 8);
  MEMORY[0x28223BE20](v437);
  v417 = &v396 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v419 = &v396 - v20;
  v418 = v21;
  MEMORY[0x28223BE20](v22);
  v428 = &v396 - v23;
  v434 = sub_20C1391C4();
  v433 = *(v434 - 8);
  MEMORY[0x28223BE20](v434);
  v435 = &v396 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_20C138A64();
  v430 = *(v431 - 8);
  MEMORY[0x28223BE20](v431);
  v26 = &v396 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v429 = &v396 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v29 - 8);
  v432 = &v396 - v30;
  v31 = sub_20C13C554();
  v451 = *(v31 - 8);
  v452 = v31;
  MEMORY[0x28223BE20](v31);
  v450 = (&v396 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_20C137C24();
  v453 = *(v33 - 8);
  v454 = v33;
  MEMORY[0x28223BE20](v33);
  v35 = (&v396 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v444 = &v396 - v37;
  v443 = v38;
  MEMORY[0x28223BE20](v39);
  v445 = &v396 - v40;
  v41 = sub_20C136CD4();
  v446 = *(v41 - 8);
  v447 = v41;
  MEMORY[0x28223BE20](v41);
  v43 = &v396 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v449 = &v396 - v45;
  v46 = sub_20C134E44();
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v396 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v448 = &v396 - v50;
  v51 = sub_20C134014();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = (&v396 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v55);
  v57 = (a1 >> 57) & 0x78 | a1 & 7;
  switch(v57)
  {
    case 'J':
      v457 = v48;
      v458 = v43;
      v416 = v35;
      v409 = v26;
      v97 = v51;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70, &unk_20C1512E0);
      v99 = swift_projectBox();
      v100 = *(v99 + v98[16]);
      v101 = v99 + v98[20];
      v102 = *v101;
      v103 = *(v101 + 8);
      v104 = *(v101 + 24);
      v456 = *(v101 + 16);
      v105 = *(v101 + 32);
      v106 = *(v101 + 40);
      LODWORD(v459) = *(v99 + v98[28]);
      LODWORD(v427) = *(v99 + v98[32]);
      LODWORD(v415) = *(v99 + v98[36]);
      v440 = v52;
      v107 = v52[2];
      v442 = v97;
      (v107)(v54, v99, v97);
      v108 = v455;
      v109 = *&v455[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel];
      v414 = v100;

      v110 = v102;
      v111 = v103;
      v429 = v456;
      v448 = v104;

      v445 = v105;

      v441 = v106;

      [v109 setText_];
      v112 = *&v108[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_titleLabel];
      v439 = v110;
      [v112 setAttributedText_];
      v113 = *&v108[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel];
      v438 = v111;
      [v113 setAttributedText_];
      v114 = objc_opt_self();
      v115 = [v114 clearColor];
      v116 = &off_277D9A000;
      v428 = v109;
      [v109 setBackgroundColor_];

      v117 = v54;
      v410 = v114;
      if (!v459)
      {
        v153 = [v114 systemBackgroundColor];
        [v112 setBackgroundColor_];

        v154 = [v114 systemBackgroundColor];
        v118 = v454;
        v119 = v451;
        v155 = v452;
        goto LABEL_34;
      }

      v118 = v454;
      v119 = v451;
      if (v459 == 1)
      {
        v120 = 0x27C760000uLL;
        if (qword_27C760D20 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_99;
      }

      v160 = [v114 clearColor];
      [v112 setBackgroundColor_];

      v122 = [v114 clearColor];
      goto LABEL_33;
    case '!':
      v82 = v455;
      v83 = *&v455[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel];
      v84 = sub_20C13C914();
      [v83 setText_];

      v85 = *&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_titleLabel];
      v86 = sub_20C13C914();
      [v85 setText_];

      v87 = *&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel];
      v88 = sub_20C13C914();
      [v87 setText_];

      v89 = *&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel];
      v90 = sub_20C13C914();
      [v89 setText_];

      sub_20BA1DB48();
      v91 = *&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
      v92 = *&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      (*(v92 + 264))(0, ObjectType, v92);
      (*(v92 + 296))(0, 0, ObjectType, v92);
      v94 = [v91 layer];
      [v94 setBorderColor_];

      v95 = [v91 layer];
      [v95 setBorderWidth_];

      sub_20BC96528(MEMORY[0x277D84F90], 0, 1, 0, 0, 1, 0, 1);
      [*&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton] setHidden_];
      [v83 setAlpha_];
      [v85 setAlpha_];
      [v87 setAlpha_];

      return [v89 setAlpha_];
    case ' ':
      v58 = &v396 - v56;
      v59 = v52;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
      v442 = v51;
      v61 = v60;
      v62 = swift_projectBox();
      v63 = v62 + v61[16];
      v65 = *v63;
      v64 = *(v63 + 8);
      v66 = v455;
      v67 = *(v63 + 16);
      v68 = *(v63 + 24);
      v70 = *(v63 + 32);
      v69 = *(v63 + 40);
      v417 = v70;
      v416 = v69;
      v71 = (v62 + v61[20]);
      v72 = *v71;
      v73 = v71[1];
      LODWORD(v414) = *(v62 + v61[28]);
      v74 = *(v62 + v61[32]);
      v440 = v59;
      v75 = v59[2];
      v426 = v58;
      (v75)(v58, v62, v442);
      v76 = v66;
      v441 = *&v66[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel];
      v409 = v68;
      v408 = v74;
      if (v73 >= 2)
      {
        v460[0] = v72;
        v460[1] = v73;
        sub_20B5F6EB0();
        v136 = v65;
        v78 = v64;
        v137 = v64;
        v138 = v67;

        sub_20C13D9E4();
        v81 = sub_20C13C914();
      }

      else
      {
        v77 = v65;
        v78 = v64;
        v79 = v64;
        v80 = v67;

        v81 = 0;
      }

      v139 = v65;
      v140 = v67;
      v116 = v439;
      [v441 setText_];

      v113 = v76;
      v141 = *&v76[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_titleLabel];
      v112 = v139;
      [v141 setAttributedText_];
      v439 = *&v76[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel];
      [v439 setAttributedText_];
      v142 = *&v76[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel];
      v143 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v410 = v140;
      v144 = [v143 initWithAttributedString_];
      v145 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v145 setLineBreakMode_];
      v146 = v144;
      v147 = [v146 length];
      [v146 addAttribute:*MEMORY[0x277D74118] value:v145 range:{0, v147}];

      v415 = v142;
      [v142 setAttributedText_];

      v118 = &off_277D9A000;
      v411 = v78;
      if (v414)
      {
        v148 = v451;
        if (v414 == 1)
        {
          if (qword_27C760D20 != -1)
          {
            swift_once();
          }

          v149 = qword_27C79D6D8;
          [v441 setBackgroundColor_];

          if (qword_27C760D20 != -1)
          {
            swift_once();
          }

          v150 = qword_27C79D6D8;
          [v141 setBackgroundColor_];

          if (qword_27C760D20 != -1)
          {
            swift_once();
          }

          v151 = qword_27C79D6D8;
          [v439 setBackgroundColor_];

          if (qword_27C760D20 != -1)
          {
            swift_once();
          }

          v152 = qword_27C79D6D8;
        }

        else
        {
          v236 = [objc_opt_self() clearColor];
          [v441 setBackgroundColor_];

          v237 = [objc_opt_self() clearColor];
          [v141 setBackgroundColor_];

          v238 = [objc_opt_self() clearColor];
          [v439 setBackgroundColor_];

          v152 = [objc_opt_self() clearColor];
        }

        v159 = v152;
      }

      else
      {
        v156 = [objc_opt_self() systemBackgroundColor];
        [v441 setBackgroundColor_];

        v157 = [objc_opt_self() systemBackgroundColor];
        [v141 setBackgroundColor_];

        v158 = [objc_opt_self() systemBackgroundColor];
        [v439 setBackgroundColor_];

        v159 = [objc_opt_self() systemBackgroundColor];
        v148 = v451;
      }

      [v415 setBackgroundColor_];

      sub_20C133F04();
      v406 = sub_20C138054();
      v414 = v239;
      sub_20C134E34();
      v240 = v445;
      sub_20C136CB4();
      v405 = sub_20C136CC4();
      v412 = v241;
      sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
      v242 = sub_20C13D374();
      v117 = v450;
      *v450 = v242;
      v120 = v452;
      (*(v148 + 104))(v117, *MEMORY[0x277D85200], v452);
      v243 = sub_20C13C584();
      v244 = *(v148 + 8);
      v119 = v148 + 8;
      v244(v117, v120);
      if (v243)
      {
        v407 = v112;
        v246 = *&v113[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
        v245 = *&v113[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView + 8];
        v247 = swift_getObjectType();
        [v246 setContentMode_];
        v248 = sub_20BA66C54();
        v450 = v246;
        v451 = v247;
        v452 = v245;
        v413 = v141;
        if (v248)
        {
          v249 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v250 = v453;
          v251 = *(v453 + 16);
          v252 = v444;
          v398 = v453 + 16;
          v402 = v251;
          v251(v444, v240, v454);
          v253 = *(v250 + 80);
          v254 = (v253 + 24) & ~v253;
          v397 = v443 + 7;
          v255 = (v443 + 7 + v254) & 0xFFFFFFFFFFFFFFF8;
          v256 = (v255 + 23) & 0xFFFFFFFFFFFFFFF8;
          v257 = (v256 + 23) & 0xFFFFFFFFFFFFFFF8;
          v404 = (v257 + 15) & 0xFFFFFFFFFFFFFFF8;
          v403 = ((v257 + 31) & 0xFFFFFFFFFFFFFFF8);
          v401 = v253;
          v258 = swift_allocObject();
          *(v258 + 16) = v249;
          v259 = *(v250 + 32);
          v400 = v250 + 32;
          v399 = v259;
          v259(v258 + v254, v252, v454);
          v260 = (v258 + v255);
          v261 = v412;
          *v260 = v405;
          v260[1] = v261;
          v262 = (v258 + v256);
          v263 = v414;
          *v262 = v406;
          v262[1] = v263;
          *(v258 + v257) = 2;
          v264 = v258 + v404;
          *v264 = MEMORY[0x277D84F90];
          *(v264 + 8) = 0;
          v265 = v403 + v258;
          *v265 = 0;
          *(v265 + 1) = 0;
          v266 = v452;
          v267 = *(v452 + 152);

          v268 = v451;
          v267(sub_20B5F7780, v258, v451, v266);

          [v246 bounds];
          if (v269 <= 0.0 || (v271 = v270, v270 <= 0.0))
          {
          }

          else
          {
            v272 = v269;
            v404 = ~v401;
            (*(v266 + 120))(0, v268, v266);
            v273 = v268;
            v274 = v432;
            v275 = v445;
            v276 = v454;
            v402(v432, v445, v454);
            (*(v453 + 56))(v274, 0, 1, v276);
            (*(v266 + 16))(v274, v273, v266);
            sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
            sub_20C137BC4();
            v277 = sub_20C13D5A4();
            [v246 setBackgroundColor_];

            (*(v266 + 176))(COERCE_DOUBLE(*&v272), COERCE_DOUBLE(*&v271), 0, v273, v266);
            v278 = swift_allocObject();
            v279 = v444;
            swift_unknownObjectWeakInit();
            v402(v279, v275, v276);
            v280 = (v401 + 16) & v404;
            v281 = (v397 + v280) & 0xFFFFFFFFFFFFFFF8;
            v282 = (v281 + 15) & 0xFFFFFFFFFFFFFFF8;
            v283 = swift_allocObject();
            v284 = v283 + v280;
            v285 = v454;
            v399(v284, v279, v454);
            *(v283 + v281) = v278;
            v286 = (v283 + v282);
            *v286 = v272;
            v286[1] = v271;
            v432 = v283;
            v287 = (v283 + ((v282 + 23) & 0xFFFFFFFFFFFFFFF8));
            v288 = v445;
            *v287 = 0;
            v287[1] = 0;
            v402(v279, v288, v285);
            (*(v433 + 104))(v435, *MEMORY[0x277D542A8], v434);

            v289 = v429;
            sub_20C138A54();
            v290 = v427;
            sub_20B5F165C(v289, v427);
            v291 = v436;
            v292 = v437;
            if ((*(v436 + 48))(v290, 1, v437) == 1)
            {
              sub_20B520158(v290, &unk_27C766670, &unk_20C151580);
              sub_20BA1DB48();

              (*(v430 + 8))(v289, v431);
              v294 = v446;
              v293 = v447;
              v295 = v408;
              v240 = v288;
              goto LABEL_58;
            }

            v435 = *(v291 + 32);
            (v435)(v428, v290, v292);
            v367 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v368 = v454;
            v402(v279, v288, v454);
            v369 = (v401 + 40) & v404;
            v370 = v369 + v443;
            v371 = (v369 + v443) & 0xFFFFFFFFFFFFFFF8;
            v372 = swift_allocObject();
            *(v372 + 2) = v367;
            v372[3] = v272;
            v372[4] = v271;
            v399(v372 + v369, v279, v368);
            *(v372 + v370) = 0;
            v373 = v372 + v371;
            *(v373 + 1) = 0;
            *(v373 + 2) = 0;
            v374 = swift_allocObject();
            *(v374 + 16) = sub_20B5F7768;
            *(v374 + 24) = v372;
            v375 = v436;
            v376 = v419;
            (*(v436 + 16))(v419, v428, v292);
            v377 = (*(v375 + 80) + 16) & ~*(v375 + 80);
            v378 = (v418 + v377 + 7) & 0xFFFFFFFFFFFFFFF8;
            v379 = swift_allocObject();
            (v435)(v379 + v377, v376, v292);
            v380 = (v379 + v378);
            *v380 = sub_20B5F7760;
            v380[1] = v374;
            v381 = v422;
            sub_20C137C94();
            v382 = swift_allocObject();
            v383 = v432;
            *(v382 + 16) = sub_20B5F7784;
            *(v382 + 24) = v383;
            v384 = swift_allocObject();
            *(v384 + 16) = sub_20B5F7790;
            *(v384 + 24) = v382;
            v385 = v424;
            v386 = v421;
            v387 = v425;
            (*(v424 + 16))(v421, v381, v425);
            v388 = (*(v385 + 80) + 16) & ~*(v385 + 80);
            v389 = (v420 + v388 + 7) & 0xFFFFFFFFFFFFFFF8;
            v390 = swift_allocObject();
            (*(v385 + 32))(v390 + v388, v386, v387);
            v391 = (v390 + v389);
            *v391 = sub_20B5F7764;
            v391[1] = v384;

            v392 = v423;
            sub_20C137C94();
            v393 = *(v385 + 8);
            v393(v381, v387);
            v394 = sub_20C137CB4();
            v395 = swift_allocObject();
            *(v395 + 16) = 0;
            *(v395 + 24) = 0;
            v394(sub_20B5DF6DC, v395);

            v393(v392, v387);
            (*(v436 + 8))(v428, v437);
            (*(v430 + 8))(v429, v431);
          }

          v294 = v446;
          v293 = v447;
          v295 = v408;
          v240 = v445;
        }

        else
        {

          v294 = v446;
          v293 = v447;
          v295 = v408;
        }

LABEL_58:
        (*(v453 + 8))(v240, v454);
        (*(v294 + 8))(v449, v293);

        sub_20B5F6724(v448, MEMORY[0x277D51268]);
        v296 = sub_20C133EB4() > 0;
        v297 = v451;
        v298 = v452;
        (*(v452 + 264))(v296, v451, v452);
        v299 = sub_20C133E54();
        (*(v298 + 296))(v299);

        v300 = sub_20C133FF4();
        v302 = v301;
        v304 = v303;
        v305 = v455;
        sub_20B5F0A34(v300, v301, v303, &OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView);
        sub_20B584078(v300, v302, v304);
        v306 = (*(v298 + 32))(v297, v298);
        if (v306)
        {
          v307 = v306;
          v308 = [objc_opt_self() whiteColor];
          [*&v307[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView] setTintColor_];
        }

        if (!v295[2])
        {
          v313 = MEMORY[0x277D84F90];
          v314 = MEMORY[0x277D84F90];
          v310 = v305;
          v311 = v413;
LABEL_77:

          v460[0] = v313;
          sub_20B8D9064(v314);
          v327 = sub_20BEF6570(v460[0]);

          v454 = *&v310[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_actionButtonContainerView];
          v328 = *(v327 + 16);
          if (v328)
          {
            v329 = *(v438 + 80);
            v453 = v327;
            v330 = v327 + ((v329 + 32) & ~v329);
            v331 = v438[9];
            v332 = (v456 + 48);
            v333 = MEMORY[0x277D84F90];
            do
            {
              v334 = v457;
              sub_20B52F9E8(v330, v457, &qword_27C770330, &qword_20C1875B0);
              sub_20B5F67F0(v334, v116);
              if ((*v332)(v116, 1, v459) == 1)
              {
                sub_20B520158(v116, &qword_27C770330, &qword_20C1875B0);
              }

              else
              {
                sub_20B5F6860(v116, v458);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v333 = sub_20BC05920(0, v333[2] + 1, 1, v333);
                }

                v336 = v333[2];
                v335 = v333[3];
                if (v336 >= v335 >> 1)
                {
                  v333 = sub_20BC05920((v335 > 1), v336 + 1, 1, v333);
                }

                v333[2] = v336 + 1;
                sub_20B5F6860(v458, v333 + ((v456[80] + 32) & ~v456[80]) + *(v456 + 9) * v336);
              }

              v330 += v331;
              --v328;
            }

            while (v328);

            v310 = v455;
            v337 = v411;
            v311 = v413;
          }

          else
          {

            v333 = MEMORY[0x277D84F90];
            v337 = v411;
          }

          sub_20BC96528(v333, 0, 1, 0, 0, 1, 0, 1);

          [*&v310[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton] setHidden_];
          [v441 setAlpha_];
          [v311 setAlpha_];
          [v439 setAlpha_];
          [v415 setAlpha_];
          (*(v452 + 280))(v451, 1.0);

          return v440[1](v426, v442);
        }

        v309 = sub_20B65CEBC();
        v310 = v305;
        v311 = v413;
        if (v312)
        {
          v313 = *(v295[7] + 8 * v309);

          if (!v295[2])
          {
            goto LABEL_76;
          }
        }

        else
        {
          v313 = MEMORY[0x277D84F90];
          if (!v295[2])
          {
            goto LABEL_76;
          }
        }

        v325 = sub_20B65CEBC();
        if (v326)
        {
          v314 = *(v295[7] + 8 * v325);

          goto LABEL_77;
        }

LABEL_76:
        v314 = MEMORY[0x277D84F90];
        goto LABEL_77;
      }

      while (1)
      {
        __break(1u);
LABEL_99:
        swift_once();
LABEL_12:
        v121 = qword_27C79D6D8;
        [v112 v116[81]];

        if (*(v120 + 3360) != -1)
        {
          swift_once();
        }

        v122 = qword_27C79D6D8;
LABEL_33:
        v154 = v122;
        v155 = v452;
LABEL_34:
        [v113 v116[81]];

        sub_20C133F04();
        v412 = sub_20C138054();
        v452 = v161;
        sub_20C134E34();
        v116 = v416;
        sub_20C136CB4();
        v411 = sub_20C136CC4();
        v449 = v162;
        sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
        v163 = sub_20C13D374();
        v164 = v450;
        *v450 = v163;
        (*(v119 + 104))(v164, *MEMORY[0x277D85200], v155);
        v120 = sub_20C13C584();
        v165 = *(v119 + 8);
        v119 += 8;
        v165(v164, v155);
        if (v120)
        {
          break;
        }

        __break(1u);
      }

      v413 = v113;
      v450 = v112;
      v167 = *&v455[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
      v166 = *&v455[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView + 8];
      v168 = swift_getObjectType();
      [v167 setContentMode_];
      v451 = v166;
      v169 = sub_20BA66C54();
      v170 = v116;
      v456 = v167;
      v459 = v168;
      if (v169)
      {
        v408 = v117;
        v171 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v172 = v453;
        v173 = *(v453 + 16);
        v174 = v444;
        v405 = v453 + 16;
        v402 = v173;
        v173(v444, v170, v118);
        v175 = *(v172 + 80);
        v176 = (v175 + 24) & ~v175;
        v401 = v443 + 7;
        v177 = (v443 + 7 + v176) & 0xFFFFFFFFFFFFFFF8;
        v178 = (v177 + 23) & 0xFFFFFFFFFFFFFFF8;
        v179 = (v178 + 23) & 0xFFFFFFFFFFFFFFF8;
        v407 = (v179 + 15) & 0xFFFFFFFFFFFFFFF8;
        v406 = v175;
        v180 = swift_allocObject();
        *(v180 + 16) = v171;
        v181 = *(v172 + 32);
        v182 = v180 + v176;
        v118 = v454;
        v404 = v172 + 32;
        v403 = v181;
        (v181)(v182, v174, v454);
        v183 = (v180 + v177);
        v184 = v449;
        *v183 = v411;
        v183[1] = v184;
        v185 = (v180 + v178);
        v186 = v452;
        *v185 = v412;
        v185[1] = v186;
        *(v180 + v179) = 2;
        v187 = (v180 + v407);
        *v187 = MEMORY[0x277D84F90];
        v187[8] = 0;
        v188 = (v180 + ((v179 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v188 = 0;
        v188[1] = 0;
        v189 = v451;
        v190 = *(v451 + 152);

        v191 = v459;
        v190(sub_20B5F6784, v180, v459, v189);

        [v167 bounds];
        if (v192 <= 0.0 || (v194 = v193, v193 <= 0.0))
        {

          v215 = v446;
          v214 = v447;
          v117 = v408;
          v216 = v427;
          v170 = v416;
LABEL_43:
          v218 = v457;
          v217 = v458;
          v219 = v451;
          (*(v453 + 8))(v170, v118);
          (*(v215 + 8))(v217, v214);

          sub_20B5F6724(v218, MEMORY[0x277D51268]);
          v220 = sub_20C133EB4() > 0;
          v221 = *(v219 + 264);
          v221(v220, v459, v219);
          v222 = sub_20C133E54();
          (*(v219 + 296))(v222);

          v223 = v117;
          v224 = sub_20C133FF4();
          v226 = v225;
          v228 = v227;
          v229 = v455;
          sub_20B5F0A34(v224, v225, v227, &OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView);
          sub_20B584078(v224, v226, v228);
          v230 = v229;
          if (*(v414 + 16))
          {
            v231 = v414;
            v232 = sub_20B65CEBC();
            if (v233)
            {
              v234 = *(*(v231 + 56) + 8 * v232);
            }

            else
            {
              v234 = MEMORY[0x277D84F90];
            }

            v235 = v450;
          }

          else
          {
            v234 = MEMORY[0x277D84F90];
            v235 = v450;
          }

          sub_20BC96528(v234, 0, 1, 0, 0, 1, 0, 1);

          [*&v230[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton] setHidden_];
          if (v216)
          {
            v315 = v459;
            v221(1, v459, v219);
            v316 = (*(v219 + 32))(v315, v219);
            v317 = v429;
            if (v316)
            {
              v318 = v316;
              v319 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
              v320 = 0.5;
              v321 = 0.3;
LABEL_72:
              v324 = v413;
              [*&v318[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView] setTintColor_];

LABEL_93:
              (*(v219 + 280))(v315, v219, v321);
              [v428 setAlpha_];
              [v235 setAlpha_];
              [v324 setAlpha_];
              [*&v230[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel] setAlpha_];

              return v440[1](v223, v442);
            }

            v320 = 0.5;
            v321 = 0.3;
          }

          else
          {
            v322 = sub_20C133EB4() > 0;
            v315 = v459;
            v221(v322, v459, v219);
            v323 = (*(v219 + 32))(v315, v219);
            v317 = v429;
            if (v323)
            {
              v318 = v323;
              v319 = [v410 whiteColor];
              v321 = 1.0;
              v320 = 1.0;
              goto LABEL_72;
            }

            v321 = 1.0;
            v320 = 1.0;
          }

          v324 = v413;
          goto LABEL_93;
        }

        v195 = v192;
        v407 = ~v406;
        v196 = v451;
        (*(v451 + 120))(0, v191, v451);
        v197 = v432;
        v198 = v416;
        v199 = v402;
        v402(v432, v416, v118);
        (*(v453 + 56))(v197, 0, 1, v118);
        (*(v196 + 16))(v197, v191, v196);
        sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        sub_20C137BC4();
        v200 = sub_20C13D5A4();
        [v167 setBackgroundColor_];

        (*(v196 + 176))(COERCE_DOUBLE(*&v195), COERCE_DOUBLE(*&v194), 0, v191, v196);
        v201 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v202 = v444;
        v199(v444, v198, v118);
        v203 = (v406 + 16) & v407;
        v204 = (v401 + v203) & 0xFFFFFFFFFFFFFFF8;
        v205 = (v204 + 15) & 0xFFFFFFFFFFFFFFF8;
        v206 = swift_allocObject();
        v403(v206 + v203, v202, v118);
        *(v206 + v204) = v201;
        v170 = v416;
        v207 = (v206 + v205);
        *v207 = v195;
        v207[1] = v194;
        v432 = v206;
        v208 = (v206 + ((v205 + 23) & 0xFFFFFFFFFFFFFFF8));
        v209 = v199;
        *v208 = 0;
        v208[1] = 0;
        v199(v202, v170, v118);
        (*(v433 + 104))(v435, *MEMORY[0x277D542A8], v434);

        v210 = v409;
        sub_20C138A54();
        v211 = v426;
        sub_20B5F165C(v210, v426);
        v212 = v436;
        v213 = v437;
        if ((*(v436 + 48))(v211, 1, v437) == 1)
        {
          sub_20B520158(v211, &unk_27C766670, &unk_20C151580);
          sub_20BA1DB48();

          (*(v430 + 8))(v210, v431);
        }

        else
        {
          v449 = *(v212 + 32);
          v338 = v417;
          (v449)(v417, v211, v213);
          v339 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v209(v202, v170, v454);
          v340 = v213;
          v341 = (v406 + 40) & v407;
          v342 = v341 + v443;
          v343 = (v341 + v443) & 0xFFFFFFFFFFFFFFF8;
          v344 = swift_allocObject();
          *(v344 + 2) = v339;
          v344[3] = v195;
          v344[4] = v194;
          v403(v344 + v341, v202, v454);
          *(v344 + v342) = 0;
          v345 = v344 + v343;
          *(v345 + 1) = 0;
          *(v345 + 2) = 0;
          v346 = swift_allocObject();
          *(v346 + 16) = sub_20B5F678C;
          *(v346 + 24) = v344;
          v347 = v419;
          (*(v212 + 16))(v419, v338, v340);
          v348 = (*(v212 + 80) + 16) & ~*(v212 + 80);
          v349 = (v418 + v348 + 7) & 0xFFFFFFFFFFFFFFF8;
          v350 = swift_allocObject();
          (v449)(v350 + v348, v347, v340);
          v351 = (v350 + v349);
          *v351 = sub_20B5F67A4;
          v351[1] = v346;
          v352 = v422;
          sub_20C137C94();
          v353 = swift_allocObject();
          v354 = v432;
          *(v353 + 16) = sub_20B5F6788;
          *(v353 + 24) = v354;
          v355 = swift_allocObject();
          *(v355 + 16) = sub_20B5F67D4;
          *(v355 + 24) = v353;
          v356 = v424;
          v357 = v421;
          v358 = v425;
          (*(v424 + 16))(v421, v352, v425);
          v359 = (*(v356 + 80) + 16) & ~*(v356 + 80);
          v360 = (v420 + v359 + 7) & 0xFFFFFFFFFFFFFFF8;
          v361 = swift_allocObject();
          (*(v356 + 32))(v361 + v359, v357, v358);
          v362 = (v361 + v360);
          *v362 = sub_20B5DF204;
          v362[1] = v355;

          v363 = v423;
          sub_20C137C94();
          v364 = *(v356 + 8);
          v364(v352, v358);
          v365 = sub_20C137CB4();
          v366 = swift_allocObject();
          *(v366 + 16) = 0;
          *(v366 + 24) = 0;
          v365(sub_20B52347C, v366);

          v364(v363, v358);
          v170 = v416;
          v118 = v454;
          (*(v212 + 8))(v417, v437);
          (*(v430 + 8))(v409, v431);
        }

        v215 = v446;
        v214 = v447;
        v117 = v408;
      }

      else
      {

        v215 = v446;
        v214 = v447;
      }

      v216 = v427;
      goto LABEL_43;
    default:
      v123 = v440;
      sub_20C13B534();
      v124 = a1;

      v125 = v455;
      v126 = sub_20C13BB74();
      v127 = sub_20C13D1D4();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v460[0] = v130;
        *v128 = 138543618;
        *(v128 + 4) = v125;
        *v129 = v125;
        *(v128 + 12) = 2082;
        v460[2] = v124;
        v131 = sub_20B5F66D0();
        v132 = v125;
        v133 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v131);
        v135 = sub_20B51E694(v133, v134, v460);

        *(v128 + 14) = v135;
        _os_log_impl(&dword_20B517000, v126, v127, "Attempted to configure %{public}@ with item: %{public}s", v128, 0x16u);
        sub_20B520158(v129, &unk_27C762E30, &unk_20C150580);
        MEMORY[0x20F2F6A40](v129, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v130);
        MEMORY[0x20F2F6A40](v130, -1, -1);
        MEMORY[0x20F2F6A40](v128, -1, -1);
      }

      return (*(v441 + 1))(v123, v442);
  }
}

unint64_t sub_20B5F66D0()
{
  result = qword_27C762CA0;
  if (!qword_27C762CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762CA0);
  }

  return result;
}

uint64_t sub_20B5F6724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B5F67F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330, &qword_20C1875B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5F6860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_25Tm()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_20B5F69F8()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA5B6FC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_29Tm()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_20B5F6B90(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA638F0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

uint64_t objectdestroy_33Tm()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

void sub_20B5F6D2C(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F1F68(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), &OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView, *(v1 + 24), *(v1 + 32));
}

uint64_t sub_20B5F6DE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20B5F6EB0()
{
  result = qword_27C76A400;
  if (!qword_27C76A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A400);
  }

  return result;
}

unint64_t sub_20B5F6F04()
{
  result = qword_27C7626E0;
  if (!qword_27C7626E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7626E0);
  }

  return result;
}

void sub_20B5F6F58()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = _UISolariumEnabled();
  v4 = 0.0;
  if (v3)
  {
    v4 = 7.0;
  }

  v5 = v0 + OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_layout;
  *v5 = xmmword_20C1503F0;
  *(v5 + 16) = xmmword_20C150400;
  *(v5 + 32) = xmmword_20C150410;
  *(v5 + 48) = xmmword_20C150420;
  *(v5 + 64) = xmmword_20C150430;
  *(v5 + 80) = v4;
  v6 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v7 = 16.0;
  }

  else
  {
    v7 = 8.0;
  }

  v8 = (v0 + OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView);
  v9 = [v6 layer];
  [v9 setCornerRadius_];

  [v6 setClipsToBounds_];
  *v8 = v6;
  v8[1] = &off_2822B63E8;
  v10 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_contentGuide;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  LODWORD(v12) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v12];

  v13 = *MEMORY[0x277D769A8];
  v14 = objc_opt_self();
  v15 = [v14 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
  v16 = [v15 fontDescriptorWithSymbolicTraits_];
  if (v16)
  {
    v17 = v16;

    v15 = v17;
  }

  v18 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_titleLabel;
  v19 = objc_opt_self();
  v20 = [v19 fontWithDescriptor:v15 size:0.0];

  [v11 setFont_];
  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  [v11 setAllowsDefaultTighteningForTruncation_];
  v21 = objc_opt_self();
  v22 = [v21 whiteColor];
  [v11 setTextColor_];

  *(v0 + v18) = v11;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsFontForContentSizeCategory_];
  LODWORD(v24) = 1148846080;
  [v23 setContentCompressionResistancePriority:1 forAxis:v24];

  v43 = *MEMORY[0x277D76918];
  v25 = [v14 preferredFontDescriptorWithTextStyle_compatibleWithTraitCollection_];
  v26 = [v25 fontDescriptorWithSymbolicTraits_];
  if (v26)
  {
    v27 = v26;

    v25 = v27;
  }

  v28 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel;
  v29 = [v19 fontWithDescriptor:v25 size:0.0];

  [v23 setFont_];
  [v23 setNumberOfLines_];
  [v23 setLineBreakMode_];
  [v23 setAllowsDefaultTighteningForTruncation_];
  v30 = [v21 secondaryLabelColor];
  [v23 setTextColor_];

  *(v0 + v28) = v23;
  v31 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  [v32 setAdjustsFontForContentSizeCategory_];
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];

  v34 = [v19 preferredFontForTextStyle_];
  [v32 setFont_];

  [v32 setNumberOfLines_];
  [v32 setAllowsDefaultTighteningForTruncation_];
  v35 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v32 setTextColor_];

  *(v0 + v31) = v32;
  v36 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel;
  v37 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  [v37 setAdjustsFontForContentSizeCategory_];
  LODWORD(v38) = 1148846080;
  [v37 setContentCompressionResistancePriority:1 forAxis:v38];

  v39 = [v19 preferredFontForTextStyle_];
  [v37 setFont_];

  [v37 setNumberOfLines_];
  [v37 setLineBreakMode_];
  [v37 setAllowsDefaultTighteningForTruncation_];
  v40 = [v21 secondaryLabelColor];
  [v37 setTextColor_];

  *(v0 + v36) = v37;
  v41 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton;
  type metadata accessor for IconButton();
  v42 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v41) = v42;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B5F7718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B5F77A8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_catalogClient));
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanBodyFocusPickerShelf(uint64_t a1)
{
  result = qword_27C762700;
  if (!qword_27C762700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B5F7920(uint64_t a1)
{
  result = sub_20C132EE4();
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

double sub_20B5F79FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_activationState) = 1;
    sub_20C13CDC4();
    v5 = sub_20C13CDF4();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v0;

    sub_20B614F94(0, 0, v4, &unk_20C1506D8, v6);
  }

  return result;
}

uint64_t sub_20B5F7B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762740, &unk_20C1506E0);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5F7BF0, 0, 0);
}

uint64_t sub_20B5F7BF0()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_catalogClient), *(v0[4] + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_catalogClient + 24));
  sub_20C13A024();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanBodyFocusPickerShelf.swift";
  *(v2 + 24) = 47;
  *(v2 + 32) = 2;
  *(v2 + 40) = 41;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762748, &qword_20C176830);
  v0[10] = v4;
  *v3 = v0;
  v3[1] = sub_20B5F7D48;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B606768, v2, v4);
}

uint64_t sub_20B5F7D48()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {

    v3 = sub_20B5F7F90;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];
    v2[12] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B5F7EA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B5F7EA8()
{
  v0[3] = v0[12];
  swift_getKeyPath();
  sub_20B606778();
  v1 = sub_20C13CBF4();

  sub_20B5F9E20(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20B5F7F90()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5F8010@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B5F8088@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

char *sub_20B5F8178(uint64_t a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_20C132964();
  v11 = v10;

  v34 = 0uLL;
  LOBYTE(v35) = 1;
  *(&v35 + 1) = 0;
  *&v36 = 0;
  WORD4(v36) = 128;
  v37 = 0uLL;
  v38 = xmmword_20C1505B0;
  *&v39 = v9;
  *(&v39 + 1) = v11;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = a1;
  v41 = MEMORY[0x277D84F90];
  *&v42 = 0;
  *(&v42 + 1) = v9;
  *v43 = v11;
  *&v43[8] = xmmword_20C150190;
  nullsub_1();
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 144);
  v44[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 128);
  v44[9] = v13;
  v45 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 160);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 80);
  v44[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 64);
  v44[5] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 112);
  v44[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 96);
  v44[7] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 16);
  v44[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row);
  v44[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 48);
  v44[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 32);
  v44[3] = v17;
  v18 = *v43;
  *(v12 + 128) = v42;
  *(v12 + 144) = v18;
  *(v12 + 160) = *&v43[16];
  v19 = v39;
  *(v12 + 64) = v38;
  *(v12 + 80) = v19;
  v20 = v41;
  *(v12 + 96) = v40;
  *(v12 + 112) = v20;
  v21 = v35;
  *v12 = v34;
  *(v12 + 16) = v21;
  v22 = v37;
  *(v12 + 32) = v36;
  *(v12 + 48) = v22;

  sub_20B520158(v44, &qword_27C762340, &unk_20C150290);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    if (!*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
    {
      sub_20B61D280(v1, result);
      if (v26)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v31 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v32 = sub_20C13C584();
        result = (*(v4 + 8))(v6, v3);
        if ((v32 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620A90(v28, v29, v30, v31, 0, v24);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20B5F85A4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v29 = a5;
  v40 = a4(0);
  MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v39 = &v29 - v13;
  v36 = *(a3 + 16);
  if (v36)
  {
    v14 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = *(v11 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v11;
      v20 = a1;
      v21 = v39;
      (*(v11 + 16))(v39, v18, v40, v12);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v33)(v39, v40);

        return;
      }

      if (v23)
      {
        v24 = *v34;
        (*v34)(v37, v39, v40);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29(0, *(v25 + 16) + 1, 1);
          v25 = v41;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          v29(v27 > 1, v28 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v28 + 1;
        v38 = v25;
        v24((v25 + v15 + v28 * v16), v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        (*v33)(v39, v40);
        a3 = v17;
      }

      ++v14;
      v11 = v19;
      if (v36 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

void sub_20B5F88B8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for WorkoutPlanCatalogThemePickerOption(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_20B6068D8(a3 + v14 + v15 * v12, v11);
      v16 = a1(v11);
      if (v3)
      {
        sub_20B60693C(v11);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_20B6069D4(v11, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5DB28(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_20BB5DB28((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_20B6069D4(v23, v13 + v14 + v19 * v15);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_20B60693C(v11);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_20B5F8B0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v14 = *(a3 + 16);
    v15 = result;
    while (v8 < *(a3 + 16))
    {
      v12 = *(a3 + v8 + 32);
      v16 = v12;
      result = v7(&v16);
      if (v4)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((result & 1) == 0)
        {
          result = a4(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          result = a4(v10 > 1, v11 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v11 + 1;
        *(v9 + v11 + 32) = v12;
        v6 = v14;
        v7 = v15;
      }

      if (v6 == ++v8)
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

uint64_t sub_20B5F8C78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762728, &unk_20C1506B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762730, &qword_20C1506C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762720, &qword_20C159FF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  sub_20B52F9E8(v2, &v23 - v11, &qword_27C762720, &qword_20C159FF0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = &qword_20C1506C0;
      sub_20B5DF134(v12, v9, &qword_27C762730, &qword_20C1506C0);
      v17 = sub_20C1365F4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v9, v17);
      v19 = v9;
      v20 = &qword_27C762730;
    }

    else
    {
      v16 = &unk_20C1506B0;
      sub_20B5DF134(v12, v6, &qword_27C762728, &unk_20C1506B0);
      v17 = sub_20C1365F4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v6, v17);
      v19 = v6;
      v20 = &qword_27C762728;
    }

    sub_20B520158(v19, v20, v16);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762738, &qword_20C1506C8);

    v21 = sub_20C1365F4();
    v22 = *(v21 - 8);
    (*(v22 + 32))(a1, v12, v21);
    return (*(v22 + 56))(a1, 0, 1, v21);
  }

  else
  {
    sub_20B520158(v12, &qword_27C762720, &qword_20C159FF0);
    v14 = sub_20C1365F4();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_20B5F9000@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0, &unk_20C150790);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D8, &unk_20C170AA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8, &qword_20C170A30);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  sub_20B52F9E8(v2, &v23 - v11, &qword_27C7627C8, &qword_20C170A30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = &unk_20C170AA0;
      sub_20B5DF134(v12, v9, &qword_27C7627D8, &unk_20C170AA0);
      v17 = sub_20C1365F4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v9, v17);
      v19 = v9;
      v20 = &qword_27C7627D8;
    }

    else
    {
      v16 = &unk_20C150790;
      sub_20B5DF134(v12, v6, &qword_27C7627D0, &unk_20C150790);
      v17 = sub_20C1365F4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v6, v17);
      v19 = v6;
      v20 = &qword_27C7627D0;
    }

    sub_20B520158(v19, v20, v16);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E0, &unk_20C1507A0);

    v21 = sub_20C1365F4();
    v22 = *(v21 - 8);
    (*(v22 + 32))(a1, v12, v21);
    return (*(v22 + 56))(a1, 0, 1, v21);
  }

  else
  {
    sub_20B520158(v12, &qword_27C7627C8, &qword_20C170A30);
    v14 = sub_20C1365F4();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_20B5F9388@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762800, &qword_20C1507C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762808, &qword_20C1507C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F8, &qword_20C1507B8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  sub_20B52F9E8(v2, &v23 - v11, &qword_27C7627F8, &qword_20C1507B8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = &qword_20C1507C8;
      sub_20B5DF134(v12, v9, &qword_27C762808, &qword_20C1507C8);
      v17 = sub_20C1365F4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v9, v17);
      v19 = v9;
      v20 = &qword_27C762808;
    }

    else
    {
      v16 = &qword_20C1507C0;
      sub_20B5DF134(v12, v6, &qword_27C762800, &qword_20C1507C0);
      v17 = sub_20C1365F4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v6, v17);
      v19 = v6;
      v20 = &qword_27C762800;
    }

    sub_20B520158(v19, v20, v16);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762810, &unk_20C1507D0);

    v21 = sub_20C1365F4();
    v22 = *(v21 - 8);
    (*(v22 + 32))(a1, v12, v21);
    return (*(v22 + 56))(a1, 0, 1, v21);
  }

  else
  {
    sub_20B520158(v12, &qword_27C7627F8, &qword_20C1507B8);
    v14 = sub_20C1365F4();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_20B5F9710@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762770, &qword_20C150730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762778, &qword_20C150738);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762768, &unk_20C152BD0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  sub_20B52F9E8(v2, &v23 - v11, &qword_27C762768, &unk_20C152BD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = &qword_20C150738;
      sub_20B5DF134(v12, v9, &qword_27C762778, &qword_20C150738);
      v17 = sub_20C1365F4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v9, v17);
      v19 = v9;
      v20 = &qword_27C762778;
    }

    else
    {
      v16 = &qword_20C150730;
      sub_20B5DF134(v12, v6, &qword_27C762770, &qword_20C150730);
      v17 = sub_20C1365F4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v6, v17);
      v19 = v6;
      v20 = &qword_27C762770;
    }

    sub_20B520158(v19, v20, v16);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762780, &qword_20C150740);

    v21 = sub_20C1365F4();
    v22 = *(v21 - 8);
    (*(v22 + 32))(a1, v12, v21);
    return (*(v22 + 56))(a1, 0, 1, v21);
  }

  else
  {
    sub_20B520158(v12, &qword_27C762768, &unk_20C152BD0);
    v14 = sub_20C1365F4();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_20B5F9A98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A0, &qword_20C150760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A8, &qword_20C150768);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762798, &unk_20C15A000);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  sub_20B52F9E8(v2, &v23 - v11, &qword_27C762798, &unk_20C15A000);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = &qword_20C150768;
      sub_20B5DF134(v12, v9, &qword_27C7627A8, &qword_20C150768);
      v17 = sub_20C1365F4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v9, v17);
      v19 = v9;
      v20 = &qword_27C7627A8;
    }

    else
    {
      v16 = &qword_20C150760;
      sub_20B5DF134(v12, v6, &qword_27C7627A0, &qword_20C150760);
      v17 = sub_20C1365F4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v6, v17);
      v19 = v6;
      v20 = &qword_27C7627A0;
    }

    sub_20B520158(v19, v20, v16);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B0, &unk_20C150770);

    v21 = sub_20C1365F4();
    v22 = *(v21 - 8);
    (*(v22 + 32))(a1, v12, v21);
    return (*(v22 + 56))(a1, 0, 1, v21);
  }

  else
  {
    sub_20B520158(v12, &qword_27C762798, &unk_20C15A000);
    v14 = sub_20C1365F4();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_20B5F9E20(uint64_t a1)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762728, &unk_20C1506B0);
  MEMORY[0x28223BE20](v30);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762730, &qword_20C1506C0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762720, &qword_20C159FF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v12, &qword_27C762720, &qword_20C159FF0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v6, &qword_27C762730, &qword_20C1506C0);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = v1[3];
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 32))(v1, v31, v6, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
      }

      v25 = *(v4 + 36);

      *&v6[v25] = v17;
      sub_20B52F9E8(v6, v9, &qword_27C762730, &qword_20C1506C0);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762720, &qword_20C159FF0);
      swift_endAccess();
      sub_20B5FB798();
      v26 = v6;
      v27 = &qword_27C762730;
      v28 = &qword_20C1506C0;
    }

    else
    {
      sub_20B5DF134(v12, v3, &qword_27C762728, &unk_20C1506B0);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = v1[3];
        v23 = swift_getObjectType();
        v24 = (*(v22 + 32))(v1, v31, v3, v23, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v31;
      }

      v29 = *(v30 + 36);

      *&v3[v29] = v24;
      sub_20B52F9E8(v3, v9, &qword_27C762728, &unk_20C1506B0);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762720, &qword_20C159FF0);
      swift_endAccess();
      sub_20B602898();
      v26 = v3;
      v27 = &qword_27C762728;
      v28 = &unk_20C1506B0;
    }

    return sub_20B520158(v26, v27, v28);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762738, &qword_20C1506C8);

      v19 = *(v18 + 48);
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 32))(v9, v12, v20);
      *(v9 + v19) = v31;
    }

    else
    {
      sub_20B520158(v12, &qword_27C762720, &qword_20C159FF0);
      *v9 = v31;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_20B5DF2D4(v9, v1 + v13, &qword_27C762720, &qword_20C159FF0);
    return swift_endAccess();
  }
}

uint64_t sub_20B5FA338(uint64_t a1)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762770, &qword_20C150730);
  MEMORY[0x28223BE20](v30);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762778, &qword_20C150738);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762768, &unk_20C152BD0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v12, &qword_27C762768, &unk_20C152BD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v6, &qword_27C762778, &qword_20C150738);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = v1[3];
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 32))(v1, v31, v6, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
      }

      v25 = *(v4 + 36);

      *&v6[v25] = v17;
      sub_20B52F9E8(v6, v9, &qword_27C762778, &qword_20C150738);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762768, &unk_20C152BD0);
      swift_endAccess();
      sub_20B5FBDA0();
      v26 = v6;
      v27 = &qword_27C762778;
      v28 = &qword_20C150738;
    }

    else
    {
      sub_20B5DF134(v12, v3, &qword_27C762770, &qword_20C150730);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = v1[3];
        v23 = swift_getObjectType();
        v24 = (*(v22 + 32))(v1, v31, v3, v23, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v31;
      }

      v29 = *(v30 + 36);

      *&v3[v29] = v24;
      sub_20B52F9E8(v3, v9, &qword_27C762770, &qword_20C150730);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762768, &unk_20C152BD0);
      swift_endAccess();
      sub_20B603AEC();
      v26 = v3;
      v27 = &qword_27C762770;
      v28 = &qword_20C150730;
    }

    return sub_20B520158(v26, v27, v28);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762780, &qword_20C150740);

      v19 = *(v18 + 48);
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 32))(v9, v12, v20);
      *(v9 + v19) = v31;
    }

    else
    {
      sub_20B520158(v12, &qword_27C762768, &unk_20C152BD0);
      *v9 = v31;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_20B5DF2D4(v9, v1 + v13, &qword_27C762768, &unk_20C152BD0);
    return swift_endAccess();
  }
}

uint64_t sub_20B5FA850(uint64_t a1)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A0, &qword_20C150760);
  MEMORY[0x28223BE20](v30);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A8, &qword_20C150768);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762798, &unk_20C15A000);
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v12, &qword_27C762798, &unk_20C15A000);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v6, &qword_27C7627A8, &qword_20C150768);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = v1[3];
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 32))(v1, v31, v6, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
      }

      v25 = *(v4 + 36);

      *&v6[v25] = v17;
      sub_20B52F9E8(v6, v9, &qword_27C7627A8, &qword_20C150768);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762798, &unk_20C15A000);
      swift_endAccess();
      sub_20B5FC3A8();
      v26 = v6;
      v27 = &qword_27C7627A8;
      v28 = &qword_20C150768;
    }

    else
    {
      sub_20B5DF134(v12, v3, &qword_27C7627A0, &qword_20C150760);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = v1[3];
        v23 = swift_getObjectType();
        v24 = (*(v22 + 32))(v1, v31, v3, v23, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v31;
      }

      v29 = *(v30 + 36);

      *&v3[v29] = v24;
      sub_20B52F9E8(v3, v9, &qword_27C7627A0, &qword_20C150760);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762798, &unk_20C15A000);
      swift_endAccess();
      sub_20B604108();
      v26 = v3;
      v27 = &qword_27C7627A0;
      v28 = &qword_20C150760;
    }

    return sub_20B520158(v26, v27, v28);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B0, &unk_20C150770);

      v19 = *(v18 + 48);
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 32))(v9, v12, v20);
      *(v9 + v19) = v31;
    }

    else
    {
      sub_20B520158(v12, &qword_27C762798, &unk_20C15A000);
      *v9 = v31;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_20B5DF2D4(v9, v1 + v13, &qword_27C762798, &unk_20C15A000);
    return swift_endAccess();
  }
}

uint64_t sub_20B5FAD68(uint64_t a1)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0, &unk_20C150790);
  MEMORY[0x28223BE20](v30);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D8, &unk_20C170AA0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8, &qword_20C170A30);
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v12, &qword_27C7627C8, &qword_20C170A30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v6, &qword_27C7627D8, &unk_20C170AA0);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = v1[3];
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 32))(v1, v31, v6, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
      }

      v25 = *(v4 + 36);

      *&v6[v25] = v17;
      sub_20B52F9E8(v6, v9, &qword_27C7627D8, &unk_20C170AA0);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627C8, &qword_20C170A30);
      swift_endAccess();
      sub_20B5FC988();
      v26 = v6;
      v27 = &qword_27C7627D8;
      v28 = &unk_20C170AA0;
    }

    else
    {
      sub_20B5DF134(v12, v3, &qword_27C7627D0, &unk_20C150790);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = v1[3];
        v23 = swift_getObjectType();
        v24 = (*(v22 + 32))(v1, v31, v3, v23, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v31;
      }

      v29 = *(v30 + 36);

      *&v3[v29] = v24;
      sub_20B52F9E8(v3, v9, &qword_27C7627D0, &unk_20C150790);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627C8, &qword_20C170A30);
      swift_endAccess();
      sub_20B602EB4();
      v26 = v3;
      v27 = &qword_27C7627D0;
      v28 = &unk_20C150790;
    }

    return sub_20B520158(v26, v27, v28);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E0, &unk_20C1507A0);

      v19 = *(v18 + 48);
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 32))(v9, v12, v20);
      *(v9 + v19) = v31;
    }

    else
    {
      sub_20B520158(v12, &qword_27C7627C8, &qword_20C170A30);
      *v9 = v31;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627C8, &qword_20C170A30);
    return swift_endAccess();
  }
}

uint64_t sub_20B5FB280(uint64_t a1)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762800, &qword_20C1507C0);
  MEMORY[0x28223BE20](v30);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762808, &qword_20C1507C8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F8, &qword_20C1507B8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v12, &qword_27C7627F8, &qword_20C1507B8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v6, &qword_27C762808, &qword_20C1507C8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = v1[3];
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 32))(v1, v31, v6, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
      }

      v25 = *(v4 + 36);

      *&v6[v25] = v17;
      sub_20B52F9E8(v6, v9, &qword_27C762808, &qword_20C1507C8);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627F8, &qword_20C1507B8);
      swift_endAccess();
      sub_20B5FCF90();
      v26 = v6;
      v27 = &qword_27C762808;
      v28 = &qword_20C1507C8;
    }

    else
    {
      sub_20B5DF134(v12, v3, &qword_27C762800, &qword_20C1507C0);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = v1[3];
        v23 = swift_getObjectType();
        v24 = (*(v22 + 32))(v1, v31, v3, v23, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v31;
      }

      v29 = *(v30 + 36);

      *&v3[v29] = v24;
      sub_20B52F9E8(v3, v9, &qword_27C762800, &qword_20C1507C0);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627F8, &qword_20C1507B8);
      swift_endAccess();
      sub_20B6034D0();
      v26 = v3;
      v27 = &qword_27C762800;
      v28 = &qword_20C1507C0;
    }

    return sub_20B520158(v26, v27, v28);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762810, &unk_20C1507D0);

      v19 = *(v18 + 48);
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 32))(v9, v12, v20);
      *(v9 + v19) = v31;
    }

    else
    {
      sub_20B520158(v12, &qword_27C7627F8, &qword_20C1507B8);
      *v9 = v31;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627F8, &qword_20C1507B8);
    return swift_endAccess();
  }
}

uint64_t sub_20B5FB798()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762718, &unk_20C1506A0);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = (&v40 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710, &qword_20C176710);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762728, &unk_20C1506B0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762720, &qword_20C159FF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762730, &qword_20C1506C0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = *(*v0 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v0 + v16, v12, &qword_27C762720, &qword_20C159FF0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20B5DF134(v12, v15, &qword_27C762730, &qword_20C1506C0);
    v17 = *&v15[v13[9]];
    if (v17 && (v18 = *&v15[v13[10]]) != 0 && (v19 = *&v15[v13[11]]) != 0)
    {
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 16))(v7, v15, v20);
      ObjectType = v19;
      v21 = v5[12];
      v22 = sub_20C138244();
      v23 = *(v22 - 8);
      v24 = *(v23 + 56);
      v45 = v22;
      v46 = v21;
      v25 = &v7[v21];
      v26 = ObjectType;
      v43 = v23 + 56;
      v44 = v24;
      (v24)(v25, 1, 1);
      *&v7[v5[9]] = v17;
      *&v7[v5[10]] = v18;
      *&v7[v5[11]] = v26;
      v27 = &v15[v13[12]];
      v28 = v27[16];
      if (v28 <= 0xFB)
      {
        v32 = *v27;
        v41 = *(v27 + 1);
        v42 = v32;
        v33 = *(v0 + *(*v0 + 112));

        v34 = v49;
        sub_20B600BFC(v33, v49);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v45 = v0[3];
          ObjectType = swift_getObjectType();
          v44 = &v40;
          v35 = *v34;
          MEMORY[0x28223BE20](ObjectType);
          *(&v40 - 2) = v34;

          sub_20B5F85A4(sub_20B606C90, (&v40 - 4), v35, MEMORY[0x277D53E10], sub_20BB5D648);
          v36 = v48;
          (*(v45 + 40))(v0, v42, v41, v28, v37, ObjectType);
          swift_unknownObjectRelease();

          sub_20B520158(v49, &qword_27C762718, &unk_20C1506A0);
        }

        else
        {
          sub_20B520158(v34, &qword_27C762718, &unk_20C1506A0);
          v36 = v48;
          v44(v48, 1, 1, v45);
        }

        sub_20B5DF2D4(v36, &v7[v46], &qword_27C762710, &qword_20C176710);
      }

      else
      {
      }

      v38 = v50;
      sub_20B52F9E8(v7, v50, &qword_27C762728, &unk_20C1506B0);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v38, v0 + v16, &qword_27C762720, &qword_20C159FF0);
      swift_endAccess();
      sub_20B602898();
      sub_20B520158(v15, &qword_27C762730, &qword_20C1506C0);
      v31 = v7;
      v29 = &qword_27C762728;
      v30 = &unk_20C1506B0;
    }

    else
    {
      v29 = &qword_27C762730;
      v30 = &qword_20C1506C0;
      v31 = v15;
    }
  }

  else
  {
    v29 = &qword_27C762720;
    v30 = &qword_20C159FF0;
    v31 = v12;
  }

  return sub_20B520158(v31, v29, v30);
}

uint64_t sub_20B5FBDA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762760, &unk_20C150720);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = (&v40 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758, &unk_20C176700);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762770, &qword_20C150730);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762768, &unk_20C152BD0);
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762778, &qword_20C150738);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = *(*v0 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v0 + v16, v12, &qword_27C762768, &unk_20C152BD0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20B5DF134(v12, v15, &qword_27C762778, &qword_20C150738);
    v17 = *&v15[v13[9]];
    if (v17 && (v18 = *&v15[v13[10]]) != 0 && (v19 = *&v15[v13[11]]) != 0)
    {
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 16))(v7, v15, v20);
      ObjectType = v19;
      v21 = v5[12];
      v22 = sub_20C1334D4();
      v23 = *(v22 - 8);
      v24 = *(v23 + 56);
      v45 = v22;
      v46 = v21;
      v25 = &v7[v21];
      v26 = ObjectType;
      v43 = v23 + 56;
      v44 = v24;
      (v24)(v25, 1, 1);
      *&v7[v5[9]] = v17;
      *&v7[v5[10]] = v18;
      *&v7[v5[11]] = v26;
      v27 = &v15[v13[12]];
      v28 = v27[16];
      if (v28 <= 0xFB)
      {
        v32 = *v27;
        v41 = *(v27 + 1);
        v42 = v32;
        v33 = *(v0 + *(*v0 + 112));

        v34 = v49;
        sub_20B601DA8(v33, v49);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v45 = v0[3];
          ObjectType = swift_getObjectType();
          v44 = &v40;
          v35 = *v34;
          MEMORY[0x28223BE20](ObjectType);
          *(&v40 - 2) = v34;

          sub_20B5F85A4(sub_20B606CE4, (&v40 - 4), v35, MEMORY[0x277D4FF18], sub_20BB5D714);
          v36 = v48;
          (*(v45 + 40))(v0, v42, v41, v28, v37, ObjectType);
          swift_unknownObjectRelease();

          sub_20B520158(v49, &qword_27C762760, &unk_20C150720);
        }

        else
        {
          sub_20B520158(v34, &qword_27C762760, &unk_20C150720);
          v36 = v48;
          v44(v48, 1, 1, v45);
        }

        sub_20B5DF2D4(v36, &v7[v46], &qword_27C762758, &unk_20C176700);
      }

      else
      {
      }

      v38 = v50;
      sub_20B52F9E8(v7, v50, &qword_27C762770, &qword_20C150730);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v38, v0 + v16, &qword_27C762768, &unk_20C152BD0);
      swift_endAccess();
      sub_20B603AEC();
      sub_20B520158(v15, &qword_27C762778, &qword_20C150738);
      v31 = v7;
      v29 = &qword_27C762770;
      v30 = &qword_20C150730;
    }

    else
    {
      v29 = &qword_27C762778;
      v30 = &qword_20C150738;
      v31 = v15;
    }
  }

  else
  {
    v29 = &qword_27C762768;
    v30 = &unk_20C152BD0;
    v31 = v12;
  }

  return sub_20B520158(v31, v29, v30);
}

uint64_t sub_20B5FC3A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762790, &unk_20C150750);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = (&v40 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762788, &qword_20C150748);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A0, &qword_20C150760);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762798, &unk_20C15A000);
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A8, &qword_20C150768);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = *(*v0 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v0 + v16, v12, &qword_27C762798, &unk_20C15A000);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20B5DF134(v12, v15, &qword_27C7627A8, &qword_20C150768);
    v17 = *&v15[v13[9]];
    if (v17 && (v18 = *&v15[v13[10]]) != 0 && (v19 = *&v15[v13[11]]) != 0)
    {
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 16))(v7, v15, v20);
      ObjectType = v19;
      v21 = v5[12];
      v22 = type metadata accessor for WorkoutPlanCatalogThemePickerOption(0);
      v23 = *(v22 - 8);
      v24 = *(v23 + 56);
      v45 = v22;
      v46 = v21;
      v25 = &v7[v21];
      v26 = ObjectType;
      v43 = v23 + 56;
      v44 = v24;
      (v24)(v25, 1, 1);
      *&v7[v5[9]] = v17;
      *&v7[v5[10]] = v18;
      *&v7[v5[11]] = v26;
      v27 = &v15[v13[12]];
      v28 = v27[16];
      if (v28 <= 0xFB)
      {
        v32 = *v27;
        v41 = *(v27 + 1);
        v42 = v32;
        v33 = *(v0 + *(*v0 + 112));

        v34 = v49;
        sub_20B60238C(v33, v49);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v45 = v0[3];
          ObjectType = swift_getObjectType();
          v44 = &v40;
          v35 = *v34;
          MEMORY[0x28223BE20](ObjectType);
          *(&v40 - 2) = v34;

          sub_20B5F88B8(sub_20B606D1C, (&v40 - 4), v35);
          v36 = v48;
          (*(v45 + 40))(v0, v42, v41, v28, v37, ObjectType);
          swift_unknownObjectRelease();

          sub_20B520158(v49, &qword_27C762790, &unk_20C150750);
        }

        else
        {
          sub_20B520158(v34, &qword_27C762790, &unk_20C150750);
          v36 = v48;
          v44(v48, 1, 1, v45);
        }

        sub_20B5DF2D4(v36, &v7[v46], &qword_27C762788, &qword_20C150748);
      }

      else
      {
      }

      v38 = v50;
      sub_20B52F9E8(v7, v50, &qword_27C7627A0, &qword_20C150760);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v38, v0 + v16, &qword_27C762798, &unk_20C15A000);
      swift_endAccess();
      sub_20B604108();
      sub_20B520158(v15, &qword_27C7627A8, &qword_20C150768);
      v31 = v7;
      v29 = &qword_27C7627A0;
      v30 = &qword_20C150760;
    }

    else
    {
      v29 = &qword_27C7627A8;
      v30 = &qword_20C150768;
      v31 = v15;
    }
  }

  else
  {
    v29 = &qword_27C762798;
    v30 = &unk_20C15A000;
    v31 = v12;
  }

  return sub_20B520158(v31, v29, v30);
}

uint64_t sub_20B5FC988()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C0, &unk_20C150780);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = (&v40 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8, &unk_20C170A90);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0, &unk_20C150790);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8, &qword_20C170A30);
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D8, &unk_20C170AA0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = *(*v0 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v0 + v16, v12, &qword_27C7627C8, &qword_20C170A30);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20B5DF134(v12, v15, &qword_27C7627D8, &unk_20C170AA0);
    v17 = *&v15[v13[9]];
    if (v17 && (v18 = *&v15[v13[10]]) != 0 && (v19 = *&v15[v13[11]]) != 0)
    {
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 16))(v7, v15, v20);
      ObjectType = v19;
      v21 = v5[12];
      v22 = sub_20C1341A4();
      v23 = *(v22 - 8);
      v24 = *(v23 + 56);
      v45 = v22;
      v46 = v21;
      v25 = &v7[v21];
      v26 = ObjectType;
      v43 = v23 + 56;
      v44 = v24;
      (v24)(v25, 1, 1);
      *&v7[v5[9]] = v17;
      *&v7[v5[10]] = v18;
      *&v7[v5[11]] = v26;
      v27 = &v15[v13[12]];
      v28 = v27[16];
      if (v28 <= 0xFB)
      {
        v32 = *v27;
        v41 = *(v27 + 1);
        v42 = v32;
        v33 = *(v0 + *(*v0 + 112));

        v34 = v49;
        sub_20B6011E0(v33, v49);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v45 = v0[3];
          ObjectType = swift_getObjectType();
          v44 = &v40;
          v35 = *v34;
          MEMORY[0x28223BE20](ObjectType);
          *(&v40 - 2) = v34;

          sub_20B5F85A4(sub_20B606D54, (&v40 - 4), v35, MEMORY[0x277D50618], sub_20BB5D57C);
          v36 = v48;
          (*(v45 + 40))(v0, v42, v41, v28, v37, ObjectType);
          swift_unknownObjectRelease();

          sub_20B520158(v49, &qword_27C7627C0, &unk_20C150780);
        }

        else
        {
          sub_20B520158(v34, &qword_27C7627C0, &unk_20C150780);
          v36 = v48;
          v44(v48, 1, 1, v45);
        }

        sub_20B5DF2D4(v36, &v7[v46], &qword_27C7627B8, &unk_20C170A90);
      }

      else
      {
      }

      v38 = v50;
      sub_20B52F9E8(v7, v50, &qword_27C7627D0, &unk_20C150790);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v38, v0 + v16, &qword_27C7627C8, &qword_20C170A30);
      swift_endAccess();
      sub_20B602EB4();
      sub_20B520158(v15, &qword_27C7627D8, &unk_20C170AA0);
      v31 = v7;
      v29 = &qword_27C7627D0;
      v30 = &unk_20C150790;
    }

    else
    {
      v29 = &qword_27C7627D8;
      v30 = &unk_20C170AA0;
      v31 = v15;
    }
  }

  else
  {
    v29 = &qword_27C7627C8;
    v30 = &qword_20C170A30;
    v31 = v12;
  }

  return sub_20B520158(v31, v29, v30);
}

uint64_t sub_20B5FCF90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F0, &qword_20C1507B0);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = (&v40 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8, &unk_20C1643F0);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762800, &qword_20C1507C0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F8, &qword_20C1507B8);
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762808, &qword_20C1507C8);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = *(*v0 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v0 + v16, v12, &qword_27C7627F8, &qword_20C1507B8);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20B5DF134(v12, v15, &qword_27C762808, &qword_20C1507C8);
    v17 = *&v15[v13[9]];
    if (v17 && (v18 = *&v15[v13[10]]) != 0 && (v19 = *&v15[v13[11]]) != 0)
    {
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 16))(v7, v15, v20);
      ObjectType = v19;
      v21 = v5[12];
      v22 = sub_20C1382B4();
      v23 = *(v22 - 8);
      v24 = *(v23 + 56);
      v45 = v22;
      v46 = v21;
      v25 = &v7[v21];
      v26 = ObjectType;
      v43 = v23 + 56;
      v44 = v24;
      (v24)(v25, 1, 1);
      *&v7[v5[9]] = v17;
      *&v7[v5[10]] = v18;
      *&v7[v5[11]] = v26;
      v27 = &v15[v13[12]];
      v28 = v27[16];
      if (v28 <= 0xFB)
      {
        v32 = *v27;
        v41 = *(v27 + 1);
        v42 = v32;
        v33 = *(v0 + *(*v0 + 112));

        v34 = v49;
        sub_20B6017C4(v33, v49);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v45 = v0[3];
          ObjectType = swift_getObjectType();
          v44 = &v40;
          v35 = *v34;
          MEMORY[0x28223BE20](ObjectType);
          *(&v40 - 2) = v34;

          sub_20B5F85A4(sub_20B606D8C, (&v40 - 4), v35, MEMORY[0x277D53E88], sub_20BB5D68C);
          v36 = v48;
          (*(v45 + 40))(v0, v42, v41, v28, v37, ObjectType);
          swift_unknownObjectRelease();

          sub_20B520158(v49, &qword_27C7627F0, &qword_20C1507B0);
        }

        else
        {
          sub_20B520158(v34, &qword_27C7627F0, &qword_20C1507B0);
          v36 = v48;
          v44(v48, 1, 1, v45);
        }

        sub_20B5DF2D4(v36, &v7[v46], &qword_27C7627E8, &unk_20C1643F0);
      }

      else
      {
      }

      v38 = v50;
      sub_20B52F9E8(v7, v50, &qword_27C762800, &qword_20C1507C0);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v38, v0 + v16, &qword_27C7627F8, &qword_20C1507B8);
      swift_endAccess();
      sub_20B6034D0();
      sub_20B520158(v15, &qword_27C762808, &qword_20C1507C8);
      v31 = v7;
      v29 = &qword_27C762800;
      v30 = &qword_20C1507C0;
    }

    else
    {
      v29 = &qword_27C762808;
      v30 = &qword_20C1507C8;
      v31 = v15;
    }
  }

  else
  {
    v29 = &qword_27C7627F8;
    v30 = &qword_20C1507B8;
    v31 = v12;
  }

  return sub_20B520158(v31, v29, v30);
}

char *sub_20B5FD598(uint64_t a1)
{
  v99 = a1;
  v2 = sub_20C13BB84();
  v96 = *(v2 - 8);
  v97 = v2;
  MEMORY[0x28223BE20](v2);
  v94 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_20C138244();
  v92 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710, &qword_20C176710);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v82 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v82 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762718, &unk_20C1506A0);
  MEMORY[0x28223BE20](v98);
  v15 = (&v82 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762720, &qword_20C159FF0);
  MEMORY[0x28223BE20](v16);
  v89 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762728, &unk_20C1506B0);
  MEMORY[0x28223BE20](v86);
  v22 = &v82 - v21;
  v23 = *(*v1 + 104);
  swift_beginAccess();
  v87 = v23;
  sub_20B52F9E8(v1 + v23, v20, &qword_27C762720, &qword_20C159FF0);
  v88 = v16;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v54 = &qword_27C762720;
    v55 = &qword_20C159FF0;
    v56 = v20;
    return sub_20B520158(v56, v54, v55);
  }

  sub_20B5DF134(v20, v22, &qword_27C762728, &unk_20C1506B0);
  v24 = *(*v1 + 112);
  v83 = v1;
  v25 = *(v1 + v24);
  v84 = v22;
  sub_20B600BFC(v25, v15);
  v95 = v15;
  v26 = *v15;
  MEMORY[0x28223BE20](v27);
  *(&v82 - 2) = v95;

  v28 = MEMORY[0x277D53E10];
  sub_20B5F85A4(sub_20B604B94, (&v82 - 4), v26, MEMORY[0x277D53E10], sub_20BB5D648);
  v30 = v29;
  MEMORY[0x28223BE20](v29);
  v91 = v13;
  *(&v82 - 2) = v95;

  v31 = v91;
  sub_20B5F85A4(sub_20B604CD4, (&v82 - 4), v26, v28, sub_20BB5D648);
  v33 = v32;
  v34 = v95;
  sub_20B52F9E8(v95 + *(v98 + 44), v31, &qword_27C762710, &qword_20C176710);
  if (v99 < 0 || *(v30 + 16) <= v99)
  {

    v57 = v94;
    sub_20C13B534();
    v58 = sub_20C13BB74();
    v59 = sub_20C13D1D4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_20B517000, v58, v59, "[WorkoutPlanFilterOptionCoordinator] item selected out of range", v60, 2u);
      MEMORY[0x20F2F6A40](v60, -1, -1);
    }

    (*(v96 + 8))(v57, v97);
    goto LABEL_15;
  }

  v94 = 0;
  v35 = v92;
  v36 = *(v92 + 16);
  v37 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v97 = *(v92 + 72);
  v98 = v36;
  v38 = v30 + v37 + v97 * v99;
  v39 = v101;
  v99 = v92 + 16;
  v36(v93, v38, v101);

  v40 = *(v33 + 16);
  if (!v40)
  {

    v43 = MEMORY[0x277D84F90];
LABEL_19:
    v62 = v93;
    v102[0] = sub_20C1362C4();
    v102[1] = v63;
    MEMORY[0x28223BE20](v102[0]);
    *(&v82 - 2) = v102;
    v64 = sub_20B79692C(sub_20B606650, (&v82 - 4), v43);

    if (v64)
    {
      v65 = sub_20C1362C4();
      v67 = v66;
      v68 = v85;
      sub_20B52F9E8(v31, v85, &qword_27C762710, &qword_20C176710);
      if ((*(v35 + 48))(v68, 1, v39) == 1)
      {
        sub_20B520158(v68, &qword_27C762710, &qword_20C176710);

        v69 = v83;
LABEL_22:
        v70 = v90;
        (v98)(v90, v62, v39);
        v71 = 0;
LABEL_30:
        v76 = v89;
        (*(v35 + 56))(v70, v71, 1, v39);
        v77 = v84;
        sub_20B606B6C(v70, &v84[*(v86 + 48)], &qword_27C762710, &qword_20C176710);
        sub_20B52F9E8(v77, v76, &qword_27C762728, &unk_20C1506B0);
        swift_storeEnumTagMultiPayload();
        v78 = v87;
        swift_beginAccess();
        sub_20B5DF2D4(v76, v69 + v78, &qword_27C762720, &qword_20C159FF0);
        swift_endAccess();
        sub_20B602898();
        v79 = v83;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v80 = *(v79 + 24);
          ObjectType = swift_getObjectType();
          (*(v80 + 48))(v79, v62, ObjectType, v80);
          swift_unknownObjectRelease();
        }

        sub_20B520158(v70, &qword_27C762710, &qword_20C176710);
        (*(v35 + 8))(v62, v39);
        v61 = v31;
        goto LABEL_16;
      }

      v72 = sub_20C1362C4();
      v74 = v73;
      (*(v35 + 8))(v68, v39);
      if (v65 == v72 && v67 == v74)
      {

        v71 = 1;
        v69 = v83;
      }

      else
      {
        v75 = sub_20C13DFF4();

        v69 = v83;
        if ((v75 & 1) == 0)
        {
          goto LABEL_22;
        }

        v71 = 1;
      }

      v70 = v90;
      goto LABEL_30;
    }

    (*(v35 + 8))(v62, v39);
LABEL_15:
    v61 = v31;
LABEL_16:
    sub_20B520158(v61, &qword_27C762710, &qword_20C176710);
    sub_20B520158(v34, &qword_27C762718, &unk_20C1506A0);
    v54 = &qword_27C762728;
    v55 = &unk_20C1506B0;
    v56 = v84;
    return sub_20B520158(v56, v54, v55);
  }

  v102[0] = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v40, 0);
  v42 = 0;
  v43 = v102[0];
  v44 = v33 + v37;
  v96 = v35 + 8;
  while (v42 < *(v33 + 16))
  {
    v45 = v40;
    v46 = v100;
    v47 = v101;
    (v98)(v100, v44, v101);
    v48 = sub_20C1362C4();
    v50 = v49;
    result = (*v96)(v46, v47);
    v102[0] = v43;
    v52 = *(v43 + 16);
    v51 = *(v43 + 24);
    if (v52 >= v51 >> 1)
    {
      result = sub_20B526D44((v51 > 1), v52 + 1, 1);
      v43 = v102[0];
    }

    ++v42;
    *(v43 + 16) = v52 + 1;
    v53 = v43 + 16 * v52;
    *(v53 + 32) = v48;
    *(v53 + 40) = v50;
    v44 += v97;
    v40 = v45;
    if (v45 == v42)
    {

      v34 = v95;
      v31 = v91;
      v35 = v92;
      v39 = v101;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

char *sub_20B5FE094(uint64_t a1)
{
  v99 = a1;
  v2 = sub_20C13BB84();
  v96 = *(v2 - 8);
  v97 = v2;
  MEMORY[0x28223BE20](v2);
  v94 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_20C1341A4();
  v92 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8, &unk_20C170A90);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v82 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v82 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C0, &unk_20C150780);
  MEMORY[0x28223BE20](v98);
  v15 = (&v82 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8, &qword_20C170A30);
  MEMORY[0x28223BE20](v16);
  v89 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0, &unk_20C150790);
  MEMORY[0x28223BE20](v86);
  v22 = &v82 - v21;
  v23 = *(*v1 + 104);
  swift_beginAccess();
  v87 = v23;
  sub_20B52F9E8(v1 + v23, v20, &qword_27C7627C8, &qword_20C170A30);
  v88 = v16;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v54 = &qword_27C7627C8;
    v55 = &qword_20C170A30;
    v56 = v20;
    return sub_20B520158(v56, v54, v55);
  }

  sub_20B5DF134(v20, v22, &qword_27C7627D0, &unk_20C150790);
  v24 = *(*v1 + 112);
  v83 = v1;
  v25 = *(v1 + v24);
  v84 = v22;
  sub_20B6011E0(v25, v15);
  v95 = v15;
  v26 = *v15;
  MEMORY[0x28223BE20](v27);
  *(&v82 - 2) = v95;

  v28 = MEMORY[0x277D50618];
  sub_20B5F85A4(sub_20B606A38, (&v82 - 4), v26, MEMORY[0x277D50618], sub_20BB5D57C);
  v30 = v29;
  MEMORY[0x28223BE20](v29);
  v91 = v13;
  *(&v82 - 2) = v95;

  v31 = v91;
  sub_20B5F85A4(sub_20B606A74, (&v82 - 4), v26, v28, sub_20BB5D57C);
  v33 = v32;
  v34 = v95;
  sub_20B52F9E8(v95 + *(v98 + 44), v31, &qword_27C7627B8, &unk_20C170A90);
  if (v99 < 0 || *(v30 + 16) <= v99)
  {

    v57 = v94;
    sub_20C13B534();
    v58 = sub_20C13BB74();
    v59 = sub_20C13D1D4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_20B517000, v58, v59, "[WorkoutPlanFilterOptionCoordinator] item selected out of range", v60, 2u);
      MEMORY[0x20F2F6A40](v60, -1, -1);
    }

    (*(v96 + 8))(v57, v97);
    goto LABEL_15;
  }

  v94 = 0;
  v35 = v92;
  v36 = *(v92 + 16);
  v37 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v97 = *(v92 + 72);
  v98 = v36;
  v38 = v30 + v37 + v97 * v99;
  v39 = v101;
  v99 = v92 + 16;
  v36(v93, v38, v101);

  v40 = *(v33 + 16);
  if (!v40)
  {

    v43 = MEMORY[0x277D84F90];
LABEL_19:
    v62 = v93;
    v102[0] = sub_20C1362C4();
    v102[1] = v63;
    MEMORY[0x28223BE20](v102[0]);
    *(&v82 - 2) = v102;
    v64 = sub_20B79692C(sub_20B606CAC, (&v82 - 4), v43);

    if (v64)
    {
      v65 = sub_20C1362C4();
      v67 = v66;
      v68 = v85;
      sub_20B52F9E8(v31, v85, &qword_27C7627B8, &unk_20C170A90);
      if ((*(v35 + 48))(v68, 1, v39) == 1)
      {
        sub_20B520158(v68, &qword_27C7627B8, &unk_20C170A90);

        v69 = v83;
LABEL_22:
        v70 = v90;
        (v98)(v90, v62, v39);
        v71 = 0;
LABEL_30:
        v76 = v89;
        (*(v35 + 56))(v70, v71, 1, v39);
        v77 = v84;
        sub_20B606B6C(v70, &v84[*(v86 + 48)], &qword_27C7627B8, &unk_20C170A90);
        sub_20B52F9E8(v77, v76, &qword_27C7627D0, &unk_20C150790);
        swift_storeEnumTagMultiPayload();
        v78 = v87;
        swift_beginAccess();
        sub_20B5DF2D4(v76, v69 + v78, &qword_27C7627C8, &qword_20C170A30);
        swift_endAccess();
        sub_20B602EB4();
        v79 = v83;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v80 = *(v79 + 24);
          ObjectType = swift_getObjectType();
          (*(v80 + 48))(v79, v62, ObjectType, v80);
          swift_unknownObjectRelease();
        }

        sub_20B520158(v70, &qword_27C7627B8, &unk_20C170A90);
        (*(v35 + 8))(v62, v39);
        v61 = v31;
        goto LABEL_16;
      }

      v72 = sub_20C1362C4();
      v74 = v73;
      (*(v35 + 8))(v68, v39);
      if (v65 == v72 && v67 == v74)
      {

        v71 = 1;
        v69 = v83;
      }

      else
      {
        v75 = sub_20C13DFF4();

        v69 = v83;
        if ((v75 & 1) == 0)
        {
          goto LABEL_22;
        }

        v71 = 1;
      }

      v70 = v90;
      goto LABEL_30;
    }

    (*(v35 + 8))(v62, v39);
LABEL_15:
    v61 = v31;
LABEL_16:
    sub_20B520158(v61, &qword_27C7627B8, &unk_20C170A90);
    sub_20B520158(v34, &qword_27C7627C0, &unk_20C150780);
    v54 = &qword_27C7627D0;
    v55 = &unk_20C150790;
    v56 = v84;
    return sub_20B520158(v56, v54, v55);
  }

  v102[0] = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v40, 0);
  v42 = 0;
  v43 = v102[0];
  v44 = v33 + v37;
  v96 = v35 + 8;
  while (v42 < *(v33 + 16))
  {
    v45 = v40;
    v46 = v100;
    v47 = v101;
    (v98)(v100, v44, v101);
    v48 = sub_20C1362C4();
    v50 = v49;
    result = (*v96)(v46, v47);
    v102[0] = v43;
    v52 = *(v43 + 16);
    v51 = *(v43 + 24);
    if (v52 >= v51 >> 1)
    {
      result = sub_20B526D44((v51 > 1), v52 + 1, 1);
      v43 = v102[0];
    }

    ++v42;
    *(v43 + 16) = v52 + 1;
    v53 = v43 + 16 * v52;
    *(v53 + 32) = v48;
    *(v53 + 40) = v50;
    v44 += v97;
    v40 = v45;
    if (v45 == v42)
    {

      v34 = v95;
      v31 = v91;
      v35 = v92;
      v39 = v101;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

char *sub_20B5FEB90(uint64_t a1)
{
  v99 = a1;
  v2 = sub_20C13BB84();
  v96 = *(v2 - 8);
  v97 = v2;
  MEMORY[0x28223BE20](v2);
  v94 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_20C1382B4();
  v92 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8, &unk_20C1643F0);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v82 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v82 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F0, &qword_20C1507B0);
  MEMORY[0x28223BE20](v98);
  v15 = (&v82 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F8, &qword_20C1507B8);
  MEMORY[0x28223BE20](v16);
  v89 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762800, &qword_20C1507C0);
  MEMORY[0x28223BE20](v86);
  v22 = &v82 - v21;
  v23 = *(*v1 + 104);
  swift_beginAccess();
  v87 = v23;
  sub_20B52F9E8(v1 + v23, v20, &qword_27C7627F8, &qword_20C1507B8);
  v88 = v16;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v54 = &qword_27C7627F8;
    v55 = &qword_20C1507B8;
    v56 = v20;
    return sub_20B520158(v56, v54, v55);
  }

  sub_20B5DF134(v20, v22, &qword_27C762800, &qword_20C1507C0);
  v24 = *(*v1 + 112);
  v83 = v1;
  v25 = *(v1 + v24);
  v84 = v22;
  sub_20B6017C4(v25, v15);
  v95 = v15;
  v26 = *v15;
  MEMORY[0x28223BE20](v27);
  *(&v82 - 2) = v95;

  v28 = MEMORY[0x277D53E88];
  sub_20B5F85A4(sub_20B606AF4, (&v82 - 4), v26, MEMORY[0x277D53E88], sub_20BB5D68C);
  v30 = v29;
  MEMORY[0x28223BE20](v29);
  v91 = v13;
  *(&v82 - 2) = v95;

  v31 = v91;
  sub_20B5F85A4(sub_20B606B30, (&v82 - 4), v26, v28, sub_20BB5D68C);
  v33 = v32;
  v34 = v95;
  sub_20B52F9E8(v95 + *(v98 + 44), v31, &qword_27C7627E8, &unk_20C1643F0);
  if (v99 < 0 || *(v30 + 16) <= v99)
  {

    v57 = v94;
    sub_20C13B534();
    v58 = sub_20C13BB74();
    v59 = sub_20C13D1D4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_20B517000, v58, v59, "[WorkoutPlanFilterOptionCoordinator] item selected out of range", v60, 2u);
      MEMORY[0x20F2F6A40](v60, -1, -1);
    }

    (*(v96 + 8))(v57, v97);
    goto LABEL_15;
  }

  v94 = 0;
  v35 = v92;
  v36 = *(v92 + 16);
  v37 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v97 = *(v92 + 72);
  v98 = v36;
  v38 = v30 + v37 + v97 * v99;
  v39 = v101;
  v99 = v92 + 16;
  v36(v93, v38, v101);

  v40 = *(v33 + 16);
  if (!v40)
  {

    v43 = MEMORY[0x277D84F90];
LABEL_19:
    v62 = v93;
    v102[0] = sub_20C1362C4();
    v102[1] = v63;
    MEMORY[0x28223BE20](v102[0]);
    *(&v82 - 2) = v102;
    v64 = sub_20B79692C(sub_20B606CAC, (&v82 - 4), v43);

    if (v64)
    {
      v65 = sub_20C1362C4();
      v67 = v66;
      v68 = v85;
      sub_20B52F9E8(v31, v85, &qword_27C7627E8, &unk_20C1643F0);
      if ((*(v35 + 48))(v68, 1, v39) == 1)
      {
        sub_20B520158(v68, &qword_27C7627E8, &unk_20C1643F0);

        v69 = v83;
LABEL_22:
        v70 = v90;
        (v98)(v90, v62, v39);
        v71 = 0;
LABEL_30:
        v76 = v89;
        (*(v35 + 56))(v70, v71, 1, v39);
        v77 = v84;
        sub_20B606B6C(v70, &v84[*(v86 + 48)], &qword_27C7627E8, &unk_20C1643F0);
        sub_20B52F9E8(v77, v76, &qword_27C762800, &qword_20C1507C0);
        swift_storeEnumTagMultiPayload();
        v78 = v87;
        swift_beginAccess();
        sub_20B5DF2D4(v76, v69 + v78, &qword_27C7627F8, &qword_20C1507B8);
        swift_endAccess();
        sub_20B6034D0();
        v79 = v83;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v80 = *(v79 + 24);
          ObjectType = swift_getObjectType();
          (*(v80 + 48))(v79, v62, ObjectType, v80);
          swift_unknownObjectRelease();
        }

        sub_20B520158(v70, &qword_27C7627E8, &unk_20C1643F0);
        (*(v35 + 8))(v62, v39);
        v61 = v31;
        goto LABEL_16;
      }

      v72 = sub_20C1362C4();
      v74 = v73;
      (*(v35 + 8))(v68, v39);
      if (v65 == v72 && v67 == v74)
      {

        v71 = 1;
        v69 = v83;
      }

      else
      {
        v75 = sub_20C13DFF4();

        v69 = v83;
        if ((v75 & 1) == 0)
        {
          goto LABEL_22;
        }

        v71 = 1;
      }

      v70 = v90;
      goto LABEL_30;
    }

    (*(v35 + 8))(v62, v39);
LABEL_15:
    v61 = v31;
LABEL_16:
    sub_20B520158(v61, &qword_27C7627E8, &unk_20C1643F0);
    sub_20B520158(v34, &qword_27C7627F0, &qword_20C1507B0);
    v54 = &qword_27C762800;
    v55 = &qword_20C1507C0;
    v56 = v84;
    return sub_20B520158(v56, v54, v55);
  }

  v102[0] = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v40, 0);
  v42 = 0;
  v43 = v102[0];
  v44 = v33 + v37;
  v96 = v35 + 8;
  while (v42 < *(v33 + 16))
  {
    v45 = v40;
    v46 = v100;
    v47 = v101;
    (v98)(v100, v44, v101);
    v48 = sub_20C1362C4();
    v50 = v49;
    result = (*v96)(v46, v47);
    v102[0] = v43;
    v52 = *(v43 + 16);
    v51 = *(v43 + 24);
    if (v52 >= v51 >> 1)
    {
      result = sub_20B526D44((v51 > 1), v52 + 1, 1);
      v43 = v102[0];
    }

    ++v42;
    *(v43 + 16) = v52 + 1;
    v53 = v43 + 16 * v52;
    *(v53 + 32) = v48;
    *(v53 + 40) = v50;
    v44 += v97;
    v40 = v45;
    if (v45 == v42)
    {

      v34 = v95;
      v31 = v91;
      v35 = v92;
      v39 = v101;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

char *sub_20B5FF68C(uint64_t a1)
{
  v99 = a1;
  v2 = sub_20C13BB84();
  v96 = *(v2 - 8);
  v97 = v2;
  MEMORY[0x28223BE20](v2);
  v94 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_20C1334D4();
  v92 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758, &unk_20C176700);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v82 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v82 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762760, &unk_20C150720);
  MEMORY[0x28223BE20](v98);
  v15 = (&v82 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762768, &unk_20C152BD0);
  MEMORY[0x28223BE20](v16);
  v89 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762770, &qword_20C150730);
  MEMORY[0x28223BE20](v86);
  v22 = &v82 - v21;
  v23 = *(*v1 + 104);
  swift_beginAccess();
  v87 = v23;
  sub_20B52F9E8(v1 + v23, v20, &qword_27C762768, &unk_20C152BD0);
  v88 = v16;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v54 = &qword_27C762768;
    v55 = &unk_20C152BD0;
    v56 = v20;
    return sub_20B520158(v56, v54, v55);
  }

  sub_20B5DF134(v20, v22, &qword_27C762770, &qword_20C150730);
  v24 = *(*v1 + 112);
  v83 = v1;
  v25 = *(v1 + v24);
  v84 = v22;
  sub_20B601DA8(v25, v15);
  v95 = v15;
  v26 = *v15;
  MEMORY[0x28223BE20](v27);
  *(&v82 - 2) = v95;

  v28 = MEMORY[0x277D4FF18];
  sub_20B5F85A4(sub_20B6067DC, (&v82 - 4), v26, MEMORY[0x277D4FF18], sub_20BB5D714);
  v30 = v29;
  MEMORY[0x28223BE20](v29);
  v91 = v13;
  *(&v82 - 2) = v95;

  v31 = v91;
  sub_20B5F85A4(sub_20B606818, (&v82 - 4), v26, v28, sub_20BB5D714);
  v33 = v32;
  v34 = v95;
  sub_20B52F9E8(v95 + *(v98 + 44), v31, &qword_27C762758, &unk_20C176700);
  if (v99 < 0 || *(v30 + 16) <= v99)
  {

    v57 = v94;
    sub_20C13B534();
    v58 = sub_20C13BB74();
    v59 = sub_20C13D1D4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_20B517000, v58, v59, "[WorkoutPlanFilterOptionCoordinator] item selected out of range", v60, 2u);
      MEMORY[0x20F2F6A40](v60, -1, -1);
    }

    (*(v96 + 8))(v57, v97);
    goto LABEL_15;
  }

  v94 = 0;
  v35 = v92;
  v36 = *(v92 + 16);
  v37 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v97 = *(v92 + 72);
  v98 = v36;
  v38 = v30 + v37 + v97 * v99;
  v39 = v101;
  v99 = v92 + 16;
  v36(v93, v38, v101);

  v40 = *(v33 + 16);
  if (!v40)
  {

    v43 = MEMORY[0x277D84F90];
LABEL_19:
    v62 = v93;
    v102[0] = sub_20C1362C4();
    v102[1] = v63;
    MEMORY[0x28223BE20](v102[0]);
    *(&v82 - 2) = v102;
    v64 = sub_20B79692C(sub_20B606CAC, (&v82 - 4), v43);

    if (v64)
    {
      v65 = sub_20C1362C4();
      v67 = v66;
      v68 = v85;
      sub_20B52F9E8(v31, v85, &qword_27C762758, &unk_20C176700);
      if ((*(v35 + 48))(v68, 1, v39) == 1)
      {
        sub_20B520158(v68, &qword_27C762758, &unk_20C176700);

        v69 = v83;
LABEL_22:
        v70 = v90;
        (v98)(v90, v62, v39);
        v71 = 0;
LABEL_30:
        v76 = v89;
        (*(v35 + 56))(v70, v71, 1, v39);
        v77 = v84;
        sub_20B606B6C(v70, &v84[*(v86 + 48)], &qword_27C762758, &unk_20C176700);
        sub_20B52F9E8(v77, v76, &qword_27C762770, &qword_20C150730);
        swift_storeEnumTagMultiPayload();
        v78 = v87;
        swift_beginAccess();
        sub_20B5DF2D4(v76, v69 + v78, &qword_27C762768, &unk_20C152BD0);
        swift_endAccess();
        sub_20B603AEC();
        v79 = v83;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v80 = *(v79 + 24);
          ObjectType = swift_getObjectType();
          (*(v80 + 48))(v79, v62, ObjectType, v80);
          swift_unknownObjectRelease();
        }

        sub_20B520158(v70, &qword_27C762758, &unk_20C176700);
        (*(v35 + 8))(v62, v39);
        v61 = v31;
        goto LABEL_16;
      }

      v72 = sub_20C1362C4();
      v74 = v73;
      (*(v35 + 8))(v68, v39);
      if (v65 == v72 && v67 == v74)
      {

        v71 = 1;
        v69 = v83;
      }

      else
      {
        v75 = sub_20C13DFF4();

        v69 = v83;
        if ((v75 & 1) == 0)
        {
          goto LABEL_22;
        }

        v71 = 1;
      }

      v70 = v90;
      goto LABEL_30;
    }

    (*(v35 + 8))(v62, v39);
LABEL_15:
    v61 = v31;
LABEL_16:
    sub_20B520158(v61, &qword_27C762758, &unk_20C176700);
    sub_20B520158(v34, &qword_27C762760, &unk_20C150720);
    v54 = &qword_27C762770;
    v55 = &qword_20C150730;
    v56 = v84;
    return sub_20B520158(v56, v54, v55);
  }

  v102[0] = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v40, 0);
  v42 = 0;
  v43 = v102[0];
  v44 = v33 + v37;
  v96 = v35 + 8;
  while (v42 < *(v33 + 16))
  {
    v45 = v40;
    v46 = v100;
    v47 = v101;
    (v98)(v100, v44, v101);
    v48 = sub_20C1362C4();
    v50 = v49;
    result = (*v96)(v46, v47);
    v102[0] = v43;
    v52 = *(v43 + 16);
    v51 = *(v43 + 24);
    if (v52 >= v51 >> 1)
    {
      result = sub_20B526D44((v51 > 1), v52 + 1, 1);
      v43 = v102[0];
    }

    ++v42;
    *(v43 + 16) = v52 + 1;
    v53 = v43 + 16 * v52;
    *(v53 + 32) = v48;
    *(v53 + 40) = v50;
    v44 += v97;
    v40 = v45;
    if (v45 == v42)
    {

      v34 = v95;
      v31 = v91;
      v35 = v92;
      v39 = v101;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B600188(uint64_t a1)
{
  v90 = a1;
  v2 = sub_20C13BB84();
  v87 = *(v2 - 8);
  v88 = v2;
  MEMORY[0x28223BE20](v2);
  v92 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for WorkoutPlanCatalogThemePickerOption(0);
  v86 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762788, &qword_20C150748);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v77 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762790, &unk_20C150750);
  MEMORY[0x28223BE20](v89);
  v15 = (&v77 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762798, &unk_20C15A000);
  MEMORY[0x28223BE20](v16);
  v83 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A0, &qword_20C150760);
  MEMORY[0x28223BE20](v80);
  v22 = &v77 - v21;
  v23 = *(*v1 + 104);
  swift_beginAccess();
  v81 = v23;
  sub_20B52F9E8(v1 + v23, v20, &qword_27C762798, &unk_20C15A000);
  v82 = v16;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v49 = &qword_27C762798;
    v50 = &unk_20C15A000;
    v51 = v20;
    return sub_20B520158(v51, v49, v50);
  }

  sub_20B5DF134(v20, v22, &qword_27C7627A0, &qword_20C150760);
  v24 = *(*v1 + 112);
  v77 = v1;
  v25 = *(v1 + v24);
  v78 = v22;
  sub_20B60238C(v25, v15);
  v91 = v15;
  v26 = *v15;
  MEMORY[0x28223BE20](v27);
  *(&v77 - 2) = v91;

  sub_20B5F88B8(sub_20B606898, (&v77 - 4), v26);
  v29 = v28;
  MEMORY[0x28223BE20](v28);
  *(&v77 - 2) = v91;

  sub_20B5F88B8(sub_20B6068B8, (&v77 - 4), v26);
  v31 = v30;
  sub_20B52F9E8(v91 + *(v89 + 11), v13, &qword_27C762788, &qword_20C150748);
  if (v90 < 0)
  {

    v32 = v92;
LABEL_14:
    sub_20C13B534();
    v52 = sub_20C13BB74();
    v53 = sub_20C13D1D4();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v78;
    if (v54)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_20B517000, v52, v53, "[WorkoutPlanFilterOptionCoordinator] item selected out of range", v56, 2u);
      MEMORY[0x20F2F6A40](v56, -1, -1);
    }

    (*(v87 + 8))(v32, v88);
    v57 = v13;
    goto LABEL_17;
  }

  v32 = v92;
  if (*(v29 + 16) <= v90)
  {

    goto LABEL_14;
  }

  v89 = v13;
  v33 = v85;
  v34 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v92 = *(v86 + 72);
  sub_20B6068D8(v29 + v34 + v92 * v90, v85);

  v35 = *(v31 + 16);
  if (!v35)
  {

    v38 = MEMORY[0x277D84F90];
    v48 = v94;
LABEL_20:
    v95[0] = sub_20C133A34();
    v95[1] = v58;
    MEMORY[0x28223BE20](v95[0]);
    *(&v77 - 2) = v95;
    v59 = sub_20B79692C(sub_20B606CAC, (&v77 - 4), v38);

    if ((v59 & 1) == 0)
    {
      sub_20B60693C(v33);
      sub_20B520158(v89, &qword_27C762788, &qword_20C150748);
      sub_20B520158(v91, &qword_27C762790, &unk_20C150750);
      v49 = &qword_27C7627A0;
      v50 = &qword_20C150760;
      v51 = v78;
      return sub_20B520158(v51, v49, v50);
    }

    v60 = sub_20C133A34();
    v62 = v61;
    v63 = v89;
    v64 = v79;
    sub_20B52F9E8(v89, v79, &qword_27C762788, &qword_20C150748);
    if ((*(v86 + 48))(v64, 1, v48) == 1)
    {
      sub_20B520158(v64, &qword_27C762788, &qword_20C150748);

      v65 = v77;
      v66 = v84;
    }

    else
    {
      v68 = sub_20C133A34();
      v70 = v69;
      sub_20B60693C(v64);
      v66 = v84;
      if (v60 == v68 && v62 == v70)
      {

        v67 = 1;
        v65 = v77;
        goto LABEL_30;
      }

      v71 = sub_20C13DFF4();

      v65 = v77;
      if (v71)
      {
        v67 = 1;
        goto LABEL_30;
      }
    }

    sub_20B6068D8(v33, v66);
    v67 = 0;
LABEL_30:
    v55 = v78;
    v72 = v83;
    (*(v86 + 56))(v66, v67, 1, v48);
    sub_20B606B6C(v66, v55 + *(v80 + 48), &qword_27C762788, &qword_20C150748);
    sub_20B52F9E8(v55, v72, &qword_27C7627A0, &qword_20C150760);
    swift_storeEnumTagMultiPayload();
    v73 = v81;
    swift_beginAccess();
    sub_20B5DF2D4(v72, v65 + v73, &qword_27C762798, &unk_20C15A000);
    swift_endAccess();
    sub_20B604108();
    v74 = v77;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v75 = *(v74 + 24);
      ObjectType = swift_getObjectType();
      (*(v75 + 48))(v74, v33, ObjectType, v75);
      swift_unknownObjectRelease();
    }

    sub_20B520158(v66, &qword_27C762788, &qword_20C150748);
    sub_20B60693C(v33);
    v57 = v63;
LABEL_17:
    sub_20B520158(v57, &qword_27C762788, &qword_20C150748);
    sub_20B520158(v91, &qword_27C762790, &unk_20C150750);
    v49 = &qword_27C7627A0;
    v50 = &qword_20C150760;
    v51 = v55;
    return sub_20B520158(v51, v49, v50);
  }

  v90 = 0;
  v95[0] = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v35, 0);
  v37 = 0;
  v38 = v95[0];
  v39 = v31 + v34;
  while (v37 < *(v31 + 16))
  {
    v40 = v31;
    v41 = v93;
    sub_20B6068D8(v39, v93);
    v42 = sub_20C133A34();
    v44 = v43;
    result = sub_20B60693C(v41);
    v95[0] = v38;
    v46 = *(v38 + 16);
    v45 = *(v38 + 24);
    if (v46 >= v45 >> 1)
    {
      result = sub_20B526D44((v45 > 1), v46 + 1, 1);
      v38 = v95[0];
    }

    ++v37;
    *(v38 + 16) = v46 + 1;
    v47 = v38 + 16 * v46;
    *(v47 + 32) = v42;
    *(v47 + 40) = v44;
    v39 += v92;
    v48 = v94;
    v31 = v40;
    if (v35 == v37)
    {

      v33 = v85;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_20B600BFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710, &qword_20C176710);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = sub_20C138244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v46 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762728, &unk_20C1506B0);
  v15 = *(v3 + v52[9]);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  v57 = v11;
  if (!v16)
  {
LABEL_8:
    v28 = sub_20B527580(v17);

    if (v49)
    {
      v30 = v51;
      v29 = v52;
    }

    else
    {
      v29 = v52;
      v28 = sub_20B604F74(*(v3 + v52[10]), v28, sub_20B605F68, sub_20B605F68);
      v30 = v51;
    }

    v31 = v50;
    sub_20B52F9E8(v3 + v29[12], v50, &qword_27C762710, &qword_20C176710);
    if ((*(v11 + 48))(v31, 1, v10) == 1)
    {
      sub_20B520158(v31, &qword_27C762710, &qword_20C176710);
    }

    else
    {
      (*(v11 + 32))(v30, v31, v10);
      v32 = v11;
      v33 = sub_20C1362C4();
      v35 = sub_20B8D7150(v33, v34, v28);

      if (v35)
      {
        v36 = *(v3 + v52[11]);
        v37 = sub_20C1362C4();
        LOBYTE(v36) = sub_20B8D7150(v37, v38, v36);

        if (v36)
        {
          v39 = v57;
          (*(v57 + 16))(v9, v30, v10);
          (*(v39 + 56))(v9, 0, 1, v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0, &qword_20C14FCC0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20C14F980;
          *(inited + 32) = sub_20C1362C4();
          *(inited + 40) = v41;
          v42 = sub_20BE8C2E8(inited);
          swift_setDeallocating();
          sub_20B5D9804(inited + 32);
          (*(v39 + 8))(v30, v10);
          v43 = v42;
LABEL_20:
          *a2 = v15;
          a2[1] = v28;
          a2[2] = v43;
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762718, &unk_20C1506A0);
          sub_20B5DF134(v9, a2 + *(v45 + 44), &qword_27C762710, &qword_20C176710);

          return;
        }

        v11 = v57;
        (*(v57 + 8))(v30, v10);
      }

      else
      {
        (*(v32 + 8))(v30, v10);
        v11 = v32;
      }

      v29 = v52;
    }

    (*(v11 + 56))(v9, 1, 1, v10);
    v44 = *(v3 + v29[11]);

    v43 = sub_20B604F74(v44, v28, sub_20B605F68, sub_20B605F68);
    goto LABEL_20;
  }

  v46 = v3;
  v47 = v9;
  v48 = a2;
  v58 = MEMORY[0x277D84F90];
  sub_20B526D44(0, v16, 0);
  v11 = v57;
  v18 = 0;
  v17 = v58;
  v55 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v53 = v57 + 8;
  v54 = v57 + 16;
  while (v18 < *(v15 + 16))
  {
    v19 = v15;
    v20 = v56;
    (*(v11 + 16))(v56, v55 + *(v11 + 72) * v18, v10);
    v21 = sub_20C1362C4();
    v11 = v57;
    v22 = v21;
    v24 = v23;
    (*(v57 + 8))(v20, v10);
    v58 = v17;
    v26 = *(v17 + 16);
    v25 = *(v17 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_20B526D44((v25 > 1), v26 + 1, 1);
      v11 = v57;
      v17 = v58;
    }

    ++v18;
    *(v17 + 16) = v26 + 1;
    v27 = v17 + 16 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
    v15 = v19;
    if (v16 == v18)
    {
      v9 = v47;
      a2 = v48;
      v3 = v46;
      goto LABEL_8;
    }
  }

  __break(1u);
}