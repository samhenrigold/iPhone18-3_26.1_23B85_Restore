void sub_29E11759C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_29E2C1494() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + 1;
  v15 = v9 + 1 + v12;
  v16 = (v15 & ~v12) + *(v10 + 64);
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
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

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v11 > 0xFE)
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v12, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v14 <= 3)
    {
      v24 = ~(-1 << (8 * v14));
    }

    else
    {
      v24 = -1;
    }

    if (v9 != -1)
    {
      v25 = v24 & (a2 - 255);
      if (v14 <= 3)
      {
        v26 = v9 + 1;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v14);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_29E117918(uint64_t a1)
{
  if (!qword_2A181D3C8)
  {
    sub_29E2C1794();
    sub_29E1179FC(&qword_2A181D3D0, MEMORY[0x29EDBC5C0], MEMORY[0x29EDBC5B8]);
    v1 = sub_29E2C1514();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D3C8);
    }
  }
}

uint64_t sub_29E1179B8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E117AC4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E1179FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E117A44(uint64_t a1, uint64_t a2)
{
  sub_29E1172A0(0, &unk_2A181A6A0, MEMORY[0x29EDBC388]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E117AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E117B24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_29E117B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40StatisticsViewAllThreeLabelTableViewCell_descriptionLabel;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40StatisticsViewAllThreeLabelTableViewCell_valueLabel;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40StatisticsViewAllThreeLabelTableViewCell_captionLabel;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  if (a3)
  {
    v9 = sub_29E2C33A4();
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for StatisticsViewAllThreeLabelTableViewCell();
  v10 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, a1, v9);

  v11 = v10;
  sub_29E117D20();

  return v11;
}

void sub_29E117D20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BE814();
  v98 = *(v2 - 8);
  v99 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v97 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40StatisticsViewAllThreeLabelTableViewCell_descriptionLabel];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle_];
  [v4 setFont_];

  v7 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40StatisticsViewAllThreeLabelTableViewCell_valueLabel];
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v8 = sub_29E2C3FD4();
  [v7 setFont_];

  v9 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40StatisticsViewAllThreeLabelTableViewCell_captionLabel];
  v10 = [v5 preferredFontForTextStyle_];
  [v9 setFont_];

  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  [v4 setTextColor_];

  [v4 setNumberOfLines_];
  [v4 setLineBreakMode_];
  v13 = [v11 labelColor];
  [v7 setTextColor_];

  [v7 setNumberOfLines_];
  v14 = [v11 secondaryLabelColor];
  [v9 setTextColor_];

  [v9 setNumberOfLines_];
  v103 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v102 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v100 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [v1 contentView];
  [v15 addSubview_];

  v16 = [v1 &selRef_systemFontOfSize_weight_];
  [v16 addSubview_];

  v17 = [v1 &selRef_systemFontOfSize_weight_];
  [v17 addSubview_];

  v18 = [v1 &selRef_systemFontOfSize_weight_];
  v19 = v97;
  sub_29E2BE804();
  sub_29E2BE7A4();
  v20 = v99;
  v21 = v98[1];
  v21(v19, v99);
  [v18 directionalLayoutMargins];
  [v18 setDirectionalLayoutMargins_];

  v22 = [v1 &selRef_systemFontOfSize_weight_];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v21(v19, v20);
  [v22 directionalLayoutMargins];
  [v22 setDirectionalLayoutMargins_];

  sub_29DE99B54();
  v97 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E2CD3B0;
  v25 = v103;
  v26 = [v103 leadingAnchor];
  v27 = [v1 contentView];
  v28 = [v27 leadingAnchor];

  v29 = v1;
  v30 = [v1 contentView];
  [v30 &selRef_initWithClientIdentifier_healthStore_];
  v32 = v31;

  v33 = [v26 constraintEqualToAnchor:v28 constant:v32];
  *(v24 + 32) = v33;
  v34 = [v25 topAnchor];
  v35 = [v1 contentView];
  v36 = [v35 &selRef_hkmc_menstruationColor];

  v37 = [v34 &selRef:v36 setLineFragmentPadding:20.0 + 6];
  *(v24 + 40) = v37;
  v38 = objc_opt_self();
  v99 = sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v39 = sub_29E2C3604();

  v98 = v38;
  [v38 activateConstraints_];

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_29E2CDBD0;
  v41 = [v29 contentView];
  v42 = [v41 trailingAnchor];

  v43 = v102;
  v44 = [v102 &selRef_bounds + 4];
  v45 = [v29 contentView];
  [v45 directionalLayoutMargins];
  v47 = v46;

  v48 = [v42 constraintEqualToAnchor:v44 constant:v47];
  *(v40 + 32) = v48;
  v49 = [v43 topAnchor];
  v50 = [v29 &selRef_systemFontOfSize_weight_];
  v51 = [v50 topAnchor];

  v52 = [v49 constraintEqualToAnchor:v51 constant:20.0];
  *(v40 + 40) = v52;
  v53 = [v29 &selRef_systemFontOfSize_weight_];
  v54 = [v53 bottomAnchor];

  v55 = [v43 bottomAnchor];
  v56 = [v54 constraintGreaterThanOrEqualToAnchor:v55 constant:15.5];

  *(v40 + 48) = v56;
  v57 = sub_29E2C3604();

  [v38 activateConstraints_];

  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_29E2CE070;
  v59 = v100;
  v60 = [v100 leadingAnchor];
  v61 = [v29 &selRef_systemFontOfSize_weight_];
  v62 = [v61 leadingAnchor];

  v63 = [v29 &selRef_systemFontOfSize_weight_];
  [v63 directionalLayoutMargins];
  v65 = v64;

  v66 = [v60 constraintEqualToAnchor:v62 constant:v65];
  *(v58 + 32) = v66;
  v67 = v59;
  v68 = [v59 topAnchor];
  v69 = v103;
  v70 = [v103 bottomAnchor];
  v71 = [v68 constraintEqualToAnchor:v70 constant:2.0];

  *(v58 + 40) = v71;
  v72 = [v29 &selRef_systemFontOfSize_weight_];
  v73 = [v72 bottomAnchor];

  v74 = [v67 bottomAnchor];
  v75 = [v73 constraintGreaterThanOrEqualToAnchor:v74 constant:15.5];

  *(v58 + 48) = v75;
  v76 = v102;
  v77 = [v102 leadingAnchor];
  v78 = [v67 trailingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78 constant:8.0];

  *(v58 + 56) = v79;
  v80 = sub_29E2C3604();

  [v98 activateConstraints_];

  v81 = [v76 leadingAnchor];
  v82 = [v69 trailingAnchor];
  v83 = [v81 constraintGreaterThanOrEqualToAnchor:v82 constant:8.0];

  LODWORD(v84) = 1148846080;
  [v83 setPriority_];
  [v83 setActive_];
  v85 = [v69 widthAnchor];
  v86 = [v85 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v87) = 1148846080;
  [v86 setPriority_];
  [v86 setActive_];
  v88 = [v76 widthAnchor];
  v89 = [v88 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v90) = 1148846080;
  [v89 setPriority_];
  [v89 setActive_];
  LODWORD(v91) = 1144750080;
  [v76 setContentHuggingPriority:0 forAxis:v91];
  LODWORD(v92) = 1148846080;
  [v76 setContentCompressionResistancePriority:0 forAxis:v92];
  sub_29DEAC750(0);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_29E2CAB20;
  v94 = sub_29E2C0B54();
  v95 = MEMORY[0x29EDC7870];
  *(v93 + 32) = v94;
  *(v93 + 40) = v95;
  sub_29E2C4034();

  swift_unknownObjectRelease();
}

id sub_29E118A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(id), void (*a8)(void))
{
  if (a4)
  {
    a4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_29E11A56C(a3, a4, v14, a5, a6, a7, a8);
}

void sub_29E118B10()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BE814();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38StatisticsViewAllTwoLabelTableViewCell_descriptionLabel];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v6 setFont_];

  v8 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38StatisticsViewAllTwoLabelTableViewCell_valueLabel];
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v9 = sub_29E2C3FD4();
  [v8 setFont_];

  v10 = objc_opt_self();
  v11 = [v10 labelColor];
  [v6 setTextColor_];

  [v6 setNumberOfLines_];
  [v6 setLineBreakMode_];
  v12 = [v10 labelColor];
  [v8 setTextColor_];

  [v8 setNumberOfLines_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v78 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v1 contentView];
  [v13 addSubview_];

  v14 = [v1 contentView];
  [v14 addSubview_];

  v15 = [v1 contentView];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  [v15 directionalLayoutMargins];
  [v15 setDirectionalLayoutMargins_];

  v17 = [v1 contentView];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v16(v5, v2);
  [v17 directionalLayoutMargins];
  [v17 setDirectionalLayoutMargins_];

  sub_29DE99B54();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E2CE070;
  v19 = [v6 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v1 contentView];
  [v22 directionalLayoutMargins];
  v24 = v23;

  v25 = [v19 constraintEqualToAnchor:v21 constant:v24];
  *(v18 + 32) = v25;
  v26 = [v6 topAnchor];
  v27 = [v1 &selRef_systemFontOfSize_weight_];
  v28 = [v27 &selRef_hkmc_menstruationColor];

  v29 = [v26 &selRef:v28 setLineFragmentPadding:16.0 + 6];
  *(v18 + 40) = v29;
  v30 = [v1 &selRef_systemFontOfSize_weight_];
  v31 = [v30 bottomAnchor];

  v32 = [v6 &selRef_setDuration_ + 5];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:15.5];

  *(v18 + 48) = v33;
  v34 = [v6 trailingAnchor];
  v35 = [v1 &selRef_systemFontOfSize_weight_];
  v36 = [v35 &selRef_bounds + 4];

  v37 = [v1 &selRef_systemFontOfSize_weight_];
  [v37 directionalLayoutMargins];
  v39 = v38;

  v40 = [v34 constraintLessThanOrEqualToAnchor:v36 constant:v39];
  *(v18 + 56) = v40;
  v41 = objc_opt_self();
  v77 = v41;
  sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v42 = sub_29E2C3604();

  [v41 activateConstraints_];

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29E2CDBD0;
  v44 = [v1 &selRef_systemFontOfSize_weight_];
  v45 = [v44 &selRef_bounds + 4];

  v46 = v78;
  v47 = [v78 &selRef_bounds + 4];
  v48 = [v1 &selRef_systemFontOfSize_weight_];
  [v48 directionalLayoutMargins];
  v50 = v49;

  v51 = [v45 constraintEqualToAnchor:v47 constant:v50];
  *(v43 + 32) = v51;
  v52 = [v46 topAnchor];
  v53 = [v1 &selRef_systemFontOfSize_weight_];
  v54 = [v53 topAnchor];

  v55 = [v52 constraintEqualToAnchor:v54 constant:16.0];
  *(v43 + 40) = v55;
  v56 = [v1 &selRef_systemFontOfSize_weight_];
  v57 = [v56 bottomAnchor];

  v58 = [v46 bottomAnchor];
  v59 = [v57 constraintGreaterThanOrEqualToAnchor:v58 constant:15.5];

  *(v43 + 48) = v59;
  v60 = sub_29E2C3604();

  [v77 activateConstraints_];

  v61 = [v46 leadingAnchor];
  v62 = [v6 trailingAnchor];
  v63 = [v61 constraintGreaterThanOrEqualToAnchor:v62 constant:8.0];

  LODWORD(v64) = 1148846080;
  [v63 setPriority_];
  [v63 setActive_];
  v65 = [v6 widthAnchor];
  v66 = [v65 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v67) = 1148846080;
  [v66 setPriority_];
  [v66 setActive_];
  v68 = [v46 widthAnchor];
  v69 = [v68 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v70) = 1148846080;
  [v69 setPriority_];
  [v69 setActive_];
  LODWORD(v71) = 1144750080;
  [v46 setContentHuggingPriority:0 forAxis:v71];
  LODWORD(v72) = 1148846080;
  [v46 setContentCompressionResistancePriority:0 forAxis:v72];
  sub_29DEAC750(0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_29E2CAB20;
  v74 = sub_29E2C0B54();
  v75 = MEMORY[0x29EDC7870];
  *(v73 + 32) = v74;
  *(v73 + 40) = v75;
  sub_29E2C4034();

  swift_unknownObjectRelease();
}

id sub_29E119620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49StatisticsViewAllLargeTextThreeLabelTableViewCell_descriptionLabel;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49StatisticsViewAllLargeTextThreeLabelTableViewCell_valueLabel;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49StatisticsViewAllLargeTextThreeLabelTableViewCell_captionLabel;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  if (a3)
  {
    v9 = sub_29E2C33A4();
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for StatisticsViewAllLargeTextThreeLabelTableViewCell();
  v10 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, a1, v9);

  v11 = v10;
  sub_29E119914();

  return v11;
}

uint64_t sub_29E11973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

void sub_29E119818(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v13 = *(v9 + *a7);
  v14 = sub_29E2C33A4();
  [v13 setText_];

  v15 = *(v9 + *a8);
  if (a4)
  {
    a4 = sub_29E2C33A4();
  }

  [v15 setText_];

  v16 = *(v9 + *a9);
  if (a6)
  {
    v17 = sub_29E2C33A4();
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  [v16 setText_];
}

void sub_29E119914()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BE814();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49StatisticsViewAllLargeTextThreeLabelTableViewCell_descriptionLabel];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle_];
  [v5 setFont_];

  v8 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49StatisticsViewAllLargeTextThreeLabelTableViewCell_valueLabel];
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v9 = sub_29E2C3FD4();
  [v8 setFont_];

  v10 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49StatisticsViewAllLargeTextThreeLabelTableViewCell_captionLabel];
  v11 = [v6 preferredFontForTextStyle_];
  [v10 setFont_];

  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  [v5 setTextColor_];

  [v5 setNumberOfLines_];
  v14 = [v12 labelColor];
  [v8 setTextColor_];

  [v8 setNumberOfLines_];
  v15 = [v12 secondaryLabelColor];
  [v10 setTextColor_];

  [v10 setNumberOfLines_];
  v99 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v97 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v100 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v1 contentView];
  [v16 addSubview_];

  v17 = [v1 &selRef_systemFontOfSize_weight_];
  [v17 addSubview_];

  v18 = [v1 &selRef_systemFontOfSize_weight_];
  [v18 addSubview_];

  v19 = [v1 &selRef_systemFontOfSize_weight_];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v20 = v96;
  v21 = v95[1];
  v21(v4, v96);
  [v19 directionalLayoutMargins];
  [v19 setDirectionalLayoutMargins_];

  v22 = [v1 &selRef_systemFontOfSize_weight_];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v21(v4, v20);
  [v22 &selRef_initWithClientIdentifier_healthStore_];
  [v22 setDirectionalLayoutMargins_];

  sub_29DE99B54();
  v93[1] = v23;
  v24 = swift_allocObject();
  v94 = xmmword_29E2CDBD0;
  *(v24 + 16) = xmmword_29E2CDBD0;
  v25 = v99;
  v26 = [v99 leadingAnchor];
  v27 = [v1 contentView];
  v28 = [v27 leadingAnchor];

  v29 = [v1 contentView];
  [v29 &selRef_initWithClientIdentifier_healthStore_];
  v31 = v30;

  v32 = [v26 constraintEqualToAnchor:v28 constant:v31];
  *(v24 + 32) = v32;
  v33 = [v25 topAnchor];
  v34 = [v1 contentView];
  v35 = [v34 &selRef_hkmc_menstruationColor];

  v36 = [v33 &selRef:v35 setLineFragmentPadding:20.0 + 6];
  *(v24 + 40) = v36;
  v37 = [v1 contentView];
  v38 = [v37 trailingAnchor];

  v39 = [v25 &selRef_bounds + 4];
  v40 = [v1 &selRef_systemFontOfSize_weight_];
  [v40 directionalLayoutMargins];
  v42 = v41;

  v43 = [v38 &selRef:v39 setLineFragmentPadding:v42 + 6];
  *(v24 + 48) = v43;
  v44 = objc_opt_self();
  v96 = sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v45 = sub_29E2C3604();

  v95 = v44;
  [v44 activateConstraints_];

  v46 = swift_allocObject();
  *(v46 + 16) = v94;
  v47 = v100;
  v48 = [v100 leadingAnchor];
  v49 = [v1 &selRef_systemFontOfSize_weight_];
  v50 = [v49 leadingAnchor];

  v51 = [v1 &selRef_systemFontOfSize_weight_];
  [v51 directionalLayoutMargins];
  v53 = v52;

  v54 = [v48 constraintEqualToAnchor:v50 constant:v53];
  *(v46 + 32) = v54;
  v55 = [v47 topAnchor];
  v56 = [v99 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:16.0];

  *(v46 + 40) = v57;
  v58 = [v1 &selRef_systemFontOfSize_weight_];
  v59 = [v58 trailingAnchor];

  v60 = [v47 trailingAnchor];
  v61 = [v1 &selRef_systemFontOfSize_weight_];
  [v61 directionalLayoutMargins];
  v63 = v62;

  v64 = [v59 &selRef:v60 setLineFragmentPadding:v63 + 6];
  *(v46 + 48) = v64;
  v65 = sub_29E2C3604();

  [v44 activateConstraints_];

  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_29E2CE070;
  v67 = v97;
  v68 = [v97 leadingAnchor];
  v69 = [v1 &selRef_systemFontOfSize_weight_];
  v70 = [v69 leadingAnchor];

  v71 = [v1 &selRef_systemFontOfSize_weight_];
  [v71 directionalLayoutMargins];
  v73 = v72;

  v74 = [v68 constraintEqualToAnchor:v70 constant:v73];
  *(v66 + 32) = v74;
  v75 = [v67 topAnchor];
  v76 = [v100 bottomAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:16.0];

  *(v66 + 40) = v77;
  v78 = [v1 &selRef_systemFontOfSize_weight_];
  v79 = [v78 trailingAnchor];

  v80 = [v67 trailingAnchor];
  v81 = [v1 &selRef_systemFontOfSize_weight_];
  [v81 &selRef_initWithClientIdentifier_healthStore_];
  v83 = v82;

  v84 = [v79 constraintEqualToAnchor:v80 constant:v83];
  *(v66 + 48) = v84;
  v85 = [v1 &selRef_systemFontOfSize_weight_];
  v86 = [v85 bottomAnchor];

  v87 = [v67 bottomAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:15.5];

  *(v66 + 56) = v88;
  v89 = sub_29E2C3604();

  [v95 activateConstraints_];

  sub_29DEAC750(0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_29E2CAB20;
  v91 = sub_29E2C0B54();
  v92 = MEMORY[0x29EDC7870];
  *(v90 + 32) = v91;
  *(v90 + 40) = v92;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29E11A56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(id), void (*a7)(void))
{
  v13 = *a4;
  *&v7[v13] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v14 = *a5;
  v15 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *&v7[v14] = v15;
  if (a3)
  {
    v16 = sub_29E2C33A4();
  }

  else
  {
    v16 = 0;
  }

  v20.receiver = v7;
  v20.super_class = a6(v15);
  v17 = objc_msgSendSuper2(&v20, sel_initWithStyle_reuseIdentifier_, a1, v16);

  v18 = v17;
  a7();

  return v18;
}

void sub_29E11A6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v8 = *a4;
  *(a1 + v8) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v9 = *a5;
  *(a1 + v9) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  sub_29E2C4724();
  __break(1u);
}

void sub_29E11A764()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BE814();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin47StatisticsViewAllLargeTextTwoLabelTableViewCell_descriptionLabel];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v6 setFont_];

  v8 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin47StatisticsViewAllLargeTextTwoLabelTableViewCell_valueLabel];
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v9 = sub_29E2C3FD4();
  [v8 setFont_];

  v10 = objc_opt_self();
  v11 = [v10 labelColor];
  [v6 setTextColor_];

  [v6 setNumberOfLines_];
  v12 = [v10 labelColor];
  [v8 setTextColor_];

  [v8 setNumberOfLines_];
  v68[0] = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v70 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v1 contentView];
  [v13 addSubview_];

  v14 = [v1 &selRef_systemFontOfSize_weight_];
  [v14 addSubview_];

  v15 = [v1 &selRef_systemFontOfSize_weight_];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  [v15 directionalLayoutMargins];
  [v15 setDirectionalLayoutMargins_];

  v17 = [v1 &selRef_systemFontOfSize_weight_];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v16(v5, v2);
  [v17 directionalLayoutMargins];
  [v17 setDirectionalLayoutMargins_];

  sub_29DE99B54();
  v68[1] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29E2CDBD0;
  v20 = v68[0];
  v21 = [v68[0] leadingAnchor];
  v22 = [v1 contentView];
  v23 = [v22 leadingAnchor];

  v24 = [v1 contentView];
  [v24 directionalLayoutMargins];
  v26 = v25;

  v27 = [v21 constraintEqualToAnchor:v23 constant:v26];
  *(v19 + 32) = v27;
  v28 = [v20 topAnchor];
  v29 = [v1 contentView];
  v30 = [v29 &selRef_hkmc_menstruationColor];

  v31 = [v28 constraintEqualToAnchor:v30 constant:16.0];
  *(v19 + 40) = v31;
  v32 = [v1 contentView];
  v33 = [v32 trailingAnchor];

  v34 = [v20 &selRef_bounds + 4];
  v35 = [v1 contentView];
  [v35 &selRef_initWithClientIdentifier_healthStore_];
  v37 = v36;

  v38 = [v33 constraintEqualToAnchor:v34 constant:v37];
  *(v19 + 48) = v38;
  v39 = objc_opt_self();
  v69 = v39;
  v68[2] = sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v40 = sub_29E2C3604();

  [v39 activateConstraints_];

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_29E2CE070;
  v42 = v70;
  v43 = [v70 leadingAnchor];
  v44 = [v1 contentView];
  v45 = [v44 leadingAnchor];

  v46 = [v1 contentView];
  [v46 directionalLayoutMargins];
  v48 = v47;

  v49 = [v43 constraintEqualToAnchor:v45 constant:v48];
  *(v41 + 32) = v49;
  v50 = [v42 topAnchor];
  v51 = [v20 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:16.0];

  *(v41 + 40) = v52;
  v53 = [v1 contentView];
  v54 = [v53 trailingAnchor];

  v55 = [v42 trailingAnchor];
  v56 = [v1 contentView];
  [v56 directionalLayoutMargins];
  v58 = v57;

  v59 = [v54 constraintEqualToAnchor:v55 constant:v58];
  *(v41 + 48) = v59;
  v60 = [v1 contentView];
  v61 = [v60 bottomAnchor];

  v62 = [v42 bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:15.5];

  *(v41 + 56) = v63;
  v64 = sub_29E2C3604();

  [v69 activateConstraints_];

  sub_29DEAC750(0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_29E2CAB20;
  v66 = sub_29E2C0B54();
  v67 = MEMORY[0x29EDC7870];
  *(v65 + 32) = v66;
  *(v65 + 40) = v67;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29E11B038(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29E11B114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v12 = *v10;
  v13 = *(*v10 + *a9);
  v14 = sub_29E2C33A4();
  [v13 setText_];

  v15 = *(v12 + *a10);
  if (a4)
  {
    v16 = sub_29E2C33A4();
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  [v15 setText_];
}

void sub_29E11B280(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a1;
  *(v4 + v7) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v8 = *a2;
  *(v4 + v8) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v9 = *a3;
  *(v4 + v9) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  sub_29E2C4724();
  __break(1u);
}

void sub_29E11B344(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + *a2);
  v8 = objc_opt_self();
  v9 = [v8 preferredFontForTextStyle_];
  [v7 setFont_];

  v10 = *(a1 + *a3);
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v11 = sub_29E2C3FD4();
  [v10 setFont_];

  v12 = *(a1 + *a4);
  v13 = [v8 preferredFontForTextStyle_];
  [v12 setFont_];
}

void sub_29E11B4A0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + *a2);
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v5 setFont_];

  v7 = *(a1 + *a3);
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v8 = sub_29E2C3FD4();
  [v7 setFont_];
}

id sub_29E11B5AC()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell____lazy_storage___chevronImage;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell____lazy_storage___chevronImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell____lazy_storage___chevronImage);
  }

  else
  {
    v4 = sub_29E11C604();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29E11B85C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v84 - v8;
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell_textLabel;
  v11 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell_textLabel];
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  v13 = sub_29E2C33A4();

  [v11 setText_];

  v14 = qword_2A1A60ED8;
  v15 = *&v1[v10];
  if (v14 != -1)
  {
    swift_once();
  }

  v89 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000016, 0x800000029E301520);
  v16 = sub_29E2C33A4();

  [v15 setAccessibilityIdentifier_];

  [*&v1[v10] setNumberOfLines_];
  v17 = *&v1[v10];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 hk_appKeyColor];
  [v19 setTextColor_];

  [*&v1[v10] setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = *&v1[v10];
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v22 = v21;
  v23 = sub_29E2C3FD4();
  [v22 setFont_];

  v24 = sub_29E11B5AC();
  v25 = [v18 tertiaryLabelColor];
  [v24 setTintColor_];

  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell____lazy_storage___chevronImage;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell____lazy_storage___chevronImage] setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = [v18 secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor_];

  v28 = [v1 layer];
  if (qword_2A1817000 != -1)
  {
    swift_once();
  }

  [v28 setCornerRadius_];

  v29 = [v1 contentView];
  [v29 addSubview_];

  v30 = [v1 contentView];
  [v30 addSubview_];

  v31 = [v1 contentView];
  sub_29E2C3E74();
  [v31 setDirectionalLayoutMargins_];

  v32 = objc_opt_self();
  sub_29DE99B54();
  v34 = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29E2CE220;
  v36 = [v1 contentView];
  v37 = [v36 heightAnchor];

  if (qword_2A1817008 != -1)
  {
    swift_once();
  }

  v38 = [v37 constraintGreaterThanOrEqualToConstant_];

  *(v35 + 32) = v38;
  v88 = sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v39 = sub_29E2C3604();

  [v32 activateConstraints_];

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_29E2CDBD0;
  v41 = [*&v1[v10] topAnchor];
  v42 = [v1 contentView];
  v85 = v34;
  v43 = v42;
  v44 = [v42 &selRef_hkmc_menstruationColor];

  v86 = v32;
  v45 = [v41 constraintEqualToAnchor:v44 constant:10.0];

  *(v40 + 32) = v45;
  v46 = [v1 &selRef_systemFontOfSize_weight_];
  v47 = [v46 bottomAnchor];

  v48 = [*&v1[v10] &selRef_setDuration_ + 5];
  v49 = [v47 constraintEqualToAnchor:v48 constant:10.0];

  *(v40 + 40) = v49;
  v50 = [*&v1[v10] leadingAnchor];
  v51 = [v1 &selRef_systemFontOfSize_weight_];
  v52 = [v51 layoutMarginsGuide];

  v53 = [v52 leadingAnchor];
  v54 = [v50 constraintEqualToAnchor_];

  *(v40 + 48) = v54;
  v55 = sub_29E2C3604();

  [v32 activateConstraints_];

  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_29E2D6FB0;
  v57 = [*&v1[v26] topAnchor];
  v58 = [v1 contentView];
  v59 = [v58 topAnchor];

  v60 = [v57 constraintGreaterThanOrEqualToAnchor_];
  *(v56 + 32) = v60;
  v85 = v10;
  v61 = [v1 contentView];
  v62 = [v61 layoutMarginsGuide];

  v63 = [v62 bottomAnchor];
  v64 = [*&v1[v26] bottomAnchor];
  v65 = [v63 constraintGreaterThanOrEqualToAnchor_];

  *(v56 + 40) = v65;
  v66 = [*&v1[v26] trailingAnchor];
  v67 = [v1 &selRef_systemFontOfSize_weight_];
  v68 = [v67 layoutMarginsGuide];

  v69 = [v68 trailingAnchor];
  v70 = [v66 constraintEqualToAnchor_];

  *(v56 + 48) = v70;
  v71 = [*&v1[v26] leadingAnchor];
  v72 = [*&v1[v85] trailingAnchor];
  v73 = [v71 constraintGreaterThanOrEqualToAnchor:v72 constant:10.0];

  *(v56 + 56) = v73;
  v74 = [*&v1[v26] centerYAnchor];
  v75 = [v1 &selRef_systemFontOfSize_weight_];
  v76 = [v75 centerYAnchor];

  v77 = [v74 constraintEqualToAnchor_];
  *(v56 + 64) = v77;
  v78 = sub_29E2C3604();

  [v86 activateConstraints_];

  LODWORD(v79) = 1148846080;
  [*&v1[v26] setContentCompressionResistancePriority:0 forAxis:v79];
  LODWORD(v80) = 1148846080;
  [*&v1[v26] setContentCompressionResistancePriority:1 forAxis:v80];
  sub_29DEAC750(0);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_29E2CAB20;
  v82 = sub_29E2C0B54();
  v83 = MEMORY[0x29EDC7870];
  *(v81 + 32) = v82;
  *(v81 + 40) = v83;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29E11C444(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CycleFactorsShowAllFactorsCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29E11C4E8(uint64_t a1)
{
  result = _UISolariumEnabled();
  v2 = 10.0;
  if (result)
  {
    v2 = 26.0;
  }

  qword_2A181D440 = *&v2;
  return result;
}

uint64_t sub_29E11C518(uint64_t a1)
{
  result = _UISolariumEnabled();
  v2 = 52.0;
  if (!result)
  {
    v2 = 20.0;
  }

  qword_2A181D448 = *&v2;
  return result;
}

void sub_29E11C54C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell_textLabel);
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v2 = v1;
  v3 = sub_29E2C3FD4();
  [v2 setFont_];
}

id sub_29E11C604()
{
  v0 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_opt_self() configurationWithFont:v0 scale:1];
    sub_29DE9408C(0, &qword_2A1818D18, 0x29EDC7AC8);
    v3 = sub_29E2C4094();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 imageWithConfiguration_];
      if (v5)
      {
        v6 = v5;
        v7 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];

        return v7;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

id sub_29E11C798()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController____lazy_storage___heightAnchor;
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController____lazy_storage___heightAnchor];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController____lazy_storage___heightAnchor];
LABEL_6:
    v12 = v2;
    return v3;
  }

  result = [v0 tableView];
  if (result)
  {
    v5 = result;
    v6 = [result heightAnchor];

    result = [v0 tableView];
    if (result)
    {
      v7 = result;
      [result contentSize];
      v9 = v8;

      v10 = [v6 constraintEqualToConstant_];
      [v10 setActive_];
      v11 = *&v0[v1];
      *&v0[v1] = v10;
      v3 = v10;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29E11C8B0(uint64_t a1, void *a2)
{
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_tableViewHeight] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController____lazy_storage___heightAnchor] = 0;
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_topic] = 1;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo] = a1;
  sub_29DE9DC34(a2, &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_pinnedContentManager]);

  sub_29E2C3394();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v7 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  v8 = sub_29E2C33A4();
  v52.receiver = v2;
  v52.super_class = type metadata accessor for MenstrualCyclesOnboardingFertilityTrackingViewController();
  v9 = objc_msgSendSuper2(&v52, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v8, 0, 0, 1);

  v10 = objc_allocWithZone(MEMORY[0x29EDC7D08]);
  v11 = v9;
  v12 = [v10 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTableView_];

  v13 = [v11 tableView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  type metadata accessor for OnboardingCycleFactorsForcedOffTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = sub_29E2C33A4();
  [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v16];

  v17 = [v11 tableView];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [objc_opt_self() systemBackgroundColor];
  [v18 setBackgroundColor_];

  v20 = [v11 tableView];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];

  v22 = [v11 tableView];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;
  v24 = [v11 tableView];
  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = v24;
  [v24 hk_onboardingListEdgeInsets];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  [v23 _setSectionContentInset_];
  v34 = [v11 tableView];
  if (!v34)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v35 = v34;
  v36 = [objc_opt_self() reuseIdentifier];
  if (!v36)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = v36;
  sub_29DE9408C(0, &qword_2A181B778, 0x29EDC4848);
  [v35 registerClass:swift_getObjCClassFromMetadata() forCellReuseIdentifier:v37];

  v38 = [v11 tableView];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  type metadata accessor for TappableTableViewFooter();
  v40 = swift_getObjCClassFromMetadata();
  v41 = sub_29E2C33A4();
  [v39 registerClass:v40 forHeaderFooterViewReuseIdentifier:v41];

  v42 = [v11 tableView];
  if (!v42)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v43 = v42;
  [v42 setDataSource_];

  v44 = [v11 tableView];
  if (!v44)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v45 = v11;
  [v44 setDelegate_];

  v46 = v45;
  v47 = [v46 navigationItem];
  v48 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:v46 action:sel_cancelButtonTapped_];

  [v47 setRightBarButtonItem_];
  v49 = [v46 navigationItem];

  v50 = [v49 rightBarButtonItem];
  if (v50)
  {
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E2EF140);
    v51 = sub_29E2C33A4();

    [v50 setAccessibilityIdentifier_];
  }

  else
  {
  }

  sub_29DE93B3C(a2);
}

id sub_29E11CF90()
{
  [*(*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers) unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesOnboardingFertilityTrackingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E11D0C8()
{
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  result = [v0 tableView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = result;
  [result hk_onboardingListEdgeInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 _setSectionContentInset_];
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_tableViewHeight;
  v13 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_tableViewHeight];
  result = [v0 tableView];
  if (!result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = result;
  [result contentSize];
  v16 = v15;

  if (v13 == v16)
  {
LABEL_10:
    v26.receiver = v0;
    v26.super_class = type metadata accessor for MenstrualCyclesOnboardingFertilityTrackingViewController();
    return objc_msgSendSuper2(&v26, sel_viewDidLayoutSubviews);
  }

  result = [v0 tableView];
  if (!result)
  {
    goto LABEL_14;
  }

  v17 = result;
  [result contentSize];
  v19 = v18;

  *&v0[v12] = v19;
  result = [v0 tableView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = result;
  [result reloadData];

  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = result;
  [result layoutIfNeeded];

  v22 = sub_29E11C798();
  result = [v0 tableView];
  if (result)
  {
    v23 = result;
    [result contentSize];
    v25 = v24;

    [v22 setConstant_];
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_29E11D324(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MenstrualCyclesOnboardingFertilityTrackingViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v2 = sub_29E08D744();
  [v2 addTarget:v1 action:sel_nextButtonTapped_ forControlEvents:64];
  v3 = [v1 buttonTray];
  [v3 addButton_];

  v4 = [v1 headerView];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v6 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2FC050);
  v5 = sub_29E2C33A4();

  [v4 setAccessibilityIdentifier_];
}

void sub_29E11D4BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2C0514();
  v81 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v84 = &v80 - v7;
  MEMORY[0x2A1C7C4A8](v8);
  v83 = &v80 - v9;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v80 - v11;
  sub_29E2C04B4();
  v13 = v1;
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A34();

  v16 = os_log_type_enabled(v14, v15);
  v85 = ObjectType;
  v86 = v3;
  v82 = v5;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v87[0] = v18;
    *v17 = 136446466;
    v19 = sub_29E2C4AE4();
    v21 = sub_29DFAA104(v19, v20, v87);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v3 = v86;
    if (*(*&v13[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled))
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (*(*&v13[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled))
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    v24 = sub_29DFAA104(v22, v23, v87);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Fertility projections enabled: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v18, -1, -1);
    MEMORY[0x29ED82140](v17, -1, -1);
  }

  v25 = *(v81 + 8);
  v25(v12, v3);
  v26 = v83;
  sub_29E2C04B4();
  v27 = v13;
  v28 = sub_29E2C0504();
  v29 = sub_29E2C3A34();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v87[0] = v31;
    *v30 = 136446466;
    v32 = sub_29E2C4AE4();
    v34 = v25;
    v35 = sub_29DFAA104(v32, v33, v87);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    if (*(*&v27[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowNotificationsEnabled))
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if (*(*&v27[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowNotificationsEnabled))
    {
      v37 = 0xE400000000000000;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    v38 = sub_29DFAA104(v36, v37, v87);

    *(v30 + 14) = v38;
    v25 = v34;
    _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] Fertility notifications enabled: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v31, -1, -1);
    MEMORY[0x29ED82140](v30, -1, -1);

    v34(v83, v3);
  }

  else
  {

    v25(v26, v3);
  }

  v39 = v82;
  v40 = v84;
  sub_29E2C04B4();
  v41 = v27;
  v42 = sub_29E2C0504();
  v43 = sub_29E2C3A34();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v87[0] = v45;
    *v44 = 136446466;
    v46 = sub_29E2C4AE4();
    v48 = v25;
    v49 = sub_29DFAA104(v46, v47, v87);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2082;
    if (*(*&v41[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertilityTrackingDisplayTypesVisible))
    {
      v50 = 1702195828;
    }

    else
    {
      v50 = 0x65736C6166;
    }

    if (*(*&v41[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertilityTrackingDisplayTypesVisible))
    {
      v51 = 0xE400000000000000;
    }

    else
    {
      v51 = 0xE500000000000000;
    }

    v52 = sub_29DFAA104(v50, v51, v87);

    *(v44 + 14) = v52;
    v25 = v48;
    _os_log_impl(&dword_29DE74000, v42, v43, "[%{public}s] Log fertility display types enabled: %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v45, -1, -1);
    MEMORY[0x29ED82140](v44, -1, -1);

    v48(v84, v86);
  }

  else
  {

    v25(v40, v3);
  }

  sub_29E2C04B4();
  v53 = v41;
  v54 = sub_29E2C0504();
  v55 = sub_29E2C3A34();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v87[0] = v57;
    *v56 = 136446466;
    v58 = sub_29E2C4AE4();
    v60 = sub_29DFAA104(v58, v59, v87);
    v85 = v25;
    v61 = v60;

    *(v56 + 4) = v61;
    *(v56 + 12) = 2082;
    if (*(*&v53[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_sexualActivityDisplayTypeVisible))
    {
      v62 = 1702195828;
    }

    else
    {
      v62 = 0x65736C6166;
    }

    if (*(*&v53[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_sexualActivityDisplayTypeVisible))
    {
      v63 = 0xE400000000000000;
    }

    else
    {
      v63 = 0xE500000000000000;
    }

    v64 = sub_29DFAA104(v62, v63, v87);

    *(v56 + 14) = v64;
    _os_log_impl(&dword_29DE74000, v54, v55, "[%{public}s] Log sexual activity type enabled: %{public}s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v57, -1, -1);
    MEMORY[0x29ED82140](v56, -1, -1);

    v85(v39, v86);
  }

  else
  {

    v25(v39, v86);
  }

  v65 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo;
  v66 = *&v53[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo];
  sub_29DE9DC34(&v53[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_pinnedContentManager], v87);
  v67 = &v53[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  v69 = *(v67 + 1);
  type metadata accessor for MenstrualCyclesOnboardingCoordinator();
  v70 = swift_allocObject();
  v70[2] = v66;
  v70[3] = Strong;
  v70[4] = v69;
  type metadata accessor for MenstrualCyclesOnboardingCompletionManager();
  v71 = swift_allocObject();
  *(v71 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v71 + 16) = v66;
  *(v71 + 32) = v69;
  swift_unknownObjectWeakAssign();
  sub_29DF3CBE8(v87, v71 + 40);
  v70[5] = v71;
  v70[6] = v53;
  v72 = objc_allocWithZone(type metadata accessor for OnboardingTimelineTutorialViewController());
  swift_retain_n();
  v73 = v53;

  v75 = sub_29E28997C(v74, v72);
  v76 = v70[6];
  v70[6] = v75;
  v77 = v75;

  [v73 showViewController:v77 sender:0];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v78 = *(v67 + 1);
    v79 = swift_getObjectType();
    sub_29E199CD0(8, (*(*&v53[v65] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled) & 1) == 0, v79, v78);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_29E11DE1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_29E11E084(char a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v14 = v21 - v13;
  if (a1)
  {
    v21[0] = a2;
    sub_29DE9408C(0, &qword_2A181B7A0, 0x29EDC7928);
    sub_29E2C3314();
    (*(v8 + 16))(v10, v14, v7);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v15 = qword_2A1A67F80;
    sub_29E2BCC74();
    v16 = sub_29E2C3414();
    v18 = v17;
    (*(v8 + 8))(v14, v7);
    v19 = sub_29DE9A604(v16, v18, 1, 1);

    [v21[0] presentViewController:v19 animated:1 completion:0];
  }

  return a3(a1 & 1, v12);
}

void *sub_29E11E378(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo;
  v5 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo);

  v6 = sub_29E2BCFA4();
  v7 = &unk_2A24AF0F0;
  if (!sub_29E204168(1u, *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds)) && !*(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled))
  {
    v7 = &unk_2A24AF118;
  }

  if (v6 >= v7[2])
  {
    goto LABEL_28;
  }

  if (v6 < 0)
  {
    __break(1u);
LABEL_28:

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = *(v7 + v6 + 32);

  if (v8 < 2)
  {
    if (sub_29E204168(1u, *(*(v1 + v4) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds)))
    {
      v9 = sub_29E2C33A4();
      v10 = sub_29E2BCF24();
      v11 = [a1 dequeueReusableCellWithIdentifier:v9 forIndexPath:v10];

      type metadata accessor for OnboardingCycleFactorsForcedOffTableViewCell();
      v12 = swift_dynamicCastClassUnconditional();
      v13 = sub_29E070208(v8, 1);
      sub_29E000D1C(v13, v14);

      v15 = objc_opt_self();
      v16 = v11;
      v17 = [v15 hkmc_cycleLogCellBackgroundColor];
      [v12 setBackgroundColor_];

      sub_29E104CCC(8, v8, 1);
      v18 = sub_29E2C33A4();

      [v12 setAccessibilityIdentifier_];
LABEL_26:

      return v12;
    }

    v30 = [objc_opt_self() reuseIdentifier];
    if (v30)
    {
      v31 = v30;
      v32 = sub_29E2BCF24();
      v33 = [a1 dequeueReusableCellWithIdentifier:v31 forIndexPath:v32];

      objc_opt_self();
      v12 = swift_dynamicCastObjCClassUnconditional();
      [v12 setDelegate_];
      v23 = v33;
      v34 = [v12 textLabel];
      if (v34)
      {
        v35 = v34;
        sub_29E070208(v8, 1);
        v36 = sub_29E2C33A4();

        [v35 setText_];
      }

      v37 = [v12 textLabel];
      if (v37)
      {
        v38 = v37;
        [v37 setNumberOfLines_];
      }

      v29 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled;
      if (v8)
      {
        v29 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowNotificationsEnabled;
      }

LABEL_25:
      [v12 setOn_];
      v39 = objc_opt_self();
      v16 = v23;
      v40 = [v39 hkmc_cycleLogCellBackgroundColor];
      [v12 setBackgroundColor_];

      sub_29E104CCC(8, v8, 1);
      v18 = sub_29E2C33A4();

      [v12 setAccessibilityIdentifier_];

      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (v8 - 2 < 2)
  {
    v19 = [objc_opt_self() reuseIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = sub_29E2BCF24();
      v22 = [a1 dequeueReusableCellWithIdentifier:v20 forIndexPath:v21];

      objc_opt_self();
      v12 = swift_dynamicCastObjCClassUnconditional();
      [v12 setDelegate_];
      v23 = v22;
      v24 = [v12 textLabel];
      if (v24)
      {
        v25 = v24;
        sub_29E070208(v8, 1);
        v26 = sub_29E2C33A4();

        [v25 setText_];
      }

      v27 = [v12 textLabel];
      if (v27)
      {
        v28 = v27;
        [v27 setNumberOfLines_];
      }

      v29 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_sexualActivityDisplayTypeVisible;
      if (v8 != 3)
      {
        v29 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertilityTrackingDisplayTypesVisible;
      }

      goto LABEL_25;
    }

    goto LABEL_29;
  }

LABEL_31:
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

void sub_29E11EA78(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v27[-v12];
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo;
  v15 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo);
  v16 = sub_29E204168(1u, *(v15 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds));
  v17 = &unk_2A24AF0F0;
  if (!v16 && !*(v15 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled))
  {
    v17 = &unk_2A24AF118;
  }

  if (*(v17 + 2) <= a2)
  {
  }

  else
  {
    if (a2 < 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    v18 = v17[a2 + 32];

    a2 = sub_29E06E2E8(v18, 1);
    v14 = v19;

    if (v14)
    {
      v20 = sub_29E2C33A4();
      v21 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

      if (v21)
      {
        type metadata accessor for TappableTableViewFooter();
        swift_dynamicCastClassUnconditional();
        sub_29E2C3314();
        (*(v8 + 16))(v10, v13, v7);
        if (qword_2A1A62788 == -1)
        {
LABEL_9:
          v22 = qword_2A1A67F80;
          sub_29E2BCC74();
          v23 = sub_29E2C3414();
          v25 = v24;
          (*(v8 + 8))(v13, v7);
          v26 = swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_29E1054C0(a2, v14, v23, v25, sub_29E11FC9C, v26);

          return;
        }

LABEL_13:
        swift_once();
        goto LABEL_9;
      }

      __break(1u);
    }
  }
}

void sub_29E11EE10(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo);
    v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
    v5 = sub_29E204168(1u, *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds)) && *(*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler) + 48) != 0;
    if (!sub_29E204168(1u, *(v3 + v4)))
    {
      if (*(*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler) + 56))
      {
        v5 = 2;
      }
    }

    v6 = type metadata accessor for LearnMoreViewController();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController____lazy_storage___doneBarButtonItem] = 0;
    v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_presentedModally] = 1;
    v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreType] = v5;
    v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreSource] = 4;
    v10.receiver = v7;
    v10.super_class = v6;
    v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
    sub_29DF91550();
    v9 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v2 presentViewController:v9 animated:1 completion:0];
  }
}

void sub_29E11F008(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x2A1C7C4A8](v10).n128_u64[0];
  v13 = &v55 - v12;
  v14 = [v3 tableView];
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!a1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = v14;
  v16 = [v14 indexPathForCell_];

  if (v16)
  {
    v58 = a1;
    v17 = a2;
    sub_29E2BCF44();

    (*(v7 + 32))(v13, v9, v6);
    v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo;

    v19 = v6;
    v20 = sub_29E2BCFA4();
    v21 = v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_topic];
    v23 = sub_29E06E164(v21, v22);
    if (v20 < v23[2])
    {
      v56 = v19;
      v57 = v13;
      v55 = v7;
      if ((v20 & 0x8000000000000000) == 0)
      {
        v24 = *(v23 + v20 + 32);

        sub_29E06EC3C(v17 & 1, v24, v21);
        if ((v24 - 2) < 3)
        {
          goto LABEL_7;
        }

        if (v24)
        {
          if (v17)
          {
            v38 = swift_allocObject();
            v39 = v58;
            *(v38 + 16) = v58;
            v40 = *&v3[v18];
            v41 = swift_allocObject();
            v41[2] = v3;
            v41[3] = sub_29E11FBD0;
            v41[4] = v38;
            v42 = objc_opt_self();
            v43 = v39;

            v44 = v3;

            v45 = [v42 currentNotificationCenter];
            v46 = swift_allocObject();
            v46[2] = v40;
            v46[3] = sub_29E11FBF8;
            v46[4] = v41;
            v63 = sub_29DFF5ABC;
            v64 = v46;
            aBlock = MEMORY[0x29EDCA5F8];
            v60 = 1107296256;
            v61 = sub_29DF6E81C;
            v62 = &unk_2A24BBC60;
            v47 = _Block_copy(&aBlock);

            [v45 getNotificationSettingsWithCompletionHandler_];
            _Block_release(v47);

            v25 = *(v55 + 8);
            goto LABEL_8;
          }

LABEL_7:
          v25 = *(v55 + 8);
LABEL_8:
          v25();
          return;
        }

        v26 = [v3 tableView];
        v27 = v26;
        if ((v17 & 1) == 0)
        {
          if (v26)
          {
            v48 = swift_allocObject();
            v49 = v58;
            *(v48 + 16) = v58;
            *(v48 + 24) = v3;
            v50 = swift_allocObject();
            *(v50 + 16) = sub_29E11FB58;
            *(v50 + 24) = v48;
            v63 = sub_29E073BBC;
            v64 = v50;
            aBlock = MEMORY[0x29EDCA5F8];
            v60 = 1107296256;
            v61 = sub_29E21894C;
            v62 = &unk_2A24BBA80;
            v31 = _Block_copy(&aBlock);
            v51 = v49;
            v52 = v3;

            v53 = swift_allocObject();
            *(v53 + 16) = v49;
            v63 = sub_29E073BDC;
            v64 = v53;
            aBlock = MEMORY[0x29EDCA5F8];
            v60 = 1107296256;
            v61 = sub_29E1F3494;
            v62 = &unk_2A24BBAD0;
            v36 = _Block_copy(&aBlock);
            v54 = v51;
            goto LABEL_19;
          }

          goto LABEL_24;
        }

        if (v26)
        {
          v28 = swift_allocObject();
          v29 = v58;
          *(v28 + 16) = v58;
          *(v28 + 24) = v3;
          v30 = swift_allocObject();
          *(v30 + 16) = sub_29E11FB9C;
          *(v30 + 24) = v28;
          v63 = sub_29E073D74;
          v64 = v30;
          aBlock = MEMORY[0x29EDCA5F8];
          v60 = 1107296256;
          v61 = sub_29E21894C;
          v62 = &unk_2A24BBB48;
          v31 = _Block_copy(&aBlock);
          v32 = v29;
          v33 = v3;

          v34 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v35 = swift_allocObject();
          *(v35 + 16) = v34;
          *(v35 + 24) = v29;
          v63 = sub_29E11FBC8;
          v64 = v35;
          aBlock = MEMORY[0x29EDCA5F8];
          v60 = 1107296256;
          v61 = sub_29E1F3494;
          v62 = &unk_2A24BBBC0;
          v36 = _Block_copy(&aBlock);
          v37 = v32;
LABEL_19:

          [v27 performBatchUpdates:v31 completion:v36];
          _Block_release(v36);
          _Block_release(v31);

          (*(v55 + 8))(v57, v56);

          return;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_21;
    }

    (*(v7 + 8))(v13, v19);
  }
}

void sub_29E11F71C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      v5 = Strong;
      [a3 setUserInteractionEnabled_];
      v6 = v5;
      v7 = [v6 tableView];
      if (v7)
      {
        v8 = v7;
        [v7 layoutIfNeeded];

        v9 = sub_29E11C798();
        [v9 constant];
        v11 = v10;

        v12 = [v6 tableView];
        if (v12)
        {
          v13 = v12;
          [v12 contentSize];
          v15 = v14;

          v16 = v6;
          if (v11 == v15)
          {
LABEL_10:

            return;
          }

          v17 = [v6 tableView];
          if (v17)
          {
            v18 = v17;
            [v17 contentSize];
            v20 = v19;

            *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_tableViewHeight] = v20;
            v21 = *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController____lazy_storage___heightAnchor];
            v22 = [v6 tableView];
            if (v22)
            {
              v23 = v22;
              [v22 contentSize];
              v25 = v24;

              [v21 setConstant_];
              v16 = [v6 tableView];

              if (v16)
              {
                [v16 layoutIfNeeded];
                goto LABEL_10;
              }

LABEL_17:
              __break(1u);
              return;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

void sub_29E11F904(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v8 = sub_29E2BCEC4();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x2A1C7C4A8](a1).n128_u64[0];
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    [v10 setUserInteractionEnabled_];
    v14 = [a2 tableView];
    if (v14)
    {
      v15 = v14;
      v17[1] = a3;
      sub_29E11FC54(&qword_2A181D490, MEMORY[0x29EDB9D48], MEMORY[0x29EDB9D50]);
      sub_29E11FC04();
      sub_29E11FC54(&qword_2A181D4A0, sub_29E11FC04, MEMORY[0x29EDC9A70]);
      sub_29E2C43F4();
      v16 = sub_29E2BCEB4();
      (*(v9 + 8))(v13, v8);
      [v15 *a4];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29E11FB84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29E11FBD0(id result)
{
  if (result)
  {
    result = *(v1 + 16);
    if (result)
    {
      return [result setOn:0 animated:1];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_29E11FC04()
{
  if (!qword_2A181B790)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B790);
    }
  }
}

uint64_t sub_29E11FC54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E11FCCC(uint64_t a1)
{
  sub_29DF33490(0, &unk_2A1A62830, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v18 - v2;
  sub_29DF33490(0, &unk_2A1A62840, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_29E2BC5F4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = sub_29E2BCEA4();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_29E2BCF04();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_29E2BC5D4();
  v14 = sub_29E2BC524();
  (*(v8 + 8))(v10, v7);
  v15 = [ObjCClassFromMetadata localizedStringFromDateComponents:v14 unitsStyle:3];

  if (!v15)
  {
    return 0;
  }

  v16 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  return v16;
}

uint64_t sub_29E11FFCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_29DF33490(0, &unk_2A1A62830, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v22 - v6;
  sub_29DF33490(0, &unk_2A1A62840, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_29E2BC5F4();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x2A1C7C4A8](v11).n128_u64[0];
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 setAllowedUnits_];
  [v2 setUnitsStyle_];
  [v2 setFormattingContext_];
  v16 = sub_29E2BCEA4();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_29E2BCF04();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_29E2BC5D4();
  v18 = sub_29E2BC524();
  (*(v12 + 8))(v15, v11);
  v19 = [v3 stringFromDateComponents_];

  if (!v19)
  {
    return 0;
  }

  v20 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  return v20;
}

uint64_t sub_29E1202FC(uint64_t a1)
{
  sub_29DF33490(0, &unk_2A1A62830, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v18 - v2;
  sub_29DF33490(0, &unk_2A1A62840, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_29E2BC5F4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = sub_29E2BCEA4();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_29E2BCF04();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_29E2BC5D4();
  v14 = sub_29E2BC524();
  (*(v8 + 8))(v10, v7);
  v15 = [ObjCClassFromMetadata localizedStringFromDateComponents:v14 unitsStyle:3];

  if (!v15)
  {
    return 0;
  }

  v16 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  return v16;
}

uint64_t sub_29E1205FC(uint64_t a1)
{
  sub_29DF33490(0, &unk_2A1A62830, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v18 - v2;
  sub_29DF33490(0, &unk_2A1A62840, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_29E2BC5F4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = sub_29E2BCEA4();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_29E2BCF04();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_29E2BC5D4();
  v14 = sub_29E2BC524();
  (*(v8 + 8))(v10, v7);
  v15 = [ObjCClassFromMetadata localizedStringFromDateComponents:v14 unitsStyle:3];

  if (!v15)
  {
    return 0;
  }

  v16 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  return v16;
}

id sub_29E120904(double a1, double a2, double a3, double a4)
{
  v4 = [swift_getObjCClassFromMetadata() bezierPathWithOvalInRect_];

  return v4;
}

id sub_29E12097C()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [objc_opt_self() configurationWithFont:v0 scale:-1];
  sub_29E02E288();
  v2 = sub_29E2C4094();
  if (v2 && (v3 = v2, v4 = [v2 imageWithConfiguration_], v3, v4))
  {
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 systemGrayColor];
    v8 = [v6 imageWithTintColor_];

    v9 = objc_allocWithZone(MEMORY[0x29EDC7958]);
    v10 = v8;
    v11 = [v9 init];
    [v10 size];
    v13 = v12;
    [v10 size];
    [v11 setFrame_];
    [v11 setBackgroundImage:v10 forState:0];

    return v11;
  }

  else
  {
    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

id sub_29E120BC0(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v121[0] = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v121 - v7;
  sub_29DF67A48(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v16 = v15;
  v121[1] = a1;
  if (v14 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v16 == v17)
  {

LABEL_10:
    v24 = type metadata accessor for CycleLogModel(0);
    v25 = v122;
    v26 = *(v122 + v24[10]);
    v27 = [*(v122 + v24[6] + *(type metadata accessor for CycleDay(0) + 20)) daySummary];
    v28 = [v27 basalBodyTemperature];

    if (v28)
    {
      v29 = *(v25 + v24[9]);
      v30 = v28;
      v31 = [v29 _foundationUnit];
      if (v31)
      {
        v32 = v31;
        [v30 doubleValueForUnit_];
        sub_29DE9408C(0, &qword_2A181FDD0, 0x29EDBA150);
        v33 = v32;
        sub_29E2BC304();
        v34 = sub_29E2BC2F4();
        v35 = [v26 stringFromMeasurement_];

        v36 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        (*(v11 + 8))(v13, v10);

        return v36;
      }
    }

    return 0;
  }

  v19 = sub_29E2C4914();

  if (v19)
  {
    goto LABEL_10;
  }

  v20 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v22 = v21;
  if (v20 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v22 == v23)
  {

    goto LABEL_16;
  }

  v38 = sub_29E2C4914();

  if (v38)
  {
LABEL_16:
    v39 = v122 + *(type metadata accessor for CycleLogModel(0) + 24);
    result = [*(v39 + *(type metadata accessor for CycleDay(0) + 20)) daySummary];
    if (result)
    {
      v40 = result;
      v41 = [result cervicalMucusQuality];

      return sub_29E225EAC(v41);
    }

    return result;
  }

  v42 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v44 = v43;
  if (v42 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v44 == v45)
  {

    return sub_29E121918();
  }

  v46 = sub_29E2C4914();

  if (v46)
  {
    return sub_29E121918();
  }

  v47 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v49 = v48;
  if (v47 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v49 == v50)
  {

LABEL_27:
    v52 = v122 + *(type metadata accessor for CycleLogModel(0) + 24);
    result = [*(v52 + *(type metadata accessor for CycleDay(0) + 20)) daySummary];
    if (!result)
    {
      return result;
    }

    v53 = result;
    if ([result intermenstrualBleeding])
    {
      sub_29E2C3314();
      v54 = v121[0];
      (*(v121[0] + 16))(v5, v8, v3);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v55 = qword_2A1A67F80;
      sub_29E2BCC74();
      v56 = sub_29E2C3414();

      (*(v54 + 8))(v8, v3);
      return v56;
    }

    return 0;
  }

  v51 = sub_29E2C4914();

  if (v51)
  {
    goto LABEL_27;
  }

  v57 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v59 = v58;
  if (v57 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v59 == v60)
  {

    v61 = v122;
LABEL_37:
    v63 = v61 + *(type metadata accessor for CycleLogModel(0) + 24);
    result = [*(v63 + *(type metadata accessor for CycleDay(0) + 20)) daySummary];
    if (!result)
    {
      return result;
    }

    v64 = result;
    v65 = [result menstrualFlow];

    v66 = 0;
    return sub_29E29DE84(v66, v65);
  }

  v62 = sub_29E2C4914();

  v61 = v122;
  if (v62)
  {
    goto LABEL_37;
  }

  v67 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v69 = v68;
  if (v67 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v69 == v70)
  {

LABEL_44:
    v72 = v61 + *(type metadata accessor for CycleLogModel(0) + 24);
    result = [*(v72 + *(type metadata accessor for CycleDay(0) + 20)) daySummary];
    if (!result)
    {
      return result;
    }

    v73 = result;
    v65 = [result bleedingInPregnancyFlow];

    v66 = 1;
    return sub_29E29DE84(v66, v65);
  }

  v71 = sub_29E2C4914();

  if (v71)
  {
    goto LABEL_44;
  }

  v74 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v76 = v75;
  if (v74 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v76 == v77)
  {

LABEL_50:
    v79 = v61 + *(type metadata accessor for CycleLogModel(0) + 24);
    result = [*(v79 + *(type metadata accessor for CycleDay(0) + 20)) daySummary];
    if (!result)
    {
      return result;
    }

    v80 = result;
    v65 = [result bleedingAfterPregnancyFlow];

    v66 = 2;
    return sub_29E29DE84(v66, v65);
  }

  v78 = sub_29E2C4914();

  if (v78)
  {
    goto LABEL_50;
  }

  v81 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v83 = v82;
  if (v81 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v83 == v84)
  {

    goto LABEL_56;
  }

  v85 = sub_29E2C4914();

  if (v85)
  {
LABEL_56:
    v86 = v122 + *(type metadata accessor for CycleLogModel(0) + 24);
    result = [*(v86 + *(type metadata accessor for CycleDay(0) + 20)) daySummary];
    if (result)
    {
      v87 = result;
      v88 = [result ovulationTestResult];

      return sub_29E2ADEF4(v88);
    }

    return result;
  }

  v89 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v91 = v90;
  if (v89 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v91 == v92)
  {

    goto LABEL_62;
  }

  v93 = sub_29E2C4914();

  if (v93)
  {
LABEL_62:
    v94 = v122 + *(type metadata accessor for CycleLogModel(0) + 24);
    result = [*(v94 + *(type metadata accessor for CycleDay(0) + 20)) daySummary];
    if (result)
    {
      v95 = result;
      v96 = [result pregnancyTestResult];

      return sub_29E1735D8(v96);
    }

    return result;
  }

  v97 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v99 = v98;
  if (v97 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v99 == v100)
  {

    goto LABEL_68;
  }

  v101 = sub_29E2C4914();

  if (v101)
  {
LABEL_68:
    v102 = v122 + *(type metadata accessor for CycleLogModel(0) + 24);
    result = [*(v102 + *(type metadata accessor for CycleDay(0) + 20)) daySummary];
    if (result)
    {
      v103 = result;
      v104 = [result progesteroneTestResult];

      return sub_29DF3FCE8(v104);
    }

    return result;
  }

  v105 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v107 = v106;
  if (v105 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v107 == v108)
  {

    goto LABEL_74;
  }

  v109 = sub_29E2C4914();

  if (v109)
  {
LABEL_74:
    v110 = v122 + *(type metadata accessor for CycleLogModel(0) + 24);
    result = [*(v110 + *(type metadata accessor for CycleDay(0) + 20)) daySummary];
    if (result)
    {
      v111 = result;
      v112 = [result sexualActivity];

      return sub_29DF77A28(v112);
    }

    return result;
  }

  v113 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v115 = v114;
  if (v113 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v115 == v116)
  {
  }

  else
  {
    v117 = sub_29E2C4914();

    if ((v117 & 1) == 0)
    {
      return 0;
    }
  }

  v118 = v122 + *(type metadata accessor for CycleLogModel(0) + 24);
  result = [*(v118 + *(type metadata accessor for CycleDay(0) + 20)) daySummary];
  if (result)
  {
    v119 = result;
    v120 = [result symptoms];

    return sub_29E22AC10(v120);
  }

  return result;
}

id sub_29E121918()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C3384();
  v40 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v39 = &v36 - v6;
  v7 = sub_29E2C31A4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for CycleLogModel(0);
  v15 = v0 + *(v14 + 24);
  v18 = *(v8 + 16);
  v16 = v8 + 16;
  v17 = v18;
  (v18)(v13, v15, v7);
  (v18)(v10, v0 + *(v14 + 28), v7);
  sub_29E2BFC34();
  if (sub_29E2BFC24())
  {
    return 0;
  }

  result = [*(v15 + *(type metadata accessor for CycleDay(0) + 20)) cycleFactors];
  if (result)
  {
    v20 = result;
    sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
    v21 = sub_29E2C3614();

    if (v21 >> 62)
    {
      if (sub_29E2C4484())
      {
        v22 = sub_29E2C4484();
        if (!v22)
        {
          v37 = v3;

          v25 = MEMORY[0x29EDCA190];
          goto LABEL_16;
        }

LABEL_6:
        v37 = v3;
        v42 = MEMORY[0x29EDCA190];
        v23 = &v42;
        sub_29E1811FC(0, v22 & ~(v22 >> 63), 0);
        if (v22 < 0)
        {
          __break(1u);
          goto LABEL_23;
        }

        v24 = 0;
        v25 = v42;
        do
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x29ED80D70](v24, v21);
          }

          else
          {
            v26 = *(v21 + 8 * v24 + 32);
          }

          v27 = v26;
          v28 = sub_29E08C870([v26 hkmc_cycleFactor]);
          v30 = v29;

          v42 = v25;
          v32 = *(v25 + 16);
          v31 = *(v25 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_29E1811FC((v31 > 1), v32 + 1, 1);
            v25 = v42;
          }

          ++v24;
          *(v25 + 16) = v32 + 1;
          v33 = v25 + 16 * v32;
          *(v33 + 32) = v28;
          *(v33 + 40) = v30;
        }

        while (v22 != v24);

LABEL_16:
        v42 = v25;
        v17 = v39;
        sub_29E2C3314();
        v16 = v40;
        v23 = v37;
        (*(v40 + 16))(v38, v17, v37);
        if (qword_2A1A62788 == -1)
        {
LABEL_17:
          v34 = qword_2A1A67F80;
          sub_29E2BCC74();
          sub_29E2C3414();
          (*(v16 + 8))(v17, v23);
          sub_29E121EAC();
          sub_29E0B7C58();
          v35 = sub_29E2C3274();

          return v35;
        }

LABEL_23:
        swift_once();
        goto LABEL_17;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  return result;
}

id sub_29E121E04(char a1)
{
  v1 = [objc_opt_self() *off_29F362A20[a1]];

  return v1;
}

id sub_29E121E58(char a1)
{
  v1 = [objc_opt_self() *off_29F362A50[a1]];

  return v1;
}

void sub_29E121EAC()
{
  if (!qword_2A1A5E320)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E320);
    }
  }
}

uint64_t sub_29E121EFC()
{
  v1 = v0;
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for EditPregnancyView(0);
  v10 = *(v9 + 20);
  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v29 = v10;
  v27 = v11;
  sub_29E2C2A24();
  v12 = v35;
  swift_getKeyPath();
  v35 = v12;
  v26 = sub_29E12E970(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2BCFE4();

  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
  swift_beginAccess();
  v14 = *(v3 + 16);
  v14(v8, v12 + v13, v2);

  v15 = (v1 + *(v9 + 24));
  v16 = *v15;
  v24 = v15[1];
  v25 = v16;
  v33 = v16;
  v34 = v24;
  sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  v28 = v14;
  v14(v5, v31 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_oldStartDate, v2);

  LOBYTE(v13) = sub_29E2BCB34();
  v17 = *(v3 + 8);
  v17(v5, v2);
  v17(v8, v2);
  if (v13)
  {
    sub_29E2C2A24();
    v18 = v33;
    swift_getKeyPath();
    v33 = v18;
    sub_29E2BCFE4();

    v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate;
    swift_beginAccess();
    v20 = v28;
    v28(v8, v18 + v19, v2);

    v31 = v25;
    v32 = v24;
    sub_29E2C27D4();
    v20(v5, v30 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_oldEndDate, v2);

    v21 = sub_29E2BCB34();
    v17(v5, v2);
    v17(v8, v2);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

void sub_29E1222D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v103 = a2;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v96 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_29E2C3384();
  v95 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v93 - v7;
  sub_29E12E620(0);
  v106 = v9;
  v104 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v98 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E12E5EC(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v105 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v107 = &v93 - v14;
  v15 = sub_29E2C2724();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_opt_self();
  v20 = sub_29E2C33A4();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v94 = qword_2A1A67F80;
  v21 = [v19 imageNamed:v20 inBundle:? compatibleWithTraitCollection:?];

  if (v21)
  {
    [v21 setIsAccessibilityElement_];
    sub_29E2C2704();
    (*(v16 + 104))(v18, *MEMORY[0x29EDBCAB8], v15);
    v113 = sub_29E2C2774();

    (*(v16 + 8))(v18, v15);
    sub_29E2C2AB4();
    sub_29E2C1564();
    v109 = v157;
    v22 = v158;
    v23 = v160;
    v111 = v159;
    v112 = v161;
    v101 = v162;
    v24 = sub_29E2C1FD4();
    v25 = sub_29E2C2004();
    sub_29E2C2004();
    if (sub_29E2C2004() != v24)
    {
      v25 = sub_29E2C2004();
    }

    sub_29E2C1424();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v110 = v22;
    v153 = v22;
    v100 = v23;
    v151 = v23;
    v148 = 0;
    v34 = sub_29E2C1FE4();
    v35 = sub_29E2C2004();
    sub_29E2C2004();
    if (sub_29E2C2004() != v34)
    {
      v35 = sub_29E2C2004();
    }

    v99 = v35;
    v108 = v25;
    sub_29E2C1424();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v154 = 0;
    v44 = (v102 + *(type metadata accessor for EditPregnancyView(0) + 24));
    v46 = *v44;
    v45 = v44[1];
    v124 = v46;
    v125 = v45;
    sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
    sub_29E2C27D4();
    v47 = *(v114 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancyOccurrenceType);

    v48 = 1;
    if ((v47 & 1) == 0)
    {
      v49 = v8;
      sub_29E2C3314();
      v50 = v95;
      v51 = v97;
      (*(v95 + 16))(v5, v49, v97);
      v52 = v94;
      sub_29E2BCC74();
      v53 = sub_29E2C3414();
      v55 = v54;
      (*(v50 + 8))(v49, v51);
      v124 = v53;
      v125 = v55;
      sub_29DE9DE68();
      v56 = sub_29E2C2294();
      v58 = v57;
      LOBYTE(v50) = v59;
      v61 = v60;
      sub_29E12E7AC(0);
      v63 = v98;
      v64 = &v98[*(v62 + 36)];
      sub_29E12DA58(0, &qword_2A181D5A0, sub_29E12E83C, MEMORY[0x29EDBC938]);
      v66 = *(v65 + 28);
      v67 = sub_29E2C2234();
      (*(*(v67 - 8) + 56))(v64 + v66, 1, 1, v67);
      *v64 = swift_getKeyPath();
      *v63 = v56;
      *(v63 + 8) = v58;
      *(v63 + 16) = v50 & 1;
      *(v63 + 24) = v61;
      v68 = sub_29E2C2054();
      KeyPath = swift_getKeyPath();
      sub_29E12E72C(0);
      v71 = (v63 + *(v70 + 36));
      *v71 = KeyPath;
      v71[1] = v68;
      v72 = sub_29E2C2634();
      v73 = swift_getKeyPath();
      sub_29E12E6AC(0);
      v75 = (v63 + *(v74 + 36));
      *v75 = v73;
      v75[1] = v72;
      v76 = swift_getKeyPath();
      v77 = v107;
      v78 = v63 + *(v106 + 36);
      *v78 = v76;
      *(v78 + 8) = 1;
      sub_29E1305F4(v63, v77, sub_29E12E620);
      v48 = 0;
    }

    v79 = v107;
    (*(v104 + 56))(v107, v48, 1, v106);
    v80 = v105;
    sub_29E1303D8(v79, v105, sub_29E12E5EC);
    *&v114 = v113;
    *(&v114 + 1) = v109;
    LOBYTE(v115) = v110;
    *(&v115 + 1) = *v152;
    DWORD1(v115) = *&v152[3];
    *(&v115 + 1) = v111;
    v81 = v100;
    LOBYTE(v116) = v100;
    *(&v116 + 1) = *v150;
    DWORD1(v116) = *&v150[3];
    v82 = v101;
    *(&v116 + 1) = v112;
    *&v117 = v101;
    BYTE8(v117) = v108;
    HIDWORD(v117) = *&v149[3];
    *(&v117 + 9) = *v149;
    *&v118 = v27;
    *(&v118 + 1) = v29;
    *&v119 = v31;
    *(&v119 + 1) = v33;
    LOBYTE(v120) = 0;
    DWORD1(v120) = *&v156[3];
    *(&v120 + 1) = *v156;
    v83 = v99;
    BYTE8(v120) = v99;
    *(&v120 + 9) = *v155;
    HIDWORD(v120) = *&v155[3];
    *&v121 = v37;
    *(&v121 + 1) = v39;
    *&v122 = v41;
    *(&v122 + 1) = v43;
    v123 = 0;
    v84 = v120;
    v85 = v121;
    v86 = v122;
    v87 = v103;
    *(v103 + 144) = 0;
    v87[7] = v85;
    v87[8] = v86;
    v88 = v115;
    *v87 = v114;
    v87[1] = v88;
    v89 = v116;
    v90 = v117;
    v91 = v118;
    v87[5] = v119;
    v87[6] = v84;
    v87[3] = v90;
    v87[4] = v91;
    v87[2] = v89;
    sub_29E12F9EC(0, &qword_2A181D558, sub_29E12E4D4, sub_29E12E5EC);
    sub_29E1303D8(v80, v87 + *(v92 + 48), sub_29E12E5EC);
    sub_29E1303D8(&v114, &v124, sub_29E12E4D4);
    sub_29E130440(v79, sub_29E12E5EC);
    sub_29E130440(v80, sub_29E12E5EC);
    v124 = v113;
    v125 = v109;
    v126 = v110;
    *v127 = *v152;
    *&v127[3] = *&v152[3];
    v128 = v111;
    v129 = v81;
    *v130 = *v150;
    *&v130[3] = *&v150[3];
    v131 = v112;
    v132 = v82;
    v133 = v108;
    *&v134[3] = *&v149[3];
    *v134 = *v149;
    v135 = v27;
    v136 = v29;
    v137 = v31;
    v138 = v33;
    v139 = 0;
    *v140 = *v156;
    *&v140[3] = *&v156[3];
    v141 = v83;
    *v142 = *v155;
    *&v142[3] = *&v155[3];
    v143 = v37;
    v144 = v39;
    v145 = v41;
    v146 = v43;
    v147 = 0;
    sub_29E130440(&v124, sub_29E12E4D4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E122CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v35 - v9;
  sub_29E12EC30(0);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a1 + *(type metadata accessor for EditPregnancyView(0) + 24));
  v15 = v14[1];
  v37 = *v14;
  v38 = a1;
  v45 = v37;
  v46 = v15;
  sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E12ECC4(0);
  sub_29E12E970(&qword_2A181D618, sub_29E12ECC4, MEMORY[0x29EDBCB30]);
  v39 = v13;
  sub_29E2C2824();
  sub_29E2C3314();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A67F80;
  sub_29E2BCC74();
  v17 = sub_29E2C3414();
  v19 = v18;
  (*(v5 + 8))(v10, v4);
  v45 = v17;
  v46 = v19;
  sub_29DE9DE68();
  v20 = sub_29E2C2294();
  v35 = v21;
  v36 = v20;
  v23 = v22;
  v25 = v24;
  v43 = v37;
  v44 = v15;
  sub_29E2C27F4();
  v26 = v45;
  v27 = v46;
  v28 = v47;
  swift_getKeyPath();
  v45 = v26;
  v46 = v27;
  v47 = v28;
  sub_29E12DA58(0, &qword_2A181D6D8, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB78]);
  sub_29E2C2934();

  MEMORY[0x2A1C7C4A8](v29);
  MEMORY[0x2A1C7C4A8](v30);
  sub_29E12EE1C(0);
  sub_29E12E970(&qword_2A181D620, sub_29E12EC30, MEMORY[0x29EDBC278]);
  sub_29E12E970(&qword_2A181AA88, sub_29E12EE1C, MEMORY[0x29EDBCC30]);
  v31 = v41;
  v32 = v36;
  v33 = v39;
  sub_29E2C2454();

  sub_29DED6478(v32, v23, v25 & 1);

  return (*(v40 + 8))(v33, v31);
}

double sub_29E1232B0(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
    sub_29E2BCFD4();
  }

  return result;
}

__n128 sub_29E1233C4@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_29E2C1AA4();
  sub_29E123434(&v9);
  v4 = v10;
  v5 = v11;
  v6 = v12;
  v7 = v13;
  result = v9;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  return result;
}

double sub_29E123434@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v27 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v27[1] = v11;
  v27[2] = v13;
  sub_29DE9DE68();
  v14 = sub_29E2C2294();
  v16 = v15;
  v18 = v17;
  sub_29E2C2674();
  v19 = sub_29E2C2214();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_29DED6478(v14, v16, v18 & 1);

  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v25;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_29DE93208(v19, v21, v23 & 1);
  sub_29E2BF404();
  sub_29DED6478(v19, v21, v23 & 1);

  return result;
}

uint64_t sub_29E1236F4()
{
  swift_getKeyPath();
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  return *(v0 + 16);
}

void sub_29E123794(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  *a2 = *(v3 + 16);
}

void sub_29E12383C(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
    sub_29E2BCFD4();
  }
}

uint64_t sub_29E12394C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v60 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C3384();
  v55 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for EditPregnancyView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  sub_29E12DA58(0, &qword_2A181D6E0, MEMORY[0x29EDBBE78], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v52 - v15;
  sub_29E13149C(0, &qword_2A18182B0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  v18 = v17;
  v59 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v64 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v63 = &v52 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v58 = &v52 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v26 = &v52 - v25;
  sub_29E2C13D4();
  v27 = sub_29E2C13F4();
  v28 = *(v27 - 8);
  v53 = *(v28 + 56);
  v54 = v27;
  v52 = v28 + 56;
  v53(v16, 0, 1);
  v65 = a1;
  sub_29E1303D8(a1, &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditPregnancyView);
  v29 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v61 = v13;
  v30 = swift_allocObject();
  v62 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1305F4(v62, v30 + v29, type metadata accessor for EditPregnancyView);
  v56 = v26;
  sub_29E2C2814();
  sub_29E2C3314();
  v31 = v55;
  v32 = *(v55 + 16);
  v33 = v7;
  v57 = v10;
  v34 = v5;
  v32(v33, v10, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v35 = qword_2A1A67F80;
  sub_29E2BCC74();
  v36 = sub_29E2C3414();
  v38 = v37;
  (*(v31 + 8))(v57, v34);
  v67 = v36;
  v68 = v38;
  sub_29E2C13E4();
  (v53)(v16, 0, 1, v54);
  v39 = v62;
  sub_29E1303D8(v65, v62, type metadata accessor for EditPregnancyView);
  v40 = swift_allocObject();
  sub_29E1305F4(v39, v40 + v29, type metadata accessor for EditPregnancyView);
  sub_29DE9DE68();
  v41 = v58;
  sub_29E2C2834();
  v42 = v59;
  v43 = *(v59 + 16);
  v44 = v63;
  v45 = v56;
  v43(v63, v56, v18);
  v46 = v64;
  v43(v64, v41, v18);
  v47 = v66;
  v48.n128_f64[0] = v43(v66, v44, v18);
  sub_29E12EE50(0, v48);
  v43(&v47[*(v49 + 48)], v46, v18);
  v50 = *(v42 + 8);
  v50(v41, v18);
  v50(v45, v18);
  v50(v46, v18);
  return (v50)(v44, v18);
}

double sub_29E12400C(uint64_t a1, __n128 a2)
{
  type metadata accessor for EditPregnancyView(0);
  sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E1240A0();

  return result;
}

double sub_29E1240A0()
{
  v1 = v0;
  v90 = *v0;
  v2 = sub_29E2BCC24();
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C03E4();
  v85 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v76 - v9;
  v11 = sub_29E2C0514();
  v12 = *(v11 - 8);
  v88 = v11;
  v89 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v76 - v16;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v76 - v19;
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel___observationRegistrar;
  aBlock[0] = v1;
  v86 = sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  v87 = v21;
  sub_29E2BCFE4();

  if (*(v1 + 21))
  {
    v22 = v90;
    sub_29E2C04B4();

    v23 = sub_29E2C0504();
    v24 = sub_29E2C3A34();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v1;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v92[0] = v27;
      *v26 = 136315394;
      aBlock[0] = v22;
      swift_getMetatypeMetadata();
      v28 = sub_29E2C3464();
      v30 = sub_29DFAA104(v28, v29, v92);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      swift_getKeyPath();
      aBlock[0] = v25;
      sub_29E2BCFE4();

      LOBYTE(aBlock[0]) = *(v25 + 21);
      v31 = sub_29E2C3424();
      v33 = sub_29DFAA104(v31, v32, v92);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_29DE74000, v23, v24, "[%s] User tapped delete factor but we're already processing an action %s, ignoring tap", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v27, -1, -1);
      MEMORY[0x29ED82140](v26, -1, -1);
    }

    (*(v89 + 8))(v20, v88);
  }

  else
  {
    v35 = v90;
    v79 = v1;
    v80 = v7;
    v81 = v10;
    v82 = v5;
    v77 = v4;
    v78 = v14;
    sub_29E2C04B4();
    v36 = sub_29E2C0504();
    v37 = sub_29E2C3A34();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v92[0] = v39;
      *v38 = 136315138;
      aBlock[0] = v35;
      swift_getMetatypeMetadata();
      v40 = sub_29E2C3464();
      v42 = sub_29DFAA104(v40, v41, v92);
      v43 = v88;

      *(v38 + 4) = v42;
      _os_log_impl(&dword_29DE74000, v36, v37, "[%s] User tapped delete factor, starting delete flow", v38, 0xCu);
      sub_29DE93B3C(v39);
      MEMORY[0x29ED82140](v39, -1, -1);
      MEMORY[0x29ED82140](v38, -1, -1);

      v44 = *(v89 + 8);
      v44(v17, v43);
    }

    else
    {

      v44 = *(v89 + 8);
      v44(v17, v88);
    }

    v46 = v81;
    v45 = v82;
    v47 = v79;
    v48 = v80;
    v49 = v85;
    if (*(v79 + 21) != 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath);
      *(&v76 - 2) = v47;
      *(&v76 - 8) = 1;
      aBlock[0] = v47;
      sub_29E2BCFD4();
    }

    sub_29E2C03D4();
    v51 = sub_29E2C0404();
    v52 = sub_29E2C3D84();
    if (sub_29E2C42D4())
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = sub_29E2C03C4();
      _os_signpost_emit_with_name_impl(&dword_29DE74000, v51, v52, v54, "OffboardingCoordinator.deleteFactor", "", v53, 2u);
      MEMORY[0x29ED82140](v53, -1, -1);
    }

    (*(v49 + 16))(v48, v46, v45);
    sub_29E2C0454();
    swift_allocObject();
    v55 = sub_29E2C0444();
    (*(v49 + 8))(v46, v45);
    if (HKShowSensitiveLogItems())
    {
      v56 = v78;
      sub_29E2C04B4();

      v57 = sub_29E2C0504();
      v58 = sub_29E2C3A34();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock[0] = v60;
        *v59 = 136315394;
        v61 = sub_29E2C4AE4();
        v63 = sub_29DFAA104(v61, v62, aBlock);

        *(v59 + 4) = v63;
        *(v59 + 12) = 2080;
        v64 = [*(v47 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancySample) UUID];
        v65 = v77;
        sub_29E2BCC04();

        v66 = sub_29E2BCBD4();
        v87 = v44;
        v67 = v66;
        v69 = v68;
        (*(v83 + 8))(v65, v84);
        v70 = sub_29DFAA104(v67, v69, aBlock);

        *(v59 + 14) = v70;
        _os_log_impl(&dword_29DE74000, v57, v58, "[%s] Attempting to delete sample with UUID: %s", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v60, -1, -1);
        MEMORY[0x29ED82140](v59, -1, -1);

        v87(v78, v88);
      }

      else
      {

        v44(v56, v88);
      }
    }

    v71 = *(v47 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_healthStore);
    v72 = *(v47 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancySample);
    v73 = swift_allocObject();
    swift_weakInit();
    v74 = swift_allocObject();
    v74[2] = v73;
    v74[3] = v55;
    v74[4] = v90;
    aBlock[4] = sub_29E130574;
    aBlock[5] = v74;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    aBlock[3] = &unk_2A24BBF68;
    v75 = _Block_copy(aBlock);

    [v71 deleteObject:v72 withCompletion:v75];
    _Block_release(v75);
  }

  return result;
}

uint64_t sub_29E124A58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v18 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_29DE9DE68();
  result = sub_29E2C2294();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

double sub_29E124C7C(uint64_t a1, __n128 a2)
{
  type metadata accessor for EditPregnancyView(0);
  sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  if (*(v4 + 16) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
    sub_29E2BCFD4();
  }

  else
  {
    *(v4 + 16) = 0;
  }

  return result;
}

uint64_t sub_29E124DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v23 - v10;
  v12 = (a1 + *(type metadata accessor for EditPregnancyView(0) + 24));
  v14 = *v12;
  v13 = v12[1];
  v24 = v14;
  v25 = v13;
  sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E1250B4();

  sub_29E2C3314();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A67F80;
  sub_29E2BCC74();
  v16 = sub_29E2C3414();
  v18 = v17;
  (*(v6 + 8))(v11, v5);
  v24 = v16;
  v25 = v18;
  sub_29DE9DE68();
  result = sub_29E2C2294();
  *a2 = result;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v22;
  return result;
}

uint64_t sub_29E1250B4()
{
  v1 = sub_29E2BCEA4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCBB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v0 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator);
  sub_29DE966D4((v0 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator), *(v0 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator + 24));
  if (sub_29DFEBE08())
  {
    if (*(v0 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancyOccurrenceType) != 1)
    {
      v13 = 1;
      return v13 & 1;
    }

    sub_29DE966D4(v12, v12[3]);
    sub_29DFF2C80(v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_29E2BCE44();
      v13 = sub_29E2BCE14();
      (*(v2 + 8))(v4, v1);
      (*(v9 + 8))(v11, v8);
      return v13 & 1;
    }

    sub_29E130440(v7, sub_29DEB3B00);
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_29E125348@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_29E2C1A74();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v50 - v10;
  sub_29E12DCF8(0);
  v54 = v12;
  v51 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E12F060(0);
  v59 = v15;
  v55 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v52 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E12F130(0);
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v58 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v1;
  v64 = v1;
  v20 = v5;
  sub_29E12DE70(0, v18);
  sub_29E12DFB8(255, v21);
  v23 = v22;
  sub_29E12EEE0(255);
  v25 = v24;
  sub_29E12E06C(255, v26);
  v28 = v27;
  v29 = sub_29E12E970(&qword_2A181D630, sub_29E12E06C, MEMORY[0x29EDBC0F0]);
  v65 = v28;
  v66 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_29E12E970(&qword_2A181D650, sub_29E12EEE0, MEMORY[0x29EDBCC30]);
  v65 = v23;
  v66 = v25;
  v67 = MEMORY[0x29EDBCA18];
  v68 = OpaqueTypeConformance2;
  v69 = v31;
  v70 = MEMORY[0x29EDBCA10];
  swift_getOpaqueTypeConformance2();
  sub_29E2C1754();
  sub_29E2C3314();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v32 = qword_2A1A67F80;
  sub_29E2BCC74();
  v33 = sub_29E2C3414();
  v35 = v34;
  (*(v6 + 8))(v11, v20);
  v65 = v33;
  v66 = v35;
  v37 = v56;
  v36 = v57;
  v38 = v53;
  (*(v56 + 104))(v53, *MEMORY[0x29EDBBF98], v57);
  v39 = sub_29E12E970(&qword_2A181D660, sub_29E12DCF8, MEMORY[0x29EDBBF20]);
  v40 = sub_29DE9DE68();
  v41 = v52;
  v42 = v54;
  sub_29E2C2484();
  (*(v37 + 8))(v38, v36);

  (*(v51 + 8))(v14, v42);
  sub_29E12DA58(0, &qword_2A181D670, MEMORY[0x29EDBBF68], MEMORY[0x29EDC9E90]);
  sub_29E2C17C4();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29E2CAB20;
  sub_29E2C17B4();
  v65 = v42;
  v66 = MEMORY[0x29EDC99B0];
  v67 = v39;
  v68 = v40;
  v44 = swift_getOpaqueTypeConformance2();
  v46 = v58;
  v45 = v59;
  MEMORY[0x29ED7EBF0](0, v43, v59, v44);

  v47 = (*(v55 + 8))(v41, v45);
  MEMORY[0x2A1C7C4A8](v47);
  *(&v50 - 2) = v62;
  sub_29E12F964(0);
  v65 = v45;
  v66 = v44;
  swift_getOpaqueTypeConformance2();
  sub_29E12E970(&qword_2A181D6C8, sub_29E12F964, MEMORY[0x29EDBBFF0]);
  v48 = v61;
  sub_29E2C2574();
  return (*(v60 + 8))(v46, v48);
}

uint64_t sub_29E125B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29E2C3384();
  v48 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v46 = &v46 - v8;
  sub_29E12E06C(0, v7);
  v61 = v9;
  v51 = *(v9 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E12DFB8(0, v10);
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_29E12E11C(0);
  sub_29E12E970(&qword_2A181D628, sub_29E12E11C, MEMORY[0x29EDBCC30]);
  sub_29E2C21C4();
  v16 = (a1 + *(type metadata accessor for EditPregnancyView(0) + 24));
  v18 = *v16;
  v17 = v16[1];
  v54 = v18;
  v66 = v18;
  v67 = v17;
  v53 = v17;
  sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
  v50 = v19;
  sub_29E2C27F4();
  v20 = v68;
  v21 = v69;
  v22 = v70;
  swift_getKeyPath();
  v68 = v20;
  v69 = v21;
  v70 = v22;
  sub_29E12DA58(0, &qword_2A181D6D8, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB78]);
  sub_29E2C2934();

  v23 = v46;

  v24 = v48;

  v25 = v49;

  v57 = a1;
  v62 = a1;
  v26 = sub_29E12E970(&qword_2A181D630, sub_29E12E06C, MEMORY[0x29EDBC0F0]);
  v56 = v15;
  v27 = v52;
  v28 = v61;
  v47 = v26;
  sub_29E2C2504();

  (*(v51 + 8))(v12, v28);
  sub_29E2C3314();
  (*(v24 + 16))(v27, v23, v25);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v29 = qword_2A1A67F80;
  sub_29E2BCC74();
  v30 = sub_29E2C3414();
  v32 = v31;
  (*(v24 + 8))(v23, v25);
  v68 = v30;
  v69 = v32;
  sub_29DE9DE68();
  v33 = sub_29E2C2294();
  v35 = v34;
  v37 = v36;
  v55 = v38;
  v66 = v54;
  v67 = v53;
  sub_29E2C27F4();
  v39 = v68;
  v40 = v69;
  v41 = v70;
  swift_getKeyPath();
  v68 = v39;
  v69 = v40;
  v70 = v41;
  sub_29E2C2934();

  MEMORY[0x2A1C7C4A8](v42);
  sub_29E12EEE0(0);
  v64 = v61;
  v65 = v47;
  swift_getOpaqueTypeConformance2();
  sub_29E12E970(&qword_2A181D650, sub_29E12EEE0, MEMORY[0x29EDBCC30]);
  v43 = v59;
  v44 = v56;
  sub_29E2C2514();

  sub_29DED6478(v33, v35, v37 & 1);

  return (*(v58 + 8))(v44, v43);
}

uint64_t sub_29E126304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  sub_29E12E2AC(0, &qword_2A181D5E0, sub_29E12EAA8, sub_29E12E9B8, MEMORY[0x29EDBC558]);
  v95 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v97 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v96 = &v80 - v6;
  v90 = type metadata accessor for EditPregnancyView.PastPregnancySection(0);
  MEMORY[0x2A1C7C4A8](v90);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E12E2AC(0, &qword_2A181D6F0, type metadata accessor for EditPregnancyView.OngoingPregnancySection, type metadata accessor for EditPregnancyView.PastPregnancySection, MEMORY[0x29EDBC7E8]);
  v87 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v89 = &v80 - v9;
  v88 = type metadata accessor for EditPregnancyView.OngoingPregnancySection(0);
  MEMORY[0x2A1C7C4A8](v88);
  v80 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E12EA20(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v94 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v99 = &v80 - v14;
  v15 = sub_29E2C1AD4();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E12E3B8(0);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E12E4FC(0, &qword_2A181D540, sub_29E12E3B8, MEMORY[0x29EDBC5F8]);
  v23 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v80 - v27;
  sub_29E12E21C(0);
  v30 = v29 - 8;
  MEMORY[0x2A1C7C4A8](v29);
  v93 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v34 = &v80 - v33;
  *v21 = sub_29E2C1BC4();
  *(v21 + 1) = 0;
  v21[16] = 0;
  sub_29E130214(0);
  sub_29E1222D4(a1, &v21[*(v35 + 44)]);
  sub_29E2C2AB4();
  sub_29E2C17D4();
  sub_29E1305F4(v21, v25, sub_29E12E3B8);
  v36 = &v25[*(v23 + 36)];
  v37 = v112;
  v38 = v113;
  *(v36 + 4) = v111;
  *(v36 + 5) = v37;
  *(v36 + 6) = v38;
  v39 = v108;
  *v36 = v107;
  *(v36 + 1) = v39;
  v40 = v110;
  *(v36 + 2) = v109;
  *(v36 + 3) = v40;
  sub_29E13027C(v25, v28);
  sub_29E130304();
  sub_29E2C29D4();
  sub_29E2C1AB4();
  sub_29E12E264(0);
  v42 = *(v41 + 36);
  v43 = v16[2];
  v85 = v16 + 2;
  v84 = v43;
  v43(&v34[v42], v18, v15);
  v44 = v16[7];
  v44(&v34[v42], 0, 1, v15);
  KeyPath = swift_getKeyPath();
  v46 = &v34[*(v30 + 44)];
  sub_29E12E9B8(0);
  v82 = v47;
  v48 = *(v47 + 28);
  v49 = v16[4];
  v91 = v18;
  v92 = v16 + 4;
  v83 = v49;
  v49(v46 + v48, v18, v15);
  v86 = v44;
  v44(v46 + v48, 0, 1, v15);
  *v46 = KeyPath;
  v50 = (a1 + *(type metadata accessor for EditPregnancyView(0) + 24));
  v52 = *v50;
  v51 = v50[1];
  v100 = v52;
  v101 = v51;
  sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  LOBYTE(v48) = *(v106 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancyOccurrenceType);

  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  type metadata accessor for PregnancyDatesInputViewModel(0);
  sub_29E12E970(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  if (v48)
  {
    v53 = v81;
    sub_29E2C2A44();
    sub_29E1303D8(v53, v89, type metadata accessor for EditPregnancyView.PastPregnancySection);
    swift_storeEnumTagMultiPayload();
    sub_29E12E970(&qword_2A181D710, type metadata accessor for EditPregnancyView.OngoingPregnancySection, &unk_29E2E0CC8);
    sub_29E12E970(&qword_2A181D718, type metadata accessor for EditPregnancyView.PastPregnancySection, &unk_29E2E0C78);
    sub_29E2C1C74();
    v54 = type metadata accessor for EditPregnancyView.PastPregnancySection;
  }

  else
  {
    v53 = v80;
    sub_29E2C2A44();
    sub_29E1303D8(v53, v89, type metadata accessor for EditPregnancyView.OngoingPregnancySection);
    swift_storeEnumTagMultiPayload();
    sub_29E12E970(&qword_2A181D710, type metadata accessor for EditPregnancyView.OngoingPregnancySection, &unk_29E2E0CC8);
    sub_29E12E970(&qword_2A181D718, type metadata accessor for EditPregnancyView.PastPregnancySection, &unk_29E2E0C78);
    sub_29E2C1C74();
    v54 = type metadata accessor for EditPregnancyView.OngoingPregnancySection;
  }

  v55 = sub_29E130440(v53, v54);
  v56 = MEMORY[0x2A1C7C4A8](v55);
  sub_29E12EB18(0, v56);
  sub_29E12EC30(255);
  v58 = v57;
  sub_29E12EE1C(255);
  v60 = v59;
  v61 = sub_29E12E970(&qword_2A181D620, sub_29E12EC30, MEMORY[0x29EDBC278]);
  v62 = sub_29E12E970(&qword_2A181AA88, sub_29E12EE1C, MEMORY[0x29EDBCC30]);
  v100 = v58;
  v101 = v60;
  v102 = MEMORY[0x29EDBCA18];
  v103 = v61;
  v104 = v62;
  v105 = MEMORY[0x29EDBCA10];
  swift_getOpaqueTypeConformance2();
  v63 = v96;
  sub_29E2C29F4();
  v64 = v91;
  sub_29E2C1AB4();
  sub_29E12EAA8(0);
  v66 = *(v65 + 36);
  v84(v63 + v66, v64, v15);
  v67 = v86;
  v86((v63 + v66), 0, 1, v15);
  v68 = swift_getKeyPath();
  v69 = (v63 + *(v95 + 36));
  v70 = *(v82 + 28);
  v83(v69 + v70, v64, v15);
  v67(v69 + v70, 0, 1, v15);
  *v69 = v68;
  v71 = v93;
  sub_29E1303D8(v34, v93, sub_29E12E21C);
  v72 = v99;
  v73 = v94;
  sub_29E1303D8(v99, v94, sub_29E12EA20);
  v74 = v97;
  sub_29DE86B0C(v63, v97);
  v75 = v98;
  sub_29E1303D8(v71, v98, sub_29E12E21C);
  sub_29E12E150(0, v76);
  v78 = v77;
  sub_29E1303D8(v73, v75 + *(v77 + 48), sub_29E12EA20);
  sub_29DE86B0C(v74, v75 + *(v78 + 64));
  sub_29DE86BB4(v63);
  sub_29E130440(v72, sub_29E12EA20);
  sub_29E130440(v34, sub_29E12E21C);
  sub_29DE86BB4(v74);
  sub_29E130440(v73, sub_29E12EA20);
  return sub_29E130440(v71, sub_29E12E21C);
}

uint64_t sub_29E127054()
{
  swift_getKeyPath();
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  return *(v0 + 18);
}

void sub_29E1270F4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  *a2 = *(v3 + 18);
}

void sub_29E12719C(char a1)
{
  if (*(v1 + 18) == (a1 & 1))
  {
    *(v1 + 18) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
    sub_29E2BCFD4();
  }
}

uint64_t sub_29E1272AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_29E12DA58(0, &qword_2A181D6E8, MEMORY[0x29EDBC258], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v66 = v51 - v4;
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C3384();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v51 - v13;
  v15 = type metadata accessor for EditPregnancyView(0);
  v16 = *(v15 + 20);
  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v58 = a1;
  v59 = v16;
  v61 = v17;
  sub_29E2C2A24();

  sub_29E2C3314();
  v60 = *(v9 + 16);
  v60(v11, v14, v8);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v57 = "EDING_ALERT_MESSAGE";
  v18 = qword_2A1A67F80;
  v19 = qword_2A1A67F80;
  v56 = v18;
  v20 = v19;
  sub_29E2BCC74();
  v21 = v20;
  v22 = sub_29E2C3414();
  v54 = v7;
  v24 = v23;
  v25 = *(v9 + 8);
  v51[0] = v9 + 8;
  v55 = v25;
  v25(v14, v8);
  v69 = v22;
  v70 = v24;
  sub_29DE9DE68();
  v53 = v8;
  v26 = sub_29E2C2294();
  v64 = v27;
  v65 = v26;
  v62 = v28;
  v63 = v29;
  v30 = v58;
  sub_29E2C2A24();
  v52 = v69;
  v31 = (v30 + *(v15 + 24));
  v33 = *v31;
  v32 = v31[1];
  v69 = v33;
  v70 = v32;
  sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  v34 = v68;
  swift_getKeyPath();
  v69 = v34;
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  LOBYTE(v22) = *(v34 + 19);

  v35 = sub_29E0461EC(v22);
  v37 = v36;

  v69 = v35;
  v70 = v37;
  v52 = sub_29E2C2294();
  v51[2] = v38;
  v51[1] = v39;
  sub_29E2C2A24();

  sub_29E2C3314();
  v40 = v53;
  v60(v11, v14, v53);
  sub_29E2BCC74();
  v41 = sub_29E2C3414();
  v43 = v42;
  v55(v14, v40);
  v69 = v41;
  v70 = v43;
  v44 = sub_29E2C2294();
  v46 = v45;
  LOBYTE(v40) = v47;
  v48 = v66;
  sub_29E2C25F4();
  sub_29DED6478(v44, v46, v40 & 1);

  v49 = sub_29E2C2604();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  return sub_29E2C25C4();
}

uint64_t sub_29E1278BC()
{
  swift_getKeyPath();
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  return *(v0 + 19);
}

uint64_t sub_29E12795C()
{
  swift_getKeyPath();
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  return *(v0 + 17);
}

void sub_29E1279FC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  *a2 = *(v3 + 17);
}

void sub_29E127AA4(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
    sub_29E2BCFD4();
  }
}

uint64_t sub_29E127BB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a1;
  v58 = a2;
  sub_29E12DA58(0, &qword_2A181D6E0, MEMORY[0x29EDBBE78], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v57 = &v46 - v4;
  v5 = sub_29E2C1784();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditPregnancyView(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v48 = v10;
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E13149C(0, &qword_2A18182B0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  v13 = v12;
  v51 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v56 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v18 = &v46 - v17;
  sub_29E12EFB0(0, v16);
  v53 = v19;
  v59 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v52 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v46 - v22;
  v49 = type metadata accessor for EditPregnancyView;
  sub_29E1303D8(a1, v11, type metadata accessor for EditPregnancyView);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  sub_29E1305F4(v11, v25 + v24, type metadata accessor for EditPregnancyView);
  sub_29E2C2824();
  sub_29E2C1774();
  sub_29E0141FC();
  v26 = v23;
  v47 = v23;
  sub_29E2C2404();
  (*(v54 + 8))(v7, v55);
  v27 = v51;
  v54 = *(v51 + 8);
  v55 = v51 + 8;
  v28 = v13;
  (v54)(v18, v13);
  v29 = v57;
  sub_29E2C13E4();
  v30 = sub_29E2C13F4();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  sub_29E1303D8(v50, v11, v49);
  v31 = swift_allocObject();
  sub_29E1305F4(v11, v31 + v24, type metadata accessor for EditPregnancyView);
  sub_29E2C2814();
  v32 = *(v59 + 16);
  v33 = v52;
  v34 = v26;
  v35 = v53;
  v32(v52, v34, v53);
  v36 = *(v27 + 16);
  v37 = v56;
  v36(v56, v18, v28);
  v38 = v58;
  v39.n128_f64[0] = v32(v58, v33, v35);
  sub_29E12EF14(0, v39);
  v36(&v38[*(v40 + 48)], v37, v28);
  v41 = v28;
  v42 = v28;
  v43 = v54;
  (v54)(v18, v41);
  v44 = *(v59 + 8);
  v44(v47, v35);
  v43(v37, v42);
  return (v44)(v33, v35);
}

uint64_t sub_29E12819C(uint64_t a1)
{
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v23 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v21 = &v19 - v5;
  v6 = sub_29E2BCBB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v24 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v26 = a1;
  sub_29E12E970(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2BCFE4();

  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
  swift_beginAccess();
  v20 = v7;
  v10 = *(v7 + 16);
  v11 = v24;
  v10(v24, a1 + v9, v6);
  swift_getKeyPath();
  v25 = a1;
  sub_29E2BCFE4();

  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__estimatedDueDate;
  swift_beginAccess();
  v13 = (v22 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator);
  v22 = sub_29DE966D4((v22 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator), *(v22 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator + 24));
  v14 = v21;
  v10(v21, v11, v6);
  v15 = *(v7 + 56);
  v15(v14, 0, 1, v6);
  v16 = a1 + v12;
  v17 = v23;
  v10(v23, v16, v6);
  v15(v17, 0, 1, v6);
  sub_29DFED01C(v14, v17);
  sub_29E130440(v17, sub_29DEB3B00);
  sub_29E130440(v14, sub_29DEB3B00);
  sub_29DE966D4(v13, v13[3]);
  sub_29DFEDFD4(nullsub_1, 0);
  return (*(v20 + 8))(v24, v6);
}

uint64_t sub_29E1284F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v18 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_29DE9DE68();
  result = sub_29E2C2294();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_29E12871C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v18 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_29DE9DE68();
  result = sub_29E2C2294();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_29E128940@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v18 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_29DE9DE68();
  result = sub_29E2C2294();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_29E128B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  sub_29E12F9EC(0, &qword_2A181D680, sub_29E12FA68, sub_29E12FB84);
  v19[0] = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = v19 - v4;
  sub_29E12FB84(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C1D14();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  sub_29E12FA68(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C1CB4();
  v19[8] = a1;
  sub_29E12FB1C(0);
  sub_29E131038(&qword_2A181D698, sub_29E12FB1C, sub_29E12FB50, MEMORY[0x29EDBCC48]);
  sub_29E2C14E4();
  sub_29E2C1CC4();
  v19[4] = a1;
  sub_29E12FBF4(0);
  sub_29E12FC80();
  sub_29E2C14E4();
  v17 = *(v19[0] + 48);
  (*(v14 + 16))(v5, v16, v13);
  (*(v8 + 16))(&v5[v17], v10, v7);
  sub_29E2C1C14();
  (*(v8 + 8))(v10, v7);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_29E128EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EditPregnancyView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = sub_29E2C2BE4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(v6 + 32));
  v15 = *v13;
  v14 = v13[1];
  v20[2] = v15;
  v20[3] = v14;
  sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  LODWORD(v6) = *(v20[1] + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_shouldShowCancelButton);

  if (v6 == 1)
  {
    sub_29E1303D8(a1, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditPregnancyView);
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    sub_29E1305F4(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for EditPregnancyView);
    sub_29E2C2BB4();
    (*(v10 + 32))(a2, v12, v9);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v10 + 56))(a2, v18, 1, v9);
}

double sub_29E12912C(uint64_t a1, __n128 a2)
{
  type metadata accessor for EditPregnancyView(0);
  sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29DE966D4((v3 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator), *(v3 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator + 24));
  sub_29DFEDFD4(nullsub_1, 0);

  return result;
}

void sub_29E1291F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EditPregnancyView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  sub_29E1303D8(a1, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditPregnancyView);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_29E1305F4(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for EditPregnancyView);
  sub_29E2C2BB4();
  LOBYTE(a1) = sub_29E121EFC();
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = a1 & 1;
  sub_29E12FBF4(0);
  v13 = (a2 + *(v12 + 36));
  *v13 = KeyPath;
  v13[1] = sub_29E12FF1C;
  v13[2] = v11;
}

double sub_29E12937C(uint64_t a1, void (*a2)(uint64_t), __n128 a3)
{
  v5 = *(a1 + *(type metadata accessor for EditPregnancyView(0) + 24));
  sub_29E12DA58(0, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  a2(v5);

  return result;
}

double sub_29E129488(uint64_t a1)
{
  v2 = v1;
  v51 = *v1;
  v52 = a1;
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v46 - v8;
  v10 = sub_29E2C0514();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v46 - v14;
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel___observationRegistrar;
  v57 = v1;
  v54 = sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  v17 = *(v1 + 21);
  v53 = v16;
  if (v17)
  {
    sub_29E2C04B4();

    v18 = sub_29E2C0504();
    v19 = sub_29E2C3A34();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v58 = v21;
      *v20 = 136315394;
      v57 = v51;
      swift_getMetatypeMetadata();
      v22 = sub_29E2C3464();
      v24 = sub_29DFAA104(v22, v23, &v58);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      swift_getKeyPath();
      v57 = v1;
      sub_29E2BCFE4();

      LOBYTE(v57) = *(v1 + 21);
      v25 = sub_29E2C3424();
      v27 = sub_29DFAA104(v25, v26, &v58);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_29DE74000, v18, v19, "[%s] User tapped done but we're already processing an action %s, ignoring tap", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v21, -1, -1);
      MEMORY[0x29ED82140](v20, -1, -1);
    }

    (*(v55 + 8))(v15, v56);
  }

  else
  {
    v48 = v4;
    v49 = v9;
    v47 = v6;
    v50 = v3;
    sub_29E2C04B4();
    v29 = sub_29E2C0504();
    v30 = sub_29E2C3A34();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v58 = v32;
      *v31 = 136315138;
      v57 = v51;
      swift_getMetatypeMetadata();
      v33 = sub_29E2C3464();
      v35 = sub_29DFAA104(v33, v34, &v58);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_29DE74000, v29, v30, "[%s] User tapped done", v31, 0xCu);
      sub_29DE93B3C(v32);
      MEMORY[0x29ED82140](v32, -1, -1);
      MEMORY[0x29ED82140](v31, -1, -1);
    }

    (*(v55 + 8))(v12, v56);
    v36 = v49;
    v37 = v50;
    if (*(v2 + 21) != 2)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath);
      *(&v46 - 2) = v2;
      *(&v46 - 8) = 2;
      v57 = v2;
      sub_29E2BCFD4();
    }

    v39 = v48;
    if (sub_29E12D014())
    {
      sub_29E2BCA84();
      v40 = sub_29E2BCB34();
      v41 = *(v39 + 8);
      v41(v36, v37);
      if ((v40 & 1) != 0 && (swift_getKeyPath(), v56 = 0, v42 = v52, v57 = v52, sub_29E12E970(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0), sub_29E2BCFE4(), , v43 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate, swift_beginAccess(), (*(v39 + 16))(v36, v42 + v43, v37), v44 = v47, sub_29E2BCA84(), sub_29E12E970(&qword_2A181D9C0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]), LOBYTE(v43) = sub_29E2C3304(), v41(v44, v37), v41(v36, v37), (v43 & 1) == 0))
      {
        sub_29E12D2D4(v52);
        *(*sub_29DE966D4((v2 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator), *(v2 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator + 24)) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_flowType) = 2;
        sub_29DFEB3D0(0, 0, 0);
        if (sub_29DFEBE08())
        {
          sub_29DFEC13C(1);
        }

        else
        {
          sub_29DFEC3C8(1);
        }
      }

      else
      {
        sub_29DE966D4((v2 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator), *(v2 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator + 24));
        if (sub_29DFEBE08() && (*(v2 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancyOccurrenceType) & 1) == 0)
        {
          sub_29E12D2D4(v52);
          if (*(v2 + 17) == 1)
          {
            *(v2 + 17) = 1;
          }

          else
          {
            v45 = swift_getKeyPath();
            MEMORY[0x2A1C7C4A8](v45);
            *(&v46 - 2) = v2;
            *(&v46 - 8) = 1;
            v58 = v2;
            sub_29E2BCFD4();
          }
        }

        else
        {
          sub_29E12D514(v52);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29E129CDC@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v4 = sub_29E2C1AD4();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E12E2AC(0, &qword_2A181D740, sub_29E1308E8, sub_29E12E9B8, MEMORY[0x29EDBC558]);
  v57 = v6;
  v53 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v46 = &v46 - v7;
  sub_29E1309C4(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v50 = &v46 - v12;
  sub_29E130A60(0, v11);
  v51 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v54 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v46 - v17;
  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v19 = v59;
  swift_getKeyPath();
  v59 = v19;
  sub_29E12E970(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2BCFE4();

  v20 = *(v19 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

  LOBYTE(v59) = v20 != 1;
  v58 = a1;
  sub_29E130AF4(0);
  sub_29E130C54(0, &qword_2A181D780, &type metadata for PregnancyPrivacyFooterView, MEMORY[0x29EDC9C68]);
  sub_29E12E970(&qword_2A181D788, sub_29E130AF4, MEMORY[0x29EDBCC30]);
  sub_29E130CAC();
  v52 = v18;
  sub_29E2C2A04();
  sub_29E2C2A24();
  v21 = v59;
  swift_getKeyPath();
  v59 = v21;
  sub_29E2BCFE4();

  v22 = *(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

  if (v22 == 1)
  {
    v24 = 1;
    v25 = v50;
  }

  else
  {
    MEMORY[0x2A1C7C4A8](v23);
    *(&v46 - 2) = a1;
    type metadata accessor for EstimatedDueDateView(0);
    sub_29E12E970(&qword_2A181D7A0, type metadata accessor for EstimatedDueDateView, &unk_29E2DBA68);
    sub_29E130D48();
    v26 = v46;
    sub_29E2C2A04();
    v27 = v47;
    sub_29E2C1AB4();
    sub_29E1308E8(0);
    v29 = *(v28 + 36);
    v31 = v48;
    v30 = v49;
    (*(v48 + 16))(v26 + v29, v27, v49);
    v32 = *(v31 + 56);
    v32(v26 + v29, 0, 1, v30);
    KeyPath = swift_getKeyPath();
    v34 = (v26 + *(v57 + 36));
    sub_29E12E9B8(0);
    v36 = *(v35 + 28);
    (*(v31 + 32))(v34 + v36, v27, v30);
    v32(v34 + v36, 0, 1, v30);
    *v34 = KeyPath;
    v25 = v50;
    sub_29E130DA4(v26, v50);
    v24 = 0;
  }

  (*(v53 + 56))(v25, v24, 1, v57);
  v37 = *(v14 + 16);
  v38 = v54;
  v39 = v51;
  v40 = v52;
  v37(v54, v52, v51);
  v41 = v55;
  sub_29E1303D8(v25, v55, sub_29E1309C4);
  v42 = v56;
  v37(v56, v38, v39);
  sub_29E12F9EC(0, &qword_2A181D7A8, sub_29E130A60, sub_29E1309C4);
  sub_29E1303D8(v41, &v42[*(v43 + 48)], sub_29E1309C4);
  sub_29E130440(v25, sub_29E1309C4);
  v44 = *(v14 + 8);
  v44(v40, v39);
  sub_29E130440(v41, sub_29E1309C4);
  return (v44)(v38, v39);
}

uint64_t sub_29E12A424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_29E12E2AC(0, &qword_2A1818688, sub_29DEE1618, type metadata accessor for EndDatePickerRow, MEMORY[0x29EDBC7E8]);
  v57 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v56 = &v46 - v4;
  v53 = type metadata accessor for EndDatePickerRow(0);
  MEMORY[0x2A1C7C4A8](v53);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E058EF8(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v55 = &v46 - v9;
  v50 = sub_29E2BEFA4();
  v10 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E130BB0(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v60 = &v46 - v16;
  started = type metadata accessor for PregnancyStartDateMethodInputRow(0);
  v18 = started - 8;
  MEMORY[0x2A1C7C4A8](started);
  v51 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v22 = (&v46 - v21);
  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  *v22 = swift_getKeyPath();
  sub_29E12DA58(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  v49 = v22;
  swift_storeEnumTagMultiPayload();
  v48 = type metadata accessor for PregnancyDatesInputViewModel(0);
  sub_29E12E970(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2C2A44();
  v23 = v22 + *(v18 + 32);
  v61 = 0;
  sub_29E2C27C4();
  v24 = v63;
  *v23 = v62;
  *(v23 + 1) = v24;
  v46 = a1;
  sub_29E2C2A24();
  v25 = v62;
  sub_29E2C2A24();
  v26 = v62;
  swift_getKeyPath();
  v62 = v26;
  sub_29E2BCFE4();

  LODWORD(v23) = *(v26 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

  v27 = v10;
  v28 = *(v10 + 104);
  v29 = v50;
  v28(v12, *MEMORY[0x29EDC2490], v50);
  sub_29E0562FC(v25, v23, v12, v60);

  v47 = *(v10 + 8);
  v30 = v29;
  v47(v12, v29);
  sub_29E2C2A24();
  v28(v12, *MEMORY[0x29EDC2498], v29);
  v32 = v52;
  v31 = v53;
  (*(v27 + 16))(&v52[*(v53 + 20)], v12, v30);

  sub_29E2C2A44();
  *(v32 + *(v31 + 24)) = 0;
  sub_29E1303D8(v32, v56, type metadata accessor for EndDatePickerRow);
  swift_storeEnumTagMultiPayload();
  sub_29DEE1618(0, v33);
  sub_29E130E4C(v34);
  sub_29E12E970(&qword_2A1818718, type metadata accessor for EndDatePickerRow, &unk_29E2DFB64);
  v35 = v55;
  sub_29E2C1C74();

  sub_29E130440(v32, type metadata accessor for EndDatePickerRow);
  v47(v12, v30);
  v36 = v49;
  v37 = v51;
  sub_29E1303D8(v49, v51, type metadata accessor for PregnancyStartDateMethodInputRow);
  v38 = v60;
  v39 = v54;
  sub_29E1303D8(v60, v54, sub_29E130BB0);
  v40 = v58;
  sub_29E1303D8(v35, v58, sub_29E058EF8);
  v41 = v59;
  sub_29E1303D8(v37, v59, type metadata accessor for PregnancyStartDateMethodInputRow);
  sub_29E130B28(0, v42);
  v44 = v43;
  sub_29E1303D8(v39, v41 + *(v43 + 48), sub_29E130BB0);
  sub_29E1303D8(v40, v41 + *(v44 + 64), sub_29E058EF8);
  sub_29E130440(v35, sub_29E058EF8);
  sub_29E130440(v38, sub_29E130BB0);
  sub_29E130440(v36, type metadata accessor for PregnancyStartDateMethodInputRow);
  sub_29E130440(v40, sub_29E058EF8);
  sub_29E130440(v39, sub_29E130BB0);
  return sub_29E130440(v37, type metadata accessor for PregnancyStartDateMethodInputRow);
}

uint64_t sub_29E12ABC4@<X0>(uint64_t *a1@<X8>)
{
  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  *a1 = swift_getKeyPath();
  sub_29E12DA58(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EstimatedDueDateView(0);
  type metadata accessor for PregnancyDatesInputViewModel(0);
  sub_29E12E970(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  return sub_29E2C2A44();
}

uint64_t sub_29E12ACFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v88 = a2;
  v86 = type metadata accessor for EndDatePickerRow(0);
  MEMORY[0x2A1C7C4A8](v86);
  v87 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x29EDBC7E8];
  sub_29E12E2AC(0, &qword_2A1818688, sub_29DEE1618, type metadata accessor for EndDatePickerRow, MEMORY[0x29EDBC7E8]);
  v90 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v80 = &v62 - v5;
  sub_29E12E2AC(0, &qword_2A1818690, sub_29DEE1660, sub_29DEE174C, v3);
  v83 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v74 = &v62 - v7;
  sub_29E12E2AC(0, &qword_2A1818698, sub_29DEE1794, sub_29DEE17DC, v3);
  v79 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v76 = &v62 - v9;
  sub_29E12E2AC(0, &qword_2A18186A0, type metadata accessor for EmbryoTransferDatePickerRow, type metadata accessor for PastPregnancyStartDatePickerRow, v3);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v13 = &v62 - v12;
  sub_29DEE17DC(0, v11);
  v77 = v14;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEE174C(0, v15);
  v78 = v18;
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEE1618(0, v19);
  v82 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v75 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for PastPregnancyStartDatePickerRow(0);
  MEMORY[0x2A1C7C4A8](started);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29E2BEFA4();
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E058EF8(0);
  MEMORY[0x2A1C7C4A8](v31 - 8);
  v85 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33);
  v84 = &v62 - v34;
  MEMORY[0x2A1C7C4A8](v35);
  v81 = &v62 - v36;
  MEMORY[0x2A1C7C4A8](v37);
  v89 = &v62 - v38;
  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v72 = v39;
  sub_29E2C2A24();
  v71 = *MEMORY[0x29EDC2490];
  v91 = v28;
  v40 = *(v28 + 104);
  v69 = v28 + 104;
  v70 = v40;
  v64 = v30;
  v40(v30);
  v41 = *(started + 20);
  v42 = *(v28 + 16);
  v67 = v28 + 16;
  v68 = v42;
  v42(&v26[v41], v30, v27);
  v66 = type metadata accessor for PregnancyDatesInputViewModel(0);
  v65 = sub_29E12E970(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);

  v63 = v26;
  sub_29E2C2A44();
  sub_29E1303D8(v26, v13, type metadata accessor for PastPregnancyStartDatePickerRow);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EmbryoTransferDatePickerRow(0);
  sub_29E12E970(&qword_2A18186A8, type metadata accessor for EmbryoTransferDatePickerRow, &unk_29E2E34A0);
  sub_29E12E970(&qword_2A18186B0, type metadata accessor for PastPregnancyStartDatePickerRow, &unk_29E2CDAB0);
  sub_29E2C1C74();
  sub_29E1303D8(v17, v76, sub_29DEE17DC);
  swift_storeEnumTagMultiPayload();
  sub_29DEE1794(0, v43);
  sub_29DEE19CC(v44);
  sub_29DEE1AAC(v45);
  sub_29E2C1C74();
  sub_29E130440(v17, sub_29DEE17DC);
  sub_29E1303D8(v21, v74, sub_29DEE174C);
  swift_storeEnumTagMultiPayload();
  sub_29DEE1660(0, v46);
  sub_29DEE1B8C();
  sub_29DEE1D5C();
  v47 = v75;
  sub_29E2C1C74();
  sub_29E130440(v21, sub_29DEE174C);
  v48 = v80;
  sub_29E1303D8(v47, v80, sub_29DEE1618);
  swift_storeEnumTagMultiPayload();
  v83 = sub_29E130E4C(v49);
  sub_29E12E970(&qword_2A1818718, type metadata accessor for EndDatePickerRow, &unk_29E2DFB64);
  v50 = v86;
  sub_29E2C1C74();

  sub_29E130440(v47, sub_29DEE1618);
  sub_29E130440(v63, type metadata accessor for PastPregnancyStartDatePickerRow);
  v51 = *(v91 + 8);
  v91 += 8;
  v52 = v64;
  v51(v64, v27);
  sub_29E2C2A24();
  v70(v52, v71, v27);
  v53 = v87;
  v68(&v87[*(v50 + 20)], v52, v27);

  sub_29E2C2A44();
  *(v53 + *(v50 + 24)) = 1;
  sub_29E1303D8(v53, v48, type metadata accessor for EndDatePickerRow);
  swift_storeEnumTagMultiPayload();
  v54 = v81;
  sub_29E2C1C74();

  sub_29E130440(v53, type metadata accessor for EndDatePickerRow);
  v51(v52, v27);
  v55 = v89;
  v56 = v84;
  sub_29E1303D8(v89, v84, sub_29E058EF8);
  v57 = v85;
  sub_29E1303D8(v54, v85, sub_29E058EF8);
  v58 = v88;
  sub_29E1303D8(v56, v88, sub_29E058EF8);
  sub_29E058E94(0, v59);
  sub_29E1303D8(v57, v58 + *(v60 + 48), sub_29E058EF8);
  sub_29E130440(v54, sub_29E058EF8);
  sub_29E130440(v55, sub_29E058EF8);
  sub_29E130440(v57, sub_29E058EF8);
  return sub_29E130440(v56, sub_29E058EF8);
}

uint64_t sub_29E12B810(__n128 a1)
{
  sub_29E2C1BD4();
  sub_29E058E3C(0, v1);
  sub_29E130ED4(0);
  sub_29E12E970(&qword_2A181B5A8, sub_29E058E3C, MEMORY[0x29EDBCC30]);
  sub_29E12E970(&qword_2A181D7D0, sub_29E130ED4, MEMORY[0x29EDBCB58]);
  return sub_29E2C2A04();
}

void sub_29E12B910(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  *a2 = *(v3 + 19);
}

void sub_29E12B9B8(char a1)
{
  if (*(v1 + 19) == (a1 & 1))
  {
    *(v1 + 19) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
    sub_29E2BCFD4();
  }
}

uint64_t sub_29E12BAC8()
{
  swift_getKeyPath();
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  return *(v0 + 21);
}

void sub_29E12BB68(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  *a2 = *(v3 + 21);
}

double sub_29E12BC10(unsigned __int8 a1)
{
  if (*(v1 + 21) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
    sub_29E2BCFD4();
  }

  return result;
}

uint64_t sub_29E12BD18(char a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v102 = a5;
  v91 = sub_29E2C0424();
  v90 = *(v91 - 8);
  MEMORY[0x2A1C7C4A8](v91);
  v89 = &v85[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29E2C03E4();
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v85[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_29E2C2B34();
  v100 = *(v12 - 8);
  v101 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v97 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_29E2C2B54();
  v98 = *(v14 - 8);
  v99 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v96 = &v85[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_29E2BCC24();
  v92 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v85[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_29E2C0514();
  v93 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v85[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v85[-v23];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v27 = HKShowSensitiveLogItems();
    if (a1)
    {
      v88 = a4;
      if (v27)
      {
        sub_29E2C04B4();

        v28 = sub_29E2C0504();
        v29 = sub_29E2C3A34();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          aBlock = v95;
          *v30 = 136315394;
          v31 = sub_29E2C4AE4();
          v33 = sub_29DFAA104(v31, v32, &aBlock);

          *(v30 + 4) = v33;
          *(v30 + 12) = 2080;
          v34 = [*(v26 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancySample) UUID];
          sub_29E2BCC04();

          v35 = sub_29E2BCBD4();
          v37 = v36;
          (*(v92 + 8))(v18, v16);
          v38 = sub_29DFAA104(v35, v37, &aBlock);

          *(v30 + 14) = v38;
          _os_log_impl(&dword_29DE74000, v28, v29, "[%s] Successfully deleted sample %s", v30, 0x16u);
          v39 = v95;
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v39, -1, -1);
          MEMORY[0x29ED82140](v30, -1, -1);
        }

        (*(v93 + 8))(v24, v19);
      }

      if (sub_29E1250B4())
      {
        sub_29DE966D4((v26 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator), *(v26 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator + 24));
        v40 = [*(v26 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancySample) UUID];
        sub_29E2BCC04();

        sub_29DFEEDF8(v18);
        (*(v92 + 8))(v18, v16);
      }

      v41 = (v26 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator);
      sub_29DE966D4((v26 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator), *(v26 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator + 24));
      sub_29DFF4834();
      sub_29DE966D4(v41, v41[3]);
      sub_29DFEB0C0(14);
      sub_29DEB1E60();
      v42 = sub_29E2C3CF4();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      v45 = v88;
      v44[2] = v43;
      v44[3] = v45;
      v44[4] = v102;
      v108 = sub_29E1305E0;
      v109 = v44;
      aBlock = MEMORY[0x29EDCA5F8];
      v105 = 1107296256;
      v106 = sub_29DF49BB8;
      v107 = &unk_2A24BBFE0;
      v46 = _Block_copy(&aBlock);

      v47 = v96;
      sub_29E2C2B44();
      aBlock = MEMORY[0x29EDCA190];
      sub_29E12E970(&qword_2A1A626F0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
      sub_29DF013C4(0);
      sub_29E12E970(&qword_2A1A626D0, sub_29DF013C4, MEMORY[0x29EDC9A70]);
      v48 = v97;
      v49 = v101;
      sub_29E2C43F4();
      MEMORY[0x29ED804D0](0, v47, v48, v46);
      _Block_release(v46);

      (*(v100 + 8))(v48, v49);
      return (*(v98 + 8))(v47, v99);
    }

    else
    {
      if (v27)
      {
        sub_29E2C04B4();

        v50 = a2;
        v51 = sub_29E2C0504();
        v52 = sub_29E2C3A14();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v86 = v52;
          v54 = v53;
          v87 = swift_slowAlloc();
          aBlock = v87;
          *v54 = 136315650;
          v55 = sub_29E2C4AE4();
          v102 = v51;
          v57 = sub_29DFAA104(v55, v56, &aBlock);
          v88 = a4;
          v58 = v57;

          *(v54 + 4) = v58;
          *(v54 + 12) = 2080;
          v59 = [*(v26 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancySample) UUID];
          sub_29E2BCC04();

          v60 = sub_29E2BCBD4();
          v62 = v61;
          (*(v92 + 8))(v18, v16);
          v63 = sub_29DFAA104(v60, v62, &aBlock);

          *(v54 + 14) = v63;
          *(v54 + 22) = 2080;
          v103 = a2;
          v64 = a2;
          sub_29E12DA58(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
          v65 = sub_29E2C3424();
          v67 = sub_29DFAA104(v65, v66, &aBlock);
          a4 = v88;

          *(v54 + 24) = v67;
          v51 = v102;
          _os_log_impl(&dword_29DE74000, v102, v86, "[%s] Unable to delete sample with UUID %s error: %s", v54, 0x20u);
          v68 = v87;
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v68, -1, -1);
          MEMORY[0x29ED82140](v54, -1, -1);
        }

        (*(v93 + 8))(v21, v19);
      }

      if (a2)
      {
        v69 = sub_29E2BC7D4();
        if ([v69 hk:3 isHealthKitErrorWithCode:?])
        {
          sub_29DEB1E60();
          v70 = sub_29E2C3CF4();
          v71 = swift_allocObject();
          v88 = a4;
          v72 = v71;
          swift_weakInit();
          v108 = sub_29E130598;
          v109 = v72;
          aBlock = MEMORY[0x29EDCA5F8];
          v105 = 1107296256;
          v106 = sub_29DF49BB8;
          v107 = &unk_2A24BBF90;
          v73 = _Block_copy(&aBlock);

          v74 = v96;
          sub_29E2C2B44();
          aBlock = MEMORY[0x29EDCA190];
          sub_29E12E970(&qword_2A1A626F0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
          sub_29DF013C4(0);
          sub_29E12E970(&qword_2A1A626D0, sub_29DF013C4, MEMORY[0x29EDC9A70]);
          v75 = v97;
          v76 = v101;
          sub_29E2C43F4();
          MEMORY[0x29ED804D0](0, v74, v75, v73);
          _Block_release(v73);

          (*(v100 + 8))(v75, v76);
          (*(v98 + 8))(v74, v99);
        }

        else
        {
        }
      }

      v77 = sub_29E2C0404();
      sub_29E2C0434();
      v78 = sub_29E2C3D74();
      if (sub_29E2C42D4())
      {

        v79 = v89;
        sub_29E2C0464();

        v80 = v90;
        v81 = v91;
        if ((*(v90 + 88))(v79, v91) == *MEMORY[0x29EDCA4A8])
        {
          v82 = "[Error] Interval already ended";
        }

        else
        {
          (*(v80 + 8))(v79, v81);
          v82 = "";
        }

        v83 = swift_slowAlloc();
        *v83 = 0;
        v84 = sub_29E2C03C4();
        _os_signpost_emit_with_name_impl(&dword_29DE74000, v77, v78, v84, "OffboardingCoordinator.deleteFactor", v82, v83, 2u);
        MEMORY[0x29ED82140](v83, -1, -1);
      }

      return (*(v94 + 8))(v11, v95);
    }
  }

  return result;
}

char *sub_29E12CA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v4 = sub_29E2C0424();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C03E4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C0514();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v41 = v12;
    v43 = a2;
    result = [objc_opt_self() sharedBehavior];
    if (result)
    {
      v17 = result;
      v18 = [result showSensitiveLogItems];

      if (v18)
      {
        v40 = v5;
        sub_29E2C04B4();
        v19 = sub_29E2C0504();
        v20 = sub_29E2C3A34();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v38 = v21;
          v39 = swift_slowAlloc();
          v45 = v39;
          *v21 = 136315138;
          v22 = sub_29E2C4AE4();
          v42 = v7;
          v24 = v4;
          v25 = v8;
          v26 = sub_29DFAA104(v22, v23, &v45);
          v7 = v42;

          v27 = v38;
          *(v38 + 1) = v26;
          v8 = v25;
          v4 = v24;
          v28 = v20;
          v29 = v27;
          _os_log_impl(&dword_29DE74000, v19, v28, "[%s] Dismissing edit view", v27, 0xCu);
          v30 = v39;
          sub_29DE93B3C(v39);
          MEMORY[0x29ED82140](v30, -1, -1);
          MEMORY[0x29ED82140](v29, -1, -1);
        }

        (*(v41 + 8))(v14, v11);
        v5 = v40;
      }

      sub_29DE966D4(&v16[OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator], *&v16[OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator + 24]);

      sub_29DFEDFD4(sub_29E1305EC, v16);

      v31 = sub_29E2C0404();
      sub_29E2C0434();
      v32 = sub_29E2C3D74();
      if (sub_29E2C42D4())
      {

        v33 = v44;
        sub_29E2C0464();

        if ((*(v5 + 88))(v33, v4) == *MEMORY[0x29EDCA4A8])
        {
          v34 = "[Error] Interval already ended";
        }

        else
        {
          (*(v5 + 8))(v33, v4);
          v34 = "";
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = sub_29E2C03C4();
        _os_signpost_emit_with_name_impl(&dword_29DE74000, v31, v32, v36, "OffboardingCoordinator.deleteFactor", v34, v35, 2u);
        MEMORY[0x29ED82140](v35, -1, -1);
      }

      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

double sub_29E12CF08(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_cycleFactorsNotificationHandler);
  if (v1)
  {
    sub_29E066308();
    sub_29E0665D0(v1);
  }

  return result;
}

uint64_t sub_29E12CF78(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29DE9DC34(result + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator, v2);

    sub_29DE966D4(v2, v2[3]);
    sub_29DFEDFD4(nullsub_1, 0);
    return sub_29DE93B3C(v2);
  }

  return result;
}

uint64_t sub_29E12D014()
{
  v1 = v0;
  v2 = sub_29E03FC30() & 1;
  if (v1[19] == v2)
  {
    v1[19] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
    sub_29E2BCFD4();
  }

  swift_getKeyPath();
  sub_29E12E970(&qword_2A181D6D0, type metadata accessor for EditPregnancyView.ViewModel, &unk_29E2E093C);
  sub_29E2BCFE4();

  v4 = v1[19];
  if (v4 == 1)
  {
    if (v1[18] == 1)
    {
      v1[18] = 1;
      if (!v1[21])
      {
        return v4 ^ 1u;
      }

      goto LABEL_9;
    }

    v5 = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](v5);
    sub_29E2BCFD4();

    if (v1[21])
    {
LABEL_9:
      v6 = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](v6);
      sub_29E2BCFD4();
    }
  }

  return v4 ^ 1u;
}

void sub_29E12D2D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v8 = sub_29E2C0504();
    v9 = sub_29E2C3A34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = a1;
      v11 = v10;
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_29DE74000, v8, v9, "[%s] Processing edits made by user", v11, 0xCu);
      sub_29DE93B3C(v12);
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  v16 = sub_29E0453C8();
  v17 = (v2 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator);
  sub_29DE966D4((v2 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator), *(v2 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator + 24));
  sub_29DFF376C(*(v2 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancySample), v16);
  sub_29DE966D4(v17, v17[3]);
  sub_29DFEB0C0(15);
}

void sub_29E12D514(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20[0] = v13;
    v20[1] = v4;
    *v12 = 136315138;
    swift_getMetatypeMetadata();
    v14 = sub_29E2C3464();
    v16 = sub_29DFAA104(v14, v15, v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%s] Dismissing", v12, 0xCu);
    sub_29DE93B3C(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    v17 = v12;
    a1 = v19;
    MEMORY[0x29ED82140](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  sub_29E12D2D4(a1);
  sub_29DE966D4((v2 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator), *(v2 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator + 24));
  sub_29DFEDFD4(nullsub_1, 0);
}

uint64_t sub_29E12D738()
{
  v1 = OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_oldStartDate;
  v2 = sub_29E2BCBB4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_oldEndDate, v2);

  sub_29DE93B3C((v0 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator));
  v4 = OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_signposter;
  v5 = sub_29E2C0414();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_unknownObjectRelease();
  v6 = OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel___observationRegistrar;
  v7 = sub_29E2BD024();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t sub_29E12D8EC(uint64_t a1)
{
  result = sub_29E2BCBB4();
  if (v2 <= 0x3F)
  {
    result = sub_29E2C0414();
    if (v3 <= 0x3F)
    {
      result = sub_29E2BD024();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_29E12DA58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E12DAF0(uint64_t a1)
{
  sub_29E12DA58(319, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29E12DA58(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    if (v2 <= 0x3F)
    {
      sub_29E12DA58(319, &qword_2A181D4E0, type metadata accessor for EditPregnancyView.ViewModel, MEMORY[0x29EDBCB00]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_29E12DC30()
{
  result = qword_2A181D4E8;
  if (!qword_2A181D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D4E8);
  }

  return result;
}

unint64_t sub_29E12DCA4()
{
  result = qword_2A181D4F0;
  if (!qword_2A181D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D4F0);
  }

  return result;
}

void sub_29E12DCF8(uint64_t a1)
{
  if (!qword_2A181D4F8)
  {
    sub_29E2C1624();
    sub_29E12DE70(255, v1);
    sub_29E12DFB8(255, v2);
    sub_29E12EEE0(255);
    sub_29E12E06C(255, v3);
    sub_29E12E970(&qword_2A181D630, sub_29E12E06C, MEMORY[0x29EDBC0F0]);
    swift_getOpaqueTypeConformance2();
    sub_29E12E970(&qword_2A181D650, sub_29E12EEE0, MEMORY[0x29EDBCC30]);
    swift_getOpaqueTypeConformance2();
    v4 = sub_29E2C1764();
    if (!v5)
    {
      atomic_store(v4, &qword_2A181D4F8);
    }
  }
}

void sub_29E12DE70(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D500)
  {
    sub_29E12DFB8(255, a2);
    sub_29E12EEE0(255);
    sub_29E12E06C(255, v2);
    sub_29E12E970(&qword_2A181D630, sub_29E12E06C, MEMORY[0x29EDBC0F0]);
    swift_getOpaqueTypeConformance2();
    sub_29E12E970(&qword_2A181D650, sub_29E12EEE0, MEMORY[0x29EDBCC30]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181D500);
    }
  }
}

void sub_29E12DFB8(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D508)
  {
    sub_29E12E06C(255, a2);
    sub_29E12E970(&qword_2A181D630, sub_29E12E06C, MEMORY[0x29EDBC0F0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181D508);
    }
  }
}

void sub_29E12E06C(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D510)
  {
    sub_29E12E11C(255);
    sub_29E12E970(&qword_2A181D628, sub_29E12E11C, MEMORY[0x29EDBCC30]);
    v2 = sub_29E2C21D4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181D510);
    }
  }
}

void sub_29E12E150(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D520)
  {
    sub_29E12E21C(255);
    sub_29E12EA20(255);
    sub_29E12E2AC(255, &qword_2A181D5E0, sub_29E12EAA8, sub_29E12E9B8, MEMORY[0x29EDBC558]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181D520);
    }
  }
}

void sub_29E12E2AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29E12E330(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D538)
  {
    sub_29E12E4FC(255, &qword_2A181D540, sub_29E12E3B8, MEMORY[0x29EDBC5F8]);
    v2 = sub_29E2C2A14();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181D538);
    }
  }
}

void sub_29E12E3B8(uint64_t a1)
{
  if (!qword_2A181D548)
  {
    sub_29E12E44C(255);
    sub_29E12E970(&qword_2A181D5B0, sub_29E12E44C, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D548);
    }
  }
}

void sub_29E12E44C(uint64_t a1)
{
  if (!qword_2A181D550)
  {
    sub_29E12F9EC(255, &qword_2A181D558, sub_29E12E4D4, sub_29E12E5EC);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D550);
    }
  }
}

void sub_29E12E4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E2C1744();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E12E560(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D568)
  {
    sub_29E13149C(255, &qword_2A181D570, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    v2 = sub_29E2C1744();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181D568);
    }
  }
}

void sub_29E12E620(uint64_t a1)
{
  if (!qword_2A181D580)
  {
    sub_29E12E6AC(255);
    sub_29E130C54(255, &qword_2A18184E8, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D580);
    }
  }
}

void sub_29E12E6AC(uint64_t a1)
{
  if (!qword_2A181D588)
  {
    sub_29E12E72C(255);
    sub_29E12E870(255, &qword_2A18184F0, &qword_2A18184F8, MEMORY[0x29EDBCA98]);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D588);
    }
  }
}

void sub_29E12E72C(uint64_t a1)
{
  if (!qword_2A181D590)
  {
    sub_29E12E7AC(255);
    sub_29E12E870(255, &qword_2A181C7B8, &qword_2A181C7C0, MEMORY[0x29EDBC9F0]);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D590);
    }
  }
}

void sub_29E12E7AC(uint64_t a1)
{
  if (!qword_2A181D598)
  {
    sub_29E12DA58(255, &qword_2A181D5A0, sub_29E12E83C, MEMORY[0x29EDBC938]);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D598);
    }
  }
}

void sub_29E12E870(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29E130C54(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29E2C1F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E12E8DC(uint64_t a1)
{
  if (!qword_2A181D5B8)
  {
    sub_29E2C1F24();
    sub_29E12E970(&qword_2A181D5C0, MEMORY[0x29EDBC088], MEMORY[0x29EDBC080]);
    v1 = sub_29E2C1D84();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D5B8);
    }
  }
}

uint64_t sub_29E12E970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E12EB18(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D5F8)
  {
    sub_29E12EC30(255);
    sub_29E12EE1C(255);
    sub_29E12E970(&qword_2A181D620, sub_29E12EC30, MEMORY[0x29EDBC278]);
    sub_29E12E970(&qword_2A181AA88, sub_29E12EE1C, MEMORY[0x29EDBCC30]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181D5F8);
    }
  }
}

void sub_29E12EC30(uint64_t a1)
{
  if (!qword_2A181D600)
  {
    sub_29E12ECC4(255);
    sub_29E12E970(&qword_2A181D618, sub_29E12ECC4, MEMORY[0x29EDBCB30]);
    v1 = sub_29E2C2864();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D600);
    }
  }
}

void sub_29E12ECC4(uint64_t a1)
{
  if (!qword_2A181D608)
  {
    sub_29E12ED48(255, &qword_2A181CB48, &qword_2A181CB50, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCB48]);
    sub_29E12EDA4();
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D608);
    }
  }
}

void sub_29E12ED48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29E130F58(255, a3, a4, a5);
    v6 = sub_29E2C2B14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29E12EDA4()
{
  result = qword_2A181D610;
  if (!qword_2A181D610)
  {
    sub_29E12ED48(255, &qword_2A181CB48, &qword_2A181CB50, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCB48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D610);
  }

  return result;
}

void sub_29E12EE50(uint64_t a1, __n128 a2)
{
  if (!qword_2A181AA60)
  {
    sub_29E13149C(255, &qword_2A18182B0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181AA60);
    }
  }
}

void sub_29E12EF14(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D640)
  {
    sub_29E12EFB0(255, a2);
    sub_29E13149C(255, &qword_2A18182B0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181D640);
    }
  }
}

void sub_29E12EFB0(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D648)
  {
    sub_29E13149C(255, &qword_2A18182B0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    sub_29E0141FC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181D648);
    }
  }
}

void sub_29E12F060(uint64_t a1)
{
  if (!qword_2A181D658)
  {
    sub_29E12DCF8(255);
    sub_29E12E970(&qword_2A181D660, sub_29E12DCF8, MEMORY[0x29EDBBF20]);
    sub_29DE9DE68();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181D658);
    }
  }
}

void sub_29E12F130(uint64_t a1)
{
  if (!qword_2A181D668)
  {
    sub_29E12F060(255);
    sub_29E12DCF8(255);
    sub_29E12E970(&qword_2A181D660, sub_29E12DCF8, MEMORY[0x29EDBBF20]);
    sub_29DE9DE68();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181D668);
    }
  }
}

uint64_t sub_29E12F238@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v27 - v7;
  sub_29E2C3314();
  v33 = *(v3 + 16);
  v33(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = v9;
  v11 = sub_29E2C3414();
  v31 = v12;
  v32 = v11;
  v13 = *(v3 + 8);
  v13(v8, v2);
  sub_29E2C3314();
  v14 = v33;
  v33(v5, v8, v2);
  sub_29E2BCC74();
  v15 = sub_29E2C3414();
  v29 = v16;
  v30 = v15;
  v13(v8, v2);
  sub_29E2C3314();
  v14(v5, v8, v2);
  sub_29E2BCC74();
  v17 = sub_29E2C3414();
  v19 = v18;
  v13(v8, v2);
  v20 = [objc_opt_self() secondaryLabelColor];
  v21 = sub_29E2C2654();
  v22 = sub_29E2C2114();
  result = swift_getKeyPath();
  v24 = v31;
  v25 = v28;
  *v28 = v32;
  v25[1] = v24;
  v26 = v29;
  v25[2] = v30;
  v25[3] = v26;
  v25[4] = v17;
  v25[5] = v19;
  v25[6] = v21;
  v25[7] = result;
  v25[8] = v22;
  return result;
}

void sub_29E12F5B4(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v30 - v8;
  v10 = sub_29E2C1B24();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  sub_29E2C1B14();
  sub_29E2C1B04();
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  sub_29E2C1AF4();

  sub_29E2C1B04();
  sub_29E2C1B44();
  v12 = sub_29E2C2274();
  v14 = v13;
  v16 = v15;
  v17 = [objc_opt_self() secondaryLabelColor];
  v30[2] = sub_29E2C2654();
  v18 = sub_29E2C2224();
  v20 = v19;
  v22 = v21;
  sub_29DED6478(v12, v14, v16 & 1);

  sub_29E2C2114();
  v23 = sub_29E2C2254();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_29DED6478(v18, v20, v22 & 1);

  *a1 = v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v29;
}

void sub_29E12F964(uint64_t a1)
{
  if (!qword_2A181D678)
  {
    sub_29E12F9EC(255, &qword_2A181D680, sub_29E12FA68, sub_29E12FB84);
    v1 = sub_29E2C1C04();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D678);
    }
  }
}

void sub_29E12F9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E12FA68(uint64_t a1)
{
  if (!qword_2A181D688)
  {
    sub_29E12FB1C(255);
    sub_29E131038(&qword_2A181D698, sub_29E12FB1C, sub_29E12FB50, MEMORY[0x29EDBCC48]);
    v1 = sub_29E2C14F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D688);
    }
  }
}

void sub_29E12FB84(uint64_t a1)
{
  if (!qword_2A181D6A0)
  {
    sub_29E12FBF4(255);
    sub_29E12FC80();
    v1 = sub_29E2C14F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D6A0);
    }
  }
}

void sub_29E12FBF4(uint64_t a1)
{
  if (!qword_2A181D6A8)
  {
    sub_29E2C2BC4();
    sub_29E130C54(255, &qword_2A181D6B0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D6A8);
    }
  }
}

unint64_t sub_29E12FC80()
{
  result = qword_2A181D6B8;
  if (!qword_2A181D6B8)
  {
    sub_29E12FBF4(255);
    sub_29E12E970(&qword_2A1818308, MEMORY[0x29EDC42F8], MEMORY[0x29EDC42F0]);
    sub_29E12FD30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D6B8);
  }

  return result;
}

unint64_t sub_29E12FD30()
{
  result = qword_2A181D6C0;
  if (!qword_2A181D6C0)
  {
    sub_29E130C54(255, &qword_2A181D6B0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D6C0);
  }

  return result;
}

uint64_t sub_29E12FDD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E2C1964();
  *a1 = result;
  return result;
}

uint64_t sub_29E12FE28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E2C1984();
  *a1 = result;
  return result;
}

uint64_t sub_29E12FE80(uint64_t a1)
{
  sub_29E12E83C(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E1303D8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29E12E83C);
  return sub_29E2C1A04();
}

uint64_t sub_29E12FF64()
{
  v1 = type metadata accessor for EditPregnancyView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_29E12DA58(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_29E2C1494();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

void sub_29E130214(uint64_t a1)
{
  if (!qword_2A181D6F8)
  {
    sub_29E12E44C(255);
    v1 = sub_29E2C15D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D6F8);
    }
  }
}

uint64_t sub_29E13027C(uint64_t a1, uint64_t a2)
{
  sub_29E12E4FC(0, &qword_2A181D540, sub_29E12E3B8, MEMORY[0x29EDBC5F8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E130304()
{
  result = qword_2A181D700;
  if (!qword_2A181D700)
  {
    sub_29E12E4FC(255, &qword_2A181D540, sub_29E12E3B8, MEMORY[0x29EDBC5F8]);
    sub_29E12E970(&qword_2A181D708, sub_29E12E3B8, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D700);
  }

  return result;
}

uint64_t sub_29E1303D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E130440(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E1304F0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EditPregnancyView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_29E130580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E1305A0()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E1305F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E130698(uint64_t a1, uint64_t a2)
{
  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E130748(uint64_t a1, uint64_t a2)
{
  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_29E1307E8(uint64_t a1)
{
  sub_29E12DA58(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_29E130958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E2C2A14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E1309C4(uint64_t a1)
{
  if (!qword_2A181D758)
  {
    sub_29E12E2AC(255, &qword_2A181D740, sub_29E1308E8, sub_29E12E9B8, MEMORY[0x29EDBC558]);
    v1 = sub_29E2C4304();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D758);
    }
  }
}

void sub_29E130A60(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D760)
  {
    sub_29E130AF4(255);
    sub_29E130C54(255, &qword_2A181D780, &type metadata for PregnancyPrivacyFooterView, MEMORY[0x29EDC9C68]);
    v2 = sub_29E2C2A14();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181D760);
    }
  }
}

void sub_29E130B28(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D770)
  {
    type metadata accessor for PregnancyStartDateMethodInputRow(255);
    sub_29E130BB0(255);
    sub_29E058EF8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181D770);
    }
  }
}

void sub_29E130BB0(uint64_t a1)
{
  if (!qword_2A181D778)
  {
    sub_29E12E2AC(255, &qword_2A181B558, sub_29E05901C, sub_29E058F40, MEMORY[0x29EDBC7F0]);
    v1 = sub_29E2C1C84();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D778);
    }
  }
}

void sub_29E130C54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E130CAC()
{
  result = qword_2A181D790;
  if (!qword_2A181D790)
  {
    sub_29E130C54(255, &qword_2A181D780, &type metadata for PregnancyPrivacyFooterView, MEMORY[0x29EDC9C68]);
    sub_29E130D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D790);
  }

  return result;
}

unint64_t sub_29E130D48()
{
  result = qword_2A181D798;
  if (!qword_2A181D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D798);
  }

  return result;
}

uint64_t sub_29E130DA4(uint64_t a1, uint64_t a2)
{
  sub_29E12E2AC(0, &qword_2A181D740, sub_29E1308E8, sub_29E12E9B8, MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E130E4C(__n128 a1)
{
  result = qword_2A1818710;
  if (!qword_2A1818710)
  {
    sub_29DEE1618(255, a1);
    sub_29DEE1B8C();
    sub_29DEE1D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818710);
  }

  return result;
}

void sub_29E130ED4(uint64_t a1)
{
  if (!qword_2A181D7B0)
  {
    sub_29E12ED48(255, &qword_2A181D7B8, &qword_2A181D7C0, &type metadata for PastPregnancyFooterView, &type metadata for PregnancyPrivacyFooterView);
    sub_29E130FB0();
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D7B0);
    }
  }
}

void sub_29E130F58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29E130FB0()
{
  result = qword_2A181D7C8;
  if (!qword_2A181D7C8)
  {
    sub_29E12ED48(255, &qword_2A181D7B8, &qword_2A181D7C0, &type metadata for PastPregnancyFooterView, &type metadata for PregnancyPrivacyFooterView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D7C8);
  }

  return result;
}

uint64_t sub_29E131038(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

void sub_29E1310DC(uint64_t a1)
{
  if (!qword_2A181D7E8)
  {
    sub_29E12F9EC(255, &qword_2A181D7A8, sub_29E130A60, sub_29E1309C4);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181D7E8);
    }
  }
}

unint64_t sub_29E131198(__n128 a1)
{
  result = qword_2A181D7F8;
  if (!qword_2A181D7F8)
  {
    sub_29E131284(255, a1);
    sub_29E12E970(&qword_2A181B5A8, sub_29E058E3C, MEMORY[0x29EDBCC30]);
    sub_29E12E970(&qword_2A181D7D0, sub_29E130ED4, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D7F8);
  }

  return result;
}

void sub_29E131284(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D800)
  {
    sub_29E058E3C(255, a2);
    sub_29E130ED4(255);
    v2 = sub_29E2C2A14();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181D800);
    }
  }
}

unint64_t sub_29E131310(__n128 a1)
{
  result = qword_2A181D808;
  if (!qword_2A181D808)
  {
    sub_29E131390(255, a1);
    sub_29E1314F0(v2);
    sub_29E1315C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D808);
  }

  return result;
}

void sub_29E131390(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D810)
  {
    sub_29E131410(255, a2);
    sub_29E12E870(255, &qword_2A181C7B8, &qword_2A181C7C0, MEMORY[0x29EDBC9F0]);
    v2 = sub_29E2C1744();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181D810);
    }
  }
}

void sub_29E131410(uint64_t a1, __n128 a2)
{
  if (!qword_2A181D818)
  {
    sub_29E13149C(255, &qword_2A181C678, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v2 = sub_29E2C1744();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181D818);
    }
  }
}

void sub_29E13149C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_29E1314F0(__n128 a1)
{
  result = qword_2A181D820;
  if (!qword_2A181D820)
  {
    sub_29E131410(255, a1);
    sub_29E131570();
    sub_29E0DF174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D820);
  }

  return result;
}

unint64_t sub_29E131570()
{
  result = qword_2A181D828;
  if (!qword_2A181D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D828);
  }

  return result;
}

unint64_t sub_29E1315C4()
{
  result = qword_2A181C7E0;
  if (!qword_2A181C7E0)
  {
    sub_29E12E870(255, &qword_2A181C7B8, &qword_2A181C7C0, MEMORY[0x29EDBC9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C7E0);
  }

  return result;
}

uint64_t sub_29E1316C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if (*(v3 + 16))
  {
    v0 = *(v3 + 32);

    v1 = v0 ^ 1;
  }

  else
  {

    v1 = 1;
  }

  return v1 & 1;
}

void *sub_29E13175C()
{
  v1 = v0;
  v63 = *v0;
  sub_29E134EF8(0, &qword_2A181A090, MEMORY[0x29EDBA210]);
  v3 = *(v2 - 8);
  v64 = v2;
  v65 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v55 = v54 - v4;
  sub_29E134EA4(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v59 = v54 - v6;
  sub_29E1350C0(0, &qword_2A181D868, MEMORY[0x29EDCA458]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  MEMORY[0x2A1C7C4A8](v11);
  v62 = v54 - v12;
  v13 = sub_29E2C0514();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v17 = sub_29E2C0504();
  v18 = sub_29E2C3A34();
  v19 = os_log_type_enabled(v17, v18);
  v60 = v8;
  v61 = v1;
  v57 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v9;
  v56 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v66 = v21;
    *v20 = 136446210;
    v22 = sub_29E2C4AE4();
    v24 = sub_29DFAA104(v22, v23, &v66);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_29DE74000, v17, v18, "[%{public}s]: Beginning observation of deviations samples", v20, 0xCu);
    sub_29DE93B3C(v21);
    v25 = v21;
    v1 = v61;
    MEMORY[0x29ED82140](v25, -1, -1);
    MEMORY[0x29ED82140](v20, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v26 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26DeviationsHistoryViewModel_healthStore);
  v27 = HKMCDeviationSampleTypes();
  sub_29DE9408C(0, &qword_2A1A61D70, 0x29EDBAA68);
  v28 = sub_29E2C3614();

  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_5;
    }

LABEL_15:

    v41 = sub_29E2C4AE4();
    v42 = v62;
    sub_29E1322E0(v41, v62);

    v43 = sub_29E2C3734();
    v44 = v59;
    (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
    v45 = swift_allocObject();
    swift_weakInit();
    v46 = v57;
    v47 = v58;
    v48 = v60;
    (*(v58 + 16))(v57, v42, v60);
    sub_29E2C3714();

    v49 = sub_29E2C3704();
    v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v51 = (v56 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = MEMORY[0x29EDCA390];
    *(v52 + 16) = v49;
    *(v52 + 24) = v53;
    (*(v47 + 32))(v52 + v50, v46, v48);
    *(v52 + v51) = v45;
    *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;

    sub_29DFE96C0(0, 0, v44, &unk_29E2E0F78, v52);

    return (*(v47 + 8))(v62, v48);
  }

  v29 = sub_29E2C4484();
  if (!v29)
  {
    goto LABEL_15;
  }

LABEL_5:
  v30 = v28;
  v66 = MEMORY[0x29EDCA190];
  result = sub_29E1813D8(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v54[1] = v26;
    v32 = 0;
    v33 = v66;
    v34 = v30;
    v35 = v55;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x29ED80D70](v32, v34);
      }

      else
      {
        v36 = *(v34 + 8 * v32 + 32);
      }

      v37 = v36;
      sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
      sub_29E2C2F24();

      v66 = v33;
      v38 = v35;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_29E1813D8((v39 > 1), v40 + 1, 1);
        v33 = v66;
      }

      ++v32;
      *(v33 + 16) = v40 + 1;
      (*(v65 + 32))(v33 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v40, v38, v64);
      v35 = v38;
      v34 = v30;
    }

    while (v29 != v32);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E131E6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29E131EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 0;
    v4 = (a1 + 40);
    do
    {
      if (*v4 >> 62)
      {
        if (sub_29E2C4484())
        {
          return v2 & (v3 == v1);
        }
      }

      else if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v2 & (v3 == v1);
      }

      ++v3;
      v4 += 2;
      v2 = v1 == v3;
    }

    while (v1 != v3);
  }

  v3 = v1;
  return v2 & (v3 == v1);
}

uint64_t sub_29E131F74(char a1)
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v12[-v7];
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  return v10;
}

void sub_29E1321E4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a2 = v3;
}

uint64_t sub_29E132264(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2BF404();

  return sub_29E2C1224();
}

double sub_29E1322E0@<D0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v13[1] = a2;
  v13[3] = a4;
  v4 = MEMORY[0x29EDBA260];
  sub_29E134EF8(0, &qword_2A181A128, MEMORY[0x29EDBA260]);
  MEMORY[0x2A1C7C4A8](v5);
  sub_29E134EF8(0, &qword_2A181A130, MEMORY[0x29EDBA270]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v13 - v9;
  sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
  sub_29E2BF404();
  sub_29E2C2FD4();
  sub_29E2BF404();
  v11 = sub_29E2C2FE4();
  sub_29E2C2F14();
  v11(v14, 0);
  *(swift_allocObject() + 16) = MEMORY[0x29EDCA190];
  sub_29E2C3024();
  sub_29E134EF8(0, &qword_2A181D9F0, MEMORY[0x29EDC9A40]);
  sub_29E1351B0(&qword_2A181D870, &qword_2A181A128, v4, MEMORY[0x29EDBA268]);

  sub_29E2C46C4();
  (*(v8 + 8))(v10, v7);

  return result;
}

uint64_t sub_29E132594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_29E2C0514();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  sub_29DFBC2DC(0);
  v6[17] = swift_task_alloc();
  sub_29E134EF8(0, &unk_2A181D970, MEMORY[0x29EDBA248]);
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  sub_29E134EF8(0, &qword_2A181A128, MEMORY[0x29EDBA260]);
  v6[21] = v9;
  v6[22] = swift_task_alloc();
  sub_29E134EF8(0, &unk_2A181D990, MEMORY[0x29EDBA250]);
  v6[23] = v10;
  v6[24] = swift_task_alloc();
  sub_29E1350C0(0, &qword_2A181D878, MEMORY[0x29EDCA450]);
  v6[25] = v11;
  v6[26] = *(v11 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = sub_29E2C3714();
  v6[29] = sub_29E2C3704();
  v13 = sub_29E2C36A4();
  v6[30] = v13;
  v6[31] = v12;

  return MEMORY[0x2A1C73D48](sub_29E132844, v13, v12);
}

uint64_t sub_29E132844()
{
  sub_29E1350C0(0, &qword_2A181D868, MEMORY[0x29EDCA458]);
  MEMORY[0x29ED80E40]();
  sub_29E1351B0(&qword_2A181D870, &qword_2A181A128, MEMORY[0x29EDBA260], MEMORY[0x29EDBA268]);
  sub_29E2C3764();
  sub_29E2C4694();
  sub_29E134EF8(0, &qword_2A181D9F0, MEMORY[0x29EDC9A40]);
  sub_29E2C46A4();
  swift_beginAccess();
  v1 = sub_29E2C3704();
  v0[32] = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_29E2C36A4();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[33] = v2;
  v0[34] = v4;

  return MEMORY[0x2A1C73D48](sub_29E132A00, v2);
}

uint64_t sub_29E132A00()
{
  v1 = v0[32];
  v0[35] = sub_29E2C4684();
  v2 = sub_29E1351B0(&qword_2A181D9B0, &unk_2A181D990, MEMORY[0x29EDBA250], MEMORY[0x29EDBA258]);
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_29E132B14;
  v4 = v0[23];
  v5 = v0[17];
  v6 = MEMORY[0x29EDCA390];

  return MEMORY[0x2A1C73B20](v5, v1, v6, v0 + 9, v4, v2);
}

uint64_t sub_29E132B14()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_29E132E00;
  }

  else
  {
    (*(v2 + 280))();
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_29E132C3C;
  }

  return MEMORY[0x2A1C73D48](v5, v3, v4);
}

uint64_t sub_29E132C3C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(v0[20], v3, v1);
    v6 = sub_29E2C4694();
    v0[38] = v7;
    v10 = v6 + *v6;
    v8 = swift_task_alloc();
    v0[39] = v8;
    *v8 = v0;
    v8[1] = sub_29E133038;

    __asm { BRAA            X2, X16 }
  }

  sub_29E136E04(v3, sub_29DFBC2DC);
  v4 = v0[30];
  v5 = v0[31];

  return MEMORY[0x2A1C73D48](sub_29E132F60, v4, v5);
}

uint64_t sub_29E132E00()
{
  v1 = v0[35];
  v0[37] = v0[9];
  v1();

  v2 = v0[30];
  v3 = v0[31];

  return MEMORY[0x2A1C73D48](sub_29E132E88, v2, v3);
}

uint64_t sub_29E132E88()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29E132F60()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29E133038()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);

  (*(v3 + 8))(v2, v4);
  v1[40] = v1[10];
  v5 = v1[34];
  v6 = v1[33];

  return MEMORY[0x2A1C73D48](sub_29E1331F4, v6, v5);
}

uint64_t sub_29E1331F4()
{

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return MEMORY[0x2A1C73D48](sub_29E133258, v1, v2);
}

uint64_t sub_29E133258(uint64_t a1)
{
  v19 = v1;
  sub_29E2C04B4();
  v2 = sub_29E2C0504();
  v3 = sub_29E2C3A34();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[15];
  v5 = v1[16];
  v7 = v1[14];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v2, v3, "[%{public}s]: Received update to deviations samples", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  if (swift_weakLoadStrong())
  {
    sub_29E133434(v1[40]);
  }

  v13 = sub_29E2C3704();
  v1[32] = v13;
  if (v13)
  {
    swift_getObjectType();
    v14 = sub_29E2C36A4();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v1[33] = v14;
  v1[34] = v16;

  return MEMORY[0x2A1C73D48](sub_29E132A00, v14);
}

void sub_29E133434(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_29E2BCE84();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E134EA4(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_29E2BCBB4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x29EDB9CD8], v3, v12);
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26DeviationsHistoryViewModel_currentDate;
  sub_29E2BCE04();
  (*(v4 + 8))(v6, v3);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    (*(v11 + 16))(v14, v2 + v15, v10);
    v17 = v16(v9, 1, v10);
    if (v17 != 1)
    {
      v17 = sub_29DE93920(v9);
    }
  }

  else
  {
    v17 = (*(v11 + 32))(v14, v9, v10);
  }

  MEMORY[0x2A1C7C4A8](v17);
  *(&v28 - 2) = v14;
  v18 = sub_29E2BF404();
  v19 = sub_29E1339A4(v18, sub_29E1351F4);

  sub_29E136AD4(v19, v2);
  v21 = v20;

  v22 = *(v21 + 16);
  if (!v22)
  {

    v23 = MEMORY[0x29EDCA190];
    goto LABEL_9;
  }

  v28 = v14;
  v29 = v11;
  v30 = v10;
  v31 = v2;
  v23 = sub_29E145EAC(v22, 0);
  v24 = sub_29E06FB98(&v32, (v23 + 4), v22, v21);
  v25 = v32;

  sub_29DF219B8(v25);
  if (v24 == v22)
  {

    v10 = v30;
    v14 = v28;
    v11 = v29;
LABEL_9:
    v32 = v23;
    sub_29E134200(&v32);
    v26 = sub_29E13DD68(v32);

    v27 = sub_29E13DE94(v26);

    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v27;

    sub_29E2C1224();
    (*(v11 + 8))(v14, v10);
    return;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_29E133884@<X0>(id *a1@<X0>, BOOL *a3@<X8>)
{
  v5 = sub_29E2BCBB4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x2A1C7C4A8](v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*a1 endDate];
  sub_29E2BCB44();

  v11 = sub_29E2BCB14();
  result = (*(v6 + 8))(v9, v5);
  *a3 = (v11 & 1) == 0;
  return result;
}

void *sub_29E1339A4(unint64_t a1, void (*a2)(unsigned __int8 *__return_ptr, id *))
{
  v3 = v2;
  v4 = a1;
  v32 = MEMORY[0x29EDCA198];
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_26:
    v7 = MEMORY[0x29EDCA198];
LABEL_27:

    return v7;
  }

LABEL_25:
  v5 = sub_29E2C4484();
  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_3:
  v6 = 0;
  v27 = v4 & 0xFFFFFFFFFFFFFF8;
  v28 = v4 & 0xC000000000000001;
  v7 = MEMORY[0x29EDCA198];
  while (1)
  {
    if (v28)
    {
      v10 = MEMORY[0x29ED80D70](v6, v4);
    }

    else
    {
      if (v6 >= *(v27 + 16))
      {
        goto LABEL_22;
      }

      v10 = *(v4 + 8 * v6 + 32);
    }

    v11 = v10;
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v31 = v10;
    a2(&v30, &v31);
    if (v3)
    {

      return v7;
    }

    v3 = v4;
    v4 = v5;
    v13 = v30;
    v14 = sub_29E18487C(v30);
    v16 = v7[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_23;
    }

    v20 = v15;
    if (v7[3] < v19)
    {
      sub_29E007DA0(v19, 1);
      v7 = v32;
      v14 = sub_29E18487C(v13);
      if ((v20 & 1) != (v21 & 1))
      {
        break;
      }
    }

    if (v20)
    {
      v8 = (v7[7] + 8 * v14);
      MEMORY[0x29ED7FDC0]();
      if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E2C3644();
      }

      sub_29E2C3674();
    }

    else
    {
      v22 = v14;
      sub_29E0D9AAC(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_29E2CE220;
      *(v23 + 32) = v11;
      v7[(v22 >> 6) + 8] |= 1 << v22;
      *(v7[6] + v22) = v13;
      *(v7[7] + 8 * v22) = v23;
      v24 = v7[2];
      v18 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      v7[2] = v25;
    }

    v5 = v4;
    ++v6;
    v9 = v12 == v4;
    v4 = v3;
    v3 = 0;
    if (v9)
    {
      goto LABEL_27;
    }
  }

  result = sub_29E2C4964();
  __break(1u);
  return result;
}

uint64_t sub_29E133C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v26 = a5;
  sub_29E136D9C(0);
  v11 = v10 - 8;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v25 - v15;
  v17 = sub_29E2BCBB4();
  v18 = *(*(v17 - 8) + 16);
  v18(v16, a1, v17);
  v19 = &v16[*(v11 + 56)];
  *v19 = a2;
  *(v19 + 1) = a3;
  v18(v13, v25, v17);
  v20 = v26;
  v21 = &v13[*(v11 + 56)];
  *v21 = v26;
  v21[1] = a6;
  sub_29E13782C(&qword_2A181D9C0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  sub_29E2BF404();
  sub_29E2BF404();
  if ((sub_29E2C3304() & 1) == 0)
  {
    sub_29E13782C(&qword_2A1A616E0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v23 = sub_29E2C3294();
LABEL_7:
    v22 = v23;
    goto LABEL_8;
  }

  if (a2 != v20 || a3 != a6)
  {
    v23 = sub_29E2C4914();
    goto LABEL_7;
  }

  v22 = 0;
LABEL_8:
  sub_29E136E04(v13, sub_29E136D9C);
  sub_29E136E04(v16, sub_29E136D9C);
  return v22 & 1;
}

uint64_t sub_29E133EB4()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26DeviationsHistoryViewModel__samplesBySection;
  sub_29E0D9AAC(0, &qword_2A18190B0, &type metadata for DeviationsHistoryViewModel.SamplesBySection, MEMORY[0x29EDB8B00]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26DeviationsHistoryViewModel_calendar;
  v4 = sub_29E2BCEA4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26DeviationsHistoryViewModel_currentDate;
  v6 = sub_29E2BCBB4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviationsHistoryViewModel(uint64_t a1)
{
  result = qword_2A181D850;
  if (!qword_2A181D850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E134058(uint64_t a1)
{
  sub_29E0D9AAC(319, &qword_2A18190B0, &type metadata for DeviationsHistoryViewModel.SamplesBySection, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    sub_29E2BCEA4();
    if (v2 <= 0x3F)
    {
      sub_29E2BCBB4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_29E1341AC()
{
  result = qword_2A181D860;
  if (!qword_2A181D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D860);
  }

  return result;
}

void sub_29E134200(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_29E14603C(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  v4 = sub_29E2C48C4();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if ((*v13 & (v11 ^ 1) & 1) == 0)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_29E136D14(0);
      v7 = sub_29E2C3664();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x29EDCA190];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_29E134354(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_29E134354(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x29EDCA190];
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_29E14D410(v9);
    }

    v83 = v9 + 16;
    v84 = *(v9 + 2);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = &v9[16 * v84];
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_29E134C98((*a3 + 16 * *v85), (*a3 + 16 * *v87), (*a3 + 16 * v88), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v88 < v86)
        {
          goto LABEL_112;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_113;
        }

        *v85 = v86;
        *(v85 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_114;
        }

        v84 = *v83 - 1;
        memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x29EDCA190];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8);
      v12 = 16 * v10;
      v13 = (*a3 + 16 * v10);
      v15 = *v13;
      v14 = v13 + 32;
      v16 = v15 & (v11 ^ 1);
      v17 = v10 + 2;
      while (v6 != v17)
      {
        v18 = *v14;
        v14 += 16;
        v19 = v11 & (v18 ^ 1);
        ++v17;
        v11 = v18;
        if (v16 != v19)
        {
          v8 = v17 - 1;
          if (!v16)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (!v16)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v20 = 0;
        v21 = 16 * v8;
        v22 = v10;
        do
        {
          if (v22 != v8 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v23 = (v27 + v12);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = *(v23 + 1);
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v12 += 16;
        }

        while (v22 < v8 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_29E143B40(0, *(v9 + 2) + 1, 1, v9);
    }

    v37 = *(v9 + 2);
    v36 = *(v9 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v9 = sub_29E143B40((v36 > 1), v37 + 1, 1, v9);
    }

    *(v9 + 2) = v38;
    v39 = &v9[16 * v37];
    *(v39 + 4) = v10;
    *(v39 + 5) = v8;
    v40 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v9 + 4);
          v43 = *(v9 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_103;
          }

          v58 = &v9[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v9[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_110;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v68 = &v9[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_71:
        if (v63)
        {
          goto LABEL_105;
        }

        v71 = &v9[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_108;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_78:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v80 = *&v9[16 * v79 + 32];
        v81 = *&v9[16 * v41 + 40];
        sub_29E134C98((*a3 + 16 * v80), (*a3 + 16 * *&v9[16 * v41 + 32]), (*a3 + 16 * v81), v40);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v80)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_29E14D410(v9);
        }

        if (v79 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v82 = &v9[16 * v79];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        sub_29E14D384(v41);
        v38 = *(v9 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v9[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_101;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_102;
      }

      v53 = &v9[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_104;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v9[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_111;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v8 - 16;
  v30 = v10 - v8;
LABEL_30:
  v31 = *(v28 + 16 * v8);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if ((*v33 & (v31 ^ 1)) != 1)
    {
LABEL_29:
      ++v8;
      v29 += 16;
      --v30;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_29E1348D4(id *__src, id *a2, id *a3, unint64_t __dst, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = v16 + v29;
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *--v32;
        v54 = v33;
        v34 = v30;
        v53 = *v30;
        v35 = v53;
        v36 = v33;
        v37 = v35;
        v38 = sub_29E135754(&v54, &v53);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v45 = v52;
          v44 = v51;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = v6 + 1;
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v15 = v52;
          v7 = v51;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v54 = *v7;
    v20 = v15;
    v53 = *v15;
    v21 = v53;
    v22 = v54;
    v23 = v21;
    v24 = sub_29E135754(&v54, &v53);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if ((v25 & 1) == 0)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if ((v18 - v20) >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t sub_29E134C98(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_42;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v4 == 1 && *v6 == 0;
      if (v16)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    do
    {
      v18 = v5 + 16;
      if (*v17 == 1 && *(v14 - 16) == 0)
      {
        if (v18 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_42;
        }

        goto LABEL_28;
      }

      v20 = v14 - 16;
      if (v18 != v14)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v20 > v4);
    v14 = v20;
  }

LABEL_42:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void sub_29E134EA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E134EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29DE9408C(255, &qword_2A1A61D50, 0x29EDBAA60);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E134F68(uint64_t a1)
{
  v3 = v2;
  sub_29E1350C0(0, &qword_2A181D868, MEMORY[0x29EDCA458]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29DE9657C;

  return sub_29E132594(a1, v8, v9, v1 + v6, v10, v11);
}

void sub_29E1350C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x29EDBA260];
    sub_29E134EF8(255, &qword_2A181A128, MEMORY[0x29EDBA260]);
    v8 = v7;
    sub_29E134EF8(255, &qword_2A181D9F0, MEMORY[0x29EDC9A40]);
    v10 = v9;
    v11 = sub_29E1351B0(&qword_2A181D870, &qword_2A181A128, v6, MEMORY[0x29EDBA268]);
    v12 = a3(a1, v8, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_29E1351B0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E134EF8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E135210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_29E1352B0;

  return sub_29E13740C(a2, a3);
}

uint64_t sub_29E1352B0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v5 = *(v6 + 8);
  sub_29E2BF404();

  return v5();
}

unint64_t sub_29E1353D8(unint64_t a1, void *a2)
{
  v31 = a2;
  v3 = sub_29E2BCC24();
  v22 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v32 = &v21 - v8;
  if (a1 >> 62)
  {
LABEL_21:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = sub_29E2C4484();
  }

  else
  {
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v25 = a1 & 0xC000000000000001;
  v21 = a1;
  v23 = a1 + 32;
  v29 = v22 + 16;
  v30 = v31 + 7;
  v10 = (v22 + 8);
  while (1)
  {
    if (v9 == v26)
    {
      return 0;
    }

    v28 = v9;
    if (v25)
    {
      v11 = MEMORY[0x29ED80D70](v9, v21, v7);
    }

    else
    {
      if (v9 >= *(v24 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = *(v23 + 8 * v9);
    }

    v27 = v11;
    a1 = [v11 UUID];
    sub_29E2BCC04();

    if (v31[2])
    {
      v12 = v31;
      sub_29E13782C(&qword_2A181BAC0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      a1 = v32;
      v13 = sub_29E2C3244();
      v14 = -1 << *(v12 + 32);
      v15 = v13 & ~v14;
      if ((*(v30 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        break;
      }
    }

LABEL_4:
    (*v10)(v32, v3);

    v9 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_20;
    }
  }

  v16 = ~v14;
  v17 = *(v22 + 72);
  v18 = *(v22 + 16);
  while (1)
  {
    v18(v5, v31[6] + v17 * v15, v3);
    sub_29E13782C(&qword_2A181D9E0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
    a1 = sub_29E2C3304();
    v19 = *v10;
    (*v10)(v5, v3);
    if (a1)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v30 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v19(v32, v3);

  return v28;
}

uint64_t sub_29E135754(void **a1, id *a2)
{
  v4 = sub_29E2BCBB4();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v10 = &v32 - v9;
  v11 = *a1;
  v12 = *a2;
  v13 = [*a2 endDate];
  sub_29E2BCB44();
  v14 = [v11 categoryType];
  v15 = sub_29DF3D08C();
  v17 = v16;

  if (v17)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v15 >= 4)
  {
    goto LABEL_8;
  }

  v18 = sub_29DEB1368(0x2030100u >> (8 * v15));
  v20 = v19;
  v21 = [v11 endDate];
  sub_29E2BCB44();
  v22 = [v12 categoryType];
  v23 = sub_29DF3D08C();
  v25 = v24;

  if (v25)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v23 < 4)
  {
    v26 = sub_29DEB1368(0x2030100u >> (8 * v23));
    v28 = sub_29E133C6C(v10, v18, v20, v6, v26, v27);

    v29 = v33;
    v30 = *(v32 + 8);
    v30(v6, v33);
    v30(v10, v29);
    return v28 & 1;
  }

LABEL_8:
  result = sub_29E2C4724();
  __break(1u);
  return result;
}