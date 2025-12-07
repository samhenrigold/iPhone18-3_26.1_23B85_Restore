void sub_24EC3A4C0(char *a1)
{
  if (a1)
  {
    v2 = v1;
    swift_beginAccess();
    v4 = *(v1 + 56);
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      v7 = v6;
      v24.value.super.isa = v4;
      v24.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v24, v7);
    }

    else
    {
      v8 = a1;
    }

    v9 = *(v2 + 64);
    v10 = *(v2 + 72);
    v11 = &a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize];
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];
    *v11 = v9;
    v11[1] = v10;
    if (v9 != v12 || v10 != v13)
    {
      a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
      [a1 setNeedsLayout];
    }

    v15 = *(v2 + 80);
    v16 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
    swift_beginAccess();
    v17 = a1[v16];
    a1[v16] = v15;
    v23[0] = v17;
    sub_24F359430(v23);
    swift_beginAccess();
    v18 = *(v2 + 88);
    if (v18)
    {
      v19 = *&a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor];
      *&a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor] = v18;
      sub_24E77ACC8();
      v20 = v18;
      if ((sub_24F92C408() & 1) == 0)
      {
        sub_24F357100();
      }
    }

    else
    {
      v21 = [objc_opt_self() clearColor];
      v19 = *&a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor];
      *&a1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor] = v21;
      sub_24E77ACC8();
      v20 = v21;
      if ((sub_24F92C408() & 1) == 0)
      {
        sub_24F357100();
      }
    }

    swift_beginAccess();
    v22 = a1;
    MEMORY[0x253050F00]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    swift_endAccess();
  }
}

void sub_24EC3A72C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for ItemLayoutContext(0) + 32);
  v3 = type metadata accessor for ShelfLayoutContext(0);
  v4 = [*(v2 + *(v3 + 40)) traitCollection];
  v5 = *(v2 + *(v3 + 28) + 24);
  PortraitWidth = JUScreenClassGetPortraitWidth(1);
  if (!ProductTopLockup.wantsInlineUberPresentationStyle.getter() && ((sub_24F92BF78() & 1) == 0 || (sub_24F92BF98() & 1) == 0) && (sub_24F92BF78() & 1) == 0 && PortraitWidth >= v5)
  {
    sub_24F92BF98();
  }
}

uint64_t sub_24EC3A8C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EC3A8F8()
{

  return swift_deallocObject();
}

uint64_t ProductTopLockupIconFetcher.deinit()
{

  return v0;
}

uint64_t ProductTopLockupIconFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_24EC3A9E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

id sub_24EC3AA40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

GameStoreKit::ProductPageLinkType_optional __swiftcall ProductPageLinkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ProductPageLinkType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65706F6C65766564;
  v3 = 1634497893;
  v4 = 0x74726F70707573;
  if (v1 != 3)
  {
    v4 = 0x504174726F706572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79636176697270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EC3AD40()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC3AE2C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EC3AF04()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC3AFF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x65706F6C65766564;
  v5 = 0xE400000000000000;
  v6 = 1634497893;
  v7 = 0xE700000000000000;
  v8 = 0x74726F70707573;
  if (v2 != 3)
  {
    v8 = 0x504174726F706572;
    v7 = 0xEE006D656C626F72;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x79636176697270;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t ProductPageLink.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductPageLink.systemImageName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ProductPageLink.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t ProductPageLink.__allocating_init(id:text:artwork:clickAction:systemImageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a2;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  sub_24E65E064(a1, &v32);
  if (*(&v33 + 1))
  {
    v18 = v33;
    *(v17 + 56) = v32;
    *(v17 + 72) = v18;
    *(v17 + 88) = v34;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v27 = a3;
    v28 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v14 + 8))(v16, v13);
    v30 = v22;
    v31 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a3 = v27;
    a4 = v28;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v32);
  }

  sub_24E9BBAA8(a1);
  *(v17 + 16) = v29;
  *(v17 + 24) = a3;
  *(v17 + 96) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a7;
  return v17;
}

uint64_t ProductPageLink.init(id:text:artwork:clickAction:systemImageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v31 = a2;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v34);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v29 = a3;
    v30 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v16 + 8))(v18, v15);
    v32 = v22;
    v33 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a3 = v29;
    a4 = v30;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v34);
  }

  sub_24E9BBAA8(a1);
  v26 = v38;
  *(v8 + 56) = v37;
  *(v8 + 72) = v26;
  v27 = v39;
  *(v8 + 16) = v31;
  *(v8 + 24) = a3;
  *(v8 + 88) = v27;
  *(v8 + 96) = a4;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  return v8;
}

char *ProductPageLink.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v104 = a2;
  v90 = sub_24F91F6B8();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v103 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v97 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = &v84 - v10;
  MEMORY[0x28223BE20](v11);
  v96 = &v84 - v12;
  MEMORY[0x28223BE20](v13);
  v100 = &v84 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  v24 = a1;
  sub_24F928398();
  v91 = sub_24F928348();
  v26 = v25;
  v29 = *(v7 + 8);
  v27 = (v7 + 8);
  v28 = v29;
  v29(v23, v6);
  if (!v26)
  {
    v35 = sub_24F92AC38();
    sub_24EC3C4C4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v36 = 1954047348;
    v37 = v101;
    v36[1] = 0xE400000000000000;
    v36[2] = v37;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v103 + 8))(v104, v4);
    v38 = v24;
    v39 = v6;
    goto LABEL_8;
  }

  v94 = v26;
  v95 = v4;
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v28(v20, v6);
  v112 = v6;
  if (v32)
  {
    v33._countAndFlagsBits = v30;
    v33._object = v32;
    ProductPageLinkType.init(rawValue:)(v33);
    if (v110 > 2u)
    {
      if (v110 == 3)
      {
        v32 = 0x800000024FA40080;
        v34 = 0xD000000000000013;
      }

      else if (v110 == 4)
      {
        v32 = 0x800000024FA57930;
        v34 = 0xD000000000000018;
      }

      else
      {
        v34 = 0;
        v32 = 0;
      }
    }

    else if (v110)
    {
      if (v110 == 1)
      {
        v32 = 0x800000024FA57950;
        v34 = 0xD000000000000010;
      }

      else
      {
        v32 = 0xED0000747865746ELL;
        v34 = 0x69616C702E636F64;
      }
    }

    else
    {
      v32 = 0xE600000000000000;
      v34 = 0x697261666173;
    }
  }

  else
  {
    v34 = 0;
  }

  sub_24F928398();
  v40 = sub_24F928348();
  v20 = v41;
  v28(v17, v112);
  v93 = v20;
  if (!v20)
  {
    if (v32)
    {
      v85 = v34;
      v102 = v28;

      v87 = v32;
      v93 = v32;
      goto LABEL_21;
    }

    v67 = sub_24F92AC38();
    sub_24EC3C4C4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v68 = 0xD000000000000017;
    v68[1] = 0x800000024FA578F0;
    v68[2] = v101;
    (*(*(v67 - 8) + 104))(v68, *MEMORY[0x277D22530], v67);
    swift_willThrow();
    (*(v103 + 8))(v104, v95);
    v38 = v24;
    v39 = v112;
LABEL_8:
    v28(v38, v39);
    return v20;
  }

  v87 = v32;
  v102 = v28;
  v85 = v40;
LABEL_21:
  v42 = v100;
  sub_24F928398();
  v20 = sub_24F928348();
  v44 = v43;
  v102(v42, v112);
  v45 = v103;
  if (v44)
  {
    if (qword_27F2105F8 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BF38, &unk_24F9957F0);
    __swift_project_value_buffer(v46, qword_27F39C540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
    sub_24F9285D8();
    if (v110)
    {
      v47 = v111;
      ObjectType = swift_getObjectType();
      v110 = v20;
      v111 = v44;
      LOBYTE(v47) = (*(v47 + 112))(&v110, ObjectType, v47);

      if ((v47 & 1) == 0)
      {

        sub_24EC3C2E0();
        swift_allocError();
        swift_willThrow();
        swift_unknownObjectRelease();

        (*(v45 + 8))(v104, v95);
        v102(v24, v112);
        return v20;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v49 = v112;
  v86 = v27;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v50 = v104;
  v51 = v95;
  (*(v45 + 16))(v97, v104, v95);
  sub_24EC3C4C4(&qword_27F219660, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v52 = v51;
  v53 = v110;
  type metadata accessor for Action(0);
  v54 = v98;
  sub_24F928398();
  v55 = v99;
  v56 = static Action.makeInstance(byDeserializing:using:)(v54, v50);
  if (v55)
  {

    (*(v45 + 8))(v50, v52);
    v57 = v49;
    v58 = v49;
    v20 = v86;
    v59 = v102;
    v102(v24, v58);
    v59(v54, v57);
  }

  else
  {
    v99 = v56;
    v100 = v53;
    v60 = v54;
    v61 = v49;
    v62 = v49;
    v63 = v102;
    v102(v60, v62);
    v64 = v92;
    sub_24F928398();
    v65 = sub_24F928348();
    if (v66)
    {
      *&v107 = v65;
      *(&v107 + 1) = v66;
      sub_24F92C7F8();
      v63(v64, v61);
    }

    else
    {
      v69 = v88;
      sub_24F91F6A8();
      v70 = sub_24F91F668();
      v71 = v63;
      v73 = v72;
      (*(v89 + 8))(v69, v90);
      *&v107 = v70;
      *(&v107 + 1) = v73;
      v61 = v112;
      sub_24F92C7F8();
      v71(v92, v61);
    }

    v20 = swift_allocObject();
    sub_24E65E064(&v110, &v107);
    v74 = v94;
    v75 = v100;
    if (*(&v108 + 1))
    {
      v76 = v108;
      *(v20 + 56) = v107;
      *(v20 + 72) = v76;
      *(v20 + 11) = v109;
    }

    else
    {
      v77 = v88;
      sub_24F91F6A8();
      v78 = sub_24F91F668();
      v79 = v24;
      v81 = v80;
      v75 = v100;
      (*(v89 + 8))(v77, v90);
      v105 = v78;
      v106 = v81;
      v74 = v94;
      v24 = v79;
      v50 = v104;
      sub_24F92C7F8();
      sub_24E9BBAA8(&v107);
    }

    (*(v103 + 8))(v50, v95);
    v102(v24, v61);
    sub_24E9BBAA8(&v110);
    *(v20 + 2) = v91;
    *(v20 + 3) = v74;
    *(v20 + 12) = v75;
    v82 = v85;
    *(v20 + 4) = v99;
    *(v20 + 5) = v82;
    *(v20 + 6) = v93;
  }

  return v20;
}

uint64_t ProductPageLink.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductPageLink.deinit()
{

  sub_24E6585F8(v0 + 56);

  return v0;
}

uint64_t ProductPageLink.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC3C210@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 32);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24EC3C4C4(&qword_27F216DE8, 255, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

char *sub_24EC3C2B4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = ProductPageLink.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_24EC3C2E0()
{
  result = qword_27F22BF40;
  if (!qword_27F22BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BF40);
  }

  return result;
}

unint64_t sub_24EC3C338()
{
  result = qword_27F22BF48;
  if (!qword_27F22BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BF48);
  }

  return result;
}

unint64_t sub_24EC3C470()
{
  result = qword_27F22BF58;
  if (!qword_27F22BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BF58);
  }

  return result;
}

uint64_t sub_24EC3C4C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_24EC3C50C(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24EC3DAA8();
  sub_24F91FD88();

  *a1 = *(v1 + 24);
}

void sub_24EC3C584(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24EC3DAA8();
  sub_24F91FD88();

  *a1 = *(v1 + 25);
}

uint64_t AchievementsByGameSortOption.displayName.getter()
{
  if (*v0 == 1)
  {
    if (qword_27F211618 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F39ECF8;
  }

  else
  {
    if (qword_27F211628 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F39ED18;
  }

  v2 = *v1;

  return v2;
}

uint64_t AchievementsByGameSortOption.id.getter()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x796C746E65636572;
  }
}

GameStoreKit::AchievementsByGameSortOption_optional __swiftcall AchievementsByGameSortOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EC3C75C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x796C746E65636572;
  }

  if (v2)
  {
    v4 = 0xEE00646579616C50;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x796C746E65636572;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEE00646579616C50;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EC3C808()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC3C890(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EC3C904()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC3C988@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24EC3C9E8(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (!*v1)
  {
    v2 = 0x796C746E65636572;
  }

  v3 = 0xEE00646579616C50;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24EC3CAEC(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  sub_24EC3DAA8();
  sub_24F91FD88();

  if (v2)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x796C746E65636572;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEE00646579616C50;
  }

  if (*(v1 + 24))
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x796C746E65636572;
  }

  if (*(v1 + 24))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEE00646579616C50;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      return sub_24F9280C8();
    }
  }

  return result;
}

void sub_24EC3CBFC(unsigned __int8 *a1)
{
  v2 = *a1;
  if (*(v1 + 24))
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x796C746E65636572;
  }

  if (*(v1 + 24))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEE00646579616C50;
  }

  if (v2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x796C746E65636572;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEE00646579616C50;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v11 = v1;
      sub_24EC3DAA8();
      sub_24F91FD78();

      return;
    }
  }

  v10 = *(v1 + 24);
  *(v1 + 24) = v2;
  LOBYTE(v11) = v10;
  sub_24EC3CAEC(&v11);
}

double sub_24EC3CD6C(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (sub_24F0CA424(*(v2 + 25), *a1))
  {
    v4 = *(v2 + 25);
    *(v2 + 25) = v3;
    swift_getKeyPath();
    sub_24EC3DAA8();
    sub_24F91FD88();

    if ((sub_24F0CA424(v4, *(v2 + 25)) & 1) == 0)
    {
      sub_24F9280C8();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EC3DAA8();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EC3CEB4(uint64_t a1, char a2)
{
  v3 = *(a1 + 25);
  *(a1 + 25) = a2;
  swift_getKeyPath();
  sub_24EC3DAA8();
  sub_24F91FD88();

  result = sub_24F0CA424(v3, *(a1 + 25));
  if ((result & 1) == 0)
  {
    return sub_24F9280C8();
  }

  return result;
}

uint64_t sub_24EC3CF50()
{
  swift_getKeyPath();
  sub_24EC3DAA8();
  sub_24F91FD88();

  if (*(v0 + 25) > 1u || *(v0 + 25))
  {
    v1 = sub_24F92CE08();

    if ((v1 & 1) == 0)
    {
      v3 = 1;
      return v3 & 1;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  sub_24F91FD88();

  if (*(v0 + 24))
  {
    v2 = sub_24F92CE08();

    v3 = v2 ^ 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_24EC3D100()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit32AchievementsByGameOptionProvider___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t AchievementsPlatformFilterOption.displayName.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      if (qword_27F211640 != -1)
      {
        swift_once();
      }

      v2 = &qword_27F39ED48;
    }

    else
    {
      if (qword_27F211638 != -1)
      {
        swift_once();
      }

      v2 = &qword_27F39ED38;
    }
  }

  else if (v1 == 2)
  {
    if (qword_27F211648 != -1)
    {
      swift_once();
    }

    v2 = &qword_27F39ED58;
  }

  else if (v1 == 3)
  {
    if (qword_27F211650 != -1)
    {
      swift_once();
    }

    v2 = &qword_27F39ED68;
  }

  else
  {
    if (qword_27F211658 != -1)
    {
      swift_once();
    }

    v2 = &qword_27F39ED78;
  }

  v3 = *v2;

  return v3;
}

uint64_t AchievementsPlatformFilterOption.id.getter()
{
  v1 = *v0;
  v2 = 7105633;
  v3 = 0x534F63616DLL;
  v4 = 1397716596;
  if (v1 != 3)
  {
    v4 = 0x534F6E6F69736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 5459817;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

GameStoreKit::AchievementsPlatformFilterOption_optional __swiftcall AchievementsPlatformFilterOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EC3D410()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC3D4D8(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EC3D58C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC3D65C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0xE500000000000000;
  v6 = 0x534F63616DLL;
  v7 = 0xE400000000000000;
  v8 = 1397716596;
  if (v2 != 3)
  {
    v8 = 0x534F6E6F69736976;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 5459817;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_24EC3D7A4()
{
  result = qword_27F22BF60;
  if (!qword_27F22BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BF60);
  }

  return result;
}

unint64_t sub_24EC3D82C()
{
  result = qword_27F22BF78;
  if (!qword_27F22BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BF78);
  }

  return result;
}

uint64_t type metadata accessor for AchievementsByGameOptionProvider(uint64_t a1)
{
  result = qword_27F22BF98;
  if (!qword_27F22BF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC3D914(uint64_t a1)
{
  result = sub_24F91FDC8();
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

unint64_t sub_24EC3D9D8()
{
  result = qword_27F22BFA8;
  if (!qword_27F22BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BFA8);
  }

  return result;
}

unint64_t sub_24EC3DA2C()
{
  result = qword_27F22BFB0;
  if (!qword_27F22BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BFB0);
  }

  return result;
}

unint64_t sub_24EC3DAA8()
{
  result = qword_27F215218;
  if (!qword_27F215218)
  {
    type metadata accessor for AchievementsByGameOptionProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215218);
  }

  return result;
}

uint64_t sub_24EC3DB08()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
  v4 = v2;
  return sub_24EC3CAEC(&v4);
}

uint64_t PurchaseRepresentation.PurchaseType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

double PurchaseRepresentation.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

double PurchaseRepresentation.parentAppAdamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;

  return result;
}

uint64_t PurchaseRepresentation.buyParameters.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PurchaseRepresentation.vendorName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t PurchaseRepresentation.appName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PurchaseRepresentation.bundleId.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t PurchaseRepresentation.preflightPackageUrl.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t PurchaseRepresentation.presentingSceneIdentifier.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t PurchaseRepresentation.init(purchaseType:adamId:parentAppAdamId:buyParameters:vendorName:appName:hasMessagesExtension:createsJobs:bundleId:additionalHeaders:preflightPackageUrl:isArcadeApp:forceWatchInstall:isMacOSCompatibleIOSApp:isVisionOSCompatibleIOSApp:presentingSceneIdentifier:appCapabilities:isDefaultBrowser:requiresExceptionRequest:contentRating:forceAskToBuyReason:metricsOverlay:remoteDownloadIdentifiers:hasMacIPAPackage:performanceMetricsOverlay:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, __int128 a13, __int128 a14, uint64_t a15, char a16, char a17, char a18, __int128 a19, uint64_t a20, char a21, char a22, uint64_t a23, char a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  result = *a1;
  v31 = *a2;
  v30 = a2[1];
  v32 = *a25;
  *a9 = result;
  *(a9 + 8) = v31;
  *(a9 + 16) = v30;
  *(a9 + 24) = *a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 89) = a12;
  *(a9 + 96) = a13;
  *(a9 + 112) = a14;
  *(a9 + 128) = a15;
  *(a9 + 136) = a16;
  *(a9 + 137) = a17;
  *(a9 + 138) = a18;
  *(a9 + 144) = a19;
  *(a9 + 160) = a20;
  *(a9 + 168) = a21;
  *(a9 + 169) = a22;
  *(a9 + 170) = v32;
  *(a9 + 176) = a23;
  *(a9 + 184) = a24 & 1;
  *(a9 + 200) = a29;
  *(a9 + 208) = a27;
  *(a9 + 192) = a26;
  return result;
}

uint64_t PurchaseRepresentation.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v223 = a2;
  v218 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v4 - 8);
  v217 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v213 = &v175 - v7;
  MEMORY[0x28223BE20](v8);
  v205 = &v175 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v10 - 8);
  v215 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v209 = &v175 - v13;
  MEMORY[0x28223BE20](v14);
  v198 = &v175 - v15;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v216 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v212 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v211 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v210 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v208 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v207 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v206 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v204 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v203 = &v175 - v34;
  MEMORY[0x28223BE20](v35);
  v202 = &v175 - v36;
  MEMORY[0x28223BE20](v37);
  v201 = &v175 - v38;
  MEMORY[0x28223BE20](v39);
  v222 = &v175 - v40;
  MEMORY[0x28223BE20](v41);
  v200 = &v175 - v42;
  MEMORY[0x28223BE20](v43);
  v195 = &v175 - v44;
  MEMORY[0x28223BE20](v45);
  v196 = &v175 - v46;
  MEMORY[0x28223BE20](v47);
  v199 = &v175 - v48;
  MEMORY[0x28223BE20](v49);
  v197 = &v175 - v50;
  MEMORY[0x28223BE20](v51);
  v219 = &v175 - v52;
  MEMORY[0x28223BE20](v53);
  v55 = &v175 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v175 - v57;
  MEMORY[0x28223BE20](v59);
  v61 = &v175 - v60;
  v62 = 0xE900000000000073;
  v63 = a1;
  sub_24F928398();
  v214 = sub_24F928348();
  v65 = v64;
  v68 = *(v17 + 8);
  v67 = (v17 + 8);
  v66 = v68;
  v68(v61, v16);
  v224 = v68;
  if (!v65)
  {
    v69 = 0x6D61726150797562;
    v73 = v63;
    v74 = v16;
LABEL_11:
    v94 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v95 = v69;
    v95[1] = v62;
    v95[2] = &type metadata for PurchaseRepresentation;
    (*(*(v94 - 8) + 104))(v95, *MEMORY[0x277D22530], v94);
    swift_willThrow();
    v96 = sub_24F9285B8();
    (*(*(v96 - 8) + 8))(v223, v96);
    return v224(v73, v74);
  }

  v221 = v65;
  v69 = 0x64496D616461;
  sub_24F928398();
  v70 = sub_24F928348();
  v72 = v71;
  v66(v58, v16);
  v73 = v63;
  v74 = v16;
  v75 = v72;
  v76 = v67;
  if (!v75)
  {
LABEL_10:

    v62 = 0xE600000000000000;
    goto LABEL_11;
  }

  v194 = v70;
  v225 = v70;
  v226 = v75;
  AdamId.numberValue.getter();
  if (!v77 || (v69 = 0x726F646E6576, v77, sub_24F928398(), v78 = sub_24F928348(), v80 = v79, v66(v55, v74), !v80))
  {

    goto LABEL_10;
  }

  v190 = v78;
  v81 = v219;
  sub_24F928398();
  v82 = sub_24F928348();
  v84 = v83;
  v66(v81, v74);
  v189 = v84;
  if (!v84)
  {
    v69 = 0x656D614E707061;

    v62 = 0xE700000000000000;
    goto LABEL_11;
  }

  v186 = v82;
  v85 = v197;
  sub_24F928398();
  v86 = v75;
  v87 = v198;
  sub_24F9282B8();
  v219 = v74;
  v88 = v87;
  v197 = v76;
  v66(v85, v74);
  v89 = sub_24F92AC28();
  v90 = *(v89 - 8);
  v91 = *(v90 + 48);
  v192 = v90 + 48;
  v191 = v91;
  v92 = v91(v88, 1, v89);
  v188 = v86;
  v187 = v80;
  v193 = v89;
  v185 = v90;
  v93 = v73;
  if (v92 == 1)
  {
    sub_24E601704(v88, &qword_27F2213B0, &qword_24F965EC0);
    LODWORD(v198) = 0;
  }

  else
  {
    v184 = v73;
    v98 = v220;
    v99 = sub_24F92ABB8();
    v220 = v98;
    (*(v90 + 8))(v88, v89);
    v100 = (v99 + 32);
    v198 = v99;
    v101 = *(v99 + 16);
    while (1)
    {
      if (!v101)
      {

        LODWORD(v198) = 0;
        goto LABEL_22;
      }

      v103 = *v100;
      if (v103 <= 3 && *v100 > 1u && v103 != 3)
      {
        break;
      }

      v102 = sub_24F92CE08();

      ++v100;
      --v101;
      if (v102)
      {
        goto LABEL_21;
      }
    }

LABEL_21:

    LODWORD(v198) = 1;
LABEL_22:
    v93 = v184;
    v66 = v224;
  }

  v104 = v205;
  v105 = v199;
  sub_24F928398();
  v106 = sub_24F928278();
  v66(v105, v219);
  if (v106 != 2 && (v106 & 1) != 0)
  {
    v107 = 2;
LABEL_32:
    LODWORD(v199) = v107;
    goto LABEL_34;
  }

  v108 = v196;
  sub_24F928398();
  v109 = sub_24F928278();
  v66(v108, v219);
  if (v109 != 2 && (v109 & 1) != 0)
  {
    v107 = 3;
    goto LABEL_32;
  }

  v110 = v195;
  sub_24F928398();
  v111 = sub_24F928278();
  v66(v110, v219);
  if (v111 != 2 && (v111 & 1) != 0)
  {
    v107 = 1;
    goto LABEL_32;
  }

  LODWORD(v199) = 0;
LABEL_34:
  v112 = v200;
  sub_24F928398();
  v227 = sub_24F928278();
  v113 = v227;
  v114 = v112;
  v115 = v219;
  v66(v114, v219);
  v180 = v113 == 2;
  v116 = v222;
  sub_24F928398();
  v196 = sub_24F928348();
  v195 = v117;
  v66(v116, v115);
  v118 = v201;
  sub_24F928398();
  sub_24F9281F8();
  v66(v118, v115);
  v119 = sub_24F928E68();
  v120 = *(v119 - 8);
  v121 = *(v120 + 48);
  v201 = (v120 + 48);
  v200 = v121;
  v122 = (v121)(v104, 1, v119);
  v205 = v119;
  v181 = v120;
  if (v122 == 1)
  {
    sub_24E601704(v104, qword_27F221C40, &unk_24F967D80);
    v184 = 0;
  }

  else
  {
    v184 = sub_24F928E48();
    (*(v120 + 8))(v104, v119);
  }

  v123 = v222;
  v176 = 0xD000000000000013;
  sub_24F928398();
  v183 = sub_24F928348();
  v182 = v124;
  v125 = v219;
  v126 = v224;
  v224(v123, v219);
  v127 = v202;
  sub_24F928398();
  v179 = sub_24F928278();
  v126(v127, v125);
  v128 = v203;
  sub_24F928398();
  LODWORD(v202) = sub_24F928278();
  v126(v128, v125);
  v129 = v204;
  sub_24F928398();
  LODWORD(v203) = sub_24F928278();
  v126(v129, v125);
  v130 = v206;
  sub_24F928398();
  v131 = sub_24F928348();
  v133 = v132;
  v126(v130, v125);
  v206 = v133;
  if (v133)
  {
    v134 = v131;
  }

  else
  {
    v134 = 0;
  }

  v177 = v134;
  sub_24F928398();
  v204 = sub_24F928348();
  v178 = v135;
  v126(v123, v125);
  v136 = v207;
  sub_24F928398();
  v137 = v209;
  sub_24F9282B8();
  v126(v136, v125);
  v138 = v193;
  if (v191(v137, 1, v193) == 1)
  {
    sub_24E601704(v137, &qword_27F2213B0, &qword_24F965EC0);
    v207 = 0;
  }

  else
  {
    v207 = sub_24F92ABB8();
    (*(v185 + 8))(v137, v138);
  }

  v139 = v208;
  sub_24F928398();
  LODWORD(v220) = sub_24F928278();
  v140 = v139;
  v141 = v219;
  v142 = v224;
  v224(v140, v219);
  v143 = v210;
  sub_24F928398();
  LODWORD(v209) = sub_24F928278();
  v142(v143, v141);
  v144 = v222;
  sub_24F928398();
  sub_24EC3F63C();
  sub_24F928248();
  v142(v144, v141);
  LODWORD(v210) = v225;
  sub_24F928398();
  v208 = sub_24F928358();
  LODWORD(v176) = v145;
  v142(v144, v141);
  v146 = v211;
  v147 = v93;
  sub_24F928398();
  v148 = v213;
  sub_24F9281F8();
  v142(v146, v141);
  v149 = v205;
  if ((v200)(v148, 1, v205) == 1)
  {
    sub_24E601704(v148, qword_27F221C40, &unk_24F967D80);
    v150 = v215;
  }

  else
  {
    v151 = sub_24F928E48();
    (*(v181 + 8))(v148, v149);
    v150 = v215;
    if (v151)
    {
      goto LABEL_47;
    }
  }

  v151 = sub_24E608448(MEMORY[0x277D84F90]);

LABEL_47:
  v152 = v193;
  v153 = v212;
  sub_24F928398();
  sub_24F9282B8();
  v224(v153, v219);
  if (v191(v150, 1, v152) == 1)
  {
    sub_24E601704(v150, &qword_27F2213B0, &qword_24F965EC0);
    v154 = 0;
  }

  else
  {
    v154 = sub_24F92ABB8();
    (*(v185 + 8))(v150, v152);
  }

  v155 = v180 | v227;
  v156 = v216;
  sub_24F928398();
  v157 = v217;
  sub_24F9281F8();
  v224(v156, v219);
  v158 = v205;
  if ((v200)(v157, 1, v205) == 1)
  {
    sub_24E601704(v157, qword_27F221C40, &unk_24F967D80);
    v159 = v188;
LABEL_54:
    v161 = sub_24E608448(MEMORY[0x277D84F90]);
    v163 = sub_24F9285B8();
    (*(*(v163 - 8) + 8))(v223, v163);
    v224(v147, v219);

    goto LABEL_55;
  }

  v160 = v157;
  v161 = sub_24F928E48();
  (*(v181 + 8))(v160, v158);
  v159 = v188;
  if (!v161)
  {
    goto LABEL_54;
  }

  v162 = sub_24F9285B8();
  (*(*(v162 - 8) + 8))(v223, v162);
  result = v224(v147, v219);
LABEL_55:
  v164 = v221;
  v165 = v218;
  *v218 = v199;
  *(v165 + 1) = v194;
  *(v165 + 2) = v159;
  v166 = v179 & 1;
  v167 = v202 & 1;
  v168 = v203 & 1;
  v169 = v220 & 1;
  v170 = v209 & 1;
  v171 = v176 & 1;
  *(v165 + 3) = v177;
  *(v165 + 4) = v206;
  *(v165 + 5) = v214;
  *(v165 + 6) = v164;
  v172 = v187;
  *(v165 + 7) = v190;
  *(v165 + 8) = v172;
  v173 = v189;
  *(v165 + 9) = v186;
  *(v165 + 10) = v173;
  v165[88] = v198;
  v165[89] = v155 & 1;
  *(v165 + 12) = v196;
  *(v165 + 13) = v195;
  *(v165 + 14) = v184;
  *(v165 + 15) = v183;
  *(v165 + 16) = v182;
  v165[136] = v166;
  v165[137] = v167;
  v165[138] = v168;
  v174 = v178;
  *(v165 + 18) = v204;
  *(v165 + 19) = v174;
  *(v165 + 20) = v207;
  v165[168] = v169;
  v165[169] = v170;
  v165[170] = v210;
  *(v165 + 22) = v208;
  v165[184] = v171;
  *(v165 + 24) = v151;
  *(v165 + 25) = v161;
  *(v165 + 26) = v154;
  return result;
}

unint64_t sub_24EC3F63C()
{
  result = qword_27F22BFB8;
  if (!qword_27F22BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BFB8);
  }

  return result;
}

unint64_t sub_24EC3F694()
{
  result = qword_27F22BFC0;
  if (!qword_27F22BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BFC0);
  }

  return result;
}

uint64_t sub_24EC3F6E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_24EC3F730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC3F7DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C0B0, &qword_24F98F660);
  sub_24EC4036C(&qword_27F22C0B8, &qword_27F22C0B0, &qword_24F98F660);
  sub_24EC403C0();
  return sub_24F9269E8();
}

uint64_t sub_24EC3F888(uint64_t a1)
{
  v2 = sub_24F921B58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for FocusableActionModifier(0);
  sub_24E7538CC(a1 + *(v6 + 24), &v10);
  if (v11)
  {
    sub_24E612C80(&v10, v12);
    sub_24F7695C8(&v10);
    if (v11)
    {
      __swift_project_boxed_opaque_existential_1(&v10, v11);
      sub_24F76973C(v5);
      sub_24F9218A8();
      (*(v3 + 8))(v5, v2);
      __swift_destroy_boxed_opaque_existential_1(v12);
      return __swift_destroy_boxed_opaque_existential_1(&v10);
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = &unk_27F212740;
    v9 = &unk_24F940730;
  }

  else
  {
    v8 = qword_27F21B590;
    v9 = &unk_24F93BE30;
  }

  return sub_24E601704(&v10, v8, v9);
}

uint64_t sub_24EC3FA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  sub_24EC3FFC4(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_24EC40180(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C080, &qword_24F98F5B0);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22C088, &unk_24F98F5B8);
  v12 = (a3 + *(result + 36));
  *v12 = sub_24EC401E4;
  v12[1] = v9;
  return result;
}

uint64_t sub_24EC3FC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_24EC3FD38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

uint64_t type metadata accessor for FocusableActionModifier(uint64_t a1)
{
  result = qword_27F22C040;
  if (!qword_27F22C040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC3FE50(uint64_t a1)
{
  sub_24EC3FF44(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24E6D74E4(319);
    if (v2 <= 0x3F)
    {
      sub_24EC3FF44(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EC3FF44(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24EC3FFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusableActionModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC40028()
{
  v1 = type metadata accessor for FocusableActionModifier(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + v2));
    }
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = (v3 + *(v1 + 24));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_24EC40180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusableActionModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC401E4()
{
  v1 = *(type metadata accessor for FocusableActionModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24EC3F888(v2);
}

unint64_t sub_24EC40258()
{
  result = qword_27F22C098;
  if (!qword_27F22C098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22C088, &unk_24F98F5B8);
    sub_24EC4036C(&qword_27F22C0A0, &qword_27F22C080, &qword_24F98F5B0);
    sub_24EC402FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C098);
  }

  return result;
}

unint64_t sub_24EC402FC()
{
  result = qword_27F22C0A8;
  if (!qword_27F22C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C0A8);
  }

  return result;
}

uint64_t sub_24EC4036C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_24EC403C0()
{
  result = qword_27F22C0C0;
  if (!qword_27F22C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C0C0);
  }

  return result;
}

uint64_t sub_24EC40424()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C0B0, &qword_24F98F660);
  sub_24EC4036C(&qword_27F22C0B8, &qword_27F22C0B0, &qword_24F98F660);
  sub_24EC403C0();
  return swift_getOpaqueTypeConformance2();
}

void *sub_24EC404C0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for UIPressGestureRecognizer.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV12GameStoreKit24UIPressGestureRecognizer11Coordinator_action];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

id sub_24EC40544(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C0C8, &qword_24F98F6C0);
  sub_24F925798();
  v2 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v7 action:sel_handleGesture];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F941C80;
  v4 = v2;
  *(v3 + 32) = sub_24F92BB08();
  sub_24E9421D0();
  v5 = sub_24F92B588();

  [v4 setAllowedPressTypes_];

  return v4;
}

void sub_24EC40664(uint64_t (*a1)(void))
{
  v1 = off_28620C6F8[0];
  v2 = a1(0);
  v1(v2, &protocol witness table for GenericPage);
  v4 = v3;
  v15 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 32;
    v13 = v3 + 32;
    do
    {
      v8 = v7 + 40 * v6;
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v4 + 16))
        {
          __break(1u);
          return;
        }

        sub_24E65864C(v8, v14);
        off_28620C700(v2, &protocol witness table for GenericPage);
        if (*(v10 + 16))
        {
          sub_24E76D934(v14);
          if (v11)
          {
            break;
          }
        }

        ++v9;

        sub_24E6585F8(v14);
        v8 += 40;
        if (v5 == v9)
        {
          goto LABEL_11;
        }
      }

      v12 = sub_24E6585F8(v14);
      MEMORY[0x253050F00](v12);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v6 = v9 + 1;
      sub_24F92B638();
      v7 = v13;
    }

    while (v5 - 1 != v9);
  }

LABEL_11:
}

uint64_t ReviewsPage.SortOption.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReviewsPage.SortOption.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ReviewsPage.SortOption.selectedActionTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ReviewsPage.SortOption.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *ReviewsPage.SortOption.__allocating_init(id:title:selectedActionTitle:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = a3;
  *(v14 + 5) = a4;
  *(v14 + 6) = a5;
  *(v14 + 7) = a6;
  v15 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
  v16 = sub_24F91F4A8();
  (*(*(v16 - 8) + 32))(&v14[v15], a7, v16);
  return v14;
}

char *ReviewsPage.SortOption.init(id:title:selectedActionTitle:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  *(v7 + 5) = a4;
  *(v7 + 6) = a5;
  *(v7 + 7) = a6;
  v9 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
  v10 = sub_24F91F4A8();
  (*(*(v10 - 8) + 32))(&v7[v9], a7, v10);
  return v7;
}

uint64_t ReviewsPage.SortOption.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReviewsPage.SortOption.init(deserializing:using:)(a1, a2);
  return v4;
}

char *ReviewsPage.SortOption.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v58 = *v2;
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v47 - v5;
  v6 = sub_24F91F4A8();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = 0xE200000000000000;
  sub_24F928398();
  v51 = sub_24F928348();
  v22 = v21;
  v23 = *(v9 + 8);
  v23(v19, v8);
  if (v22)
  {
    v57 = v22;
    v24 = 0x656C746974;
    sub_24F928398();
    v25 = sub_24F928348();
    v27 = v26;
    v23(v16, v8);
    v28 = a1;
    if (v27)
    {
      v49 = v25;
      v50 = v27;
      v24 = 0xD000000000000013;
      v20 = 0x800000024FA57B10;
      sub_24F928398();
      v48 = sub_24F928348();
      v30 = v29;
      v23(v13, v8);
      v31 = v60;
      if (v30)
      {
        v47 = v30;
        v32 = v53;
        sub_24F928398();
        v33 = v56;
        sub_24F928268();
        v23(v32, v8);
        v34 = v8;
        v36 = v54;
        v35 = v55;
        if ((*(v54 + 48))(v33, 1, v55) != 1)
        {
          v41 = sub_24F9285B8();
          (*(*(v41 - 8) + 8))(v59, v41);
          v23(v28, v34);
          v42 = *(v36 + 32);
          v43 = v52;
          v42(v52, v33, v35);
          v44 = v57;
          *(v31 + 2) = v51;
          *(v31 + 3) = v44;
          v45 = v50;
          *(v31 + 4) = v49;
          *(v31 + 5) = v45;
          v46 = v47;
          *(v31 + 6) = v48;
          *(v31 + 7) = v46;
          v42(&v31[OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url], v43, v35);
          return v31;
        }

        sub_24E601704(v33, &qword_27F228530, &unk_24F93C6E0);
        v20 = 0xE300000000000000;
        v24 = 7107189;
        v8 = v34;
      }

      else
      {
      }
    }

    else
    {

      v20 = 0xE500000000000000;
      v31 = v60;
    }
  }

  else
  {
    v28 = a1;
    v31 = v60;
    v24 = 25705;
  }

  v37 = sub_24F92AC38();
  sub_24EC43FEC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
  swift_allocError();
  *v38 = v24;
  v38[1] = v20;
  v38[2] = v58;
  (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
  swift_willThrow();
  v39 = sub_24F9285B8();
  (*(*(v39 - 8) + 8))(v59, v39);
  v23(v28, v8);
  type metadata accessor for ReviewsPage.SortOption(0);
  swift_deallocPartialClassInstance();
  return v31;
}

uint64_t ReviewsPage.SortOption.deinit()
{

  v1 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ReviewsPage.SortOption.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC12GameStoreKit11ReviewsPage10SortOption_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

char *sub_24EC41200@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ReviewsPage.SortOption(0);
  v7 = swift_allocObject();
  result = ReviewsPage.SortOption.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t ReviewsPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v173 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v3 - 8);
  v145 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v153 = &v136 - v6;
  MEMORY[0x28223BE20](v7);
  v154 = &v136 - v8;
  MEMORY[0x28223BE20](v9);
  v156 = &v136 - v10;
  v159 = sub_24F928818();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v155 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v166 = &v136 - v13;
  MEMORY[0x28223BE20](v14);
  v157 = &v136 - v15;
  MEMORY[0x28223BE20](v16);
  v167 = &v136 - v17;
  v18 = sub_24F9285B8();
  v19 = *(v18 - 8);
  v174 = v18;
  v175 = v19;
  MEMORY[0x28223BE20](v18);
  v162 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v165 = &v136 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v136 - v24;
  v26 = sub_24F92AC28();
  v171 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v161 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v169 = &v136 - v29;
  v30 = sub_24F928388();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v152 = &v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v151 = &v136 - v34;
  MEMORY[0x28223BE20](v35);
  v149 = &v136 - v36;
  MEMORY[0x28223BE20](v37);
  v148 = &v136 - v38;
  MEMORY[0x28223BE20](v39);
  v147 = &v136 - v40;
  MEMORY[0x28223BE20](v41);
  v146 = &v136 - v42;
  MEMORY[0x28223BE20](v43);
  v160 = &v136 - v44;
  MEMORY[0x28223BE20](v45);
  v163 = &v136 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v136 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v136 - v51;
  v53 = a1;
  sub_24F928398();
  v150 = sub_24F928348();
  v55 = v54;
  v58 = *(v31 + 8);
  v57 = v31 + 8;
  v56 = v58;
  v58(v52, v30);
  v168 = v55;
  if (v55)
  {
    v59 = v172;
    v170 = v53;
    sub_24F928398();
    sub_24F9282B8();
    v60 = v49;
    v61 = v56;
    v56(v60, v30);
    v62 = v171;
    if ((*(v171 + 48))(v25, 1, v26) == 1)
    {

      sub_24E601704(v25, &qword_27F2213B0, &qword_24F965EC0);
      v63 = sub_24F92AC38();
      sub_24EC43FEC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      *v64 = 0x7365766C656873;
      v64[1] = 0xE700000000000000;
      v64[2] = v59;
      (*(*(v63 - 8) + 104))(v64, *MEMORY[0x277D22530], v63);
      swift_willThrow();
      v65 = v175 + 8;
      (*(v175 + 8))(v173, v174);
      v61(v170, v30);
    }

    else
    {
      v68 = v26;
      v142 = v61;
      v143 = v57;
      v144 = v30;
      v69 = v169;
      (*(v62 + 32))(v169, v25, v26);
      (*(v62 + 16))(v161, v69, v26);
      v70 = v174;
      v71 = *(v175 + 16);
      v72 = v165;
      v73 = v173;
      v71(v165, v173, v174);
      type metadata accessor for Shelf(0);
      sub_24EC43FEC(&qword_27F2265E0, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
      v161 = sub_24F92B6A8();
      v65 = 0xEB00000000736369;
      v172 = v68;
      sub_24F928398();
      v71(v72, v73, v70);
      type metadata accessor for ReviewsPage.SortOption(0);
      sub_24EC43FEC(&qword_27F22C0D0, type metadata accessor for ReviewsPage.SortOption, &protocol conformance descriptor for ReviewsPage.SortOption);
      v141 = sub_24F92B698();
      sub_24F928398();
      v140 = v71;
      v71(v162, v73, v70);
      v74 = v164;
      sub_24F928788();
      if (v74)
      {

        (*(v175 + 8))(v73, v70);
        v142(v170, v144);
        (*(v171 + 8))(v169, v172);
      }

      else
      {
        v139 = 0;
        type metadata accessor for PageRenderMetricsEvent();
        sub_24F928398();
        v75 = v140;
        v140(v72, v73, v70);
        sub_24EC43FEC(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent, &protocol conformance descriptor for PageRenderMetricsEvent);
        sub_24F929548();
        v160 = v177;
        type metadata accessor for Ratings(0);
        sub_24F928398();
        v75(v72, v73, v70);
        v164 = &protocol conformance descriptor for ProductRatingsAndReviewsComponent;
        sub_24EC43FEC(&qword_27F213ED0, type metadata accessor for Ratings, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
        sub_24F929548();
        v162 = v177;
        type metadata accessor for ProductReviewActions(0);
        sub_24F928398();
        v75(v72, v73, v70);
        sub_24EC43FEC(&qword_27F22C0D8, type metadata accessor for ProductReviewActions, v164);
        sub_24F929548();
        v164 = v177;
        type metadata accessor for FlowAction(0);
        sub_24F928398();
        v75(v72, v73, v70);
        sub_24EC43FEC(&qword_27F22C0E0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
        sub_24F929548();
        v165 = v177;
        v76 = v146;
        sub_24F928398();
        v163 = sub_24F928348();
        v140 = v77;
        v78 = v144;
        v79 = v142;
        v142(v76, v144);
        v80 = v147;
        sub_24F928398();
        v146 = sub_24F928348();
        v138 = v81;
        v79(v80, v78);
        v82 = v148;
        sub_24F928398();
        v83 = sub_24F928348();
        v147 = v84;
        v79(v82, v78);
        v85 = v149;
        sub_24F928398();
        v148 = sub_24F928348();
        v137 = v86;
        v79(v85, v78);
        v87 = v151;
        sub_24F928398();
        v88 = sub_24F928278();
        v79(v87, v78);
        v89 = v152;
        sub_24F928398();
        sub_24F928368();
        v79(v89, v78);
        v90 = *(v158 + 16);
        v91 = v157;
        v92 = v159;
        v90(v157, v167, v159);
        v152 = v90;
        type metadata accessor for ReviewsPage(0);
        v65 = swift_allocObject();
        v93 = (v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
        v94 = v168;
        *v93 = v150;
        v93[1] = v94;
        v95 = (v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
        v96 = v138;
        *v95 = v146;
        v95[1] = v96;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions) = v141;
        v97 = (v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
        v98 = v147;
        *v97 = v83;
        v97[1] = v98;
        v99 = (v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
        v100 = v137;
        *v99 = v148;
        v99[1] = v100;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings) = v162;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions) = v164;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) = v88 & 1;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction) = v165;
        sub_24E60169C(&v177, v176, &qword_27F2129B0, &unk_24F945320);
        v90(v166, v91, v92);
        v101 = v156;
        (*(v175 + 56))(v156, 1, 1, v174);
        v102 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

        v103 = sub_24EEF0A68(v161);
        v105 = v104;

        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v103;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v105;
        v106 = (v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
        v107 = v140;
        *v106 = v163;
        v106[1] = v107;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
        sub_24E60169C(v176, v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
        swift_beginAccess();
        *(v65 + v102) = 0;
        v108 = v101;
        *(v65 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
        v109 = v155;
        v110 = v152;
        (v152)(v155, v166, v92);
        v111 = v154;
        sub_24E60169C(v108, v154, &qword_27F2218B0, &unk_24F975980);
        *(v65 + 16) = 0;
        v110(v65 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v109, v92);
        *(v65 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v160;
        v112 = v153;
        sub_24E60169C(v111, v153, &qword_27F2218B0, &unk_24F975980);
        v113 = v174;
        v114 = v175;
        v168 = *(v175 + 48);
        if (v168(v112, 1, v174) == 1)
        {

          (*(v114 + 8))(v173, v113);
          v142(v170, v144);
          sub_24E601704(v111, &qword_27F2218B0, &unk_24F975980);
          v115 = v108;
          v116 = *(v158 + 8);
          v117 = v109;
          v118 = v159;
          v116(v117, v159);
          sub_24E601704(v115, &qword_27F2218B0, &unk_24F975980);
          v116(v166, v118);
          sub_24E601704(v176, &qword_27F2129B0, &unk_24F945320);
          v116(v157, v118);
          sub_24E601704(&v177, &qword_27F2129B0, &unk_24F945320);
          v116(v167, v118);
          (*(v171 + 8))(v169, v172);
          v119 = v112;
        }

        else
        {
          v120 = v113;
          v121 = qword_27F2105F0;

          if (v121 != -1)
          {
            swift_once();
          }

          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
          __swift_project_value_buffer(v122, qword_27F22D8D8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
          sub_24F9285C8();
          v123 = v178;
          v124 = v158;
          v125 = v154;
          if (v178)
          {
          }

          v127 = v114 + 8;
          v126 = *(v114 + 8);
          v126(v153, v120);
          if (!v123)
          {

            v126(v173, v120);
            v142(v170, v144);
            sub_24E601704(v125, &qword_27F2218B0, &unk_24F975980);
            v131 = *(v124 + 8);
            v132 = v159;
            v131(v155, v159);
            sub_24E601704(v156, &qword_27F2218B0, &unk_24F975980);
            v131(v166, v132);
            sub_24E601704(v176, &qword_27F2129B0, &unk_24F945320);
            v131(v157, v132);
            sub_24E601704(&v177, &qword_27F2129B0, &unk_24F945320);
            v131(v167, v132);
            (*(v171 + 8))(v169, v172);
            return v65;
          }

          v128 = v145;
          sub_24E60169C(v125, v145, &qword_27F2218B0, &unk_24F975980);
          if (v168(v128, 1, v120) != 1)
          {
            sub_24ECDF110();

            v175 = v127;
            v126(v173, v120);
            v142(v170, v144);
            sub_24E601704(v125, &qword_27F2218B0, &unk_24F975980);
            v133 = *(v124 + 8);
            v134 = v159;
            v133(v155, v159);
            sub_24E601704(v156, &qword_27F2218B0, &unk_24F975980);
            v133(v166, v134);
            sub_24E601704(v176, &qword_27F2129B0, &unk_24F945320);
            v133(v157, v134);
            sub_24E601704(&v177, &qword_27F2129B0, &unk_24F945320);
            v133(v167, v134);
            (*(v171 + 8))(v169, v172);
            v126(v145, v120);
            return v65;
          }

          v126(v173, v120);
          v142(v170, v144);
          sub_24E601704(v125, &qword_27F2218B0, &unk_24F975980);
          v129 = *(v124 + 8);
          v130 = v159;
          v129(v155, v159);
          sub_24E601704(v156, &qword_27F2218B0, &unk_24F975980);
          v129(v166, v130);
          sub_24E601704(v176, &qword_27F2129B0, &unk_24F945320);
          v129(v157, v130);
          sub_24E601704(&v177, &qword_27F2129B0, &unk_24F945320);
          v129(v167, v130);
          (*(v171 + 8))(v169, v172);
          v119 = v128;
        }

        sub_24E601704(v119, &qword_27F2218B0, &unk_24F975980);
      }
    }
  }

  else
  {
    v65 = sub_24F92AC38();
    sub_24EC43FEC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v66 = 0x64496D616461;
    v67 = v172;
    v66[1] = 0xE600000000000000;
    v66[2] = v67;
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x277D22530], v65);
    swift_willThrow();
    (*(v175 + 8))(v173, v174);
    v56(v53, v30);
  }

  return v65;
}

uint64_t ReviewsPage.__allocating_init(adamId:title:targetReviewId:shelves:sortOptions:initialSortOptionIdentifier:sortActionSheetTitle:ratings:productReviewActions:alwaysAllowReviews:loadCompletedAction:nextPage:pageMetrics:pageRenderEvent:trailingNavBarAction:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v88 = a8;
  v86 = a7;
  v80 = a6;
  v83 = a4;
  v84 = a5;
  v89 = a3;
  v81 = a2;
  v93 = a19;
  v90 = a18;
  v87 = a15;
  LODWORD(v85) = a14;
  v79 = a11;
  v78 = a10;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v20 - 8);
  v76 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v82 = &v75 - v23;
  MEMORY[0x28223BE20](v24);
  v92 = &v75 - v25;
  MEMORY[0x28223BE20](v26);
  v95 = &v75 - v27;
  v28 = sub_24F928818();
  v77 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v91 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v75 - v32;
  v94 = &v75 - v32;
  v34 = swift_allocObject();
  v35 = a1[1];
  v36 = (v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
  *v36 = *a1;
  v36[1] = v35;
  v37 = (v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
  v38 = v84;
  *v37 = v83;
  v37[1] = v38;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions) = v86;
  v39 = (v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
  *v39 = v88;
  v39[1] = a9;
  v40 = (v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
  v41 = v79;
  *v40 = v78;
  v40[1] = v41;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings) = a12;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions) = a13;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) = v85;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction) = v93;
  v88 = a16;
  sub_24E60169C(a16, v97, &qword_27F2129B0, &unk_24F945320);
  v83 = v29;
  v84 = a17;
  v42 = *(v29 + 16);
  v42(v33, a17, v28);
  v43 = sub_24F9285B8();
  v44 = *(v43 - 8);
  v45 = v95;
  (*(v44 + 56))(v95, 1, 1, v43);
  v46 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v85 = a12;

  v86 = a13;

  v47 = sub_24EEF0A68(v80);
  v49 = v48;

  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v47;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v49;
  v50 = v91;
  v51 = v92;
  v52 = (v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v53 = v89;
  *v52 = v81;
  v52[1] = v53;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
  sub_24E60169C(v97, v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v34 + v46) = 0;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v54 = v77;
  v42(v50, v94, v77);
  sub_24E60169C(v45, v51, &qword_27F2218B0, &unk_24F975980);
  *(v34 + 16) = 0;
  v42((v34 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v50, v54);
  *(v34 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v90;
  v55 = v82;
  sub_24E60169C(v51, v82, &qword_27F2218B0, &unk_24F975980);
  v89 = v44;
  v56 = *(v44 + 48);
  if (v56(v55, 1, v43) == 1)
  {

    v57 = *(v83 + 8);
    v57(v84, v54);
    sub_24E601704(v88, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v51, &qword_27F2218B0, &unk_24F975980);
    v57(v50, v54);
    sub_24E601704(v95, &qword_27F2218B0, &unk_24F975980);
    v57(v94, v54);
    sub_24E601704(v97, &qword_27F2129B0, &unk_24F945320);
    v58 = v55;
    v59 = &qword_27F2218B0;
    v60 = &unk_24F975980;
  }

  else
  {
    v81 = v43;
    v61 = v54;
    v62 = v83;
    v63 = qword_27F2105F0;

    if (v63 != -1)
    {
      swift_once();
    }

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v64, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v65 = v96;
    v66 = v76;
    if (v96)
    {
    }

    v67 = *(v89 + 8);
    v68 = v81;
    v89 += 8;
    v82 = v67;
    (v67)(v55, v81);
    v69 = v84;
    if (v65)
    {
      v70 = v92;
      sub_24E60169C(v92, v66, &qword_27F2218B0, &unk_24F975980);
      if (v56(v66, 1, v68) != 1)
      {
        sub_24ECDF110();

        v74 = *(v62 + 8);
        v74(v69, v61);
        sub_24E601704(v88, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v70, &qword_27F2218B0, &unk_24F975980);
        v74(v91, v61);
        sub_24E601704(v95, &qword_27F2218B0, &unk_24F975980);
        v74(v94, v61);
        sub_24E601704(v97, &qword_27F2129B0, &unk_24F945320);
        (v82)(v66, v68);
        return v34;
      }

      v71 = *(v62 + 8);
      v71(v69, v61);
      sub_24E601704(v88, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v70, &qword_27F2218B0, &unk_24F975980);
      v71(v91, v61);
      sub_24E601704(v95, &qword_27F2218B0, &unk_24F975980);
      v71(v94, v61);
      sub_24E601704(v97, &qword_27F2129B0, &unk_24F945320);
      v58 = v66;
      v59 = &qword_27F2218B0;
      v60 = &unk_24F975980;
    }

    else
    {

      v72 = *(v62 + 8);
      v72(v69, v61);
      sub_24E601704(v88, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v92, &qword_27F2218B0, &unk_24F975980);
      v72(v91, v61);
      sub_24E601704(v95, &qword_27F2218B0, &unk_24F975980);
      v72(v94, v61);
      v58 = v97;
      v59 = &qword_27F2129B0;
      v60 = &unk_24F945320;
    }
  }

  sub_24E601704(v58, v59, v60);
  return v34;
}

uint64_t ReviewsPage.init(adamId:title:targetReviewId:shelves:sortOptions:initialSortOptionIdentifier:sortActionSheetTitle:ratings:productReviewActions:alwaysAllowReviews:loadCompletedAction:nextPage:pageMetrics:pageRenderEvent:trailingNavBarAction:)(void *a1, uint64_t a2, char *a3, void (*a4)(char *, uint64_t, uint64_t), void (*a5)(char *, uint64_t, uint64_t), unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v96 = a8;
  v94 = a7;
  v87 = a6;
  v89 = a5;
  v86 = a4;
  v95 = a3;
  v91 = a2;
  v97 = a18;
  v93 = a15;
  v100 = a13;
  v101 = a19;
  LODWORD(v92) = a14;
  v85 = a11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v22 - 8);
  v84 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v88 = &v84 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v84 - v27;
  MEMORY[0x28223BE20](v28);
  v102 = &v84 - v29;
  v30 = sub_24F928818();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v98 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v84 - v34;
  v36 = a1[1];
  v37 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
  *v37 = *a1;
  v37[1] = v36;
  v38 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
  v39 = v89;
  *v38 = v86;
  v38[1] = v39;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions) = v94;
  v40 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
  *v40 = v96;
  v40[1] = a9;
  v41 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
  v42 = v85;
  *v41 = a10;
  v41[1] = v42;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings) = a12;
  v43 = v101;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions) = v100;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) = v92;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction) = v43;
  v90 = a16;
  sub_24E60169C(a16, v104, &qword_27F2129B0, &unk_24F945320);
  v89 = v31;
  v86 = *(v31 + 16);
  v94 = a17;
  v86(v35, a17, v30);
  v96 = sub_24F9285B8();
  v44 = *(v96 - 8);
  v45 = v102;
  (*(v44 + 56))(v102, 1, 1, v96);
  v46 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v92 = a12;

  v47 = sub_24EEF0A68(v87);
  v49 = v48;

  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v47;
  v50 = v45;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v49;
  v51 = (v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v52 = v95;
  *v51 = v91;
  v51[1] = v52;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
  sub_24E60169C(v104, v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v20 + v46) = 0;
  v53 = v97;

  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v54 = v98;
  v95 = v35;
  v55 = v86;
  v86(v98, v35, v30);
  v56 = v50;
  v57 = v99;
  sub_24E60169C(v56, v99, &qword_27F2218B0, &unk_24F975980);
  *(v20 + 16) = 0;
  v91 = v30;
  v55((v20 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v54, v30);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v53;
  v58 = v88;
  sub_24E60169C(v57, v88, &qword_27F2218B0, &unk_24F975980);
  v87 = v44;
  v59 = *(v44 + 48);
  if (v59(v58, 1, v96) == 1)
  {

    v60 = *(v89 + 1);
    v61 = v91;
    v60(v94, v91);
    sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v57, &qword_27F2218B0, &unk_24F975980);
    v60(v54, v61);
    sub_24E601704(v102, &qword_27F2218B0, &unk_24F975980);
    v60(v95, v61);
    sub_24E601704(v104, &qword_27F2129B0, &unk_24F945320);
    v62 = v58;
    v63 = &qword_27F2218B0;
    v64 = &unk_24F975980;
  }

  else
  {
    v65 = v58;
    v66 = v89;
    v67 = qword_27F2105F0;

    if (v67 != -1)
    {
      swift_once();
    }

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v68, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v69 = v103;
    v70 = v66;
    if (v103)
    {
    }

    v71 = v87 + 8;
    v72 = *(v87 + 8);
    v73 = v96;
    v72(v65, v96);
    v74 = v84;
    if (v69)
    {
      v75 = v99;
      sub_24E60169C(v99, v84, &qword_27F2218B0, &unk_24F975980);
      if (v59(v74, 1, v73) != 1)
      {
        v87 = v71;
        v81 = v74;
        sub_24ECDF110();

        v82 = v91;
        v83 = *(v70 + 1);
        v83(v94, v91);
        sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v75, &qword_27F2218B0, &unk_24F975980);
        v83(v98, v82);
        sub_24E601704(v102, &qword_27F2218B0, &unk_24F975980);
        v83(v95, v82);
        sub_24E601704(v104, &qword_27F2129B0, &unk_24F945320);
        v72(v81, v73);
        return v20;
      }

      v76 = *(v70 + 1);
      v77 = v91;
      v76(v94, v91);
      sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v75, &qword_27F2218B0, &unk_24F975980);
      v76(v98, v77);
      sub_24E601704(v102, &qword_27F2218B0, &unk_24F975980);
      v76(v95, v77);
      sub_24E601704(v104, &qword_27F2129B0, &unk_24F945320);
      v62 = v74;
      v63 = &qword_27F2218B0;
      v64 = &unk_24F975980;
    }

    else
    {

      v78 = *(v70 + 1);
      v79 = v91;
      v78(v94, v91);
      sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v99, &qword_27F2218B0, &unk_24F975980);
      v78(v98, v79);
      sub_24E601704(v102, &qword_27F2218B0, &unk_24F975980);
      v78(v95, v79);
      v62 = v104;
      v63 = &qword_27F2129B0;
      v64 = &unk_24F945320;
    }
  }

  sub_24E601704(v62, v63, v64);
  return v20;
}

uint64_t sub_24EC43FEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double ReviewsPage.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
  a1[1] = v2;

  return result;
}

uint64_t ReviewsPage.targetReviewId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);

  return v1;
}

uint64_t ReviewsPage.initialSortOptionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);

  return v1;
}

uint64_t ReviewsPage.sortActionSheetTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);

  return v1;
}

uint64_t sub_24EC441D4(uint64_t a1)
{
  v2 = v1;
  v188 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v4 - 8);
  v179 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v182 = &v166 - v7;
  MEMORY[0x28223BE20](v8);
  v181 = &v166 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v166 - v11;
  MEMORY[0x28223BE20](v13);
  v180 = &v166 - v14;
  MEMORY[0x28223BE20](v15);
  v184 = &v166 - v16;
  MEMORY[0x28223BE20](v17);
  v185 = &v166 - v18;
  MEMORY[0x28223BE20](v19);
  v190 = &v166 - v20;
  v21 = sub_24F928818();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v166 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v166 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v166 - v29;
  MEMORY[0x28223BE20](v31);
  v183 = (&v166 - v32);
  MEMORY[0x28223BE20](v33);
  v193 = (&v166 - v34);
  MEMORY[0x28223BE20](v35);
  v191 = &v166 - v36;
  v186 = type metadata accessor for ReviewsPage(0);
  v37 = swift_dynamicCastClass();
  v38 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId + 8);
  v187 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
  v40 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v39 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  v192 = v22;
  v194 = v21;
  v189 = v40;
  if (v37)
  {
    v41 = v37;
    v42 = v188;
    v43 = v21;
    v44 = v38;
    v45 = v39;
    if (!v39)
    {
      v189 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    }

    v181 = v45;
    v46 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId + 8);
    if (v46)
    {
      v176 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
      v175 = v46;
    }

    else
    {
      v61 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId + 8);
      v176 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
      v175 = v61;
    }

    v62 = ShelfBasedPage.shelves.getter(v42, &protocol witness table for GenericPage);
    sub_24EC40664(type metadata accessor for ReviewsPage);
    sub_24EC45D60(v62, v63);
    v179 = v64;

    v177 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions);
    v65 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
    if (v65)
    {
      v188 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
      v171 = v65;
    }

    else
    {
      v66 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
      v188 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
      v171 = v66;
    }

    v67 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle + 8);
    v178 = v65;
    v174 = v67;
    if (v67)
    {
      v169 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
      v168 = v67;
    }

    else
    {
      v68 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle + 8);
      v169 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
      v168 = v68;
    }

    v69 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings);
    v172 = v69;
    if (!v69)
    {
      v69 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings);
    }

    v70 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions);
    if (v70)
    {
      v170 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions);
      v182 = v70;
    }

    else
    {
      v182 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions);

      v170 = 0;
    }

    LODWORD(v167) = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews);
    sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v198, &qword_27F2129B0, &unk_24F945320);
    v71 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v72 = *(v22 + 16);
    v73 = v191;
    v72(v191, v2 + v71, v43);
    v173 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    v74 = OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction;
    v75 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction);
    v2 = swift_allocObject();
    v76 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
    *v76 = v187;
    v76[1] = v44;
    v77 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
    v78 = v175;
    *v77 = v176;
    v77[1] = v78;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions) = v177;
    v79 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
    v80 = v171;
    *v79 = v188;
    v79[1] = v80;
    v81 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
    v82 = v168;
    *v81 = v169;
    v81[1] = v82;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings) = v69;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions) = v182;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) = v167;
    *(v2 + v74) = v75;
    sub_24E60169C(v198, &v196, &qword_27F2129B0, &unk_24F945320);
    v72(v193, v73, v43);
    v83 = v72;
    v187 = sub_24F9285B8();
    v188 = *(v187 - 8);
    v84 = v190;
    (*(v188 + 56))(v190, 1, 1, v187);
    v85 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

    v186 = v69;

    v86 = sub_24EEF0A68(v179);
    v88 = v87;

    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v86;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v88;
    v89 = (v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v90 = v181;
    *v89 = v189;
    v89[1] = v90;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
    sub_24E60169C(&v196, v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
    swift_beginAccess();
    *(v2 + v85) = 0;
    v91 = v193;
    v92 = v194;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
    v93 = v183;
    v83(v183, v91, v92);
    v94 = &unk_24F975980;
    v95 = v185;
    sub_24E60169C(v84, v185, &qword_27F2218B0, &unk_24F975980);
    *(v2 + 16) = 0;
    v83((v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v93, v92);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v173;
    v96 = v184;
    sub_24E60169C(v95, v184, &qword_27F2218B0, &unk_24F975980);
    v97 = *(v188 + 48);
    if (v97(v96, 1, v187) == 1)
    {

      v98 = &qword_27F2218B0;
      sub_24E601704(v95, &qword_27F2218B0, &unk_24F975980);
      v99 = v91;
      v100 = *(v192 + 8);
      v100(v93, v92);
      sub_24E601704(v190, &qword_27F2218B0, &unk_24F975980);
      v100(v99, v92);
      sub_24E601704(&v196, &qword_27F2129B0, &unk_24F945320);
      v100(v191, v92);
      sub_24E601704(v198, &qword_27F2129B0, &unk_24F945320);
      v101 = v96;
      goto LABEL_53;
    }

    v189 = v97;
    v102 = qword_27F2105F0;

    if (v102 != -1)
    {
LABEL_57:
      swift_once();
    }

    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v103, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v104 = v197;
    v105 = v180;
    v106 = v185;
    v107 = v183;
    if (v197)
    {
    }

    v108 = *(v188 + 8);
    v109 = v187;
    v188 += 8;
    v108(v184, v187);
    if (v104)
    {
      sub_24E60169C(v106, v105, &qword_27F2218B0, &unk_24F975980);
      if (v189(v105, 1, v109) == 1)
      {

        v98 = &qword_27F2218B0;
        v94 = &unk_24F975980;
        sub_24E601704(v106, &qword_27F2218B0, &unk_24F975980);
        v110 = *(v192 + 8);
        v111 = v194;
        v110(v107, v194);
        sub_24E601704(v190, &qword_27F2218B0, &unk_24F975980);
        v110(v193, v111);
        sub_24E601704(&v196, &qword_27F2129B0, &unk_24F945320);
        v110(v191, v111);
        sub_24E601704(v198, &qword_27F2129B0, &unk_24F945320);
        v101 = v105;
        goto LABEL_53;
      }

      sub_24ECDF110();

      sub_24E601704(v106, &qword_27F2218B0, &unk_24F975980);
      v161 = *(v192 + 8);
      v162 = v194;
      v161(v107, v194);
      sub_24E601704(v190, &qword_27F2218B0, &unk_24F975980);
      v161(v193, v162);
      sub_24E601704(&v196, &qword_27F2129B0, &unk_24F945320);
      v161(v191, v162);
      sub_24E601704(v198, &qword_27F2129B0, &unk_24F945320);
      v108(v105, v109);
      return v2;
    }

    sub_24E601704(v106, &qword_27F2218B0, &unk_24F975980);
    v159 = *(v192 + 8);
    v160 = v194;
    v159(v107, v194);
    sub_24E601704(v190, &qword_27F2218B0, &unk_24F975980);
    v159(v193, v160);
    v98 = &qword_27F2129B0;
    v94 = &unk_24F945320;
    sub_24E601704(&v196, &qword_27F2129B0, &unk_24F945320);
    v159(v191, v160);
LABEL_52:
    v101 = v198;
    goto LABEL_53;
  }

  v190 = v24;
  v176 = v27;
  v177 = v12;
  v178 = v30;
  v47 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId + 8);
  v184 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
  v183 = v47;
  v48 = v39;

  v193 = v38;

  v185 = v48;

  v49 = ShelfBasedPage.shelves.getter(v188, &protocol witness table for GenericPage);
  v50 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = MEMORY[0x277D84F90];
  v196 = MEMORY[0x277D84F90];
  v53 = *(v51 + 16);
  v54 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v53)
  {
    goto LABEL_39;
  }

  v55 = 0;
  v56 = v51 + 32;
  v180 = v53 - 1;
  v191 = v49;
  v188 = v51 + 32;
  do
  {
    v57 = v56 + 40 * v55;
    v58 = v55;
    while (1)
    {
      if (v58 >= *(v51 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      sub_24E65864C(v57, v198);
      if (*(*(a1 + v54) + 16))
      {
        break;
      }

LABEL_9:
      ++v58;
      sub_24E6585F8(v198);
      v57 += 40;
      if (v53 == v58)
      {
        v49 = v191;
        goto LABEL_39;
      }
    }

    sub_24E76D934(v198);
    if ((v59 & 1) == 0)
    {

      goto LABEL_9;
    }

    v60 = sub_24E6585F8(v198);
    MEMORY[0x253050F00](v60);
    if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v55 = v58 + 1;
    sub_24F92B638();
    v52 = v196;
    v49 = v191;
    v56 = v188;
  }

  while (v180 != v58);
LABEL_39:

  sub_24EC45D60(v49, v52);
  v180 = v112;

  v167 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions);
  v113 = v167;
  v114 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
  v174 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
  v173 = v114;
  v172 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings);
  v115 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle + 8);
  v170 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
  v168 = v115;
  v191 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions);
  LODWORD(v169) = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v198, &qword_27F2129B0, &unk_24F945320);
  v116 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v118 = (v192 + 16);
  v117 = *(v192 + 16);
  v119 = v178;
  v120 = v194;
  v117(v178, v2 + v116, v194);
  v171 = v118;
  v175 = v117;
  v188 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v121 = OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction;
  v122 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction);
  v2 = swift_allocObject();
  v123 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
  v124 = v193;
  *v123 = v187;
  v123[1] = v124;
  v125 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
  v126 = v183;
  *v125 = v184;
  v125[1] = v126;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions) = v113;
  v127 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
  v128 = v173;
  *v127 = v174;
  v127[1] = v128;
  v129 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
  v130 = v168;
  *v129 = v170;
  v129[1] = v130;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings) = v172;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions) = v191;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) = v169;
  *(v2 + v121) = v122;
  sub_24E60169C(v198, &v196, &qword_27F2129B0, &unk_24F945320);
  v131 = v176;
  v117(v176, v119, v120);
  v187 = sub_24F9285B8();
  v193 = *(v187 - 8);
  v132 = v177;
  v193[7](v177, 1, 1, v187);
  v133 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v134 = sub_24EEF0A68(v180);
  v136 = v135;

  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v134;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v136;
  v137 = (v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v138 = v185;
  *v137 = v189;
  v137[1] = v138;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
  sub_24E60169C(&v196, v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v2 + v133) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v139 = v190;
  v140 = v194;
  v141 = v175;
  v175(v190, v131, v194);
  v94 = &unk_24F975980;
  v142 = v181;
  sub_24E60169C(v132, v181, &qword_27F2218B0, &unk_24F975980);
  *(v2 + 16) = 0;
  v143 = v140;
  v141(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v139, v140);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v188;
  v144 = v182;
  v145 = v187;
  sub_24E60169C(v142, v182, &qword_27F2218B0, &unk_24F975980);
  v146 = v193[6];
  if ((v146)(v144, 1, v145) == 1)
  {

    v98 = &qword_27F2218B0;
    sub_24E601704(v142, &qword_27F2218B0, &unk_24F975980);
    v147 = *(v192 + 8);
    v147(v139, v143);
    sub_24E601704(v177, &qword_27F2218B0, &unk_24F975980);
    v147(v176, v143);
    sub_24E601704(&v196, &qword_27F2129B0, &unk_24F945320);
    v147(v178, v143);
    goto LABEL_48;
  }

  v191 = v146;
  v148 = v145;
  v149 = v143;
  v150 = qword_27F2105F0;

  if (v150 != -1)
  {
    swift_once();
  }

  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  __swift_project_value_buffer(v151, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  sub_24F9285C8();
  v152 = v195;
  v153 = v192;
  v144 = v179;
  v154 = v190;
  if (v195)
  {
  }

  v155 = v193[1];
  ++v193;
  (v155)(v182, v148);
  v156 = v181;
  if (!v152)
  {
    sub_24E601704(v181, &qword_27F2218B0, &unk_24F975980);
    v163 = *(v153 + 8);
    v163(v154, v149);
    sub_24E601704(v177, &qword_27F2218B0, &unk_24F975980);
    v163(v176, v149);
    v98 = &qword_27F2129B0;
    v94 = &unk_24F945320;
    sub_24E601704(&v196, &qword_27F2129B0, &unk_24F945320);
    v163(v178, v149);
    goto LABEL_52;
  }

  sub_24E60169C(v181, v144, &qword_27F2218B0, &unk_24F975980);
  v157 = v156;
  if ((v191)(v144, 1, v148) == 1)
  {
    v98 = &qword_27F2218B0;
    v94 = &unk_24F975980;
    sub_24E601704(v157, &qword_27F2218B0, &unk_24F975980);
    v158 = *(v153 + 8);
    v158(v154, v149);
    sub_24E601704(v177, &qword_27F2218B0, &unk_24F975980);
    v158(v176, v149);
    sub_24E601704(&v196, &qword_27F2129B0, &unk_24F945320);
    v158(v178, v149);
LABEL_48:
    sub_24E601704(v198, &qword_27F2129B0, &unk_24F945320);
    v101 = v144;
LABEL_53:
    sub_24E601704(v101, v98, v94);
  }

  else
  {
    sub_24ECDF110();
    sub_24E601704(v156, &qword_27F2218B0, &unk_24F975980);
    v165 = *(v153 + 8);
    v165(v154, v149);
    sub_24E601704(v177, &qword_27F2218B0, &unk_24F975980);
    v165(v176, v149);
    sub_24E601704(&v196, &qword_27F2129B0, &unk_24F945320);
    v165(v178, v149);
    sub_24E601704(v198, &qword_27F2129B0, &unk_24F945320);
    (v155)(v144, v148);
  }

  return v2;
}

double sub_24EC45BA4()
{

  return result;
}

uint64_t ReviewsPage.deinit()
{
  v0 = GenericPage.deinit();

  return v0;
}

uint64_t ReviewsPage.__deallocating_deinit()
{
  ReviewsPage.deinit();

  return swift_deallocClassInstance();
}

void sub_24EC45D60(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_24EEF0A68(a2);
  v5 = v4;

  v27 = v5;
  v26 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v6 = sub_24F92C738();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v2;
  if (v6)
  {
    if (v6 < 1)
    {
      __break(1u);
      goto LABEL_42;
    }

    v7 = 0;
    v25 = v6;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x253052270](v7, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v7 + 32);
      }

      if (*(v5 + 16) && (v10 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id, sub_24E76D934(v9 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id), (v11 & 1) != 0))
      {

        Shelf.mergingWith(_:)(v12);

        MEMORY[0x253050F00](v13);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
        sub_24EB444A4(v9 + v10);

        v6 = v25;
      }

      else
      {

        MEMORY[0x253050F00](v8);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
      }

      ++v7;
    }

    while (v6 != v7);
  }

  if (!(v2 >> 62))
  {
    v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_20;
    }

LABEL_40:

    return;
  }

  v14 = sub_24F92C738();
  if (!v14)
  {
    goto LABEL_40;
  }

LABEL_20:
  if (v14 >= 1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = MEMORY[0x253052270](i, v2);
        if (*(v5 + 16) && (sub_24E76D934(v16 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id), (v17 & 1) != 0))
        {
          v18 = swift_unknownObjectRetain();
          MEMORY[0x253050F00](v18);
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
            v2 = v24;
          }

          sub_24F92B638();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v19 = (v2 + 32);
      do
      {
        if (*(v27 + 16))
        {
          v20 = *v19;
          v21 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;

          sub_24E76D934(v20 + v21);
          if (v22)
          {

            MEMORY[0x253050F00](v23);
            if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            sub_24F92B638();
          }

          else
          {
          }
        }

        ++v19;
        --v14;
      }

      while (v14);
    }

    goto LABEL_40;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_24EC4627C(uint64_t a1)
{
  result = sub_24F91F4A8();
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

id CompoundScrollObserver.__allocating_init(children:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t CompoundScrollObserver.addChild(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
    swift_beginAccess();
    v6 = *(v2 + v5);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v5) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_24E618CD4(0, v6[2] + 1, 1, v6);
      *(v2 + v5) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_24E618CD4((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = v4;
    v10[5] = a2;
    *(v2 + v5) = v6;
    return swift_endAccess();
  }

  return result;
}

id CompoundScrollObserver.init(children:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CompoundScrollObserver();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_24EC46510(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_24EC46578()
{
  swift_beginAccess();

  return result;
}

uint64_t CompoundScrollObserver.removeChild(_:)(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
    result = swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      for (i = (v4 + 32); *i != v2; i += 2)
      {
        if (v5 == ++v6)
        {
          return result;
        }
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_24EA0E6DC(v6);
      swift_endAccess();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundScrollObserver.removeAllChildren()()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84F90];
}

uint64_t sub_24EC466DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 8);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24EC467AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24EC4687C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 24);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24EC4694C(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 32);
      swift_unknownObjectRetain();
      v12(a1, a2 & 1, ObjectType, v10);
      swift_unknownObjectRelease();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_24EC46A24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 40);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24EC46AF4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v11 = *(v4 + v9);
  v12 = *(v11 + 16);
  if (v12)
  {

    v13 = (v11 + 40);
    do
    {
      v14 = *v13;
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 48);
      swift_unknownObjectRetain();
      v16(a1, a2, ObjectType, v14, a3, a4);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EC46BE4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = 32;
    do
    {
      v9 = *(v6 + v8);
      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = v10;
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 16);
        swift_unknownObjectRetain();
        v14(a1, a2, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_24EC46CF8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v10 = *(v4 + v8);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = 32;
    do
    {
      v13 = *(v10 + v12);
      swift_getObjectType();
      v14 = swift_conformsToProtocol2();
      if (v14)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = v14;
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 8);
        v19 = *(v18 + 56);
        swift_unknownObjectRetain();
        v19(a1, a2, ObjectType, v18, a3, a4);
        swift_unknownObjectRelease();
      }

      v12 += 16;
      --v11;
    }

    while (v11);
  }

  return result;
}

id CompoundScrollObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CompoundScrollObserver.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CompoundScrollObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_24EC46F44@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_24EC471A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v151 = a2;
  v152 = a3;
  v6 = sub_24F921118();
  v149 = *(v6 - 8);
  v150 = v6;
  MEMORY[0x28223BE20](v6);
  v148 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v147 = &v120 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C110, &qword_24F98F820);
  MEMORY[0x28223BE20](v10 - 8);
  v144 = &v120 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C118, &qword_24F98F828);
  v145 = *(v12 - 8);
  v146 = v12;
  MEMORY[0x28223BE20](v12);
  v143 = &v120 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3C0, &unk_24F98F830);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v120 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v120 - v18;
  v20 = sub_24F9289E8();
  v154 = *(v20 - 8);
  v155 = v20;
  MEMORY[0x28223BE20](v20);
  v153 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C120, &unk_24F98F840);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v120 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v120 - v27;
  v29 = sub_24F921198();
  if (v30)
  {
    v142 = v29;
    v161 = v30;
    sub_24F921168();
    v31 = sub_24F920FD8();
    if (v4)
    {

      v33 = sub_24F9211A8();
      (*(*(v33 - 8) + 8))(a1, v33);
      return (*(v26 + 8))(v28, v25);
    }

    v140 = v31;
    v141 = v32;
    (*(v26 + 8))(v28, v25);
    sub_24F921158();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C130, &unk_24F98F850);
    v41 = *(v40 - 8);
    v42 = a1;
    if ((*(v41 + 48))(v24, 1, v40) == 1)
    {
      sub_24E601704(v24, &qword_27F22C120, &unk_24F98F840);
      v139 = sub_24F5E3C58(v140, v141, v142, v161, 85, 0xE100000000000000);
      v44 = v43;
    }

    else
    {
      v45 = sub_24F920F48();
      v44 = v46;
      v139 = v45;
      (*(v41 + 8))(v24, v40);
    }

    sub_24F921178();
    sub_24F3D6C4C(v16, v19);
    v48 = v154;
    v47 = v155;
    v49 = *(v154 + 48);
    if (v49(v19, 1, v155) == 1)
    {
      sub_24EC481E4(v140, v141, v142, v161);
      v50 = v49(v19, 1, v47);
      v51 = v145;
      if (v50 != 1)
      {
        sub_24E601704(v19, &qword_27F213FB0, &qword_24F93E6B0);
      }
    }

    else
    {
      (*(v48 + 32))(v153, v19, v47);
      v51 = v145;
    }

    v52 = v144;
    sub_24F921188();
    v53 = v146;
    if ((*(v51 + 48))(v52, 1, v146) == 1)
    {
      sub_24E601704(v52, &qword_27F22C110, &qword_24F98F820);
    }

    else
    {
      v54 = v143;
      (*(v51 + 32))(v143, v52, v53);
      sub_24F920FE8();
      if (v55)
      {
        v102 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
        v103 = sub_24F92B098();

        v56 = [v102 contactForIdentifier_];

        (*(v51 + 8))(v143, v53);
        if (v56)
        {
          v104 = v56;
          v105 = [v104 namePrefix];
          v143 = sub_24F92B0D8();
          v134 = v106;

          v107 = [v104 givenName];
          v136 = sub_24F92B0D8();
          v135 = v108;

          v109 = [v104 middleName];
          v133 = sub_24F92B0D8();
          v132 = v110;

          v111 = [v104 familyName];
          v131 = sub_24F92B0D8();
          v130 = v112;

          v113 = [v104 nameSuffix];
          v129 = sub_24F92B0D8();
          v128 = v114;

          v115 = [v104 nickname];
          v127 = sub_24F92B0D8();
          v126 = v116;

          v117 = v104;
          v118 = sub_24EEA5788();
          v145 = v119;
          v146 = v118;

          goto LABEL_22;
        }

        v143 = 0;
        v136 = 0;
        v135 = 0;
        v133 = 0;
        v132 = 0;
        v131 = 0;
        v130 = 0;
        v129 = 0;
        v128 = 0;
        v127 = 0;
        v126 = 0;
        v145 = 0;
        v146 = 0;
LABEL_21:
        v134 = 1;
LABEL_22:
        v125 = sub_24F921138();
        v124 = sub_24F921148();
        v123 = sub_24F9210F8();
        v122 = v57;
        v138 = v42;
        v137 = v44;
        v144 = v56;
        if (v56)
        {
          v58 = [v56 phoneNumberStrings];
          v121 = sub_24F92B5A8();

          v59 = [v56 emailAddressStrings];
          v120 = sub_24F92B5A8();
        }

        else
        {
          v120 = 0;
          v121 = 0;
        }

        v60 = type metadata accessor for Player(0);
        v61 = v60[13];
        v62 = [objc_opt_self() sharedInstance];
        v63 = [v62 providerManager];

        v64 = [v63 defaultProvider];
        v65 = [v63 providers];
        sub_24E69A5C4(0, &qword_27F225FA8, 0x277D6EE20);
        v66 = sub_24F92B5A8();

        v67 = [v63 faceTimeProvider];
        v68 = [v63 telephonyProvider];

        *&v156 = v63;
        *(&v156 + 1) = v64;
        v157 = v64;
        v158 = v66;
        v159 = v67;
        v160 = v68;
        v69 = v64;
        v70 = v152;
        static SocialUser.getHandleSet(contact:contactHandle:includeSocialProfiles:callProviders:)(v144, v146, v145, 0, &v156, &v152[v61]);
        v71 = v156;
        v72 = v157;
        v73 = v159;

        v74 = type metadata accessor for CallProviderConversationHandleSet(0);
        (*(*(v74 - 8) + 56))(&v70[v61], 0, 1, v74);
        v75 = v147;
        v76 = v138;
        sub_24F921128();
        v77 = v148;
        sub_24F921108();
        sub_24EC4841C(v78);
        v79 = v150;
        LOBYTE(v63) = sub_24F92C678();

        v80 = sub_24F9211A8();
        (*(*(v80 - 8) + 8))(v76, v80);
        v81 = *(v149 + 8);
        v81(v77, v79);
        v81(v75, v79);
        v82 = v60[16];
        PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
        (*(*(PlayedTogetherInfo - 8) + 56))(&v70[v82], 1, 1, PlayedTogetherInfo);
        v84 = v60[17];
        ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
        (*(*(ChallengeInfo - 8) + 56))(&v70[v84], 1, 1, ChallengeInfo);
        result = (*(v154 + 32))(&v70[v60[6]], v153, v155);
        v86 = v141;
        *v70 = v140;
        *(v70 + 1) = v86;
        v87 = v137;
        *(v70 + 2) = v139;
        *(v70 + 3) = v87;
        v88 = &v70[v60[7]];
        v89 = v161;
        *v88 = v142;
        *(v88 + 1) = v89;
        v90 = &v70[v60[8]];
        v91 = v122;
        *v90 = v123;
        v90[1] = v91;
        *&v70[v60[11]] = v121;
        LOBYTE(v90) = v151 & 1;
        *&v70[v60[12]] = v120;
        v92 = &v70[v60[9]];
        v93 = v134;
        *v92 = v143;
        v92[1] = v93;
        v94 = v135;
        v92[2] = v136;
        v92[3] = v94;
        v95 = v132;
        v92[4] = v133;
        v92[5] = v95;
        v96 = v130;
        v92[6] = v131;
        v92[7] = v96;
        v97 = v128;
        v92[8] = v129;
        v92[9] = v97;
        v98 = v126;
        v92[10] = v127;
        v92[11] = v98;
        v99 = &v70[v60[10]];
        v100 = v145;
        *v99 = v146;
        *(v99 + 1) = v100;
        v70[v60[14]] = v63 & 1;
        v101 = &v70[v60[15]];
        *(v101 + 2) = 0u;
        *(v101 + 3) = 0u;
        *v101 = 0u;
        *(v101 + 1) = 0u;
        v70[v60[18]] = 0;
        v70[v60[19]] = 0;
        v70[v60[20]] = v125;
        v70[v60[21]] = v124;
        v70[v60[22]] = v90;
        return result;
      }

      (*(v51 + 8))(v54, v53);
    }

    v143 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v132 = 0;
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v145 = 0;
    v146 = 0;
    v56 = 0;
    goto LABEL_21;
  }

  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v35 = sub_24F9220D8();
  __swift_project_value_buffer(v35, qword_27F39E850);
  v36 = sub_24F9220B8();
  v37 = sub_24F92BDB8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_24E5DD000, v36, v37, "Failed to initialize Player from Profile: Nickname is not available.", v38, 2u);
    MEMORY[0x2530542D0](v38, -1, -1);
  }

  sub_24EC483C8();
  swift_allocError();
  swift_willThrow();
  v39 = sub_24F9211A8();
  return (*(*(v39 - 8) + 8))(a1, v39);
}

void sub_24EC481E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_24F5E3C58(a1, a2, a3, a4, 85, 0xE100000000000000);
  v6 = sub_24F5E54A0(a1, a2);
  v7 = [objc_opt_self() availableColors];
  sub_24E69A5C4(0, &qword_27F22C138, 0x277D3A1C0);
  v8 = sub_24F92B5A8();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x253052270](v6, v8);
    goto LABEL_5;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 8 * v6 + 32);
LABEL_5:
    v10 = v9;

    v11 = [v10 color];
    v12 = [v11 CGColor];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C140, &unk_24F9F2E40);
    inited = swift_initStackObject();
    v14 = MEMORY[0x277CEE210];
    *(inited + 16) = xmmword_24F93DE60;
    v15 = *v14;
    *(inited + 32) = v15;
    *(inited + 40) = v12;
    v16 = v15;
    v17 = v12;
    sub_24E609AB0(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F22C148, &unk_24F98F860);
    sub_24F928948();

    return;
  }

  __break(1u);
}

unint64_t sub_24EC483C8()
{
  result = qword_27F22C128;
  if (!qword_27F22C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C128);
  }

  return result;
}

unint64_t sub_24EC4841C(__n128 a1)
{
  result = qword_27F21E3D0;
  if (!qword_27F21E3D0)
  {
    sub_24F921118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E3D0);
  }

  return result;
}

unint64_t sub_24EC48488()
{
  result = qword_27F22C150;
  if (!qword_27F22C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C150);
  }

  return result;
}

uint64_t AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities) = 0;
  if (*(a1 + 16))
  {
    *(v5 + 40) = a1;
    sub_24E8F997C(a1 + 32, v5 + 48);
    *(v5 + 96) = a1;
    *(v5 + 104) = 1;
    type metadata accessor for AdvertAppearanceTracker();
    v10 = swift_allocObject();
    *(v10 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v10 + 16) = MEMORY[0x277D84F90];
    *(v5 + 120) = v10;
    type metadata accessor for AdvertVisibilityCalculator();
    v11 = swift_allocObject();
    *(v11 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 1025;
    *(v11 + 96) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v11 + 40) = 0;
    swift_unknownObjectWeakAssign();
    *(v11 + 81) = 4;
    *(v11 + 104) = 257;
    *(v5 + 128) = v11;
    *(v5 + 16) = a3 & 1;
    v12 = objc_allocWithZone(MEMORY[0x277D23658]);
    swift_bridgeObjectRetain_n();
    v13 = [v12 init];
    LOBYTE(v11) = [v13 personalizedAds];

    v14 = (v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy);
    v15 = *(type metadata accessor for AdvertRotationStrategy(0) + 24);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8, &qword_24F981320);
    (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
    *v14 = v11;
    v14[1] = 0;
    sub_24EB3DED0(a2, v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter);
    *(v5 + 112) = 1;
    *(v5 + 24) = a4;
    v17 = *(v5 + 120);
    swift_beginAccess();
    *(v17 + 32) = &protocol witness table for AdvertRotationController;
    swift_unknownObjectWeakAssign();
    v18 = *(v5 + 128);
    swift_beginAccess();
    *(v18 + 96) = &protocol witness table for AdvertRotationController;
    swift_unknownObjectWeakAssign();
    v19 = qword_27F2105A0;

    v23 = a2;
    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_24F92AAE8();
    __swift_project_value_buffer(v20, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;

    sub_24F928448();

    sub_24F9283A8();
    v21 = *(a1 + 16);

    v24[3] = MEMORY[0x277D83B88];
    v24[0] = v21;
    sub_24F928438();
    sub_24E601704(v24, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F92A588();

    sub_24E601704(v23, &qword_27F229490, &unk_24F984C40);
  }

  else
  {
    sub_24E601704(a2, &qword_27F229490, &unk_24F984C40);

    MEMORY[0x2530543E0](v5 + 32);
    sub_24E883630(v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming);
    type metadata accessor for AdvertRotationController(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

void *AdvertRotationController.deinit()
{

  MEMORY[0x2530543E0](v0 + 32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  sub_24EC4B5F0(v0 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy);
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, &qword_27F229490, &unk_24F984C40);
  return v0;
}

uint64_t sub_24EC48AE8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EC48B54(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
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

uint64_t sub_24EC48BF4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EC48C38()
{
  v1 = sub_24F929598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6 + 16;
  swift_beginAccess();
  sub_24E8F997C(v0 + 48, v13);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_24F92ADC8();
  v8 = sub_24F929608();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_24E601704(v7, &qword_27F213E68, &unk_24F93BC80);
    return 0;
  }

  else
  {
    sub_24F9295B8();
    (*(v9 + 8))(v7, v8);
    v11 = sub_24F929558();
    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v11;
  }
}

void sub_24EC48E5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_24EC4BDA8();
    v7 = sub_24F92C408();

    if (v7)
    {
      if (qword_27F2105A0 != -1)
      {
        swift_once();
      }

      v8 = sub_24F92AAE8();
      __swift_project_value_buffer(v8, qword_27F39C440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F92A588();

      if (*(v3 + 112) == 1)
      {
        v9 = *(v3 + 128);
        v10 = swift_unknownObjectWeakLoadStrong();
        if (!v10 || (v11 = v10, swift_unknownObjectRelease(), v11 != a1))
        {
          *(v9 + 24) = &protocol witness table for UIView;
          swift_unknownObjectWeakAssign();
          *(v9 + 40) = &protocol witness table for UICollectionView;
          swift_unknownObjectWeakAssign();
          v12 = 0;
          sub_24F031124(&v12);
        }
      }
    }
  }
}

void *sub_24EC4906C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v5 = sub_24F92AAE8();
  __swift_project_value_buffer(v5, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v2 + 112) == 1)
  {
    swift_beginAccess();
    sub_24E8F997C(v2 + 48, v12);
    v7 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    LOBYTE(v7) = SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v7, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    if (v7)
    {
      swift_unknownObjectWeakAssign();
      v9 = *(v3 + 128);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v11 = Strong, result = swift_unknownObjectRelease(), v11 != a1))
      {
        *(v9 + 24) = &protocol witness table for UIView;
        swift_unknownObjectWeakAssign();
        *(v9 + 40) = &protocol witness table for UICollectionView;
        swift_unknownObjectWeakAssign();
        LOBYTE(v12[0]) = 0;
        return sub_24F031124(v12);
      }
    }
  }

  return result;
}

uint64_t sub_24EC492B0()
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    swift_beginAccess();
    sub_24E8F997C(v0 + 48, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = (*(v4 + 8))(v3, v4);
    if (!v5)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v9);
    sub_24EB3DED0(v0 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v9);
    v7 = v10;
    if (v10)
    {
      v8 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v8 + 8))(v6, v7, v8);

      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    return sub_24E601704(v9, &qword_27F229490, &unk_24F984C40);
  }

  return result;
}

void *sub_24EC49500()
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 104);
    *(v3 + 104) = 1;
    if ((v4 & 1) == 0)
    {
      v5 = 3;
      return sub_24F031124(&v5);
    }
  }

  return result;
}

uint64_t sub_24EC49690()
{
  v1 = v0;
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    v4 = *(v0 + 128);
    v5 = *(v4 + 104);
    *(v4 + 104) = 0;
    if (v5 == 1)
    {
      LOBYTE(v12[0]) = 3;
      sub_24F031124(v12);
    }

    swift_beginAccess();
    sub_24E8F997C(v1 + 48, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = (*(v7 + 8))(v6, v7);
    if (!v8)
    {
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_24EB3DED0(v1 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v12);
    v10 = v13;
    if (v13)
    {
      v11 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 16))(v9, v10, v11);

      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    return sub_24E601704(v12, &qword_27F229490, &unk_24F984C40);
  }

  return result;
}

uint64_t sub_24EC49904()
{
  v1 = v0;
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    swift_unknownObjectWeakAssign();
    *(v0 + 112) = 0;
    v4 = *(v0 + 128);
    *(v4 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v4 + 40) = 0;
    swift_unknownObjectWeakAssign();
    LOBYTE(v17[0]) = 1;
    result = sub_24F031124(v17);
    *(v4 + 81) = 4;
    v5 = *(v1 + 40);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter;
      v8 = v5 + 32;
      do
      {
        sub_24E8F997C(v8, v17);
        v10 = v18;
        v11 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v12 = (*(v11 + 8))(v10, v11);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
        if (v12)
        {
          sub_24EB3DED0(v1 + v7, v14);
          v13 = v15;
          if (v15)
          {
            v9 = v16;
            __swift_project_boxed_opaque_existential_1(v14, v15);
            (*(v9 + 56))(v12, v13, v9);

            result = __swift_destroy_boxed_opaque_existential_1(v14);
          }

          else
          {

            result = sub_24E601704(v14, &qword_27F229490, &unk_24F984C40);
          }
        }

        v8 += 48;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_24EC49BC4()
{
  v1 = v0;
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    swift_unknownObjectWeakAssign();
    v4 = *(v0 + 128);
    *(v4 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v4 + 40) = 0;
    swift_unknownObjectWeakAssign();
    LOBYTE(v17[0]) = 1;
    result = sub_24F031124(v17);
    *(v4 + 81) = 4;
    v5 = *(v1 + 40);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter;
      v8 = v5 + 32;
      do
      {
        sub_24E8F997C(v8, v17);
        v10 = v18;
        v11 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v12 = (*(v11 + 8))(v10, v11);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
        if (v12)
        {
          sub_24EB3DED0(v1 + v7, v14);
          v13 = v15;
          if (v15)
          {
            v9 = v16;
            __swift_project_boxed_opaque_existential_1(v14, v15);
            (*(v9 + 56))(v12, v13, v9);

            result = __swift_destroy_boxed_opaque_existential_1(v14);
          }

          else
          {

            result = sub_24E601704(v14, &qword_27F229490, &unk_24F984C40);
          }
        }

        v8 += 48;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_24EC49E80()
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    v3 = v0 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy;
    result = swift_beginAccess();
    if ((*(v3 + 1) & 1) == 0)
    {
      *(v3 + 1) = 1;
    }
  }

  return result;
}

void *sub_24EC4A01C()
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 105);
    *(v3 + 105) = 1;
    if ((v4 & 1) == 0 && *(v3 + 104) == 1)
    {
      v5 = 4;
      return sub_24F031124(&v5);
    }
  }

  return result;
}

void *sub_24EC4A1B8()
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 105);
    *(v3 + 105) = 0;
    if (v4 == 1 && *(v3 + 104) == 1)
    {
      v5 = 4;
      return sub_24F031124(&v5);
    }
  }

  return result;
}

void *sub_24EC4A354(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_24EC4BDA8();
    v3 = sub_24F92C408();

    return (v3 & 1);
  }

  return result;
}

uint64_t sub_24EC4A3B0(int a1)
{
  v2 = v1;
  v35 = a1;
  v40 = sub_24F91F648();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdvertRotationStrategy(0);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v6 = sub_24F92AAE8();
  v7 = __swift_project_value_buffer(v6, qword_27F39C440);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  v9 = *(sub_24F928468() - 8);
  v10 = ((*(v9 + 80) + 32) & ~*(v9 + 80)) + 2 * *(v9 + 72);
  v11 = swift_allocObject();
  v43 = xmmword_24F93A400;
  *(v11 + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *(swift_allocObject() + 16) = v43;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F92A588();
  }

  v36 = v8;
  v41 = Strong;
  v42 = v7;
  swift_beginAccess();
  sub_24E8F997C(v2 + 48, &v47);
  v13 = v48;
  v14 = v49;
  __swift_project_boxed_opaque_existential_1(&v47, v48);
  v15 = (*(v14 + 8))(v13, v14);
  if (!v15)
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
    goto LABEL_14;
  }

  v16 = *(v15 + 40);

  __swift_destroy_boxed_opaque_existential_1(&v47);
  if (!v16)
  {
LABEL_14:
    *(swift_allocObject() + 16) = v43;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  v34[0] = v10;
  v34[1] = v6;
  v17 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy;
  swift_beginAccess();
  v18 = v37;
  sub_24EC4C70C(v2 + v17, v37);
  v20 = *(v16 + 16);
  v19 = *(v16 + 24);

  v21._countAndFlagsBits = v20;
  v21._object = v19;
  LOBYTE(v20) = AdvertAppearanceTracker.isAdvertVisible(for:)(v21);

  v22 = sub_24EC4B80C(v16);
  v23 = [objc_allocWithZone(MEMORY[0x277D23658]) init];
  LOBYTE(v19) = [v23 personalizedAds];

  v24 = v38;
  sub_24F91F638();
  LOBYTE(v23) = AdvertRotationStrategy.shouldPerformRotation(advertIsVisible:onScreenIntervalThreshold:offScreenIntervalThreshold:areAdsPersonalized:on:)(v20 & 1, v19, 1.0, v22);
  (*(v39 + 8))(v24, v40);
  sub_24EC4B5F0(v18);
  if ((v23 & 1) == 0)
  {
    *(swift_allocObject() + 16) = v43;
    sub_24F928448();
    sub_24F9283A8();
LABEL_20:
    sub_24F92A588();
  }

  v25 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities;
  result = swift_beginAccess();
  v27 = *(v2 + v25);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  *(v2 + v25) = v29;
  v30 = *(v2 + 96);
  v31 = *(v2 + 104);
  v32 = *(v30 + 16);
  if (v31 == v32)
  {
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
LABEL_19:
    sub_24E601704(&v44, &qword_27F2294B0, qword_24F984C90);
    *(swift_allocObject() + 16) = v43;
    sub_24F928448();
    sub_24F9283A8();
    goto LABEL_20;
  }

  if (v31 >= v32)
  {
    goto LABEL_22;
  }

  sub_24E8F997C(v30 + 48 * v31 + 32, &v44);
  *(v2 + 104) = v31 + 1;
  if (!*(&v45 + 1))
  {
    goto LABEL_19;
  }

  sub_24E8EA128(&v44, &v47);
  v33 = v41;
  sub_24EC4AAF0(v41, &v47, v35 & 1);

  return __swift_destroy_boxed_opaque_existential_1(&v47);
}

uint64_t sub_24EC4AAF0(uint64_t a1, void *a2, int a3)
{
  v46 = a1;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8, &unk_24F984C80);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v37 - v11;
  swift_beginAccess();
  sub_24E8F997C((v3 + 6), v49);
  v12 = v50;
  v13 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v14 = (*(v13 + 8))(v12, v13);
  if (v14)
  {
    v15 = v14;
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    v18 = (*(v17 + 8))(v16, v17);
    if (v18)
    {
      v44 = v18;
      v39 = a3;
      v40 = a2;
      v41 = v9;
      v42 = v7;
      v43 = v6;
      if (qword_27F2105A0 != -1)
      {
        swift_once();
      }

      v38 = sub_24F92AAE8();
      v37 = __swift_project_value_buffer(v38, qword_27F39C440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A070;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F9283A8();
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      v21 = MEMORY[0x277D837D0];
      v48 = MEMORY[0x277D837D0];
      *&v47 = v20;
      *(&v47 + 1) = v19;

      sub_24F928438();
      sub_24E601704(&v47, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      v22 = v44;
      v24 = *(v44 + 16);
      v23 = *(v44 + 24);
      v48 = v21;
      *&v47 = v24;
      *(&v47 + 1) = v23;

      sub_24F928438();
      sub_24E601704(&v47, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A588();

      v25 = v3 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v27 = v40;
      v28 = v39;
      v29 = v46;
      if (Strong)
      {
        v30 = *(v25 + 1);
        ObjectType = swift_getObjectType();
        v32 = type metadata accessor for ItemLayoutContext(0);
        v33 = v45;
        (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
        v34 = ObjectType;
        v22 = v44;
        (*(v30 + 8))(v29, v49, v27, v33, v28 & 1, v3[3], v34, v30);
        swift_unknownObjectRelease();
        sub_24E601704(v33, &qword_27F2294A8, &unk_24F984C80);
      }

      sub_24E8F997C(v27, &v47);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1(v3 + 6);
      sub_24E8EA128(&v47, v3 + 3);
      swift_endAccess();
      (*(*v3 + 512))(v29, v49, v27, v28 & 1, v3[3]);
      v35 = v41;
      sub_24F91F638();

      AdvertAppearanceTracker.advertDidLeaveView(for:on:)(v15, v35);

      AdvertAppearanceTracker.advertDidEnterView(for:on:)(v22, v35);

      (*(v42 + 8))(v35, v43);
    }

    else
    {
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

float64x2_t *sub_24EC4B0F8(float64x2_t *result)
{
  v2 = v1;
  if (*(v1 + 16) == 1)
  {
    v3 = *(v1 + 128);
    [(float64x2_t *)result safeAreaInsets];
    v4 = *(v3 + 64);
    v11[0] = *(v3 + 48);
    v11[1] = v4;
    v12 = *(v3 + 80);
    *(v3 + 48) = v5;
    *(v3 + 56) = v6;
    *(v3 + 64) = v7;
    *(v3 + 72) = v8;
    *(v3 + 80) = 0;
    result = sub_24F0310A8(v11);
  }

  v9 = *(v2 + 128);
  if (*(v9 + 105) == 1 && *(v9 + 104) == 1)
  {
    v10 = 2;
    return sub_24F031124(&v10);
  }

  return result;
}

void *sub_24EC4B18C()
{
  v1 = *(v0 + 128);
  if (*(v1 + 105) == 1 && *(v1 + 104) == 1)
  {
    v3 = 2;
    return sub_24F031124(&v3);
  }

  return result;
}

uint64_t sub_24EC4B1EC(uint64_t a1, uint64_t a2)
{
  sub_24EB3DED0(v2 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v7);
  v4 = v8;
  if (!v8)
  {
    return sub_24E601704(v7, &qword_27F229490, &unk_24F984C40);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 32))(a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_24EC4B304(uint64_t a1, uint64_t *a2)
{
  sub_24E8F997C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 48));
  sub_24E8EA128(v5, (v3 + 48));
  return swift_endAccess();
}

uint64_t sub_24EC4B368(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8, &unk_24F984C80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    v18 = type metadata accessor for ItemLayoutContext(0);
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    (*(v16 + 16))(a1, a2, a3, v13, a4 & 1, a5, ObjectType, v16);
    swift_unknownObjectRelease();
    return sub_24E601704(v13, &qword_27F2294A8, &unk_24F984C80);
  }

  return result;
}

uint64_t AdvertRotationController.__deallocating_deinit()
{
  AdvertRotationController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EC4B534()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t type metadata accessor for AdvertRotationController(uint64_t a1)
{
  result = qword_27F22C160;
  if (!qword_27F22C160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC4B5F0(uint64_t a1)
{
  v2 = type metadata accessor for AdvertRotationStrategy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC4B64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_24EB3DED0(v4 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v17);
  v8 = v18;
  if (v18)
  {
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 40))(a1, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_24E601704(v17, &qword_27F229490, &unk_24F984C40);
  }

  v10 = v4 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy;
  swift_beginAccess();
  v11 = v10 + *(type metadata accessor for AdvertRotationStrategy(0) + 24);
  sub_24E601704(v11, &qword_27F228300, &qword_24F98FAC0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8, &qword_24F981320);
  v13 = *(v12 + 48);
  v14 = sub_24F91F648();
  v15 = *(*(v14 - 8) + 16);
  v15(v11, a2, v14);
  v15(v11 + v13, a3, v14);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  return swift_endAccess();
}

double sub_24EC4B80C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 16) && (v2 = sub_24E76D644(0xD00000000000001DLL, 0x800000024FA57F60), (v3 & 1) != 0) && (sub_24E643A9C(*(v1 + 56) + 32 * v2, v6), (swift_dynamicCast() & 1) != 0) && v5 >= 1)
  {
    return (v5 / 0x3E8uLL);
  }

  else
  {
    return 1.2;
  }
}

uint64_t sub_24EC4B8D0(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v12 = *a2;
  v13 = *a3;
  swift_beginAccess();
  sub_24E8F997C(v4 + 48, v26);
  v14 = v27;
  v15 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v16 = (*(v15 + 8))(v14, v15);
  if (!v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v17 = v16;
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_24EB3DED0(v4 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v26);
  v18 = v27;
  if (v27)
  {
    v19 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v25 = v23;
    v24 = v12;
    (*(v19 + 48))(v17, &v25, &v24, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_24E601704(v26, &qword_27F229490, &unk_24F984C40);
  }

  sub_24F91F638();

  if (v12)
  {
    AdvertAppearanceTracker.advertDidEnterView(for:on:)(v17, v11);
  }

  else
  {
    AdvertAppearanceTracker.advertDidLeaveView(for:on:)(v17, v11);
  }

  if (v13 != 3)
  {
    if (v13 != 2)
    {
      goto LABEL_21;
    }

    v21 = v23 <= 1 || v23 == 4;
    if (!v21 || v12 < 2)
    {
      goto LABEL_21;
    }

    v22 = 0;
    goto LABEL_20;
  }

  if (v12 >= 2)
  {
    v22 = 1;
LABEL_20:
    sub_24EC4A3B0(v22);
  }

LABEL_21:

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24EC4BB38(uint64_t a1)
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v1 + 112) == 1)
  {
    swift_beginAccess();
    sub_24E8F997C(v1 + 48, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(v5 + 8))(v4, v5);
    if (!v6)
    {
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }

    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v10);
    swift_unknownObjectWeakAssign();
    sub_24EB3DED0(v1 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v10);
    v8 = v11;
    if (v11)
    {
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v9 + 24))(v7, v8, v9);

      return __swift_destroy_boxed_opaque_existential_1(v10);
    }

    return sub_24E601704(v10, &qword_27F229490, &unk_24F984C40);
  }

  return result;
}

unint64_t sub_24EC4BDA8()
{
  result = qword_27F21BCB0;
  if (!qword_27F21BCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F21BCB0);
  }

  return result;
}

void sub_24EC4BDF4(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_24EC4BDA8();
    v5 = sub_24F92C408();

    if (v5)
    {
      if (qword_27F2105A0 != -1)
      {
        swift_once();
      }

      v6 = sub_24F92AAE8();
      __swift_project_value_buffer(v6, qword_27F39C440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F92A588();

      if (*(v2 + 112) == 1)
      {
        swift_unknownObjectWeakAssign();
        v7 = *(v2 + 128);
        *(v7 + 24) = 0;
        swift_unknownObjectWeakAssign();
        *(v7 + 40) = 0;
        swift_unknownObjectWeakAssign();
        v8 = 1;
        sub_24F031124(&v8);
        *(v7 + 81) = 4;
      }
    }
  }
}

uint64_t sub_24EC4BFE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E8F997C(v3 + 48, a2);
}

uint64_t sub_24EC4C034@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC4C090(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EC4C0F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EC4C14C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24EC4C1A8(uint64_t a1)
{
  result = type metadata accessor for AdvertRotationStrategy(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24EC4C70C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertRotationStrategy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC4C770()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39C118);
  __swift_project_value_buffer(v4, qword_27F39C118);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

id sub_24EC4C8CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27F22C170 = v0;
  return result;
}

id sub_24EC4C930@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = v18 - v5;
  result = [v1 rawUpdateDictionary];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = sub_24F92AE38();

  v18[1] = 0x44657361656C6572;
  v18[2] = 0xEB00000000657461;
  sub_24F92C7F8();
  if (!*(v9 + 16) || (v10 = sub_24E76D934(v19), (v11 & 1) == 0))
  {

    sub_24E6585F8(v19);
    goto LABEL_10;
  }

  sub_24E643A9C(*(v9 + 56) + 32 * v10, v20);
  sub_24E6585F8(v19);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v16 = sub_24F91F648();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  if (qword_27F2104C0 != -1)
  {
    swift_once();
  }

  v12 = qword_27F22C170;
  v13 = sub_24F92B098();

  v14 = [v12 dateFromString_];

  if (v14)
  {
    sub_24F91F608();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = sub_24F91F648();
  (*(*(v17 - 8) + 56))(v6, v15, 1, v17);
  return sub_24E6C4F90(v6, a1);
}

uint64_t sub_24EC4CBD0(void *a1, void *a2)
{
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v26 - v16;
  v18 = [a1 installDate];
  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = v18;
  sub_24F91F608();

  v20 = *(v5 + 32);
  v20(v17, v13, v4);
  v21 = [a2 installDate];
  if (!v21)
  {
    (*(v5 + 8))(v17, v4);
LABEL_5:
    v23 = 1;
    return v23 & 1;
  }

  v22 = v21;
  sub_24F91F608();

  v20(v10, v7, v4);
  v23 = sub_24F91F588();
  v24 = *(v5 + 8);
  v24(v10, v4);
  v24(v17, v4);
  return v23 & 1;
}

id sub_24EC4CDDC(void *a1, void *a2)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  v20 = sub_24F91F648();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v66 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v69 = &v63 - v24;
  sub_24EC4C930(v16);
  v25 = v21;
  v26 = *(v21 + 48);
  v27 = v26(v16, 1, v20);
  v67 = a1;
  if (v27 == 1)
  {
    v28 = [a1 timestamp];
    if (v28)
    {
      v29 = v28;
      sub_24F91F608();

      v25 = v21;
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(v25 + 56);
    v31(v13, v30, 1, v20);
    sub_24E6C4F90(v13, v19);
    if (v26(v16, 1, v20) != 1)
    {
      sub_24E601704(v16, &unk_27F22EC30, &qword_24F939880);
    }
  }

  else
  {
    (*(v21 + 32))(v19, v16, v20);
    v31 = *(v21 + 56);
    v31(v19, 0, 1, v20);
  }

  if (v26(v19, 1, v20) == 1)
  {
    v32 = v19;
LABEL_19:
    sub_24E601704(v32, &unk_27F22EC30, &qword_24F939880);
LABEL_20:
    v44 = 1;
    return (v44 & 1);
  }

  v33 = *(v25 + 32);
  v33(v69, v19, v20);
  v34 = v25;
  v35 = v68;
  sub_24EC4C930(v7);
  if (v26(v7, 1, v20) == 1)
  {
    v64 = v33;
    v36 = [v35 timestamp];
    if (v36)
    {
      v37 = v65;
      v38 = v36;
      sub_24F91F608();

      v39 = 0;
    }

    else
    {
      v39 = 1;
      v37 = v65;
    }

    v40 = v34;
    v31(v37, v39, 1, v20);
    sub_24E6C4F90(v37, v10);
    v41 = v26(v7, 1, v20);
    v33 = v64;
    if (v41 != 1)
    {
      sub_24E601704(v7, &unk_27F22EC30, &qword_24F939880);
    }
  }

  else
  {
    v33(v10, v7, v20);
    v31(v10, 0, 1, v20);
    v40 = v34;
  }

  v42 = v26(v10, 1, v20);
  v43 = v67;
  if (v42 == 1)
  {
    (*(v40 + 8))(v69, v20);
    v32 = v10;
    goto LABEL_19;
  }

  v46 = v66;
  v33(v66, v10, v20);
  v47 = v69;
  if ((sub_24F91F5F8() & 1) == 0)
  {
    v59 = v40;
    v44 = sub_24F91F588();
    v60 = *(v59 + 8);
    v60(v46, v20);
    v60(v47, v20);
    return (v44 & 1);
  }

  v48 = v40;
  result = [v43 updateDictionary];
  if (!result)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = result;
  v50 = sub_24F92AE38();

  v70 = 1701667182;
  v71 = 0xE400000000000000;
  sub_24F92C7F8();
  if (!*(v50 + 16) || (v51 = sub_24E76D934(v72), (v52 & 1) == 0))
  {

    sub_24E6585F8(v72);
    goto LABEL_36;
  }

  sub_24E643A9C(*(v50 + 56) + 32 * v51, v73);
  sub_24E6585F8(v72);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v61 = *(v48 + 8);
    v61(v46, v20);
LABEL_37:
    v61(v47, v20);
    goto LABEL_20;
  }

  v54 = v70;
  v53 = v71;
  result = [v68 updateDictionary];
  if (result)
  {
    v55 = result;
    v56 = sub_24F92AE38();

    v70 = 1701667182;
    v71 = 0xE400000000000000;
    sub_24F92C7F8();
    if (*(v56 + 16) && (v57 = sub_24E76D934(v72), (v58 & 1) != 0))
    {
      sub_24E643A9C(*(v56 + 56) + 32 * v57, v73);
      sub_24E6585F8(v72);

      if (swift_dynamicCast())
      {
        if (v54 == v70 && v53 == v71)
        {
          v44 = 0;
        }

        else
        {
          v44 = sub_24F92CE08();
        }

        v62 = *(v48 + 8);
        v62(v66, v20);
        v62(v47, v20);
        return (v44 & 1);
      }
    }

    else
    {

      sub_24E6585F8(v72);
    }

    v61 = *(v48 + 8);
    v61(v66, v20);
    goto LABEL_37;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t UpdatesSorter.Ordering.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t static UpdatesSorter.sortedUpdateLockups(for:ordering:isAppleSiliconSupportEnabled:isRosettaAvailable:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_24F92AAE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v50 = &v41 - v14;
  v49 = *a2;
  if (v49)
  {
    v15 = sub_24EC4CDDC;
  }

  else
  {
    v15 = sub_24EC4CBD0;
  }

  *&v54 = sub_24EC4E190(v16, sub_24EAEACA0, sub_24EA10904);
  sub_24EC4EAC8(&v54, v15);
  v17 = v54;
  v56 = MEMORY[0x277D84F90];
  if ((v54 & 0x8000000000000000) != 0 || (v54 & 0x4000000000000000) != 0)
  {
    goto LABEL_32;
  }

  for (i = *(v54 + 16); i; i = sub_24F92C738())
  {
    v19 = 0;
    v48 = v17 & 0xC000000000000001;
    v45 = "didEndDisplaying";
    v46 = (v4 + 16);
    v44 = (v4 + 8);
    v41 = MEMORY[0x277D84F90];
    v43 = xmmword_24F93A400;
    v42 = v17;
    v47 = i;
    while (1)
    {
      if (v48)
      {
        v20 = MEMORY[0x253052270](v19, v17);
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_31;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v4 = v20;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v53 = v19 + 1;
      if (v49)
      {
        sub_24EC4C930(v12);
      }

      else
      {
        v21 = [v20 installDate];
        if (v21)
        {
          v22 = v19;
          v23 = v21;
          sub_24F91F608();

          v19 = v22;
          v24 = 0;
        }

        else
        {
          v24 = 1;
        }

        v25 = sub_24F91F648();
        (*(*(v25 - 8) + 56))(v9, v24, 1, v25);
        sub_24E6C4F90(v9, v12);
      }

      v26 = v50;
      sub_24E6C4F90(v12, v50);
      v27 = v4;
      if (sub_24EEFE3C0(v27, v26, 1, 1, v19))
      {

        v4 = &v56;
        MEMORY[0x253050F00]();
        v39 = v47;
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
          v17 = v42;
        }

        sub_24F92B638();
        v41 = v56;
        v19 = v53;
        if (v53 == v39)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v52 = v19;
        if (qword_27F2104B8 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v3, qword_27F39C118);
        (*v46)(v6, v28, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = v43;
        sub_24F9283A8();
        v29 = [v27 bundleIdentifier];
        if (v29)
        {
          v30 = v29;
          v31 = sub_24F92B0D8();
          v51 = v27;
          v32 = v3;
          v33 = v6;
          v34 = v31;
          v35 = v12;
          v36 = v9;
          v38 = v37;

          *(&v55 + 1) = MEMORY[0x277D837D0];
          *&v54 = v34;
          *(&v54 + 1) = v38;
          v6 = v33;
          v3 = v32;
          v27 = v51;
          v9 = v36;
          v12 = v35;
          v17 = v42;
        }

        else
        {
          v54 = 0u;
          v55 = 0u;
        }

        sub_24F9283B8();
        sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
        v4 = v6;
        sub_24F92A598();

        (*v44)(v6, v3);

        v19 = v52 + 1;
        if (v53 == v47)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_34:

  return v41;
}

unint64_t static UpdatesSorter.sorted(updates:ordering:)(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v2 = sub_24EC4CDDC;
  }

  else
  {
    v2 = sub_24EC4CBD0;
  }

  v5 = sub_24EC4E190(v3, sub_24EAEACA0, sub_24EA10904);
  sub_24EC4EAC8(&v5, v2);
  return v5;
}

uint64_t sub_24EC4DCE8(void **__dst, id *__src, id *a3, unint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = v5;
  v7 = a3;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v55 = &v16[v11];
    if (v9 < 8 || __src >= v7)
    {
LABEL_20:
      v27 = v8;
      goto LABEL_53;
    }

    v17 = __src;
    while (1)
    {
      v18 = v17;
      v19 = v6;
      v20 = v16;
      v21 = *v16;
      v22 = *v17;
      v23 = v21;
      v24 = a5(v22, v23);
      if (v19)
      {

        v41 = v20;
        v42 = v55 - v20 + 7;
        if (v55 - v20 >= 0)
        {
          v42 = v55 - v20;
        }

        v43 = v42 >> 3;
        if (v8 < v20 || v8 >= (v20 + (v42 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v20, 8 * v43);
        }

        else if (v8 != v20)
        {
          v44 = 8 * v43;
          v45 = v8;
          goto LABEL_59;
        }

        return 1;
      }

      v25 = v24;

      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = v18;
      v17 = v18 + 1;
      v16 = v20;
      if (v8 != v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v8;
      v6 = 0;
      if (v16 >= v55 || v17 >= v7)
      {
        goto LABEL_20;
      }
    }

    v26 = v20;
    v16 = v20 + 1;
    v17 = v18;
    if (v8 == v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v8 = *v26;
    goto LABEL_18;
  }

  v27 = __src;
  if (a4 != __src || &__src[v14] <= a4)
  {
    v28 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v28;
  }

  v52 = a4;
  v55 = (a4 + 8 * v14);
  if (v12 < 8 || v27 <= v8)
  {
    v16 = a4;
    goto LABEL_53;
  }

  v29 = -a4;
  v50 = -a4;
LABEL_27:
  v53 = v6;
  v51 = v27;
  v30 = v27 - 1;
  v31 = v55;
  v32 = v55 + v29;
  --v7;
  while (1)
  {
    v33 = *--v31;
    v34 = v30;
    v35 = *v30;
    v36 = v33;
    v37 = v35;
    v38 = a5(v36, v37);

    if (v53)
    {
      break;
    }

    v39 = v7 + 1;
    if (v38)
    {
      v40 = v34;
      if (v39 != v51)
      {
        *v7 = *v34;
      }

      v16 = v52;
      v6 = 0;
      if (v55 <= v52 || (v27 = v40, v29 = v50, v40 <= v8))
      {
        v27 = v40;
        goto LABEL_53;
      }

      goto LABEL_27;
    }

    if (v39 != v55)
    {
      *v7 = *v31;
    }

    v32 -= 8;
    --v7;
    v55 = v31;
    v30 = v34;
    if (v31 <= v52)
    {
      v55 = v31;
      v27 = v51;
      v16 = v52;
LABEL_53:
      v48 = v55 - v16 + 7;
      if (v55 - v16 >= 0)
      {
        v48 = v55 - v16;
      }

      if (v27 >= v16 && v27 < (v16 + (v48 & 0xFFFFFFFFFFFFFFF8)) && v27 == v16)
      {
        return 1;
      }

      v44 = 8 * (v48 >> 3);
      v45 = v27;
      v41 = v16;
LABEL_59:
      memmove(v45, v41, v44);
      return 1;
    }
  }

  if (v32 >= 0)
  {
    v46 = v32;
  }

  else
  {
    v46 = v32 + 7;
  }

  v47 = v46 >> 3;
  v45 = v51;
  v41 = v52;
  if (v51 < v52 || v51 >= (v52 + (v46 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v51, v52, 8 * v47);
    return 1;
  }

  if (v51 != v52)
  {
    v44 = 8 * v47;
    goto LABEL_59;
  }

  return 1;
}

unint64_t sub_24EC4E190(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_24F92C738();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_24EC4E234(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_91;
    }

    goto LABEL_129;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v7)
    {
      goto LABEL_20;
    }

    v101 = v7;
    v13 = *v6;
    v14 = *(v13 + 8 * v9);
    v9 = *(v13 + 8 * v12);
    v15 = v14;
    v16 = a5(v9, v15);
    if (v5)
    {

      return;
    }

    v17 = v16;

    v18 = v11 + 2;
    v97 = v11;
    v19 = 8 * v11;
    v20 = (v13 + v19 + 16);
    while (1)
    {
      v21 = v101;
      if (v101 == v18)
      {
        break;
      }

      v22 = *(v20 - 1);
      v9 = *v20;
      v23 = v22;
      LODWORD(v22) = a5(v9, v23);

      ++v18;
      ++v20;
      if ((v17 ^ v22))
      {
        v21 = v18 - 1;
        break;
      }
    }

    v6 = a3;
    v8 = a4;
    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v97;
    if (v21 < v97)
    {
      goto LABEL_123;
    }

    if (v97 < v21)
    {
      v25 = 8 * v21 - 8;
      v26 = v21;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_127;
          }

          v28 = *(v27 + v19);
          *(v27 + v19) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v19 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v12 = v21;
      v11 = v97;
      goto LABEL_20;
    }

    v12 = v21;
    v11 = v97;
LABEL_20:
    v29 = v6[1];
    if (v12 >= v29)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_119;
    }

    if (v12 - v11 >= v8)
    {
      goto LABEL_132;
    }

    v30 = v11 + v8;
    if (__OFADD__(v11, v8))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v30 >= v29)
    {
      v30 = v6[1];
    }

    if (v30 < v11)
    {
      goto LABEL_122;
    }

    if (v12 == v30)
    {
LABEL_132:
      if (v12 < v11)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v79 = *v6;
      v80 = v79 + 8 * v12 - 8;
      v98 = v11;
      v81 = v11 - v12;
      v94 = v30;
      do
      {
        v102 = v12;
        v82 = *(v79 + 8 * v12);
        v83 = v81;
        v95 = v80;
        do
        {
          v84 = *v80;
          v9 = v82;
          v85 = v84;
          v86 = a5(v9, v85);
          if (v5)
          {

            return;
          }

          v87 = v86;

          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v79)
          {
            goto LABEL_125;
          }

          v88 = *v80;
          v82 = *(v80 + 8);
          *v80 = v82;
          *(v80 + 8) = v88;
          v80 -= 8;
        }

        while (!__CFADD__(v83++, 1));
        v12 = v102 + 1;
        v80 = v95 + 8;
        --v81;
      }

      while (v102 + 1 != v94);
      v12 = v94;
      v6 = a3;
      v11 = v98;
      if (v94 < v98)
      {
        goto LABEL_118;
      }
    }

    v31 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_24E615ED8(0, *(v10 + 2) + 1, 1, v10);
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v10 = sub_24E615ED8((v32 > 1), v33 + 1, 1, v10);
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v33];
    *(v35 + 4) = v31;
    *(v35 + 5) = v12;
    v36 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    v9 = v12;
    if (v33)
    {
      break;
    }

LABEL_3:
    v7 = v6[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v37 = v34 - 1;
    if (v34 >= 4)
    {
      v42 = &v10[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = &v10[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_111;
      }

      if (v53 >= v45)
      {
        v71 = &v10[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_117;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v34 == 3)
    {
      v38 = *(v10 + 4);
      v39 = *(v10 + 5);
      v48 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      v41 = v48;
LABEL_48:
      if (v41)
      {
        goto LABEL_107;
      }

      v54 = &v10[16 * v34];
      v56 = *v54;
      v55 = *(v54 + 1);
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      v59 = v57;
      if (v57)
      {
        goto LABEL_110;
      }

      v60 = &v10[16 * v37 + 32];
      v62 = *v60;
      v61 = *(v60 + 1);
      v48 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v48)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v58, v63))
      {
        goto LABEL_114;
      }

      if (v58 + v63 >= v40)
      {
        if (v40 < v63)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v64 = &v10[16 * v34];
    v66 = *v64;
    v65 = *(v64 + 1);
    v48 = __OFSUB__(v65, v66);
    v58 = v65 - v66;
    v59 = v48;
LABEL_62:
    if (v59)
    {
      goto LABEL_109;
    }

    v67 = &v10[16 * v37];
    v69 = *(v67 + 4);
    v68 = *(v67 + 5);
    v48 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v48)
    {
      goto LABEL_112;
    }

    if (v70 < v58)
    {
      goto LABEL_3;
    }

LABEL_69:
    v75 = v37 - 1;
    if (v37 - 1 >= v34)
    {
      break;
    }

    if (!*v6)
    {
      goto LABEL_124;
    }

    v76 = *&v10[16 * v75 + 32];
    v77 = *&v10[16 * v37 + 40];
    sub_24EC4DCE8((*v6 + 8 * v76), (*v6 + 8 * *&v10[16 * v37 + 32]), (*v6 + 8 * v77), v36, a5);
    if (v5)
    {
      goto LABEL_99;
    }

    if (v77 < v76)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_24E86164C(v10);
    }

    if (v75 >= *(v10 + 2))
    {
      goto LABEL_104;
    }

    v78 = &v10[16 * v75];
    *(v78 + 4) = v76;
    *(v78 + 5) = v77;
    sub_24E8615C0(v37);
    v34 = *(v10 + 2);
    if (v34 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_119:
  __break(1u);
LABEL_120:
  v10 = sub_24E86164C(v10);
LABEL_91:
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
LABEL_99:
  }

  else
  {
    while (*v6)
    {
      v91 = *&v10[16 * v90];
      v92 = *&v10[16 * v90 + 24];
      sub_24EC4DCE8((*v6 + 8 * v91), (*v6 + 8 * *&v10[16 * v90 + 16]), (*v6 + 8 * v92), v9, a5);
      if (v5)
      {
        goto LABEL_99;
      }

      if (v92 < v91)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_24E86164C(v10);
      }

      if (v90 - 2 >= *(v10 + 2))
      {
        goto LABEL_116;
      }

      v93 = &v10[16 * v90];
      *v93 = v91;
      *(v93 + 1) = v92;
      sub_24E8615C0(v90 - 1);
      v90 = *(v10 + 2);
      if (v90 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }
}

void sub_24EC4E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(id, id))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_4:
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    v19 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = a5(v12, v13);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = *(v8 + 8);
        *v8 = v10;
        *(v8 + 8) = v15;
        v8 -= 8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 8;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_24EC4E9A4(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = a1[1];
  v5 = sub_24F92CD78();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24EC4EBD4();
        v8 = sub_24F92B618();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_24EC4E234(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_24EC4E8AC(0, v4, 1, a1, a2);
  }
}

uint64_t sub_24EC4EAC8(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_24E861E6C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_24EC4E9A4(v8, a2);
  return sub_24F92C958();
}

unint64_t sub_24EC4EB60()
{
  result = qword_27F22C178;
  if (!qword_27F22C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C178);
  }

  return result;
}

unint64_t sub_24EC4EBD4()
{
  result = qword_27F225148;
  if (!qword_27F225148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F225148);
  }

  return result;
}

char *ScrollingAlertAction.__allocating_init(title:message:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *&v12[OBJC_IVAR____TtC12GameStoreKit20ScrollingAlertAction_message] = a3;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v13 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v12[v13], a4, v14);
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
  v18 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v35, &v32);
  if (*(&v33 + 1))
  {
    v20 = v33;
    *v19 = v32;
    *(v19 + 1) = v20;
    *(v19 + 4) = v34;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v22 = v8;
    v23 = a4;
    v24 = a1;
    v25 = a2;
    v26 = v21;
    v27 = v9;
    v29 = v28;
    (*(v27 + 8))(v11, v22);
    v31[1] = v26;
    v31[2] = v29;
    a2 = v25;
    a1 = v24;
    a4 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v15 + 8))(a4, v14);
  sub_24E601704(v35, &qword_27F235830, &qword_24F93B8C0);
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  return v12;
}

void *ScrollingAlertAction.init(title:message:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit20ScrollingAlertAction_message) = a3;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v30 = a4;
    v23 = a1;
    v24 = a2;
    v26 = v25;
    (*(v31 + 8))(v12, v32);
    v33 = v22;
    v34 = v26;
    a2 = v24;
    a1 = v23;
    a4 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v17 + 8))(a4, v16);
  sub_24E601704(v41, &qword_27F235830, &qword_24F93B8C0);
  v27 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 4) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 1) = v28;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = 0;
  v5[5] = 0;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

uint64_t ScrollingAlertAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v46 = a2;
  v6 = *v2;
  v43 = v3;
  v44 = v6;
  v45 = sub_24F9285B8();
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  sub_24F928398();
  v20 = sub_24F928328();
  v41 = v12;
  v21 = *(v12 + 8);
  v21(v19, v11);
  if (v20)
  {
    v22 = a1;
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v25 = v24;
    *v24 = 0x656C746974;
    v26 = 0xE500000000000000;
LABEL_5:
    v28 = v44;
    v24[1] = v26;
    v24[2] = v28;
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    goto LABEL_6;
  }

  sub_24F928398();
  v27 = sub_24F928328();
  v21(v19, v11);
  if (v27)
  {
    v22 = a1;
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v25 = v24;
    *v24 = 0x6567617373656DLL;
    v26 = 0xE700000000000000;
    goto LABEL_5;
  }

  v39 = v21;
  sub_24F928398();
  v23 = v47 + 16;
  v30 = v45;
  v31 = v46;
  v38 = *(v47 + 16);
  v38(v10, v46, v45);
  v32 = v43;
  v33 = sub_24F0151C0(v16, v10);
  if (!v32)
  {
    *(v4 + OBJC_IVAR____TtC12GameStoreKit20ScrollingAlertAction_message) = v33;
    v34 = v40;
    v35 = *(v41 + 16);
    v44 = v11;
    v35(v40, a1, v11);
    v36 = v42;
    v38(v42, v31, v30);
    v23 = Action.init(deserializing:using:)(v34, v36);
    (*(v47 + 8))(v31, v30);
    v39(a1, v44);
    return v23;
  }

  v22 = a1;
  v21 = v39;
LABEL_6:
  (*(v47 + 8))(v46, v45);
  v21(v22, v11);
  swift_deallocPartialClassInstance();
  return v23;
}

uint64_t ScrollingAlertAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t ScrollingAlertAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScrollingAlertAction(uint64_t a1)
{
  result = qword_27F22C180;
  if (!qword_27F22C180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC4FA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction(0);
  v10 = *(ChallengeRematchAction - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](ChallengeRematchAction - 8);
  sub_24EC538D8(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateChallengeRematchAction);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24EC5188C(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F98FC20;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EC4FCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  v4[19] = type metadata accessor for CreateChallengeIntent(0);
  v4[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v7 = swift_task_alloc();
  v4[24] = v7;
  *v7 = v4;
  v7[1] = sub_24EC4FE0C;

  return MEMORY[0x28217F228](v4 + 2, v6, v6);
}

uint64_t sub_24EC4FE0C()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EC506E4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_24EC4FF8C;
    v4 = v2[23];
    v5 = v2[21];

    return MEMORY[0x28217F228](v4, v5, v5);
  }
}

uint64_t sub_24EC4FF8C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_24EC50754;
  }

  else
  {
    v2 = sub_24EC500A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC500A0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v32 = v3[4];
  v33 = v3[2];
  v30 = v3[3];
  v31 = v3[5];
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction(0);
  v5 = ChallengeRematchAction[6];
  v6 = (v3 + ChallengeRematchAction[5]);
  v28 = v6[1];
  v29 = *v6;
  v27 = *(v3 + v5);
  v26 = *(v3 + v5 + 8);
  v7 = v3 + ChallengeRematchAction[7];
  v25 = *v7;
  v24 = v7[8];
  v8 = *(v3 + ChallengeRematchAction[8]);
  v9 = ChallengeRematchAction[10];
  v10 = (v3 + ChallengeRematchAction[9]);
  v11 = v10[1];
  v23 = *v10;
  v12 = *(v3 + v9);
  v13 = *(v3 + v9 + 8);
  v14 = *(v3 + ChallengeRematchAction[11]);
  sub_24EC51A2C(v3 + ChallengeRematchAction[12], v2 + *(v1 + 56));
  sub_24EC538D8(v3 + ChallengeRematchAction[13], v2 + *(v1 + 60), type metadata accessor for Player);
  *v2 = v33;
  *(v2 + 8) = v30;
  *(v2 + 16) = v32;
  *(v2 + 24) = v31;
  *(v2 + 32) = v29;
  *(v2 + 40) = v28;
  *(v2 + 48) = v27;
  *(v2 + 56) = v26;
  *(v2 + 64) = v25;
  *(v2 + 72) = v24;
  v15 = MEMORY[0x277D84F90];
  *(v2 + 80) = v8;
  *(v2 + 88) = v15;
  *(v2 + 96) = v23;
  *(v2 + 104) = v11;
  *(v2 + 112) = v12;
  *(v2 + 120) = v13;
  *(v2 + 128) = v14;
  v16 = v0[5];
  v34 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v16);

  v17 = swift_task_alloc();
  v0[28] = v17;
  v18 = sub_24EC53940(&qword_27F21D5E0, type metadata accessor for CreateChallengeIntent, &protocol conformance descriptor for CreateChallengeIntent);
  *v17 = v0;
  v17[1] = sub_24EC50304;
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[16];

  return MEMORY[0x28217F4B0](v0 + 7, v19, v21, v20, v18, v16, v34);
}

uint64_t sub_24EC50304()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24EC50DCC;
  }

  else
  {
    v2 = sub_24EC50418;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC50418()
{
  v2 = v0[7];
  v1 = v0[8];
  v0[30] = v1;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_24EC504C4;
  v4 = v0[23];
  v5 = v0[17];
  v6 = v0[16];

  return sub_24EC51AE8(v2, v1, v5, v6, v4, (v0 + 2));
}

uint64_t sub_24EC504C4()
{

  return MEMORY[0x2822009F8](sub_24EC505DC, 0, 0);
}

uint64_t sub_24EC505DC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_24EC53988(v0[20], type metadata accessor for CreateChallengeIntent);
  (*(v2 + 8))(v1, v3);
  v4 = v0[15];
  v5 = *MEMORY[0x277D21CA8];
  v6 = sub_24F928AE8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24EC506E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC50754()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC507CC()
{
  v2 = *(*v1 + 256);
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_24EC50A14;
  }

  else
  {
    v3 = sub_24EC508F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EC508F8()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  sub_24EC53988(v4, type metadata accessor for CreateChallengeIntent);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 120);
  v6 = *MEMORY[0x277D21CA8];
  v7 = sub_24F928AE8();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24EC50A14()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  sub_24EC53988(v4, type metadata accessor for CreateChallengeIntent);
  (*(v2 + 8))(v1, v3);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EC50AE0()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_24EC50D08;
  }

  else
  {
    v2 = sub_24EC50BF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC50BF4()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  sub_24EC53988(v4, type metadata accessor for CreateChallengeIntent);
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 120);
  v6 = *MEMORY[0x277D21CA8];
  v7 = sub_24F928AE8();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24EC50D08()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  sub_24EC53988(v4, type metadata accessor for CreateChallengeIntent);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EC50DCC()
{
  v1 = *(v0 + 232);
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  sub_24EC51A9C();
  if (!swift_dynamicCast())
  {
LABEL_15:

    v20 = swift_task_alloc();
    *(v0 + 280) = v20;
    *v20 = v0;
    v20[1] = sub_24EC50AE0;
    v21 = *(v0 + 184);
    v22 = *(v0 + 128);

    return sub_24EC53060(v22, v21);
  }

  v3 = *(v0 + 112);
  *(v0 + 256) = v3;
  v4 = [v3 domain];
  v5 = sub_24F92B0D8();
  v7 = v6;

  if (v5 == 0xD00000000000001ELL && 0x800000024FA58030 == v7)
  {
  }

  else
  {
    v9 = sub_24F92CE08();

    if ((v9 & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }
  }

  if ([v3 code] != 1)
  {
    goto LABEL_14;
  }

  v10 = [v3 localizedDescription];
  v11 = sub_24F92B0D8();
  v13 = v12;

  *(v0 + 72) = v11;
  *(v0 + 80) = v13;
  *(v0 + 88) = 892416309;
  *(v0 + 96) = 0xE400000000000000;
  sub_24E600AEC();
  v14 = sub_24F92C5F8();

  if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = v3;
  v16 = swift_task_alloc();
  *(v0 + 264) = v16;
  *v16 = v0;
  v16[1] = sub_24EC507CC;
  v17 = *(v0 + 184);
  v18 = *(v0 + 128);

  return sub_24EC529C4(v18, v17);
}

uint64_t sub_24EC510E0()
{
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction(0);
  v2 = *(*(ChallengeRematchAction - 1) + 80);

  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = *(type metadata accessor for GameActivityDraftGameInfo(0) + 28);
  v5 = sub_24F9289E8();
  v37 = *(v5 - 8);
  v6 = *(v37 + 8);
  v6(v3 + v4, v5);

  v7 = ChallengeRematchAction[12];
  v8 = sub_24F920A88();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  v10 = v3 + ChallengeRematchAction[13];

  v11 = type metadata accessor for Player(0);
  v38 = v5;
  v36 = v6;
  v6(v10 + v11[6], v5);

  if (*(v10 + v11[9] + 8) != 1)
  {
  }

  v12 = v10 + v11[13];
  v13 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = type metadata accessor for CallProviderConversationHandle(0);
    v15 = *(*(v14 - 8) + 48);
    if (!v15(v12, 1, v14))
    {

      v16 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v37 + 48))(v12 + v16, 1, v38))
      {
        v36(v12 + v16, v38);
      }
    }

    v17 = v12 + *(v13 + 20);
    if (!v15(v17, 1, v14))
    {

      v18 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v37 + 48))(v17 + v18, 1, v38))
      {
        v36(v17 + v18, v38);
      }
    }
  }

  if (*(v10 + v11[15] + 8))
  {
  }

  v19 = v10 + v11[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v19, 1, PlayedTogetherInfo))
  {

    v21 = type metadata accessor for Game(0);
    v36(v19 + v21[18], v38);
    v22 = v21[19];
    if (!(*(v37 + 48))(v19 + v22, 1, v38))
    {
      v36(v19 + v22, v38);
    }

    v23 = v21[21];
    v24 = sub_24F920818();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }
  }

  v26 = v10 + v11[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v26, 1, ChallengeInfo))
  {

    v28 = type metadata accessor for Game(0);
    v36(v26 + v28[18], v38);
    v29 = v28[19];
    if (!(*(v37 + 48))(v26 + v29, 1, v38))
    {
      v36(v26 + v29, v38);
    }

    v30 = v28[21];
    v31 = sub_24F920818();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v26 + v30, 1, v31))
    {
      (*(v32 + 8))(v26 + v30, v31);
    }
  }

  v33 = ChallengeRematchAction[14];
  v34 = sub_24F928AD8();
  (*(*(v34 - 8) + 8))(v3 + v33, v34);

  return swift_deallocObject();
}

uint64_t sub_24EC5188C(uint64_t a1, uint64_t a2)
{
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction(0);
  (*(*(ChallengeRematchAction - 8) + 32))(a2, a1, ChallengeRematchAction);
  return a2;
}

uint64_t sub_24EC518F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for CreateChallengeRematchAction(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EC4FCB0(a1, v7, v1 + v6, v4);
}

uint64_t sub_24EC519E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EC51A2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EC51A9C()
{
  result = qword_27F22C210;
  if (!qword_27F22C210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22C210);
  }

  return result;
}

uint64_t sub_24EC51AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C218, &qword_24F98FC40);
  v6[23] = swift_task_alloc();
  sub_24F928AD8();
  v6[24] = swift_task_alloc();
  v7 = sub_24F92A6B8();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v9 = sub_24F928AE8();
  v6[32] = v9;
  v6[33] = *(v9 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = type metadata accessor for FinishChallengeCreationIntent(0);
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC51D14, 0, 0);
}

uint64_t sub_24EC51D14(__n128 a1)
{
  v3 = v1[35];
  v2 = v1[36];
  v4 = v1[22];
  v6 = v1[18];
  v5 = v1[19];
  v7 = v1[17];
  v9 = *(v5 + 32);
  v8 = *(v5 + 40);
  v10 = *(v3 + 28);
  sub_24EC538D8(v5, v2 + v10, type metadata accessor for GameActivityDraftGameInfo);
  v11 = type metadata accessor for GameActivityDraftGameInfo(0);
  (*(*(v11 - 8) + 56))(v2 + v10, 0, 1, v11);

  v12 = sub_24F92A698();
  *v2 = v7;
  *(v2 + 8) = v6;
  *(v2 + 16) = v9;
  *(v2 + 24) = v8;
  *(v2 + 32) = 1;
  v13 = (v2 + *(v3 + 32));
  *v13 = v12;
  v13[1] = v14;
  v15 = v4[3];
  v16 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v15);
  v17 = swift_task_alloc();
  v1[37] = v17;
  v18 = sub_24EC53940(&qword_27F22C220, type metadata accessor for FinishChallengeCreationIntent, &unk_24F9DE678);
  *v17 = v1;
  v17[1] = sub_24EC51ECC;
  v20 = v1[35];
  v19 = v1[36];
  v21 = v1[20];

  return MEMORY[0x28217F4B0](v1 + 7, v19, v21, v20, v18, v15, v16);
}

uint64_t sub_24EC51ECC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_24EC525AC;
  }

  else
  {
    v2 = sub_24EC51FE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC51FE0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  sub_24E612C80((v0 + 56), v0 + 16);
  *(v0 + 344) = *MEMORY[0x277D21E18];
  (*(v2 + 104))(v1);
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  *v3 = v0;
  v3[1] = sub_24EC520E0;
  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 160);

  return MEMORY[0x28217F468](v5, v0 + 16, v6, v7, v4);
}

uint64_t sub_24EC520E0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  *(*v1 + 320) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24EC52730;
  }

  else
  {
    (*(v2[33] + 8))(v2[34], v2[32]);
    v6 = sub_24EC52270;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EC52270()
{
  v1 = v0[36];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24EC53988(v1, type metadata accessor for FinishChallengeCreationIntent);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24EC52348()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[29];
    v3 = v2[30];
    v5 = v2[28];

    (*(v4 + 8))(v3, v5);
    v6 = sub_24EC528B8;
  }

  else
  {
    (*(v2[29] + 8))(v2[30], v2[28]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 12);
    v6 = sub_24EC524A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EC524A8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 184);
  (*(*(v0 + 264) + 56))(v4, 0, 1, *(v0 + 256));
  sub_24EC539E8(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EC525AC()
{
  sub_24EC53988(v0[36], type metadata accessor for FinishChallengeCreationIntent);
  v1 = *MEMORY[0x277D21E18];
  v0[41] = v0[38];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  sub_24F928A98();
  sub_24F92A698();
  sub_24F92A668();
  v8 = MEMORY[0x277D223D8];
  v0[15] = v6;
  v0[16] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  (*(v7 + 16))(boxed_opaque_existential_1, v5, v6);
  (*(v3 + 104))(v2, v1, v4);
  v10 = swift_task_alloc();
  v0[42] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  *v10 = v0;
  v10[1] = sub_24EC52348;
  v12 = v0[30];
  v13 = v0[23];
  v14 = v0[20];

  return MEMORY[0x28217F468](v13, v0 + 12, v12, v14, v11);
}

uint64_t sub_24EC52730()
{
  v1 = *(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_24EC53988(v1, type metadata accessor for FinishChallengeCreationIntent);
  v2 = *(v0 + 344);
  *(v0 + 328) = *(v0 + 320);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  sub_24F928A98();
  sub_24F92A698();
  sub_24F92A668();
  v9 = MEMORY[0x277D223D8];
  *(v0 + 120) = v7;
  *(v0 + 128) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  (*(v8 + 16))(boxed_opaque_existential_1, v6, v7);
  (*(v4 + 104))(v3, v2, v5);
  v11 = swift_task_alloc();
  *(v0 + 336) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  *v11 = v0;
  v11[1] = sub_24EC52348;
  v13 = *(v0 + 240);
  v14 = *(v0 + 184);
  v15 = *(v0 + 160);

  return MEMORY[0x28217F468](v14, v0 + 96, v13, v15, v12);
}

uint64_t sub_24EC528B8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v4 = *(v0 + 184);
  (*(*(v0 + 264) + 56))(v4, 1, 1, *(v0 + 256));
  sub_24EC539E8(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EC529C4(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_24F928AE8();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_24F9289E8();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40, &unk_24F9487C0);
  v2[16] = swift_task_alloc();
  sub_24F928AD8();
  v2[17] = swift_task_alloc();
  v5 = sub_24F92A638();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC52BD8, 0, 0);
}

uint64_t sub_24EC52BD8(uint64_t a1)
{
  v2 = v1[19];
  v20 = v1[20];
  v21 = v1[18];
  v3 = v1[16];
  v4 = v1[10];
  v22 = v1[9];
  v23 = v1[11];
  sub_24F928A98();
  v5 = sub_24F92A628();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6._countAndFlagsBits = 0xD000000000000036;
  v6._object = 0x800000024FA58050;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  localizedString(_:comment:)(v6, v7);
  v8._countAndFlagsBits = 0xD000000000000038;
  v8._object = 0x800000024FA58090;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  localizedString(_:comment:)(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8, &qword_24F93BA00);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v10._object = 0x800000024FA580D0;
  v10._countAndFlagsBits = 0xD00000000000001FLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  localizedString(_:comment:)(v10, v11);
  sub_24F92A5D8();
  sub_24F92A5F8();
  sub_24F9289D8();
  sub_24F92A5E8();
  v12 = MEMORY[0x277D223B8];
  v1[5] = v21;
  v1[6] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  (*(v2 + 16))(boxed_opaque_existential_1, v20, v21);
  (*(v4 + 104))(v23, *MEMORY[0x277D21E18], v22);
  v14 = swift_task_alloc();
  v1[21] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  *v14 = v1;
  v14[1] = sub_24EC52EC8;
  v16 = v1[14];
  v17 = v1[11];
  v18 = v1[7];

  return MEMORY[0x28217F468](v16, v1 + 2, v17, v18, v15);
}

uint64_t sub_24EC52EC8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24EC53A50;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v6 = sub_24EC53A54;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EC53060(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_24F928AE8();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_24F9289E8();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40, &unk_24F9487C0);
  v2[16] = swift_task_alloc();
  sub_24F928AD8();
  v2[17] = swift_task_alloc();
  v5 = sub_24F92A638();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC53274, 0, 0);
}

uint64_t sub_24EC53274(uint64_t a1)
{
  v2 = v1[16];
  sub_24F928A98();
  v3 = sub_24F92A628();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  if (qword_27F2114C0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F2114C8;

  if (v4 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8, &qword_24F93BA00);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v5 = qword_27F211588;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = v1[19];
  v7 = v1[20];
  v8 = v1[18];
  v9 = v1[10];
  v18 = v1[9];
  v19 = v1[11];

  sub_24F92A5D8();
  sub_24F92A5F8();
  sub_24F9289D8();
  sub_24F92A5E8();
  v10 = MEMORY[0x277D223B8];
  v1[5] = v8;
  v1[6] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  (*(v6 + 16))(boxed_opaque_existential_1, v7, v8);
  (*(v9 + 104))(v19, *MEMORY[0x277D21E18], v18);
  v12 = swift_task_alloc();
  v1[21] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  *v12 = v1;
  v12[1] = sub_24EC535B0;
  v14 = v1[14];
  v15 = v1[11];
  v16 = v1[7];

  return MEMORY[0x28217F468](v14, v1 + 2, v15, v16, v13);
}

uint64_t sub_24EC535B0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24EC5380C;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v6 = sub_24EC53748;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EC53748()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EC5380C()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EC538D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC53940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC53988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EC539E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C218, &qword_24F98FC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchAction.term.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);

  return v1;
}

uint64_t SearchAction.source.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);

  return v1;
}

uint64_t SearchAction.originatingTerm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);

  return v1;
}

uint64_t SearchAction.prefixTerm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);

  return v1;
}

uint64_t SearchAction.guidedSearchOptimizationTerm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);

  return v1;
}

double SearchAction.referrerData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 16);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 24);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  *(a1 + 40) = v8;
  return sub_24EA145F0(v3, v4, v5, v6, v7, v8);
}

void *SearchAction.__allocating_init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, char *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v62 = a8;
  v71 = a1;
  v72 = a2;
  v69 = a17;
  v70 = a18;
  v67 = a15;
  v68 = a16;
  v65 = a13;
  v66 = a14;
  v64 = a12;
  v63 = a11;
  v61 = a10;
  v60 = sub_24F91F6B8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v27 = *a6;
  v28 = *a9;
  v29 = *(a20 + 32);
  v30 = *(a20 + 40);
  v31 = (v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  *v31 = a3;
  v31[1] = a4;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin) = v27;
  v32 = (v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  v33 = v62;
  *v32 = a7;
  v32[1] = v33;
  sub_24E60169C(a5, v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530, &unk_24F93C6E0);
  *(v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity) = v28;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled) = v61;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms) = v63;
  v34 = (v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  v35 = v65;
  *v34 = v64;
  v34[1] = v35;
  v36 = (v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);
  v37 = v67;
  *v36 = v66;
  v36[1] = v37;
  v38 = v69;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens) = v68;
  v39 = (v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v40 = v70;
  *v39 = v38;
  v39[1] = v40;
  v41 = v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  v42 = *(a20 + 16);
  *v41 = *a20;
  *(v41 + 1) = v42;
  *(v41 + 4) = v29;
  v41[40] = v30;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  v43 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v44 = sub_24F928AD8();
  v45 = *(v44 - 8);
  (*(v45 + 16))(v26 + v43, a19, v44);
  v46 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v47 = sub_24F929608();
  (*(*(v47 - 8) + 56))(v26 + v46, 1, 1, v47);
  v48 = (v26 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v48 = 0u;
  v48[1] = 0u;
  v49 = v26 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v78, &v75, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v76 + 1))
  {
    v50 = v76;
    *v49 = v75;
    *(v49 + 1) = v50;
    *(v49 + 4) = v77;
  }

  else
  {
    v51 = v58;
    sub_24F91F6A8();
    v52 = sub_24F91F668();
    v53 = a5;
    v55 = v54;
    (*(v59 + 8))(v51, v60);
    v73 = v52;
    v74 = v55;
    a5 = v53;
    sub_24F92C7F8();
    sub_24E601704(&v75, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v45 + 8))(a19, v44);
  sub_24E601704(a5, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v78, &qword_27F235830, &qword_24F93B8C0);
  v56 = v72;
  v26[2] = v71;
  v26[3] = v56;
  v26[4] = 0;
  v26[5] = 0;
  return v26;
}

void *SearchAction.init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, char *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  v66 = a8;
  v64 = a7;
  v63 = a5;
  v76 = a1;
  v77 = a2;
  v74 = a18;
  v73 = a17;
  v72 = a16;
  v71 = a15;
  v70 = a14;
  v69 = a13;
  v68 = a12;
  v67 = a11;
  v65 = a10;
  v75 = a19;
  v62 = sub_24F91F6B8();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v59 - v27;
  v29 = sub_24F928AD8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v31) = *a6;
  v33 = *a9;
  v34 = *(a20 + 32);
  LOBYTE(a6) = *(a20 + 40);
  v35 = (v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  *v35 = a3;
  v35[1] = a4;
  v36 = v32;
  v37 = v63;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin) = v31;
  v38 = (v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  v39 = v66;
  *v38 = v64;
  v38[1] = v39;
  sub_24E60169C(v37, v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530, &unk_24F93C6E0);
  *(v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity) = v33;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled) = v65;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms) = v67;
  v40 = (v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  v41 = v69;
  *v40 = v68;
  v40[1] = v41;
  v42 = (v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);
  v43 = v71;
  *v42 = v70;
  v42[1] = v43;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens) = v72;
  v44 = (v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v45 = v74;
  *v44 = v73;
  v44[1] = v45;
  v46 = v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  v47 = *(a20 + 16);
  *v46 = *a20;
  *(v46 + 1) = v47;
  *(v46 + 4) = v34;
  v46[40] = a6;
  v48 = v75;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  (*(v30 + 16))(v36, v75, v29);
  v49 = sub_24F929608();
  (*(*(v49 - 8) + 56))(v28, 1, 1, v49);
  v50 = (v21 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v50 = 0u;
  v50[1] = 0u;
  sub_24E60169C(v86, &v80, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v81 + 1))
  {
    v83 = v80;
    v84 = v81;
    v85 = v82;
  }

  else
  {
    v51 = v60;
    sub_24F91F6A8();
    v52 = sub_24F91F668();
    v54 = v53;
    (*(v61 + 8))(v51, v62);
    v78 = v52;
    v79 = v54;
    sub_24F92C7F8();
    sub_24E601704(&v80, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v30 + 8))(v48, v29);
  sub_24E601704(v37, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v86, &qword_27F235830, &qword_24F93B8C0);
  v55 = v21 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v55 + 4) = v85;
  v56 = v84;
  *v55 = v83;
  *(v55 + 1) = v56;
  sub_24E6009C8(v28, v21 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v57 = v77;
  v21[2] = v76;
  v21[3] = v57;
  v21[4] = 0;
  v21[5] = 0;
  (*(v30 + 32))(v21 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v36, v29);
  return v21;
}

uint64_t SearchAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v115 = a2;
  v120 = v3;
  v112 = *v3;
  v5 = sub_24F9285B8();
  v113 = *(v5 - 8);
  v114 = v5;
  MEMORY[0x28223BE20](v5);
  v108 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v107 = v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v104 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v102 = v99 - v12;
  MEMORY[0x28223BE20](v13);
  v109 = v99 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = (v99 - v16);
  v17 = sub_24F928388();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v105 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = v99 - v21;
  MEMORY[0x28223BE20](v22);
  v101 = v99 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v99 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v99 - v28;
  v30 = 0xE400000000000000;
  v31 = a1;
  sub_24F928398();
  v32 = sub_24F928348();
  v34 = v33;
  v106 = v18;
  v35 = v18 + 8;
  v36 = *(v18 + 8);
  v37 = v29;
  v38 = v17;
  v39 = v35;
  v36(v37, v38);
  if (!v34)
  {
    v111 = 1836213620;
    v42 = a1;
    goto LABEL_5;
  }

  v111 = 0x6E696769726FLL;
  sub_24F928398();
  sub_24EC55680();
  sub_24F928248();
  v36(v26, v38);
  v40 = v38;
  v41 = v116;
  if (v116 == 15)
  {
    v42 = v31;

    v30 = 0xE600000000000000;
    v38 = v40;
LABEL_5:
    v43 = sub_24F92AC38();
    sub_24EC557C4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v44 = v112;
    *v45 = v111;
    v45[1] = v30;
    v45[2] = v44;
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D22530], v43);
    swift_willThrow();
    (*(v113 + 8))(v115, v114);
    v36(v42, v38);
    swift_deallocPartialClassInstance();
    return v43;
  }

  v46 = v120;
  v47 = (v120 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  *v47 = v32;
  v47[1] = v34;
  v48 = v40;
  sub_24F928398();
  v49 = v100;
  sub_24F928268();
  v36(v26, v40);
  sub_24E6009C8(v49, v46 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530, &unk_24F93C6E0);
  sub_24F928398();
  sub_24EC556D4();
  sub_24F928248();
  v36(v26, v40);
  *(v46 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity) = v116;
  *(v46 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin) = v41;
  sub_24F928398();
  v50 = sub_24F928348();
  v52 = v51;
  v36(v26, v48);
  v53 = (v46 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  *v53 = v50;
  v53[1] = v52;
  v54 = v101;
  sub_24F928398();
  LOBYTE(v50) = sub_24F928278();
  v36(v54, v48);
  *(v46 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled) = v50 & 1;
  sub_24F928398();
  v55 = v109;
  sub_24F9282B8();
  v36(v26, v48);
  v56 = v102;
  sub_24E60169C(v55, v102, &qword_27F2213B0, &qword_24F965EC0);
  v57 = sub_24F92AC28();
  v58 = *(v57 - 8);
  v59 = *(v58 + 6);
  v111 = (v58 + 48);
  v101 = v59;
  v60 = (v59)(v56, 1, v57);
  v112 = v48;
  v99[1] = v39;
  v100 = v58;
  if (v60 == 1)
  {
    sub_24E601704(v56, &qword_27F2213B0, &qword_24F965EC0);
    v61 = 0;
  }

  else
  {
    v62 = v110;
    v61 = sub_24F92ABB8();
    v110 = v62;
    (*(v58 + 1))(v56, v57);
  }

  v63 = v120;
  *(v120 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms) = v61;
  sub_24F928398();
  v64 = sub_24F928348();
  v66 = v65;
  v67 = v112;
  v36(v26, v112);
  v68 = (v63 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  *v68 = v64;
  v68[1] = v66;
  sub_24F928398();
  v69 = sub_24F928348();
  v71 = v70;
  v36(v26, v67);
  v72 = (v63 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);
  *v72 = v69;
  v72[1] = v71;
  v73 = v103;
  sub_24F928398();
  v74 = v104;
  sub_24F9282B8();
  v75 = v67;
  v76 = v36;
  v36(v73, v75);
  if ((v101)(v74, 1, v57) == 1)
  {
    sub_24E601704(v74, &qword_27F2213B0, &qword_24F965EC0);
    v77 = 0;
  }

  else
  {
    v77 = sub_24F92ABC8();
    v100[1](v74, v57);
  }

  v78 = v120;
  *(v120 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens) = v77;
  sub_24F928398();
  v79 = sub_24F928348();
  v81 = v80;
  v76(v26, v112);
  v82 = (v78 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  *v82 = v79;
  v82[1] = v81;
  sub_24F928398();
  v111 = v76;
  v83 = v113;
  v84 = v114;
  v43 = v113 + 16;
  v85 = *(v113 + 16);
  v86 = v115;
  v85(v107, v115, v114);
  sub_24EC55728();
  sub_24F929548();
  v87 = v118;
  v88 = v119;
  v89 = v78 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  v90 = v117;
  *v89 = v116;
  *(v89 + 16) = v90;
  *(v89 + 32) = v87;
  *(v89 + 40) = v88;
  v91 = v105;
  v92 = *(v106 + 16);
  v107 = v31;
  v93 = v31;
  v94 = v112;
  v92(v105, v93, v112);
  v95 = v108;
  v85(v108, v86, v84);
  v96 = v110;
  v97 = Action.init(deserializing:using:)(v91, v95);
  if (!v96)
  {
    v43 = v97;
  }

  (*(v83 + 8))(v115, v114);
  (v111)(v107, v94);
  sub_24E601704(v109, &qword_27F2213B0, &qword_24F965EC0);
  return v43;
}