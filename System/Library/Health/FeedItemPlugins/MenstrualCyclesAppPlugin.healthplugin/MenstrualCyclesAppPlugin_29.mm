char *sub_29E190BEC(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___valueLabel] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___captionLabel] = 0;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for CycleStatisticsCell();
  v10 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 contentView];
  v12 = sub_29E190AE4();
  [v11 addSubview_];

  v13 = [v10 contentView];
  v14 = sub_29E190AF8();
  [v13 addSubview_];

  v15 = [v10 contentView];
  v16 = sub_29E190B0C();
  [v15 addSubview_];

  v17 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___titleLabel];
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v18 = v17;
  v19 = sub_29E2C3FD4();
  [v18 setFont_];

  v20 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___valueLabel];
  v21 = sub_29E2C3FD4();
  [v20 setFont_];

  v22 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___captionLabel];
  v23 = sub_29E2C3FD4();
  [v22 setFont_];

  v24 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v10 setBackgroundColor_];

  sub_29DEAC750(0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29E2CAB20;
  v26 = sub_29E2C0B54();
  v27 = MEMORY[0x29EDC7870];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v10;
}

void sub_29E191028()
{
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  [v0 bounds];
  Width = CGRectGetWidth(v52);
  v3 = [v0 contentView];
  [v3 layoutMargins];
  v5 = v4;

  v6 = Width - v5;
  v7 = [v0 contentView];
  [v7 layoutMargins];
  v9 = v8;

  v10 = v6 - v9;
  [v0 bounds];
  Height = CGRectGetHeight(v53);
  v12 = sub_29E190AE4();
  [v12 sizeThatFits_];
  v14 = v13;
  v16 = v15;

  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___titleLabel;
  v18 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___titleLabel];
  if (v1 == 1)
  {
    [v0 bounds];
    v19 = CGRectGetWidth(v54);
    [v0 layoutMargins];
    v21 = v19 - v20 - v14;
  }

  else
  {
    [v0 layoutMargins];
    v21 = v22;
  }

  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  sub_29DEC3518(&v0[v23], v50);
  if (v51)
  {
    sub_29DEB1BC4(0, &qword_2A181CC80, MEMORY[0x29EDC1910]);
    type metadata accessor for CycleStatisticsItem();
    if (swift_dynamicCast())
    {
      v24 = *(v49 + 104);
      sub_29E2BF404();

      if (v24)
      {

        v25 = 5.0;
        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_29DF61E50(v50);
  }

  v25 = 16.0;
LABEL_10:
  [v18 setFrame_];

  v26 = sub_29E190AF8();
  [v26 sizeThatFits_];
  v28 = v27;
  v30 = v29;

  v31 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___valueLabel;
  v32 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___valueLabel];
  if (v1 == 1)
  {
    [v0 bounds];
    v33 = CGRectGetWidth(v55);
    [v0 layoutMargins];
    v35 = v33 - v34 - v28;
  }

  else
  {
    [v0 layoutMargins];
    v35 = v36;
  }

  [*&v0[v17] frame];
  [v32 setFrame_];

  sub_29DEC3518(&v0[v23], v50);
  if (!v51)
  {
    sub_29DF61E50(v50);
LABEL_19:
    v44 = sub_29E190B0C();
    [v44 setHidden_];
    goto LABEL_20;
  }

  sub_29DEB1BC4(0, &qword_2A181CC80, MEMORY[0x29EDC1910]);
  type metadata accessor for CycleStatisticsItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v37 = *(v49 + 104);
  sub_29E2BF404();

  if (!v37)
  {
    goto LABEL_19;
  }

  v38 = sub_29E190B0C();
  [v38 setHidden_];

  v39 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___captionLabel;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___captionLabel] sizeThatFits_];
  v41 = v40;
  v43 = v42;
  v44 = *&v0[v39];
  if (v1 == 1)
  {
    [v0 bounds];
    v45 = CGRectGetWidth(v57);
    [v0 layoutMargins];
    v47 = v45 - v46 - v41;
  }

  else
  {
    [v0 layoutMargins];
    v47 = v48;
  }

  [*&v0[v31] frame];
  [v44 setFrame_];
LABEL_20:
}

double sub_29E1914CC(double a1, double a2)
{
  v5 = [v2 contentView];
  [v5 layoutMargins];
  v7 = v6;

  v8 = [v2 contentView];
  [v8 layoutMargins];
  v10 = v9;

  sub_29DE99B54();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CD3B0;
  *(v11 + 32) = sub_29E190AE4();
  *(v11 + 40) = sub_29E190AF8();
  v27 = v11;
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  sub_29DEC3518(v2 + v12, v25);
  if (!v26)
  {
    sub_29DF61E50(v25);
LABEL_8:
    v14 = 34.0;
    goto LABEL_9;
  }

  sub_29DEB1BC4(0, &qword_2A181CC80, MEMORY[0x29EDC1910]);
  type metadata accessor for CycleStatisticsItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(v24 + 104);
  sub_29E2BF404();

  if (!v13)
  {
    goto LABEL_8;
  }

  sub_29E190B0C();
  MEMORY[0x29ED7FDC0]();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29E2C3644();
  }

  sub_29E2C3674();
  v14 = 25.0;
  v11 = v27;
LABEL_9:
  if (v11 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    v16 = 0;
    v7 = a1 - v7 - v10;
    a1 = 0.0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x29ED80D70](v16, v11);
      }

      else
      {
        if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v17 = *(v11 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [v17 sizeThatFits_];
      v10 = v20;
      v22 = v21;

      if (a1 <= v10)
      {
        a1 = v10;
      }

      v14 = v14 + v22;
      ++v16;
      if (v19 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  a1 = 0.0;
LABEL_25:

  return a1;
}

double sub_29E191890()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v1, v9);
  if (v10)
  {
    sub_29DEB1BC4(0, &qword_2A181CC80, MEMORY[0x29EDC1910]);
    v2 = type metadata accessor for CycleStatisticsItem();
    if (swift_dynamicCast())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v8 + 40);
        ObjectType = swift_getObjectType();
        v6 = [v0 isHighlighted];
        v10 = v2;
        v11 = sub_29E191BE0();
        v9[0] = v8;
        v7 = *(v4 + 8);

        v7(v6, v9, ObjectType, v4);

        swift_unknownObjectRelease();
        sub_29DE93B3C(v9);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_29DF61E50(v9);
  }

  return result;
}

id sub_29E1919E4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CycleStatisticsCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29E191AA8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E191B00(uint64_t a1)
{
  sub_29E1904F8();
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E190614();
  return sub_29DF61E50(a1);
}

void (*sub_29E191B70(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29E19097C(v2);
  return sub_29DF61DA4;
}

unint64_t sub_29E191BE0()
{
  result = qword_2A181E5C8;
  if (!qword_2A181E5C8)
  {
    type metadata accessor for CycleStatisticsItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E5C8);
  }

  return result;
}

void sub_29E191C3C()
{
  v0 = sub_29E190AE4();
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v1 = sub_29E2C3FD4();
  [v0 setFont_];

  v2 = sub_29E190AF8();
  v3 = sub_29E2C3FD4();
  [v2 setFont_];

  v4 = sub_29E190B0C();
  v5 = sub_29E2C3FD4();
  [v4 setFont_];
}

uint64_t sub_29E191DA4(void *a1)
{
  v27[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2BEFD4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E192690(0, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x2A1C7C4A8](v10).n128_u64[0];
  v13 = v26 - v12;
  v27[0] = 0;
  v14 = [a1 dateOfBirthComponentsWithError_];
  v15 = v27[0];
  if (v14)
  {
    v16 = v14;
    sub_29E2BC544();
    v17 = v15;

    v18 = 0;
  }

  else
  {
    v19 = v27[0];
    v20 = sub_29E2BC7E4();
    v26[0] = v4;
    v21 = v20;

    swift_willThrow();
    v4 = v26[0];

    v18 = 1;
  }

  v22 = sub_29E2BC5F4();
  (*(*(v22 - 8) + 56))(v13, v18, 1, v22);
  sub_29E16CCE8();
  sub_29E1920A4(v13, v9, v23);
  sub_29E2BCB54();
  sub_29E2BEFC4();
  sub_29E2BEF14();

  v24.n128_f64[0] = (*(v4 + 8))(v6, v3);
  return sub_29E192138(v13, v24);
}

uint64_t sub_29E1920A4(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_29E192690(0, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E192138(uint64_t a1, __n128 a2)
{
  sub_29E192690(0, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PDFCoverPageHeaderProvider(uint64_t a1)
{
  result = qword_2A181E5D0;
  if (!qword_2A181E5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E192238(uint64_t a1)
{
  result = sub_29E2BEF04();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E1922A4()
{
  v0 = sub_29E2BE484();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v24[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BEEE4();
  v6 = v5;
  v7 = sub_29E2BE224();
  v8 = *MEMORY[0x29EDC1F60];
  v9 = *(v1 + 104);
  v9(v3, v8, v0);
  v10 = sub_29E2BFA64();
  v25 = v10;
  v26 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(v24);
  MEMORY[0x29ED7C240](v4, v6, v3, v7);
  v11 = sub_29E2BEA14();
  sub_29DE93B3C(v24);
  v12 = sub_29E2BEEF4();
  v14 = v13;
  v15 = sub_29E2BE214();
  v9(v3, v8, v0);
  v25 = v10;
  v26 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(v24);
  MEMORY[0x29ED7C240](v12, v14, v3, v15);
  v16 = sub_29E2BEA14();
  sub_29DE93B3C(v24);
  sub_29E2BE1D4();
  sub_29E2BE1C4();
  v17 = sub_29E2BE1B4();
  v18 = [v17 CGColor];

  v25 = sub_29E2BEDB4();
  v26 = MEMORY[0x29EDC2290];
  sub_29DEBB7E8(v24);
  sub_29E2BEDA4();
  v19 = sub_29E2BEA14();
  sub_29DE93B3C(v24);
  sub_29E192690(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29E2CE0D0;
  *(v20 + 32) = v11;
  *(v20 + 40) = v16;
  *(v20 + 48) = v19;
  v21 = MEMORY[0x29ED7B1C0]();

  return v21;
}

uint64_t sub_29E192570(__n128 a1)
{
  v2 = *(v1 + 16);
  sub_29E192690(0, &unk_2A181DD40, sub_29DF0D004, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E2CAB20;
  *(swift_task_alloc() + 16) = v2;
  v4 = sub_29E2BFC04();
  v5 = MEMORY[0x29EDC2C70];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  sub_29DEBB7E8((v3 + 32));
  sub_29E2BFBF4();

  v6 = *(v1 + 8);

  return v6(v3);
}

void sub_29E192690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29E1926F4@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = type metadata accessor for OvulationConfirmationState(0);
  v12 = v11[5];
  v13 = sub_29E2BCEA4();
  (*(*(v13 - 8) + 16))(&a6[v12], a5, v13);
  sub_29E2BCB54();
  v14 = v11[8];
  v15 = sub_29E2BFC94();
  (*(*(v15 - 8) + 16))(&a6[v14], a3, v15);
  *a6 = a1;
  a6[v11[6]] = a2;
  v16 = &a6[v11[9]];
  *v16 = a4 & 1;
  v16[1] = BYTE1(a4) & 1;
  v16[2] = BYTE2(a4) & 1;

  return a1;
}

uint64_t sub_29E192820()
{

  sub_29DE93B3C((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MenstrualCyclesAllHighlightsViewController(uint64_t a1)
{
  result = qword_2A181E5E0;
  if (!qword_2A181E5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E192928@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1D80];
  v3 = sub_29E2BE2A4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29E19299C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_allocWithZone(v6);
  sub_29DE9DC34(a4, v11);
  v9 = sub_29E2BDFD4();
  sub_29DE93B3C(a4);
  return v9;
}

id sub_29E192A34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesAllHighlightsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E192ABC(uint64_t a1)
{
  sub_29E199B24(319, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29E199B24(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E192BC4(unsigned __int8 a1)
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

uint64_t sub_29E192DDC(unsigned __int8 a1)
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

uint64_t sub_29E193000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v34 = type metadata accessor for EstimatedDueDateView(0);
  MEMORY[0x2A1C7C4A8](v34);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = (&v34 - v5);
  sub_29E196B0C(0);
  v38 = v7;
  v36 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E196AD8(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v34 - v14;
  sub_29E196658(0);
  v17 = v16 - 8;
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v22 = (&v34 - v21);
  *v22 = swift_getKeyPath();
  sub_29E199B24(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  sub_29E1935C4(a1, v22 + *(v17 + 60));
  *(v22 + *(v17 + 64)) = 0;
  v23 = 1;
  if (*(a1 + *(type metadata accessor for PregnancyStartDateInputView(0) + 24)) != 1)
  {
    *v9 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v24 = v9 + *(v38 + 52);
    *v24 = sub_29E2C1AA4();
    *(v24 + 1) = 0;
    v24[16] = 1;
    sub_29E198AF0(0, &qword_2A181E688, sub_29E196C50, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
    v26 = &v24[*(v25 + 44)];
    sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    sub_29E2C2A24();
    *v6 = swift_getKeyPath();
    sub_29E199B24(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PregnancyDatesInputViewModel(0);
    sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
    sub_29E2C2A44();
    v27 = v35;
    sub_29E199C04(v6, v35, type metadata accessor for EstimatedDueDateView);
    sub_29E199C04(v27, v26, type metadata accessor for EstimatedDueDateView);
    sub_29E199088(0, &qword_2A181E670, type metadata accessor for EstimatedDueDateView);
    v29 = v26 + *(v28 + 48);
    *v29 = 0;
    *(v29 + 8) = 0;
    sub_29E198B5C(v6, type metadata accessor for EstimatedDueDateView);
    sub_29E198B5C(v27, type metadata accessor for EstimatedDueDateView);
    *(v9 + *(v38 + 56)) = 0;
    sub_29E199718(v9, v15, sub_29E196B0C);
    v23 = 0;
  }

  (*(v36 + 56))(v15, v23, 1, v38);
  sub_29E199C04(v22, v19, sub_29E196658);
  sub_29E199C04(v15, v12, sub_29E196AD8);
  v30 = v37;
  sub_29E199C04(v19, v37, sub_29E196658);
  sub_29E1965E8(0, v31);
  sub_29E199C04(v12, v30 + *(v32 + 48), sub_29E196AD8);
  sub_29E198B5C(v15, sub_29E196AD8);
  sub_29E198B5C(v22, sub_29E196658);
  sub_29E198B5C(v12, sub_29E196AD8);
  return sub_29E198B5C(v19, sub_29E196658);
}

uint64_t sub_29E1935C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v257 = a2;
  v3 = MEMORY[0x29EDBC7E8];
  sub_29E196744(0, &qword_2A18186A0, type metadata accessor for EmbryoTransferDatePickerRow, type metadata accessor for PastPregnancyStartDatePickerRow, MEMORY[0x29EDBC7E8]);
  v209 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v211 = v200 - v6;
  sub_29DEE17DC(0, v5);
  v248 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v212 = v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for EmbryoTransferDatePickerRow(0);
  MEMORY[0x2A1C7C4A8](v210);
  v213 = v200 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for EmbryoAgeAtTransferPickerRow(0);
  MEMORY[0x2A1C7C4A8](v228);
  v207 = v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDBC7E8];
  sub_29E1967C8(0, &qword_2A181E690, sub_29E196864, MEMORY[0x29EDBC7E8]);
  v235 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v237 = v200 - v13;
  sub_29E196830(0);
  v256 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v239 = v200 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196864(0);
  v236 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v238 = v200 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196744(0, &qword_2A1818698, sub_29DEE1794, sub_29DEE17DC, v3);
  v246 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v229 = v200 - v19;
  sub_29E196744(0, &qword_2A181B540, type metadata accessor for GestationalAgeOnDatePickerRow, type metadata accessor for EmbryoAgeAtTransferPickerRow, v3);
  v223 = v20;
  v21 = MEMORY[0x2A1C7C4A8](v20);
  v226 = v200 - v22;
  sub_29DEE1794(0, v21);
  v245 = v23;
  v24 = MEMORY[0x2A1C7C4A8](v23);
  v227 = (v200 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEE174C(0, v24);
  v266 = v26;
  MEMORY[0x2A1C7C4A8](v26);
  v247 = v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for GestationalAgeOnDatePickerRow(0);
  MEMORY[0x2A1C7C4A8](v225);
  v208 = v200 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_29E2C2984();
  v233 = *(v234 - 8);
  MEMORY[0x2A1C7C4A8](v234);
  v232 = v200 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v265 = v200 - v31;
  v219 = type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow(0);
  v32 = MEMORY[0x2A1C7C4A8](v219);
  v206 = v200 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEE1574(0, v32);
  v249 = v34;
  MEMORY[0x2A1C7C4A8](v34);
  v230 = v200 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36);
  v231 = v200 - v37;
  MEMORY[0x2A1C7C4A8](v38);
  v251 = v200 - v39;
  MEMORY[0x2A1C7C4A8](v40);
  v264 = v200 - v41;
  sub_29E196744(0, &qword_2A181B548, type metadata accessor for EstimatedDueDatePickerRow, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow, v3);
  v214 = v42;
  v43 = MEMORY[0x2A1C7C4A8](v42);
  v216 = (v200 - v44);
  sub_29DEE1704(0, v43);
  v244 = v45;
  MEMORY[0x2A1C7C4A8](v45);
  v218 = (v200 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v215 = type metadata accessor for EstimatedDueDatePickerRow(0);
  MEMORY[0x2A1C7C4A8](v215);
  v205 = v200 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196744(0, &qword_2A181E698, sub_29E05901C, sub_29E196830, v3);
  v253 = v48;
  MEMORY[0x2A1C7C4A8](v48);
  v255 = v200 - v49;
  sub_29E1967C8(0, &qword_2A181B570, sub_29E058EF8, v11);
  v221 = v50;
  v51 = MEMORY[0x2A1C7C4A8](v50);
  v222 = (v200 - v52);
  sub_29E05901C(0, v51);
  v254 = v53;
  MEMORY[0x2A1C7C4A8](v53);
  v224 = v200 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196744(0, &qword_2A1818688, sub_29DEE1618, type metadata accessor for EndDatePickerRow, v3);
  v263 = v55;
  MEMORY[0x2A1C7C4A8](v55);
  v252 = v200 - v56;
  sub_29E196744(0, &qword_2A1818690, sub_29DEE1660, sub_29DEE174C, v3);
  v261 = v57;
  MEMORY[0x2A1C7C4A8](v57);
  v250 = v200 - v58;
  sub_29E196744(0, &qword_2A181B578, sub_29DEE16A8, sub_29DEE1704, v3);
  v241 = v59;
  MEMORY[0x2A1C7C4A8](v59);
  v242 = (v200 - v60);
  sub_29E1967C8(0, &qword_2A181B580, type metadata accessor for LastMenstrualPeriodDatePickerRow, v11);
  v202 = v61;
  MEMORY[0x2A1C7C4A8](v61);
  v203 = v200 - v62;
  sub_29DEE16A8(0);
  v240 = v63;
  v64 = MEMORY[0x2A1C7C4A8](v63);
  v204 = v200 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEE1660(0, v64);
  v260 = v66;
  v67 = MEMORY[0x2A1C7C4A8](v66);
  v243 = (v200 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEE1618(0, v67);
  v262 = v69;
  MEMORY[0x2A1C7C4A8](v69);
  v258 = v200 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v71 - 8);
  v72 = sub_29E2C3384();
  v201 = *(v72 - 8);
  MEMORY[0x2A1C7C4A8](v72);
  v74 = v200 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v75);
  v77 = v200 - v76;
  MenstrualPeriodDatePickerRow = type metadata accessor for LastMenstrualPeriodDatePickerRow(0);
  MEMORY[0x2A1C7C4A8](MenstrualPeriodDatePickerRow);
  v80 = v200 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_29E2BEFA4();
  v81 = *(v267 - 8);
  MEMORY[0x2A1C7C4A8](v267);
  v83 = v200 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E058EF8(0);
  v217 = v84;
  MEMORY[0x2A1C7C4A8](v84);
  v220 = (v200 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  started = type metadata accessor for PregnancyStartDateInputView(0);
  v87 = *(a1 + *(started + 24));
  v88 = a1 + *(started + 20);
  v89 = (v81 + 104);
  v268 = v81;
  v90 = (v81 + 16);
  v259 = v83;
  if (v87 > 1)
  {
    v200[2] = v89;
    v200[1] = v88;
    if (v87 == 2)
    {
      sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
      v224 = v109;
      sub_29E2C2A24();
      LODWORD(v222) = *MEMORY[0x29EDC2488];
      v110 = v268;
      v221 = *(v268 + 104);
      v111 = v83;
      v112 = v267;
      (v221)(v83);
      v113 = *(v219 + 20);
      v220 = *(v110 + 16);
      v114 = v206;
      v220(&v206[v113], v111, v112);
      v217 = type metadata accessor for PregnancyDatesInputViewModel(0);
      v213 = sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);

      sub_29E2C2A44();
      sub_29E199C04(v114, v216, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
      swift_storeEnumTagMultiPayload();
      sub_29E19695C(&qword_2A18186F8, type metadata accessor for EstimatedDueDatePickerRow, &unk_29E2D3A9C);
      sub_29E19695C(&qword_2A1818700, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow, &unk_29E2E4398);
      v115 = v218;
      sub_29E2C1C74();
      sub_29E199C04(v115, v242, sub_29DEE1704);
      swift_storeEnumTagMultiPayload();
      sub_29DEE1BD4();
      sub_29DEE1C7C(v116);
      v117 = v243;
      sub_29E2C1C74();
      sub_29E198B5C(v115, sub_29DEE1704);
      v118 = v250;
      sub_29E199C04(v117, v250, sub_29DEE1660);
      swift_storeEnumTagMultiPayload();
      v244 = sub_29DEE1B8C();
      v242 = sub_29DEE1D5C();
      v119 = v258;
      sub_29E2C1C74();
      sub_29E198B5C(v117, sub_29DEE1660);
      v243 = sub_29DEE1618;
      v120 = v252;
      sub_29E199C04(v119, v252, sub_29DEE1618);
      swift_storeEnumTagMultiPayload();
      v241 = type metadata accessor for EndDatePickerRow(0);
      v240 = sub_29E1969A4(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
      v219 = sub_29E19695C(&qword_2A1818718, type metadata accessor for EndDatePickerRow, &unk_29E2DFB64);
      v121 = v264;
      sub_29E2C1C74();

      v218 = sub_29DEE1618;
      sub_29E198B5C(v119, sub_29DEE1618);
      sub_29E198B5C(v114, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
      v122 = *(v110 + 8);
      v268 = v110 + 8;
      v216 = v122;
      v123 = v259;
      v124 = v267;
      v122(v259, v267);
      v125 = sub_29E2C1FE4();
      sub_29E2C1424();
      v126 = v121 + *(v249 + 36);
      *v126 = v125;
      *(v126 + 8) = v127;
      *(v126 + 16) = v128;
      *(v126 + 24) = v129;
      *(v126 + 32) = v130;
      *(v126 + 40) = 0;
      sub_29E2C2974();
      sub_29E2C2A24();
      (v221)(v123, v222, v124);
      v131 = v208;
      v220(&v208[*(v225 + 20)], v123, v124);

      sub_29E2C2A44();
      sub_29E199C04(v131, v226, type metadata accessor for GestationalAgeOnDatePickerRow);
      swift_storeEnumTagMultiPayload();
      sub_29E19695C(&qword_2A18186C0, type metadata accessor for GestationalAgeOnDatePickerRow, &unk_29E2E43E8);
      sub_29E19695C(&qword_2A18186C8, type metadata accessor for EmbryoAgeAtTransferPickerRow, &unk_29E2E3450);
      v132 = v227;
      sub_29E2C1C74();
      sub_29E199C04(v132, v229, sub_29DEE1794);
      swift_storeEnumTagMultiPayload();
      sub_29DEE19CC(v133);
      sub_29DEE1AAC(v134);
      v135 = v247;
      sub_29E2C1C74();
      sub_29E198B5C(v132, sub_29DEE1794);
      sub_29E199C04(v135, v118, sub_29DEE174C);
      swift_storeEnumTagMultiPayload();
      sub_29E2C1C74();
      sub_29E198B5C(v135, sub_29DEE174C);
      sub_29E199C04(v119, v120, v243);
      swift_storeEnumTagMultiPayload();
      v136 = v251;
      sub_29E2C1C74();

      sub_29E198B5C(v119, v218);
      sub_29E198B5C(v131, type metadata accessor for GestationalAgeOnDatePickerRow);
      v216(v259, v124);
      LOBYTE(v119) = sub_29E2C1FD4();
      sub_29E2C1424();
      v137 = v136 + *(v249 + 36);
      v138 = v136;
      *v137 = v119;
      *(v137 + 8) = v139;
      *(v137 + 16) = v140;
      *(v137 + 24) = v141;
      *(v137 + 32) = v142;
      *(v137 + 40) = 0;
      v186 = v231;
      sub_29E199C04(v264, v231, sub_29DEE1574);
      v187 = v233;
      v188 = *(v233 + 16);
      v189 = v232;
      v190 = v234;
      v188(v232, v265, v234);
      v191 = v230;
      sub_29E199C04(v138, v230, sub_29DEE1574);
    }

    else
    {
      sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
      v244 = v153;
      sub_29E2C2A24();
      LODWORD(v243) = *MEMORY[0x29EDC2488];
      v154 = v268;
      v242 = *(v268 + 104);
      v155 = v267;
      v242(v83);
      v156 = *(v228 + 20);
      v241 = *(v154 + 16);
      v200[0] = v90;
      v157 = v207;
      v241(&v207[v156], v83, v155);
      v240 = type metadata accessor for PregnancyDatesInputViewModel(0);
      v224 = sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);

      sub_29E2C2A44();
      sub_29E199C04(v157, v226, type metadata accessor for EmbryoAgeAtTransferPickerRow);
      swift_storeEnumTagMultiPayload();
      sub_29E19695C(&qword_2A18186C0, type metadata accessor for GestationalAgeOnDatePickerRow, &unk_29E2E43E8);
      sub_29E19695C(&qword_2A18186C8, type metadata accessor for EmbryoAgeAtTransferPickerRow, &unk_29E2E3450);
      v158 = v227;
      sub_29E2C1C74();
      v159 = v229;
      sub_29E199C04(v158, v229, sub_29DEE1794);
      swift_storeEnumTagMultiPayload();
      v228 = sub_29DEE19CC(v160);
      v226 = sub_29DEE1AAC(v161);
      v162 = v247;
      sub_29E2C1C74();
      sub_29E198B5C(v158, sub_29DEE1794);
      v227 = sub_29DEE174C;
      v163 = v250;
      sub_29E199C04(v162, v250, sub_29DEE174C);
      swift_storeEnumTagMultiPayload();
      v225 = sub_29DEE1B8C();
      v223 = sub_29DEE1D5C();
      v164 = v258;
      sub_29E2C1C74();
      v222 = sub_29DEE174C;
      sub_29E198B5C(v162, sub_29DEE174C);
      v221 = sub_29DEE1618;
      v165 = v252;
      sub_29E199C04(v164, v252, sub_29DEE1618);
      swift_storeEnumTagMultiPayload();
      v220 = type metadata accessor for EndDatePickerRow(0);
      v219 = sub_29E1969A4(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
      v218 = sub_29E19695C(&qword_2A1818718, type metadata accessor for EndDatePickerRow, &unk_29E2DFB64);
      v166 = v264;
      sub_29E2C1C74();

      v217 = sub_29DEE1618;
      sub_29E198B5C(v164, sub_29DEE1618);
      sub_29E198B5C(v157, type metadata accessor for EmbryoAgeAtTransferPickerRow);
      v167 = *(v154 + 8);
      v268 = v154 + 8;
      v216 = v167;
      v168 = v259;
      v169 = v267;
      v167(v259, v267);
      LOBYTE(v154) = sub_29E2C1FE4();
      sub_29E2C1424();
      v170 = v166 + *(v249 + 36);
      *v170 = v154;
      *(v170 + 8) = v171;
      *(v170 + 16) = v172;
      *(v170 + 24) = v173;
      *(v170 + 32) = v174;
      *(v170 + 40) = 0;
      sub_29E2C2974();
      sub_29E2C2A24();
      v175 = v169;
      (v242)(v168, v243, v169);
      v176 = v213;
      v241(&v213[*(v210 + 20)], v168, v175);

      sub_29E2C2A44();
      sub_29E199C04(v176, v211, type metadata accessor for EmbryoTransferDatePickerRow);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PastPregnancyStartDatePickerRow(0);
      sub_29E19695C(&qword_2A18186A8, type metadata accessor for EmbryoTransferDatePickerRow, &unk_29E2E34A0);
      sub_29E19695C(&qword_2A18186B0, type metadata accessor for PastPregnancyStartDatePickerRow, &unk_29E2CDAB0);
      v177 = v212;
      sub_29E2C1C74();
      sub_29E199C04(v177, v159, sub_29DEE17DC);
      swift_storeEnumTagMultiPayload();
      v178 = v247;
      sub_29E2C1C74();
      sub_29E198B5C(v177, sub_29DEE17DC);
      sub_29E199C04(v178, v163, v227);
      swift_storeEnumTagMultiPayload();
      v179 = v258;
      sub_29E2C1C74();
      sub_29E198B5C(v178, v222);
      sub_29E199C04(v179, v165, v221);
      swift_storeEnumTagMultiPayload();
      v180 = v251;
      sub_29E2C1C74();

      sub_29E198B5C(v179, v217);
      sub_29E198B5C(v176, type metadata accessor for EmbryoTransferDatePickerRow);
      v216(v259, v267);
      LOBYTE(v165) = sub_29E2C1FD4();
      sub_29E2C1424();
      v181 = v180 + *(v249 + 36);
      *v181 = v165;
      *(v181 + 8) = v182;
      *(v181 + 16) = v183;
      *(v181 + 24) = v184;
      *(v181 + 32) = v185;
      *(v181 + 40) = 0;
      v186 = v231;
      sub_29E199C04(v264, v231, sub_29DEE1574);
      v187 = v233;
      v188 = *(v233 + 16);
      v189 = v232;
      v190 = v234;
      v188(v232, v265, v234);
      v191 = v230;
      sub_29E199C04(v180, v230, sub_29DEE1574);
    }

    v192 = v238;
    sub_29E199C04(v186, v238, sub_29DEE1574);
    sub_29DEE1500(0, v193);
    v195 = v194;
    v188((v192 + *(v194 + 48)), v189, v190);
    sub_29E199C04(v191, v192 + *(v195 + 64), sub_29DEE1574);
    sub_29E198B5C(v191, sub_29DEE1574);
    v196 = *(v187 + 8);
    v196(v189, v190);
    sub_29E198B5C(v186, sub_29DEE1574);
    sub_29E199C04(v192, v237, sub_29E196864);
    swift_storeEnumTagMultiPayload();
    sub_29E19695C(&qword_2A1818678, sub_29E196864, MEMORY[0x29EDBCC30]);
    v197 = v239;
    sub_29E2C1C74();
    sub_29E199C04(v197, v255, sub_29E196830);
    swift_storeEnumTagMultiPayload();
    sub_29E0590B8(v198);
    sub_29E196A30();
    sub_29E2C1C74();
    sub_29E198B5C(v197, sub_29E196830);
    sub_29E198B5C(v192, sub_29E196864);
    sub_29E198B5C(v251, sub_29DEE1574);
    v196(v265, v190);
    v108 = v264;
    v107 = sub_29DEE1574;
  }

  else if (v87)
  {
    sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    sub_29E2C2A24();
    v143 = v267;
    v144 = v268;
    (*(v268 + 104))(v83, *MEMORY[0x29EDC2488], v267);
    v145 = v205;
    (*(v144 + 16))(&v205[*(v215 + 20)], v83, v143);
    type metadata accessor for PregnancyDatesInputViewModel(0);
    sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);

    sub_29E2C2A44();
    sub_29E199C04(v145, v216, type metadata accessor for EstimatedDueDatePickerRow);
    swift_storeEnumTagMultiPayload();
    sub_29E19695C(&qword_2A18186F8, type metadata accessor for EstimatedDueDatePickerRow, &unk_29E2D3A9C);
    sub_29E19695C(&qword_2A1818700, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow, &unk_29E2E4398);
    v146 = v218;
    sub_29E2C1C74();
    sub_29E199C04(v146, v242, sub_29DEE1704);
    swift_storeEnumTagMultiPayload();
    sub_29DEE1BD4();
    sub_29DEE1C7C(v147);
    v148 = v243;
    sub_29E2C1C74();
    sub_29E198B5C(v146, sub_29DEE1704);
    sub_29E199C04(v148, v250, sub_29DEE1660);
    swift_storeEnumTagMultiPayload();
    sub_29DEE1B8C();
    sub_29DEE1D5C();
    v149 = v258;
    sub_29E2C1C74();
    sub_29E198B5C(v148, sub_29DEE1660);
    sub_29E199C04(v149, v252, sub_29DEE1618);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EndDatePickerRow(0);
    sub_29E1969A4(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
    sub_29E19695C(&qword_2A1818718, type metadata accessor for EndDatePickerRow, &unk_29E2DFB64);
    v150 = v220;
    sub_29E2C1C74();

    sub_29E198B5C(v149, sub_29DEE1618);
    sub_29E198B5C(v145, type metadata accessor for EstimatedDueDatePickerRow);
    (*(v144 + 8))(v259, v143);
    sub_29E199C04(v150, v222, sub_29E058EF8);
    swift_storeEnumTagMultiPayload();
    sub_29E059130();
    v151 = v224;
    sub_29E2C1C74();
    sub_29E199C04(v151, v255, sub_29E05901C);
    swift_storeEnumTagMultiPayload();
    sub_29E0590B8(v152);
    sub_29E196A30();
    sub_29E2C1C74();
    sub_29E198B5C(v151, sub_29E05901C);
    v107 = sub_29E058EF8;
    v108 = v150;
  }

  else
  {
    sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    sub_29E2C2A24();
    v265 = v269;
    v91 = v267;
    (*v89)(v83, *MEMORY[0x29EDC2488], v267);
    v92 = v80;
    v93 = v91;
    (*v90)(v92 + *(MenstrualPeriodDatePickerRow + 20), v83, v91);
    sub_29E2C3314();
    v94 = v201;
    (*(v201 + 16))(v74, v77, v72);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v95 = qword_2A1A67F80;
    sub_29E2BCC74();
    v96 = sub_29E2C3414();
    v98 = v97;
    (*(v94 + 8))(v77, v72);
    type metadata accessor for PregnancyDatesInputViewModel(0);
    sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);

    sub_29E2C2A44();
    v99 = (v92 + *(MenstrualPeriodDatePickerRow + 24));
    *v99 = v96;
    v99[1] = v98;
    sub_29E199C04(v92, v203, type metadata accessor for LastMenstrualPeriodDatePickerRow);
    swift_storeEnumTagMultiPayload();
    sub_29E19695C(&qword_2A18186E8, type metadata accessor for LastMenstrualPeriodDatePickerRow, &unk_29E2D5B74);
    v100 = v204;
    sub_29E2C1C74();
    sub_29E199C04(v100, v242, sub_29DEE16A8);
    swift_storeEnumTagMultiPayload();
    sub_29DEE1BD4();
    sub_29DEE1C7C(v101);
    v102 = v243;
    sub_29E2C1C74();
    sub_29E198B5C(v100, sub_29DEE16A8);
    sub_29E199C04(v102, v250, sub_29DEE1660);
    swift_storeEnumTagMultiPayload();
    sub_29DEE1B8C();
    sub_29DEE1D5C();
    v103 = v258;
    sub_29E2C1C74();
    sub_29E198B5C(v102, sub_29DEE1660);
    sub_29E199C04(v103, v252, sub_29DEE1618);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EndDatePickerRow(0);
    sub_29E1969A4(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
    sub_29E19695C(&qword_2A1818718, type metadata accessor for EndDatePickerRow, &unk_29E2DFB64);
    v104 = v220;
    sub_29E2C1C74();

    sub_29E198B5C(v103, sub_29DEE1618);
    sub_29E198B5C(v92, type metadata accessor for LastMenstrualPeriodDatePickerRow);
    (*(v268 + 8))(v259, v93);
    sub_29E199C04(v104, v222, sub_29E058EF8);
    swift_storeEnumTagMultiPayload();
    sub_29E059130();
    v105 = v224;
    sub_29E2C1C74();
    sub_29E199C04(v105, v255, sub_29E05901C);
    swift_storeEnumTagMultiPayload();
    sub_29E0590B8(v106);
    sub_29E196A30();
    sub_29E2C1C74();
    sub_29E198B5C(v105, sub_29E05901C);
    v107 = sub_29E058EF8;
    v108 = v104;
  }

  return sub_29E198B5C(v108, v107);
}

uint64_t sub_29E196334@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C1A64();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E199B24(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v14 - v9;
  sub_29DF5F0F4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_29E2C16E4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_29E2C3A24();
    v13 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E196540@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_29E2C1BD4();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  sub_29E198AF0(0, &qword_2A181E600, sub_29E1965B4, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  return sub_29E193000(v2, a1 + *(v4 + 44));
}

void sub_29E1965E8(uint64_t a1, __n128 a2)
{
  if (!qword_2A181E610)
  {
    sub_29E196658(255);
    sub_29E196AD8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181E610);
    }
  }
}

void sub_29E196658(uint64_t a1)
{
  if (!qword_2A181E618)
  {
    sub_29E196708(255);
    v3 = v2;
    v4 = sub_29E19957C(&qword_2A181E638, sub_29E196708, sub_29E196898);
    v7[0] = v3;
    v7[1] = MEMORY[0x29EDBCBF8];
    v7[2] = v4;
    v7[3] = MEMORY[0x29EDBCBF0];
    v5 = type metadata accessor for StyledVStackListSection(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_2A181E618);
    }
  }
}

void sub_29E196744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29E1967C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E196898()
{
  result = qword_2A181E640;
  if (!qword_2A181E640)
  {
    sub_29E196744(255, &qword_2A181E628, sub_29E05901C, sub_29E196830, MEMORY[0x29EDBC7F0]);
    sub_29E0590B8(v1);
    sub_29E196A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E640);
  }

  return result;
}

uint64_t sub_29E19695C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E1969A4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E196A30()
{
  result = qword_2A181E648;
  if (!qword_2A181E648)
  {
    sub_29E196830(255);
    sub_29E19695C(&qword_2A1818678, sub_29E196864, MEMORY[0x29EDBCC30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E648);
  }

  return result;
}

void sub_29E196B0C(uint64_t a1)
{
  if (!qword_2A181E658)
  {
    sub_29E196BBC(255);
    v3 = v2;
    v4 = sub_29E19695C(&qword_2A181E680, sub_29E196BBC, MEMORY[0x29EDBCB30]);
    v7[0] = v3;
    v7[1] = MEMORY[0x29EDBCBF8];
    v7[2] = v4;
    v7[3] = MEMORY[0x29EDBCBF0];
    v5 = type metadata accessor for StyledVStackListSection(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_2A181E658);
    }
  }
}

void sub_29E196BBC(uint64_t a1)
{
  if (!qword_2A181E660)
  {
    sub_29E196C50(255);
    sub_29E19695C(&qword_2A181E678, sub_29E196C50, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E660);
    }
  }
}

uint64_t sub_29E196C78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v21 - v8;
  type metadata accessor for PregnancyStartDateMethodInputRow(0);
  sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v10 = v22;
  swift_getKeyPath();
  v22 = v10;
  sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2BCFE4();

  v11 = *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

  if (v11 == 4)
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A67F80;
    sub_29E2BCC74();
    v13 = sub_29E2C3414();
    v15 = v14;
    (*(v4 + 8))(v9, v3);
    v22 = v13;
    v23 = v15;
  }

  else
  {
    v22 = sub_29E03F758(v11);
    v23 = v16;
  }

  sub_29DE9DE68();
  result = sub_29E2C2294();
  *a1 = result;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v20;
  return result;
}

void sub_29E196F90(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v30[-v8];
  type metadata accessor for PregnancyStartDateMethodInputRow(0);
  sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v10 = v31;
  swift_getKeyPath();
  v31 = v10;
  sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2BCFE4();

  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v12 = sub_29E2C3414();
  v14 = v13;
  (*(v4 + 8))(v9, v3);
  v31 = v12;
  v32 = v14;
  sub_29DE9DE68();
  v15 = sub_29E2C2294();
  v17 = v16;
  LOBYTE(v14) = v18;
  v31 = sub_29E2C2664();
  v19 = sub_29E2C2224();
  v21 = v20;
  v23 = v22;
  sub_29DED6478(v15, v17, v14 & 1);

  sub_29E2C2094();
  v24 = sub_29E2C2204();
  v26 = v25;
  LOBYTE(v14) = v27;
  v29 = v28;
  sub_29DED6478(v19, v21, v23 & 1);

  *a1 = v24;
  *(a1 + 8) = v26;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v29;
}

uint64_t sub_29E19737C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_29E2C1E24();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for PregnancyStartDateMethodInputRow(0);
  v56 = *(started - 8);
  MEMORY[0x2A1C7C4A8](started);
  v61 = v5;
  v62 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_29E2C3384();
  v8 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v50 - v12;
  v14 = sub_29E2C1F14();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E198E3C(0);
  v19 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E199448(0);
  v52 = *(v22 - 8);
  v53 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196744(0, &qword_2A181E778, sub_29E199448, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  v66 = v25;
  MEMORY[0x2A1C7C4A8](v25);
  v54 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v65 = &v50 - v28;
  v63 = v2;
  sub_29E197B98(v2, v21);
  v29 = &v21[*(v19 + 36)];
  *v29 = sub_29E1987A4;
  v29[1] = 0;
  sub_29E2C1EF4();
  v30 = sub_29E1994CC();
  sub_29E2C24A4();
  (*(v15 + 8))(v17, v14);
  v31 = v10;
  v32 = v51;
  sub_29E198B5C(v21, sub_29E198E3C);
  sub_29E2C3314();
  (*(v8 + 16))(v31, v13, v32);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v33 = qword_2A1A67F80;
  sub_29E2BCC74();
  v34 = sub_29E2C3414();
  v36 = v35;
  (*(v8 + 8))(v13, v32);
  v67 = v34;
  v68 = v36;
  v69 = v19;
  v70 = v30;
  swift_getOpaqueTypeConformance2();
  sub_29DE9DE68();
  v38 = v53;
  v37 = v54;
  sub_29E2C2444();

  (*(v52 + 8))(v24, v38);
  v40 = v62;
  v39 = v63;
  sub_29E199C04(v63, v62, type metadata accessor for PregnancyStartDateMethodInputRow);
  v41 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v42 = swift_allocObject();
  v56 = type metadata accessor for PregnancyStartDateMethodInputRow;
  sub_29E199718(v40, v42 + v41, type metadata accessor for PregnancyStartDateMethodInputRow);
  v43 = v57;
  sub_29E2C1E14();
  sub_29E2C1724();

  (*(v59 + 8))(v43, v60);
  sub_29DE8893C(v37);
  v44 = v39 + *(started + 24);
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v69) = v45;
  v70 = v46;
  sub_29E199AD4(0, &qword_2A1819E88, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29E2C27F4();
  sub_29E199C04(v39, v40, type metadata accessor for PregnancyStartDateMethodInputRow);
  v47 = swift_allocObject();
  sub_29E199718(v40, v47 + v41, v56);
  type metadata accessor for PregnancyStartDateMethodInputPickerSheet(0);
  sub_29E1999B0();
  sub_29E19695C(&qword_2A181E788, type metadata accessor for PregnancyStartDateMethodInputPickerSheet, &unk_29E2E5F7C);
  v48 = v65;
  sub_29E2C2554();

  return sub_29DE8893C(v48);
}

uint64_t sub_29E197B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35[2] = a2;
  sub_29E1992C0(0);
  v35[3] = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E196744(0, &qword_2A181E798, sub_29E198F74, sub_29E1992C0, MEMORY[0x29EDBC7E8]);
  v35[0] = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v35 - v7;
  sub_29E1990EC(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v35 - v13;
  sub_29E198F74(0);
  v35[1] = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2C16E4();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = (v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E196334(v21);
  v22 = sub_29E2C16C4();
  (*(v19 + 8))(v21, v18);
  v23 = sub_29E2C1AA4();
  if (v22)
  {
    *v17 = v23;
    *(v17 + 1) = 0;
    v17[16] = 1;
    sub_29E198AF0(0, &qword_2A181E7A8, sub_29E199008, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
    v25 = &v17[*(v24 + 44)];
    *v14 = sub_29E2C1BD4();
    *(v14 + 1) = 0;
    v14[16] = 1;
    sub_29E198AF0(0, &qword_2A181E7B0, sub_29E199180, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
    sub_29E198120(a1, &v14[*(v26 + 44)]);
    sub_29E199C04(v14, v11, sub_29E1990EC);
    sub_29E199C04(v11, v25, sub_29E1990EC);
    sub_29E199088(0, &qword_2A181E6F8, sub_29E1990EC);
    v28 = v25 + *(v27 + 48);
    *v28 = 0;
    *(v28 + 8) = 0;
    sub_29E198B5C(v14, sub_29E1990EC);
    sub_29E198B5C(v11, sub_29E1990EC);
    sub_29E199C04(v17, v8, sub_29E198F74);
    swift_storeEnumTagMultiPayload();
    v29 = MEMORY[0x29EDBCB30];
    sub_29E19695C(&qword_2A181E768, sub_29E198F74, MEMORY[0x29EDBCB30]);
    sub_29E19695C(&qword_2A181E770, sub_29E1992C0, v29);
    sub_29E2C1C74();
    v30 = sub_29E198F74;
    v31 = v17;
  }

  else
  {
    *v5 = v23;
    *(v5 + 1) = 0;
    v5[16] = 1;
    sub_29E198AF0(0, &qword_2A181E7A0, sub_29E199354, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
    sub_29E198458(a1, &v5[*(v32 + 44)]);
    sub_29E199C04(v5, v8, sub_29E1992C0);
    swift_storeEnumTagMultiPayload();
    v33 = MEMORY[0x29EDBCB30];
    sub_29E19695C(&qword_2A181E768, sub_29E198F74, MEMORY[0x29EDBCB30]);
    sub_29E19695C(&qword_2A181E770, sub_29E1992C0, v33);
    sub_29E2C1C74();
    v30 = sub_29E1992C0;
    v31 = v5;
  }

  return sub_29E198B5C(v31, v30);
}

double sub_29E198120@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  started = type metadata accessor for PregnancyStartDateMethodInputRow(0);
  v6 = *(started - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](started - 8);
  sub_29E19926C(0, &qword_2A18182B0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  v34 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v29 - v12;
  sub_29E196C78(v38);
  v15 = v38[0];
  v14 = v38[1];
  v31 = v39;
  v32 = v40;
  sub_29E199C04(a1, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PregnancyStartDateMethodInputRow);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_29E199718(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PregnancyStartDateMethodInputRow);
  v35 = a1;
  v18 = v13;
  v30 = v13;
  sub_29E2C2824();
  LOBYTE(v38[0]) = v31;
  v37 = 0;
  v36 = 1;
  v19 = *(v9 + 16);
  v20 = v33;
  v21 = v18;
  v22 = v34;
  v23.n128_f64[0] = v19(v33, v21, v34);
  LOBYTE(a1) = v38[0];
  v24 = v37;
  v25 = v36;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = a1;
  *(a2 + 24) = v32;
  *(a2 + 32) = v24;
  *(a2 + 33) = v25;
  sub_29E1991B4(0, v23);
  v19((a2 + *(v26 + 48)), v20, v22);
  sub_29DE93208(v15, v14, a1);
  v27 = *(v9 + 8);
  sub_29E2BF404();
  v27(v30, v22);
  v27(v20, v22);
  sub_29DED6478(v15, v14, v38[0]);

  return result;
}

double sub_29E198458@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  started = type metadata accessor for PregnancyStartDateMethodInputRow(0);
  v30 = *(started - 8);
  v6 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](started - 8);
  sub_29E19926C(0, &qword_2A18182B0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v32 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v27 - v12;
  sub_29E196C78(v37);
  v15 = v37[0];
  v14 = v37[1];
  v29 = v38;
  v31 = v39;
  sub_29E199C04(a1, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PregnancyStartDateMethodInputRow);
  v16 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v17 = swift_allocObject();
  sub_29E199718(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PregnancyStartDateMethodInputRow);
  v33 = a1;
  v18 = v13;
  v28 = v13;
  sub_29E2C2824();
  LOBYTE(v37[0]) = v29;
  v36 = 0;
  v35 = 1;
  v34 = 0;
  v19 = *(v9 + 16);
  v20 = v32;
  v19(v32, v18, v8);
  LOBYTE(v18) = v37[0];
  v21 = v36;
  v22 = v35;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v18;
  *(a2 + 24) = v31;
  *(a2 + 32) = v21;
  *(a2 + 33) = v22;
  v23 = v34;
  *(a2 + 40) = 0x4024000000000000;
  *(a2 + 48) = v23;
  sub_29E199388(0);
  v19((a2 + *(v24 + 64)), v20, v8);
  sub_29DE93208(v15, v14, v18);
  v25 = *(v9 + 8);
  sub_29E2BF404();
  v25(v28, v8);
  v25(v20, v8);
  sub_29DED6478(v15, v14, v37[0]);

  return result;
}

double sub_29E1987CC(uint64_t a1, __n128 a2)
{
  type metadata accessor for PregnancyStartDateMethodInputRow(0);
  sub_29E199AD4(0, &qword_2A1819E88, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);

  sub_29E2C27D4();
  sub_29E2C27E4();

  return result;
}

double sub_29E198894@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PregnancyStartDateMethodInputRow(0);
  sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  sub_29E2C2A24();
  swift_getKeyPath();
  sub_29E19695C(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2BCFE4();

  started = type metadata accessor for PregnancyStartDateMethodInputPickerSheet(0);
  v4 = a1 + *(started + 20);
  sub_29E199AD4(0, &qword_2A18188F0, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDC9C68]);
  sub_29E2C27C4();
  *v4 = v7;
  *(v4 + 8) = v8;
  v5 = *(started + 24);
  *(a1 + v5) = swift_getKeyPath();
  sub_29E199B24(0, &unk_2A18199F0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PregnancyDatesInputViewModel(0);

  sub_29E2C2A44();
  sub_29E199B88(0);
  sub_29E2C27E4();

  return result;
}

void sub_29E198AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_29E2C15D4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29E198B5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E198BBC(uint64_t a1)
{
  if (!qword_2A181E6A8)
  {
    sub_29E1965B4(255);
    sub_29E19695C(&qword_2A181E6B0, sub_29E1965B4, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E6A8);
    }
  }
}

void sub_29E198C98(uint64_t a1)
{
  sub_29E199B24(319, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29E199B24(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    if (v2 <= 0x3F)
    {
      sub_29E199AD4(319, &qword_2A1819E88, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_29E198DCC()
{
  result = qword_2A181E6C8;
  if (!qword_2A181E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E6C8);
  }

  return result;
}

void sub_29E198E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_29E198F04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E196744(255, a3, a4, a5, MEMORY[0x29EDBC7F0]);
    v6 = sub_29E2C26F4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E198F74(uint64_t a1)
{
  if (!qword_2A181E6E8)
  {
    sub_29E199008(255);
    sub_29E19695C(&qword_2A181E720, sub_29E199008, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E6E8);
    }
  }
}

void sub_29E199030(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29E199088(255, a3, a4);
    v5 = sub_29E2C2B14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E199088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E1990EC(uint64_t a1)
{
  if (!qword_2A181E700)
  {
    sub_29E199180(255);
    sub_29E19695C(&qword_2A181E718, sub_29E199180, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E700);
    }
  }
}

void sub_29E1991B4(uint64_t a1, __n128 a2)
{
  if (!qword_2A181E710)
  {
    sub_29E19926C(255, &qword_2A181B7E8, MEMORY[0x29EDBC5E8], MEMORY[0x29EDBC558]);
    sub_29E19926C(255, &qword_2A18182B0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181E710);
    }
  }
}

void sub_29E19926C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x29EDBCA18], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E1992C0(uint64_t a1)
{
  if (!qword_2A181E728)
  {
    sub_29E199354(255);
    sub_29E19695C(&qword_2A181E740, sub_29E199354, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E728);
    }
  }
}

void sub_29E199388(uint64_t a1)
{
  if (!qword_2A181E738)
  {
    sub_29E19926C(255, &qword_2A181B7E8, MEMORY[0x29EDBC5E8], MEMORY[0x29EDBC558]);
    sub_29E19926C(255, &qword_2A18182B0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181E738);
    }
  }
}

void sub_29E199448(uint64_t a1)
{
  if (!qword_2A181E748)
  {
    sub_29E198E3C(255);
    sub_29E1994CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181E748);
    }
  }
}

unint64_t sub_29E1994CC()
{
  result = qword_2A181E750;
  if (!qword_2A181E750)
  {
    sub_29E198E3C(255);
    sub_29E19957C(&qword_2A181E758, sub_29E198EC8, sub_29E1995F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E750);
  }

  return result;
}

uint64_t sub_29E19957C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_29E1995F8()
{
  result = qword_2A181E760;
  if (!qword_2A181E760)
  {
    sub_29E196744(255, &qword_2A181E6E0, sub_29E198F74, sub_29E1992C0, MEMORY[0x29EDBC7F0]);
    v1 = MEMORY[0x29EDBCB30];
    sub_29E19695C(&qword_2A181E768, sub_29E198F74, MEMORY[0x29EDBCB30]);
    sub_29E19695C(&qword_2A181E770, sub_29E1992C0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E760);
  }

  return result;
}

uint64_t sub_29E199718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E199784()
{
  started = type metadata accessor for PregnancyStartDateMethodInputRow(0);
  v2 = *(*(started - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(started - 8) + 64);
  sub_29E199B24(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_29E2C16E4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(started + 20);
  sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

double sub_29E199940@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PregnancyStartDateMethodInputRow(0);

  return sub_29E198894(a1);
}

unint64_t sub_29E1999B0()
{
  result = qword_2A181E780;
  if (!qword_2A181E780)
  {
    sub_29E196744(255, &qword_2A181E778, sub_29E199448, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E198E3C(255);
    sub_29E1994CC();
    swift_getOpaqueTypeConformance2();
    sub_29E19695C(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E780);
  }

  return result;
}

void sub_29E199AD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E199B24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E199B88(uint64_t a1)
{
  if (!qword_2A181E790)
  {
    sub_29E199AD4(255, &qword_2A18188F0, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDC9C68]);
    v1 = sub_29E2C2804();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E790);
    }
  }
}

uint64_t sub_29E199C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E199CD0(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = (*(a4 + 24))(a3, a4, v10);
  if (result != 10)
  {
    if (result >= a1)
    {
      sub_29E2C04B4();
      v15 = sub_29E2C0504();
      v16 = sub_29E2C3A04();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136446466;
        v19 = sub_29E2C4AE4();
        v21 = sub_29DFAA104(v19, v20, &v26);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2082;
        v25[7] = a1;
        v22 = sub_29E2C3464();
        v24 = sub_29DFAA104(v22, v23, &v26);

        *(v17 + 14) = v24;
        _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s] Skipping metrics for already completed step: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v18, -1, -1);
        MEMORY[0x29ED82140](v17, -1, -1);
      }

      return (*(v9 + 8))(v12, v8);
    }

    else
    {
      (*(a4 + 32))(a1, a3, a4);
      v14 = sub_29E199F68(a3, a4);

      return sub_29E0A307C(a2 | (a1 << 8), v14);
    }
  }

  return result;
}

id sub_29E199F68(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v2 = (*(a2 + 48))(a1);
  v9[0] = 0;
  v3 = [v2 biologicalSexWithError_];

  if (v3)
  {
    v4 = v9[0];
    v5 = [v3 biologicalSex];
  }

  else
  {
    v6 = v9[0];
    v7 = sub_29E2BC7E4();

    swift_willThrow();
    return 0;
  }

  return v5;
}

uint64_t ReviewPregnancyInMedicalIDUserData.init(sampleUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2BCC24();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ReviewPregnancyInMedicalIDUserData.encode()()
{
  sub_29E2BC2E4();
  swift_allocObject();
  sub_29E2BC2D4();
  type metadata accessor for ReviewPregnancyInMedicalIDUserData(0);
  sub_29E19A8B8(&qword_2A181C528, type metadata accessor for ReviewPregnancyInMedicalIDUserData, &protocol conformance descriptor for ReviewPregnancyInMedicalIDUserData);
  v0 = sub_29E2BC2C4();

  return v0;
}

uint64_t type metadata accessor for ReviewPregnancyInMedicalIDUserData(uint64_t a1)
{
  result = qword_2A1A5FFA0;
  if (!qword_2A1A5FFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ReviewPregnancyInMedicalIDUserData.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_29E2BC2B4();
  swift_allocObject();
  sub_29E2BC2A4();
  type metadata accessor for ReviewPregnancyInMedicalIDUserData(0);
  sub_29E19A8B8(&qword_2A181E7B8, type metadata accessor for ReviewPregnancyInMedicalIDUserData, &protocol conformance descriptor for ReviewPregnancyInMedicalIDUserData);
  sub_29E2BC294();

  return sub_29DEB5BF8(a1, a2);
}

void sub_29E19A2C0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5555656C706D6173 && a2 == 0xEA00000000004449)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_29E2C4914();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_29E19A350(uint64_t a1)
{
  v2 = sub_29E19A554();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E19A38C(uint64_t a1)
{
  v2 = sub_29E19A554();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t ReviewPregnancyInMedicalIDUserData.encode(to:)(void *a1)
{
  sub_29E19A854(0, &qword_2A181E7C0, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29DE966D4(a1, a1[3]);
  sub_29E19A554();
  sub_29E2C4AA4();
  sub_29E2BCC24();
  sub_29E19A8B8(&qword_2A181E7D0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C10]);
  sub_29E2C48A4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_29E19A554()
{
  result = qword_2A181E7C8;
  if (!qword_2A181E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E7C8);
  }

  return result;
}

uint64_t ReviewPregnancyInMedicalIDUserData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_29E2BCC24();
  v19 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E19A854(0, &qword_2A181E7D8, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ReviewPregnancyInMedicalIDUserData(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29E19A554();
  sub_29E2C4A94();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_29E19A8B8(&qword_2A181E7E0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C28]);
    sub_29E2C4844();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_29E19A900(v12, v17);
  }

  return sub_29DE93B3C(a1);
}

void sub_29E19A854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E19A554();
    v7 = a3(a1, &type metadata for ReviewPregnancyInMedicalIDUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E19A8B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E19A900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReviewPregnancyInMedicalIDUserData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E19A97C(void *a1)
{
  sub_29E19A854(0, &qword_2A181E7C0, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29DE966D4(a1, a1[3]);
  sub_29E19A554();
  sub_29E2C4AA4();
  sub_29E2BCC24();
  sub_29E19A8B8(&qword_2A181E7D0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C10]);
  sub_29E2C48A4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29E19AB30(uint64_t a1)
{
  result = sub_29E2BCC24();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29E19ABB0()
{
  result = qword_2A181E7E8;
  if (!qword_2A181E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E7E8);
  }

  return result;
}

unint64_t sub_29E19AC08()
{
  result = qword_2A181E7F0;
  if (!qword_2A181E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E7F0);
  }

  return result;
}

unint64_t sub_29E19AC60()
{
  result = qword_2A181E7F8;
  if (!qword_2A181E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E7F8);
  }

  return result;
}

void sub_29E19ACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = sub_29E2BFC04();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BE114();
  if (*(a3 + 16) <= a4)
  {
    sub_29E2BF404();
    sub_29E2BE0D4();
    goto LABEL_5;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v18[1] = v13;
    sub_29DE966D4((a3 + 40 * a4 + 32), *(a3 + 40 * a4 + 56));
    sub_29E2BF404();
    sub_29E2BE324();
LABEL_5:
    CGRectGetWidth(*&v14);
    sub_29E2BE0F4();
    sub_29E2BFBE4();
    sub_29E2BFBC4();
    (*(v10 + 8))(v12, v9);
    sub_29E19AEB8(a2, a3, a4, MEMORY[0x29EDC2C60], a5);
    CGRectGetHeight(v19);
    sub_29E2BE104();

    return;
  }

  __break(1u);
}

uint64_t sub_29E19AEB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), double a5)
{
  v8 = sub_29E2BFC04();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_29E2BE114();
  v13 = result;
  if (*(a2 + 16) <= a3)
  {
    sub_29E2BF404();
    sub_29E2BE0D4();
    goto LABEL_5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_29DE966D4((a2 + 40 * a3 + 32), *(a2 + 40 * a3 + 56));
    sub_29E2BF404();
    sub_29E2BE324();
LABEL_5:
    CGRectGetWidth(*&v14);
    sub_29E2BE0F4();
    sub_29E2BFBE4();
    a4(v13);

    return (*(v9 + 8))(v11, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E19B0D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29E19B1DC();
  *v3 = v1;
  v3[1] = sub_29DE9F99C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

unint64_t sub_29E19B188()
{
  result = qword_2A181E800;
  if (!qword_2A181E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E800);
  }

  return result;
}

unint64_t sub_29E19B1DC()
{
  result = qword_2A181E808;
  if (!qword_2A181E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E808);
  }

  return result;
}

double sub_29E19B240(uint64_t a1, uint64_t a2)
{
  sub_29DEA68FC();
  sub_29E2C43C4();
  v3 = sub_29E2C33A4();

  sub_29E19B368(&selRef_secondaryLabelColor);
  type metadata accessor for Key(0);
  sub_29E19C5A0(&qword_2A18177F0, type metadata accessor for Key, &unk_29E2CD02C);
  v4 = sub_29E2C31F4();

  [v3 sizeWithAttributes_];
  v6 = v5;

  v7 = 1.0;
  if (a2 == 2)
  {
    v7 = 7.0;
  }

  v8 = 2.0;
  if (a2 == 2)
  {
    v8 = 8.0;
  }

  return ceil(v8 + v7 + v6);
}

unint64_t sub_29E19B368(SEL *a1)
{
  sub_29DF5A3A0(0, &qword_2A1817FD0, &qword_2A181CDD0, type metadata accessor for Key);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  v3 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v4 = *MEMORY[0x29EDC80F8];
  v5 = *MEMORY[0x29EDC76C8];
  v6 = MEMORY[0x29EDC7700];
  v7 = objc_opt_self();
  v8 = v3;
  v9 = [v7 preferredFontDescriptorWithTextStyle_];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];
  if (v10)
  {
    v11 = v10;

    v9 = v11;
  }

  v12 = *v6;
  v13 = [v9 fontDescriptorWithDesign_];
  if (v13)
  {
    v14 = v13;

    v9 = v14;
  }

  sub_29DF5A3A0(0, &qword_2A1819158, &qword_2A1819160, type metadata accessor for AttributeName);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_29E2CAB20;
  v16 = *MEMORY[0x29EDC76D0];
  *(v15 + 32) = *MEMORY[0x29EDC76D0];
  sub_29E19C53C(0, &qword_2A1819168, sub_29DF38418, MEMORY[0x29EDC9E90]);
  v17 = swift_initStackObject();
  v18 = MEMORY[0x29EDC7708];
  *(v17 + 16) = xmmword_29E2CAB20;
  v19 = *v18;
  *(v17 + 32) = *v18;
  *(v17 + 40) = v12;
  v20 = v16;
  v21 = v19;
  v22 = sub_29E1852C8(v17);
  swift_setDeallocating();
  sub_29E19C66C(v17 + 32, sub_29DF38418);
  sub_29DF38488(0);
  *(v15 + 64) = v23;
  *(v15 + 40) = v22;
  sub_29E1853AC(v15);
  swift_setDeallocating();
  sub_29DF5A4C4(v15 + 32);
  type metadata accessor for AttributeName(0);
  sub_29E19C5A0(&qword_2A18177E0, type metadata accessor for AttributeName, &unk_29E2CCFA4);
  v24 = sub_29E2C31F4();

  v25 = [v9 fontDescriptorByAddingAttributes_];

  v26 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
  v27 = sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  *(inited + 40) = v26;
  v28 = *MEMORY[0x29EDC7640];
  *(inited + 64) = v27;
  *(inited + 72) = v28;
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 *a1];
  *(inited + 104) = sub_29DE9408C(0, &qword_2A1817FE0, 0x29EDC7A00);
  *(inited + 80) = v31;
  v32 = sub_29E185054(inited);
  swift_setDeallocating();
  sub_29DF5A3F8(0, &qword_2A181CDD0, type metadata accessor for Key);
  swift_arrayDestroy();
  return v32;
}

double sub_29E19B764(uint64_t a1, uint64_t a2)
{
  v3 = 5.5;
  if (a2 == 2)
  {
    v4 = 5.5;
  }

  else
  {
    v4 = 2.0;
  }

  sub_29DEA68FC();
  sub_29E2C43C4();
  v5 = sub_29E2C33A4();

  sub_29E19B368(&selRef_secondaryLabelColor);
  type metadata accessor for Key(0);
  sub_29E19C5A0(&qword_2A18177F0, type metadata accessor for Key, &unk_29E2CD02C);
  v6 = sub_29E2C31F4();

  [v5 sizeWithAttributes_];
  v8 = v7;

  if (v8 < 17.0)
  {
    v9 = v4 + 17.0;
    if (a2 == 2)
    {
      return v3 + v9;
    }

    goto LABEL_8;
  }

  v9 = v4 + v8;
  if (a2 != 2)
  {
LABEL_8:
    v3 = 2.0;
  }

  return v3 + v9;
}

id sub_29E19B8AC(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v2 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_29E2C06F4();
    sub_29E19C5A0(&qword_2A181E810, type metadata accessor for UIUserInterfaceLevel, &unk_29E2CCDD4);
    v3 = sub_29E2C3D34();
    v4 = [v2 resolvedColorWithTraitCollection_];

    return v4;
  }

  else
  {
    v1 = [objc_opt_self() secondarySystemBackgroundColor];

    return v1;
  }
}

void sub_29E19BA04(CGContext *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10)
{
  v58 = a5;
  v57 = a4;
  v62 = type metadata accessor for CycleChartCycle.RelativeDayIndex(0);
  v18 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEFCC2C(0);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E19C53C(0, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v26 = &v54 - v25;
  v27 = objc_allocWithZone(MEMORY[0x29EDC7A00]);
  aBlock[4] = sub_29E19B8AC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E19C164;
  aBlock[3] = &unk_2A24BD7D0;
  v28 = _Block_copy(aBlock);
  v29 = [v27 initWithDynamicProvider_];
  _Block_release(v28);

  v30 = [v29 resolvedColorWithTraitCollection_];

  CGContextSaveGState(a1);
  v31 = [v30 CGColor];
  CGContextSetFillColorWithColor(a1, v31);

  v65.origin.x = a6;
  v65.origin.y = a7;
  v65.size.width = a8;
  v65.size.height = a9;
  CGContextFillRect(a1, v65);
  CGContextRestoreGState(a1);

  v61 = sub_29E19B368(&selRef_secondaryLabelColor);
  v60 = sub_29E19B368(&selRef_tertiaryLabelColor);
  sub_29DEFC850(a2, v26);
  v32 = type metadata accessor for CycleChartCycle(0);
  if ((*(*(v32 - 8) + 48))(v26, 1, v32) != 1)
  {
    v52 = sub_29E02CAF8(&v26[*(v32 + 24)], v23);
    MEMORY[0x2A1C7C4A8](v52);
    *(&v54 - 2) = v26;
    sub_29E24867C(sub_29E19C64C, (&v54 - 4));
    v33 = v53;
    sub_29E19C66C(v23, sub_29DEFCC2C);
    sub_29E19C66C(v26, type metadata accessor for CycleChartCycle);
    v34 = *(v33 + 16);
    if (v34)
    {
      goto LABEL_3;
    }

LABEL_21:

    goto LABEL_22;
  }

  sub_29DEFC8E4(v26);
  v33 = MEMORY[0x29EDCA190];
  v34 = *(MEMORY[0x29EDCA190] + 16);
  if (!v34)
  {
    goto LABEL_21;
  }

LABEL_3:
  v55 = a1;
  v56 = a3;
  v63 = 0;
  v35 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v54 = v33;
  v36 = v33 + v35;
  v59 = *(v18 + 72);
  v37 = v62;
  do
  {
    sub_29E19C5E8(v36, v20);
    v42 = *&v20[*(v37 + 24)];
    aBlock[0] = v42;
    sub_29DEA68FC();
    sub_29E2C43C4();
    v43 = sub_29E2C33A4();

    sub_29E2BF404();
    type metadata accessor for Key(0);
    sub_29E19C5A0(&qword_2A18177F0, type metadata accessor for Key, &unk_29E2CD02C);
    v44 = sub_29E2C31F4();
    [v43 sizeWithAttributes_];
    v46 = v45;

    if ((v63 & 1) == 0)
    {
      if (v42 >= v57)
      {
        v47 = v20[*(v37 + 28)];
      }

      else
      {
        v47 = 0;
      }

LABEL_13:
      v66.origin.x = a6;
      v66.origin.y = a7;
      v66.size.width = a8;
      v66.size.height = a9;
      MinX = CGRectGetMinX(v66);
      v49 = *&v20[*(v62 + 20)];
      v67.origin.x = a6;
      v67.origin.y = a7;
      v67.size.width = a8;
      v67.size.height = a9;
      MinY = CGRectGetMinY(v67);
      if (v47)
      {
        v51 = 2.0;
        if (v58 == 2)
        {
          v51 = 5.5;
          v38 = 7.0;
          goto LABEL_5;
        }
      }

      else
      {
        v51 = (a10 - v46) * 0.5;
        v38 = 7.0;
        if (v58 == 2)
        {
          goto LABEL_5;
        }
      }

      v38 = 1.0;
LABEL_5:
      v63 = v47;
      v39 = MinX + v49 * a10 + v51;
      v40 = MinY + v38;
      v41 = sub_29E2C31F4();

      [v43 drawAtPoint:v41 withAttributes:{v39, v40}];

      goto LABEL_6;
    }

    if (v20[*(v37 + 28)])
    {
      v47 = 1;
      goto LABEL_13;
    }

    v63 = 1;
LABEL_6:
    sub_29E19C66C(v20, type metadata accessor for CycleChartCycle.RelativeDayIndex);
    v36 += v59;
    --v34;
  }

  while (v34);

  a3 = v56;
  a1 = v55;
LABEL_22:

  sub_29DEFC9D0(a1, a3, a6, a7, a8, a9);
  sub_29E19C1CC(a1, a3, a6, a7, a8, a9);
}

double sub_29E19C108()
{
  result = 35.0;
  if (*(v0 + 8) == 2)
  {
    return 110.0;
  }

  return result;
}

id sub_29E19C164(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

double sub_29E19C1CC(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [objc_opt_self() systemGrayColor];
  [a2 displayScale];
  v14 = 1.0 / v13;
  v15 = 1.0 / v13 * 0.5;
  sub_29E19C53C(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CD7A0;
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  MinX = CGRectGetMinX(v24);
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  MaxY = CGRectGetMaxY(v25);
  *(v16 + 32) = MinX;
  *(v16 + 40) = MaxY - v15;
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  v20 = CGRectGetMaxY(v27);
  *(v16 + 48) = MaxX;
  *(v16 + 56) = v20 - v15;
  v21 = [v12 CGColor];
  CGContextSetStrokeColorWithColor(a1, v21);

  CGContextSetLineWidth(a1, v14);
  sub_29E2C38F4();

  return result;
}

void sub_29E19C380(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = objc_allocWithZone(MEMORY[0x29EDC7A00]);
  v17[4] = sub_29E19B8AC;
  v17[5] = 0;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 1107296256;
  v17[2] = sub_29E19C164;
  v17[3] = &unk_2A24BD7A8;
  v13 = _Block_copy(v17);
  v14 = [v12 initWithDynamicProvider_];
  _Block_release(v13);

  v15 = [v14 resolvedColorWithTraitCollection_];

  CGContextSaveGState(a1);
  v16 = [v15 CGColor];
  CGContextSetFillColorWithColor(a1, v16);

  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  CGContextFillRect(a1, v18);
  CGContextRestoreGState(a1);

  sub_29DF5A828();
  sub_29E19C1CC(a1, a2, a3, a4, a5, a6);
}

double sub_29E19C524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_29E19C53C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E19C5A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E19C5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleChartCycle.RelativeDayIndex(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E19C66C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E19C6E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E19C780(uint64_t a1)
{
  sub_29E2C02D4();
  if (v1 <= 0x3F)
  {
    sub_29E19C6E8(319, &qword_2A181E828, type metadata accessor for CGSize, MEMORY[0x29EDBCB00]);
    if (v2 <= 0x3F)
    {
      sub_29E19C6E8(319, &qword_2A181AE00, sub_29E03887C, MEMORY[0x29EDBC390]);
      if (v3 <= 0x3F)
      {
        sub_29E19C6E8(319, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29E19C8E0@<X0>(void *a1@<X8>)
{
  v3 = sub_29E2C1A64();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E19C6E8(0, &qword_2A181AE88, sub_29E03887C, MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PregnancyModeTimelineView(0);
  sub_29E1A95C0(v1 + *(v10 + 24), v9, &qword_2A181AE88, sub_29E03887C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_29E1A92E8(v9, a1, sub_29E03887C);
  }

  sub_29E2C3A24();
  v12 = sub_29E2C1F84();
  sub_29E2C03B4();

  sub_29E2C1A54();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29E19CAF0@<X0>(void *a1@<X8>)
{
  v3 = sub_29E2C1A64();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDBC518];
  sub_29E19C6E8(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for PregnancyModeTimelineView(0);
  sub_29E1A95C0(v1 + *(v11 + 28), v10, &qword_2A1819020, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29E2C16E4();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_29E2C3A24();
    v14 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_29E19CD1C@<X0>(uint64_t a1@<X8>)
{
  v130 = a1;
  sub_29E1A5678(0);
  v115 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v113 = (&v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E1A6458(0);
  v116 = *(v4 - 8);
  v117 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v114 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A650C(0);
  v129 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v118 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A65D8(0, &qword_2A181E9A8, sub_29E1A665C, sub_29E1A650C, MEMORY[0x29EDBC7E8]);
  v127 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v128 = &v102 - v9;
  v10 = sub_29E2C1B94();
  v124 = *(v10 - 8);
  v125 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v123 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C1F14();
  v120 = *(v12 - 8);
  v121 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v119 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PregnancyModeTimelineView(0);
  v104 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v105 = v15;
  v106 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A6728(0);
  v109 = v16;
  v17 = MEMORY[0x2A1C7C4A8](v16);
  v107 = (&v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E1A66A4(0, v17);
  v111 = v19;
  v110 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v108 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A665C(0);
  v126 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v112 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E2C1E04();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v103 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03A230(0);
  v27 = v26 - 8;
  MEMORY[0x2A1C7C4A8](v26);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03887C(0);
  MEMORY[0x2A1C7C4A8](v30 - 8);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33);
  v35 = &v102 - v34;
  MEMORY[0x2A1C7C4A8](v36);
  v38 = &v102 - v37;
  v122 = v1;
  sub_29E19C8E0((&v102 - v37));
  (*(v24 + 104))(v35, *MEMORY[0x29EDBC8A0], v23);
  (*(v24 + 56))(v35, 0, 1, v23);
  v39 = *(v27 + 56);
  sub_29E1A9280(v38, v29, sub_29E03887C);
  sub_29E1A9280(v35, &v29[v39], sub_29E03887C);
  v40 = *(v24 + 48);
  if (v40(v29, 1, v23) == 1)
  {
    sub_29E1A7BDC(v35, sub_29E03887C);
    sub_29E1A7BDC(v38, sub_29E03887C);
    if (v40(&v29[v39], 1, v23) == 1)
    {
      sub_29E1A7BDC(v29, sub_29E03887C);
LABEL_9:
      v72 = sub_29E2C1BC4();
      v73 = v107;
      *v107 = v72;
      *(v73 + 8) = 0;
      *(v73 + 16) = 0;
      sub_29E1A7F2C(0, &qword_2A181EC28, sub_29E1A67D4, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
      v75 = (v73 + *(v74 + 44));
      *v75 = sub_29E2C1F94();
      sub_29E1A9024(0, &qword_2A181EC30, sub_29E1A6890);
      v77 = v122;
      sub_29E19DF10(v122, &v75[*(v76 + 44)]);
      v78 = sub_29E2C1FD4();
      sub_29E2C1424();
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v86 = v85;
      sub_29E1A67D4(0);
      v88 = &v75[*(v87 + 36)];
      *v88 = v78;
      *(v88 + 1) = v80;
      *(v88 + 2) = v82;
      *(v88 + 3) = v84;
      *(v88 + 4) = v86;
      v88[40] = 0;
      v89 = v77;
      v90 = v106;
      sub_29E1A9280(v89, v106, type metadata accessor for PregnancyModeTimelineView);
      v91 = (*(v104 + 80) + 16) & ~*(v104 + 80);
      v92 = swift_allocObject();
      sub_29E1A92E8(v90, v92 + v91, type metadata accessor for PregnancyModeTimelineView);
      v93 = v109;
      v94 = (v73 + *(v109 + 36));
      *v94 = sub_29E19DB5C;
      v94[1] = 0;
      v94[2] = sub_29E1A7FEC;
      v94[3] = v92;
      v95 = v119;
      sub_29E2C1EF4();
      v96 = sub_29E1A7AFC();
      v97 = v108;
      sub_29E2C24A4();
      (*(v120 + 8))(v95, v121);
      sub_29E1A7BDC(v73, sub_29E1A6728);
      v98 = v123;
      sub_29E2C1B84();
      v131 = v93;
      v132 = v96;
      swift_getOpaqueTypeConformance2();
      v99 = v112;
      v100 = v111;
      sub_29E2C24B4();
      (*(v124 + 8))(v98, v125);
      (*(v110 + 8))(v97, v100);
      v67 = sub_29E1A665C;
      sub_29E1A805C(v99, v128, sub_29E1A665C);
      swift_storeEnumTagMultiPayload();
      sub_29E1A7C3C();
      sub_29E1A7D58(&qword_2A181EC10, sub_29E1A650C, sub_29E1A7D1C);
      sub_29E2C1C74();
      v68 = v99;
      return sub_29E1A80C4(v68, v67);
    }

    goto LABEL_6;
  }

  sub_29E1A9280(v29, v32, sub_29E03887C);
  if (v40(&v29[v39], 1, v23) == 1)
  {
    sub_29E1A7BDC(v35, sub_29E03887C);
    sub_29E1A7BDC(v38, sub_29E03887C);
    (*(v24 + 8))(v32, v23);
LABEL_6:
    sub_29E1A7BDC(v29, sub_29E03A230);
    goto LABEL_7;
  }

  v69 = v103;
  (*(v24 + 32))(v103, &v29[v39], v23);
  sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8], MEMORY[0x29EDBC8B0]);
  v70 = sub_29E2C3304();
  v71 = *(v24 + 8);
  v71(v69, v23);
  sub_29E1A7BDC(v35, sub_29E03887C);
  sub_29E1A7BDC(v38, sub_29E03887C);
  v71(v32, v23);
  sub_29E1A7BDC(v29, sub_29E03887C);
  if (v70)
  {
    goto LABEL_9;
  }

LABEL_7:
  v41 = sub_29E2C1BD4();
  v42 = v113;
  *v113 = v41;
  *(v42 + 8) = 0x4024000000000000;
  *(v42 + 16) = 0;
  sub_29E1A7F2C(0, &qword_2A181EC00, sub_29E1A570C, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E19DC68(v122, v42 + *(v43 + 44));
  v44 = v119;
  sub_29E2C1EF4();
  v45 = sub_29E1A5E20(&qword_2A181E988, sub_29E1A5678, MEMORY[0x29EDBCB58]);
  v46 = v114;
  v47 = v115;
  sub_29E2C24A4();
  (*(v120 + 8))(v44, v121);
  sub_29E1A7BDC(v42, sub_29E1A5678);
  v48 = v123;
  sub_29E2C1B84();
  v131 = v47;
  v132 = v45;
  swift_getOpaqueTypeConformance2();
  v49 = v117;
  v50 = v118;
  sub_29E2C24B4();
  (*(v124 + 8))(v48, v125);
  (*(v116 + 8))(v46, v49);
  LOBYTE(v48) = sub_29E2C1FD4();
  sub_29E2C1424();
  v52 = v51.n128_u64[0];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_29E1A6534(0, v51);
  v60 = v50 + *(v59 + 36);
  *v60 = v48;
  *(v60 + 8) = v52;
  *(v60 + 16) = v54;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *(v60 + 40) = 0;
  LOBYTE(v48) = sub_29E2C1FE4();
  sub_29E2C1424();
  v61 = v128;
  v62 = v50 + *(v129 + 36);
  *v62 = v48;
  *(v62 + 8) = v63;
  *(v62 + 16) = v64;
  *(v62 + 24) = v65;
  *(v62 + 32) = v66;
  *(v62 + 40) = 0;
  v67 = sub_29E1A650C;
  sub_29E1A805C(v50, v61, sub_29E1A650C);
  swift_storeEnumTagMultiPayload();
  sub_29E1A7C3C();
  sub_29E1A7D58(&qword_2A181EC10, sub_29E1A650C, sub_29E1A7D1C);
  sub_29E2C1C74();
  v68 = v50;
  return sub_29E1A80C4(v68, v67);
}

void sub_29E19DB88(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for PregnancyModeTimelineView(0);
  sub_29E19C6E8(0, &qword_2A181E828, type metadata accessor for CGSize, MEMORY[0x29EDBCB00]);

  sub_29E2C27D4();
  sub_29E2C27E4();
}

double sub_29E19DC68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A5E68(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v23 - v8;
  sub_29E1A5794(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v23 - v14;
  *v15 = sub_29E2C1BD4();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v16 = MEMORY[0x29EDBC450];
  v17 = MEMORY[0x29EDBC448];
  sub_29E1A7F2C(0, &qword_2A181ECB8, sub_29E1A5828, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E1A0E2C(a1, &v15[*(v18 + 44)], v19);
  *v9 = sub_29E2C1BC4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_29E1A7F2C(0, &qword_2A181EC70, sub_29E1A5EFC, v16, v17);
  sub_29E1A284C(a1, &v9[*(v20 + 44)]);
  sub_29E1A9280(v15, v12, sub_29E1A5794);
  sub_29E1A9280(v9, v6, sub_29E1A5E68);
  sub_29E1A9280(v12, a2, sub_29E1A5794);
  sub_29E1A58B0(0, &qword_2A181E840, sub_29E1A5794, sub_29E1A5E68);
  sub_29E1A9280(v6, a2 + *(v21 + 48), sub_29E1A5E68);
  sub_29E1A7BDC(v9, sub_29E1A5E68);
  sub_29E1A7BDC(v15, sub_29E1A5794);
  sub_29E1A7BDC(v6, sub_29E1A5E68);
  sub_29E1A7BDC(v12, sub_29E1A5794);
  return result;
}

double sub_29E19DF10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_29E1A763C(0);
  v52 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A7520(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = (&v49 - v9);
  sub_29E1A7274(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A6F90(0);
  v15 = v14 - 8;
  MEMORY[0x2A1C7C4A8](v14);
  v51 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = (&v49 - v18);
  sub_29E1A692C(0);
  v21 = v20 - 8;
  MEMORY[0x2A1C7C4A8](v20);
  v50 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v49 - v24;
  *v25 = sub_29E2C1A84();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v26 = MEMORY[0x29EDBC418];
  v27 = MEMORY[0x29EDBC410];
  sub_29E1A7F2C(0, &qword_2A181EC40, sub_29E1A69E8, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
  sub_29E19E4C0(a1, &v25[*(v28 + 44)]);
  *&v25[*(v21 + 44)] = xmmword_29E2E3190;
  *v13 = sub_29E2C1A84();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181EC48, sub_29E1A7308, v26, v27);
  sub_29E19F304(a1, &v13[*(v29 + 44)]);
  *v19 = sub_29E2C2AA4();
  v19[1] = v30;
  v31 = MEMORY[0x29EDBC460];
  v32 = MEMORY[0x29EDBC458];
  sub_29E1A7F2C(0, &qword_2A181EC50, sub_29E1A704C, MEMORY[0x29EDBC460], MEMORY[0x29EDBC458]);
  sub_29E1A8124(v13, (v19 + *(v33 + 44)));
  sub_29E1A7BDC(v13, sub_29E1A7274);
  LOBYTE(v13) = sub_29E2C1FE4();
  sub_29E2C1424();
  v34 = v19 + *(v15 + 44);
  *v34 = v13;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  *v5 = sub_29E2C1BD4();
  *(v5 + 1) = 0x4039000000000000;
  v5[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181EC58, sub_29E1A76F8, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E19F944(a1, &v5[*(v39 + 44)]);
  *&v5[*(v52 + 44)] = xmmword_29E2E31A0;
  *v10 = sub_29E2C2AA4();
  v10[1] = v40;
  sub_29E1A7F2C(0, &qword_2A181EC60, sub_29E1A75B4, v31, v32);
  sub_29E1A8460(v5, (v10 + *(v41 + 44)));
  sub_29E1A7BDC(v5, sub_29E1A763C);
  v42 = v50;
  sub_29E1A9280(v25, v50, sub_29E1A692C);
  v43 = v51;
  sub_29E1A9280(v19, v51, sub_29E1A6F90);
  v44 = v53;
  sub_29E1A9280(v10, v53, sub_29E1A7520);
  v45 = v54;
  sub_29E1A9280(v42, v54, sub_29E1A692C);
  sub_29E1A78D8(0, &qword_2A181E9E8, sub_29E1A692C, sub_29E1A6F90, sub_29E1A7520);
  v47 = v46;
  sub_29E1A9280(v43, v45 + *(v46 + 48), sub_29E1A6F90);
  sub_29E1A9280(v44, v45 + *(v47 + 64), sub_29E1A7520);
  sub_29E1A7BDC(v10, sub_29E1A7520);
  sub_29E1A7BDC(v19, sub_29E1A6F90);
  sub_29E1A7BDC(v25, sub_29E1A692C);
  sub_29E1A7BDC(v44, sub_29E1A7520);
  sub_29E1A7BDC(v43, sub_29E1A6F90);
  sub_29E1A7BDC(v42, sub_29E1A692C);
  return result;
}

void sub_29E19E4C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  sub_29E1A6C78(0);
  v76 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v70 - v6;
  sub_29E1A6B08(0);
  v9 = v8 - 8;
  MEMORY[0x2A1C7C4A8](v8);
  v75 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v70 - v12;
  sub_29E1A6AE0(0);
  v15 = v14 - 8;
  MEMORY[0x2A1C7C4A8](v14);
  v74 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v70 - v18;
  sub_29E1A6AB8(0);
  v21 = v20 - 8;
  MEMORY[0x2A1C7C4A8](v20);
  v80 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v70 - v24;
  *v25 = sub_29E2C1BD4();
  *(v25 + 1) = 0;
  v25[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECB8, sub_29E1A5828, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  v27 = &v25[*(v26 + 44)];
  v72 = a1;
  sub_29E1A0E2C(a1, v27, v28);
  v29 = sub_29E2C2014();
  v30 = (a1 + *(type metadata accessor for PregnancyModeTimelineView(0) + 20));
  v31 = *v30;
  v32 = v30[1];
  v73 = v30[2];
  *&v81 = v31;
  *(&v81 + 1) = v32;
  *&v82 = v73;
  sub_29E19C6E8(0, &qword_2A181E828, type metadata accessor for CGSize, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E2C1424();
  v33 = &v25[*(v21 + 44)];
  *v33 = v29;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  v79 = v19;
  sub_29E2C2974();
  *&v19[*(v15 + 44)] = xmmword_29E2DE320;
  v38 = v13;
  *v13 = sub_29E2C1BD4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECC0, sub_29E1A6BC4, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  v40 = v72;
  sub_29E1A00D8(&v13[*(v39 + 44)]);
  LOBYTE(v21) = sub_29E2C1FF4();
  *&v81 = v31;
  *(&v81 + 1) = v32;
  v41 = v73;
  *&v82 = v73;
  sub_29E2C27D4();
  sub_29E2C1424();
  v42 = &v13[*(v9 + 44)];
  v71 = v13;
  *v42 = v21;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  *v7 = sub_29E2C1BC4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_29E1A7F2C(0, &qword_2A181ECD8, sub_29E1A6D5C, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E19EB58(v40, &v7[*(v47 + 44)]);
  LOBYTE(v21) = sub_29E2C1FF4();
  sub_29E2C1424();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_29E1A6CA0(0);
  v57 = &v7[*(v56 + 36)];
  *v57 = v21;
  *(v57 + 1) = v49;
  *(v57 + 2) = v51;
  *(v57 + 3) = v53;
  *(v57 + 4) = v55;
  v57[40] = 0;
  *&v81 = v31;
  *(&v81 + 1) = v32;
  *&v82 = v41;
  sub_29E2C27D4();
  sub_29E2C2AB4();
  sub_29E2C1564();
  v58 = &v7[*(v76 + 44)];
  v59 = v82;
  *v58 = v81;
  *(v58 + 1) = v59;
  *(v58 + 2) = v83;
  v60 = v80;
  sub_29E1A9280(v25, v80, sub_29E1A6AB8);
  v61 = v74;
  sub_29E1A9280(v79, v74, sub_29E1A6AE0);
  v62 = v75;
  sub_29E1A9280(v38, v75, sub_29E1A6B08);
  v63 = v77;
  sub_29E1A9280(v7, v77, sub_29E1A6C78);
  v64 = v60;
  v65 = v78;
  sub_29E1A9280(v64, v78, sub_29E1A6AB8);
  sub_29E1A6A1C(0, v66);
  v68 = v67;
  sub_29E1A9280(v61, v65 + v67[12], sub_29E1A6AE0);
  sub_29E1A9280(v62, v65 + v68[16], sub_29E1A6B08);
  v69 = v65 + v68[20];
  *v69 = 0x4049000000000000;
  *(v69 + 8) = 0;
  sub_29E1A9280(v63, v65 + v68[24], sub_29E1A6C78);
  sub_29E1A7BDC(v7, sub_29E1A6C78);
  sub_29E1A7BDC(v71, sub_29E1A6B08);
  sub_29E1A7BDC(v79, sub_29E1A6AE0);
  sub_29E1A7BDC(v25, sub_29E1A6AB8);
  sub_29E1A7BDC(v63, sub_29E1A6C78);
  sub_29E1A7BDC(v62, sub_29E1A6B08);
  sub_29E1A7BDC(v61, sub_29E1A6AE0);
  sub_29E1A7BDC(v80, sub_29E1A6AB8);
}

double sub_29E19EB58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A6010(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20 - v8;
  sub_29E1A6DE4(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v20 - v14;
  *v15 = sub_29E2C1AA4();
  *(v15 + 1) = 0x4014000000000000;
  v15[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECE0, sub_29E1A6E78, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
  sub_29E19EDEC(a1, &v15[*(v16 + 44)]);
  *v9 = sub_29E2C1F94();
  sub_29E1A9024(0, &qword_2A181EC78, sub_29E1A60A4);
  sub_29E1A2B58(&v9[*(v17 + 44)]);
  sub_29E1A9280(v15, v12, sub_29E1A6DE4);
  sub_29E1A9280(v9, v6, sub_29E1A6010);
  sub_29E1A9280(v12, a2, sub_29E1A6DE4);
  sub_29E1A58B0(0, &qword_2A181EA68, sub_29E1A6DE4, sub_29E1A6010);
  sub_29E1A9280(v6, a2 + *(v18 + 48), sub_29E1A6010);
  sub_29E1A7BDC(v9, sub_29E1A6010);
  sub_29E1A7BDC(v15, sub_29E1A6DE4);
  sub_29E1A7BDC(v6, sub_29E1A6010);
  sub_29E1A7BDC(v12, sub_29E1A6DE4);
  return result;
}

void sub_29E19EDEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_29E2C2104();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A5F84(0);
  v8 = v7 - 8;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = (&v43 - v12);
  v14 = *(type metadata accessor for PregnancyModeTimelineGauge(0) + 20);
  v15 = sub_29E2C02D4();
  (*(*(v15 - 8) + 16))(v13 + v14, a1, v15);
  *v13 = swift_getKeyPath();
  sub_29E19C6E8(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a1) = sub_29E2C1FE4();
  sub_29E2C1424();
  v16 = v13 + *(v8 + 44);
  *v16 = a1;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v45 = sub_29E2C2714();
  sub_29E2C2144();
  (*(v4 + 104))(v6, *MEMORY[0x29EDBC9B0], v3);
  sub_29E2C2124();

  (*(v4 + 8))(v6, v3);
  sub_29E2C20B4();
  v21 = sub_29E2C20F4();

  KeyPath = swift_getKeyPath();
  sub_29DE9408C(0, &qword_2A1817FE0, 0x29EDC7A00);
  sub_29E2C4074();
  v23 = sub_29E2C2654();
  v24 = swift_getKeyPath();
  v25 = sub_29E2C2614();
  v26 = swift_getKeyPath();
  LOBYTE(v8) = sub_29E2C1FD4();
  sub_29E2C1424();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  LOBYTE(v55[0]) = 0;
  v44 = v10;
  sub_29E1A9280(v13, v10, sub_29E1A5F84);
  v35 = v10;
  v36 = v46;
  sub_29E1A9280(v35, v46, sub_29E1A5F84);
  sub_29E1A58B0(0, &qword_2A181EA80, sub_29E1A5F84, sub_29E1A6F00);
  v38 = v36 + *(v37 + 48);
  v39 = v45;
  *&v48 = v45;
  *(&v48 + 1) = KeyPath;
  *&v49 = v21;
  *(&v49 + 1) = v24;
  *&v50 = v23;
  *(&v50 + 1) = v26;
  *&v51 = v25;
  BYTE8(v51) = v8;
  HIDWORD(v51) = *&v47[3];
  *(&v51 + 9) = *v47;
  *&v52 = v28;
  *(&v52 + 1) = v30;
  *&v53 = v32;
  *(&v53 + 1) = v34;
  v54 = 0;
  *(v38 + 96) = 0;
  v40 = v49;
  *v38 = v48;
  *(v38 + 16) = v40;
  v41 = v51;
  *(v38 + 32) = v50;
  *(v38 + 48) = v41;
  v42 = v53;
  *(v38 + 64) = v52;
  *(v38 + 80) = v42;
  sub_29E1A9280(&v48, v55, sub_29E1A6F00);
  sub_29E1A7BDC(v13, sub_29E1A5F84);
  v55[0] = v39;
  v55[1] = KeyPath;
  v55[2] = v21;
  v55[3] = v24;
  v55[4] = v23;
  v55[5] = v26;
  v55[6] = v25;
  v56 = v8;
  *v57 = *v47;
  *&v57[3] = *&v47[3];
  v58 = v28;
  v59 = v30;
  v60 = v32;
  v61 = v34;
  v62 = 0;
  sub_29E1A7BDC(v55, sub_29E1A6F00);
  sub_29E1A7BDC(v44, sub_29E1A5F84);
}

void sub_29E19F304(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A74D0(0);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v38 - v9;
  sub_29E1A73B4(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = v38 - v15;
  *v16 = sub_29E2C1BD4();
  *(v16 + 1) = 0x4024000000000000;
  v16[16] = 0;
  v17 = MEMORY[0x29EDBC450];
  v18 = MEMORY[0x29EDBC448];
  sub_29E1A7F2C(0, &qword_2A181ECD0, sub_29E1A7448, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E19F6A0(a1, &v16[*(v19 + 44)]);
  *v10 = sub_29E2C1BC4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_29E1A7F2C(0, &qword_2A181EC70, sub_29E1A5EFC, v17, v18);
  sub_29E1A284C(a1, &v10[*(v20 + 44)]);
  LOBYTE(v17) = sub_29E2C1FF4();
  sub_29E2C1424();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_29E1A74F8(0);
  v30 = &v10[*(v29 + 36)];
  *v30 = v17;
  *(v30 + 1) = v22;
  *(v30 + 2) = v24;
  *(v30 + 3) = v26;
  *(v30 + 4) = v28;
  v30[40] = 0;
  v31 = (a1 + *(type metadata accessor for PregnancyModeTimelineView(0) + 20));
  v32 = *(v31 + 2);
  v39 = *v31;
  *&v40 = v32;
  sub_29E19C6E8(0, &qword_2A181E828, type metadata accessor for CGSize, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E2C2AB4();
  sub_29E2C1564();
  v33 = &v10[*(v5 + 44)];
  v34 = v40;
  *v33 = v39;
  *(v33 + 1) = v34;
  *(v33 + 2) = v41;
  sub_29E1A9280(v16, v13, sub_29E1A73B4);
  sub_29E1A9280(v10, v7, sub_29E1A74D0);
  sub_29E1A9280(v13, a2, sub_29E1A73B4);
  sub_29E1A733C(0, v35);
  v37 = a2 + *(v36 + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_29E1A9280(v7, a2 + *(v36 + 64), sub_29E1A74D0);
  sub_29E1A7BDC(v10, sub_29E1A74D0);
  sub_29E1A7BDC(v16, sub_29E1A73B4);
  sub_29E1A7BDC(v7, sub_29E1A74D0);
  sub_29E1A7BDC(v13, sub_29E1A73B4);
}

double sub_29E19F6A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A6B30(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v23 - v8;
  sub_29E1A5794(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v23 - v14;
  *v15 = sub_29E2C1BD4();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v16 = MEMORY[0x29EDBC450];
  v17 = MEMORY[0x29EDBC448];
  sub_29E1A7F2C(0, &qword_2A181ECB8, sub_29E1A5828, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E1A0E2C(a1, &v15[*(v18 + 44)], v19);
  *v9 = sub_29E2C1BD4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECC0, sub_29E1A6BC4, v16, v17);
  sub_29E1A00D8(&v9[*(v20 + 44)]);
  sub_29E1A9280(v15, v12, sub_29E1A5794);
  sub_29E1A9280(v9, v6, sub_29E1A6B30);
  sub_29E1A9280(v12, a2, sub_29E1A5794);
  sub_29E1A58B0(0, &qword_2A181EB20, sub_29E1A5794, sub_29E1A6B30);
  sub_29E1A9280(v6, a2 + *(v21 + 48), sub_29E1A6B30);
  sub_29E1A7BDC(v9, sub_29E1A6B30);
  sub_29E1A7BDC(v15, sub_29E1A5794);
  sub_29E1A7BDC(v6, sub_29E1A6B30);
  sub_29E1A7BDC(v12, sub_29E1A5794);
  return result;
}

double sub_29E19F944@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A5E68(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v21 - v8;
  sub_29E1A7780(0);
  v11 = v10 - 8;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v21 - v15;
  *v16 = sub_29E2C1AA4();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181EC68, sub_29E1A783C, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
  sub_29E19FC00(a1, &v16[*(v17 + 44)]);
  *&v16[*(v11 + 44)] = xmmword_29E2E31B0;
  *v9 = sub_29E2C1BC4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_29E1A7F2C(0, &qword_2A181EC70, sub_29E1A5EFC, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E1A284C(a1, &v9[*(v18 + 44)]);
  sub_29E1A9280(v16, v13, sub_29E1A7780);
  sub_29E1A9280(v9, v6, sub_29E1A5E68);
  sub_29E1A9280(v13, a2, sub_29E1A7780);
  sub_29E1A58B0(0, &qword_2A181EB80, sub_29E1A7780, sub_29E1A5E68);
  sub_29E1A9280(v6, a2 + *(v19 + 48), sub_29E1A5E68);
  sub_29E1A7BDC(v9, sub_29E1A5E68);
  sub_29E1A7BDC(v16, sub_29E1A7780);
  sub_29E1A7BDC(v6, sub_29E1A5E68);
  sub_29E1A7BDC(v13, sub_29E1A7780);
  return result;
}

void sub_29E19FC00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  sub_29E1A6B08(0);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v52 - v8;
  sub_29E1A7974(0);
  v11 = v10 - 8;
  MEMORY[0x2A1C7C4A8](v10);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v52 - v14;
  sub_29E1A6AB8(0);
  v17 = v16 - 8;
  MEMORY[0x2A1C7C4A8](v16);
  v53 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v52 - v20;
  *v21 = sub_29E2C1BD4();
  *(v21 + 1) = 0;
  v21[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECB8, sub_29E1A5828, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  v23 = &v21[*(v22 + 44)];
  v52 = a1;
  sub_29E1A0E2C(a1, v23, v24);
  v25 = sub_29E2C2014();
  v26 = (a1 + *(type metadata accessor for PregnancyModeTimelineView(0) + 20));
  v28 = v26[1];
  v29 = v26[2];
  v57 = *v26;
  v27 = v57;
  v58 = v28;
  v59 = v29;
  sub_29E19C6E8(0, &qword_2A181E828, type metadata accessor for CGSize, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E2C1424();
  v30 = &v21[*(v17 + 44)];
  *v30 = v25;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_29E2C2974();
  LOBYTE(v17) = sub_29E2C2024();
  sub_29E2C1424();
  v35 = &v15[*(v11 + 44)];
  *v35 = v17;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  *v9 = sub_29E2C1BD4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181ECC0, sub_29E1A6BC4, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E1A00D8(&v9[*(v40 + 44)]);
  LOBYTE(v17) = sub_29E2C1FF4();
  v57 = v27;
  v58 = v28;
  v59 = v29;
  sub_29E2C27D4();
  sub_29E2C1424();
  v41 = &v9[*(v5 + 44)];
  *v41 = v17;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  v46 = v53;
  sub_29E1A9280(v21, v53, sub_29E1A6AB8);
  v47 = v54;
  sub_29E1A9280(v15, v54, sub_29E1A7974);
  v48 = v55;
  sub_29E1A9280(v9, v55, sub_29E1A6B08);
  v49 = v56;
  sub_29E1A9280(v46, v56, sub_29E1A6AB8);
  sub_29E1A78D8(0, &qword_2A181EBA0, sub_29E1A6AB8, sub_29E1A7974, sub_29E1A6B08);
  v51 = v50;
  sub_29E1A9280(v47, v49 + *(v50 + 48), sub_29E1A7974);
  sub_29E1A9280(v48, v49 + *(v51 + 64), sub_29E1A6B08);
  sub_29E1A7BDC(v9, sub_29E1A6B08);
  sub_29E1A7BDC(v15, sub_29E1A7974);
  sub_29E1A7BDC(v21, sub_29E1A6AB8);
  sub_29E1A7BDC(v48, sub_29E1A6B08);
  sub_29E1A7BDC(v47, sub_29E1A7974);
  sub_29E1A7BDC(v46, sub_29E1A6AB8);
}

double sub_29E1A00D8@<D0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v89 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v87 = v3;
  v88 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v86 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v85 = &v80 - v7;
  v91 = sub_29E2BC9D4();
  v84 = *(v91 - 1);
  MEMORY[0x2A1C7C4A8](v91);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_29E2BCA44();
  v80 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BCA54();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v80 - v17;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v80 - v20;
  v83 = sub_29E2BCBB4();
  v81 = *(v83 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v83);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A5D28(0, v22);
  v95 = v25;
  MEMORY[0x2A1C7C4A8](v25);
  v93 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v92 = &v80 - v28;
  MEMORY[0x2A1C7C4A8](v29);
  v90 = &v80 - v30;
  MEMORY[0x2A1C7C4A8](v31);
  v33 = &v80 - v32;
  v34 = sub_29E2C02B4();
  MEMORY[0x29ED78EF0](v34);
  sub_29E2BCA14();
  sub_29E2BC9B4();
  (*(v80 + 8))(v11, v82);
  v35 = *(v13 + 8);
  v35(v15, v12);
  sub_29E2BC9C4();
  sub_29E2BC994();
  (*(v84 + 8))(v9, v91);
  v36 = v18;
  v37 = v85;
  v35(v36, v12);
  sub_29E1A5E20(&qword_2A1817C78, MEMORY[0x29EDB9BB0], MEMORY[0x29EDB9BA8]);
  sub_29E2BCB94();
  v38 = v12;
  v39 = v86;
  v35(v21, v38);
  (*(v81 + 8))(v24, v83);
  v96 = v98;
  v97 = v99;
  sub_29DE9DE68();
  v40 = sub_29E2C2294();
  v42 = v41;
  LOBYTE(v21) = v43;
  sub_29E1A09EC(0, v41, v44, v33);
  v45 = v21 & 1;
  v46 = v87;
  sub_29DED6478(v40, v42, v45);
  v47 = v88;

  v48 = *(v95 + 36);
  v91 = v33;
  *&v33[v48] = 257;
  sub_29E2C3314();
  (*(v47 + 16))(v39, v37, v46);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v49 = qword_2A1A67F80;
  sub_29E2BCC74();
  v50 = sub_29E2C3414();
  v52 = v51;
  (*(v47 + 8))(v37, v46);
  v98 = v50;
  v99 = v52;
  v53 = sub_29E2C2294();
  v55 = v54;
  v57 = v56;
  sub_29E2C2044();
  sub_29E2C20B4();
  sub_29E2C20F4();

  v58 = sub_29E2C2254();
  v60 = v59;
  v62 = v61;

  v63 = [objc_opt_self() secondaryLabelColor];
  v98 = sub_29E2C2654();
  v64 = sub_29E2C2224();
  v88 = v65;
  v89 = v64;
  LODWORD(v87) = v66;
  v68 = v67;
  sub_29DED6478(v53, v55, v57 & 1);

  sub_29DED6478(v58, v60, v62 & 1);

  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  v70 = *(v69 + 36);
  KeyPath = swift_getKeyPath();
  v72 = v90;
  *&v90[v70] = KeyPath;
  sub_29E19C6E8(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v73 = v88;
  *v72 = v89;
  *(v72 + 8) = v73;
  *(v72 + 16) = v87 & 1;
  *(v72 + 24) = v68;
  *(v72 + *(v95 + 36)) = 257;
  v75 = v91;
  v74 = v92;
  sub_29E1A9280(v91, v92, sub_29E1A5D28);
  v76 = v93;
  sub_29E1A9280(v72, v93, sub_29E1A5D28);
  v77 = v94;
  sub_29E1A9280(v74, v94, sub_29E1A5D28);
  sub_29E1A6BF8(0);
  sub_29E1A9280(v76, v77 + *(v78 + 48), sub_29E1A5D28);
  sub_29E1A7BDC(v72, sub_29E1A5D28);
  sub_29E1A7BDC(v75, sub_29E1A5D28);
  sub_29E1A7BDC(v76, sub_29E1A5D28);
  sub_29E1A7BDC(v74, sub_29E1A5D28);
  return result;
}

uint64_t sub_29E1A09EC@<X0>(char a1@<W0>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_29E1A91E0(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C2164();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      sub_29E2C2044();
      sub_29E2C20B4();
      sub_29E2C20F4();
    }

    else
    {
      sub_29E2C2144();
    }

    v19 = sub_29E2C2254();
    v21 = v20;
    v23 = v22;

    v24 = [objc_opt_self() secondaryLabelColor];
  }

  else
  {
    v25 = v15;
    (*(v14 + 104))(v18, *MEMORY[0x29EDBC9D0], v15, v16);
    v43[2] = a3;
    v26 = *MEMORY[0x29EDBC988];
    v27 = sub_29E2C2074();
    v28 = *(v27 - 8);
    v43[1] = a5;
    v29 = v28;
    (*(v28 + 104))(v12, v26, v27);
    (*(v29 + 56))(v12, 0, 1, v27);
    sub_29E2C20D4();
    sub_29E1A7BDC(v12, sub_29E1A91E0);
    (*(v14 + 8))(v18, v25);
    sub_29E2C20B4();
    sub_29E2C20F4();

    v19 = sub_29E2C2254();
    v21 = v30;
    v23 = v31;

    v24 = [objc_opt_self() labelColor];
  }

  v32 = v24;
  v43[8] = sub_29E2C2654();
  v33 = sub_29E2C2224();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_29DED6478(v19, v21, v23 & 1);

  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  v41 = *(v40 + 36);
  *(a6 + v41) = swift_getKeyPath();
  sub_29E19C6E8(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  result = swift_storeEnumTagMultiPayload();
  *a6 = v33;
  *(a6 + 8) = v35;
  *(a6 + 16) = v37 & 1;
  *(a6 + 24) = v39;
  return result;
}

double sub_29E1A0E2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v55 = a2;
  sub_29E1A5D28(0, a3);
  v50 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E1A5CE0(0, v5);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v54 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10);
  v53 = &v45[-v11];
  sub_29E1A592C(0);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v52 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v45[-v15];
  *v16 = sub_29E2C1AA4();
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  sub_29E1A7F2C(0, &qword_2A181ECC8, sub_29E1A59C0, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
  v18 = *(v17 + 44);
  v51 = v16;
  sub_29E1A13A4(a1, v16 + v18);
  *&v56 = sub_29E1A2514();
  *(&v56 + 1) = v19;
  sub_29DE9DE68();
  v20 = sub_29E2C2294();
  v22 = v21;
  LOBYTE(v16) = v23;
  sub_29E2C2044();
  sub_29E2C20B4();
  sub_29E2C20F4();

  v24 = sub_29E2C2254();
  v26 = v25;
  v28 = v27;

  v29 = [objc_opt_self() secondaryLabelColor];
  *&v56 = sub_29E2C2654();
  v30 = sub_29E2C2224();
  v47 = v31;
  v48 = v30;
  v46 = v32;
  v49 = v33;
  sub_29DED6478(v24, v26, v28 & 1);

  sub_29DED6478(v20, v22, v16 & 1);
  v34 = v50;

  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  v36 = *(v35 + 36);
  *&v7[v36] = swift_getKeyPath();
  sub_29E19C6E8(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v37 = v47;
  *v7 = v48;
  *(v7 + 1) = v37;
  v7[16] = v46 & 1;
  *(v7 + 3) = v49;
  *&v7[*(v34 + 36)] = 256;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v56 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000026, 0x800000029E3017E0);
  sub_29E1A7D58(&qword_2A181ECA0, sub_29E1A5D28, sub_29E1A9114);
  v38 = v53;
  sub_29E2C23B4();

  sub_29E1A7BDC(v7, sub_29E1A5D28);
  v40 = v51;
  v39 = v52;
  sub_29E1A9280(v51, v52, sub_29E1A592C);
  v41 = v54;
  sub_29E1A9280(v38, v54, sub_29E1A5CE0);
  v42 = v55;
  sub_29E1A9280(v39, v55, sub_29E1A592C);
  sub_29E1A58B0(0, &qword_2A181E858, sub_29E1A592C, sub_29E1A5CE0);
  sub_29E1A9280(v41, v42 + *(v43 + 48), sub_29E1A5CE0);
  sub_29E1A7BDC(v38, sub_29E1A5CE0);
  sub_29E1A7BDC(v40, sub_29E1A592C);
  sub_29E1A7BDC(v41, sub_29E1A5CE0);
  sub_29E1A7BDC(v39, sub_29E1A592C);
  return result;
}

uint64_t sub_29E1A13A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v66 = sub_29E2C2104();
  v65 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_29E2C1E04();
  v70 = *(v71 - 8);
  MEMORY[0x2A1C7C4A8](v71);
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03A230(0);
  v68 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03887C(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v67 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v62 - v11;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = (&v62 - v14);
  v16 = sub_29E2BC6A4();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A5DA4(0, &qword_2A1819280, MEMORY[0x29EDBC0A8]);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v72 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v62 - v22;
  v69 = a1;
  sub_29E1A1CE4(v18);
  v24 = sub_29E2C2284();
  v26 = v25;
  v80 = v24;
  v81 = v25;
  v28 = v27 & 1;
  LOBYTE(v82) = v27 & 1;
  v83 = v29;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v75 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000002BLL, 0x800000029E301810);
  v74 = v23;
  sub_29E2C23B4();

  sub_29DED6478(v24, v26, v28);

  sub_29E19C8E0(v15);
  v30 = v70;
  v31 = v71;
  (*(v70 + 104))(v12, *MEMORY[0x29EDBC898], v71);
  (*(v30 + 56))(v12, 0, 1, v31);
  v32 = *(v68 + 48);
  sub_29E1A9280(v15, v7, sub_29E03887C);
  sub_29E1A9280(v12, &v7[v32], sub_29E03887C);
  v33 = *(v30 + 48);
  v34 = v15;
  v35 = v31;
  if (v33(v7, 1, v31) == 1)
  {
    sub_29E1A7BDC(v12, sub_29E03887C);
    sub_29E1A7BDC(v34, sub_29E03887C);
    if (v33(&v7[v32], 1, v31) == 1)
    {
      sub_29E1A7BDC(v7, sub_29E03887C);
      v36 = v74;
LABEL_10:
      v71 = sub_29E2C2714();
      sub_29E2C2144();
      v46 = v65;
      v47 = v64;
      v48 = v66;
      (*(v65 + 104))(v64, *MEMORY[0x29EDBC9B0], v66);
      sub_29E2C2124();

      (*(v46 + 8))(v47, v48);
      sub_29E2C20B4();
      v70 = sub_29E2C20F4();

      KeyPath = swift_getKeyPath();
      sub_29DE9408C(0, &qword_2A1817FE0, 0x29EDC7A00);
      sub_29E2C4074();
      v69 = sub_29E2C2654();
      v40 = swift_getKeyPath();
      v41 = sub_29E2C2614();
      v68 = swift_getKeyPath();
      LOBYTE(v80) = 0;
      v38 = 0x403E000000000000;
      goto LABEL_12;
    }
  }

  else
  {
    v37 = v67;
    sub_29E1A9280(v7, v67, sub_29E03887C);
    if (v33(&v7[v32], 1, v35) != 1)
    {
      v42 = &v7[v32];
      v43 = v63;
      (*(v30 + 32))(v63, v42, v35);
      sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8], MEMORY[0x29EDBC8B0]);
      v44 = sub_29E2C3304();
      v45 = *(v30 + 8);
      v45(v43, v35);
      sub_29E1A7BDC(v12, sub_29E03887C);
      sub_29E1A7BDC(v34, sub_29E03887C);
      v45(v37, v35);
      sub_29E1A7BDC(v7, sub_29E03887C);
      v36 = v74;
      if ((v44 & 1) == 0)
      {
        v38 = 0;
        v71 = 0;
        KeyPath = 0;
        v70 = 0;
        v40 = 0;
        v69 = 0;
        v68 = 0;
        v41 = 0;
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    sub_29E1A7BDC(v12, sub_29E03887C);
    sub_29E1A7BDC(v34, sub_29E03887C);
    (*(v30 + 8))(v37, v35);
  }

  sub_29E1A7BDC(v7, sub_29E03A230);
  v38 = 0;
  v71 = 0;
  KeyPath = 0;
  v70 = 0;
  v40 = 0;
  v69 = 0;
  v68 = 0;
  v41 = 0;
  v36 = v74;
LABEL_12:
  v49 = v36;
  v50 = v72;
  sub_29DFCFC28(v49, v72);
  v51 = v73;
  sub_29DFCFC28(v50, v73);
  sub_29E1A59F4(0, v52);
  v54 = v51 + *(v53 + 48);
  v75 = v38;
  v55 = v71;
  *&v76 = v71;
  *(&v76 + 1) = KeyPath;
  v56 = v70;
  *&v77 = v70;
  *(&v77 + 1) = v40;
  v57 = v69;
  v58 = v68;
  *&v78 = v69;
  *(&v78 + 1) = v68;
  v79 = v41;
  *(v54 + 64) = v41;
  v59 = v76;
  *v54 = v75;
  *(v54 + 16) = v59;
  v60 = v78;
  *(v54 + 32) = v77;
  *(v54 + 48) = v60;
  sub_29E1A9280(&v75, &v80, sub_29E1A5A80);
  sub_29E114B28(v74);
  v80 = v38;
  v81 = 0;
  v82 = v55;
  v83 = KeyPath;
  v84 = v56;
  v85 = v40;
  v86 = v57;
  v87 = v58;
  v88 = v41;
  sub_29E1A7BDC(&v80, sub_29E1A5A80);
  return sub_29E114B28(v50);
}

uint64_t sub_29E1A1CE4@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v1 = sub_29E2BCF04();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCBB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v67 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v78 = &v67 - v13;
  sub_29E2C02C4();
  v14 = sub_29E2C02A4();
  v15 = [v14 _timeZoneName];

  if (v15)
  {
    v75 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v77 = v16;
  }

  else
  {
    sub_29E2BCEF4();
    v75 = sub_29E2BCED4();
    v77 = v17;
    (*(v2 + 8))(v4, v1);
  }

  sub_29E2C0274();
  v79 = v8;
  sub_29E15177C(v8);
  v18 = *(v6 + 8);
  v82 = v5;
  v81 = v6 + 8;
  v76 = v18;
  v18(v11, v5);
  v19 = MEMORY[0x29EDC7700];
  v20 = *MEMORY[0x29EDC8118];
  v21 = *MEMORY[0x29EDC76C0];
  v22 = objc_opt_self();
  v23 = [v22 preferredFontDescriptorWithTextStyle_];
  v24 = [v23 fontDescriptorWithSymbolicTraits_];
  if (v24)
  {
    v25 = v24;

    v23 = v25;
  }

  v26 = *v19;
  v27 = [v23 fontDescriptorWithDesign_];
  if (v27)
  {
    v28 = v27;

    v23 = v28;
  }

  v29 = MEMORY[0x29EDC9E90];
  sub_29E19C6E8(0, &qword_2A1819158, sub_29DF383AC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v83 = xmmword_29E2CAB20;
  *(inited + 16) = xmmword_29E2CAB20;
  v31 = *MEMORY[0x29EDC76D0];
  *(inited + 32) = *MEMORY[0x29EDC76D0];
  sub_29E19C6E8(0, &qword_2A1819168, sub_29DF38418, v29);
  v74 = v32;
  v33 = swift_initStackObject();
  v34 = MEMORY[0x29EDC7708];
  *(v33 + 16) = v83;
  v35 = *v34;
  *(v33 + 32) = *v34;
  *(v33 + 40) = v26;
  v36 = v31;
  v37 = v35;
  v69 = v36;
  v72 = v37;
  v38 = sub_29E1852C8(v33);
  swift_setDeallocating();
  sub_29E1A7BDC(v33 + 32, sub_29DF38418);
  sub_29DF38488(0);
  v71 = v39;
  *(inited + 64) = v39;
  *(inited + 40) = v38;
  sub_29E1853AC(inited);
  swift_setDeallocating();
  sub_29E1A7BDC(inited + 32, sub_29DF383AC);
  type metadata accessor for AttributeName(0);
  v41 = v40;
  sub_29E1A5E20(&qword_2A18177E0, type metadata accessor for AttributeName, &unk_29E2CCFA4);
  v70 = v41;
  v42 = sub_29E2C31F4();

  v43 = [v23 fontDescriptorByAddingAttributes_];

  v44 = objc_opt_self();
  v73 = [v44 fontWithDescriptor:v43 size:0.0];

  v45 = objc_opt_self();
  v68 = [v45 secondaryLabelColor];
  v46 = *MEMORY[0x29EDC76C8];
  v47 = [v22 preferredFontDescriptorWithTextStyle_];
  v48 = [v47 fontDescriptorWithSymbolicTraits_];
  if (v48)
  {
    v49 = v48;

    v47 = v49;
  }

  v50 = [v47 fontDescriptorWithDesign_];
  if (v50)
  {
    v51 = v50;

    v47 = v51;
  }

  sub_29DE9408C(0, &qword_2A1817D48, 0x29EDBAC28);
  v52 = swift_initStackObject();
  *(v52 + 16) = v83;
  *(v52 + 32) = v69;
  v53 = swift_initStackObject();
  *(v53 + 16) = v83;
  *(v53 + 32) = v72;
  v54 = v53 + 32;
  *(v53 + 40) = v26;
  v55 = sub_29E1852C8(v53);
  swift_setDeallocating();
  sub_29E1A7BDC(v54, sub_29DF38418);
  *(v52 + 64) = v71;
  *(v52 + 40) = v55;
  sub_29E1853AC(v52);
  swift_setDeallocating();
  sub_29E1A7BDC(v52 + 32, sub_29DF383AC);
  v56 = sub_29E2C31F4();

  v57 = [v47 fontDescriptorByAddingAttributes_];

  v58 = [v44 fontWithDescriptor:v57 size:0.0];
  v59 = [v45 labelColor];
  v60 = v78;
  v61 = v79;
  v62 = v73;
  v63 = v68;
  sub_29E2C3EA4();

  v64 = v82;
  v65 = v76;
  v76(v61, v82);
  return v65(v60, v64);
}

uint64_t sub_29E1A2514()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = v15 - v6;
  v15[0] = sub_29E2BCBB4();
  v8 = *(v15[0] - 8);
  MEMORY[0x2A1C7C4A8](v15[0]);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C0274();
  sub_29DE9408C(0, &qword_2A1817D48, 0x29EDBAC28);
  v11 = sub_29E2C02A4();
  sub_29E2C3EB4();

  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  v13 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  (*(v8 + 8))(v10, v15[0]);
  return v13;
}

double sub_29E1A284C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E1A6010(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v27 - v8;
  sub_29E1A5F84(0);
  v11 = v10 - 8;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = (&v27 - v15);
  v17 = *(type metadata accessor for PregnancyModeTimelineGauge(0) + 20);
  v18 = sub_29E2C02D4();
  (*(*(v18 - 8) + 16))(v16 + v17, a1, v18);
  *v16 = swift_getKeyPath();
  sub_29E19C6E8(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v17) = sub_29E2C1FE4();
  sub_29E2C1424();
  v19 = v16 + *(v11 + 44);
  *v19 = v17;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  *v9 = sub_29E2C1F94();
  sub_29E1A9024(0, &qword_2A181EC78, sub_29E1A60A4);
  sub_29E1A2B58(&v9[*(v24 + 44)]);
  sub_29E1A9280(v16, v13, sub_29E1A5F84);
  sub_29E1A9280(v9, v6, sub_29E1A6010);
  sub_29E1A9280(v13, a2, sub_29E1A5F84);
  sub_29E1A58B0(0, &qword_2A181E8E0, sub_29E1A5F84, sub_29E1A6010);
  sub_29E1A9280(v6, a2 + *(v25 + 48), sub_29E1A6010);
  sub_29E1A7BDC(v9, sub_29E1A6010);
  sub_29E1A7BDC(v16, sub_29E1A5F84);
  sub_29E1A7BDC(v6, sub_29E1A6010);
  sub_29E1A7BDC(v13, sub_29E1A5F84);
  return result;
}

double sub_29E1A2B58@<D0>(uint64_t a2@<X8>)
{
  v34 = a2;
  sub_29E1A6370(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v33 - v6;
  sub_29E1A6260(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v33 - v12;
  sub_29E1A612C(0);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v33 - v18;
  *v19 = sub_29E2C1AA4();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = MEMORY[0x29EDBC418];
  v21 = MEMORY[0x29EDBC410];
  sub_29E1A7F2C(0, &qword_2A181EC80, sub_29E1A61C0, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
  sub_29E1A2F58(&v19[*(v22 + 44)], v23);
  *v13 = sub_29E2C1AA4();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_29E1A7F2C(0, &qword_2A181EC88, sub_29E1A62F4, v20, v21);
  v25 = &v13[*(v24 + 44)];
  *v7 = sub_29E2C1BD4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_29E1A7F2C(0, &qword_2A181EC90, sub_29E1A6404, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E1A54E4(&v7[*(v26 + 44)], v27);
  sub_29E1A9280(v7, v4, sub_29E1A6370);
  sub_29E1A9280(v4, v25, sub_29E1A6370);
  sub_29E1A9214(0, &qword_2A181E938, sub_29E1A6370, MEMORY[0x29EDBCB48]);
  v29 = v25 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_29E1A7BDC(v7, sub_29E1A6370);
  sub_29E1A7BDC(v4, sub_29E1A6370);
  sub_29E1A9280(v19, v16, sub_29E1A612C);
  sub_29E1A9280(v13, v10, sub_29E1A6260);
  v30 = v34;
  sub_29E1A9280(v16, v34, sub_29E1A612C);
  sub_29E1A58B0(0, &qword_2A181E900, sub_29E1A612C, sub_29E1A6260);
  sub_29E1A9280(v10, v30 + *(v31 + 48), sub_29E1A6260);
  sub_29E1A7BDC(v13, sub_29E1A6260);
  sub_29E1A7BDC(v19, sub_29E1A612C);
  sub_29E1A7BDC(v10, sub_29E1A6260);
  sub_29E1A7BDC(v16, sub_29E1A612C);
  return result;
}

double sub_29E1A2F58@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  sub_29E1A5CE0(0, a2);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v19 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v19 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v19 - v13;
  sub_29E1A30FC(&v19 - v13);
  sub_29E1A42F0(v11);
  sub_29E1A9280(v14, v8, sub_29E1A5CE0);
  sub_29E1A9280(v11, v5, sub_29E1A5CE0);
  sub_29E1A9280(v8, a1, sub_29E1A5CE0);
  sub_29E1A61F4(0, v15);
  v17 = a1 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_29E1A9280(v5, a1 + *(v16 + 64), sub_29E1A5CE0);
  sub_29E1A7BDC(v11, sub_29E1A5CE0);
  sub_29E1A7BDC(v14, sub_29E1A5CE0);
  sub_29E1A7BDC(v5, sub_29E1A5CE0);
  sub_29E1A7BDC(v8, sub_29E1A5CE0);
  return result;
}

double sub_29E1A30FC@<D0>(uint64_t a1@<X8>)
{
  v138 = a1;
  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  v3 = MEMORY[0x2A1C7C4A8](v2 - 8);
  v135 = &v116 - v4;
  sub_29E1A5D28(0, v3);
  v136 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v137 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v122 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_29E2C3384();
  v121 = *(v139 - 8);
  MEMORY[0x2A1C7C4A8](v139);
  v140 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v141 = &v116 - v11;
  v12 = sub_29E2C1E04();
  v13 = *(v12 - 8);
  v145 = v12;
  v146 = v13;
  MEMORY[0x2A1C7C4A8](v12);
  v118 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03A230(0);
  v142 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v134 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v119 = &v116 - v18;
  sub_29E03887C(0);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v120 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v143 = &v116 - v22;
  MEMORY[0x2A1C7C4A8](v23);
  v144 = (&v116 - v24);
  MEMORY[0x2A1C7C4A8](v25);
  v117 = &v116 - v26;
  MEMORY[0x2A1C7C4A8](v27);
  v132 = &v116 - v28;
  MEMORY[0x2A1C7C4A8](v29);
  v133 = (&v116 - v30);
  v130 = sub_29E2C16E4();
  v129 = *(v130 - 8);
  MEMORY[0x2A1C7C4A8](v130);
  v128 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v127 = &v116 - v33;
  v131 = sub_29E2BC9D4();
  v126 = *(v131 - 8);
  MEMORY[0x2A1C7C4A8](v131);
  v35 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_29E2BCA44();
  v36 = *(v124 - 8);
  MEMORY[0x2A1C7C4A8](v124);
  v38 = &v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29E2BCA54();
  v40 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v42 = &v116 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v43);
  v45 = &v116 - v44;
  MEMORY[0x2A1C7C4A8](v46);
  v48 = &v116 - v47;
  v125 = sub_29E2BCBB4();
  v123 = *(v125 - 8);
  MEMORY[0x2A1C7C4A8](v125);
  v50 = &v116 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_29E2C02C4();
  MEMORY[0x29ED78EF0](v51);
  sub_29E2BCA14();
  sub_29E2BC9B4();
  (*(v36 + 8))(v38, v124);
  v52 = *(v40 + 8);
  v53 = v42;
  v54 = v139;
  v52(v53, v39);
  sub_29E2BC9C4();
  sub_29E2BC994();
  (*(v126 + 8))(v35, v131);
  v55 = v45;
  v56 = v140;
  v52(v55, v39);
  sub_29E1A5E20(&qword_2A1817C78, MEMORY[0x29EDB9BB0], MEMORY[0x29EDB9BA8]);
  sub_29E2BCB94();
  v57 = v48;
  v58 = v141;
  v52(v57, v39);
  (*(v123 + 8))(v50, v125);
  v59 = *(&v148 + 1);
  v131 = v148;
  v60 = v127;
  sub_29E19CAF0(v127);
  v61 = v129;
  v62 = v128;
  v63 = v130;
  (*(v129 + 104))(v128, *MEMORY[0x29EDBC4D0], v130);
  sub_29E1A5E20(&qword_2A181EC98, MEMORY[0x29EDBC518], MEMORY[0x29EDBC520]);
  v64 = v63;
  LOBYTE(v63) = sub_29E2C32A4();
  v65 = *(v61 + 8);
  v65(v62, v64);
  v66 = v60;
  v67 = v59;
  v65(v66, v64);
  if ((v63 & 1) == 0)
  {
    goto LABEL_8;
  }

  v130 = v59;
  v68 = v133;
  sub_29E19C8E0(v133);
  v69 = *MEMORY[0x29EDBC8A0];
  v71 = v145;
  v70 = v146;
  v72 = v132;
  (*(v146 + 104))(v132, v69, v145);
  (*(v70 + 56))(v72, 0, 1, v71);
  v73 = *(v142 + 48);
  v74 = v119;
  sub_29E1A9280(v68, v119, sub_29E03887C);
  sub_29E1A9280(v72, v74 + v73, sub_29E03887C);
  v75 = *(v70 + 48);
  if (v75(v74, 1, v71) == 1)
  {
    sub_29E1A7BDC(v132, sub_29E03887C);
    sub_29E1A7BDC(v133, sub_29E03887C);
    if (v75(v74 + v73, 1, v71) == 1)
    {
      sub_29E1A7BDC(v74, sub_29E03887C);
      v67 = v130;
LABEL_25:
      *&v148 = v131;
      *(&v148 + 1) = v67;
      sub_29DE9DE68();
      v84 = sub_29E2C2294();
      v87 = v114;
      v89 = v115;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v76 = v132;
  v77 = v117;
  sub_29E1A9280(v74, v117, sub_29E03887C);
  if (v75(v74 + v73, 1, v71) == 1)
  {
    sub_29E1A7BDC(v76, sub_29E03887C);
    sub_29E1A7BDC(v133, sub_29E03887C);
    (*(v146 + 8))(v77, v71);
LABEL_7:
    sub_29E1A7BDC(v74, sub_29E03A230);
    v54 = v139;
    v56 = v140;
    v58 = v141;
    v67 = v130;
    goto LABEL_8;
  }

  v109 = v146;
  v110 = v74 + v73;
  v111 = v118;
  (*(v146 + 32))(v118, v110, v71);
  sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8], MEMORY[0x29EDBC8B0]);
  v112 = sub_29E2C3304();
  v113 = *(v109 + 8);
  v113(v111, v71);
  sub_29E1A7BDC(v76, sub_29E03887C);
  sub_29E1A7BDC(v133, sub_29E03887C);
  v113(v77, v71);
  sub_29E1A7BDC(v74, sub_29E03887C);
  v54 = v139;
  v56 = v140;
  v58 = v141;
  v67 = v130;
  if (v112)
  {
    goto LABEL_25;
  }

LABEL_8:
  sub_29E2C3314();
  v78 = v121;
  (*(v121 + 16))(v56, v58, v54);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v79 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v78 + 8))(v58, v54);
  sub_29E19C6E8(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_29E2CAB20;
  *(v80 + 56) = MEMORY[0x29EDC99B0];
  *(v80 + 64) = sub_29DEB1A44();
  *(v80 + 32) = v131;
  *(v80 + 40) = v67;
  v81 = sub_29E2C3404();
  v83 = v82;

  *&v148 = v81;
  *(&v148 + 1) = v83;
  sub_29DE9DE68();
  v84 = sub_29E2C2294();
  v87 = v86;
  v89 = v88;
  v69 = *MEMORY[0x29EDBC8A0];
LABEL_11:
  v140 = v85;
  v141 = v84;
  sub_29DE93208(v84, v85, v87 & 1);
  sub_29E2BF404();
  v90 = v144;
  sub_29E19C8E0(v144);
  v92 = v145;
  v91 = v146;
  v93 = v143;
  (*(v146 + 104))(v143, v69, v145);
  (*(v91 + 56))(v93, 0, 1, v92);
  v94 = *(v142 + 48);
  v95 = v134;
  sub_29E1A9280(v90, v134, sub_29E03887C);
  sub_29E1A9280(v93, v95 + v94, sub_29E03887C);
  v96 = *(v91 + 48);
  if (v96(v95, 1, v92) == 1)
  {
    sub_29E1A7BDC(v93, sub_29E03887C);
    sub_29E1A7BDC(v90, sub_29E03887C);
    v97 = v96(v95 + v94, 1, v92);
    v99 = v136;
    v98 = v137;
    v100 = v140;
    if (v97 == 1)
    {
      sub_29E1A7BDC(v95, sub_29E03887C);
      v101 = 1;
      v102 = v141;
      goto LABEL_21;
    }
  }

  else
  {
    v103 = v120;
    sub_29E1A9280(v95, v120, sub_29E03887C);
    if (v96(v95 + v94, 1, v92) != 1)
    {
      v104 = v146;
      v105 = v118;
      (*(v146 + 32))(v118, v95 + v94, v92);
      sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8], MEMORY[0x29EDBC8B0]);
      LODWORD(v147) = sub_29E2C3304();
      v106 = *(v104 + 8);
      v106(v105, v92);
      sub_29E1A7BDC(v143, sub_29E03887C);
      sub_29E1A7BDC(v144, sub_29E03887C);
      v106(v103, v92);
      sub_29E1A7BDC(v95, sub_29E03887C);
      if (v147)
      {
        v101 = 1;
      }

      else
      {
        v101 = 2;
      }

      v99 = v136;
      v98 = v137;
      v100 = v140;
      v102 = v141;
      goto LABEL_21;
    }

    sub_29E1A7BDC(v143, sub_29E03887C);
    sub_29E1A7BDC(v144, sub_29E03887C);
    (*(v146 + 8))(v103, v92);
    v99 = v136;
    v98 = v137;
    v100 = v140;
  }

  sub_29E1A7BDC(v95, sub_29E03A230);
  v101 = 2;
  v102 = v141;
LABEL_21:
  v107 = v135;
  sub_29E1A09EC(v101, v100, v89, v135);
  sub_29DED6478(v102, v100, v87 & 1);

  sub_29E1A9094(v107, v98);
  *(v98 + *(v99 + 36)) = 257;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v148 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000002CLL, 0x800000029E3017B0);
  sub_29E1A7D58(&qword_2A181ECA0, sub_29E1A5D28, sub_29E1A9114);
  sub_29E2C23B4();

  sub_29DED6478(v102, v100, v87 & 1);

  sub_29E1A7BDC(v98, sub_29E1A5D28);
  return result;
}

double sub_29E1A42F0@<D0>(uint64_t a1@<X8>)
{
  v138 = a1;
  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  v3 = MEMORY[0x2A1C7C4A8](v2 - 8);
  v135 = &v116 - v4;
  sub_29E1A5D28(0, v3);
  v136 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v137 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v122 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_29E2C3384();
  v121 = *(v139 - 8);
  MEMORY[0x2A1C7C4A8](v139);
  v140 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v141 = &v116 - v11;
  v12 = sub_29E2C1E04();
  v13 = *(v12 - 8);
  v145 = v12;
  v146 = v13;
  MEMORY[0x2A1C7C4A8](v12);
  v118 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E03A230(0);
  v142 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v134 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v119 = &v116 - v18;
  sub_29E03887C(0);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v120 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v143 = &v116 - v22;
  MEMORY[0x2A1C7C4A8](v23);
  v144 = (&v116 - v24);
  MEMORY[0x2A1C7C4A8](v25);
  v117 = &v116 - v26;
  MEMORY[0x2A1C7C4A8](v27);
  v132 = &v116 - v28;
  MEMORY[0x2A1C7C4A8](v29);
  v133 = (&v116 - v30);
  v130 = sub_29E2C16E4();
  v129 = *(v130 - 8);
  MEMORY[0x2A1C7C4A8](v130);
  v128 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v127 = &v116 - v33;
  v131 = sub_29E2BC9D4();
  v126 = *(v131 - 8);
  MEMORY[0x2A1C7C4A8](v131);
  v35 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_29E2BCA44();
  v36 = *(v124 - 8);
  MEMORY[0x2A1C7C4A8](v124);
  v38 = &v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29E2BCA54();
  v40 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v42 = &v116 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v43);
  v45 = &v116 - v44;
  MEMORY[0x2A1C7C4A8](v46);
  v48 = &v116 - v47;
  v125 = sub_29E2BCBB4();
  v123 = *(v125 - 8);
  MEMORY[0x2A1C7C4A8](v125);
  v50 = &v116 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_29E2C02B4();
  MEMORY[0x29ED78EF0](v51);
  sub_29E2BCA14();
  sub_29E2BC9B4();
  (*(v36 + 8))(v38, v124);
  v52 = *(v40 + 8);
  v53 = v42;
  v54 = v139;
  v52(v53, v39);
  sub_29E2BC9C4();
  sub_29E2BC994();
  (*(v126 + 8))(v35, v131);
  v55 = v45;
  v56 = v140;
  v52(v55, v39);
  sub_29E1A5E20(&qword_2A1817C78, MEMORY[0x29EDB9BB0], MEMORY[0x29EDB9BA8]);
  sub_29E2BCB94();
  v57 = v48;
  v58 = v141;
  v52(v57, v39);
  (*(v123 + 8))(v50, v125);
  v59 = *(&v148 + 1);
  v131 = v148;
  v60 = v127;
  sub_29E19CAF0(v127);
  v61 = v129;
  v62 = v128;
  v63 = v130;
  (*(v129 + 104))(v128, *MEMORY[0x29EDBC4D0], v130);
  sub_29E1A5E20(&qword_2A181EC98, MEMORY[0x29EDBC518], MEMORY[0x29EDBC520]);
  v64 = v63;
  LOBYTE(v63) = sub_29E2C32A4();
  v65 = *(v61 + 8);
  v65(v62, v64);
  v66 = v60;
  v67 = v59;
  v65(v66, v64);
  if ((v63 & 1) == 0)
  {
    goto LABEL_8;
  }

  v130 = v59;
  v68 = v133;
  sub_29E19C8E0(v133);
  v69 = *MEMORY[0x29EDBC8A0];
  v71 = v145;
  v70 = v146;
  v72 = v132;
  (*(v146 + 104))(v132, v69, v145);
  (*(v70 + 56))(v72, 0, 1, v71);
  v73 = *(v142 + 48);
  v74 = v119;
  sub_29E1A9280(v68, v119, sub_29E03887C);
  sub_29E1A9280(v72, v74 + v73, sub_29E03887C);
  v75 = *(v70 + 48);
  if (v75(v74, 1, v71) == 1)
  {
    sub_29E1A7BDC(v132, sub_29E03887C);
    sub_29E1A7BDC(v133, sub_29E03887C);
    if (v75(v74 + v73, 1, v71) == 1)
    {
      sub_29E1A7BDC(v74, sub_29E03887C);
      v67 = v130;
LABEL_25:
      *&v148 = v131;
      *(&v148 + 1) = v67;
      sub_29DE9DE68();
      v84 = sub_29E2C2294();
      v87 = v114;
      v89 = v115;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v76 = v132;
  v77 = v117;
  sub_29E1A9280(v74, v117, sub_29E03887C);
  if (v75(v74 + v73, 1, v71) == 1)
  {
    sub_29E1A7BDC(v76, sub_29E03887C);
    sub_29E1A7BDC(v133, sub_29E03887C);
    (*(v146 + 8))(v77, v71);
LABEL_7:
    sub_29E1A7BDC(v74, sub_29E03A230);
    v54 = v139;
    v56 = v140;
    v58 = v141;
    v67 = v130;
    goto LABEL_8;
  }

  v109 = v146;
  v110 = v74 + v73;
  v111 = v118;
  (*(v146 + 32))(v118, v110, v71);
  sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8], MEMORY[0x29EDBC8B0]);
  v112 = sub_29E2C3304();
  v113 = *(v109 + 8);
  v113(v111, v71);
  sub_29E1A7BDC(v76, sub_29E03887C);
  sub_29E1A7BDC(v133, sub_29E03887C);
  v113(v77, v71);
  sub_29E1A7BDC(v74, sub_29E03887C);
  v54 = v139;
  v56 = v140;
  v58 = v141;
  v67 = v130;
  if (v112)
  {
    goto LABEL_25;
  }

LABEL_8:
  sub_29E2C3314();
  v78 = v121;
  (*(v121 + 16))(v56, v58, v54);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v79 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v78 + 8))(v58, v54);
  sub_29E19C6E8(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_29E2CAB20;
  *(v80 + 56) = MEMORY[0x29EDC99B0];
  *(v80 + 64) = sub_29DEB1A44();
  *(v80 + 32) = v131;
  *(v80 + 40) = v67;
  v81 = sub_29E2C3404();
  v83 = v82;

  *&v148 = v81;
  *(&v148 + 1) = v83;
  sub_29DE9DE68();
  v84 = sub_29E2C2294();
  v87 = v86;
  v89 = v88;
  v69 = *MEMORY[0x29EDBC8A0];
LABEL_11:
  v140 = v85;
  v141 = v84;
  sub_29DE93208(v84, v85, v87 & 1);
  sub_29E2BF404();
  v90 = v144;
  sub_29E19C8E0(v144);
  v92 = v145;
  v91 = v146;
  v93 = v143;
  (*(v146 + 104))(v143, v69, v145);
  (*(v91 + 56))(v93, 0, 1, v92);
  v94 = *(v142 + 48);
  v95 = v134;
  sub_29E1A9280(v90, v134, sub_29E03887C);
  sub_29E1A9280(v93, v95 + v94, sub_29E03887C);
  v96 = *(v91 + 48);
  if (v96(v95, 1, v92) == 1)
  {
    sub_29E1A7BDC(v93, sub_29E03887C);
    sub_29E1A7BDC(v90, sub_29E03887C);
    v97 = v96(v95 + v94, 1, v92);
    v99 = v136;
    v98 = v137;
    v100 = v140;
    if (v97 == 1)
    {
      sub_29E1A7BDC(v95, sub_29E03887C);
      v101 = 1;
      v102 = v141;
      goto LABEL_21;
    }
  }

  else
  {
    v103 = v120;
    sub_29E1A9280(v95, v120, sub_29E03887C);
    if (v96(v95 + v94, 1, v92) != 1)
    {
      v104 = v146;
      v105 = v118;
      (*(v146 + 32))(v118, v95 + v94, v92);
      sub_29E1A5E20(&qword_2A181AE80, MEMORY[0x29EDBC8A8], MEMORY[0x29EDBC8B0]);
      LODWORD(v147) = sub_29E2C3304();
      v106 = *(v104 + 8);
      v106(v105, v92);
      sub_29E1A7BDC(v143, sub_29E03887C);
      sub_29E1A7BDC(v144, sub_29E03887C);
      v106(v103, v92);
      sub_29E1A7BDC(v95, sub_29E03887C);
      if (v147)
      {
        v101 = 1;
      }

      else
      {
        v101 = 2;
      }

      v99 = v136;
      v98 = v137;
      v100 = v140;
      v102 = v141;
      goto LABEL_21;
    }

    sub_29E1A7BDC(v143, sub_29E03887C);
    sub_29E1A7BDC(v144, sub_29E03887C);
    (*(v146 + 8))(v103, v92);
    v99 = v136;
    v98 = v137;
    v100 = v140;
  }

  sub_29E1A7BDC(v95, sub_29E03A230);
  v101 = 2;
  v102 = v141;
LABEL_21:
  v107 = v135;
  sub_29E1A09EC(v101, v100, v89, v135);
  sub_29DED6478(v102, v100, v87 & 1);

  sub_29E1A9094(v107, v98);
  *(v98 + *(v99 + 36)) = 257;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v148 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000002ALL, 0x800000029E301780);
  sub_29E1A7D58(&qword_2A181ECA0, sub_29E1A5D28, sub_29E1A9114);
  sub_29E2C23B4();

  sub_29DED6478(v102, v100, v87 & 1);

  sub_29E1A7BDC(v98, sub_29E1A5D28);
  return result;
}

double sub_29E1A54E4@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  sub_29E1A5CE0(0, a2);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v17 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v17 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v17 - v13;
  sub_29E1A30FC(&v17 - v13);
  sub_29E1A42F0(v11);
  sub_29E1A9280(v14, v8, sub_29E1A5CE0);
  sub_29E1A9280(v11, v5, sub_29E1A5CE0);
  sub_29E1A9280(v8, a1, sub_29E1A5CE0);
  sub_29E1A6438(0);
  sub_29E1A9280(v5, a1 + *(v15 + 48), sub_29E1A5CE0);
  sub_29E1A7BDC(v11, sub_29E1A5CE0);
  sub_29E1A7BDC(v14, sub_29E1A5CE0);
  sub_29E1A7BDC(v5, sub_29E1A5CE0);
  sub_29E1A7BDC(v8, sub_29E1A5CE0);
  return result;
}

void sub_29E1A5678(uint64_t a1)
{
  if (!qword_2A181E830)
  {
    sub_29E1A570C(255);
    sub_29E1A5E20(&qword_2A181E978, sub_29E1A570C, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E830);
    }
  }
}

void sub_29E1A570C(uint64_t a1)
{
  if (!qword_2A181E838)
  {
    sub_29E1A58B0(255, &qword_2A181E840, sub_29E1A5794, sub_29E1A5E68);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E838);
    }
  }
}

void sub_29E1A5794(uint64_t a1)
{
  if (!qword_2A181E848)
  {
    sub_29E1A5828(255);
    sub_29E1A5E20(&qword_2A181E8C8, sub_29E1A5828, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E848);
    }
  }
}

void sub_29E1A5828(uint64_t a1)
{
  if (!qword_2A181E850)
  {
    sub_29E1A58B0(255, &qword_2A181E858, sub_29E1A592C, sub_29E1A5CE0);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E850);
    }
  }
}

void sub_29E1A58B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_29E1A592C(uint64_t a1)
{
  if (!qword_2A181E860)
  {
    sub_29E1A59C0(255);
    sub_29E1A5E20(&qword_2A181E8A8, sub_29E1A59C0, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E860);
    }
  }
}

void sub_29E1A59F4(uint64_t a1, __n128 a2)
{
  if (!qword_2A181E870)
  {
    sub_29E1A5DA4(255, &qword_2A1819280, MEMORY[0x29EDBC0A8]);
    sub_29E1A5A80(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181E870);
    }
  }
}

void sub_29E1A5AE8(uint64_t a1)
{
  if (!qword_2A181E888)
  {
    sub_29E1A5B8C(255, &qword_2A181E890, sub_29E1A5B6C);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181E888);
    }
  }
}

void sub_29E1A5B8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E1A5C88(255, &qword_2A18184F0, &qword_2A18184F8, MEMORY[0x29EDBCA98]);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E1A5C10(uint64_t a1)
{
  if (!qword_2A181E8A0)
  {
    sub_29E1A5C88(255, &qword_2A181C7B8, &qword_2A181C7C0, MEMORY[0x29EDBC9F0]);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E8A0);
    }
  }
}

void sub_29E1A5C88(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29DEE9848(255, a3, a4);
    v5 = sub_29E2C1F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E1A5D28(uint64_t a1, __n128 a2)
{
  if (!qword_2A181E8B8)
  {
    sub_29E1A5DA4(255, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
    v2 = sub_29E2C1744();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181E8B8);
    }
  }
}

void sub_29E1A5DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E1A5E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E1A5E68(uint64_t a1)
{
  if (!qword_2A181E8D0)
  {
    sub_29E1A5EFC(255);
    sub_29E1A5E20(&qword_2A181E970, sub_29E1A5EFC, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E8D0);
    }
  }
}

void sub_29E1A5EFC(uint64_t a1)
{
  if (!qword_2A181E8D8)
  {
    sub_29E1A58B0(255, &qword_2A181E8E0, sub_29E1A5F84, sub_29E1A6010);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E8D8);
    }
  }
}

void sub_29E1A5FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_29E1A6010(uint64_t a1)
{
  if (!qword_2A181E8F0)
  {
    sub_29E1A60A4(255);
    sub_29E1A5E20(&qword_2A181E968, sub_29E1A60A4, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C1554();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E8F0);
    }
  }
}

void sub_29E1A60A4(uint64_t a1)
{
  if (!qword_2A181E8F8)
  {
    sub_29E1A58B0(255, &qword_2A181E900, sub_29E1A612C, sub_29E1A6260);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E8F8);
    }
  }
}

void sub_29E1A612C(uint64_t a1)
{
  if (!qword_2A181E908)
  {
    sub_29E1A61C0(255);
    sub_29E1A5E20(&qword_2A181E920, sub_29E1A61C0, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E908);
    }
  }
}

void sub_29E1A61F4(uint64_t a1, __n128 a2)
{
  if (!qword_2A181E918)
  {
    sub_29E1A5CE0(255, a2);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181E918);
    }
  }
}

void sub_29E1A6260(uint64_t a1)
{
  if (!qword_2A181E928)
  {
    sub_29E1A62F4(255);
    sub_29E1A5E20(&qword_2A181E960, sub_29E1A62F4, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E928);
    }
  }
}

void sub_29E1A62F4(uint64_t a1)
{
  if (!qword_2A181E930)
  {
    sub_29E1A9214(255, &qword_2A181E938, sub_29E1A6370, MEMORY[0x29EDBCB48]);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E930);
    }
  }
}

void sub_29E1A6370(uint64_t a1)
{
  if (!qword_2A181E940)
  {
    sub_29E1A6404(255);
    sub_29E1A5E20(&qword_2A181E958, sub_29E1A6404, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E940);
    }
  }
}

void sub_29E1A6458(uint64_t a1)
{
  if (!qword_2A181E980)
  {
    sub_29E1A5678(255);
    sub_29E1A5E20(&qword_2A181E988, sub_29E1A5678, MEMORY[0x29EDBCB58]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181E980);
    }
  }
}

void sub_29E1A6534(uint64_t a1, __n128 a2)
{
  if (!qword_2A181E998)
  {
    sub_29E1A65D8(255, &qword_2A181E9A0, sub_29E1A6458, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    v2 = sub_29E2C1744();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181E998);
    }
  }
}

void sub_29E1A65D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29E1A66A4(uint64_t a1, __n128 a2)
{
  if (!qword_2A181E9B8)
  {
    sub_29E1A6728(255);
    sub_29E1A7AFC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181E9B8);
    }
  }
}

void sub_29E1A6770(uint64_t a1)
{
  if (!qword_2A181E9C8)
  {
    sub_29E1A67D4(255);
    sub_29E1A799C();
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E9C8);
    }
  }
}

void sub_29E1A67FC(uint64_t a1)
{
  if (!qword_2A181E9D8)
  {
    sub_29E1A6890(255);
    sub_29E1A5E20(&qword_2A181EBC0, sub_29E1A6890, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C1554();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E9D8);
    }
  }
}

void sub_29E1A6890(uint64_t a1)
{
  if (!qword_2A181E9E0)
  {
    sub_29E1A78D8(255, &qword_2A181E9E8, sub_29E1A692C, sub_29E1A6F90, sub_29E1A7520);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E9E0);
    }
  }
}

void sub_29E1A6954(uint64_t a1)
{
  if (!qword_2A181E9F8)
  {
    sub_29E1A69E8(255);
    sub_29E1A5E20(&qword_2A181EAA0, sub_29E1A69E8, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181E9F8);
    }
  }
}

void sub_29E1A6A1C(uint64_t a1, __n128 a2)
{
  if (!qword_2A181EA08)
  {
    sub_29E1A6AB8(255);
    sub_29E1A6AE0(255);
    sub_29E1A6B08(255);
    sub_29E1A6C78(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_2A181EA08);
    }
  }
}

void sub_29E1A6B30(uint64_t a1)
{
  if (!qword_2A181EA28)
  {
    sub_29E1A6BC4(255);
    sub_29E1A5E20(&qword_2A181EA40, sub_29E1A6BC4, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EA28);
    }
  }
}

void sub_29E1A6C18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E1A6CC8(uint64_t a1)
{
  if (!qword_2A181EA58)
  {
    sub_29E1A6D5C(255);
    sub_29E1A5E20(&qword_2A181EA98, sub_29E1A6D5C, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EA58);
    }
  }
}

void sub_29E1A6D5C(uint64_t a1)
{
  if (!qword_2A181EA60)
  {
    sub_29E1A58B0(255, &qword_2A181EA68, sub_29E1A6DE4, sub_29E1A6010);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EA60);
    }
  }
}

void sub_29E1A6DE4(uint64_t a1)
{
  if (!qword_2A181EA70)
  {
    sub_29E1A6E78(255);
    sub_29E1A5E20(&qword_2A181EA90, sub_29E1A6E78, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EA70);
    }
  }
}

void sub_29E1A6E78(uint64_t a1)
{
  if (!qword_2A181EA78)
  {
    sub_29E1A58B0(255, &qword_2A181EA80, sub_29E1A5F84, sub_29E1A6F00);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EA78);
    }
  }
}

void sub_29E1A6F14(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_29E1A5B8C(255, &qword_2A181E890, sub_29E1A5B6C);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E1A6FB8(uint64_t a1)
{
  if (!qword_2A181EAB0)
  {
    sub_29E1A704C(255);
    sub_29E1A5E20(&qword_2A181EB48, sub_29E1A704C, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2904();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EAB0);
    }
  }
}

void sub_29E1A704C(uint64_t a1)
{
  if (!qword_2A181EAB8)
  {
    sub_29E1A58B0(255, &qword_2A181EAC0, sub_29E1A70D4, sub_29E1A7274);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EAB8);
    }
  }
}

void sub_29E1A70D4(uint64_t a1)
{
  if (!qword_2A181EAC8)
  {
    sub_29E1A7168(255);
    sub_29E1A5E20(&qword_2A181EAF0, sub_29E1A7168, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EAC8);
    }
  }
}

void sub_29E1A719C(uint64_t a1)
{
  if (!qword_2A181EAD8)
  {
    sub_29E1A7204(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181EAD8);
    }
  }
}

void sub_29E1A7204(uint64_t a1)
{
  if (!qword_2A181EAE0)
  {
    sub_29E1A6F14(255, &qword_2A181EAE8, MEMORY[0x29EDBC3E0]);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EAE0);
    }
  }
}

void sub_29E1A7274(uint64_t a1)
{
  if (!qword_2A181EAF8)
  {
    sub_29E1A7308(255);
    sub_29E1A5E20(&qword_2A181EB40, sub_29E1A7308, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EAF8);
    }
  }
}

void sub_29E1A733C(uint64_t a1, __n128 a2)
{
  if (!qword_2A181EB08)
  {
    sub_29E1A73B4(255);
    sub_29E1A74D0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181EB08);
    }
  }
}

void sub_29E1A73B4(uint64_t a1)
{
  if (!qword_2A181EB10)
  {
    sub_29E1A7448(255);
    sub_29E1A5E20(&qword_2A181EB28, sub_29E1A7448, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EB10);
    }
  }
}

void sub_29E1A7448(uint64_t a1)
{
  if (!qword_2A181EB18)
  {
    sub_29E1A58B0(255, &qword_2A181EB20, sub_29E1A5794, sub_29E1A6B30);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EB18);
    }
  }
}

void sub_29E1A7520(uint64_t a1)
{
  if (!qword_2A181EB50)
  {
    sub_29E1A75B4(255);
    sub_29E1A5E20(&qword_2A181EBB8, sub_29E1A75B4, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2904();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EB50);
    }
  }
}

void sub_29E1A75B4(uint64_t a1)
{
  if (!qword_2A181EB58)
  {
    sub_29E1A58B0(255, &qword_2A181EB60, sub_29E1A70D4, sub_29E1A763C);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EB58);
    }
  }
}

void sub_29E1A7664(uint64_t a1)
{
  if (!qword_2A181EB70)
  {
    sub_29E1A76F8(255);
    sub_29E1A5E20(&qword_2A181EBB0, sub_29E1A76F8, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C28F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EB70);
    }
  }
}

void sub_29E1A76F8(uint64_t a1)
{
  if (!qword_2A181EB78)
  {
    sub_29E1A58B0(255, &qword_2A181EB80, sub_29E1A7780, sub_29E1A5E68);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EB78);
    }
  }
}

void sub_29E1A77A8(uint64_t a1)
{
  if (!qword_2A181EB90)
  {
    sub_29E1A783C(255);
    sub_29E1A5E20(&qword_2A181EBA8, sub_29E1A783C, MEMORY[0x29EDBCC30]);
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EB90);
    }
  }
}

void sub_29E1A783C(uint64_t a1)
{
  if (!qword_2A181EB98)
  {
    sub_29E1A78D8(255, &qword_2A181EBA0, sub_29E1A6AB8, sub_29E1A7974, sub_29E1A6B08);
    v1 = sub_29E2C2B14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EB98);
    }
  }
}

void sub_29E1A78D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

unint64_t sub_29E1A799C()
{
  result = qword_2A181EBC8;
  if (!qword_2A181EBC8)
  {
    sub_29E1A67D4(255);
    sub_29E1A5E20(&qword_2A181EBD0, sub_29E1A67FC, MEMORY[0x29EDBBEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EBC8);
  }

  return result;
}

void sub_29E1A7A4C(uint64_t a1)
{
  if (!qword_2A181EBD8)
  {
    sub_29E1A7AA8();
    v1 = sub_29E2C1E74();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EBD8);
    }
  }
}

unint64_t sub_29E1A7AA8()
{
  result = qword_2A181EBE0;
  if (!qword_2A181EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EBE0);
  }

  return result;
}

unint64_t sub_29E1A7AFC()
{
  result = qword_2A181EBE8;
  if (!qword_2A181EBE8)
  {
    sub_29E1A6728(255);
    sub_29E1A5E20(&qword_2A181EBF0, sub_29E1A6770, MEMORY[0x29EDBCB58]);
    sub_29E1A5E20(&qword_2A181EBF8, sub_29E1A7A4C, MEMORY[0x29EDBC8D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EBE8);
  }

  return result;
}

uint64_t sub_29E1A7BDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29E1A7C3C()
{
  result = qword_2A181EC08;
  if (!qword_2A181EC08)
  {
    sub_29E1A665C(255);
    sub_29E1A6728(255);
    sub_29E1A7AFC();
    swift_getOpaqueTypeConformance2();
    sub_29E1A5E20(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EC08);
  }

  return result;
}

uint64_t sub_29E1A7D58(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_29E1A7DD8()
{
  result = qword_2A181EC20;
  if (!qword_2A181EC20)
  {
    sub_29E1A65D8(255, &qword_2A181E9A0, sub_29E1A6458, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E1A5678(255);
    sub_29E1A5E20(&qword_2A181E988, sub_29E1A5678, MEMORY[0x29EDBCB58]);
    swift_getOpaqueTypeConformance2();
    sub_29E1A5E20(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EC20);
  }

  return result;
}

void sub_29E1A7F2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_29E2C15D4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29E1A7F98()
{
  result = qword_2A181EC38;
  if (!qword_2A181EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EC38);
  }

  return result;
}

void sub_29E1A7FEC(uint64_t *a1)
{
  v3 = *(type metadata accessor for PregnancyModeTimelineView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_29E19DB88(a1, v4);
}

uint64_t sub_29E1A805C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1A80C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E1A8124@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29E1A7274(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29E2C1A94();
  v17 = 1;
  sub_29E1A879C(&v33);
  v26 = *&v34[112];
  v27 = *&v34[128];
  v22 = *&v34[48];
  v23 = *&v34[64];
  v24 = *&v34[80];
  v25 = *&v34[96];
  v18 = v33;
  v19 = *v34;
  v20 = *&v34[16];
  v21 = *&v34[32];
  v29[8] = *&v34[112];
  v29[9] = *&v34[128];
  v29[4] = *&v34[48];
  v29[5] = *&v34[64];
  v29[6] = *&v34[80];
  v29[7] = *&v34[96];
  v29[0] = v33;
  v29[1] = *v34;
  v28 = v34[144];
  v30 = v34[144];
  v29[2] = *&v34[16];
  v29[3] = *&v34[32];
  sub_29E1A9280(&v18, &v31, sub_29E1A7168);
  sub_29E1A7BDC(v29, sub_29E1A7168);
  *&v16[119] = v25;
  *&v16[135] = v26;
  *&v16[151] = v27;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[103] = v24;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v16[167] = v28;
  *&v16[39] = v20;
  v8 = v17;
  sub_29E1A9280(a1, v6, sub_29E1A7274);
  *(&v32[7] + 1) = *&v16[112];
  *(&v32[8] + 1) = *&v16[128];
  *(&v32[9] + 1) = *&v16[144];
  *(&v32[3] + 1) = *&v16[48];
  *(&v32[4] + 1) = *&v16[64];
  *(&v32[5] + 1) = *&v16[80];
  *(&v32[6] + 1) = *&v16[96];
  *(v32 + 1) = *v16;
  v31 = v7;
  LOBYTE(v32[0]) = v8;
  *(&v32[10] + 1) = *&v16[160];
  *(&v32[1] + 1) = *&v16[16];
  *(&v32[2] + 1) = *&v16[32];
  v9 = v32[8];
  a2[8] = v32[7];
  a2[9] = v9;
  a2[10] = v32[9];
  *(a2 + 169) = *(&v32[9] + 9);
  v10 = v32[4];
  a2[4] = v32[3];
  a2[5] = v10;
  v11 = v32[6];
  a2[6] = v32[5];
  a2[7] = v11;
  v12 = v32[0];
  *a2 = v31;
  a2[1] = v12;
  v13 = v32[2];
  a2[2] = v32[1];
  a2[3] = v13;
  sub_29E1A58B0(0, &qword_2A181EAC0, sub_29E1A70D4, sub_29E1A7274);
  sub_29E1A9280(v6, a2 + *(v14 + 48), sub_29E1A7274);
  sub_29E1A9280(&v31, &v33, sub_29E1A70D4);
  sub_29E1A7BDC(v6, sub_29E1A7274);
  *&v34[113] = *&v16[112];
  *&v34[129] = *&v16[128];
  *&v34[145] = *&v16[144];
  *&v34[49] = *&v16[48];
  *&v34[65] = *&v16[64];
  *&v34[81] = *&v16[80];
  *&v34[97] = *&v16[96];
  *&v34[1] = *v16;
  *&v34[17] = *&v16[16];
  v33 = v7;
  v34[0] = v8;
  v35 = *&v16[160];
  *&v34[33] = *&v16[32];
  return sub_29E1A7BDC(&v33, sub_29E1A70D4);
}

uint64_t sub_29E1A8460@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29E1A763C(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29E2C1A94();
  v17 = 1;
  sub_29E1A879C(&v33);
  v26 = *&v34[112];
  v27 = *&v34[128];
  v22 = *&v34[48];
  v23 = *&v34[64];
  v24 = *&v34[80];
  v25 = *&v34[96];
  v18 = v33;
  v19 = *v34;
  v20 = *&v34[16];
  v21 = *&v34[32];
  v29[8] = *&v34[112];
  v29[9] = *&v34[128];
  v29[4] = *&v34[48];
  v29[5] = *&v34[64];
  v29[6] = *&v34[80];
  v29[7] = *&v34[96];
  v29[0] = v33;
  v29[1] = *v34;
  v28 = v34[144];
  v30 = v34[144];
  v29[2] = *&v34[16];
  v29[3] = *&v34[32];
  sub_29E1A9280(&v18, &v31, sub_29E1A7168);
  sub_29E1A7BDC(v29, sub_29E1A7168);
  *&v16[119] = v25;
  *&v16[135] = v26;
  *&v16[151] = v27;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[103] = v24;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v16[167] = v28;
  *&v16[39] = v20;
  v8 = v17;
  sub_29E1A9280(a1, v6, sub_29E1A763C);
  *(&v32[7] + 1) = *&v16[112];
  *(&v32[8] + 1) = *&v16[128];
  *(&v32[9] + 1) = *&v16[144];
  *(&v32[3] + 1) = *&v16[48];
  *(&v32[4] + 1) = *&v16[64];
  *(&v32[5] + 1) = *&v16[80];
  *(&v32[6] + 1) = *&v16[96];
  *(v32 + 1) = *v16;
  v31 = v7;
  LOBYTE(v32[0]) = v8;
  *(&v32[10] + 1) = *&v16[160];
  *(&v32[1] + 1) = *&v16[16];
  *(&v32[2] + 1) = *&v16[32];
  v9 = v32[8];
  a2[8] = v32[7];
  a2[9] = v9;
  a2[10] = v32[9];
  *(a2 + 169) = *(&v32[9] + 9);
  v10 = v32[4];
  a2[4] = v32[3];
  a2[5] = v10;
  v11 = v32[6];
  a2[6] = v32[5];
  a2[7] = v11;
  v12 = v32[0];
  *a2 = v31;
  a2[1] = v12;
  v13 = v32[2];
  a2[2] = v32[1];
  a2[3] = v13;
  sub_29E1A58B0(0, &qword_2A181EB60, sub_29E1A70D4, sub_29E1A763C);
  sub_29E1A9280(v6, a2 + *(v14 + 48), sub_29E1A763C);
  sub_29E1A9280(&v31, &v33, sub_29E1A70D4);
  sub_29E1A7BDC(v6, sub_29E1A763C);
  *&v34[113] = *&v16[112];
  *&v34[129] = *&v16[128];
  *&v34[145] = *&v16[144];
  *&v34[49] = *&v16[48];
  *&v34[65] = *&v16[64];
  *&v34[81] = *&v16[80];
  *&v34[97] = *&v16[96];
  *&v34[1] = *v16;
  *&v34[17] = *&v16[16];
  v33 = v7;
  v34[0] = v8;
  v35 = *&v16[160];
  *&v34[33] = *&v16[32];
  return sub_29E1A7BDC(&v33, sub_29E1A70D4);
}

uint64_t sub_29E1A879C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2C2104();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29E2C2714();
  sub_29E2C2144();
  (*(v3 + 104))(v5, *MEMORY[0x29EDBC9B0], v2);
  sub_29E2C2124();

  (*(v3 + 8))(v5, v2);
  sub_29E2C20B4();
  v6 = sub_29E2C20F4();

  KeyPath = swift_getKeyPath();
  sub_29DE9408C(0, &qword_2A1817FE0, 0x29EDC7A00);
  sub_29E2C4074();
  v8 = sub_29E2C2654();
  v9 = swift_getKeyPath();
  v10 = sub_29E2C2614();
  v11 = swift_getKeyPath();
  sub_29E2C2AB4();
  sub_29E2C1564();
  v26 = sub_29E2C1FD4();
  sub_29E2C1424();
  v30 = 1;
  v12 = v27;
  *&v35 = v27;
  *(&v35 + 1) = KeyPath;
  *&v36 = v6;
  *(&v36 + 1) = v9;
  *&v37 = v8;
  *(&v37 + 1) = v11;
  *&v38[0] = v10;
  v13 = v32;
  *(&v38[2] + 8) = v33;
  v14 = v31;
  *(&v38[1] + 8) = v32;
  *(v38 + 8) = v31;
  v15 = v26;
  BYTE8(v38[3]) = v26;
  HIDWORD(v38[3]) = *&v34[3];
  *(&v38[3] + 9) = *v34;
  *&v39 = v16;
  *(&v39 + 1) = v17;
  *&v40 = v18;
  *(&v40 + 1) = v19;
  v41 = 0;
  *&v29[135] = v40;
  v29[151] = 0;
  *&v29[119] = v39;
  *&v29[103] = v38[3];
  *&v29[23] = v36;
  *&v29[7] = v35;
  *&v29[87] = v38[2];
  *&v29[71] = v38[1];
  *&v29[55] = v38[0];
  *&v29[39] = v37;
  *a1 = 0;
  *(a1 + 8) = 1;
  v20 = *&v29[112];
  *(a1 + 105) = *&v29[96];
  *(a1 + 121) = v20;
  *(a1 + 137) = *&v29[128];
  *(a1 + 153) = *&v29[144];
  v21 = *&v29[48];
  *(a1 + 41) = *&v29[32];
  *(a1 + 57) = v21;
  v22 = *&v29[80];
  *(a1 + 73) = *&v29[64];
  *(a1 + 89) = v22;
  v23 = *&v29[16];
  *(a1 + 9) = *v29;
  *(a1 + 25) = v23;
  v42[0] = v12;
  v42[1] = KeyPath;
  v42[2] = v6;
  v42[3] = v9;
  v42[4] = v8;
  v42[5] = v11;
  v42[6] = v10;
  v43 = v14;
  v44 = v13;
  v45 = v33;
  v46 = v15;
  *v47 = *v34;
  *&v47[3] = *&v34[3];
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v19;
  v52 = 0;
  sub_29E1A9280(&v35, &v28, sub_29E1A7204);
  return sub_29E1A7BDC(v42, sub_29E1A7204);
}

uint64_t sub_29E1A8B34@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C1A64();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDBC370];
  sub_29E19C6E8(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v15 - v10;
  sub_29E1A95C0(v2, &v15 - v10, &unk_2A181A6A0, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29E2C1494();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_29E2C3A24();
    v14 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E1A8D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_29E2C1494();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20 - v8;
  v10 = sub_29E2C2AE4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1A8B34(v9);
  (*(v4 + 104))(v6, *MEMORY[0x29EDBC360], v3);
  v14 = sub_29E2C1484();
  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);
  v16 = MEMORY[0x29EDBCBE0];
  if ((v14 & 1) == 0)
  {
    v16 = MEMORY[0x29EDBCBD8];
  }

  (*(v11 + 104))(v13, *v16, v10);
  sub_29E1A65D8(0, &qword_2A181ED08, sub_29E1A952C, MEMORY[0x29EDBC5D8], MEMORY[0x29EDBC558]);
  (*(v11 + 32))(a2 + *(v17 + 36), v13, v10);
  sub_29E1A952C(0);
  return (*(*(v18 - 8) + 16))(a2, v21, v18);
}

void sub_29E1A9024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E1A7F98();
    v4 = sub_29E2C15D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E1A9094(uint64_t a1, uint64_t a2)
{
  sub_29E1A5DA4(0, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E1A9114()
{
  result = qword_2A181ECA8;
  if (!qword_2A181ECA8)
  {
    sub_29E1A5DA4(255, &qword_2A181E8C0, type metadata accessor for AdaptableBlendMode);
    sub_29E1A5E20(&qword_2A181ECB0, type metadata accessor for AdaptableBlendMode, &unk_29E2E3344);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181ECA8);
  }

  return result;
}

void sub_29E1A9214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29E1A9280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1A92E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E1A9378(uint64_t a1)
{
  sub_29E19C6E8(319, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29E1A9414()
{
  result = qword_2A181ECF8;
  if (!qword_2A181ECF8)
  {
    sub_29E1A65D8(255, &qword_2A181ED00, sub_29E1A665C, sub_29E1A650C, MEMORY[0x29EDBC7F0]);
    sub_29E1A7C3C();
    sub_29E1A7D58(&qword_2A181EC10, sub_29E1A650C, sub_29E1A7D1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181ECF8);
  }

  return result;
}

void sub_29E1A952C(uint64_t a1)
{
  if (!qword_2A181ED10)
  {
    type metadata accessor for AdaptableBlendMode(255);
    sub_29E1A5E20(&qword_2A181ECB0, type metadata accessor for AdaptableBlendMode, &unk_29E2E3344);
    v1 = sub_29E2C1D94();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181ED10);
    }
  }
}

uint64_t sub_29E1A95C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E19C6E8(0, a3, a4, MEMORY[0x29EDBC388]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_29E1A9640()
{
  result = qword_2A181ED18;
  if (!qword_2A181ED18)
  {
    sub_29E1A65D8(255, &qword_2A181ED08, sub_29E1A952C, MEMORY[0x29EDBC5D8], MEMORY[0x29EDBC558]);
    sub_29E1A5E20(&qword_2A181ED20, sub_29E1A952C, MEMORY[0x29EDBC860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181ED18);
  }

  return result;
}

__n128 sub_29E1A9734(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_29E1A9760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E1A97A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_29E1A9820(double a1)
{
  if (*v1)
  {
    v3 = MEMORY[0x29EDC80F8];
  }

  else
  {
    if (qword_2A1817030 != -1)
    {
      swift_once();
    }

    v3 = &qword_2A1841238;
  }

  v4 = *v3;
  v5 = *(v1 + 112);
  v6 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];

  v7 = *(v1 + 120);
  v8 = sub_29E1A9AC4();
  [v6 scaledValueForValue:v8 compatibleWithTraitCollection:v7];
  v10 = v9;

  return v5 + v10 + *(v1 + 16) + *(v1 + 96) + *(v1 + 48) - *(v1 + 48) * 0.5 - *(v1 + 80) * a1 * 0.5;
}

BOOL sub_29E1A9940(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v13[6] = a1[6];
  v13[7] = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[3];
  v13[2] = a1[2];
  v13[3] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  return sub_29E1A9D00(v13, v14);
}

double sub_29E1A99C4()
{
  if (*v0)
  {
    v1 = MEMORY[0x29EDC80F8];
  }

  else
  {
    if (qword_2A1817030 != -1)
    {
      swift_once();
    }

    v1 = &qword_2A1841238;
  }

  v2 = *v1;
  v3 = *(v0 + 112);
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];

  v5 = *(v0 + 120);
  v6 = sub_29E1A9AC4();
  [v4 scaledValueForValue:v6 compatibleWithTraitCollection:v5];
  v8 = v7;

  return v3 + v8 + *(v0 + 16) + *(v0 + 40) - *(v0 + 104) - *(v0 + 56);
}

id sub_29E1A9AC4()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  if (sub_29E2C3E14())
  {
    v3 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v5 = v4;
    v6 = *(v0 + 128);
    if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() == v3 && v7 == v5)
    {
    }

    else
    {
      v9 = sub_29E2C4914();

      if (v9)
      {
        goto LABEL_10;
      }
    }
  }

  v6 = v2;
LABEL_10:
  v10 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];

  return v10;
}

double sub_29E1A9BDC(double a1)
{
  if (*v1)
  {
    v3 = MEMORY[0x29EDC80F8];
  }

  else
  {
    if (qword_2A1817030 != -1)
    {
      swift_once();
    }

    v3 = &qword_2A1841238;
  }

  v4 = *v3;
  v5 = *(v1 + 112);
  v6 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];

  v7 = *(v1 + 120);
  v8 = sub_29E1A9AC4();
  [v6 scaledValueForValue:v8 compatibleWithTraitCollection:v7];
  v10 = v9;

  return v5 + v10 + *(v1 + 16) + *(v1 + 96) + *(v1 + 48) - *(v1 + 48) - *(v1 + 80) * a1 - *(v1 + 96) - *(v1 + 136) * a1;
}

BOOL sub_29E1A9D00(double *a1, double *a2)
{
  if (((*a1 ^ *a2) & 1) != 0 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6] || a1[7] != a2[7] || a1[8] != a2[8] || a1[9] != a2[9] || a1[10] != a2[10] || a1[11] != a2[11] || a1[12] != a2[12] || a1[13] != a2[13] || a1[14] != a2[14] || a1[15] != a2[15])
  {
    return 0;
  }

  v4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v6 = v5;
  if (v4 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_29E2C4914();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[17] == a2[17] && a1[18] == a2[18])
  {
    return a1[19] == a2[19];
  }

  return 0;
}

void sub_29E1A9EEC()
{
  v1 = sub_29E2BC904();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x2A1C7C4A8](v1).n128_u64[0];
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 bundleURL];
  sub_29E2BC8D4();

  v7 = sub_29E2BC8B4();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v16[0] = v7;
  v16[1] = v9;
  v10 = sub_29DE9DE68();
  v11 = MEMORY[0x29ED80B80](46, 0xE100000000000000, 1, 1, MEMORY[0x29EDC99B0], v10);

  if (v11[2])
  {
    v12 = v11[4];
    v13 = v11[5];
    v14 = v11[6];
    v15 = v11[7];
    sub_29E2BF404();

    MEMORY[0x29ED7FC50](v12, v13, v14, v15);
  }

  else
  {

    __break(1u);
  }
}

id sub_29E1AA078()
{
  type metadata accessor for MenstrualCyclesAppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2A1A67F80 = result;
  return result;
}

uint64_t sub_29E1AA12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29E2BEFA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29E1AA260(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29E2BEFA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29E1AA3C8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EmbryoAgeAtTransferPickerRow(0);
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v41 = v4;
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v6 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v37 - v7;
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v37 - v15;
  sub_29E2C3314();
  (*(v11 + 16))(v13, v16, v10);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A67F80;
  sub_29E2BCC74();
  v18 = sub_29E2C3414();
  v37 = v19;
  (*(v11 + 8))(v16, v10);
  v20 = v43;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v38 + 8))(v8, v6);
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v24 = *(v39 + 20);
  sub_29E1AB514(0);
  v26 = v25;
  v27 = *(v25 + 44);
  v28 = sub_29E2BEFA4();
  (*(*(v28 - 8) + 16))(a1 + v27, v20 + v24, v28);
  v29 = v20;
  v30 = v42;
  sub_29E1AB5A8(v29, v42, type metadata accessor for EmbryoAgeAtTransferPickerRow);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  result = sub_29E1AB760(v30, v32 + v31, type metadata accessor for EmbryoAgeAtTransferPickerRow);
  v34 = v37;
  *a1 = v18;
  *(a1 + 8) = v34;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v35 = (a1 + *(v26 + 48));
  *v35 = 0xD000000000000018;
  v35[1] = 0x800000029E304820;
  v36 = (a1 + *(v26 + 52));
  *v36 = sub_29E1AB7C8;
  v36[1] = v32;
  return result;
}

uint64_t sub_29E1AA864@<X0>(uint64_t a1@<X8>)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  type metadata accessor for PregnancyDatesInputViewModel(0);
  sub_29E1AB880(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2C2A44();
  result = type metadata accessor for PregnancyTimePeriodInputCell(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_29E1AA960@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EmbryoTransferDatePickerRow(0);
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v41 = v4;
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v6 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v37 - v7;
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v37 - v15;
  sub_29E2C3314();
  (*(v11 + 16))(v13, v16, v10);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A67F80;
  sub_29E2BCC74();
  v18 = sub_29E2C3414();
  v37 = v19;
  (*(v11 + 8))(v16, v10);
  v20 = v43;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v38 + 8))(v8, v6);
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v24 = *(v39 + 20);
  sub_29DEA8ABC(0);
  v26 = v25;
  v27 = *(v25 + 44);
  v28 = sub_29E2BEFA4();
  (*(*(v28 - 8) + 16))(a1 + v27, v20 + v24, v28);
  v29 = v20;
  v30 = v42;
  sub_29E1AB5A8(v29, v42, type metadata accessor for EmbryoTransferDatePickerRow);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  result = sub_29E1AB760(v30, v32 + v31, type metadata accessor for EmbryoTransferDatePickerRow);
  v34 = v37;
  *a1 = v18;
  *(a1 + 8) = v34;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v35 = (a1 + *(v26 + 48));
  *v35 = 0xD000000000000021;
  v35[1] = 0x800000029E3047C0;
  v36 = (a1 + *(v26 + 52));
  *v36 = sub_29E1AB4E8;
  v36[1] = v32;
  return result;
}

__n128 sub_29E1AADFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v2 = sub_29E2C1CA4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v50 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29E2BCBB4();
  v42 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8D5C(0);
  v40 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817D30, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB78]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v45 = &v39 - v8;
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v39 - v12;
  v14 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v15 = sub_29E2C3384();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v39 - v20;
  sub_29DEA8B80();
  v47 = v22;
  v46 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v44 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C3314();
  (*(v16 + 16))(v18, v21, v15);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A67F80;
  sub_29E2BCC74();
  v25 = sub_29E2C3414();
  v27 = v26;
  (*(v16 + 8))(v21, v15);
  *&v53 = v25;
  *(&v53 + 1) = v27;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v11 + 8))(v13, v10);
  sub_29E2C2A24();
  v28 = *(v52 + 16);

  if (v28 == 1)
  {
    v29 = v41;
    sub_29E2BCBA4();
    sub_29E0B0D98(v29, v49);
    (*(v42 + 8))(v29, v43);
  }

  else
  {
    v30 = v49;
    if (qword_2A1816FD0 != -1)
    {
      swift_once();
    }

    v31 = sub_29DEA8E9C(v40, qword_2A1840FB0);
    sub_29E1AB5A8(v31, v30, sub_29DEA8D5C);
  }

  sub_29E2C1C94();
  sub_29DE9DE68();
  v32 = v44;
  sub_29E2C1404();
  sub_29E2C2AB4();
  sub_29E2C17D4();
  v33 = v51;
  (*(v46 + 32))(v51, v32, v47);
  sub_29DEA8B20(0);
  v35 = v33 + *(v34 + 36);
  v36 = v58;
  *(v35 + 64) = v57;
  *(v35 + 80) = v36;
  *(v35 + 96) = v59;
  v37 = v54;
  *v35 = v53;
  *(v35 + 16) = v37;
  result = v56;
  *(v35 + 32) = v55;
  *(v35 + 48) = result;
  return result;
}

void sub_29E1AB514(uint64_t a1)
{
  if (!qword_2A181ED48)
  {
    v2 = type metadata accessor for PregnancyTimePeriodInputCell(255);
    v3 = sub_29E1AB880(&qword_2A181ED50, type metadata accessor for PregnancyTimePeriodInputCell, &unk_29E2D5F60);
    v5 = type metadata accessor for PregnancyInteractivePickerRow(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_2A181ED48);
    }
  }
}

uint64_t sub_29E1AB5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1AB610(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v6 - 8) + 8))(v1 + v4, v6);
  v7 = v2[7];
  v8 = sub_29E2BEFA4();
  (*(*(v8 - 8) + 8))(v1 + v4 + v7, v8);

  return MEMORY[0x2A1C733A0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_29E1AB760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1AB7F4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_29E1AB880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_29E1AB8CC(double a1, double a2, double a3, double a4)
{
  v9 = sub_29E2BE814();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14ListFooterCell_label;
  v14 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v15 = [objc_opt_self() preferredFontForTextStyle_];
  [v14 setFont_];

  [v14 setAdjustsFontForContentSizeCategory_];
  v16 = [objc_opt_self() secondaryLabelColor];
  [v14 setTextColor_];

  [v14 setNumberOfLines_];
  *&v4[v13] = v14;
  v17 = type metadata accessor for ListFooterCell();
  v26.receiver = v4;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E2BE804();
  sub_29E2BE7A4();
  (*(v10 + 8))(v12, v9);
  [v18 directionalLayoutMargins];
  [v18 setDirectionalLayoutMargins_];
  v19 = [v18 contentView];
  [v19 setPreservesSuperviewLayoutMargins_];

  v20 = [v18 contentView];
  v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14ListFooterCell_label;
  [v20 addSubview_];

  v22 = *&v18[v21];
  v23 = [v18 contentView];

  v24 = [v23 layoutMarginsGuide];
  sub_29DF41C7C(v24);

  return v18;
}

id sub_29E1ABC10(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ListFooterCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29E1ABC78()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14ListFooterCell_label;
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setNumberOfLines_];
  *(v0 + v1) = v2;
  sub_29E2C4724();
  __break(1u);
}

void sub_29E1ABE4C()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A67F80;
  v1 = sub_29E2C33A4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

id sub_29E1ABF14()
{
  sub_29DE99B54();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CE220;
  result = [objc_opt_self() pregnancyType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29DE927B8(inited);
    v3 = v2;
    swift_setDeallocating();
    swift_arrayDestroy();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E1ABFC0()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v150 = &v134 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v134 - v7;
  sub_29DEFFE04(0);
  v9 = sub_29E2BDD14();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v154 = *(v10 + 72);
  v12 = v11;
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_29E2D47C0;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A67F80;
  v14 = sub_29E2C33A4();
  v15 = [objc_opt_self() imageNamed:v14 inBundle:v13 compatibleWithTraitCollection:0];

  v153 = v13;
  if (v15)
  {
    v16 = v137 + v12;
    *v16 = v15;
    *(v16 + 8) = 0;
    v144 = *(v10 + 104);
    v17 = v16;
    v151 = v16;
    v144();
    v147 = v9;
    v18 = (v17 + v154);
    sub_29E2C3314();
    v145 = *(v3 + 16);
    v148 = v3 + 16;
    v149 = "Pregnancy Exercise";
    v140 = v5;
    v145(v5, v8, v2);
    sub_29E2BCC74();
    v141 = v153;
    v19 = sub_29E2C3414();
    v152 = v10 + 104;
    v20 = v19;
    v22 = v21;
    v142 = *(v3 + 8);
    v142(v8, v2);
    *v18 = v20;
    v18[1] = v22;
    v23 = v144;
    (v144)(v18, *MEMORY[0x29EDC1610], v147);
    v138 = (2 * v154);
    v24 = v151 + 2 * v154;
    v143 = 0xD000000000000013;
    sub_29E2C3314();
    v25 = v145;
    v145(v5, v8, v2);
    sub_29E2BCC74();
    v136 = v141;
    v26 = sub_29E2C3414();
    v28 = v27;
    v146 = v3 + 8;
    v29 = v142;
    v142(v8, v2);
    *v24 = v26;
    *(v24 + 8) = v28;
    *(v24 + 16) = 0;
    LODWORD(v141) = *MEMORY[0x29EDC1630];
    (v23)(v24);
    v30 = v151;
    v31 = &v138[v154 + v151];
    sub_29E2C3314();
    v32 = v140;
    v25(v140, v8, v2);
    sub_29E2BCC74();
    v136 = v136;
    v33 = v32;
    v34 = sub_29E2C3414();
    v36 = v35;
    v29(v8, v2);
    *v31 = v34;
    v31[1] = v36;
    v31[2] = 0;
    LODWORD(v138) = *MEMORY[0x29EDC15D0];
    v37 = v147;
    (v144)(v31);
    v38 = 4 * v154;
    v39 = v30 + 4 * v154;
    sub_29E2C3314();
    v139 = v2;
    v145(v33, v8, v2);
    sub_29E2BCC74();
    v136 = v136;
    v40 = sub_29E2C3414();
    v42 = v41;
    v43 = v2;
    v44 = v142;
    v142(v8, v43);
    *v39 = v40;
    *(v39 + 8) = v42;
    *(v39 + 16) = 0;
    v45 = v144;
    (v144)(v39, v141, v37);
    v46 = v154;
    v47 = v38 + v154;
    v48 = v151;
    v49 = (v151 + v47);
    sub_29E2C3314();
    v50 = v139;
    v145(v140, v8, v139);
    sub_29E2BCC74();
    v136 = v136;
    v51 = sub_29E2C3414();
    v53 = v52;
    v44(v8, v50);
    *v49 = v51;
    v49[1] = v53;
    v49[2] = 0;
    (v45)(v49, v138, v147);
    v54 = v48 + 6 * v46;
    sub_29E2C3314();
    v55 = v50;
    v56 = v50;
    v57 = v145;
    v145(v140, v8, v56);
    sub_29E2BCC74();
    v135 = v136;
    v58 = sub_29E2C3414();
    v60 = v59;
    v61 = v55;
    v142(v8, v55);
    *v54 = v58;
    *(v54 + 8) = v60;
    *(v54 + 16) = 0;
    v62 = v147;
    (v144)(v54, v141, v147);
    v136 = (8 * v154);
    v63 = v151 + 7 * v154;
    sub_29E2C3314();
    v57(v140, v8, v61);
    sub_29E2BCC74();
    v135 = v135;
    v64 = sub_29E2C3414();
    v66 = v65;
    v67 = v142;
    v142(v8, v61);
    *v63 = v64;
    *(v63 + 8) = v66;
    *(v63 + 16) = 0;
    v68 = v141;
    (v144)(v63, v141, v62);
    v69 = &v136[v151];
    sub_29E2C3314();
    v70 = v140;
    v145(v140, v8, v61);
    sub_29E2BCC74();
    v135 = v135;
    v71 = sub_29E2C3414();
    v73 = v72;
    v74 = v139;
    v67(v8, v139);
    *v69 = v71;
    *(v69 + 1) = v73;
    v69[16] = 0;
    v75 = v68;
    v76 = v144;
    (v144)(v69, v75, v147);
    v77 = &v136[v154 + v151];
    sub_29E2C3314();
    v78 = v74;
    v79 = v145;
    v145(v70, v8, v78);
    sub_29E2BCC74();
    v136 = v135;
    v80 = sub_29E2C3414();
    v82 = v81;
    v83 = v139;
    v142(v8, v139);
    *v77 = v80;
    *(v77 + 1) = v82;
    v77[16] = 0;
    (v76)(v77, v141, v147);
    v84 = v151;
    v85 = (v151 + 10 * v154);
    sub_29E2C3314();
    v86 = v83;
    v79(v140, v8, v83);
    sub_29E2BCC74();
    v136 = v136;
    v87 = sub_29E2C3414();
    v89 = v88;
    v90 = v142;
    v142(v8, v83);
    *v85 = v87;
    v85[1] = v89;
    v85[2] = 0;
    v91 = v147;
    (v144)(v85, v138, v147);
    v92 = v84 + 11 * v154;
    sub_29E2C3314();
    v93 = v140;
    v145(v140, v8, v83);
    sub_29E2BCC74();
    v136 = v136;
    v94 = v93;
    v95 = sub_29E2C3414();
    v97 = v96;
    v98 = v86;
    v90(v8, v86);
    *v92 = v95;
    *(v92 + 8) = v97;
    *(v92 + 16) = 0;
    v99 = v144;
    (v144)(v92, v141, v91);
    v100 = v151 + 12 * v154;
    sub_29E2C3314();
    v145(v94, v8, v98);
    sub_29E2BCC74();
    v136 = v136;
    v101 = sub_29E2C3414();
    v103 = v102;
    v104 = v8;
    v105 = v8;
    v106 = v139;
    v142(v104, v139);
    *v100 = v101;
    *(v100 + 8) = v103;
    *(v100 + 16) = 0;
    (v99)(v100, v141, v147);
    v107 = (v151 + 13 * v154);
    sub_29E2C3314();
    v108 = v106;
    v109 = v106;
    v110 = v145;
    v145(v94, v105, v108);
    sub_29E2BCC74();
    v136 = v136;
    v111 = sub_29E2C3414();
    v113 = v112;
    v142(v105, v109);
    *v107 = v111;
    v107[1] = v113;
    v107[2] = 0;
    (v144)(v107, v138, v147);
    v114 = v151 + 14 * v154;
    sub_29E2C3314();
    v110(v94, v105, v109);
    sub_29E2BCC74();
    v138 = v136;
    v115 = sub_29E2C3414();
    v117 = v116;
    v118 = v109;
    v119 = v142;
    v142(v105, v109);
    *v114 = v115;
    *(v114 + 8) = v117;
    *(v114 + 16) = 0;
    v120 = v147;
    v121 = v144;
    (v144)(v114, v141, v147);
    v136 = (16 * v154);
    v122 = v151 + 15 * v154;
    sub_29E2C3314();
    v145(v94, v105, v118);
    sub_29E2BCC74();
    v123 = v138;
    v124 = sub_29E2C3414();
    v126 = v125;
    v127 = v139;
    v119(v105, v139);
    *v122 = v124;
    *(v122 + 8) = v126;
    *(v122 + 16) = 0;
    v128 = v141;
    (v121)(v122, v141, v120);
    v129 = &v136[v151];
    sub_29E2C3314();
    v130 = v127;
    v145(v94, v105, v127);
    sub_29E2BCC74();
    v131 = sub_29E2C3414();
    v133 = v132;
    v119(v105, v130);
    *v129 = v131;
    *(v129 + 1) = v133;
    v129[16] = 0;
    (v121)(v129, v128, v120);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E1AD0AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t sub_29E1AD29C()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

id sub_29E1AD498(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerLabel;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerSeparator;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x29EDC4820]) initWithFrame_];
  v6 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerLabelText];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (a2)
  {
    v7 = sub_29E2C33A4();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v2;
  v11.super_class = type metadata accessor for StatisticsViewAllHeaderView();
  v8 = objc_msgSendSuper2(&v11, sel_initWithReuseIdentifier_, v7);

  v9 = v8;
  sub_29E1AD698();

  return v9;
}

void sub_29E1AD698()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BE814();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 contentView];
  v8 = objc_opt_self();
  v9 = [v8 systemBackgroundColor];
  [v7 setBackgroundColor_];

  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerSeparator;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerSeparator] setSeparatorThickness_];
  v11 = v10;
  v12 = *&v1[v10];
  v13 = [v8 opaqueSeparatorColor];
  [v12 setColor_];

  v14 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerLabel];
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v15 = sub_29E2C3FD4();
  [v14 setFont_];

  v16 = [v8 secondaryLabelColor];
  [v14 setTextColor_];

  [v14 setNumberOfLines_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v69 = v11;
  [*&v1[v11] setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v1 contentView];
  [v17 addSubview_];

  v18 = [v1 contentView];
  [v18 addSubview_];

  v19 = [v1 contentView];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v20 = *(v3 + 8);
  v20(v6, v2);
  [v19 directionalLayoutMargins];
  [v19 setDirectionalLayoutMargins_];

  v21 = [v1 contentView];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v20(v6, v2);
  [v21 directionalLayoutMargins];
  [v21 setDirectionalLayoutMargins_];

  sub_29DE99B54();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E2CDBD0;
  v23 = [v14 leadingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v1 &selRef_systemFontOfSize_weight_];
  [v26 directionalLayoutMargins];
  v28 = v27;

  v29 = [v23 constraintEqualToAnchor:v25 constant:v28];
  *(v22 + 32) = v29;
  v30 = [v14 topAnchor];
  v31 = [v1 &selRef_systemFontOfSize_weight_];
  v32 = [v31 layoutMarginsGuide];

  v33 = [v32 topAnchor];
  v34 = [v30 &selRef:v33 setLineFragmentPadding:22.0 + 6];

  *(v22 + 40) = v34;
  v35 = [v1 &selRef_systemFontOfSize_weight_];
  v36 = [v35 trailingAnchor];

  v37 = [v14 &selRef_bounds + 4];
  v38 = [v1 &selRef_systemFontOfSize_weight_];
  [v38 directionalLayoutMargins];
  v40 = v39;

  v41 = [v36 &selRef:v37 setLineFragmentPadding:v40 + 6];
  *(v22 + 48) = v41;
  v42 = objc_opt_self();
  v68 = v42;
  sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v43 = sub_29E2C3604();

  [v42 activateConstraints_];

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_29E2D6FB0;
  v45 = v69;
  v46 = [*&v1[v69] leadingAnchor];
  v47 = [v1 &selRef_systemFontOfSize_weight_];
  v48 = [v47 leadingAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v44 + 32) = v49;
  v50 = [*&v1[v45] topAnchor];
  v51 = [v14 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:6.0];

  *(v44 + 40) = v52;
  v53 = [v1 &selRef_systemFontOfSize_weight_];
  v54 = [v53 trailingAnchor];

  v55 = [*&v1[v45] trailingAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v44 + 48) = v56;
  v57 = [v1 &selRef_systemFontOfSize_weight_];
  v58 = [v57 bottomAnchor];

  v59 = [*&v1[v45] bottomAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v44 + 56) = v60;
  v61 = [*&v1[v45] heightAnchor];
  v62 = [v61 constraintEqualToConstant_];

  *(v44 + 64) = v62;
  v63 = sub_29E2C3604();

  [v68 activateConstraints_];

  sub_29DEAC750(0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_29E2CAB20;
  v65 = sub_29E2C0B54();
  v66 = MEMORY[0x29EDC7870];
  *(v64 + 32) = v65;
  *(v64 + 40) = v66;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29E1ADF74(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StatisticsViewAllHeaderView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29E1AE02C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerLabel);
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v2 = sub_29E2C3FD4();
  [v1 setFont_];
}

void *sub_29E1AE0D4(void *a1)
{
  v2 = v1;
  v4 = HKLogMenstrualCyclesCategory();
  v5 = objc_allocWithZone(MEMORY[0x29EDBACC8]);
  v6 = sub_29E2C33A4();
  v7 = [v5 initWithName:v6 loggingCategory:v4];

  v2[3] = v7;
  v2[4] = 0;
  v2[2] = a1;
  sub_29DEB1E60();
  v8 = a1;
  v9 = sub_29E2C3CF4();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(MEMORY[0x29EDC3400]);
  v16[4] = sub_29E1AEDE4;
  v16[5] = v10;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1107296256;
  v16[2] = sub_29DF49BB8;
  v16[3] = &unk_2A24BDA08;
  v12 = _Block_copy(v16);

  v13 = [v11 initWithQueue:v9 completion:v12];

  _Block_release(v12);

  v14 = v2[4];
  v2[4] = v13;

  return v2;
}

double sub_29E1AE28C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 24);
    aBlock[4] = sub_29E1AEE04;
    aBlock[5] = Strong;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DF4FA14;
    aBlock[3] = &unk_2A24BDA30;
    v4 = _Block_copy(aBlock);

    [v3 notifyObservers_];
    _Block_release(v4);
  }

  return result;
}

double sub_29E1AE380(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    sub_29E0168E8(a2);
  }

  swift_unknownObjectRelease();
  return result;
}

id sub_29E1AE3E8()
{
  v1 = v0;
  v27[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[2];
  v27[0] = 0;
  v8 = [v7 biologicalSexWithError_];
  if (v8)
  {
    v9 = v8;
    v10 = v27[0];
    v11 = [v9 biologicalSex];
  }

  else
  {
    v12 = v27[0];
    v13 = sub_29E2BC7E4();

    swift_willThrow();
    sub_29E2C04B4();

    v14 = v13;
    v15 = sub_29E2C0504();
    v16 = sub_29E2C3A14();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136446722;
      v26[4] = *v1;
      sub_29E1AEE0C();
      v19 = sub_29E2C3424();
      v21 = sub_29DFAA104(v19, v20, v27);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_29DFAA104(0xD000000000000012, 0x800000029E304A00, v27);
      *(v17 + 22) = 2082;
      swift_getErrorValue();
      v22 = sub_29E2C4994();
      v24 = sub_29DFAA104(v22, v23, v27);

      *(v17 + 24) = v24;
      _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s.%{public}s] failed to get biologicalSex with error: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v18, -1, -1);
      MEMORY[0x29ED82140](v17, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v11;
}

id sub_29E1AE714()
{
  v1 = v0;
  v52[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E2C0514();
  v48 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29E2BCBB4();
  v4 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29E2BC5F4();
  v7 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v47 - v11;
  *&v14 = MEMORY[0x2A1C7C4A8](v13).n128_u64[0];
  v16 = &v47 - v15;
  v17 = v1[2];
  v52[0] = 0;
  v18 = [v17 dateOfBirthComponentsWithError_];
  v19 = v52[0];
  if (v18)
  {
    v20 = v18;
    sub_29E2BC544();
    v21 = v19;

    result = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
    if (result)
    {
      v23 = result;
      sub_29E2BCBA4();
      v24 = sub_29E2BCB04();
      (*(v4 + 8))(v6, v49);
      v25 = [v23 hk:v24 dateOfBirthDateComponentsWithDate:?];

      sub_29E2BC544();
      v26 = sub_29E2BC524();
      v27 = sub_29E2BC524();
      v28 = [v23 components:4 fromDateComponents:v26 toDateComponents:v27 options:0];

      sub_29E2BC544();
      v29 = sub_29E2BC594();
      LOBYTE(v27) = v30;

      v31 = *(v7 + 8);
      v32 = v50;
      v31(v9, v50);
      v31(v12, v32);
      v31(v16, v32);
      if (v27)
      {
        return 0;
      }

      else
      {
        return v29;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v33 = v52[0];
    v34 = sub_29E2BC7E4();

    swift_willThrow();
    v35 = v47;
    sub_29E2C04B4();

    v36 = v34;
    v37 = sub_29E2C0504();
    v38 = sub_29E2C3A14();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52[0] = v40;
      *v39 = 136446722;
      v51 = *v1;
      sub_29E1AEE0C();
      v41 = sub_29E2C3424();
      v43 = sub_29DFAA104(v41, v42, v52);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_29DFAA104(0x2928656741746567, 0xE800000000000000, v52);
      *(v39 + 22) = 2082;
      swift_getErrorValue();
      v44 = sub_29E2C4994();
      v46 = sub_29DFAA104(v44, v45, v52);

      *(v39 + 24) = v46;
      _os_log_impl(&dword_29DE74000, v37, v38, "[%{public}s.%{public}s] failed to get date of birth components with error: %{public}s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v40, -1, -1);
      MEMORY[0x29ED82140](v39, -1, -1);
    }

    else
    {
    }

    (*(v48 + 8))(v35, v2);
    return 0;
  }

  return result;
}

uint64_t sub_29E1AECB4()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for UserCharacteristics.Age(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UserCharacteristics.Age(uint64_t result, int a2, int a3)
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

uint64_t sub_29E1AED70(uint64_t a1)
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

uint64_t sub_29E1AED8C(uint64_t result, int a2)
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

uint64_t sub_29E1AEDBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

double sub_29E1AEDEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_29E1AEE0C()
{
  result = qword_2A1A60EE0[0];
  if (!qword_2A1A60EE0[0])
  {
    type metadata accessor for UserCharacteristics();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A60EE0);
  }

  return result;
}

uint64_t sub_29E1AEE58(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A04();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Notifying of days updated", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_29E1AF000(uint64_t a1)
{
  v2 = sub_29E2C31A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v55 = &v49 - v7;
  v8 = type metadata accessor for CycleChartDay(0);
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEDB978(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v57 = &v49 - v14;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v49 - v16;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v49 - v19;
  v22 = MEMORY[0x2A1C7C4A8](v21);
  v24 = &v49 - v23;
  v25 = v3 + 16;
  v60 = *(v3 + 16);
  v60(&v49 - v23, a1, v2, v22);
  v64 = v3;
  v27 = *(v3 + 56);
  v26 = v3 + 56;
  v27(v24, 0, 1, v2);
  v59 = v27;
  v27(v20, 1, 1, v2);
  v28 = sub_29E059C18(v24, v20);
  sub_29DEE85C8(v20);
  sub_29DEE85C8(v24);
  result = MEMORY[0x29EDCA190];
  if (v28)
  {
    v69 = MEMORY[0x29EDCA190];
    v58 = v28;
    sub_29E1812E0(0, v28 & ~(v28 >> 63), 0);
    v67 = v69;
    (v60)(v17, a1, v2);
    result = v59(v17, 0, 1, v2);
    if ((v58 & 0x8000000000000000) == 0)
    {
      v30 = v17;
      v31 = 0;
      v65 = (v64 + 4);
      v66 = (v64 + 6);
      ++v64;
      v50 = v5;
      v51 = a1;
      v49 = v26;
      while (!__OFADD__(v31, 1))
      {
        v62 = v31 + 1;
        v63 = v31;
        v34 = v25;
        v35 = v12;
        v36 = v30;
        v37 = v57;
        sub_29E1B0410(v30, v57);
        v38 = *v66;
        result = (*v66)(v37, 1, v2);
        if (result == 1)
        {
          goto LABEL_18;
        }

        v39 = v55;
        v61 = *v65;
        v61(v55, v37, v2);
        v40 = *(v56 + 16);
        v41 = v52;
        (v60)(v52, v39, v2);
        v42 = [v40 dayViewModelAtIndex_];
        *(v41 + *(type metadata accessor for CycleDay(0) + 20)) = v42;
        sub_29E2C2CB4();
        v43 = *v64;
        (*v64)(v39, v2);
        v44 = v67;
        v69 = v67;
        v46 = *(v67 + 16);
        v45 = *(v67 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_29E1812E0((v45 > 1), v46 + 1, 1);
          v44 = v69;
        }

        *(v44 + 16) = v46 + 1;
        v47 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v67 = v44;
        sub_29E1B0474(v41, v44 + v47 + *(v53 + 72) * v46, type metadata accessor for CycleChartDay);
        v30 = v36;
        v12 = v35;
        sub_29E1B0474(v36, v35, sub_29DEDB978);
        result = v38(v35, 1, v2);
        if (result == 1)
        {
          goto LABEL_17;
        }

        v48 = v50;
        v61(v50, v35, v2);
        sub_29E1B04DC(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
        sub_29E1B0578(&qword_2A18199C0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
        v25 = v34;
        if (sub_29E2C3304())
        {
          v43(v48, v2);
          v32 = 1;
        }

        else
        {
          v68 = 1;
          sub_29E1B0578(&unk_2A18199E0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA318]);
          sub_29E2C4334();
          v43(v48, v2);
          v32 = 0;
        }

        v33 = v58;
        result = v59(v30, v32, 1, v2);
        v31 = v63 + 1;
        if (v62 == v33)
        {
          sub_29DEE85C8(v30);
          return v67;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_29E1AF6A4()
{

  return swift_deallocClassInstance();
}

void sub_29E1AF718(void *a1)
{
  v2 = v1;
  v41 = a1;
  v3 = *v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 1);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v39 - v9;
  v11 = sub_29E2C2B84();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEB1E60();
  *v14 = sub_29E2C3CF4();
  (*(v12 + 104))(v14, *MEMORY[0x29EDCA278], v11);
  v15 = sub_29E2C2BA4();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_29E2C04B4();
    v16 = sub_29E2C0504();
    v17 = sub_29E2C3A04();
    v18 = os_log_type_enabled(v16, v17);
    v39 = v2;
    v40 = v3;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = v7;
      v21 = swift_slowAlloc();
      v42 = v21;
      *v19 = 136446210;
      v22 = sub_29E2C4AE4();
      v24 = sub_29DFAA104(v22, v23, &v42);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_29DE74000, v16, v17, "[%{public}s] Received updated view models", v19, 0xCu);
      sub_29DE93B3C(v21);
      v25 = v21;
      v7 = v20;
      MEMORY[0x29ED82140](v25, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);
    }

    v26 = *(v5 + 8);
    v26(v10, v4);
    v27 = [v41 dayViewModelAtIndex_];
    if ([v27 isFetched] && (v28 = objc_msgSend(v27, sel_daySummary)) != 0)
    {

      sub_29DF1482C();
      sub_29E1B0578(&qword_2A181A5C0, sub_29DF1482C, MEMORY[0x29EDB8A50]);
      sub_29E2C11A4();
    }

    else
    {
      sub_29E2C04B4();
      v29 = sub_29E2C0504();
      v30 = sub_29E2C3A34();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v42 = v32;
        *v31 = 136446210;
        v33 = sub_29E2C4AE4();
        v41 = v4;
        v35 = v7;
        v36 = sub_29DFAA104(v33, v34, &v42);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_29DE74000, v29, v30, "[%{public}s] Ignoring VMP update as we haven't completed fetched", v31, 0xCu);
        sub_29DE93B3C(v32);
        MEMORY[0x29ED82140](v32, -1, -1);
        MEMORY[0x29ED82140](v31, -1, -1);

        v37 = v35;
        v38 = v41;
      }

      else
      {

        v37 = v7;
        v38 = v4;
      }

      v26(v37, v38);
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_29E1AFC3C(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  v32 = a2;
  v33 = a3;
  v35 = *v4;
  sub_29E1B0168(0, a4);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B02D4(0, v10);
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v34 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEDB904(0, v15);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v18 = sub_29E2BCEA4();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1482C();
  swift_allocObject();
  v4[5] = sub_29E2C10A4();
  v4[2] = a1;
  (*(v19 + 16))(v21, a3, v18);
  type metadata accessor for SleepingWristTemperatureBaselineRelativeDataSource(0);
  swift_allocObject();
  v22 = a1;
  v23 = v32;
  v24 = sub_29DF34254(v23, v21);

  [v22 minimumBufferDuration];
  v41 = v24;
  sub_29E1B0374(0);
  swift_allocObject();
  v5[3] = sub_29E2C2C74();

  [v22 activeDayRange];
  sub_29E2C3AA4();
  sub_29E2C2C84();

  v25 = sub_29E2C2C94();

  v40 = v5[5];
  v41 = v25;
  sub_29E1B0250(0);
  v26 = MEMORY[0x29EDB8A58];
  sub_29E1B0578(&qword_2A181ED90, sub_29E1B0250, MEMORY[0x29EDB8A58]);
  sub_29E1B0578(&qword_2A1818DA8, sub_29DF1482C, v26);
  sub_29E2C1294();

  *(swift_allocObject() + 16) = v35;
  sub_29E1B0578(&qword_2A181EDA0, sub_29E1B0168, MEMORY[0x29EDB8870]);
  v27 = v34;
  v28 = v36;
  sub_29E2C12A4();

  (*(v37 + 8))(v12, v28);
  sub_29E1B0578(&qword_2A181EDB0, sub_29E1B02D4, MEMORY[0x29EDB8908]);
  v29 = v38;
  v30 = sub_29E2C1274();
  (*(v39 + 8))(v27, v29);
  v5[4] = v30;
  [v22 registerObserver_];
  (*(v19 + 8))(v33, v18);
  return v5;
}

void sub_29E1B0168(uint64_t a1, __n128 a2)
{
  if (!qword_2A181ED80)
  {
    sub_29E1B0250(255);
    sub_29DF1482C();
    v2 = MEMORY[0x29EDB8A58];
    sub_29E1B0578(&qword_2A181ED90, sub_29E1B0250, MEMORY[0x29EDB8A58]);
    sub_29E1B0578(&qword_2A1818DA8, sub_29DF1482C, v2);
    v3 = sub_29E2C0E44();
    if (!v4)
    {
      atomic_store(v3, &qword_2A181ED80);
    }
  }
}

void sub_29E1B0250(uint64_t a1)
{
  if (!qword_2A181ED88)
  {
    sub_29E1B04DC(255, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
    v1 = sub_29E2C10B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181ED88);
    }
  }
}

void sub_29E1B02D4(uint64_t a1, __n128 a2)
{
  if (!qword_2A181ED98)
  {
    sub_29E1B0168(255, a2);
    sub_29E1B0578(&qword_2A181EDA0, sub_29E1B0168, MEMORY[0x29EDB8870]);
    v2 = sub_29E2C0F24();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181ED98);
    }
  }
}

void sub_29E1B0374(uint64_t a1)
{
  if (!qword_2A181EDA8)
  {
    type metadata accessor for SleepingWristTemperatureBaselineRelativeDataSource(255);
    sub_29E1B0578(&qword_2A181C508, type metadata accessor for SleepingWristTemperatureBaselineRelativeDataSource, &unk_29E2D2520);
    v1 = sub_29E2C2CA4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EDA8);
    }
  }
}

uint64_t sub_29E1B0410(uint64_t a1, uint64_t a2)
{
  sub_29DEDB978(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E1B0474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E1B04DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E2C31A4();
    v7 = sub_29E1B0578(&qword_2A1A61A40, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E1B0578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MenstrualCyclesArticlesGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A623A0;
  if (!qword_2A1A623A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_29E1B0670()
{
  sub_29DE93B3C((v0 + qword_2A1A611A0));
  sub_29DE93B3C((v0 + qword_2A1A61198));
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_29E1B06D0()
{
  [*(v0 + qword_2A1A611B0) unregisterObserver_];
  v1 = sub_29E2C0324();
  v2 = qword_2A1A611A0;

  sub_29DE93B3C((v3 + v2));
  sub_29DE93B3C((v1 + qword_2A1A61198));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_29E1B0780(__n128 a1)
{
  sub_29E1B2158(0, a1);
  v42 = v2;
  v45 = *(v2 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v38 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B244C(0, v3);
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v39 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B24E8(0, v7);
  v10 = *(v9 - 8);
  v46 = v9;
  v47 = v10;
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v40 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B2594(0, v11);
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  MEMORY[0x2A1C7C4A8](v13);
  v41 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBAF74(0);
  v36[3] = v16;
  MEMORY[0x2A1C7C4A8](v16);
  sub_29E1B236C(0, &unk_2A1A61E30, type metadata accessor for HKBiologicalSex, MEMORY[0x29EDB8AF0]);
  v36[2] = v17;
  MEMORY[0x2A1C7C4A8](v17);
  sub_29E1B28CC(0, &qword_2A1A61E48, &type metadata for UserCharacteristics.Age, MEMORY[0x29EDB8AF0]);
  v36[1] = v18;
  v19 = MEMORY[0x2A1C7C4A8](v18);
  sub_29E1B21EC(0, v19);
  v36[0] = v20;
  v37 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (v1 + qword_2A1A61198);
  sub_29DE966D4((v1 + qword_2A1A61198), *(v1 + qword_2A1A61198 + 24));
  type metadata accessor for UserCharacteristicsChangeDetector(0);
  sub_29E1B1BAC();
  sub_29DE966D4(v23, v23[3]);
  sub_29E1B1C3C();
  sub_29DE966D4((v1 + qword_2A1A611A0), *(v1 + qword_2A1A611A0 + 24));
  type metadata accessor for MenstrualCyclesOnboardingChangeDetector(0);
  sub_29E270A40();
  v50 = *(v1 + qword_2A1A611B8);
  sub_29E022064(0);
  sub_29E1B23D0(v24);
  sub_29DF8EFD4();
  sub_29E1B1FC4(&qword_2A1A5EB70, sub_29DEBAF74, MEMORY[0x29EDB88A0]);
  sub_29E1B1FC4(&unk_2A1A5E570, sub_29E022064, MEMORY[0x29EDB8A70]);

  sub_29E2C0EB4();
  sub_29E2BD5F4();
  v25 = v38;
  v26 = v36[0];
  sub_29E2C0E94();
  sub_29E1B1FC4(&qword_2A1A5E858, sub_29E1B2158, MEMORY[0x29EDB8958]);
  v27 = v39;
  v28 = v42;
  sub_29E2C12A4();
  (*(v45 + 8))(v25, v28);
  sub_29E1B1F30(0);
  v29 = v40;
  v30 = v43;
  sub_29E2C0F14();
  (*(v44 + 8))(v27, v30);
  sub_29E1B1FC4(&unk_2A1A5E9E0, sub_29E1B24E8, MEMORY[0x29EDB8908]);
  sub_29E1B1FC4(&unk_2A1A5E2C8, sub_29E1B1F30, MEMORY[0x29EDC9B98]);
  v31 = v41;
  v32 = v46;
  sub_29E2C1374();
  (*(v47 + 8))(v29, v32);
  sub_29E1B1FC4(&qword_2A1A5EAE0, sub_29E1B2594, MEMORY[0x29EDB88F0]);
  v33 = v48;
  v34 = sub_29E2C1274();
  (*(v49 + 8))(v31, v33);
  (*(v37 + 8))(v22, v26);
  return v34;
}

uint64_t sub_29E1B0EE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(result + 40);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  return result;
}

void sub_29E1B0F1C(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  sub_29E1B2628(&v5, *(v6 + 9));
  *a2 = v4;
}

double sub_29E1B0F60(uint64_t a1, uint64_t a2)
{
  v25 = *v2;
  sub_29E1B1CD8(0);
  v6 = *(v5 - 8);
  v27 = v5;
  v28 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BD624();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  sub_29E1B1D6C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v14);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v9 + 32))(v18 + v17, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v18 + ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  sub_29E1B1E00(0);
  sub_29E1B1FC4(&qword_2A1A5EAB8, sub_29E1B1E00, MEMORY[0x29EDB8908]);

  sub_29E2C11B4();
  sub_29E1B1FC4(&qword_2A1A5E490, sub_29E1B1D6C, MEMORY[0x29EDB8AE8]);
  v19 = sub_29E2C1274();
  (*(v13 + 8))(v16, v12);
  v20 = sub_29E2C0304();
  v29 = v19;
  v30 = v20;
  sub_29E021350(0);
  sub_29E1B1FC4(&qword_2A1A61EB0, sub_29E021350, MEMORY[0x29EDB8A00]);
  v21 = v26;
  sub_29E2C12E4();

  sub_29E1B1FC4(&qword_2A1A61ED8, sub_29E1B1CD8, MEMORY[0x29EDB89D8]);
  v22 = v27;
  sub_29E2C1274();
  (*(v28 + 8))(v21, v22);
  sub_29E2C0314();

  return result;
}

double sub_29E1B1380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BD624();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v13[1] = a1;
  (*(v7 + 16))(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_29E1B1EAC(0);
  sub_29DEBACC0();
  sub_29E1B1FC4(&qword_2A1A5E620, sub_29E1B1EAC, MEMORY[0x29EDB8A00]);
  sub_29E2C12A4();

  return result;
}

char *sub_29E1B153C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v36 = a3;
  v38 = a2;
  v6 = sub_29E2BD594();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BD624();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C0514();
  v37 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    sub_29E2BF404();
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A34();

    v35 = v18;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = v17;
      v20 = v19;
      v34 = swift_slowAlloc();
      v40 = v34;
      *v20 = 136446466;
      v21 = sub_29E2C4AE4();
      v23 = sub_29DFAA104(v21, v22, &v40);
      v36 = v13;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v39 = v16;
      sub_29E1B1F30(0);
      sub_29E2BF404();
      v25 = sub_29E2C3464();
      v27 = sub_29DFAA104(v25, v26, &v40);

      *(v20 + 14) = v27;
      v28 = v33;
      _os_log_impl(&dword_29DE74000, v33, v35, "[%{public}s] Received new filter for Menstrual Cycle Discover feed: %s", v20, 0x16u);
      v29 = v34;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v29, -1, -1);
      MEMORY[0x29ED82140](v20, -1, -1);

      (*(v37 + 8))(v15, v36);
    }

    else
    {

      (*(v37 + 8))(v15, v13);
    }
  }

  (*(v10 + 16))(v12, v38, v9);
  sub_29E2BD554();
  v30 = type metadata accessor for MenstrualCyclesArticlesGenerator(0);
  swift_allocObject();
  sub_29E2BF404();
  v31 = sub_29E20760C(v12, v8, v16);
  a4[3] = v30;
  result = sub_29E1B1FC4(&qword_2A1A624A0, type metadata accessor for MenstrualCyclesArticlesGenerator, &unk_29E2E6404);
  a4[4] = result;
  *a4 = v31;
  return result;
}

id sub_29E1B1924(void *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v6 = sub_29E2C0504();
    v7 = sub_29E2C3A34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v19 = a1;
      v9 = v8;
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      v11 = sub_29E2C4AE4();
      v13 = sub_29DFAA104(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_29DE74000, v6, v7, "[%s] Received pregnancy model update", v9, 0xCu);
      sub_29DE93B3C(v10);
      MEMORY[0x29ED82140](v10, -1, -1);
      v14 = v9;
      a1 = v19;
      MEMORY[0x29ED82140](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  sub_29E2C10E4();
  v15 = v20;
  v16 = v21;
  result = [a1 state];
  if ((v16 & 1) != 0 || v15 != result)
  {
    v20 = [a1 state];
    v21 = 0;
    return sub_29E2C10C4();
  }

  return result;
}

double sub_29E1B1B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_29E1B1924(v3);

  return result;
}

double sub_29E1B1BAC()
{
  swift_beginAccess();
  sub_29E1B28CC(0, &qword_2A1A61E28, &type metadata for UserCharacteristics.Age, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  swift_endAccess();
  return result;
}

double sub_29E1B1C3C()
{
  swift_beginAccess();
  sub_29E1B236C(0, &qword_2A1A61E20, type metadata accessor for HKBiologicalSex, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  swift_endAccess();
  return result;
}

void sub_29E1B1CD8(uint64_t a1)
{
  if (!qword_2A1A61ED0)
  {
    sub_29E021350(255);
    sub_29E1B1FC4(&qword_2A1A61EB0, sub_29E021350, MEMORY[0x29EDB8A00]);
    v1 = sub_29E2C0FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A61ED0);
    }
  }
}

void sub_29E1B1D6C(uint64_t a1)
{
  if (!qword_2A1A5E480)
  {
    sub_29E1B1E00(255);
    sub_29E1B1FC4(&qword_2A1A5EAB8, sub_29E1B1E00, MEMORY[0x29EDB8908]);
    v1 = sub_29E2C11C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E480);
    }
  }
}

void sub_29E1B1E00(uint64_t a1)
{
  if (!qword_2A1A5EAA8)
  {
    sub_29E1B1EAC(255);
    sub_29DEBACC0();
    sub_29E1B1FC4(&qword_2A1A5E620, sub_29E1B1EAC, MEMORY[0x29EDB8A00]);
    v1 = sub_29E2C0F24();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5EAA8);
    }
  }
}

void sub_29E1B1ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1024();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E1B1F30(uint64_t a1)
{
  if (!qword_2A1A5E2D8)
  {
    sub_29DEED314();
    sub_29E1B1FC4(&qword_2A1A5E218, sub_29DEED314, MEMORY[0x29EDCA2F0]);
    v1 = sub_29E2C3844();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E2D8);
    }
  }
}

uint64_t sub_29E1B1FC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_29E1B200C()
{
  v1 = *(sub_29E2BD624() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E1B1380(v3, v0 + v2, v4);
}

char *sub_29E1B20AC@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = *(sub_29E2BD624() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E1B153C(a1, v2 + v6, v7, a2);
}

void sub_29E1B2158(uint64_t a1, __n128 a2)
{
  if (!qword_2A1A5E848)
  {
    sub_29E1B21EC(255, a2);
    sub_29E1B1FC4(&qword_2A1A5EBB8, sub_29E1B21EC, MEMORY[0x29EDB8880]);
    v2 = sub_29E2C0F64();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A5E848);
    }
  }
}

void sub_29E1B21EC(uint64_t a1, __n128 a2)
{
  if (!qword_2A1A5EBB0)
  {
    sub_29E1B28CC(255, &qword_2A1A61E48, &type metadata for UserCharacteristics.Age, MEMORY[0x29EDB8AF0]);
    sub_29E1B236C(255, &unk_2A1A61E30, type metadata accessor for HKBiologicalSex, MEMORY[0x29EDB8AF0]);
    sub_29DEBAF74(255);
    sub_29E022064(255);
    sub_29E1B23D0(v2);
    sub_29DF8EFD4();
    sub_29E1B1FC4(&qword_2A1A5EB70, sub_29DEBAF74, MEMORY[0x29EDB88A0]);
    sub_29E1B1FC4(&unk_2A1A5E570, sub_29E022064, MEMORY[0x29EDB8A70]);
    v3 = sub_29E2C0EA4();
    if (!v4)
    {
      atomic_store(v3, &qword_2A1A5EBB0);
    }
  }
}

void sub_29E1B236C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E1B23D0(__n128 a1)
{
  result = qword_2A1A61E50;
  if (!qword_2A1A61E50)
  {
    sub_29E1B28CC(255, &qword_2A1A61E48, &type metadata for UserCharacteristics.Age, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61E50);
  }

  return result;
}