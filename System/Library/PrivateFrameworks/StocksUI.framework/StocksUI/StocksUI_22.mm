uint64_t sub_2206E4244(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2206E4268, 0, 0);
}

uint64_t sub_2206E4268()
{
  sub_2208917EC();
  *(v0 + 32) = sub_2208917DC();
  v2 = sub_2208917CC();

  return MEMORY[0x2822009F8](sub_2206E42FC, v2, v1);
}

uint64_t sub_2206E42FC()
{
  v1 = *(v0 + 24);

  sub_2206E40A4(v1);

  return MEMORY[0x2822009F8](sub_220677B94, 0, 0);
}

uint64_t sub_2206E43B4(uint64_t a1)
{
  v2 = sub_2206E3E54();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2206E4400()
{
  result = qword_27CF58CD0;
  if (!qword_27CF58CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CD0);
  }

  return result;
}

unint64_t sub_2206E4468()
{
  result = qword_27CF58CD8;
  if (!qword_27CF58CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CD8);
  }

  return result;
}

uint64_t sub_2206E44BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_22044CF38(0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockForYouFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22058445C(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v55 = &v44 - v15;
  sub_2206E4EA4(0, &qword_28127E220, MEMORY[0x277D844C8]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2206E4DEC();
  v22 = v57;
  sub_220892A4C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = 0;
  v48 = v18;
  v49 = a1;
  v57 = v9;
  LOBYTE(v60) = 0;
  sub_22044DC80(&qword_281296B28, sub_22044CF38, MEMORY[0x277D321B0]);
  v24 = v55;
  v25 = v52;
  sub_22089271C();
  sub_22044D0C0();
  LOBYTE(v59) = 1;
  sub_22044DC80(&qword_281296A48, sub_22044D0C0, MEMORY[0x277D32620]);
  sub_22089271C();
  v45 = v60;
  LOBYTE(v58) = 2;
  v26 = v17;
  v50 = v21;
  sub_22089271C();
  v46 = v59;
  v27 = v24;
  v28 = v56;
  sub_22062F8B8(v27, v56);
  v29 = v51;
  v30 = *(v51 + 48);
  v31 = v30(v28, 1, v25);
  v32 = v25;
  if (v31 == 1)
  {
    type metadata accessor for ForYouFeedServiceConfig(0);
    sub_22044DC80(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
    v33 = v53;
    sub_22088F7EC();
    v34 = v30(v56, 1, v25);
    v35 = v33;
    v36 = v48;
    v37 = v49;
    if (v34 != 1)
    {
      sub_22062F91C(v56);
    }
  }

  else
  {
    v35 = v53;
    (*(v29 + 32))(v53, v56, v25);
    v36 = v48;
    v37 = v49;
  }

  v38 = v57;
  (*(v29 + 32))(v57, v35, v32);
  v39 = v45;
  if (!v45)
  {
    v58 = 6;
    swift_allocObject();
    v39 = sub_22088FB7C();
  }

  v40 = v50;
  *(v38 + *(v6 + 20)) = v39;
  v41 = v54;
  v42 = v46;
  if (v46)
  {
    sub_22062F91C(v55);
    (*(v36 + 8))(v40, v26);
  }

  else
  {
    v58 = 1000;
    v43 = v55;
    swift_allocObject();
    v42 = sub_22088FB7C();
    sub_22062F91C(v43);
    (*(v36 + 8))(v50, v26);
  }

  *(v38 + *(v6 + 24)) = v42;
  sub_2206E4E40(v38, v41);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_2206E4A54(void *a1, __n128 a2)
{
  v4 = v2;
  sub_2206E4EA4(0, &qword_27CF58CE0, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2206E4DEC();
  sub_220892A5C();
  LOBYTE(v16) = 0;
  sub_22044CF38(0);
  sub_22044DC80(&qword_27CF57D90, sub_22044CF38, MEMORY[0x277D321A8]);
  sub_22089283C();
  if (!v3)
  {
    v12 = type metadata accessor for StockForYouFeedGroupKnobs(0);
    v16 = *(v4 + *(v12 + 20));
    v15 = 1;
    sub_22044D0C0();
    sub_22044DC80(&qword_27CF57D98, sub_22044D0C0, MEMORY[0x277D32610]);
    sub_22089283C();
    v16 = *(v4 + *(v12 + 24));
    v15 = 2;
    sub_22089283C();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_2206E4CB8()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_2206E4D1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2206E5020(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2206E4D44(uint64_t a1)
{
  v2 = sub_2206E4DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2206E4D80(uint64_t a1)
{
  v2 = sub_2206E4DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2206E4DEC()
{
  result = qword_281289470;
  if (!qword_281289470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289470);
  }

  return result;
}

uint64_t sub_2206E4E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockForYouFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2206E4EA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2206E4DEC();
    v7 = a3(a1, &type metadata for StockForYouFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2206E4F1C()
{
  result = qword_27CF58CE8;
  if (!qword_27CF58CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CE8);
  }

  return result;
}

unint64_t sub_2206E4F74()
{
  result = qword_281289460;
  if (!qword_281289460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289460);
  }

  return result;
}

unint64_t sub_2206E4FCC()
{
  result = qword_281289468;
  if (!qword_281289468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289468);
  }

  return result;
}

uint64_t sub_2206E5020(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002208CEF70 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002208CEF90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2208928BC();

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

id sub_2206E5154()
{
  result = sub_2204DD5AC(0);
  qword_2812B6B68 = result;
  return result;
}

uint64_t sub_2206E5178()
{
  v1 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  v2 = sub_2208852DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PriceFormatter.Style(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PriceFormatter.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2206E52BC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2206E52D4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2206E52FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204BE1E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2206E536C()
{
  if (!qword_27CF58CF8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF58CF8);
    }
  }
}

uint64_t sub_2206E53D4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_2206E54A8(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_2206E5568()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

unint64_t sub_2206E5638@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2206E5760(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2206E5668(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000737275;
  v3 = 0x6F682D7265746661;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000002208BEC00;
  }

  v4 = 0x80000002208BEBC0;
  v5 = 0xD000000000000011;
  if (*v1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000002208BEBE0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2206E570C()
{
  result = qword_27CF58D00;
  if (!qword_27CF58D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58D00);
  }

  return result;
}

unint64_t sub_2206E5760(uint64_t a1, uint64_t a2)
{
  v2 = sub_22089270C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

UIImage __swiftcall UIImage.composite(with:)(UIImage with)
{
  [v1 size];
  v4 = v3;
  [(objc_class *)with.super.isa size];
  if (v4 <= v5)
  {
    v4 = v5;
  }

  [v1 size];
  v7 = v6;
  [(objc_class *)with.super.isa size];
  if (v7 <= v8)
  {
    v7 = v8;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v4;
  *(v10 + 32) = v7;
  *(v10 + 40) = with;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2206E59A0;
  *(v11 + 24) = v10;
  v18[4] = sub_220685948;
  v18[5] = v11;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2206E5A04;
  v18[3] = &block_descriptor_31;
  v12 = _Block_copy(v18);
  v13 = v1;
  v14 = with.super.isa;

  v15 = [v9 imageWithActions_];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v15;
  }

  __break(1u);
  return result;
}

void sub_2206E59A0(void *a1)
{
  v3 = *(v1 + 2);
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(v1 + 5);
  sub_2206E5A50(v3, a1, v4, v5);

  sub_2206E5A50(v6, a1, v4, v5);
}

void sub_2206E5A04(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_2206E5A50(void *a1, void *a2, double a3, double a4)
{
  [a1 size];
  [a1 size];
  v6 = [a2 CGContext];
  v7 = [a1 CGImage];
  if (v7)
  {
    [a1 size];
    [a1 size];
    sub_220891A1C();
  }

  else
  {
    __break(1u);
  }
}

void sub_2206E5B60(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  if (sub_22088618C())
  {
    v3 = 2;
  }

  else
  {
    sub_22046DA2C(v1 + 56, v50);
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    v4 = sub_22088613C();
    __swift_destroy_boxed_opaque_existential_1(v50);
    v3 = (v4 & 1) == 0;
  }

  v47 = v3;
  v5 = objc_opt_self();
  v6 = sub_22089132C();
  v7 = [v5 linkWithBundleIdentifier_];

  if (!v7)
  {
    goto LABEL_72;
  }

  [v7 setDisplayLargeIcon_];
  [v7 setDisplayCaptionText_];
  v8 = v7;
  v9 = &off_27844B000;
  v10 = [v8 view];
  if (!v10)
  {
    goto LABEL_70;
  }

  v11 = v10;
  v12 = &selRef_su_localizedYearFormat;
  v13 = [v10 subviews];

  sub_22044D56C(0, &qword_28127E550, 0x277D75D18);
  v14 = sub_2208916EC();

  if (v14 >> 62)
  {
    goto LABEL_26;
  }

  v46 = v8;
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D8A700](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_66;
        }

        v15 = *(v14 + 32);
      }

      v16 = v15;

      v17 = [v16 v12[313]];

      v14 = sub_2208916EC();
      if (v14 >> 62)
      {
        v18 = sub_2208926AC();
        if (!v18)
        {
          break;
        }
      }

      else
      {
        v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          break;
        }
      }

      v13 = 0;
      v8 = (v14 & 0xC000000000000001);
      while (1)
      {
        if (v8)
        {
          v19 = MEMORY[0x223D8A700](v13, v14);
        }

        else
        {
          if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v19 = *(v14 + 8 * v13 + 32);
        }

        v9 = v19;
        v12 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v48 = v20;
          goto LABEL_23;
        }

        ++v13;
        if (v12 == v18)
        {
          v48 = 0;
LABEL_23:
          v8 = v46;
          v12 = &selRef_su_localizedYearFormat;
          v9 = &off_27844B000;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v46 = v8;
    }

    while (sub_2208926AC());
  }

  v48 = 0;
LABEL_31:

  v14 = [v48 attributedText];
  v21 = [v8 v9[453]];

  if (!v21)
  {
    goto LABEL_71;
  }

  v22 = [v21 v12[313]];

  v13 = sub_2208916EC();
  if (v13 >> 62)
  {
    goto LABEL_51;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    v26 = 0;
LABEL_53:

    v31 = [v26 image];
    v32 = _s11TeaSettings0B0C8StocksUIE7WelcomeV7VersionV14isBrandNewUserSbvgZ_0();
    v33 = sub_2206E6244();
    sub_2206E6534(v47, v32, v33, [objc_allocWithZone(MEMORY[0x277D755B8]) init], v49);
    if (v14)
    {
      v34 = v14;
      if ([v34 length] && v31)
      {
        v31 = v31;
        v35 = v50;
        sub_2206E6534(v47, v32, v34, v31, v50);
        goto LABEL_62;
      }

      v34 = v34;
      if ([v34 length])
      {
        v35 = v50;
        sub_2206E6534(v47, v32, v34, [objc_allocWithZone(MEMORY[0x277D755B8]) init], v50);
        goto LABEL_62;
      }
    }

    if (!v31)
    {
      v35 = v49;
      goto LABEL_63;
    }

    v31 = v31;
    v36 = sub_2206E6244();
    v35 = v50;
    sub_2206E6534(v47, v32, v36, v31, v50);
    v34 = v14;
LABEL_62:
    sub_2206E6A14(v49);

    v14 = v34;
LABEL_63:

    v37 = v35[20];
    v38 = v35[17];
    v39 = *(v35 + 9);
    v40 = v35[11];
    v41 = v35[12];
    v42 = *(v35 + 5);
    v43 = *(v35 + 7);
    v44 = *(v35 + 3);
    v45 = *(v35 + 1);
    *a1 = *v35;
    *(a1 + 8) = v45;
    *(a1 + 24) = v44;
    *(a1 + 40) = v42;
    *(a1 + 56) = v43;
    *(a1 + 72) = v39;
    *(a1 + 88) = v40;
    *(a1 + 96) = v41;
    *(a1 + 104) = *(v35 + 13);
    *(a1 + 120) = *(v35 + 15);
    *(a1 + 136) = v38;
    *(a1 + 144) = *(v35 + 9);
    *(a1 + 160) = v37;
    return;
  }

  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
LABEL_66:
      v23 = MEMORY[0x223D8A700](0, v13);
      goto LABEL_37;
    }

    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v23 = *(v13 + 32);
LABEL_37:
    v24 = v23;

    v25 = [v24 v12[313]];

    v13 = sub_2208916EC();
    if (v13 >> 62)
    {
      v26 = sub_2208926AC();
      if (!v26)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v26 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_53;
      }
    }

    v27 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x223D8A700](v27, v13);
      }

      else
      {
        if (v27 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v28 = *(v13 + 8 * v27 + 32);
      }

      v29 = v28;
      v12 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        break;
      }

      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v26 = v30;
        goto LABEL_53;
      }

      ++v27;
      if (v12 == v26)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    if (!sub_2208926AC())
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  sub_22089267C();
  __break(1u);
}

id sub_2206E6244()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_22089132C();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_2206E636C()
{
  sub_220885ACC();
  sub_220888FBC();
  sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v0 = sub_220891D0C();

  v1 = sub_220888E4C();

  return v1;
}

uint64_t sub_2206E6434(char a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_220884CAC();

  return v3;
}

void sub_2206E6534(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  if (a2)
  {
    v40 = 0x80000002208CF4F0;
  }

  else
  {
    v40 = 0x80000002208CF110;
  }

  v10 = sub_220884CAC();
  v50 = v11;
  v51 = v10;

  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  v14 = sub_220884CAC();
  v48 = v15;
  v49 = v14;

  v16 = [v12 bundleForClass_];
  v17 = sub_220884CAC();
  v46 = v18;
  v47 = v17;

  v19 = [v12 bundleForClass_];
  v20 = sub_220884CAC();
  v44 = v21;
  v45 = v20;

  v22 = [v12 bundleForClass_];
  v54 = sub_220884CAC();
  v55 = v23;

  v24 = [v12 bundleForClass_];
  if (a1 == 2)
  {
    v41 = 0x80000002208CF330;
    v25 = sub_220884CAC();
    v27 = v26;

    v28 = 0;
    v42 = 0;
    v43 = 0;
    v29 = v54;
    v54 = 0;
  }

  else
  {
    v30 = sub_220884CAC();
    v42 = v31;
    v43 = v30;

    v32 = [v12 bundleForClass_];
    v41 = 0x80000002208CF470;
    v29 = sub_220884CAC();
    v34 = v33;

    v25 = sub_2206E6434(a1 & 1);
    v27 = v35;
    v28 = v55;
    v55 = v34;
  }

  v36 = [v12 bundleForClass_];
  v37 = sub_220884CAC();
  v39 = v38;

  *a5 = a1;
  *(a5 + 8) = v51;
  *(a5 + 16) = v50;
  *(a5 + 24) = v49;
  *(a5 + 32) = v48;
  *(a5 + 40) = v47;
  *(a5 + 48) = v46;
  *(a5 + 56) = v45;
  *(a5 + 64) = v44;
  *(a5 + 72) = v29;
  *(a5 + 80) = v55;
  *(a5 + 88) = v25;
  *(a5 + 96) = v27;
  *(a5 + 104) = v54;
  *(a5 + 112) = v28;
  *(a5 + 120) = v43;
  *(a5 + 128) = v42;
  *(a5 + 136) = v37;
  *(a5 + 144) = v39;
  *(a5 + 152) = a3;
  *(a5 + 160) = a4;
}

__n128 sub_2206E6A44@<Q0>(uint64_t a1@<X8>)
{
  sub_2206E5B60(v7);
  v2 = v7[9];
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v2;
  *(a1 + 160) = v8;
  v3 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v3;
  v4 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v4;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8StocksUI12WelcomeModelV6BulletVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2206E6AD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2206E6B20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2206E6BA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v176 = a3;
  *&v180 = a2;
  v184 = a4;
  v171 = sub_22088516C();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v6);
  v174 = v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v173 = v158 - v11;
  sub_2206E7AC4(0, &qword_28127ECC0, MEMORY[0x277D6C7C8], v10);
  *&v185 = v12;
  *&v183 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v158 - v14;
  v16 = sub_220890E5C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v169 = v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v165 = v158 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v167 = v158 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v166 = v158 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v172 = (v158 - v31);
  MEMORY[0x28223BE20](v32, v33);
  *&v175 = v158 - v34;
  v37 = MEMORY[0x28223BE20](v35, v36);
  v39 = v158 - v38;
  *&v168 = v4;
  v40 = *(v4 + 16);
  sub_2206E7AC4(0, &qword_28127ED88, MEMORY[0x277D6C6E8], v37);
  v42 = v41;
  sub_220890E9C();
  sub_220890E4C();
  v43 = *(v17 + 8);
  *&v182 = v16;
  *&v179 = v17 + 8;
  *&v181 = v43;
  v43(v39, v16);
  v44 = v183;
  *&v177 = a1;
  sub_220890EAC();
  *&v178 = v40;
  v45 = sub_2208910AC();
  v47 = v46;

  v48 = *(v44 + 8);
  v48(v15, v185);
  v49 = 0uLL;
  v50 = 0.0;
  if (v47)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
  }

  else
  {
    *&v183 = v45;
    sub_220890E9C();
    sub_220890E4C();
    v164 = v39;
    (v181)(v39, v182);
    sub_220890EAC();
    v59 = sub_2208910AC();
    v61 = v60;

    v48(v15, v185);
    if (v61 & 1) == 0 && (*&v185 = v59, v62 = type metadata accessor for StockChartCalloutLayoutOptions(0), v63 = v176, v64 = v176 + v62[8], v65 = *(v64 + 8), v66 = v175, sub_220890E9C(), v67 = sub_220890E4C(), v69 = v68, v70 = v182, v71 = v181, (v181)(v66, v182), v186[0] = 0, LOBYTE(v67) = sub_2206E7BA8(v67, v69, v186), , (v67) && (*&v175 = v64, v72 = v172, sub_220890E9C(), v73 = sub_220890E4C(), v75 = v74, v71(v72, v70), v186[0] = 0, LOBYTE(v73) = sub_2206E7BA8(v73, v75, v186), , (v73))
    {
      v77 = *(v168 + 48);
      v76 = *(v168 + 56);
      v172 = __swift_project_boxed_opaque_existential_1((v168 + 24), v77);
      v78 = *(v63 + v62[7]);
      v79 = v76;
      v80 = *(v76 + 8);
      *&v178 = v42;
      v81 = v63;
      v82 = *(v80 + 8);
      v186[3] = v77;
      v186[4] = v79;
      v83 = v79;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v186);
      v163 = v78;
      v82(v78, v77, v80);
      v85 = v173;
      sub_2208850EC();
      v86 = v174;
      sub_2208850EC();
      v87 = sub_2206E7878(v81 + v62[6]);
      v88 = v81 + v62[5];
      v162 = v87;
      v89 = sub_22078E858(v85, v86, v88);
      v90 = *(v83 + 24);
      v172 = boxed_opaque_existential_1;
      v161 = v77;
      v160 = v83;
      v51 = v90(v89);

      sub_220891D7C();
      v92 = v91;
      v168 = v93;
      v94 = *v81;
      v95 = *(v175 + 16);
      v96 = *(v175 + 24);
      v158[1] = *v175;
      v158[2] = v95;
      v159 = v96;
      sub_220891A6C();
      *&v97 = v94 - *&v97;
      if (*&v97 >= v92)
      {
        *&v97 = v92;
      }

      v175 = v97;
      v98 = v164;
      sub_220890E9C();
      sub_220890E2C();
      v100 = v99;
      v101 = v182;
      v102 = v181;
      (v181)(v98, v182);
      v103 = v166;
      sub_220890E9C();
      sub_220890E2C();
      v105 = v104;
      v102(v103, v101);
      v106 = v100 - v105;
      v107 = v167;
      sub_220890E9C();
      sub_220890E2C();
      v109 = v108;
      v110 = v107;
      v111 = v102;
      v102(v110, v101);
      if (v109 < 5.0 && v109 != 0.0 || (v112 = v165, sub_220890E9C(), sub_220890E2C(), v114 = v113, v102(v112, v101), v115 = 1, v114 < 5.0) && v114 != 0.0)
      {
        v115 = 0;
      }

      v116 = *&v183;
      v117 = *&v185;
      v118 = 9666786;
      v119 = sub_2204DBC04(v115, v106);
      if (v120)
      {
        v121 = v120;
      }

      else
      {
        v119 = 9666786;
        v121 = 0xA300000000000000;
      }

      v122 = v160;
      v123 = v161;
      v53 = (*(v160 + 32))(v119, v121, v161, v160, v106);

      sub_220891D7C();
      v185 = v124;
      v177 = v125;
      v126 = v169;
      sub_220890E9C();
      sub_220890E2C();
      v128 = v127;
      v111(v126, v101);
      if (v128 - v106 <= 0.0)
      {
        v129 = 0.0;
      }

      else
      {
        v129 = v106 / (v128 - v106);
      }

      if (qword_27CF55AB8 != -1)
      {
        swift_once();
      }

      v130 = v94 - *&v175;
      v131 = v65 + v116;
      v132 = v65 + v117;
      v133 = qword_27CF6D008;
      v134 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v135 = [v133 stringFromNumber_];

      if (v135)
      {
        v118 = sub_22089136C();
        v137 = v136;
      }

      else
      {
        v137 = 0xA300000000000000;
      }

      v50 = v130 * 0.5;
      v54 = (*(v122 + 40))(v118, v137, v123, v122, v106);

      sub_220891D7C();
      *&v140 = v139;
      v183 = v140;
      v182 = v141;
      v142 = v94 - *&v185 - v139;
      v143 = v159;
      sub_220891A6C();
      v145 = v142 - v144;
      v146 = 0.0;
      if (v145 > 0.0)
      {
        v146 = v145;
      }

      if (v145 <= 50.0)
      {
        v147 = v146;
      }

      else
      {
        v147 = 50.0;
      }

      v148 = *&v185 + *&v183 + v147;
      v149 = v94 - v148 - v143;
      if (v149 <= v65)
      {
        v149 = v65;
      }

      v150 = v131 + (v132 - v131) * 0.5 - v148 * 0.5;
      if (v150 <= v65)
      {
        v150 = v65;
      }

      if (v149 >= v150)
      {
        v151 = v150;
      }

      else
      {
        v151 = v149;
      }

      v152 = [v163 layoutDirection];

      v153 = *(v170 + 8);
      v154 = v171;
      v153(v174, v171);
      v153(v173, v154);
      *(&v155 + 1) = *(&v185 + 1);
      *&v155 = v147 + *&v185 + v151;
      *(&v156 + 1) = *(&v183 + 1);
      *&v156 = v147 + *&v183 + v151;
      if (v152 != 1)
      {
        *&v156 = v151;
      }

      v179 = v156;
      if (v152 == 1)
      {
        *&v155 = v151;
      }

      v178 = v155;
      *&v155 = *(v176 + 8);
      *(&v157 + 1) = *(&v177 + 1);
      *&v157 = *&v155 - *&v177 + -4.0;
      v180 = v157;
      *&v155 = *&v155 - *&v182 + -4.0;
      v181 = v155;
      __swift_destroy_boxed_opaque_existential_1(v186);
      *&v57 = v178;
      *&v55 = v179;
      *&v58 = v183;
      *&v49 = v175;
      *(&v49 + 1) = v168;
      *&v56 = v185;
      *(&v55 + 1) = v180;
      *(&v56 + 1) = v177;
      *(&v57 + 1) = v181;
      v52 = 0x4014000000000000;
      *(&v58 + 1) = v182;
    }

    else
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      v58 = 0uLL;
      v49 = 0uLL;
    }
  }

  v138 = v184;
  *v184 = v51;
  *(v138 + 1) = v50;
  v138[2] = v52;
  *(v138 + 3) = v49;
  v138[5] = v53;
  *(v138 + 3) = v55;
  *(v138 + 4) = v56;
  v138[10] = v54;
  *(v138 + 11) = v57;
  *(v138 + 13) = v58;
}

uint64_t sub_2206E7878(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22088543C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v1 + 64);
  if (*(v9 + 16) && (v10 = sub_2205CDF20(a1), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    (*(v5 + 16))(v8, a1, v4);
    type metadata accessor for StockChartCalloutDateFormatter(0);
    v12 = swift_allocObject();
    *(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter) = 0;
    *(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter) = 0;
    (*(v5 + 32))(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter_timezone, v8, v4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 64);
    *(v2 + 64) = 0x8000000000000000;
    sub_2207CF09C(v12, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 64) = v15;
    swift_endAccess();
  }

  return v12;
}

uint64_t sub_2206E7A58()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_2206E7AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), __n128 a4)
{
  if (!*a2)
  {
    v12[0] = sub_220890E5C();
    v12[1] = sub_2204CF210(&qword_28127EDB8, MEMORY[0x277D6C6C8], v7);
    v12[2] = sub_2204CF210(&qword_28127EDC8, MEMORY[0x277D6C6B8], v8);
    v12[3] = sub_2204CF210(&qword_28127EDC0, MEMORY[0x277D6C6C0], v9);
    v10 = a3(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

BOOL sub_2206E7BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_22089253C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_2206E7CBC(char a1, char a2)
{
  sub_2206E8A48(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v6 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v7 = v2[7];
    v8 = objc_opt_self();
    v9 = *MEMORY[0x277D74410];
    v10 = v6;
    v11 = [v8 systemFontOfSize:17.0 weight:v9];
    v12 = [v7 scaledFontForFont_];

    v13 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
    *(inited + 40) = v12;
    v14 = *MEMORY[0x277D740C0];
    *(inited + 64) = v13;
    *(inited + 72) = v14;
    if (a2)
    {
      v15 = objc_opt_self();
      v16 = v14;
      v17 = [v15 secondaryLabelColor];
    }

    else
    {
      v33 = v2[5];
      v34 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v33);
      v35 = *(v34 + 16);
      v36 = *(v35 + 128);
      v37 = v14;
      v17 = v36(v33, v35);
    }
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v18 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v19 = v2[7];
    v20 = objc_opt_self();
    v21 = *MEMORY[0x277D74418];
    v22 = v18;
    v23 = [v20 systemFontOfSize:17.0 weight:v21];
    v24 = [v19 scaledFontForFont_];

    v25 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
    v26 = MEMORY[0x277D740C0];
    *(inited + 40) = v24;
    v27 = *v26;
    *(inited + 64) = v25;
    *(inited + 72) = v27;
    v28 = v2[5];
    v29 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v28);
    v30 = *(v29 + 16);
    v31 = *(v30 + 256);
    v32 = v27;
    v17 = v31(v28, v30);
  }

  v38 = v17;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v38;
  v39 = sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  return v39;
}

uint64_t sub_2206E7FD0(uint64_t a1, uint64_t a2)
{
  v28[1] = a1;
  sub_2206E8A48(0, &qword_28127E448, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v28 - v5;
  v7 = sub_22089226C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() preferredFontForTextStyle_];
  v13 = sub_220891DAC();
  v14 = objc_opt_self();
  v15 = [v14 configurationWithFont:v12 scale:v13];

  sub_22048BC00();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22089B130;
  v18 = v2[5];
  v17 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v18);
  v19 = (*(*(v17 + 16) + 128))(v18);
  v20 = [v19 stocksAccessibilityAdjustedForIncreaseContrast];

  *(v16 + 32) = v20;
  sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  v21 = sub_2208916DC();

  v22 = [v14 configurationWithPaletteColors_];

  v23 = [v15 configurationByApplyingConfiguration_];
  sub_22089224C();
  v24 = v23;
  v25 = sub_22089132C();
  v26 = [objc_opt_self() systemImageNamed:v25 withConfiguration:v24];

  sub_22089223C();
  (*(v8 + 16))(v6, v11, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_22089228C();

  return (*(v8 + 8))(v11, v7);
}

id sub_2206E8340(char a1, uint64_t a2)
{
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  v5 = sub_220891DAC();
  v6 = objc_opt_self();
  v7 = [v6 configurationWithFont:v4 scale:v5];

  sub_22048BC00();
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22089B120;
    *(v8 + 32) = [objc_opt_self() whiteColor];
    v9 = v2[5];
    v10 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
    *(v8 + 40) = (*(*(v10 + 16) + 128))(v9);
    sub_22044D56C(0, &qword_28127E530, 0x277D75348);
    v11 = sub_2208916DC();

    v12 = [v6 configurationWithPaletteColors_];

    v13 = [v7 configurationByApplyingConfiguration_];
    v14 = sub_22089132C();
    v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

    if (!v15)
    {
LABEL_6:
      v15 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    }
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22089B130;
    *(v16 + 32) = [objc_opt_self() secondaryLabelColor];
    sub_22044D56C(0, &qword_28127E530, 0x277D75348);
    v17 = sub_2208916DC();

    v12 = [v6 configurationWithPaletteColors_];

    v13 = [v7 configurationByApplyingConfiguration_];
    v18 = sub_22089132C();
    v19 = [objc_opt_self() systemImageNamed:v18 withConfiguration:v13];

    if (!v19)
    {
      goto LABEL_6;
    }

    v20 = [v6 configurationWithWeight_];
    v15 = [v19 imageByApplyingSymbolConfiguration_];

    if (!v15)
    {
      goto LABEL_6;
    }
  }

  return v15;
}

void sub_2206E870C(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  [a1 setNumberOfLines_];
  sub_2206E7CBC(a5, a4);
  v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v9 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v10 = sub_22089125C();

  v11 = [v8 initWithString:v9 attributes:v10];

  [a1 setAttributedText_];
}

uint64_t sub_2206E881C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_2206E8984(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2206E8984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = swift_allocObject();
  *(v7 + 56) = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  sub_220457328(&v9, v7 + 16);
  return v7;
}

void sub_2206E8A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2206E8AAC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D76480] object:0];

  return swift_deallocClassInstance();
}

void sub_2206E8B34()
{
  v1 = [*(v0 + 16) allObjects];
  sub_2206E8D24();
  v2 = sub_2208916EC();

  if (v2 >> 62)
  {
    v3 = sub_2208926AC();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223D8A700](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v5 invertColorsStatusDidChange];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

unint64_t sub_2206E8D24()
{
  result = qword_27CF58D08;
  if (!qword_27CF58D08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF58D08);
  }

  return result;
}

uint64_t sub_2206E8E40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = type metadata accessor for StockFeedConfig(0);
  MEMORY[0x28223BE20](v28, v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x277D83D88];
  sub_22044D940(0, &qword_281296B78, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v27 = &v25 - v10;
  sub_22044D940(0, &qword_281299480, MEMORY[0x277CC9578], v7);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v25 - v13;
  sub_2206E9814(0);
  v16 = v15;
  v26 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2206E9870();
  sub_220892A4C();
  if (!v2)
  {
    sub_22044D940(0, &qword_28127EA30, type metadata accessor for StockFeedGroupConfig, MEMORY[0x277D83940]);
    v32 = 0;
    sub_2206E98C4();
    sub_22089271C();
    v20 = v33;
    sub_22088516C();
    v31 = 1;
    sub_2206E999C(&qword_281299490, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_22089271C();
    sub_22088F67C();
    v30 = 2;
    sub_2206E999C(&qword_281296B80, MEMORY[0x277D32028], MEMORY[0x277D32038]);
    v21 = v27;
    sub_22089271C();
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    (*(v26 + 8))(v19, v16);
    *v6 = v22;
    v23 = v28;
    sub_220528AF8(v14, v6 + *(v28 + 20), &qword_281299480, MEMORY[0x277CC9578]);
    sub_220528AF8(v21, v6 + *(v23 + 24), &qword_281296B78, MEMORY[0x277D32028]);
    sub_2206E99E4(v6, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2206E9250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x446873696C627570;
  v4 = 0xEB00000000657461;
  if (v2 != 1)
  {
    v3 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7370756F7267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x446873696C627570;
  v8 = 0xEB00000000657461;
  if (*a2 != 1)
  {
    v7 = 0x617461646174656DLL;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7370756F7267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2208928BC();
  }

  return v11 & 1;
}

uint64_t sub_2206E9360()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_2206E9408(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_2206E949C()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

unint64_t sub_2206E9540@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2206E9B60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2206E9570(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEB00000000657461;
  v5 = 0x446873696C627570;
  if (v2 != 1)
  {
    v5 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7370756F7267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2206E95D4()
{
  v1 = 0x446873696C627570;
  if (*v0 != 1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7370756F7267;
  }
}

unint64_t sub_2206E9634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2206E9B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2206E965C(uint64_t a1)
{
  v2 = sub_2206E9870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2206E9698(uint64_t a1)
{
  v2 = sub_2206E9870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2206E9774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_22047E900(v3 + *(a2 + 20), a3 + *(a2 + 20), &qword_281299480, MEMORY[0x277CC9578]);
  sub_22047E900(v3 + *(a2 + 24), a3 + *(a2 + 24), &qword_281296B78, MEMORY[0x277D32028]);
  *a3 = a1;
}

void sub_2206E9814(uint64_t a1)
{
  if (!qword_28127E278)
  {
    sub_2206E9870();
    v1 = sub_2208927BC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E278);
    }
  }
}

unint64_t sub_2206E9870()
{
  result = qword_281292F80[0];
  if (!qword_281292F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281292F80);
  }

  return result;
}

unint64_t sub_2206E98C4()
{
  result = qword_28127EA28;
  if (!qword_28127EA28)
  {
    sub_22044D940(255, &qword_28127EA30, type metadata accessor for StockFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2206E999C(&qword_28128E960, type metadata accessor for StockFeedGroupConfig, &unk_2208A4F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EA28);
  }

  return result;
}

uint64_t sub_2206E999C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2206E99E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2206E9A5C()
{
  result = qword_27CF58D10;
  if (!qword_27CF58D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58D10);
  }

  return result;
}

unint64_t sub_2206E9AB4()
{
  result = qword_281292F70;
  if (!qword_281292F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281292F70);
  }

  return result;
}

unint64_t sub_2206E9B0C()
{
  result = qword_281292F78;
  if (!qword_281292F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281292F78);
  }

  return result;
}

unint64_t sub_2206E9B60(uint64_t a1, uint64_t a2)
{
  v2 = sub_22089270C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_2206E9BE0()
{
  v1 = OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v5 = sub_22089132C();
    [v4 setText_];

    v6 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_2206E9CE4()
{
  v1 = OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___messageLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___messageLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___messageLabel);
  }

  else
  {
    v4 = sub_2206E9D48(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2206E9D48(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = sub_22089132C();
  [v1 setText_];

  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  [v1 setNumberOfLines_];
  [v1 setTextAlignment_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

id sub_2206E9E3C()
{
  v1 = OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textFieldLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textFieldLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textFieldLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];

    v6 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_2206E9F4C()
{
  v1 = OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
    [v4 setBorderStyle_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setEnabled_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2206E9FFC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    sub_22044D56C(0, &qword_27CF58D88, 0x277D75220);
    sub_22044D56C(0, &qword_28127E450, 0x277D750C8);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v11 = v4;
    sub_2208920BC();
    v12 = sub_22089229C();
    [v12 setRole_];
    v13 = v12;
    v14 = [v13 widthAnchor];
    v15 = [v14 constraintGreaterThanOrEqualToConstant_];

    [v15 setActive_];
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];

    v16 = *(v11 + v5);
    *(v11 + v5) = v13;
    v7 = v13;

    v6 = 0;
  }

  v17 = v6;
  return v7;
}

void sub_2206EA1C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onCancel);
    if (v5)
    {
      v6 = *(Strong + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onCancel + 8);

      v5(v7);
      v3 = sub_2204DA45C(v5, v6);
    }

    [v4 dismissViewControllerAnimated:1 completion:{0, v3}];
  }
}

void sub_2206EA264(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onSubmit);
    if (v4)
    {
      v5 = *(Strong + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onSubmit + 8);

      v6 = sub_2206E9F4C();
      v7 = [v6 text];

      if (v7)
      {
        v8 = sub_22089136C();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0xE000000000000000;
      }

      v4(v8, v10);
      sub_2204DA45C(v4, v5);
    }

    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_2206EA408(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v4 = [objc_opt_self() mainBundle];
  sub_220884CAC();

  v5 = sub_22089132C();

  [v3 setAccessibilityLabel_];

  sub_2206EA5CC();
  v6 = *&v3[OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_configureTextField];
  if (v6)
  {
    v7 = *&v3[OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_configureTextField + 8];

    v8 = sub_2206E9F4C();
    v9 = sub_2206E9E3C();
    v6(v8, v9);
    sub_2204DA45C(v6, v7);
  }

  result = [v3 view];
  if (result)
  {
    v11 = result;
    [result systemLayoutSizeFittingSize_];
    v13 = v12;
    v15 = v14;

    return [v3 setPreferredContentSize_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2206EA5CC()
{
  v1 = v0;
  sub_22048BC00();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22089B120;
  *(v2 + 32) = sub_2206E9FFC(&OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___cancelButton, &OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_cancelTitle, sub_2206EB2EC, 2);
  *(v2 + 40) = sub_2206E9FFC(&OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___submitButton, &OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_submitTitle, sub_2206EB2E4, 1);
  v3 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22044D56C(0, &qword_28127E550, 0x277D75D18);
  v4 = sub_2208916DC();

  v5 = [v3 initWithArrangedSubviews_];

  [v5 setAxis_];
  [v5 setDistribution_];
  [v5 setSpacing_];
  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v71 = v6;
  [v7 addSubview_];

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22089B120;
  *(v9 + 32) = sub_2206E9E3C();
  *(v9 + 40) = sub_2206E9F4C();
  v10 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v11 = sub_2208916DC();

  v12 = [v10 &selRef:v11 initWithFormat:? localeIdentifier:? + 7];

  [v12 &selRef_accessibilityFrame];
  [v12 setSpacing_];
  [v12 setAlignment_];
  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v72 = OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField;
  v14 = *&v1[OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField];
  type metadata accessor for UILayoutPriority(0);
  sub_2206EB28C();
  v15 = v14;
  sub_22088E95C();
  LODWORD(v16) = v73;
  [v15 setContentHuggingPriority:0 forAxis:v16];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22089E460;
  *(v17 + 32) = sub_2206E9BE0();
  *(v17 + 40) = sub_2206E9CE4();
  *(v17 + 48) = v13;
  v18 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v19 = v13;
  v20 = sub_2208916DC();

  v21 = [v18 &selRef:v20 initWithFormat:? localeIdentifier:? + 7];

  [v21 &selRef_accessibilityFrame];
  [v21 setAlignment_];
  [v21 setSpacing_];
  [v21 setCustomSpacing:*&v1[OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___messageLabel] afterView:20.0];
  v22 = v21;
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v23;
  [v23 addSubview_];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2208AC0D0;
  v26 = [v22 topAnchor];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v26 constraintEqualToSystemSpacingBelowAnchor:v29 multiplier:1.0];
  *(v25 + 32) = v30;
  v31 = [v1 view];
  if (!v31)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v22 trailingAnchor];
  v35 = [v33 constraintEqualToSystemSpacingAfterAnchor:v34 multiplier:1.0];

  *(v25 + 40) = v35;
  v36 = [v22 leadingAnchor];
  v37 = [v1 view];
  if (!v37)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v37;
  v39 = [v37 leadingAnchor];

  v40 = [v36 constraintEqualToSystemSpacingAfterAnchor:v39 multiplier:1.0];
  *(v25 + 48) = v40;
  v41 = [v19 heightAnchor];
  v42 = [*&v1[v72] heightAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v25 + 56) = v43;
  v44 = [v19 widthAnchor];

  v45 = [v22 widthAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v25 + 64) = v46;
  v47 = [v71 topAnchor];
  v48 = [v22 bottomAnchor];

  v49 = [v47 constraintEqualToAnchor:v48 constant:20.0];
  *(v25 + 72) = v49;
  v50 = [v71 leadingAnchor];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v52 = v51;
  v53 = [v51 leadingAnchor];

  v54 = [v50 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v53 multiplier:1.0];
  *(v25 + 80) = v54;
  v55 = [v1 view];
  if (!v55)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v56 = v55;
  v57 = [v55 trailingAnchor];

  v58 = [v71 trailingAnchor];
  v59 = [v57 constraintEqualToSystemSpacingAfterAnchor:v58 multiplier:1.0];

  *(v25 + 88) = v59;
  v60 = [v1 view];
  if (!v60)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v61 = v60;
  v62 = [v60 bottomAnchor];

  v63 = [v71 bottomAnchor];
  v64 = [v62 constraintEqualToSystemSpacingBelowAnchor:v63 multiplier:1.0];

  *(v25 + 96) = v64;
  v65 = [v1 view];
  if (v65)
  {
    v66 = v65;
    v67 = objc_opt_self();
    v68 = [v66 widthAnchor];

    v69 = [v68 constraintEqualToConstant_];
    *(v25 + 104) = v69;
    sub_22044D56C(0, &qword_28127E790, 0x277CCAAD0);
    v70 = sub_2208916DC();

    [v67 activateConstraints_];

    return;
  }

LABEL_19:
  __break(1u);
}

unint64_t sub_2206EB28C()
{
  result = qword_27CF58D80;
  if (!qword_27CF58D80)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58D80);
  }

  return result;
}

void sub_2206EB2F4()
{
  v1 = (v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_configureTextField);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onSubmit);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onCancel);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___messageLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textFieldLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___submitButton) = 0;
  sub_22089267C();
  __break(1u);
}

uint64_t sub_2206EB3C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
  sub_22088613C();
  sub_2205288F4(0, &qword_28127DF68, type metadata accessor for ForYouFeedGroupConfig, MEMORY[0x277D84560]);
  v1 = *(type metadata accessor for ForYouFeedGroupConfig(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  if (qword_281296C30 != -1)
  {
    swift_once();
  }

  sub_220452A8C(0);
  v5 = v4;
  v6 = __swift_project_value_buffer(v4, qword_2812B6BA0);
  (*(*(v5 - 8) + 16))(v3 + v2, v6, v5);
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t sub_2206EB554(uint64_t a1, uint64_t a2)
{
  v3 = sub_2206EB3C8(*v2);
  sub_22044D56C(0, &qword_28127E608, 0x277D311C0);
  sub_220888FBC();
  *(swift_allocObject() + 16) = v3;
  v4 = sub_220888D9C();
  type metadata accessor for ForYouFeedServiceConfig(0);
  v5 = sub_220888E5C();

  return v5;
}

uint64_t sub_2206EB648(uint64_t a1)
{
  v2 = [*(a1 + 96) appConfiguration];
  if ([v2 respondsToSelector_])
  {
    [v2 paidBundleConfig];
    swift_unknownObjectRelease();
    sub_2206EC3B0(0);
    swift_allocObject();
    return sub_220888ECC();
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1((a1 + 112), *(a1 + 136));
    return sub_220890A4C();
  }
}

uint64_t sub_2206EB724(void **a1, uint64_t a2)
{
  v2 = *a1;
  sub_220888FBC();
  v3 = sub_220888D9C();
  type metadata accessor for ForYouFeedContentConfig(0);
  sub_220888E4C();

  *(swift_allocObject() + 16) = v2;
  v4 = v2;
  v5 = sub_220888D9C();
  sub_2206EC434(0);
  v6 = sub_220888E4C();

  return v6;
}

uint64_t sub_2206EB838(uint64_t a1, void *a2)
{
  v4 = sub_22088F87C();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220885ACC();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForYouFeedServiceConfig(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206EC434(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for ForYouFeedContentConfig(0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v41 - v26;
  v45 = &v41 - v26;
  sub_220520948(a1, v19, sub_2206EC434);
  v28 = *v19;
  sub_2206EC4CC(v19 + *(v16 + 56), v27);
  v42 = type metadata accessor for ForYouFeedContentConfig;
  sub_220520948(v27, v23, type metadata accessor for ForYouFeedContentConfig);
  __swift_project_boxed_opaque_existential_1(a2 + 7, a2[10]);
  v29 = v28;
  v43 = v29;
  sub_22088641C();
  v30 = v46;
  v31 = v47;
  (*(v46 + 104))(v51, *MEMORY[0x277D32220], v47);
  __swift_project_boxed_opaque_existential_1(a2 + 19, a2[22]);
  v32 = v44;
  sub_2208863EC();
  sub_220520948(v50, v32, v42);
  *(v32 + v12[8]) = v29;
  v34 = v48;
  v33 = v49;
  v35 = v10;
  (*(v48 + 16))(v32 + v12[9], v10, v49);
  v36 = v51;
  (*(v30 + 16))(v32 + v12[10], v51, v31);
  sub_220885A4C();
  v38 = v37;
  (*(v30 + 8))(v36, v31);
  (*(v34 + 8))(v35, v33);
  sub_2206EC354(v50);
  *(v32 + v12[11]) = v38;
  sub_2205288F4(0, &qword_281298630, type metadata accessor for ForYouFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v39 = sub_220888ECC();

  sub_2206EC354(v45);
  return v39;
}

uint64_t sub_2206EBC80(uint64_t *a1)
{
  sub_2205288F4(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - v4;
  v6 = sub_220884E9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298ED8 != -1)
  {
    swift_once();
  }

  if (sub_220886B7C())
  {
    if (qword_27CF55AF0 != -1)
    {
      swift_once();
    }

    sub_22044DCC8(&qword_27CF58D90, v11, type metadata accessor for NFFForYouFeedServiceConfigFetcher, &unk_2208AC1B4);
    sub_220886B3C();
    sub_220884E8C();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_22047C4E4(v5);
      sub_2206EC5B8();
      swift_allocError();
      *v12 = 1;
      sub_2206EC60C();
      swift_allocObject();
      return sub_220888EBC();
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v14 = sub_2206EC65C(v10);
      (*(v7 + 8))(v10, v6);
      return v14;
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    return sub_22088644C();
  }
}

void sub_2206EBFA0()
{
  sub_22088F60C();
  swift_allocObject();
  sub_22088F5FC();
  type metadata accessor for ForYouFeedContentConfig(0);
  sub_22044DCC8(&qword_28128BA00, 255, type metadata accessor for ForYouFeedContentConfig, &unk_2208ACA60);
  sub_22088827C();

  if (v2)
  {
    v3 = sub_220891ADC();
    sub_22048D7F8(0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_220899360;
    sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);
    sub_22089264C();
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_22048D860();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    sub_22044D56C(0, &qword_28127E420, 0x277D86200);
    v5 = sub_2208922DC();
    sub_22088A7EC("ForYouFeed failed to decode feed config data, error=%{public}@", 62, 2, &dword_22043F000, v5, v3, v4);

    swift_willThrow();
  }

  else
  {
    sub_22044D56C(0, &qword_28127E420, 0x277D86200);
    v6 = sub_2208922DC();
    v7 = sub_220891AFC();
    sub_22088A7EC("ForYouFeed successfully decoded feed config data", 48, 2, &dword_22043F000, v6, v7, MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2206EC1C8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);

  return swift_deallocClassInstance();
}

uint64_t sub_2206EC244(uint64_t a1, uint64_t a2)
{
  sub_22044D56C(0, &qword_28127E608, 0x277D311C0);
  sub_220888FBC();
  v2 = sub_220888D9C();
  sub_2206EC434(0);
  sub_220888E5C();

  v3 = sub_220888D9C();
  type metadata accessor for ForYouFeedServiceConfig(0);
  v4 = sub_220888E5C();

  return v4;
}

uint64_t sub_2206EC354(uint64_t a1)
{
  v2 = type metadata accessor for ForYouFeedContentConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2206EC3B0(uint64_t a1)
{
  if (!qword_2812985E8)
  {
    sub_22044D56C(255, &qword_28127E608, 0x277D311C0);
    v1 = sub_220888F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812985E8);
    }
  }
}

void sub_2206EC434(uint64_t a1)
{
  if (!qword_28127E5F8)
  {
    sub_22044D56C(255, &qword_28127E608, 0x277D311C0);
    type metadata accessor for ForYouFeedContentConfig(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E5F8);
    }
  }
}

uint64_t sub_2206EC4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedContentConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2206EC54C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_2206EC434(0);
  v7 = *(v6 + 48);
  *a2 = v5;
  sub_220520948(a1, a2 + v7, type metadata accessor for ForYouFeedContentConfig);
  return v5;
}

unint64_t sub_2206EC5B8()
{
  result = qword_27CF58D98;
  if (!qword_27CF58D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58D98);
  }

  return result;
}

void sub_2206EC60C()
{
  if (!qword_27CF58DA0)
  {
    v0 = sub_220888F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58DA0);
    }
  }
}

uint64_t sub_2206EC65C(uint64_t a1)
{
  v2 = sub_220884E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088495C();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  v11 = qword_281294348;
  sub_22048D7F8(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220899360;
  v13 = sub_220884E0C();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_22048D860();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = sub_220891AFC();
  sub_22088A7EC("Fetching the For You feed service configuration from debug url=%@", 65, 2, &dword_22043F000, v11, v16, v12);

  (*(v3 + 16))(v6, a1, v2);
  sub_22088494C();
  v17 = [objc_opt_self() sharedSession];
  v18 = sub_220888D7C();

  (*(v7 + 8))(v10, v21);
  return v18;
}

unint64_t sub_2206EC8E0()
{
  result = qword_27CF58DA8;
  if (!qword_27CF58DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58DA8);
  }

  return result;
}

uint64_t sub_2206EC95C(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = [a1 identifier];
  v5 = sub_22089136C();
  v7 = v6;

  v8 = [a1 language];
  if (v8)
  {
    v9 = v8;
    v10 = sub_22089136C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = [*(v2 + 16) cachedSubscription];
  v14 = [a1 identifier];
  if (!v14)
  {
    sub_22089136C();
    v14 = sub_22089132C();
  }

  v15 = [v13 containsTagID_];

  v16 = sub_220891D4C() & 1;

  return MEMORY[0x2821CDCA0](v5, v7, v10, v12, v15, v16);
}

uint64_t sub_2206ECAB8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2206ECAF0()
{
  v0 = sub_2208852DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_22088528C();
  v6 = sub_22088523C();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  v7 = sub_22089132C();
  [v5 setLocalizedDateFormatFromTemplate_];

  qword_2812843C0 = v5;
}

uint64_t sub_2206ECC24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v53 = a2;
  v7 = sub_220884BDC();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v49 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22088516C();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v10);
  v45 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v4[5];
  v13 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
  v44[1] = a3;
  v14 = sub_22089104C();
  v15 = *(v13 + 8);
  v16 = *(v15 + 8);
  v55[3] = v12;
  v55[4] = v13;
  v46 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  v47 = v12;
  v16(v14, v12, v15);

  v54 = 0;
  if (sub_2206E7BA8(a1, v53, &v54))
  {
    v53 = boxed_opaque_existential_1;
    v18 = v45;
    sub_2208850EC();
    sub_2206ED97C(0);
    v19 = sub_2208853AC();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_220899360;
    (*(v20 + 104))(v22 + v21, *MEMORY[0x277CC9998], v19);
    sub_2207E1070(v22);
    swift_setDeallocating();
    (*(v20 + 8))(v22 + v21, v19);
    swift_deallocClassInstance();
    v23 = v49;
    sub_22088531C();

    v24 = sub_2206ED088(0, v4);
    sub_2206ED48C(v24, v25, v4);
    v27 = v26;

    v28 = sub_2206ED088(1, v4);
    sub_2206ED48C(v28, v29, v4);
    v31 = v30;

    v32 = sub_22088509C();
    v33 = [v27 stringFromDate_];

    v34 = sub_22089136C();
    v36 = v35;

    v37 = sub_22088509C();
    v38 = [v31 stringFromDate_];

    v39 = sub_22089136C();
    v41 = v40;

    v42 = (*(v46 + 144))(v34, v36, v39, v41, v47);

    (*(v51 + 8))(v23, v52);
    (*(v48 + 8))(v18, v50);
  }

  else
  {
    v42 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v55);
  return v42;
}

uint64_t sub_2206ED088(char a1, uint64_t a2)
{
  sub_2206ED9D4(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4, v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_chartRange;
  v10 = sub_22089104C();
  v11 = [v10 horizontalSizeClass];

  v12 = *(v5 + 48);
  v13 = sub_2208854FC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a2 + v9, v13);
  *&v8[v12] = v11;
  LODWORD(v15) = (*(v14 + 88))(v8, v13);
  if (v15 == *MEMORY[0x277D69120])
  {
    if (qword_2812843B8 != -1)
    {
      swift_once();
    }

    v16 = qword_2812843C0;
    v17 = [v16 dateFormat];
    if (v17)
    {
      v18 = v17;
      v19 = sub_22089136C();
      v21 = v20;

      v32[2] = v19;
      v32[3] = v21;
      v32[0] = 97;
      v32[1] = 0xE100000000000000;
      sub_22059B6A4();
      LOBYTE(v18) = sub_22089239C();

      if (v18)
      {
        return 104;
      }

      else
      {
        return 72;
      }
    }

    else
    {

      return 72;
    }
  }

  v23 = v15 == *MEMORY[0x277D69128] || v15 == *MEMORY[0x277D69138];
  if (v23)
  {
    return 100;
  }

  if (v15 == *MEMORY[0x277D69110] || v15 == *MEMORY[0x277D69158] || v15 == *MEMORY[0x277D69100])
  {
    goto LABEL_22;
  }

  if (v15 != *MEMORY[0x277D69130] && v15 != *MEMORY[0x277D69148])
  {
LABEL_38:
    if (v15 == *MEMORY[0x277D69150] || v15 == *MEMORY[0x277D69140] || v15 == *MEMORY[0x277D69118])
    {
      v15 = [objc_opt_self() su_localizedYearFormat];
      if (v15)
      {
        goto LABEL_42;
      }

      __break(1u);
    }

    result = sub_2208928AC();
    __break(1u);
    return result;
  }

  if (v11 != 1)
  {
    goto LABEL_33;
  }

  v26 = sub_220884BAC();
  if ((v27 & 1) != 0 || v26 != 1)
  {
LABEL_22:
    if (a1)
    {
      return 1280068684;
    }

    else
    {
      return 5000268;
    }
  }

  v15 = [objc_opt_self() su_localizedYearFormat];
  if (v15)
  {
    goto LABEL_42;
  }

  __break(1u);
LABEL_33:
  v28 = sub_220884BAC();
  if (v29)
  {
    return 1280068684;
  }

  v23 = v28 == 1;
  result = 1280068684;
  if (v23)
  {
    v15 = [objc_opt_self() su_localizedYearFormat];
    if (!v15)
    {
      __break(1u);
      goto LABEL_38;
    }

LABEL_42:
    v30 = v15;
    v31 = sub_22089136C();

    return v31;
  }

  return result;
}

void sub_2206ED48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2208852DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_dateFormatters;
  swift_beginAccess();
  v12 = *(a3 + v11);
  if (*(v12 + 16) && (v13 = sub_2204AF97C(a1, a2), (v14 & 1) != 0))
  {
    v21 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    v15 = v21;

    v16 = v15;
  }

  else
  {
    swift_endAccess();
    sub_22088528C();
    sub_2208851EC();
    (*(v7 + 8))(v10, v6);
    v17 = objc_allocWithZone(MEMORY[0x277CCA968]);
    v18 = sub_22089132C();
    v19 = sub_22089132C();

    v20 = [v17 initWithFormat:v18 localeIdentifier:v19];

    if (v20)
    {
      swift_beginAccess();

      v20;
      sub_22059AA98(v20, a1, a2);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2206ED6B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_chart;
  v2 = sub_22088665C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_chartRange;
  v4 = sub_2208854FC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_calendar;
  v6 = sub_2208853CC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockChartCategoryLabelFormatter(uint64_t a1)
{
  result = qword_281284378;
  if (!qword_281284378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2206ED83C(uint64_t a1)
{
  result = sub_22088665C();
  if (v2 <= 0x3F)
  {
    result = sub_2208854FC();
    if (v3 <= 0x3F)
    {
      result = sub_2208853CC();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_2206ED97C(uint64_t a1)
{
  if (!qword_28127E1C8)
  {
    sub_2208853AC();
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E1C8);
    }
  }
}

void sub_2206ED9D4(uint64_t a1)
{
  if (!qword_281299380)
  {
    sub_2208854FC();
    type metadata accessor for UIUserInterfaceSizeClass(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281299380);
    }
  }
}

BOOL sub_2206EDADC()
{
  v1 = *v0;
  v2 = sub_22088516C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v28 - v12;
  v14 = sub_220885ACC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298F20 != -1)
  {
    swift_once();
  }

  if (sub_220886B7C())
  {
    if (qword_27CF55AA8 != -1)
    {
      swift_once();
    }

    sub_2206EE928(&qword_281288558, v19, type metadata accessor for EarningsShownCommandHandler, &unk_2208AC4DC);
    sub_220886B3C();
    v18 = v32;
    if (qword_27CF55AA0 != -1)
    {
      swift_once();
    }

    sub_220886B3C();
    v21 = v33;
  }

  else
  {
    v29 = v13;
    v30 = v1;
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_22088641C();
    sub_22088598C();
    v22 = *(v15 + 8);
    v22(v18, v14);
    v23 = v0[5];
    v24 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
    sub_22088641C();
    v21 = sub_22088595C();
    v22(v18, v14);
    if (v21 < 0)
    {
      __break(1u);
      goto LABEL_20;
    }

    v13 = v29;
    v18 = v32;
  }

  v32 = v21;
  if (qword_281298F80 != -1)
  {
    swift_once();
  }

  sub_2206EE928(&qword_281288558, v20, type metadata accessor for EarningsShownCommandHandler, &unk_2208AC4DC);
  sub_220886B3C();
  v24 = v13;
  sub_22088508C();
  sub_22088512C();
  v25 = sub_2208850BC();
  v23 = *(v31 + 8);
  v23(v5, v18);
  v23(v9, v18);
  v5 = &qword_281298000;
  if (v25)
  {
    if (qword_281298F68 == -1)
    {
LABEL_15:
      v33 = 0;
      sub_2206EE928(&qword_281288550, v26, type metadata accessor for EarningsShownCommandHandler, &unk_2208AC51C);
      sub_220886C6C();
      goto LABEL_16;
    }

LABEL_20:
    swift_once();
    goto LABEL_15;
  }

LABEL_16:
  if (v5[493] != -1)
  {
    swift_once();
  }

  sub_220886B3C();
  v23(v24, v18);
  return v33 < v32;
}

void sub_2206EE020(uint64_t a1)
{
  v49 = *v1;
  v3 = sub_22088516C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061D1D0(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v12 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v17, v17);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v43 = v9;
    v46 = v4;
    v47 = v3;
    v48 = v1;
    v20 = v1[7];
    *v19 = a1 | 0x8000000000000000;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    v42 = a1;
    sub_22088C4AC();
    sub_2204446D4(0, &qword_281297F10, MEMORY[0x277D6D540]);
    v21 = sub_22088731C();
    if (swift_dynamicCast())
    {
      v22 = *&v56[0];
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_22088969C();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    v59 = 0;
    memset(v58, 0, sizeof(v58));
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    v55 = v20;
    sub_2205A0924(v56, &v50, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
    v45 = v7;
    v44 = v19;
    if (v52)
    {
      sub_220458198(&v50, v53);
      v24 = sub_220597454(v53);
      v26 = v25;
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1(v53);
      if (v22)
      {
LABEL_7:
        v29 = v22;
        goto LABEL_12;
      }
    }

    else
    {
      sub_2205A0B34(&v50, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v24 = qword_2812908F8;
      v26 = qword_281290900;
      v28 = qword_281290908;

      sub_2204A80F4(v26, v28);
      if (v22)
      {
        goto LABEL_7;
      }
    }

    v29 = 0;
    v21 = 0;
    *(&v50 + 1) = 0;
    v51 = 0;
LABEL_12:
    *&v50 = v29;
    v52 = v21;
    sub_2205A08A4(v16, v12);
    sub_2205A0924(v58, v53, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
    v30 = (v43[80] + 24) & ~v43[80];
    v31 = (v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = v16;
    v32 = swift_allocObject();
    *(v32 + 16) = v22;
    sub_2205A0994(v12, v32 + v30);
    v33 = v32 + v31;
    v34 = v53[1];
    *v33 = v53[0];
    *(v33 + 16) = v34;
    *(v33 + 32) = v54;
    v35 = (v32 + ((v31 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v35 = v24;
    v35[1] = v26;
    v35[2] = v28;
    swift_retain_n();

    sub_2204A80F4(v26, v28);
    sub_2204549FC(0);
    sub_2206EE928(&unk_281297EC0, 255, sub_2204549FC, MEMORY[0x277D6D5F8]);
    v36 = v44;
    sub_22088E92C();

    sub_2204DA45C(v26, v28);
    sub_2205A0B34(v56, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(v58, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_220650F50(v43, sub_22061D1D0);
    sub_220650F50(v36, type metadata accessor for StocksActivity);
    sub_2205A0B34(&v50, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    v38 = v47;
    v39 = v46;
    v40 = v45;
    if (qword_281298F68 != -1)
    {
      swift_once();
    }

    sub_2206EE928(&qword_281288558, v37, type metadata accessor for EarningsShownCommandHandler, &unk_2208AC4DC);
    sub_220886B3C();
    if (__OFADD__(*&v58[0], 1))
    {
      __break(1u);
    }

    else
    {
      ++*&v58[0];
      sub_2206EE928(&qword_281288550, v41, type metadata accessor for EarningsShownCommandHandler, &unk_2208AC51C);
      sub_220886C6C();
      if (qword_281298F80 == -1)
      {
LABEL_16:
        sub_22088512C();
        sub_220886C6C();

        (*(v39 + 8))(v40, v38);
        return;
      }
    }

    swift_once();
    goto LABEL_16;
  }
}

uint64_t sub_2206EE928(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2206EE970(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_22089114C();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v59 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2208911CC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220890C5C();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208911BC();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v54 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204DD908(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v56 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v48 - v21;
  v23 = (v1 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler);
  v24 = *(v1 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 24);
  v25 = *(v1 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler), v24);
  (*(v25 + 72))(&v61 + 1, v24, v25);
  v26 = v64;
  v27 = v65;
  __swift_project_boxed_opaque_existential_1((&v61 + 1), v64);
  (*(v27 + 24))(&v61, v26, v27);
  v28 = v61;
  v29 = objc_opt_self();
  v30 = [v29 currentTraitCollection];
  v31 = [v30 userInterfaceStyle];

  v32 = [v29 currentTraitCollection];
  v33 = [v32 accessibilityContrast];

  __swift_destroy_boxed_opaque_existential_1((&v61 + 1));
  BYTE1(v61) = 2;
  v55 = v28;
  BYTE2(v61) = v28;
  v51 = v31;
  v62 = v31;
  v63 = v33;
  sub_220888D3C();
  v34 = sub_220890DAC();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v22, 1, v34) == 1)
  {
    sub_2204DDF40(v22);
    v48 = v33;
    v37 = v23[3];
    v36 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v37);
    v38 = (*(*(v36 + 16) + 440))(v37);
    v39 = v23[3];
    v40 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v39);
    v41 = (*(*(v40 + 16) + 440))(v39);
    (*(v49 + 104))(v12, *MEMORY[0x277D6C640], v50);
    (*(v52 + 104))(v8, *MEMORY[0x277D6C7D0], v53);
    v42 = v41;
    sub_2208911AC();
    sub_22048BC00();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22089B120;
    *(v43 + 32) = [v38 colorWithAlphaComponent_];
    *(v43 + 40) = [v38 colorWithAlphaComponent_];
    v44 = v58;
    v45 = v59;
    *v59 = v43;
    (*(v57 + 104))(v45, *MEMORY[0x277D6C7B8], v44);
    sub_22089120C();
    swift_allocObject();
    sub_2208911FC();
    v46 = v60;
    sub_220890D9C();
    v47 = v56;
    (*(v35 + 16))(v56, v46, v34);
    (*(v35 + 56))(v47, 0, 1, v34);
    BYTE1(v61) = 2;
    BYTE2(v61) = v55;
    v62 = v51;
    v63 = v48;
    sub_220888D4C();
  }

  else
  {
    (*(v35 + 32))(v60, v22, v34);
  }
}

uint64_t getEnumTagSinglePayload for StockSparklineStyleCacheKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StockSparklineStyleCacheKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2206EF020()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  MEMORY[0x223D8ABA0](v2);
  MEMORY[0x223D8ABA0](v3);
  MEMORY[0x223D8ABA0](v4);
  return sub_220892A2C();
}

uint64_t sub_2206EF0A4()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  MEMORY[0x223D8ABA0](*v0);
  MEMORY[0x223D8ABA0](v1);
  MEMORY[0x223D8ABA0](v2);
  return MEMORY[0x223D8ABA0](v3);
}

unint64_t sub_2206EF114()
{
  result = qword_27CF58DB0;
  if (!qword_27CF58DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58DB0);
  }

  return result;
}

uint64_t sub_2206EF168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_22088E2AC();
    sub_22089011C();
    sub_22088B75C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2206EF1FC@<X0>(void *a1@<X8>)
{
  sub_2205715CC(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206EF850(0, &qword_27CF56C20, sub_2205714D0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v25 - v9;
  v11 = *(v1 + 24);
  v12 = [sub_2208900FC() identifier];
  swift_unknownObjectRelease();
  if (!v12)
  {
    sub_22089136C();
    v12 = sub_22089132C();
  }

  v13 = [v11 hasArticleCompletedListening_];

  if (v13)
  {
    v14 = *MEMORY[0x277D32468];
    v15 = sub_22088F91C();
    v16 = *(*(v15 - 8) + 104);

    return v16(a1, v14, v15);
  }

  else
  {
    sub_220887BBC();
    sub_22088867C();

    sub_2207AD9A0(v10);
    sub_2206EF7F0(v6, sub_2205715CC);
    sub_2205714D0(0);
    v19 = v18;
    if ((*(*(v18 - 8) + 48))(v10, 1, v18) == 1)
    {
      sub_2206EF794(v10, &qword_27CF56C20, sub_2205714D0, v20);
      v21 = MEMORY[0x277D32468];
    }

    else
    {
      v22 = *&v10[*(v19 + 48)];
      sub_2206EF7F0(v10, type metadata accessor for StocksAudioTrack);
      *a1 = v22;
      v21 = MEMORY[0x277D32460];
    }

    v23 = *v21;
    v24 = sub_22088F91C();
    return (*(*(v24 - 8) + 104))(a1, v23, v24);
  }
}

uint64_t sub_2206EF4F4()
{

  return swift_deallocClassInstance();
}

double sub_2206EF57C(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  sub_2206EF850(0, &qword_281299728, MEMORY[0x277D33058]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  swift_getObjectType();
  sub_22088E2AC();
  v10 = sub_22089011C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a5, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_22088B81C();
  sub_2206EF794(v9, &qword_281299728, MEMORY[0x277D33058], v12);

  return result;
}

uint64_t sub_2206EF74C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2206EF794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  sub_2206EF850(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2206EF7F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2206EF850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2206EF8A4(uint64_t a1)
{
  v16 = a1;
  v17 = sub_22088947C();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088946C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088954C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220887A5C();
  sub_22088953C();
  sub_2206F01D8(&qword_2812984C0, MEMORY[0x277D68600], MEMORY[0x277D685F8]);
  sub_220886F1C();
  (*(v11 + 8))(v14, v10);
  (*(v1 + 104))(v4, *MEMORY[0x277D68580], v17);
  sub_22088945C();
  sub_2206F01D8(&qword_2812984E8, MEMORY[0x277D68570], MEMORY[0x277D68568]);
  sub_220886F1C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2206EFB8C()
{
  v0 = sub_22088516C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v11 - v7;
  sub_220889E7C();
  sub_22088B1FC();
  sub_2206F01D8(&unk_27CF58DC0, MEMORY[0x277D68DB0], MEMORY[0x277D68DA8]);
  sub_220886ECC();
  v9 = *(v1 + 8);
  v9(v8, v0);
  sub_22088B1FC();
  sub_22088B20C();
  sub_22088508C();
  v9(v4, v0);
  sub_220886EDC();
  return (v9)(v8, v0);
}

double sub_2206EFD74(uint64_t a1)
{
  v3 = sub_220887A6C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  __swift_project_boxed_opaque_existential_1((*v1 + 24), *(*v1 + 48));
  if (sub_220889D0C())
  {
    (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v9 = swift_allocObject();
    (*(v4 + 32))(v9 + v8, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_22088726C();
  }

  return result;
}

uint64_t sub_2206EFEE0()
{
  v0 = sub_22088B21C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v4 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v12 - v7;
  sub_220887A4C();
  (*(v1 + 16))(v4, v8, v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v9, v4, v0);
  sub_22088726C();

  return (*(v1 + 8))(v8, v0);
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_2206F0150(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_2206F01D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2206F0220(uint64_t a1, double *a2, char *a3)
{
  v4 = v3;
  [a3 setFrame_];
  swift_beginAccess();
  v8 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v9 = *&a3[OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_separatorView];
  v11 = *(*v8 + 40);
  v10 = *(*v8 + 48);
  __swift_project_boxed_opaque_existential_1((*v8 + 16), v11);
  v12 = (*(*(v10 + 16) + 168))(v11);
  [v9 setBackgroundColor_];

  [v9 setFrame_];
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v63 = a3;
  v13 = *&a3[OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_addCalendarButton];
  v14 = type metadata accessor for StockFeedEarningsViewModel(0);
  v15 = (a1 + v14[8]);
  v16 = v15[1];
  v64 = a1;
  v17 = *(a1 + v14[9]);
  sub_220564C34(v13, *v15, v16, v17);
  v18 = *__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  if (v16)
  {
    v61 = v14;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    if (v17)
    {
      v60 = 0x80000002208BF8C0;
      sub_220884CAC();

      sub_2204A5DF0(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_220899920;
      v22 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v23 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
      v62 = v22;
      v24 = sub_220891F2C();
      v25 = MEMORY[0x277D740C0];
      *(inited + 40) = v24;
      v26 = *v25;
      *(inited + 64) = v23;
      *(inited + 72) = v26;
      v27 = v18[5];
      v28 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v27);
      v29 = *(v28 + 16);
      v30 = *(v29 + 128);
      v31 = v26;
      v32 = v30(v27, v29);
    }

    else
    {
      v60 = 0x80000002208C8930;
      sub_220884CAC();

      sub_2204A5DF0(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_220899920;
      v35 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v36 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
      v62 = v35;
      v37 = sub_220891F2C();
      v38 = MEMORY[0x277D740C0];
      *(inited + 40) = v37;
      v39 = *v38;
      *(inited + 64) = v36;
      *(inited + 72) = v39;
      v40 = v18[5];
      v41 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v40);
      v42 = *(v41 + 16);
      v43 = *(v42 + 128);
      v44 = v39;
      v32 = v43(v40, v42);
    }

    v45 = v32;
    *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
    *(inited + 80) = v45;
    sub_2204A5EAC(inited);
    swift_setDeallocating();
    sub_2204A5D84(0);
    swift_arrayDestroy();
    v46 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v47 = sub_22089132C();

    type metadata accessor for Key(0);
    sub_2206F0A44(&qword_28127E6A8, 255, type metadata accessor for Key, &unk_220899024);
    v48 = sub_22089125C();

    v34 = &off_27844B000;
    v49 = [v46 initWithString:v47 attributes:{v48, v60}];

    [v13 setAttributedTitle:v49 forState:0];
    v14 = v61;
  }

  else
  {
    v33 = sub_220564920(v17);
    [v13 setAttributedTitle:v33 forState:0];

    v62 = *MEMORY[0x277D740A8];
    v34 = &off_27844B000;
  }

  [v13 setFrame_];
  [v13 setHidden_];
  v50 = *&v63[OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_earningsLabel];
  [v50 setLineBreakMode_];
  [v50 setNumberOfLines_];
  sub_2204A5DF0(0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_220899360;
  *(v51 + 32) = v62;
  v52 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v53 = v62;
  v54 = sub_220891F2C();
  *(v51 + 64) = v52;
  *(v51 + 40) = v54;
  sub_2204A5EAC(v51);
  swift_setDeallocating();
  sub_2205613E0(v51 + 32);
  v55 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v56 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2206F0A44(&qword_28127E6A8, 255, type metadata accessor for Key, &unk_220899024);
  v57 = sub_22089125C();

  v58 = [v55 v34[455]];

  [v50 setAttributedText_];
  return [v50 setFrame_];
}

uint64_t sub_2206F09EC(uint64_t a1, uint64_t a2)
{
  result = sub_2206F0A44(&qword_281286080, a2, type metadata accessor for StockFeedEarningsViewRenderer, &unk_2208AC8B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2206F0A44(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2206F0A8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for WebViewControllerFactory();
  result = sub_2208884CC();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_2834193A8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2206F0B00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC(0);
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    sub_22046DA2C(a1, v9);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281298738, MEMORY[0x277D6CD90], 1);
    result = sub_2208884DC();
    if (v8[3])
    {
      v4 = type metadata accessor for WebViewControllerFactory();
      v5 = objc_allocWithZone(v4);
      *&v5[OBJC_IVAR____TtC8StocksUI24WebViewControllerFactory_navigator] = v3;
      sub_22046DA2C(v9, &v5[OBJC_IVAR____TtC8StocksUI24WebViewControllerFactory_resolver]);
      sub_22046DA2C(v8, &v5[OBJC_IVAR____TtC8StocksUI24WebViewControllerFactory_sceneStateManager]);
      v7.receiver = v5;
      v7.super_class = v4;
      v6 = objc_msgSendSuper2(&v7, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v9);
      __swift_destroy_boxed_opaque_existential_1(v8);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2206F0C3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299118, MEMORY[0x277D69768], 0);
  result = sub_2208884DC();
  if (v5)
  {
    v4 = type metadata accessor for StockFeedEarningsViewModelFactory();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    a2[3] = v4;
    a2[4] = &off_283422A00;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2206F0CE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280, MEMORY[0x277D69550], 1);
  result = sub_2208884DC();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    sub_220448C28(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_22088B49C();
    swift_allocObject();
    v6 = sub_22088B47C();
    v7 = type metadata accessor for WatchlistCreationAlertFactory();
    v8 = swift_allocObject();
    *(v8 + 56) = v5;
    result = sub_220457328(&v10, v8 + 16);
    *(v8 + 64) = v6;
    a2[3] = v7;
    a2[4] = &off_283416078;
    *a2 = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2206F1048(uint64_t a1)
{
  if (!qword_281298700)
  {
    sub_22088685C();
    v1 = sub_220888D1C();
    if (!v2)
    {
      atomic_store(v1, &qword_281298700);
    }
  }
}

uint64_t sub_2206F1140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_2205297F0(0, qword_28128DE68, type metadata accessor for ForYouFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  sub_2205297F0(0, qword_281292568, type metadata accessor for ForYouFeedConfig);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - v10;
  sub_2206F1AAC(0);
  v13 = v12;
  v18 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2206F1B08();
  sub_220892A4C();
  if (!v2)
  {
    type metadata accessor for ForYouFeedConfig(0);
    v21 = 0;
    sub_2206F1B5C(&qword_2812925B0, type metadata accessor for ForYouFeedConfig, &unk_2208BA63C);
    sub_22089271C();
    type metadata accessor for ForYouFeedKnobsConfig(0);
    v20 = 1;
    sub_2206F1B5C(&qword_28128DEA8, type metadata accessor for ForYouFeedKnobsConfig, &unk_2208B7E58);
    sub_22089271C();
    sub_220529914(v11, v7, v19);
    (*(v18 + 8))(v16, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2206F1408(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6565467961646F74;
  }

  if (v2)
  {
    v4 = 0xEF6769666E6F4364;
  }

  else
  {
    v4 = 0x80000002208BEC50;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6565467961646F74;
  }

  if (*a2)
  {
    v6 = 0x80000002208BEC50;
  }

  else
  {
    v6 = 0xEF6769666E6F4364;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_2206F14C0()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_2206F1554(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_2206F15D4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

void sub_2206F1664(char *a2@<X8>)
{
  v3 = sub_22089270C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2206F16C4(unint64_t *a1@<X8>)
{
  v2 = 0x80000002208BEC50;
  v3 = 0x6565467961646F74;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEF6769666E6F4364;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2206F1714()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6565467961646F74;
  }
}

void sub_2206F1760(char *a3@<X8>)
{
  v4 = sub_22089270C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_2206F17C4(uint64_t a1)
{
  v2 = sub_2206F1B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2206F1800(uint64_t a1)
{
  v2 = sub_2206F1B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2206F1888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2205297F0(0, qword_28128DE68, type metadata accessor for ForYouFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  sub_2205297F0(0, qword_281292568, type metadata accessor for ForYouFeedConfig);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - v13;
  sub_220520A18(a1, &v18 - v13, type metadata accessor for ForYouFeedConfig);
  v15 = type metadata accessor for ForYouFeedConfig(0);
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_220520A18(v3 + *(a2 + 20), v10, type metadata accessor for ForYouFeedKnobsConfig);
  v16 = type metadata accessor for ForYouFeedKnobsConfig(0);
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  return sub_220529914(v14, v10, a3);
}

uint64_t sub_2206F1A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2205297F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2206F1AAC(uint64_t a1)
{
  if (!qword_28127E230)
  {
    sub_2206F1B08();
    v1 = sub_2208927BC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E230);
    }
  }
}

unint64_t sub_2206F1B08()
{
  result = qword_28128BA20;
  if (!qword_28128BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128BA20);
  }

  return result;
}

uint64_t sub_2206F1B5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2206F1BB8()
{
  result = qword_27CF58E40;
  if (!qword_27CF58E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58E40);
  }

  return result;
}

unint64_t sub_2206F1C10()
{
  result = qword_28128BA10;
  if (!qword_28128BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128BA10);
  }

  return result;
}

unint64_t sub_2206F1C68()
{
  result = qword_28128BA18;
  if (!qword_28128BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128BA18);
  }

  return result;
}

uint64_t type metadata accessor for TickerCardContainerController(uint64_t a1)
{
  result = qword_281285D58;
  if (!qword_281285D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2206F1D88(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    sub_22088CC6C();
    return a2;
  }

  return result;
}

void sub_2206F1E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22088CC6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v45 - v14;
  sub_22088C83C();
  v16 = sub_22088C84C();
  v16(a1, a2, a3);
  v17 = sub_22088C82C();
  v21 = sub_2206F1D88(1uLL, v17);
  if ((v20 & 1) == 0)
  {
    goto LABEL_2;
  }

  v45 = v18;
  v46 = v3;
  v24 = v8;
  v25 = v11;
  v26 = v20;
  v27 = v19;
  sub_2208928DC();
  swift_unknownObjectRetain_n();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    swift_unknownObjectRelease();
    v28 = MEMORY[0x277D84F90];
  }

  v29 = *(v28 + 16);

  if (__OFSUB__(v26 >> 1, v27))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v29 != (v26 >> 1) - v27)
  {
LABEL_37:
    swift_unknownObjectRelease();
    v20 = v26;
    v19 = v27;
    v11 = v25;
    v8 = v24;
    v18 = v45;
    v3 = v46;
LABEL_2:
    sub_2206CE40C(v21, v18, v19, v20);
    v23 = v22;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v11 = v25;
  v8 = v24;
  v3 = v46;
  if (!v23)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_10:
  (*(v8 + 16))(v15, a3, v7);
  v30 = (*(v8 + 88))(v15, v7);
  v31 = *MEMORY[0x277D6E230];
  if (v30 == v31 || (v32 = *MEMORY[0x277D6E258], v30 == v32))
  {

    v33 = 1;
LABEL_13:
    sub_2206F2334(v33);
    return;
  }

  if (v30 == *MEMORY[0x277D6E260] || v30 == *MEMORY[0x277D6E250])
  {
    goto LABEL_20;
  }

  if (v30 != *MEMORY[0x277D6E268])
  {
    if (v30 != *MEMORY[0x277D6E248] && v30 != *MEMORY[0x277D6E240])
    {
      if (v30 != *MEMORY[0x277D6E238])
      {
        sub_22089267C();
        __break(1u);
        return;
      }

      goto LABEL_35;
    }

LABEL_20:
    v35 = [objc_opt_self() sharedApplication];
    v46 = [v35 applicationState];

    v36 = *(v8 + 104);
    v36(v11, v32, v7);
    v37 = sub_2206FA318(v11, v23);
    v38 = *(v8 + 8);
    v38(v11, v7);
    if (!v37)
    {
      v36(v11, v31, v7);
      v39 = sub_2206FA318(v11, v23);

      v38(v11, v7);
      if (!v39 && (([objc_opt_self() areAnimationsEnabled] & 1) != 0 || v46 == 2 || *(v3 + qword_281285D98) == 1))
      {
        goto LABEL_29;
      }

      return;
    }

LABEL_35:

    return;
  }

  v40 = *(v8 + 104);
  v40(v11, *MEMORY[0x277D6E258], v7);
  v41 = sub_2206FA318(v11, v23);
  v42 = *(v8 + 8);
  v42(v11, v7);
  if (v41)
  {
    goto LABEL_35;
  }

  v40(v11, v31, v7);
  v43 = sub_2206FA318(v11, v23);

  v42(v11, v7);
  if (!v43)
  {
LABEL_29:
    v33 = 0;
    goto LABEL_13;
  }
}

void sub_2206F2334(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + qword_281285D70) != (a1 & 1))
  {
    *(v1 + qword_281285D70) = v2;
    v3 = *(v1 + qword_281285D78);
    [v3 cancel];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v7[4] = sub_2206F4434;
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_2206BE9C4;
    v7[3] = &block_descriptor_32;
    v6 = _Block_copy(v7);

    [v3 addAnimation_];
    _Block_release(v6);
  }
}

void sub_2206F2460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22088CC6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088C9DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C83C();
  v16 = sub_22088C84C();
  v16(a1, a2, a3);
  v17 = sub_22088C82C();
  v21 = sub_2206F1D88(1uLL, v17);
  if ((v20 & 1) == 0)
  {
    goto LABEL_2;
  }

  v39 = v8;
  v40 = v3;
  v24 = v7;
  v25 = v20;
  v26 = v19;
  v38 = v18;
  sub_2208928DC();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x277D84F90];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(v25 >> 1, v26))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v28 != (v25 >> 1) - v26)
  {
LABEL_29:
    swift_unknownObjectRelease();
    v20 = v25;
    v19 = v26;
    v18 = v38;
    v8 = v39;
    v7 = v24;
LABEL_2:
    sub_2206CE40C(v21, v18, v19, v20);
    v23 = v22;
    goto LABEL_9;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v7 = v24;
  v8 = v39;
  if (v23)
  {
    goto LABEL_10;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  (*(v12 + 16))(v15, a3, v11);
  v29 = (*(v12 + 88))(v15, v11);
  if (v29 == *MEMORY[0x277D6E098] || v29 == *MEMORY[0x277D6E0B0])
  {

    v31 = 1;
    goto LABEL_16;
  }

  if (v29 != *MEMORY[0x277D6E0B8] && v29 != *MEMORY[0x277D6E0A8])
  {
    if (v29 != *MEMORY[0x277D6E0A0])
    {
      sub_22089267C();
      __break(1u);
      return;
    }

    goto LABEL_26;
  }

  v33 = *(v8 + 104);
  v34 = v41;
  v33(v41, *MEMORY[0x277D6E258], v7);
  v35 = sub_2206FA318(v34, v23);
  v36 = *(v8 + 8);
  v36(v34, v7);
  if (!v35)
  {
    v33(v34, *MEMORY[0x277D6E230], v7);
    v37 = sub_2206FA318(v34, v23);

    v36(v34, v7);
    if (v37)
    {
      return;
    }

    v31 = 0;
LABEL_16:
    sub_2206F2334(v31);
    return;
  }

LABEL_26:
}

void sub_2206F2870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v4 = *&v2[qword_281285D88];
  [v4 setAlpha_];
  v5 = [v3 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_220888CCC();

    v7 = [v3 traitCollection];
    sub_2206F2B3C(v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_2206F2994(void **a1, uint64_t a2)
{
  v2 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong addChildViewController_];

  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 setAlpha_];

  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = [v6 view];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = [v2 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = swift_unknownObjectUnownedLoadStrong();
  v11 = *&v10[qword_281285D88];

  [v7 insertSubview:v9 belowSubview:v11];
  v12 = swift_unknownObjectUnownedLoadStrong();
  [v2 didMoveToParentViewController_];

  v13 = swift_unknownObjectUnownedLoadStrong();
  v14 = [v13 view];

  if (!v14)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v14 setNeedsLayout];
}

id sub_2206F2B3C(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[qword_281285D68];
  swift_beginAccess();
  sub_22046DA2C(v4, v23);
  v5 = v24;
  v6 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v21 = v5;
  v22 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v20);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_220457328(&v20, v4);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v9 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
  v10 = *&v2[qword_281285D88];
  v12 = *(*v9 + 40);
  v11 = *(*v9 + 48);
  __swift_project_boxed_opaque_existential_1((*v9 + 16), v12);
  v13 = (*(*(v11 + 16) + 72))(v12);
  [v10 setBackgroundColor_];

  sub_22046DA2C(v4, v23);
  v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
  result = [v2 view];
  if (result)
  {
    v16 = result;
    v17 = *v14;
    v19 = *(*v14 + 40);
    v18 = *(*v14 + 48);
    __swift_project_boxed_opaque_existential_1((v17 + 16), v19);
    (*(*(v18 + 16) + 24))(&v20, v19);
    [v16 setAccessibilityIgnoresInvertColors_];

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2206F2D38(void *a1)
{
  v2 = a1;
  sub_2206F2870(v2, v1);
}

void sub_2206F2D80(char a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_22088D67C();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x28223BE20](v6, v8).n128_u64[0];
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v3;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_viewWillAppear_, a1 & 1, v9);
  sub_220888C9C();
  v12 = v17;
  if (v17)
  {
    v13 = OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling;
    if (*(v3 + qword_281285D70))
    {
      v17[OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling] = 1;
      sub_22088C71C();
      v14 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = v12[v13];
      sub_2207A7D00();

      sub_22088C7FC();
      (*(v7 + 104))(v11, *MEMORY[0x277D6E798], v6);
      sub_22088D66C();

      (*(v7 + 8))(v11, v6);
    }

    else
    {
      v17[OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling] = 0;
      sub_22088C71C();
      v15 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = v12[v13];
      sub_2207A7D00();
    }
  }
}

void sub_2206F2FE4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2206F2D80(a3, v4);
}

void sub_2206F3038(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_2206F3264(v3, &selRef_viewDidAppear_);
}

void sub_2206F3094(char a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_22088D67C();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x28223BE20](v6, v8).n128_u64[0];
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v3;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_viewWillDisappear_, a1 & 1, v9);
  sub_220888C9C();
  v12 = v14;
  if (v14)
  {
    if (*(v3 + qword_281285D70))
    {
      sub_22088C7FC();
      (*(v7 + 104))(v11, *MEMORY[0x277D6E790], v6);
      sub_22088D66C();

      (*(v7 + 8))(v11, v6);
    }

    else
    {
    }
  }
}

void sub_2206F3210(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2206F3094(a3, v4);
}

void sub_2206F3264(char a1, SEL *a2)
{
  v4 = v2;
  v7.receiver = v4;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  sub_220888C9C();
  if (v6)
  {
    if (*(v4 + qword_281285D70))
    {
      sub_22088C7FC();
      sub_22088D65C();
    }
  }
}

void sub_2206F3304(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2206F3264(a3, &selRef_viewDidDisappear_);
}

void sub_2206F3360(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42.receiver = v2;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, sel_viewDidLayoutSubviews);
  sub_220888C9C();
  if (!v41)
  {
    return;
  }

  v4 = *&v2[qword_281285D88];
  v5 = [v3 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v43.origin.x = v8;
  v43.origin.y = v10;
  v43.size.width = v12;
  v43.size.height = v14;
  Width = CGRectGetWidth(v43);
  v16 = [v3 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  [v16 safeAreaInsets];
  v19 = v18;

  [v4 setFrame_];
  sub_22088C71C();
  v20 = sub_22088BFCC();

  [v20 contentSize];
  v22 = v21;

  v23 = [v41 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v3 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  [v25 safeAreaInsets];
  v28 = v27;

  v29 = [v3 view];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v30 = v29;
  [v29 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v44.origin.x = v32;
  v44.origin.y = v34;
  v44.size.width = v36;
  v44.size.height = v38;
  v39 = CGRectGetWidth(v44);
  if (v22 <= 0.0)
  {
    sub_220891A7C();
    v22 = v40 + 56.0;
  }

  [v24 setFrame_];
}

void sub_2206F35D8(void *a1)
{
  v2 = a1;
  sub_2206F3360(v2, v1);
}

void sub_2206F3620(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, v4);
  v6 = [v5 traitCollection];
  sub_2206F2B3C(v6);
}

void sub_2206F36B0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22088BFFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v42 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v42 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = v42 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = v42 - v23;
  v25 = sub_22088C00C();
  *&v27 = MEMORY[0x28223BE20](v25 - 8, v26).n128_u64[0];
  v29 = v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45.receiver = v2;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, sel_viewSafeAreaInsetsDidChange, v27);
  v30 = [v2 navigationController];
  if (v30)
  {
    v31 = v30;
    if (([v30 isToolbarHidden] & 1) == 0)
    {
      v42[0] = v16;
      v43 = v8;
      v44 = v29;
      *v24 = 0;
      v24[8] = 1;
      v32 = *MEMORY[0x277D6DC90];
      v33 = *(v5 + 104);
      v33(v24, v32, v4);
      *v20 = 0x404C000000000000;
      v20[8] = 1;
      v42[1] = v20;
      v34 = v4;
      v33(v20, v32, v4);
      v35 = [v2 view];
      if (!v35)
      {
        __break(1u);
        return;
      }

      v36 = v35;
      [v35 safeAreaInsets];
      v38 = v37;

      v39 = v42[0];
      *v42[0] = v38 + 88.0;
      v39[8] = 0;
      v40 = *MEMORY[0x277D6DCA0];
      v33(v39, v40, v4);
      *v12 = 0x3FD999999999999ALL;
      v33(v12, *MEMORY[0x277D6DC98], v4);
      v41 = v43;
      *v43 = 0;
      *(v41 + 8) = 0;
      v33(v41, v40, v34);
      sub_22088BFEC();
      sub_22088C81C();
    }
  }
}

void sub_2206F39E4(void *a1)
{
  v2 = a1;
  sub_2206F36B0(v2, v1);
}

uint64_t sub_2206F3A5C()
{

  sub_22054B9F8(v0 + qword_281285D80);

  v1 = (v0 + qword_281285D68);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_2206F3ACC(uint64_t a1)
{

  sub_22054B9F8(a1 + qword_281285D80);

  v2 = (a1 + qword_281285D68);

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_2206F3B50(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_281285D80 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_2206F3BAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_22088D67C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v41 = a1;
    v42 = a2;
    sub_220888CBC();
    v14 = v43;
    v15 = [objc_opt_self() areAnimationsEnabled];
    if (a4)
    {
      v16 = OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling;
      v14[OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling] = 1;
      sub_22088C71C();
      v17 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = v14[v16];
      sub_2207A7D00();

      v18 = MEMORY[0x277D6E798];
    }

    else
    {
      v18 = MEMORY[0x277D6E790];
    }

    v19 = v13;
    sub_22088C7FC();

    (*(v8 + 104))(v11, *v18, v7);
    sub_22088D66C();

    (*(v8 + 8))(v11, v7);
    v20 = swift_unknownObjectWeakLoadStrong();
    v21 = a4 & 1;
    if (!v20 || (v22 = v20, v23 = v19, v24 = sub_2206BEE40(a4 & 1, v22), swift_unknownObjectRelease(), v23, !v24))
    {
      type metadata accessor for TickerCardContainerControllerAnimationCoordinator();
      v24 = swift_allocObject();
      *(v24 + 16) = MEMORY[0x277D84F98];
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = v14;
    *(v25 + 32) = v19;
    v26 = swift_allocObject();
    *(v26 + 16) = v21;
    *(v26 + 24) = v14;
    *(v26 + 32) = v19;
    type metadata accessor for TickerAnimation();
    v27 = swift_allocObject();
    v27[2] = sub_2206F4528;
    v27[3] = v25;
    v27[4] = sub_2206F4534;
    v27[5] = v26;
    MEMORY[0x28223BE20](v27, v28);
    *(&v41 - 2) = v24;
    *(&v41 - 8) = v15;
    v29 = v19;
    v30 = v14;
    v31 = v29;
    v32 = v30;
    sub_220888FBC();
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    *(v33 + 24) = v15;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_2206F4540;
    *(v34 + 24) = v33;

    v35 = sub_220888D9C();
    sub_220888E3C();

    v36 = swift_allocObject();
    *(v36 + 16) = v24;
    *(v36 + 24) = v15;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_2206BEDD8;
    *(v37 + 24) = v36;

    v38 = sub_220888D9C();
    sub_220888E3C();

    v39 = swift_allocObject();
    *(v39 + 16) = v41;
    *(v39 + 24) = v42;

    v40 = sub_220888D9C();
    sub_220888EDC();
  }
}

id sub_2206F40E4(char a1, id a2, uint64_t a3)
{
  result = [a2 view];
  v6 = result;
  if (a1)
  {
    v7 = 1.0;
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = 0.0;
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  [result setAlpha_];

  v8 = *(a3 + qword_281285D88);

  return [v8 setAlpha_];
}

void sub_2206F4190(int a1, char a2, id a3, uint64_t a4)
{
  v7 = [a3 view];
  v8 = v7;
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      [v7 setAlpha_];

      [*(a4 + qword_281285D88) setAlpha_];
      v9 = OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling;
      *(a3 + OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling) = 0;
      sub_22088C71C();
      v10 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = *(a3 + v9);
      sub_2207A7D00();

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v7 setAlpha_];

  [*(a4 + qword_281285D88) setAlpha_];
LABEL_6:
  sub_22088C7FC();
  sub_22088D65C();
}

uint64_t sub_2206F42F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x28223BE20](a1, a2);
  }

  sub_22046D934();
  swift_allocObject();
  return sub_220888F2C();
}

void sub_2206F43C4(uint64_t a1, void *a2)
{
  v4 = [*v2 traitCollection];
  sub_2206F2B3C(v4);

  if ([a2 horizontalSizeClass] == 2)
  {
    sub_2206F2334(0);
  }
}

void sub_2206F4440()
{
  *(v0 + qword_281285D80 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_281285D70) = 0;
  v1 = qword_281285D78;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D355A8]) init];
  v2 = qword_281285D88;
  *(v0 + v2) = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
  *(v0 + qword_281285D98) = 0;
  sub_22089267C();
  __break(1u);
}

uint64_t static RadarComponent.stocks.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281297ED0 != -1)
  {
    swift_once();
  }

  v2 = sub_22088AFDC();
  v3 = __swift_project_value_buffer(v2, qword_281297ED8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_2206F4624(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIEdgeInsets(319);
    if (v2 <= 0x3F)
    {
      sub_22088DA1C();
      if (v3 <= 0x3F)
      {
        sub_220496148();
        if (v4 <= 0x3F)
        {
          type metadata accessor for UIContentSizeCategory(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2206F470C(void *a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D3>, double a5@<D5>)
{
  v10 = sub_22089222C();
  if (!v10)
  {
    __break(1u);
    goto LABEL_30;
  }

  v11 = v10;
  v12 = sub_2208920CC();
  if (!v12)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v11 imageWithConfiguration_];

  [v14 size];
  v16 = v15;

  sub_22089212C();
  v18 = v17;
  sub_2207D39BC(a1);
  v22 = v21;
  v23 = v19;
  v62 = v24;
  v63 = v18;
  if (v19 < a4)
  {
    v25 = a4;
  }

  else
  {
    v25 = v19;
  }

  v58 = v20;
  if (v20 < a5)
  {
    v26 = a5;
  }

  else
  {
    v26 = v20;
  }

  v61 = v16;
  v27 = a3 - (v26 + v16 + v18 + v25);
  v28 = *(v5 + *(type metadata accessor for ButtonLayoutCalculator(0) + 20));
  sub_220891D9C();
  [v28 boundingRectWithSize:33 options:0 context:{v27, v29}];
  v59 = v31;
  v60 = v30;
  v33 = v32;
  v35 = v34;
  [a1 displayScale];
  v37 = v36;
  if ([v28 su_containsExcessiveLineHeightCharacter])
  {
    [a1 displayScale];
    [v28 su_languageAwareOutsetsAtScale_];
    v39 = -v38;
    v41 = -v40;
    v57 = v33;
    v42 = v35;
    v44 = -v43;
    v46 = -v45;
    v47 = [a1 layoutDirection];
    if (v47 == 1)
    {
      v48 = v41;
    }

    else
    {
      v48 = v46;
    }

    if (v47 == 1)
    {
      v49 = v46;
    }

    else
    {
      v49 = v41;
    }

    v51 = v62;
    v50 = v63;
    if (v63 <= v48)
    {
      v50 = v48;
    }

    if (v23 <= v49)
    {
      v23 = v49;
    }

    if (v22 <= v39)
    {
      v22 = v39;
    }

    if (v62 <= v44)
    {
      v51 = v44;
    }

    v35 = v42;
    v33 = v57;
    v62 = v51;
    v63 = v50;
  }

  v52 = ceil(v35 * v37) / v37;
  v53 = ceil(v33 * v37) / v37;
  v65.origin.x = v60;
  v65.origin.y = v59;
  v65.size.width = v53;
  v65.size.height = v52;
  v54 = v58 + v61 + v63 + v23 + CGRectGetWidth(v65);
  if (v54 >= a3)
  {
    v55 = a3;
  }

  else
  {
    v55 = v54;
  }

  v66.origin.x = v60;
  v66.origin.y = v59;
  v66.size.width = v53;
  v66.size.height = v52;
  Height = CGRectGetHeight(v66);
  *a2 = v55;
  a2[1] = v62 + v22 + Height;
  a2[2] = v22;
  a2[3] = v23;
  a2[4] = v62;
  a2[5] = v58;
}

double sub_2206F4994@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v35 = a1;
  *&v36 = a2;
  v38 = a4;
  *&v37 = type metadata accessor for ButtonLayoutCalculator(0) - 8;
  MEMORY[0x28223BE20](v37, v6);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22089226C();
  v39 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + 48);
  v11 = v32;
  v12 = v4[5];
  v13 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
  v14 = *(v13 + 8);
  v15 = *(v14 + 8);
  v43[3] = v12;
  v43[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v43);
  v15(v11, v12, v14);
  v16 = (*(v13 + 24))(*(a3 + 56), 0, v12, v13);
  v17 = *(v13 + 40);
  v18 = v10;
  v31 = v10;
  v19 = v35;
  v20 = v36;
  v17(v35, v36, v16, v12, v13);
  v21 = v34;
  v22 = v18;
  v23 = v33;
  (*(v39 + 16))(v34, v22, v33);
  v24 = (*(v13 + 48))(v19, v20, v16, v12, v13);
  *(v21 + *(v37 + 28)) = v24;
  sub_2206F470C(v32, v40, *a3, *(a3 + 24), *(a3 + 40));
  v25 = v41;
  v26 = v42;
  v36 = v40[1];
  v37 = v40[0];
  sub_2206F4C94(v21);
  (*(v39 + 8))(v31, v23);
  __swift_destroy_boxed_opaque_existential_1(v43);
  v27 = v38;
  *v38 = 0;
  v27[1] = 0;
  v29 = v36;
  result = *&v37;
  *(v27 + 1) = v37;
  *(v27 + 2) = v29;
  v27[6] = v25;
  v27[7] = v26;
  return result;
}

uint64_t type metadata accessor for ButtonLayoutCalculator(uint64_t a1)
{
  result = qword_28128CF10;
  if (!qword_28128CF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2206F4C94(uint64_t a1)
{
  v2 = type metadata accessor for ButtonLayoutCalculator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2206F4D18(uint64_t a1)
{
  result = sub_22089226C();
  if (v2 <= 0x3F)
  {
    result = sub_2206F4D9C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2206F4D9C()
{
  result = qword_28127E7B0;
  if (!qword_28127E7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E7B0);
  }

  return result;
}

void sub_2206F4DE8(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView];
  if (v3)
  {
    v4 = v3;
    [v1 addSubview_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3] setHidden_];

    if (!a1)
    {
      return;
    }
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3] setHidden_];
    if (!a1)
    {
      return;
    }
  }

  [a1 removeFromSuperview];
}

char *sub_2206F4F3C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = MEMORY[0x277D84F78];
  sub_2206F61A0(0, &qword_281297138, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB0]);
  v76 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v74 - v16);
  v18 = OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView;
  *&v6[v18] = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v19 = OBJC_IVAR____TtC8StocksUI11WelcomeView_footer;
  *&v6[v19] = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithFrame_];
  v20 = OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup;
  *&v6[v20] = [objc_allocWithZone(type metadata accessor for WelcomeView.TitleGroup()) initWithFrame_];
  v21 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1;
  v22 = type metadata accessor for WelcomeView.BulletView();
  *&v6[v21] = [objc_allocWithZone(v22) initWithFrame_];
  v23 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2;
  *&v6[v23] = [objc_allocWithZone(v22) initWithFrame_];
  v24 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3;
  *&v6[v24] = [objc_allocWithZone(v22) initWithFrame_];
  v25 = OBJC_IVAR____TtC8StocksUI11WelcomeView_continueButton;
  *&v6[v25] = [objc_opt_self() largeButton];
  v26 = OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator;
  *&v6[v26] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithFrame_];
  v27 = OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyIcon;
  *&v6[v27] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v28 = OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyLink;
  type metadata accessor for TapDimmingTextView();
  *&v6[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v29 = OBJC_IVAR____TtC8StocksUI11WelcomeView_onPrivacyTap;
  sub_2206F61A0(0, &qword_281297130, v12 + 8, MEMORY[0x277D6EBB8]);
  *&v6[v29] = [objc_allocWithZone(v30) init];
  *&v6[OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView] = 0;
  v77.receiver = v6;
  v77.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v77, sel_initWithFrame_, a1, a2, a3, a4);
  v32 = OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView;
  v33 = *&v31[OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView];
  v34 = v31;
  [v34 addSubview_];
  v35 = OBJC_IVAR____TtC8StocksUI11WelcomeView_footer;
  [v34 addSubview_];
  [*&v31[v32] addSubview_];
  v36 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1;
  [*&v31[v32] addSubview_];
  v37 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2;
  [*&v31[v32] addSubview_];
  v38 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3;
  [*&v31[v32] addSubview_];
  v39 = *&v31[v32];
  v75 = OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator;
  [v39 addSubview_];
  v40 = [*&v34[v35] contentView];
  [v40 addSubview_];

  v41 = [*&v34[v35] contentView];
  [v41 addSubview_];

  v42 = [*&v34[v35] contentView];
  v43 = OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyLink;
  [v42 addSubview_];

  v44 = *&v34[OBJC_IVAR____TtC8StocksUI11WelcomeView_onPrivacyTap];
  v45 = *&v34[v43];
  *v17 = 1;
  v46 = v76;
  (*(v14 + 104))(v17, *MEMORY[0x277D6EBA8], v76);
  v47 = v44;
  v48 = v45;

  (*(v14 + 8))(v17, v46);
  sub_2206F61A0(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089E460;
  v50 = *&v34[v36];
  *(inited + 32) = v50;
  v51 = *&v34[v37];
  *(inited + 40) = v51;
  v52 = *&v34[v38];
  *(inited + 48) = v52;
  v53 = inited & 0xC000000000000001;
  v54 = v50;
  v55 = v51;
  v56 = v52;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_30;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  for (i = v54; ; i = MEMORY[0x223D8A700](0, inited))
  {
    v58 = i;
    v59 = *MEMORY[0x277D76558];
    v60 = *&i[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
    v61 = [v60 accessibilityTraits];
    v62 = v61;
    if (v61)
    {
      if ((v59 & ~v61) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v59)
      {
LABEL_8:
        v62 = v59 | v61;
        goto LABEL_10;
      }

      v62 = 0;
    }

LABEL_10:
    [v60 setAccessibilityTraits_];

    if (v53)
    {
      v63 = MEMORY[0x223D8A700](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_29;
      }

      v63 = *(inited + 40);
    }

    v64 = v63;
    v65 = *&v63[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
    v66 = [v65 accessibilityTraits];
    v67 = v66;
    if (v66)
    {
      if ((v59 & ~v66) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v59)
      {
LABEL_17:
        v67 = v59 | v66;
        goto LABEL_19;
      }

      v67 = 0;
    }

LABEL_19:
    [v65 setAccessibilityTraits_];

    if (v53)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v68 = *(inited + 48);
      goto LABEL_22;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v68 = MEMORY[0x223D8A700](2, inited);
LABEL_22:
  v69 = v68;
  v70 = *&v68[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
  v71 = [v70 accessibilityTraits];
  v72 = v71;
  if (v71)
  {
    if ((v59 & ~v71) == 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    v72 = v59 | v71;
  }

  else
  {
    if (v59)
    {
      goto LABEL_26;
    }

    v72 = 0;
  }

LABEL_28:
  [v70 setAccessibilityTraits_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [*&v34[v75] startAnimating];

  return v34;
}

char *sub_2206F56AC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_appIcon;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v10 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_welcomeLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for WelcomeView.TitleGroup();
  v11 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_appIcon];
  v13 = v11;
  [v13 addSubview_];
  [v13 addSubview_];
  [v13 setIsAccessibilityElement_];
  v14 = [v13 accessibilityTraits];
  v15 = v14;
  v16 = *MEMORY[0x277D76558];
  if (v14)
  {
    if ((v16 & ~v14) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v16)
  {
    v15 = 0;
    goto LABEL_7;
  }

  v15 = v16 | v14;
LABEL_7:
  [v13 setAccessibilityTraits_];

  return v13;
}

char *sub_2206F5A40(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v10 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for WelcomeView.BulletView();
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image];
  v14 = v12;
  [v14 addSubview_];
  [v14 addSubview_];
  [v14 addSubview_];

  return v14;
}

id sub_2206F5C04(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2206F5E18()
{
  v1 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v2 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

void sub_2206F5F0C()
{
  v1 = OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI11WelcomeView_footer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for WelcomeView.TitleGroup()) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1;
  v5 = type metadata accessor for WelcomeView.BulletView();
  *(v0 + v4) = [objc_allocWithZone(v5) initWithFrame_];
  v6 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2;
  *(v0 + v6) = [objc_allocWithZone(v5) initWithFrame_];
  v7 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3;
  *(v0 + v7) = [objc_allocWithZone(v5) initWithFrame_];
  v8 = OBJC_IVAR____TtC8StocksUI11WelcomeView_continueButton;
  *(v0 + v8) = [objc_opt_self() largeButton];
  v9 = OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyIcon;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyLink;
  type metadata accessor for TapDimmingTextView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI11WelcomeView_onPrivacyTap;
  sub_2206F61A0(0, &qword_281297130, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  *(v0 + v12) = [objc_allocWithZone(v13) init];
  *(v0 + OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView) = 0;
  sub_22089267C();
  __break(1u);
}

void sub_2206F61A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2206F61F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  sub_2206F7480(0, &qword_2812982E8, MEMORY[0x277D68EA8]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v65 = &v61 - v5;
  v66 = sub_220889F5C();
  v6 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v7);
  v67 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206F7480(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v61 - v11;
  v13 = sub_2208891BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v69 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206F7480(0, &qword_281299480, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v61 - v23;
  v25 = sub_22088980C();
  v26 = *(v25 - 8);
  *&v28 = MEMORY[0x28223BE20](v25, v27).n128_u64[0];
  v70 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [v2 articleID];
  v31 = sub_22089136C();
  v63 = v32;
  v64 = v31;

  v33 = [v2 sourceName];
  if (v33)
  {
    v34 = v33;
    v35 = sub_22089136C();
    v61 = v36;
    v62 = v35;
  }

  else
  {
    v61 = 0xE000000000000000;
    v62 = 0;
  }

  v37 = [v2 isPaid];
  v38 = MEMORY[0x277D687F0];
  if (!v37)
  {
    v38 = MEMORY[0x277D687E8];
  }

  (*(v26 + 104))(v70, *v38, v25);
  v39 = [v2 publishDate];
  if (v39)
  {
    v40 = v39;
    sub_22088511C();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = sub_22088516C();
  v43 = *(v42 - 8);
  (*(v43 + 56))(v20, v41, 1, v42);
  sub_2206F7164(v20, v24, &qword_281299480, MEMORY[0x277CC9578]);
  if ((*(v43 + 48))(v24, 1, v42) != 1)
  {
    sub_2208850FC();
    v46 = v45;
    result = (*(v43 + 8))(v24, v42);
    v48 = v46 * 1000.0;
    if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v44 = v69;
      if (v48 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v48 < 9.22337204e18)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_2206F71D0(v24, &qword_281299480, MEMORY[0x277CC9578]);
  v44 = v69;
LABEL_14:
  [v2 publisherArticleVersion];
  v49 = [v2 isPressRelease];
  v50 = MEMORY[0x277D68330];
  if (!v49)
  {
    v50 = MEMORY[0x277D68328];
  }

  (*(v14 + 104))(v44, *v50, v13);
  v51 = [v2 videoURL];
  if (v51)
  {
    sub_220884E4C();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = v67;
  v54 = sub_220884E9C();
  (*(*(v54 - 8) + 56))(v12, v52, 1, v54);
  sub_2206F71D0(v12, &qword_2812994E0, MEMORY[0x277CC9260]);
  if ([v2 respondsToSelector_])
  {
    v55 = [v2 role];
    v56 = MEMORY[0x277D68E98];
    v57 = MEMORY[0x277D68E90];
    if (v55 != 3)
    {
      v57 = MEMORY[0x277D68EA0];
    }

    if (v55 != 1)
    {
      v56 = v57;
    }

    v59 = v65;
    v58 = v66;
    (*(v6 + 104))(v65, *v56, v66);
    (*(v6 + 56))(v59, 0, 1, v58);
    (*(v6 + 32))(v53, v59, v58);
  }

  else
  {
    v60 = v66;
    (*(v6 + 56))(v65, 1, 1, v66);
    (*(v6 + 104))(v53, *MEMORY[0x277D68EA0], v60);
  }

  if ([v2 respondsToSelector_])
  {
    [v2 hasAudioTrack];
  }

  return sub_2208895CC();
}

void sub_2206F69A0(void *a1)
{
  v2 = v1;
  sub_2206F7480(0, &qword_2812982F0, MEMORY[0x277D68E88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = sub_220889F1C();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x28223BE20](v8, v10).n128_u64[0];
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v2 sourceChannel];
  if (v14)
  {
    v15 = [v14 identifier];
    swift_unknownObjectRelease();
    sub_22089136C();

    v16 = sub_22089132C();
  }

  else
  {
    v16 = 0;
  }

  v23 = [a1 purchaseLookUpEntryForTagID_];

  if (v23)
  {
    sub_22059B88C(v17);
    v18 = v23;
  }

  else
  {
    (*(v9 + 104))(v13, *MEMORY[0x277D68E38], v8);
    v19 = *MEMORY[0x277D68E78];
    v20 = sub_220889F4C();
    v21 = *(v20 - 8);
    (*(v21 + 104))(v7, v19, v20);
    (*(v21 + 56))(v7, 0, 1, v20);
    sub_220889BEC();
  }
}

uint64_t sub_2206F6C58()
{
  v1 = v0;
  sub_2206F7480(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v6, v7).n128_u64[0];
  v10 = &v18 - v9;
  v11 = [v1 sourceName];
  if (v11)
  {
    v12 = v11;
    sub_22089136C();
  }

  v13 = [v1 contentURL];
  if (v13)
  {
    v14 = v13;
    sub_220884E4C();

    v15 = sub_220884E9C();
    (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  }

  else
  {
    v15 = sub_220884E9C();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  }

  sub_2206F7164(v5, v10, &qword_2812994E0, MEMORY[0x277CC9260]);
  sub_220884E9C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_2206F71D0(v10, &qword_2812994E0, MEMORY[0x277CC9260]);
  }

  else
  {
    sub_220884E0C();
    (*(v16 + 8))(v10, v15);
  }

  return sub_22088992C();
}

uint64_t FCHeadlineProviding.referringArticleData2()()
{
  v1 = v0;
  sub_2206F7480(0, &qword_2812982E8, MEMORY[0x277D68EA8]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_220889F5C();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x28223BE20](v6, v8).n128_u64[0];
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 articleID];
  sub_22089136C();

  [v1 publisherArticleVersion];
  if ([v1 respondsToSelector_])
  {
    v13 = [v1 role];
    v14 = MEMORY[0x277D68E98];
    v15 = MEMORY[0x277D68E90];
    if (v13 != 3)
    {
      v15 = MEMORY[0x277D68EA0];
    }

    if (v13 != 1)
    {
      v14 = v15;
    }

    (*(v7 + 104))(v5, *v14, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v11, v5, v6);
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    (*(v7 + 104))(v11, *MEMORY[0x277D68EA0], v6);
  }

  return sub_220889AAC();
}

uint64_t sub_2206F7164(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2206F7480(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2206F71D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2206F7480(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2206F722C(uint64_t a1, __n128 a2)
{
  v3 = sub_22088A05C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - v10;
  v12 = MEMORY[0x277D690A0];
  sub_2206F7480(0, &qword_281298270, MEMORY[0x277D690A0]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v25 - v19;
  sub_2206F74D4(v2, &v25 - v19);
  v21 = sub_22088A15C();
  v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  v23 = MEMORY[0x277D68F48];
  if (v22 != 1)
  {
    v23 = MEMORY[0x277D68F50];
  }

  (*(v4 + 104))(v11, *v23, v3);
  (*(v4 + 16))(v7, v11, v3);
  sub_2206F762C(v20, v16);
  sub_22088A03C();
  (*(v4 + 8))(v11, v3);
  return sub_2206F71D0(v20, &qword_281298270, v12);
}

void sub_2206F7480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2206F74D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 storyType];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v9 = MEMORY[0x277D69088];
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_3;
      }

      v9 = MEMORY[0x277D69090];
    }
  }

  else
  {
    if (v3 != 2)
    {
LABEL_3:
      v4 = sub_22088A15C();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a2;
      v8 = 1;
      goto LABEL_10;
    }

    v9 = MEMORY[0x277D69098];
  }

  v10 = *v9;
  v11 = sub_22088A15C();
  v13 = *(v11 - 8);
  (*(v13 + 104))(a2, v10, v11);
  v5 = *(v13 + 56);
  v7 = a2;
  v8 = 0;
  v6 = v11;
LABEL_10:

  return v5(v7, v8, 1, v6);
}

uint64_t sub_2206F762C(uint64_t a1, uint64_t a2)
{
  sub_2206F7480(0, &qword_281298270, MEMORY[0x277D690A0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2206F76AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v213 = a2;
  v204 = sub_22088519C();
  v202 = *(v204 - 8);
  MEMORY[0x28223BE20](v204, v3);
  v200 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for PreBuyFlowRouteModel(0);
  MEMORY[0x28223BE20](v199, v5);
  v203 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206F9D50(0, &qword_281299060, MEMORY[0x277D69810]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v205 = &v184 - v9;
  v10 = type metadata accessor for WatchlistCreationRouteModel(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v201 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CampaignRouteModel(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v197 = (&v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22088CC6C();
  v208 = *(v16 - 8);
  v209 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v207 = &v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v195, v19);
  v196 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v198 = &v184 - v23;
  sub_2206F9D50(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v185 = &v184 - v26;
  sub_2206F9D50(0, &qword_281297598, MEMORY[0x277D6E658]);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v187 = &v184 - v29;
  v193 = sub_22089030C();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193, v30);
  v190 = &v184 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205603E4(0);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v191 = &v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_220884E9C();
  v206 = *(v210 - 8);
  MEMORY[0x28223BE20](v210, v35);
  v37 = &v184 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v184 = &v184 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v189 = &v184 - v43;
  MEMORY[0x28223BE20](v44, v45);
  v188 = &v184 - v46;
  v47 = sub_2208876BC();
  MEMORY[0x28223BE20](v47 - 8, v48);
  v194 = &v184 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206F9D50(0, &qword_281298AA8, MEMORY[0x277D30048]);
  MEMORY[0x28223BE20](v50 - 8, v51);
  v53 = &v184 - v52;
  v54 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v54, v55);
  v186 = &v184 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v184 - v59;
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v184 - v63;
  MEMORY[0x28223BE20](v65, v66);
  v68 = &v184 - v67;
  v69 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v69, v70);
  v72 = &v184 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055F760(0);
  v211 = a1;
  sub_22088E10C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2206A1D94(0);
      v108 = v207;
      v107 = v208;
      v109 = v209;
      (*(v208 + 32))(v207, &v72[*(v106 + 48)], v209);
      sub_220675F54(v108);
      (*(v107 + 8))(v108, v109);
      sub_2206F9F40(v72, type metadata accessor for ForYouSectionDescriptor);
      goto LABEL_65;
    case 2u:
      v95 = v198;
      sub_2206F9E54(v72, v198, type metadata accessor for StocksActivity.StockFeed);
      v96 = v212;
      v97 = sub_22067642C(v95, v211);
      if (v97)
      {
        v98 = v97;
        v99 = v196;
        sub_2206F9ED8(v95, v196, type metadata accessor for StocksActivity.StockFeed);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_220447264(0, &qword_2812952A0, type metadata accessor for StocksActivity.StockFeed.Series, &type metadata for StocksActivity.Options, " options ");
          v101 = *(v99 + *(v100 + 48));
          sub_2206F9F40(v99, type metadata accessor for StocksActivity.StockFeed.Series);
        }

        else
        {
          sub_220447264(0, &qword_281299050, MEMORY[0x277D69810], &type metadata for StocksActivity.Options, " options ");
          v101 = *(v99 + *(v154 + 48));
          v155 = sub_22088685C();
          (*(*(v155 - 8) + 8))(v99, v155);
        }

        if (v101)
        {
          [*(v96 + 56) setPreferredDisplayMode_];
        }

        [*(v96 + 56) showViewController:v98 sender:0];
      }

      sub_2206F9F40(v95, type metadata accessor for StocksActivity.StockFeed);
      goto LABEL_65;
    case 3u:
      sub_2206F9F40(v72, type metadata accessor for StocksActivity);
      v102 = MEMORY[0x277D6E358];
      goto LABEL_66;
    case 4u:
      sub_2206F9E54(v72, v68, type metadata accessor for StocksActivity.Article);
      sub_2206F9ED8(v68, v64, type metadata accessor for StocksActivity.Article);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2206F9F40(v64, type metadata accessor for StocksActivity.Article);
        v83 = sub_220887DEC();
        (*(*(v83 - 8) + 56))(v53, 1, 1, v83);
      }

      else
      {
        sub_2204481D8(0);
        v133 = *(v132 + 64);
        v134 = v194;
        sub_2206F9E54(v64, v194, MEMORY[0x277D2FB40]);
        sub_22088769C();
        sub_2206F9F40(v134, MEMORY[0x277D2FB40]);
        sub_2206F9DA4(&v64[v133], &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType);
      }

      v135 = sub_220887DEC();
      v136 = (*(*(v135 - 8) + 48))(v53, 1, v135);
      v137 = v212;
      if (v136 != 1)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v145 = v206;
        v146 = *(v206 + 32);
        if (EnumCaseMultiPayload != 1)
        {
          v160 = v188;
          v161 = v210;
          v146(v188, v53, v210);
          __swift_project_boxed_opaque_existential_1((v137 + 16), *(v137 + 40));
          sub_2204446D4(0, &unk_281297D60, MEMORY[0x277D6D840]);
          result = sub_2208884DC();
          if (!*(&v217 + 1))
          {
            goto LABEL_88;
          }

          sub_220457328(&v216, &v214);
          __swift_project_boxed_opaque_existential_1(&v214, *&v215[8]);
          sub_22088B62C();
          (*(v145 + 8))(v160, v161);
          sub_2206F9F40(v68, type metadata accessor for StocksActivity.Article);
          __swift_destroy_boxed_opaque_existential_1(&v214);
          goto LABEL_65;
        }

        v147 = v189;
        v148 = v210;
        v146(v189, v53, v210);
        __swift_project_boxed_opaque_existential_1((v137 + 16), *(v137 + 40));
        sub_2204446D4(0, qword_281286BC0, &protocol descriptor for WebViewControllerFactoryType);
        result = sub_2208884DC();
        if (!*(&v217 + 1))
        {
          goto LABEL_86;
        }

        sub_220457328(&v216, &v214);
        __swift_project_boxed_opaque_existential_1(&v214, *&v215[8]);
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        v149 = sub_220663D20(v147, &v216);
        sub_2206F9DA4(&v216, &qword_27CF56B50, &qword_27CF58420, &protocol descriptor for WebViewCoordinatorType);
        if (v149)
        {
          v150 = sub_22088E0EC();
          v150(v149);

          __swift_destroy_boxed_opaque_existential_1(&v214);
          [*(v137 + 56) showViewController:v149 sender:0];
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v214);
        }

        v166 = v213;
        (*(v145 + 8))(v147, v148);
        sub_2206F9F40(v68, type metadata accessor for StocksActivity.Article);
LABEL_74:
        v102 = MEMORY[0x277D6E348];
        goto LABEL_67;
      }

      v138 = v191;
      sub_2208903FC();
      v139 = v192;
      v140 = v193;
      if ((*(v192 + 48))(v138, 1, v193) != 1)
      {
        v157 = v190;
        (*(v139 + 32))(v190, v138, v140);
        __swift_project_boxed_opaque_existential_1((v137 + 16), *(v137 + 40));
        sub_2204446D4(0, &qword_281296770, MEMORY[0x277D34548]);
        result = sub_2208884DC();
        if (!*&v215[8])
        {
          goto LABEL_87;
        }

        sub_220457328(&v214, &v216);
        __swift_project_boxed_opaque_existential_1(&v216, *(&v217 + 1));
        *&v214 = sub_220890B4C();
        v215[24] = 0;

        v159 = sub_220825F70(v158, v211, &v214);
        sub_2206F9E00(&v214);
        if (v159)
        {
          [*(v137 + 56) showViewController:v159 sender:0];
        }

        else
        {
        }

        v166 = v213;
        (*(v139 + 8))(v157, v140);
        sub_2206F9F40(v68, type metadata accessor for StocksActivity.Article);
        __swift_destroy_boxed_opaque_existential_1(&v216);
        goto LABEL_74;
      }

      sub_22055E754(v211, v68);
      if (v141)
      {
        v142 = v141;
        sub_2206F9ED8(v68, v60, type metadata accessor for StocksActivity.Article);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_2206F9F40(v60, type metadata accessor for StocksActivity.Article);
          v143 = v186;
        }

        else
        {
          sub_2204481D8(0);
          v173 = *&v60[*(v172 + 48)];
          sub_2206F9DA4(&v60[*(v172 + 64)], &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType);
          sub_2206F9F40(v60, MEMORY[0x277D2FB40]);
          v143 = v186;
          if (v173)
          {
            [*(v137 + 56) setPreferredDisplayMode_];
          }
        }

        sub_2206F9ED8(v68, v143, type metadata accessor for StocksActivity.Article);
        v174 = swift_getEnumCaseMultiPayload();
        v175 = v187;
        if (v174 == 1)
        {
          sub_2206F9F40(v143, type metadata accessor for StocksActivity.Article);
          v176 = sub_22088D38C();
          (*(*(v176 - 8) + 56))(v175, 1, 1, v176);
        }

        else
        {
          sub_2204481D8(0);
          v178 = *(v177 + 64);
          v179 = v194;
          sub_2206F9E54(v143, v194, MEMORY[0x277D2FB40]);
          sub_22088765C();
          sub_2206F9F40(v179, MEMORY[0x277D2FB40]);
          sub_2206F9DA4(v143 + v178, &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType);
        }

        sub_22088C86C();

        sub_2206F9FE8(v175, &qword_281297598, MEMORY[0x277D6E658]);
        goto LABEL_82;
      }

      v169 = v185;
      sub_22055E09C(v68, v185);
      v170 = v206;
      v171 = v210;
      if ((*(v206 + 48))(v169, 1, v210) != 1)
      {
        v180 = v184;
        (*(v170 + 32))(v184, v169, v171);
        v181 = [objc_opt_self() sharedApplication];
        v182 = sub_220884E3C();
        sub_2205CE854(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_2206F9FA0(&qword_27CF57590, 255, type metadata accessor for OpenExternalURLOptionsKey, &unk_2208990A8);
        v183 = sub_22089125C();

        [v181 openURL:v182 options:v183 completionHandler:0];

        (*(v170 + 8))(v180, v171);
LABEL_82:
        sub_2206F9F40(v68, type metadata accessor for StocksActivity.Article);
        goto LABEL_65;
      }

      sub_2206F9F40(v68, type metadata accessor for StocksActivity.Article);
      v163 = &qword_2812994E0;
      v164 = MEMORY[0x277CC9260];
      v165 = v169;
LABEL_64:
      sub_2206F9FE8(v165, v163, v164);
LABEL_65:
      v102 = MEMORY[0x277D6E348];
LABEL_66:
      v166 = v213;
LABEL_67:
      v167 = *v102;
      v168 = sub_22088CD4C();
      return (*(*(v168 - 8) + 104))(v166, v167, v168);
    case 5u:
      sub_220447264(0, &qword_2812994D0, MEMORY[0x277CC9260], MEMORY[0x277D839B0], " openInBrowser ");
      v111 = v72[*(v110 + 48)];
      v112 = v206;
      v113 = v210;
      (*(v206 + 32))(v37, v72, v210);
      v114 = v212;
      v115 = sub_22061532C(v37, v111);
      if (v115)
      {
        v116 = v115;
        [*(v114 + 56) showViewController:v115 sender:0];
      }

      (*(v112 + 8))(v37, v113);
      goto LABEL_65;
    case 6u:
      v120 = *(v72 + 1);
      v214 = *v72;
      *v215 = v120;
      *&v215[9] = *(v72 + 25);
      v121 = v212;
      v122 = sub_220825F70(*&v215[9], v211, &v214);
      if (v122)
      {
        v123 = v122;
        [*(v121 + 56) presentViewController:v122 animated:1 completion:0];
      }

      sub_2206F9E00(&v214);
      goto LABEL_65;
    case 7u:
      v103 = v197;
      sub_2206F9E54(v72, v197, type metadata accessor for CampaignRouteModel);
      v104 = v212;
      v105 = sub_220745A98(v211, v103);
      [*(v104 + 56) showViewController:v105 sender:0];

      sub_2206F9F40(v103, type metadata accessor for CampaignRouteModel);
      goto LABEL_65;
    case 8u:
      v128 = *v72;
      *&v214 = *v72;
      v129 = v212;
      v130 = sub_220854308(v211, &v214);
      if (v130)
      {
        v131 = v130;
        [*(v129 + 56) showViewController:v130 sender:0];
        sub_22059A860(v128);
      }

      else
      {
        sub_22059A860(v128);
      }

      goto LABEL_65;
    case 9u:
      v90 = *v72;
      v89 = *(v72 + 1);
      v91 = v212;
      __swift_project_boxed_opaque_existential_1((v212 + 16), *(v212 + 40));
      sub_2204446D4(0, qword_28128EFD8, &protocol descriptor for OnboardingModuleType);
      result = sub_2208884DC();
      if (*(&v217 + 1))
      {
        sub_220457328(&v216, &v214);
        __swift_project_boxed_opaque_existential_1(&v214, *&v215[8]);
        v92 = sub_2206045A4(v90, v89);
        if (v92)
        {
          v93 = v92;
          v94 = sub_22088E0EC();
          v94(v93);

          __swift_destroy_boxed_opaque_existential_1(&v214);
          sub_22088CB0C();
          if (sub_22088CAFC())
          {
            sub_22058B000(v90, v89);
          }

          else
          {
            v156 = v93;
            sub_22088CABC();
            [*(v91 + 56) showViewController:v156 sender:0];
            sub_22058B000(v90, v89);
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v214);
          sub_22058B000(v90, v89);
        }

        goto LABEL_65;
      }

      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    case 0xAu:
      v124 = v201;
      sub_2206F9E54(v72, v201, type metadata accessor for WatchlistCreationRouteModel);
      v125 = v212;
      __swift_project_boxed_opaque_existential_1((v212 + 16), *(v212 + 40));
      sub_2204446D4(0, qword_281282C98, &protocol descriptor for WatchlistCreationAlertFactoryType);
      result = sub_2208884DC();
      if (!*&v215[8])
      {
        goto LABEL_84;
      }

      sub_220457328(&v214, &v216);
      __swift_project_boxed_opaque_existential_1(&v216, *(&v217 + 1));
      *&v214 = sub_2205F7F54(v124);
      v215[24] = 3;
      v127 = sub_220825F70(v126, v211, &v214);
      sub_2206F9E00(&v214);
      if (v127)
      {
        [*(v125 + 56) showViewController:v127 sender:0];
      }

      sub_2206F9F40(v124, type metadata accessor for WatchlistCreationRouteModel);
      __swift_destroy_boxed_opaque_existential_1(&v216);
      goto LABEL_65;
    case 0xBu:
      sub_220447880(0);
      v77 = *&v72[*(v76 + 48)];
      v78 = v205;
      sub_22057B318(v72, v205);
      v79 = *(v212 + 56);
      v80 = [v79 presentedViewController];
      if (!v80)
      {
        goto LABEL_62;
      }

      v81 = v80;
      v82 = [v80 popoverPresentationController];
      if (v82)
      {

        [v81 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {

LABEL_62:
        sub_2207786AC(v211, v78, v77);
        v81 = v162;
        [v79 showViewController:v162 sender:0];
      }

      v163 = &qword_281299060;
      v164 = MEMORY[0x277D69810];
      v165 = v78;
      goto LABEL_64;
    case 0xCu:
      v84 = v203;
      sub_2206F9E54(v72, v203, type metadata accessor for PreBuyFlowRouteModel);
      v85 = v212;
      v86 = *(v212 + 160);
      v211 = *(v212 + 168);
      __swift_project_boxed_opaque_existential_1((v212 + 136), v86);
      v87 = v200;
      sub_22088518C();
      sub_22088517C();
      (*(v202 + 8))(v87, v204);
      v88 = sub_22088A5AC();

      [*(v85 + 56) showViewController:v88 sender:0];

      sub_2206F9F40(v84, type metadata accessor for PreBuyFlowRouteModel);
      goto LABEL_65;
    case 0xDu:
      if (qword_27CF55B98 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v210, qword_27CF6D138);
      v117 = objc_allocWithZone(MEMORY[0x277CDB700]);
      v118 = sub_220884E3C();
      v119 = [v117 initWithURL_];

      [v119 setModalPresentationStyle_];
      [*(v212 + 56) presentViewController:v119 animated:1 completion:0];

      goto LABEL_65;
    default:
      if (*(v72 + 5))
      {
        __swift_project_boxed_opaque_existential_1((v212 + 16), *(v212 + 40));
        sub_2204446D4(0, &qword_281299280, MEMORY[0x277D69550]);
        result = sub_2208884DC();
        if (!*(&v217 + 1))
        {
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          return result;
        }

        sub_220457328(&v216, &v214);
        __swift_project_boxed_opaque_existential_1(&v214, *&v215[8]);
        sub_220885F2C();

        sub_22046DA2C(&v214, &v216);
        v74 = swift_allocObject();
        sub_220457328(&v216, v74 + 16);
        v75 = sub_220888D9C();
        sub_220888E4C();

        __swift_destroy_boxed_opaque_existential_1(&v214);
      }

      else
      {
      }

      v152 = v208;
      v151 = v209;
      v153 = v207;
      (*(v208 + 104))(v207, *MEMORY[0x277D6E250], v209);
      sub_220675F54(v153);
      (*(v152 + 8))(v153, v151);
      goto LABEL_65;
  }
}

uint64_t sub_2206F9268(uint64_t a1, void *a2, __n128 a3)
{
  sub_2206F9D50(0, &qword_281298FF0, MEMORY[0x277D698E0]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = sub_220886A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B7424(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2206F9FE8(v8, &qword_281298FF0, MEMORY[0x277D698E0]);
  }

  (*(v10 + 32))(v13, v8, v9);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220885F4C();
  sub_22088EB7C();

  return (*(v10 + 8))(v13, v9);
}

void *sub_2206F944C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220884E9C();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v53 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2208876BC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206F9D50(0, &qword_281298AA8, MEMORY[0x277D30048]);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v53 - v16;
  v18 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v53 - v24;
  v26 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055F760(0);
  v56 = a1;
  sub_22088E10C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2206A1D94(0);
      v38 = *(v37 + 48);
      v39 = sub_22088CC6C();
      (*(*(v39 - 8) + 8))(&v29[v38], v39);
      v30 = type metadata accessor for ForYouSectionDescriptor;
      goto LABEL_3;
    case 2u:
      sub_2206F9E54(v29, v6, type metadata accessor for StocksActivity.StockFeed);
      v36 = sub_22067642C(v6, v56);
      sub_2206F9F40(v6, type metadata accessor for StocksActivity.StockFeed);
      if (!v36)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    case 3u:
      sub_2206F9F40(v29, type metadata accessor for StocksActivity);
      goto LABEL_22;
    case 4u:
      sub_2206F9E54(v29, v25, type metadata accessor for StocksActivity.Article);
      sub_2206F9ED8(v25, v21, type metadata accessor for StocksActivity.Article);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2206F9F40(v21, type metadata accessor for StocksActivity.Article);
        v35 = sub_220887DEC();
        (*(*(v35 - 8) + 56))(v17, 1, 1, v35);
      }

      else
      {
        sub_2204481D8(0);
        v45 = *(v44 + 64);
        sub_2206F9E54(v21, v13, MEMORY[0x277D2FB40]);
        sub_22088769C();
        sub_2206F9F40(v13, MEMORY[0x277D2FB40]);
        sub_2206F9DA4(&v21[v45], &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType);
      }

      v46 = sub_220887DEC();
      if ((*(*(v46 - 8) + 48))(v17, 1, v46) != 1)
      {
        sub_2206F9F40(v25, type metadata accessor for StocksActivity.Article);
        v51 = *MEMORY[0x277D6DEF0];
        v52 = sub_22088C5CC();
        (*(*(v52 - 8) + 104))(v58, v51, v52);
        return sub_2206F9F40(v17, MEMORY[0x277D30048]);
      }

      sub_22055E754(v56, v25);
      v36 = v47;
      sub_2206F9F40(v25, type metadata accessor for StocksActivity.Article);
      if (!v36)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    case 5u:
      v41 = v53;
      v40 = v54;
      v42 = v55;
      (*(v54 + 32))(v53, v29, v55);
      __swift_project_boxed_opaque_existential_1((v57 + 16), *(v57 + 40));
      sub_2204446D4(0, qword_281286BC0, &protocol descriptor for WebViewControllerFactoryType);
      result = sub_2208884DC();
      if (*(&v60 + 1))
      {
        sub_220457328(&v59, v62);
        __swift_project_boxed_opaque_existential_1(v62, v62[3]);
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v36 = sub_220663D20(v41, &v59);
        sub_2206F9DA4(&v59, &qword_27CF56B50, &qword_27CF58420, &protocol descriptor for WebViewCoordinatorType);
        if (v36)
        {
          v43 = sub_22088E0EC();
          v43(v36);

          __swift_destroy_boxed_opaque_existential_1(v62);
          (*(v40 + 8))(v41, v42);
LABEL_19:
          v48 = v58;
          *v58 = v36;
          v49 = *MEMORY[0x277D6DF00];
          v50 = sub_22088C5CC();
          return (*(*(v50 - 8) + 104))(v48, v49, v50);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v62);
          (*(v40 + 8))(v41, v42);
LABEL_22:
          v31 = MEMORY[0x277D6DEF8];
LABEL_5:
          v32 = *v31;
          v33 = sub_22088C5CC();
          return (*(*(v33 - 8) + 104))(v58, v32, v33);
        }
      }

      else
      {
        __break(1u);
      }

      return result;
    case 0xBu:
      sub_220447880(0);

      sub_2206F9FE8(v29, &qword_281299060, MEMORY[0x277D69810]);
      goto LABEL_4;
    case 0xDu:
      goto LABEL_4;
    default:
      v30 = type metadata accessor for StocksActivity;
LABEL_3:
      sub_2206F9F40(v29, v30);
LABEL_4:
      v31 = MEMORY[0x277D6DEF0];
      goto LABEL_5;
  }
}

uint64_t sub_2206F9C10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2206F9C70()
{
  sub_2206F9C10();

  return swift_deallocClassInstance();
}

uint64_t sub_2206F9CA4(uint64_t a1, uint64_t a2)
{
  result = sub_2206F9FA0(&qword_28127F070, a2, type metadata accessor for Router, &unk_2208ACE5C);
  *(a1 + 8) = result;
  return result;
}

void sub_2206F9D50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2206F9DA4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_220448010(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2206F9E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206F9ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206F9F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206F9FA0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2206F9FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2206F9D50(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2206FA044(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2206FA08C(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

BOOL sub_2206FA180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_2206FA874(a4, a5, a6);
  }

  while ((sub_2208912FC() & 1) == 0);
  return v10 != v11;
}

uint64_t OfflineAlertable.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t OfflineAlertable.neutralButton.getter()
{
  v0 = sub_2208902EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208902FC();
  (*(v1 + 104))(v4, *MEMORY[0x277D333B0], v0);
  v6 = sub_2206FA180(v4, v5, MEMORY[0x277D333B8], &qword_27CF58EE8, MEMORY[0x277D333B8], MEMORY[0x277D333C0]);

  (*(v1 + 8))(v4, v0);
  result = 0;
  if (v6)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_220884CAC();

    return v10;
  }

  return result;
}

uint64_t sub_2206FA6BC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t type metadata accessor for OfflineAlertable(uint64_t a1)
{
  result = qword_27CF58ED0;
  if (!qword_27CF58ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2206FA808(uint64_t a1)
{
  result = sub_22089030C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2206FA874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2206FA8BC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_220886DEC();
  }

  return result;
}

uint64_t sub_2206FA928()
{
  sub_22088973C();
  sub_22048CFC4(&qword_27CF58EF8, 255, MEMORY[0x277D68740], MEMORY[0x277D68738]);
  memset(v1, 0, sizeof(v1));
  sub_220886F3C();
  return sub_22056D130(v1);
}

void *IdentificationResetManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t IdentificationResetManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_2206FAABC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();
  v4 = v3;

  qword_2812B6A48 = v2;
  unk_2812B6A50 = v4;
}

double sub_2206FAB88(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_2206C1FA0(sub_2204CB288, v4);

  return result;
}

void sub_2206FACA8(void *a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v52 = a3;
  v51 = a2;
  v4 = sub_22088F11C();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v56 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22088F14C();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v7);
  v53 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22088F17C();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v54, v11);
  v12 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v60 = v48 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v59 = v48 - v18;
  v19 = sub_22088CC6C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22089132C();
  v25 = [a1 objectForKey_];

  if (v25)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  aBlock = v67;
  v64 = v68;
  if (*(&v68 + 1))
  {
    v50 = v20;
    sub_22044D56C(0, &qword_27CF56C10, 0x277D75A50);
    if (swift_dynamicCast())
    {
      v26 = v61;
      v27 = [v61 isCollapsed];

      if (v27)
      {
        v28 = sub_22089132C();
        v29 = [a1 objectForKey_];

        if (!v29)
        {
          goto LABEL_13;
        }

        sub_2208923BC();
        swift_unknownObjectRelease();
        sub_2204A62A4(&v67, &aBlock);
        sub_22056D25C();
        swift_dynamicCast();
        v30 = v61;
        v49 = v62;
        v48[1] = swift_getObjectType();
        v31 = v50;
        (*(v50 + 104))(v23, *MEMORY[0x277D6E258], v19);
        sub_22088D08C();

        (*(v31 + 8))(v23, v19);
      }
    }
  }

  else
  {
    sub_22056D130(&aBlock);
  }

  v50 = v4;
  v32 = sub_22089132C();
  v33 = [a1 objectForKey_];

  if (v33)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v67, &aBlock);
    type metadata accessor for TickerViewController();
    swift_dynamicCast();
    v49 = v61;
    sub_22088C71C();
    v34 = sub_22088BFCC();

    v35 = swift_allocObject();
    *(v35 + 16) = v51;
    *(v35 + 24) = v52;

    v36 = v59;
    sub_22088F15C();
    sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
    v51 = sub_220891D0C();
    sub_22088F16C();
    sub_22088F18C();
    v52 = *(v9 + 8);
    v37 = v54;
    v52(v12, v54);
    (*(v9 + 16))(v12, v36, v37);
    v38 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = 0x3FF0000000000000;
    *(v39 + 24) = 1;
    *(v39 + 32) = v34;
    *(v39 + 40) = sub_2206FB520;
    *(v39 + 48) = v35;
    (*(v9 + 32))(v39 + v38, v12, v37);
    v65 = sub_22056D194;
    v66 = v39;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v64 = sub_2204C35E8;
    *(&v64 + 1) = &block_descriptor_33;
    v40 = _Block_copy(&aBlock);
    v41 = v34;

    v42 = v53;
    sub_22088F13C();
    *&aBlock = MEMORY[0x277D84F90];
    sub_22046275C(&qword_281296CA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_22056D204(0);
    sub_22046275C(&qword_28127EA50, sub_22056D204, MEMORY[0x277D83970]);
    v43 = v56;
    v44 = v50;
    sub_2208923FC();
    v45 = v60;
    v46 = v51;
    MEMORY[0x223D89E80](v60, v42, v43, v40);
    _Block_release(v40);

    (*(v58 + 8))(v43, v44);
    (*(v55 + 8))(v42, v57);
    v47 = v52;
    v52(v45, v37);
    v47(v59, v37);
    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t BilingualFeedAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t BilingualFeedAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t BilingualFeedAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD08];
  v3 = sub_22088C07C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t BilingualFeedAlert.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t BilingualFeedAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2206FB920()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2206FB9D8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2206FBAD8()
{
  v1 = v0;
  sub_22084B0B0();
  v2 = v0[8];
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v2;
  [v3 initWithRed:0.431372549 green:0.431372549 blue:0.431372549 alpha:1.0];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 32))(v4, v5);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  (*(v7 + 32))(v6, v7);
  LOBYTE(v3) = sub_22088F0DC();
  v8 = objc_opt_self();
  v9 = &selRef_tertiarySystemFillColor;
  if ((v3 & 1) == 0)
  {
    v9 = &selRef_secondarySystemFillColor;
  }

  v10 = [v8 *v9];
  v12 = v1[3];
  v11 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v12);
  (*(v11 + 24))(v12, v11);
  v13 = objc_opt_self();
  v14 = [v13 systemRedColor];
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.882352941 green:0.647058824 blue:0.0 alpha:1.0];
  [v13 systemBlueColor];
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.960784314 green:0.62745098 blue:0.0901960784 alpha:1.0];
  return sub_22089071C();
}

uint64_t sub_2206FBD28(uint64_t a1)
{
  sub_220452A8C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for ForYouFeedGroupConfig(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052C670(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_22089267C();
    __break(1u);
  }

  else
  {
    v16 = *(v4 + 32);
    v16(v11, v15, v3);
    (*(v4 + 16))(v7, v11, v3);
    type metadata accessor for StubStockForYouFeedGroupEmitter(0);
    v17 = swift_allocObject();
    v16((v17 + OBJC_IVAR____TtC8StocksUI31StubStockForYouFeedGroupEmitter_config), v7, v3);
    v20[1] = v17;
    sub_2206FBFAC(0);
    swift_allocObject();
    sub_2205028AC(&qword_27CF58F00, type metadata accessor for StubStockForYouFeedGroupEmitter, &unk_2208B15D0);
    v18 = sub_22088F53C();
    (*(v4 + 8))(v11, v3);
    return v18;
  }

  return result;
}

void sub_2206FBFAC(uint64_t a1)
{
  if (!qword_281296BC8)
  {
    type metadata accessor for ForYouFeedServiceConfig(255);
    sub_2205028AC(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
    v1 = sub_22088F54C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296BC8);
    }
  }
}

uint64_t sub_2206FC050(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v4 = v3;
  v97 = a3;
  v98 = a2;
  v6 = sub_22088B64C();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D5AC(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v76 - v11);
  sub_22051DA14(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v83 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v94, v16);
  v81 = (&v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for ForYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v91, v18);
  v87 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22089030C();
  v92 = *(v20 - 8);
  v93 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v90 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D5AC(0, &qword_281296EA0, MEMORY[0x277D6EC60]);
  v24 = v23;
  v89 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v88 = &v76 - v26;
  sub_22052C100(0);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D5AC(0, &qword_281297E60, MEMORY[0x277D6D710]);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v34);
  v82 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v76 - v38;
  v80 = *(v4 + 32);
  v40 = v24;
  v41 = a1;
  sub_22088E76C();
  v42 = v32;
  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    sub_2206FCDD4(v30);
    sub_2206FCE30();
    *v12 = swift_allocError();
    v44 = v95;
    v43 = v96;
    (*(v95 + 104))(v12, *MEMORY[0x277D6DF68], v96);
    v98(v12);
    return (*(v44 + 8))(v12, v43);
  }

  else
  {
    v79 = v12;
    v46 = v33;
    v47 = *(v33 + 32);
    v78 = v42;
    v47(v39, v30, v42);
    v48 = sub_22052C400(v39);
    if (v49)
    {
      sub_2206FCE30();
      v50 = swift_allocError();
      v51 = v79;
      *v79 = v50;
      v53 = v95;
      v52 = v96;
      (*(v95 + 104))(v51, *MEMORY[0x277D6DF68], v96);
      v98(v51);
      (*(v53 + 8))(v51, v52);
      return (*(v33 + 8))(v39, v78);
    }

    else
    {
      v54 = v48;
      v55 = *(v89 + 16);
      v77 = v40;
      v55(v88, v41, v40);
      v56 = v90;
      sub_2206FCA04(v54, v90);
      swift_storeEnumTagMultiPayload();
      sub_2206FCE84(0);
      sub_22051D97C(0);
      v58 = v57;
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_220899360;
      sub_220458918(0);
      v61 = *(v60 + 48);
      v62 = v81;
      v100 = v80;
      *v81 = v80;
      (*(v92 + 16))(v62 + v61, v56, v93);
      v80 = v41;
      swift_storeEnumTagMultiPayload();
      sub_2206FCEDC(&v100, v99);
      sub_22044E2D4(&unk_281293320, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
      sub_22088AD7C();
      v63 = sub_22044E2D4(&qword_281297F68, sub_22051D97C, MEMORY[0x277D6D408]);
      v64 = sub_22044E2D4(&qword_281297F70, sub_22051D97C, MEMORY[0x277D6D3F8]);
      MEMORY[0x223D80A10](v59, v58, v63, v64);
      sub_22044E2D4(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B162C);
      v65 = v82;
      sub_22088B29C();
      v66 = v88;
      sub_22088E75C();
      v67 = *MEMORY[0x277D6D868];
      v68 = v85;
      v69 = v86;
      v70 = *(v85 + 104);
      v87 = v39;
      v71 = v84;
      v70(v84, v67, v86);
      sub_22044E2D4(&unk_281288480, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B1724);
      v72 = v79;
      v73 = v66;
      sub_22088C67C();
      (*(v68 + 8))(v71, v69);
      v98(v72);
      (*(v95 + 8))(v72, v96);
      v74 = *(v46 + 8);
      v75 = v78;
      v74(v65, v78);
      (*(v92 + 8))(v90, v93);
      (*(v89 + 8))(v73, v77);
      return (v74)(v87, v75);
    }
  }
}

uint64_t sub_2206FCA04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22089030C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v27 - v11;
  sub_2206FCF38(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220714428(v16);
  sub_2205E9E2C(0);
  v18 = v17;
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    if (a1)
    {
      if (qword_28128CC50 != -1)
      {
        swift_once();
      }

      v19 = qword_2812B6A58;
    }

    else
    {
      if (qword_28128CC70 != -1)
      {
        swift_once();
      }

      v19 = qword_2812B6A88;
    }

    v25 = __swift_project_value_buffer(v4, v19);
    return (*(v5 + 16))(a2, v25, v4);
  }

  else
  {
    v20 = *(v18 + 48);
    v21 = *(v5 + 32);
    v21(v12, v16, v4);
    v21(v8, &v16[v20], v4);
    v22 = *(v5 + 8);
    if (a1)
    {
      v22(v12, v4);
      v23 = a2;
      v24 = v8;
    }

    else
    {
      v22(v8, v4);
      v23 = a2;
      v24 = v12;
    }

    return (v21)(v23, v24, v4);
  }
}

unint64_t sub_2206FCCF0()
{
  result = qword_281283998;
  if (!qword_281283998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281283998);
  }

  return result;
}

uint64_t sub_2206FCDD4(uint64_t a1)
{
  sub_22052C100(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2206FCE30()
{
  result = qword_2812839A8[0];
  if (!qword_2812839A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812839A8);
  }

  return result;
}

void sub_2206FCE84(uint64_t a1)
{
  if (!qword_28127E0F0)
  {
    sub_22051D97C(255);
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E0F0);
    }
  }
}

void sub_2206FCF38(uint64_t a1)
{
  if (!qword_281290BC8[0])
  {
    v4[0] = &type metadata for ForYouFeedOfflineModel.Loading;
    v4[1] = &type metadata for ForYouFeedOfflineModel.Expanding;
    v4[2] = sub_22048A188();
    v4[3] = sub_22048A1DC();
    v2 = type metadata accessor for DualOfflineManager.State(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_281290BC8);
    }
  }
}

unint64_t sub_2206FCFC8()
{
  result = qword_27CF58F08;
  if (!qword_27CF58F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58F08);
  }

  return result;
}

uint64_t sub_2206FD01C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v6);
  v3 = type metadata accessor for OnboardingModule();
  v4 = swift_allocObject();
  result = sub_220457328(v6, v4 + 16);
  a2[3] = v3;
  a2[4] = &off_2834166F0;
  *a2 = v4;
  return result;
}

double sub_2206FD08C()
{
  v0 = sub_220888D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088CB0C();
  sub_220888BDC();

  sub_220446A58(0, &qword_281299738, &protocol descriptor for OnboardingInteractorType, 0);
  sub_220888BEC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CF00], v0);
  sub_2208882DC();

  (*(v1 + 8))(v4, v0);
  sub_220446A58(0, &qword_281299740, &protocol descriptor for OnboardingTrackerType, 1);
  sub_220888BEC();

  return result;
}

void *sub_2206FD258(void *a1)
{
  v2 = sub_22088D77C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088C8AC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281282858, &protocol descriptor for OnboardingConfigurationFactoryType, 1);
  result = sub_2208884DC();
  if (v19)
  {
    sub_220457328(&v18, v21);
    v10 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
    (*(v3 + 104))(v6, *MEMORY[0x277D6E808], v2);
    v11 = sub_22088DDAC();
    swift_allocObject();
    v12 = sub_22088DD9C();
    LOBYTE(v10) = *(v10 + 16);
    v19 = v11;
    v20 = MEMORY[0x277D6EA48];
    *&v18 = v12;
    v13 = type metadata accessor for OnboardingPersonalizedAdsStep();
    v14 = swift_allocObject();
    *(v14 + 57) = 2;
    *(v14 + 64) = xmmword_2208AAFC0;
    *(v14 + 88) = 0;
    *(v14 + 96) = 0;
    *(v14 + 80) = 1;
    sub_220457328(&v18, v14 + 16);
    *(v14 + 56) = v10;
    sub_22046F118(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_220899360;
    *(v15 + 56) = v13;
    *(v15 + 64) = sub_2206FD864(qword_2812864D8, type metadata accessor for OnboardingPersonalizedAdsStep, &unk_2208B59A0);
    *(v15 + 32) = v14;
    sub_22088C89C();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299738, &protocol descriptor for OnboardingInteractorType, 0);
    result = sub_2208884DC();
    if (v18)
    {
      v16 = objc_allocWithZone(sub_22088CB0C());
      v17 = sub_22088CADC();
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2206FD570@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299740, &protocol descriptor for OnboardingTrackerType, 1);
  result = sub_2208884DC();
  if (v24)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for OnboardingTracker();
    v22[3] = v10;
    v22[4] = &off_283424DD0;
    v22[0] = v9;
    type metadata accessor for OnboardingInteractor(0);
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v10);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v20 = v10;
    v21 = &off_283424DD0;
    *&v19 = v17;
    sub_22088515C();
    sub_220457328(&v19, v11 + 16);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = sub_2206FD864(qword_281299748, type metadata accessor for OnboardingInteractor, &unk_2208BA020);
    *a2 = v11;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206FD7DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for OnboardingTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_283424DD0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206FD864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ForYouFeedRouteModel(uint64_t a1)
{
  result = qword_2812997C0;
  if (!qword_2812997C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206FD8F8(uint64_t a1)
{
  type metadata accessor for StocksActivity.Article(319);
  if (v1 <= 0x3F)
  {
    sub_22047C320(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for StockFeedChartUpdateBlueprintModifier(uint64_t a1)
{
  result = qword_281281350;
  if (!qword_281281350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206FD9E4(uint64_t a1)
{
  sub_2207009E8(319, &unk_2812990E0, MEMORY[0x277D697C0]);
  if (v1 <= 0x3F)
  {
    sub_220885D4C();
    if (v2 <= 0x3F)
    {
      sub_2206CAE24();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2206FDAAC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v41 = a3;
  v42 = a2;
  v4 = sub_22088B64C();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220700738(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v38 = &v32 - v9;
  sub_220587530(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  sub_220700738(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v37 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v32 - v14;
  v43 = v16;
  sub_22088E6FC();
  v36 = v3;
  v45 = v3;
  sub_2205727A4(sub_22070082C, v44);
  v18 = v17;
  sub_22055CE80(0);
  v20 = v19;
  v21 = sub_2207009A0(&qword_281297DF8, sub_22055CE80, MEMORY[0x277D6D720]);
  v22 = sub_2207009A0(&qword_281297E00, sub_22055CE80, MEMORY[0x277D6D718]);
  MEMORY[0x223D80A20](v18, v20, v21, v22);
  type metadata accessor for StockFeedSectionDescriptor(0);
  type metadata accessor for StockFeedModel(0);
  sub_2207009A0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
  sub_2207009A0(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
  sub_22088E6EC();
  v23 = sub_220577460();
  sub_22088FA1C();
  sub_22088FA0C();
  type metadata accessor for StockFeedServiceConfig(0);
  sub_2207009A0(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
  v24 = sub_22088F9EC();

  v25 = 0;
  if (v24)
  {
    v25 = sub_22088F45C();
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v46 = v24;
  v49 = v25;
  sub_22088E7BC();
  sub_22062782C(v23);
  updated = type metadata accessor for StockFeedChartUpdateBlueprintModifier(0);
  __swift_project_boxed_opaque_existential_1((v36 + *(updated + 28)), *(v36 + *(updated + 28) + 24));
  if (sub_22088618C())
  {
    v27 = v38;
    sub_22088C66C();
  }

  else
  {
    v29 = v33;
    v28 = v34;
    v30 = v35;
    (*(v34 + 104))(v33, *MEMORY[0x277D6D868], v35);
    sub_2207009A0(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A205C);
    v27 = v38;
    sub_22088C67C();
    (*(v28 + 8))(v29, v30);
  }

  v42(v27);
  (*(v39 + 8))(v27, v40);
  return (*(v37 + 8))(v15, v43);
}

uint64_t sub_2206FE060(uint64_t a1, uint64_t a2)
{
  sub_22055D524(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v5, v6);
  sub_2206FE2A4(&v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = a2;
  sub_220572464(sub_22070084C, v15);
  v9 = v8;
  sub_22055D328(0);
  v11 = v10;
  v12 = sub_2207009A0(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
  v13 = sub_2207009A0(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
  MEMORY[0x223D80A20](v9, v11, v12, v13);
  type metadata accessor for StockFeedModel(0);
  sub_2207009A0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
  sub_2207009A0(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
  return sub_22088B29C();
}

uint64_t sub_2206FE2A4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StockFeedMastheadModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CE80(0);
  sub_22088B2AC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_220700938(v13, v9, type metadata accessor for StockFeedMastheadModel);
      sub_2206FE4A8(v9, v5);
      sub_22070086C(v9, type metadata accessor for StockFeedMastheadModel);
      sub_220700938(v5, a1, type metadata accessor for StockFeedMastheadModel);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 1)
    {

      sub_220459628(0);
      sub_22051F318(&v13[*(v16 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    }

    else
    {
      sub_22070086C(v13, type metadata accessor for StockFeedSectionDescriptor);
    }
  }

  return sub_22088B2AC();
}

uint64_t sub_2206FE4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v254 = a2;
  v245 = sub_2208852DC();
  v236 = *(v245 - 8);
  MEMORY[0x28223BE20](v245, v3);
  v244 = &v205[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v233 = sub_2208857EC();
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233, v5);
  v231 = &v205[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2207009E8(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v209 = &v205[-v9];
  sub_2207009E8(0, qword_281294018, type metadata accessor for PriceViewModel);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v208 = &v205[-v12];
  v238 = sub_22088699C();
  v242 = *(v238 - 8);
  MEMORY[0x28223BE20](v238, v13);
  v253 = &v205[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v239 = &v205[-v17];
  v237 = type metadata accessor for PriceViewModel(0);
  v207 = *(v237 - 8);
  MEMORY[0x28223BE20](v237, v18);
  v217 = &v205[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v243 = type metadata accessor for QuoteViewModel(0);
  v230 = *(v243 - 8);
  MEMORY[0x28223BE20](v243, v20);
  v218 = &v205[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2207009E8(0, qword_281293F78, type metadata accessor for QuoteViewModel);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v216 = &v205[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25, v26);
  v223 = &v205[-v27];
  v241 = sub_22088676C();
  v240 = *(v241 - 8);
  MEMORY[0x28223BE20](v241, v28);
  v222 = &v205[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v234 = type metadata accessor for QuoteSummaryViewModel(0);
  MEMORY[0x28223BE20](v234, v30);
  v235 = &v205[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_2208854FC();
  v251 = *(v32 - 8);
  v252 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v213 = &v205[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35, v36);
  v249 = &v205[-v37];
  v260 = sub_220885D4C();
  v256 = *(v260 - 8);
  MEMORY[0x28223BE20](v260, v38);
  v215 = &v205[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40, v41);
  v255 = &v205[-v42];
  MEMORY[0x28223BE20](v43, v44);
  v258 = &v205[-v45];
  v247 = MEMORY[0x277D697C0];
  sub_2207009E8(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v257 = &v205[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v205[-v51];
  v250 = &v205[-v51];
  v53 = MEMORY[0x277D697F8];
  v219 = MEMORY[0x277D697F8];
  sub_2207009E8(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v54 - 8, v55);
  v214 = &v205[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v57, v58);
  v212 = &v205[-v59];
  MEMORY[0x28223BE20](v60, v61);
  v211 = &v205[-v62];
  MEMORY[0x28223BE20](v63, v64);
  v210 = &v205[-v65];
  MEMORY[0x28223BE20](v66, v67);
  v221 = &v205[-v68];
  MEMORY[0x28223BE20](v69, v70);
  v220 = &v205[-v71];
  MEMORY[0x28223BE20](v72, v73);
  v248 = &v205[-v74];
  MEMORY[0x28223BE20](v75, v76);
  v78 = &v205[-v77];
  v79 = sub_22088685C();
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v81);
  v259 = &v205[-((v82 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = MEMORY[0x28223BE20](v83, v84);
  v87 = &v205[-v86];
  v226 = v80;
  v225 = *(v80 + 16);
  v225(&v205[-v86], a1, v79, v85);
  v88 = type metadata accessor for StockFeedMastheadModel(0);
  sub_2204B2AA8(a1 + v88[5], v78, &qword_2812990C0, v53);
  updated = type metadata accessor for StockFeedChartUpdateBlueprintModifier(0);
  v90 = v229;
  sub_2204B2AA8(v229 + updated[5], v52, &unk_2812990E0, v247);
  v91 = updated[6];
  v92 = (v256 + 16);
  v246 = *(v256 + 16);
  v246(v258, v90 + v91, v260);
  v228 = *(a1 + v88[8]);
  __swift_project_boxed_opaque_existential_1((v90 + updated[7]), *(v90 + updated[7] + 24));
  v206 = sub_2208861AC();
  v93 = v254;
  v94 = v225;
  (v225)(v254, v87, v79);
  v95 = v219;
  sub_2204B2AA8(v78, v93 + v88[5], &qword_2812990C0, v219);
  v229 = v88;
  v96 = v93 + v88[6];
  v97 = v250;
  v98 = v247;
  sub_2204B2AA8(v250, v96, &unk_2812990E0, v247);
  v224 = v87;
  v227 = v79;
  v94(v259, v87, v79);
  v225 = v78;
  v99 = v248;
  sub_2204B2AA8(v78, v248, &qword_2812990C0, v95);
  sub_2204B2AA8(v97, v257, &unk_2812990E0, v98);
  v247 = v92;
  v246(v255, v258, v260);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  v100 = v249;
  sub_220886B9C();

  v101 = v99;
  v102 = v220;
  sub_2204B2AA8(v101, v220, &qword_2812990C0, MEMORY[0x277D697F8]);
  v103 = v240;
  v104 = *(v240 + 48);
  v105 = v241;
  if (v104(v102, 1, v241) == 1)
  {
    v106 = MEMORY[0x277D697F8];
    sub_22051F318(v102, &qword_2812990C0, MEMORY[0x277D697F8]);
    v107 = v221;
    (*(v103 + 56))(v221, 1, 1, v105);
    sub_2208867CC();
    v108 = v210;
    sub_2204B2AA8(v107, v210, &qword_2812990C0, v106);
    v109 = v104(v108, 1, v105);
    v110 = v242;
    if (v109 == 1)
    {
      sub_22051F318(v108, &qword_2812990C0, MEMORY[0x277D697F8]);
      v247 = 0;
      LODWORD(v246) = 1;
    }

    else
    {
      v247 = sub_22088675C();
      LODWORD(v246) = v130;
      (*(v103 + 8))(v108, v105);
    }

    v131 = v214;
    v132 = v212;
    v133 = v211;
    sub_2204B2AA8(v107, v211, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v104(v133, 1, v105) == 1)
    {
      sub_22051F318(v133, &qword_2812990C0, MEMORY[0x277D697F8]);
      v223 = 0;
      LODWORD(v222) = 1;
    }

    else
    {
      v223 = sub_22088666C();
      LODWORD(v222) = v135;
      (*(v103 + 8))(v133, v105);
    }

    sub_2204B2AA8(v107, v132, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v104(v132, 1, v105) == 1)
    {
      sub_22051F318(v132, &qword_2812990C0, MEMORY[0x277D697F8]);
      v220 = 0;
      LODWORD(v219) = 1;
    }

    else
    {
      v220 = sub_22088671C();
      LODWORD(v219) = v136;
      (*(v103 + 8))(v132, v105);
    }

    sub_2204B2AA8(v107, v131, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v104(v131, 1, v105) == 1)
    {
      sub_22051F318(v131, &qword_2812990C0, MEMORY[0x277D697F8]);
      v216 = 0;
      v215 = 0;
    }

    else
    {
      v216 = sub_22088668C();
      v215 = v137;
      (*(v103 + 8))(v131, v105);
    }

    v138 = *(v110 + 16);
    v139 = v253;
    v140 = v238;
    v138(v253, v239, v238);
    v141 = v232;
    v142 = v231;
    v143 = v233;
    (*(v232 + 104))(v231, *MEMORY[0x277D69288], v233);
    v144 = v110;
    v145 = v244;
    sub_22088524C();
    v146 = v217;
    *v217 = v247;
    *(v146 + 8) = v246 & 1;
    *(v146 + 16) = v223;
    *(v146 + 24) = v222 & 1;
    *(v146 + 32) = v220;
    *(v146 + 40) = v219 & 1;
    v147 = v215;
    *(v146 + 48) = v216;
    *(v146 + 56) = v147;
    v148 = v139;
    v149 = v237;
    v138((v146 + *(v237 + 40)), v148, v140);
    *(v146 + 64) = 9666786;
    *(v146 + 72) = 0xA300000000000000;
    (*(v141 + 16))(v146 + *(v149 + 36), v142, v143);
    v150 = *(v149 + 44);
    v151 = v236;
    (*(v236 + 16))(v146 + v150, v145, v245);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v247 = qword_2812B6B48;
    (*(v141 + 8))(v142, v143);
    v152 = *(v144 + 8);
    v152(v253, v140);
    v152(v239, v140);
    v153 = MEMORY[0x277D697F8];
    sub_22051F318(v221, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v251 + 8))(v249, v252);
    v154 = MEMORY[0x277D697C0];
    sub_22051F318(v257, &unk_2812990E0, MEMORY[0x277D697C0]);
    sub_22051F318(v248, &qword_2812990C0, v153);
    v155 = *(v226 + 8);
    v156 = v227;
    v155(v259, v227);
    v157 = v256;
    (*(v256 + 8))(v258, v260);
    sub_22051F318(v250, &unk_2812990E0, v154);
    sub_22051F318(v225, &qword_2812990C0, v153);
    v155(v224, v156);
    v158 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    v159 = v247;
    swift_beginAccess();
    (*(v151 + 40))(v159 + v158, v244, v245);
    swift_endAccess();
    v160 = v243;
    v161 = *(v243 + 24);
    v162 = type metadata accessor for QuoteSummaryTimeRange(0);
    v163 = v218;
    (*(*(v162 - 8) + 56))(&v218[v161], 1, 1, v162);
    sub_220700938(v146, v163, type metadata accessor for PriceViewModel);
    (*(v157 + 32))(v163 + *(v160 + 20), v255, v260);
    v164 = v235;
    (*(v230 + 56))(v235 + *(v234 + 20), 1, 1, v160);
    sub_220700938(v163, v164, type metadata accessor for QuoteViewModel);
    goto LABEL_32;
  }

  v111 = v222;
  v112.n128_f64[0] = (*(v103 + 32))(v222, v102, v105);
  v113 = sub_220656950(v100, v112, v111, v257);
  v221 = v114;
  LODWORD(v220) = v115;
  v116 = v251;
  v117 = v213;
  (*(v251 + 104))(v213, *MEMORY[0x277D69120], v252, v113);
  sub_2207009A0(&qword_281299398, MEMORY[0x277D69160], MEMORY[0x277D69170]);
  sub_22089167C();
  sub_22089167C();
  v118 = v242;
  if (v263 == v261 && v264 == v262)
  {
    v119 = 1;
  }

  else
  {
    v119 = sub_2208928BC();
  }

  v120 = v253;
  v121 = v215;
  v239 = *(v116 + 8);
  (v239)(v117, v252);

  v251 = v116 + 8;
  if (v119)
  {
    sub_2208867CC();
    v122 = v206;
    v123 = v208;
    sub_22069DDE0(v120, v206 & 1, v208);
    (*(v118 + 8))(v120, v238);
    v124 = v260;
    v246(v121, v255, v260);
    v125 = v209;
    sub_22069E5AC(v122 & 1, v209);
    v126 = (*(v207 + 48))(v123, 1, v237);
    v127 = v223;
    if (v126 != 1)
    {
      v134 = v216;
      sub_220700938(v123, v216, type metadata accessor for PriceViewModel);
      v165 = v243;
      (*(v256 + 32))(&v134[*(v243 + 20)], v121, v124);
      sub_2207008CC(v125, &v134[*(v165 + 24)], &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
      v129 = v165;
      v128 = 0;
      goto LABEL_29;
    }

    sub_22051F318(v125, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
    (*(v256 + 8))(v121, v124);
    sub_22051F318(v123, qword_281294018, type metadata accessor for PriceViewModel);
    v128 = 1;
    v129 = v243;
  }

  else
  {
    v128 = 1;
    v129 = v243;
    v127 = v223;
  }

  v134 = v216;
LABEL_29:
  (*(v230 + 56))(v134, v128, 1, v129);
  sub_2207008CC(v134, v127, qword_281293F78, type metadata accessor for QuoteViewModel);
  v166 = sub_22088675C();
  LODWORD(v230) = v167;
  v168 = sub_22088671C();
  v170 = v169;
  v171 = sub_22088668C();
  v173 = v172;
  sub_2208867CC();
  v174 = v232;
  v175 = v231;
  v176 = v233;
  (*(v232 + 104))(v231, *MEMORY[0x277D69288], v233);
  v177 = v244;
  sub_22088524C();
  v178 = v235;
  *v235 = v166;
  *(v178 + 8) = v230 & 1;
  v178[2] = v221;
  *(v178 + 24) = v220 & 1;
  v178[4] = v168;
  v179 = v170 & 1;
  v164 = v178;
  *(v178 + 40) = v179;
  v178[6] = v171;
  v178[7] = v173;
  v180 = v177;
  v181 = v176;
  v182 = v237;
  v183 = v242;
  v184 = v120;
  v185 = v180;
  v186 = v238;
  (*(v242 + 16))(v178 + *(v237 + 40), v184, v238);
  *(v164 + 64) = 9666786;
  *(v164 + 72) = 0xA300000000000000;
  (*(v174 + 16))(v164 + *(v182 + 36), v175, v181);
  v187 = v236;
  v188 = v245;
  (*(v236 + 16))(v164 + *(v182 + 44), v185, v245);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v189 = qword_2812B6B48;
  (*(v174 + 8))(v175, v181);
  (*(v183 + 8))(v253, v186);
  v190 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v187 + 40))(v189 + v190, v185, v188);
  swift_endAccess();
  v191 = v243;
  v192 = v255;
  v193 = v260;
  v246((v164 + *(v243 + 20)), v255, v260);
  v194 = v164 + *(v191 + 24);
  v195 = v249;
  v196 = v222;
  sub_22069E834(v249, v194);
  (*(v240 + 8))(v196, v241);
  (v239)(v195, v252);
  v197 = *(v256 + 8);
  v197(v192, v193);
  v198 = MEMORY[0x277D697C0];
  sub_22051F318(v257, &unk_2812990E0, MEMORY[0x277D697C0]);
  v199 = MEMORY[0x277D697F8];
  sub_22051F318(v248, &qword_2812990C0, MEMORY[0x277D697F8]);
  v200 = *(v226 + 8);
  v201 = v227;
  v200(v259, v227);
  v197(v258, v193);
  sub_22051F318(v250, &unk_2812990E0, v198);
  sub_22051F318(v225, &qword_2812990C0, v199);
  v200(v224, v201);
  sub_2207008CC(v223, v164 + *(v234 + 20), qword_281293F78, type metadata accessor for QuoteViewModel);
LABEL_32:
  v202 = v229;
  v203 = v254;
  result = sub_220700938(v164, v254 + v229[7], type metadata accessor for QuoteSummaryViewModel);
  *(v203 + v202[8]) = v228;
  return result;
}

uint64_t sub_2206FFFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v60 = a3;
  sub_2207009E8(0, &qword_281299370, MEMORY[0x277D69178]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v56 = &v53 - v6;
  sub_2207009E8(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v53 - v9;
  v11 = sub_22088685C();
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockFeedMastheadModel(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v53 - v25;
  sub_22055D328(0);
  v59 = v27;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v55 = v22;
    v32 = v57;
    if (EnumCaseMultiPayload <= 1)
    {
      sub_220700938(v26, v18, type metadata accessor for StockFeedMastheadModel);
      sub_2206FE4A8(v18, v55);
      swift_storeEnumTagMultiPayload();
      sub_2207009A0(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
      sub_22088AD7C();
      return sub_22070086C(v18, type metadata accessor for StockFeedMastheadModel);
    }

    if (EnumCaseMultiPayload == 2)
    {
      (*(v57 + 8))(v26, v11);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v59 = v19;
        sub_2204597F0(0);
        v34 = v33;
        v35 = *(v33 + 48);
        v36 = *(v33 + 64);
        v37 = v32;
        v38 = *(v32 + 32);
        v39 = v14;
        v53 = v11;
        v54 = v14;
        v38(v14, v26, v11);
        v40 = MEMORY[0x277D697F8];
        v41 = v10;
        sub_2207008CC(&v26[v35], v10, &qword_2812990C0, MEMORY[0x277D697F8]);
        v42 = MEMORY[0x277D69178];
        v43 = v56;
        sub_2207008CC(&v26[v36], v56, &qword_281299370, MEMORY[0x277D69178]);
        v44 = *(v34 + 48);
        v45 = *(v34 + 64);
        v46 = v55;
        v47 = v39;
        v48 = v53;
        (*(v37 + 16))(v55, v47, v53);
        sub_2204B2AA8(v41, v46 + v44, &qword_2812990C0, v40);
        sub_2204B2AA8(v43, v46 + v45, &qword_281299370, v42);
        swift_storeEnumTagMultiPayload();
        sub_2207009A0(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
        sub_22088AD7C();
        sub_22051F318(v43, &qword_281299370, v42);
        sub_22051F318(v41, &qword_2812990C0, v40);
        return (*(v37 + 8))(v54, v48);
      }

      sub_22070086C(v26, type metadata accessor for StockEarningsModel);
    }

    v29 = v60;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload > 7)
  {
    v29 = v60;
    if (EnumCaseMultiPayload != 8)
    {
      v31 = v59;
      if (EnumCaseMultiPayload == 9)
      {
        v50 = v26;
        v51 = v59;
        sub_22070086C(v50, type metadata accessor for StockFeedModel);
        v31 = v51;
      }

      return (*(*(v31 - 8) + 16))(v29, a1);
    }

    sub_220459914(0);

    v52 = sub_22089030C();
    (*(*(v52 - 8) + 8))(v26, v52);
    goto LABEL_18;
  }

  v29 = v60;
  if (EnumCaseMultiPayload == 5)
  {
    sub_22070086C(v26, type metadata accessor for StockFeedModel);
LABEL_18:
    v31 = v59;
    return (*(*(v31 - 8) + 16))(v29, a1);
  }

  v30 = v59;
  sub_22070086C(v26, type metadata accessor for StockFeedModel);
  v31 = v30;
  return (*(*(v31 - 8) + 16))(v29, a1);
}

void sub_220700738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for StockFeedModel(255);
    v8[2] = sub_2207009A0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    v8[3] = sub_2207009A0(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22070086C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207008CC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2207009E8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220700938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207009A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2207009E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220700A3C(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_220705E20(0, &qword_27CF58F18, MEMORY[0x277D68340], MEMORY[0x277D83D88]);
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v81 = (&v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v8);
  v83 = (&v73 - v9);
  sub_220705E20(0, &unk_2812984A0, MEMORY[0x277D686A0], v3);
  v78 = *(v10 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v80 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v82 = &v73 - v15;
  v86 = sub_22088A1FC();
  v16 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v17);
  v87 = v18;
  v90 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22088A2FC();
  v19 = *(v85 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v85, v21);
  v22 = a2;
  v23 = sub_22088A2EC();
  v25 = sub_220791340(v23, v24);
  v27 = v26;

  v84 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v27)
  {
    MEMORY[0x28223BE20](v28, v29);
    *(&v73 - 4) = v89;
    *(&v73 - 3) = v25;
    *(&v73 - 2) = v27;
    sub_22044826C();
    v80 = sub_220888FBC();

    v30 = v19;
    v31 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *(v19 + 16);
    v82 = v19 + 16;
    v83 = v32;
    v77 = v22;
    v33 = v20;
    v34 = v85;
    (v32)(v31, v22);
    v81 = *(v16 + 16);
    v35 = v86;
    v81(v90, v88, v86);
    v36 = *(v19 + 80);
    v37 = *(v16 + 80);
    v38 = (v36 + 24) & ~v36;
    v78 = v38;
    v79 = v36 | v37;
    v39 = (v33 + v37 + v38) & ~v37;
    v73 = v39;
    v40 = swift_allocObject();
    v41 = v89;
    *(v40 + 16) = v89;
    v76 = *(v30 + 32);
    v76(v40 + v38, v31, v34);
    v42 = v41;
    v75 = *(v16 + 32);
    v43 = v40 + v39;
    v44 = v90;
    v45 = v35;
    v75(v43, v90, v35);
    v46 = v42;

    v47 = sub_220888D9C();
    v74 = sub_220888E4C();

    v48 = v84;
    v49 = v34;
    v83(v84, v77, v34);
    v81(v44, v88, v45);
    v50 = v73;
    v51 = swift_allocObject();
    *(v51 + 16) = v46;
    v76(v51 + v78, v48, v49);
    v75(v51 + v50, v44, v45);

    v52 = sub_220888D9C();
    sub_220888E9C();
  }

  else
  {
    v53 = sub_2208895EC();
    v54 = v82;
    (*(*(v53 - 8) + 56))(v82, 1, 1, v53);
    v55 = sub_2208891DC();
    v56 = v83;
    (*(*(v55 - 8) + 56))(v83, 1, 1, v55);
    v57 = *(v89 + 16);
    v75 = MEMORY[0x277D686A0];
    v76 = v57;
    sub_220704280(v54, v80, &unk_2812984A0, MEMORY[0x277D686A0]);
    v74 = MEMORY[0x277D68340];
    sub_220704280(v56, v81, &qword_27CF58F18, MEMORY[0x277D68340]);
    v58 = v19;
    v59 = v85;
    (*(v19 + 16))(&v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v85);
    v60 = v86;
    (*(v16 + 16))(v90, v88, v86);
    v61 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v62 = (v11 + *(v79 + 80) + v61) & ~*(v79 + 80);
    v63 = (v5 + *(v19 + 80) + v62) & ~*(v19 + 80);
    v64 = (v20 + *(v16 + 80) + v63) & ~*(v16 + 80);
    v65 = v60;
    v66 = (v87 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = v16;
    v68 = swift_allocObject();
    v69 = v68 + v61;
    v70 = v75;
    sub_220704300(v80, v69, &unk_2812984A0, v75);
    v71 = v68 + v62;
    v72 = v74;
    sub_220704300(v81, v71, &qword_27CF58F18, v74);
    (*(v58 + 32))(v68 + v63, v84, v59);
    (*(v67 + 32))(v68 + v64, v90, v65);
    *(v68 + v66) = v89;

    sub_22088726C();

    sub_220704384(v83, &qword_27CF58F18, v72);
    sub_220704384(v82, &unk_2812984A0, v70);
  }
}