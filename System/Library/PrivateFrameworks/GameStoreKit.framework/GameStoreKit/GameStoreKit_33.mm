uint64_t Brick.__deallocating_deinit()
{
  Brick.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E951620()
{
  if (*(*v0 + 56))
  {
    v1 = *(*v0 + 48);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

__n128 sub_24E951668@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 sub_24E951694@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_24E9516D8@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_clickAction);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24E952434(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
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

uint64_t sub_24E951780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Brick.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24E9517E8()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x253052270](0, v1);
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_24E951880@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  a2[3] = a1;
  *a2 = v3;
}

uint64_t sub_24E9518AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a1, &qword_27F222730, &unk_24F9E1470);
}

double sub_24E951918@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

void sub_24E951994(_BYTE *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v2) = v2[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v2;
}

void *sub_24E9519F4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor);
  v2 = v1;
  return v1;
}

uint64_t (*sub_24E951A7C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253052270](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_24E95247C;
  }

  __break(1u);
  return result;
}

void (*sub_24E951AFC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253052270](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24E952480;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E951B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222730, &unk_24F9E1470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_24E951BEC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253052270](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_24E951C6C;
  }

  __break(1u);
  return result;
}

void (*sub_24E951C74(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253052270](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24E951CF4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_24E951CFC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    *result = *(a3 + 8 * a2 + 32);

    return sub_24E951D64;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E951DC0()
{
  result = qword_27F222738;
  if (!qword_27F222738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222738);
  }

  return result;
}

unint64_t sub_24E951E14()
{
  result = qword_27F222740;
  if (!qword_27F222740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222740);
  }

  return result;
}

unint64_t sub_24E951E68()
{
  result = qword_27F222750;
  if (!qword_27F222750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222750);
  }

  return result;
}

unint64_t sub_24E951EBC()
{
  result = qword_27F222758;
  if (!qword_27F222758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222758);
  }

  return result;
}

double sub_24E951F10(id a1, void *a2, void *a3, void *a4, unsigned __int16 a5)
{
  v5 = a5 >> 13;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
    }

    else if (v5 == 3)
    {
      sub_24E951F4C(a1, a2, a3, a4, a5);
    }
  }

  else if (a5 >> 13)
  {
    if (v5 == 1)
    {
      v6 = a1;
    }
  }

  else
  {
  }

  return result;
}

id sub_24E951F4C(id result, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 3)
    {
      v8 = result;
      result = a2;
      a2 = a3;
      a3 = a4;
    }

    else if (a5 != 2)
    {
      return result;
    }

    v9 = result;
    result = a2;
    a2 = a3;
    goto LABEL_10;
  }

  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }

LABEL_10:
    v10 = result;
    result = a2;
  }

  return result;
}

void sub_24E951FEC(id a1, void *a2, void *a3, void *a4, unsigned __int16 a5)
{
  v5 = a5 >> 13;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
    }

    else if (v5 == 3)
    {
      sub_24E952028(a1, a2, a3, a4, a5);
    }
  }

  else if (a5 >> 13)
  {
    if (v5 == 1)
    {
    }
  }

  else
  {
  }
}

void sub_24E952028(void *a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      a4 = a3;
    }

    else
    {
      if (a5 != 3)
      {
        return;
      }

      a1 = a2;
      a2 = a3;
    }

    a1 = a2;
    a2 = a4;
    goto LABEL_11;
  }

  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

LABEL_11:

    a1 = a2;
  }
}

uint64_t type metadata accessor for Brick(uint64_t a1)
{
  result = qword_27F222770;
  if (!qword_27F222770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E952160(uint64_t a1)
{
  result = sub_24E952434(&qword_27F222768, type metadata accessor for Brick, &protocol conformance descriptor for Brick);
  *(a1 + 8) = result;
  return result;
}

void sub_24E9521C0(uint64_t a1)
{
  sub_24E9523E0(319, &qword_27F215338, MEMORY[0x277CC8C40]);
  if (v1 <= 0x3F)
  {
    sub_24E9523E0(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24E9523E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24E952434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_12GameStoreKit35AMSEngagementRequestPerformingErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E9524A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E952504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24E952560(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t ExternalLinkLayout.init(metrics:descriptionTextView:summaryTextView:disclosureIndicatorView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  sub_24E952688(a1, (a5 + 15));
  sub_24E615E00(a2, a5);
  sub_24E615E00(a3, (a5 + 5));
  sub_24E615E00(a4, (a5 + 10));
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(a5 + 5, a5[8]);
  sub_24F922478();
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);

  return sub_24E9526C0(a1);
}

uint64_t ExternalLinkLayout.Metrics.init(horizontalMargin:descriptionTopSpace:descriptionMaxLines:summaryBottomSpace:summaryMaxLines:disclosureIndicatorMargin:disclosureIndicatorSize:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  sub_24E612E28(a1, a7);
  sub_24E612E28(a2, a7 + 40);
  *(a7 + 80) = a3;
  sub_24E612E28(a4, a7 + 88);
  *(a7 + 128) = a5;
  result = sub_24E612E28(a6, a7 + 136);
  *(a7 + 176) = a8;
  *(a7 + 184) = a9;
  return result;
}

double ExternalLinkLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v3 = v2;
  v14 = a2;
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[18];
  __swift_project_boxed_opaque_existential_1(v3 + 15, v8);
  sub_24E8ED7D8(v8);
  sub_24F9223A8();
  v9 = *(v5 + 8);
  v9(v7, v4);
  v10 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 15, v10);
  sub_24E8ED7D8(v10);
  sub_24F9223A8();
  v9(v7, v4);
  v11 = v3[35];
  __swift_project_boxed_opaque_existential_1(v3 + 32, v11);
  sub_24E8ED7D8(v11);
  sub_24F9223A8();
  v9(v7, v4);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v3 + 20, v3[23]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v3 + 26, v3[29]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v3 + 26, v3[29]);
  sub_24F922398();
  return v14;
}

uint64_t ExternalLinkLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62.origin.x = a2;
  v62.origin.y = a3;
  v62.size.width = a4;
  v52 = a4;
  v62.size.height = a5;
  CGRectGetWidth(v62);
  v15 = v5[18];
  __swift_project_boxed_opaque_existential_1(v6 + 15, v15);
  sub_24E8ED7D8(v15);
  sub_24F9223A8();
  v16 = *(v12 + 8);
  v16(v14, v11);
  v17 = v6[18];
  __swift_project_boxed_opaque_existential_1(v6 + 15, v17);
  sub_24E8ED7D8(v17);
  sub_24F9223A8();
  v16(v14, v11);
  v60 = v6[37];
  v18 = v6[35];
  __swift_project_boxed_opaque_existential_1(v6 + 32, v18);
  sub_24E8ED7D8(v18);
  sub_24F9223A8();
  v16(v14, v11);
  v63.origin.x = a2;
  v61 = a3;
  v63.origin.y = a3;
  v63.size.width = a4;
  v63.size.height = a5;
  CGRectGetHeight(v63);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922288();
  v20 = v19;
  v22 = v21;
  v53 = v23;
  v51 = v24;
  __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
  sub_24F922288();
  v56 = v26;
  v57 = v25;
  v58 = v28;
  v59 = v27;
  v64.origin.x = a2;
  v54 = a2;
  v64.origin.y = a3;
  v29 = v52;
  v64.size.width = v52;
  v64.size.height = a5;
  v30 = a5;
  MinY = CGRectGetMinY(v64);
  __swift_project_boxed_opaque_existential_1(v6 + 20, v6[23]);
  v32 = v51;
  sub_24F9223C8();
  v34 = MinY + v33;
  v35 = v6[18];
  __swift_project_boxed_opaque_existential_1(v6 + 15, v35);
  sub_24E8ED7D8(v35);
  v36 = sub_24F9223A8();
  v16(v14, v11);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v55 = v30;
  sub_24F92C1D8();
  sub_24F922228();
  v65.origin.x = v36;
  v65.origin.y = v34;
  v65.size.width = v20;
  v65.size.height = v22;
  MaxY = CGRectGetMaxY(v65);
  __swift_project_boxed_opaque_existential_1(v6 + 26, v6[29]);
  sub_24F9223C8();
  v39 = MaxY + v38 - v32;
  v40 = v6[18];
  __swift_project_boxed_opaque_existential_1(v6 + 15, v40);
  sub_24E8ED7D8(v40);
  v41 = sub_24F9223A8();
  v16(v14, v11);
  __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
  v42 = v54;
  v43 = v61;
  v45 = v56;
  v44 = v57;
  sub_24F92C1D8();
  sub_24F922228();
  v66.origin.x = v41;
  v66.origin.y = v39;
  v66.size.width = v44;
  v66.size.height = v45;
  v46 = CGRectGetMaxY(v66);
  __swift_project_boxed_opaque_existential_1(v6 + 26, v6[29]);
  sub_24F922398();
  v48 = v46 + v47;
  v67.origin.x = v42;
  v67.origin.y = v43;
  v67.size.width = v29;
  v67.size.height = v48;
  CGRectGetMaxX(v67);
  v49 = v6[18];
  __swift_project_boxed_opaque_existential_1(v6 + 15, v49);
  sub_24E8ED7D8(v49);
  sub_24F9223A8();
  v16(v14, v11);
  v68.origin.x = v42;
  v68.origin.y = v43;
  v68.size.width = v29;
  v68.size.height = v48;
  CGRectGetMidY(v68);
  __swift_project_boxed_opaque_existential_1(v6 + 10, v6[13]);
  sub_24F92C1D8();
  sub_24F922228();
  return sub_24F922128();
}

uint64_t sub_24E953228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
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

uint64_t sub_24E953270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_24E953344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_24E95338C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24E95340C()
{
  word_27F222780 = 5;
  qword_27F222788 = 0;
  qword_27F222790 = 0;
}

int8x16_t OfferButtonPresenterViewTheme.init(style:environment:tint:)@<Q0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, int8x16_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  if (v5 == 16)
  {
    LOBYTE(v5) = 0;
  }

  *a4 = v4;
  v6 = *a3;
  v7 = vdup_n_s32(a3->i64[0] == 3);
  *(a4 + 1) = v5;
  v8.i64[0] = v7.u32[0];
  v8.i64[1] = v7.u32[1];
  result = vandq_s8(v6, vcgezq_s64(vshlq_n_s64(v8, 0x3FuLL)));
  *(a4 + 8) = result;
  return result;
}

id static OfferButtonPresenterViewTheme.disabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210000 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27F222788;
  v3 = qword_27F222790;
  *a1 = word_27F222780;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_24E9534EC(v2, v3);
}

id sub_24E9534EC(id result, void *a2)
{
  if (result >= 3)
  {
    v3 = result;

    return a2;
  }

  return result;
}

void sub_24E953530()
{
  word_27F222798 = 2;
  qword_27F2227A0 = 0;
  unk_27F2227A8 = 0;
}

id static OfferButtonPresenterViewTheme.blueColored.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210008 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27F2227A0;
  v3 = unk_27F2227A8;
  *a1 = word_27F222798;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_24E9534EC(v2, v3);
}

id OfferButtonPresenterViewTheme.tint.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_24E9534EC(v2, v3);
}

id OfferButtonPresenterViewTheme.replacing(style:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 1);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = v3;
  *(a2 + 1) = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return sub_24E9534EC(v5, v6);
}

uint64_t static OfferButtonSubtitlePosition.positionWithLayoutDirection(_:whenUsing:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 == 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (result == 1)
  {
    LOBYTE(v3) = v5;
  }

  *a3 = v3;
  return result;
}

uint64_t static OfferButtonSubtitlePosition.alignment(whenUsing:in:)(char *a1, id a2)
{
  v2 = *a1;
  v3 = [a2 traitCollection];
  v4 = [v3 layoutDirection];

  v5 = &unk_24F96AF08;
  if (v4 == 1)
  {
    v5 = &unk_24F96AEE8;
  }

  return v5[v2];
}

GameStoreKit::OfferButtonSubtitlePosition_optional __swiftcall OfferButtonSubtitlePosition.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24E9536D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, uint8x8_t a3@<D0>)
{
  v3 = *(result + 4);
  v4 = *(result + 5);
  if (v3 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3 == 3;
  }

  a3.i32[0] = *result;
  v6 = vmovl_u8(a3).u64[0];
  v7 = vceq_s16(v6, 0x3000300030003);
  v8 = vceq_s16(v6, 0x2000200020002);
  v9 = vsub_s16(vand_s8(v8, 0x2000200020002), vbic_s8(v7, v8));
  *a2 = vuzp1_s8(v9, v9).u32[0];
  if (v4 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v4 == 3;
  }

  *(a2 + 4) = v5;
  *(a2 + 5) = v10;
  return result;
}

GameStoreKit::OfferButtonPresenterViewAlignment_optional __swiftcall OfferButtonPresenterViewAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24E953758()
{
  result = qword_27F2227B0;
  if (!qword_27F2227B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2227B0);
  }

  return result;
}

unint64_t sub_24E9537B0()
{
  result = qword_27F2227B8;
  if (!qword_27F2227B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2227B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit9OfferTintO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E95381C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24E95387C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void sub_24E953AD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8, &qword_24F93ADC8);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_24E643A9C(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_24E612B0C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24E612B0C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24E612B0C(v31, v32);
    v16 = sub_24F92C7B8();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_24E612B0C(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24E953D98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8, &qword_24F93ADC8);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24E612B0C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24E612B0C(v29, v30);
    v14 = sub_24F92C7B8();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_24E612B0C(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24E954078(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8, &qword_24F93ADC8);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870, &qword_24F967D90);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24E612B0C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24E612B0C(v29, v30);
    v14 = sub_24F92C7B8();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_24E612B0C(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24E954344(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C8, &unk_24F963C30);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v8 << 6)));

    swift_dynamicCast();
    v13 = sub_24F92C7B8();
    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v9 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v21;
    *(v10 + 16) = v22;
    *(v10 + 32) = v23;
    *(*(v2 + 56) + 8 * v9) = v12;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24E9545A4(uint64_t a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2227D0, &qword_24F96AF98);
  MEMORY[0x28223BE20](v62);
  v61 = &v51 - v2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100, &qword_24F96AFA0);
  MEMORY[0x28223BE20](v60);
  v59 = (&v51 - v3);
  v4 = sub_24F91F4A8();
  v63 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2227D8, &qword_24F96AFA8);
  MEMORY[0x28223BE20](v57);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v51 - v9;
  v64 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213108, &unk_24F93A8C0);
    v10 = sub_24F92CB58();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v64 + 64;
  v12 = 1 << *(v64 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v64 + 64);
  v15 = (v12 + 63) >> 6;
  v53 = v63 + 16;
  v66 = v63 + 32;
  v16 = v10 + 64;

  v17 = 0;
  v54 = v10;
  v51 = v15;
  v52 = v11;
  v58 = v6;
  while (v14)
  {
LABEL_15:
    v21 = __clz(__rbit64(v14)) | (v17 << 6);
    v22 = v63;
    v23 = *(v64 + 56);
    v24 = (*(v64 + 48) + 16 * v21);
    v26 = *v24;
    v25 = v24[1];
    v65 = *(v63 + 72);
    v27 = v57;
    v28 = v55;
    (*(v63 + 16))(&v55[*(v57 + 48)], v23 + v65 * v21, v4);
    *v28 = v26;
    v28[1] = v25;
    v29 = v56;
    sub_24E955E44(v28, v56);
    v30 = v4;
    v31 = *(v27 + 48);
    v32 = *(v62 + 48);
    v33 = *(v29 + 1);
    *&v67 = *v29;
    *(&v67 + 1) = v33;

    v34 = v61;
    swift_dynamicCast();
    v35 = *(v22 + 32);
    v35(&v34[v32], &v29[v31], v30);
    v36 = v59;
    v37 = *(v60 + 48);
    v38 = *(v34 + 1);
    *v59 = *v34;
    v36[1] = v38;
    *(v36 + 4) = *(v34 + 4);
    v35(v36 + v37, &v34[v32], v30);
    v39 = v36[1];
    v67 = *v36;
    v68 = v39;
    v69 = *(v36 + 4);
    v40 = v36 + v37;
    v4 = v30;
    v41 = v58;
    v35(v58, v40, v30);
    v42 = v54;
    v43 = sub_24F92C7B8();
    v44 = -1 << *(v42 + 32);
    v45 = v43 & ~v44;
    v46 = v45 >> 6;
    if (((-1 << v45) & ~*(v16 + 8 * (v45 >> 6))) == 0)
    {
      v47 = 0;
      v48 = (63 - v44) >> 6;
      while (++v46 != v48 || (v47 & 1) == 0)
      {
        v49 = v46 == v48;
        if (v46 == v48)
        {
          v46 = 0;
        }

        v47 |= v49;
        v50 = *(v16 + 8 * v46);
        if (v50 != -1)
        {
          v18 = __clz(__rbit64(~v50)) + (v46 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v18 = __clz(__rbit64((-1 << v45) & ~*(v16 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v42 + 48) + 40 * v18;
    *v19 = v67;
    *(v19 + 16) = v68;
    *(v19 + 32) = v69;
    v35((*(v42 + 56) + v18 * v65), v41, v4);
    ++*(v42 + 16);
    v15 = v51;
    v11 = v52;
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v20);
    ++v17;
    if (v14)
    {
      v17 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24E954AC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8, &qword_24F93ADC8);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24E612B0C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24E612B0C(v29, v30);
    v14 = sub_24F92C7B8();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_24E612B0C(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24E954D7C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8, &unk_24F93ADA0);
    v3 = sub_24F92CB58();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v6)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_24E612B0C(&v24, v26);
        sub_24E612B0C(v26, v27);
        sub_24E612B0C(v27, &v25);
        v17 = a2(v16, v15);
        if (v18)
        {
          v9 = (v3[6] + 16 * v17);
          *v9 = v16;
          v9[1] = v15;
          v10 = v17;

          v11 = (v3[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          sub_24E612B0C(&v25, v11);
          v8 = v12;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v3[2] >= v3[3])
          {
            goto LABEL_20;
          }

          *(v3 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          v19 = (v3[6] + 16 * v17);
          *v19 = v16;
          v19[1] = v15;
          sub_24E612B0C(&v25, (v3[7] + 32 * v17));
          v20 = v3[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v3[2] = v22;
          v8 = v12;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_24E954FE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213558, &qword_24F93AD38);
    v1 = sub_24F92CB58();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v24 = *(*(a1 + 56) + v10);
    v12 = v24;
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F2227E0, &unk_24F96AFB0);
    swift_dynamicCast();
    sub_24E612B0C((v25 + 8), v23);
    sub_24E612B0C(v23, v25);
    sub_24F92B0D8();
    sub_24F92D068();
    sub_24F92B218();
    v14 = sub_24F92D0B8();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v8 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v13;
    sub_24E612B0C(v25, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24E955290(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2227C8, &qword_24F96AF90);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = sub_24E9421D0();
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v23 = v8 >> 6;

    v24 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v28);
      ++v24;
      if (v7)
      {
        while (1)
        {
          v29 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v30 = *(*(a1 + 48) + ((v28 << 9) | (8 * v29)));

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
          swift_dynamicCast();
          v31 = sub_24E76E100(v30);
          if (v32)
          {
            v25 = *(v2 + 48);
            v26 = *(v25 + 8 * v31);
            *(v25 + 8 * v31) = v30;
            v27 = v31;

            *(*(v2 + 56) + 8 * v27) = v34;

            v24 = v28;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v33 = *(v2 + 16);
            if (v33 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
            *(*(v2 + 48) + 8 * v31) = v30;
            *(*(v2 + 56) + 8 * v31) = v34;
            *(v2 + 16) = v33 + 1;
            v24 = v28;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v28 = v24;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
      swift_dynamicCast();
      v15 = sub_24F92C3F8();
      v16 = -1 << *(v2 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v14;
      *(*(v2 + 56) + 8 * v12) = v34;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_24E955658()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEE498]) init];
  type metadata accessor for UserEngagementManager();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F96AF30;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v1 + 16) = xmmword_24F96AF30;
  result = sub_24E955DF8(v2, v3);
  *(v1 + 32) = v0;
  qword_27F2227C0 = v1;
  return result;
}

uint64_t static UserEngagementManager.shared.getter()
{
  if (qword_27F210010 != -1)
  {
    swift_once();
  }
}

double UserEngagementManager.defaultTabIdentifier.getter@<D0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  return sub_24E9557A0(v3, v4);
}

double sub_24E9557A0(uint64_t a1, unint64_t a2)
{
  if (a2 != 11)
  {
    return sub_24E8E2880(a1, a2);
  }

  return result;
}

Swift::Void __swiftcall UserEngagementManager.startDefaultTabRequest()()
{
  v1 = sub_24E6086DC(&unk_2861C0238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
  swift_arrayDestroy();
  v2 = *(v0 + 32);
  sub_24E953D98(v1);

  v3 = sub_24F92AE28();

  v4 = [v2 enqueueData_];

  v5 = swift_allocObject();
  swift_weakInit();
  v12 = sub_24E955DD8;
  v13 = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_24E955B00;
  v11 = &block_descriptor_28;
  v6 = _Block_copy(&v8);

  [v4 addSuccessBlock_];
  _Block_release(v6);
  v12 = sub_24E955B08;
  v13 = 0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_24E955CC4;
  v11 = &block_descriptor_3_0;
  v7 = _Block_copy(&v8);
  [v4 addErrorBlock_];
  _Block_release(v7);
}

void sub_24E9559A8(void *a1, uint64_t a2)
{
  v2 = [a1 data];
  if (v2)
  {
    v3 = v2;
    v4 = sub_24F92AE38();

    sub_24E9E19FC(v4);
    v6 = v5;

    if (v6)
    {
      if (*(v6 + 16) && (v7 = sub_24E76D644(6447476, 0xE300000000000000), (v8 & 1) != 0))
      {
        v9 = (*(v6 + 56) + 16 * v7);
        v11 = *v9;
        v10 = v9[1];

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          StoreTab.Identifier.init(rawValue:)(v11, v10, v18);
          v14 = v18[0];
          v15 = v18[1];
          swift_beginAccess();
          v16 = *(v13 + 16);
          v17 = *(v13 + 24);
          *(v13 + 16) = v14;
          *(v13 + 24) = v15;
          sub_24E955DF8(v16, v17);

          return;
        }
      }
    }
  }
}

uint64_t sub_24E955B08(uint64_t a1)
{
  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E857CC8(v5);
  sub_24F92A5A8();
}

void sub_24E955CCC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t UserEngagementManager.deinit()
{
  sub_24E955DF8(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t UserEngagementManager.__deallocating_deinit()
{
  sub_24E955DF8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_24E955DA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E955DF8(uint64_t a1, unint64_t a2)
{
  if (a2 != 11)
  {
    return sub_24E8E29C4(a1, a2);
  }

  return a1;
}

uint64_t sub_24E955E44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2227D8, &qword_24F96AFA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E955F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v64 = a2;
  v4 = sub_24F928AE8();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_24F927E88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = (a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v62 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v63 = a1;
  v17 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  v18 = qword_27F210FF8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, qword_27F23C300);
  v20 = *(v10 + 16);
  v20(v15, v19, v9);
  v21 = sub_24F92B858();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v20(v12, v15, v9);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v10 + 32))(v24 + v22, v12, v9);
  v25 = (v24 + v23);
  *v25 = v62;
  v25[1] = v17;
  sub_24F1F2908(0, 0, v8, &unk_24FA0A150, v24);

  sub_24E601704(v8, &unk_27F21B570, &qword_24F93B020);
  (*(v10 + 8))(v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v26 = sub_24F92A9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F928FD8();
  v27 = v64;
  sub_24F92A758();
  v28 = v70;
  ObjectType = swift_getObjectType();
  v30 = v16[1];
  v69 = *v16;
  v70 = v30;
  v31 = *(v28 + 56);

  v32 = v31(&v69, ObjectType, v28);
  v34 = v33;

  v35 = swift_getObjectType();
  v36 = v63;
  (*(v34 + 40))(&v69, *(v63 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps), v35, v34);
  v38 = v75 >> 60;
  if ((v75 >> 60) > 3)
  {
    if (v38 <= 6)
    {
      if (v38 == 4)
      {
        sub_24E959568(v36, v37);
        sub_24E88D2AC(&v69);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v26;
      }

      if (v38 != 5)
      {
        goto LABEL_23;
      }

      sub_24E9591E4(v36, v61, v37);
      v44 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      swift_retain_n();
      v45 = sub_24F92BEF8();
      v67 = v44;
      v68 = MEMORY[0x277D225C0];
      v65 = v45;
      goto LABEL_21;
    }

    if (v38 == 7)
    {
      if (*(v36 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) != 1)
      {
        LOBYTE(v65) = v69 & 1;
        sub_24E959840(v36, &v65, v27, v61);
        v55 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
        swift_retain_n();
        v56 = sub_24F92BEF8();
        v67 = v55;
        v68 = MEMORY[0x277D225C0];
        v65 = v56;
        goto LABEL_21;
      }
    }

    else
    {
      if (v38 != 8)
      {
        goto LABEL_23;
      }

      v46 = (*(&v69 + 1) << 8) | ((*(&v69 + 5) | (HIBYTE(v69) << 16)) << 40) | v69;
      v47 = v74 | v76 | v73;
      if ((v75 != 0x8000000000000000 || v47 | v72 | v71 | v70 | v46) && (v75 != 0x8000000000000000 || v46 != 4 || v47 | v72 | v71 | v70))
      {
        goto LABEL_23;
      }
    }

LABEL_20:
    sub_24E956850(v36, v32, v34, v27, v61);
    v48 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    swift_retain_n();
    v49 = sub_24F92BEF8();
    v67 = v48;
    v68 = MEMORY[0x277D225C0];
    v65 = v49;
LABEL_21:
    sub_24F92A958();

    sub_24E88D2AC(&v69);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  if ((v38 - 2) < 2)
  {
    goto LABEL_20;
  }

  if (v38)
  {
    if (v38 == 1 && (v69 & 1) != 0)
    {
      v39 = v16[1];
      v65 = *v16;
      v66 = v39;
      v40 = *(v28 + 40);

      v40(&v65, ObjectType, v28);

      v42 = v58;
      v41 = v59;
      v43 = v60;
      (*(v59 + 104))(v58, *MEMORY[0x277D21CA8], v60);
      sub_24F92A9C8();
LABEL_24:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v41 + 8))(v42, v43);
      return v26;
    }

LABEL_23:
    v50 = v16[1];
    v65 = *v16;
    v66 = v50;
    v51 = *(v28 + 40);

    v51(&v65, ObjectType, v28);

    v42 = v58;
    v41 = v59;
    v43 = v60;
    (*(v59 + 104))(v58, *MEMORY[0x277D21CA8], v60);
    sub_24F92A9C8();
    sub_24E88D2AC(&v69);
    goto LABEL_24;
  }

  sub_24E9574AC(v36, 1, v32, v34, v61);
  v53 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_retain_n();
  v54 = sub_24F92BEF8();
  v67 = v53;
  v68 = MEMORY[0x277D225C0];
  v65 = v54;
  sub_24F92A958();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(&v65);
  return v26;
}

uint64_t sub_24E956850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CommerceDialogHandler(0);
  sub_24F928FD8();
  sub_24F92A758();
  v10 = *&v37[0];

  swift_unknownObjectRetain();
  v11 = CommerceDialogHandler.presentingSceneIdentifier.getter();
  PurchaseIntent.init(from:stateMachine:additionalHeaders:presentingSceneIdentifier:)(a1, a3, 0, v11, v12, &v27);
  if (v29)
  {
    v26 = v10;
    v37[6] = v33;
    v37[7] = v34;
    v37[8] = v35;
    v37[9] = v36;
    v37[2] = v29;
    v37[3] = v30;
    v37[4] = v31;
    v37[5] = v32;
    v37[0] = v27;
    v37[1] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    v13 = sub_24F92A9E8();
    v14 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId + 8);
    if (v14 && (v15 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId), objc_allocWithZone(MEMORY[0x277CC1E70]), , v16 = sub_24E958CA0(v15, v14), v16))
    {

      sub_24E958E90(a1, a2, a3, a4, a5);
      v24 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      swift_retain_n();
      v25 = sub_24F92BEF8();
      *(&v28 + 1) = v24;
      *&v29 = MEMORY[0x277D225C0];
      *&v27 = v25;
      sub_24F92A958();
    }

    else
    {
      type metadata accessor for Commerce();
      sub_24F92A758();
      sub_24F134D60(v37, a2, a3);
      v17 = swift_allocObject();
      v17[2] = a5;
      v17[3] = v13;
      v17[4] = a1;
      v17[5] = a4;
      v18 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);

      v19 = sub_24F92BEF8();
      *(&v28 + 1) = v18;
      *&v29 = MEMORY[0x277D225C0];
      *&v27 = v19;
      sub_24F92A958();
    }

    sub_24E95A048(v37);
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    sub_24E601704(&v27, &qword_27F222870, &qword_24F96B038);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    type metadata accessor for OfferActionImplementation.ImplementationError(0, a5, v20, v21);
    swift_getWitnessTable();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 6;
    v13 = sub_24F92A978();
  }

  return v13;
}

void sub_24E956C18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24F928AE8();
  v10 = *(v9 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a1;
  v16 = a1[1];
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      (*(v10 + 104))(v15, *MEMORY[0x277D21CA8], v9, v13);
      sub_24F92A9C8();
      (*(v10 + 8))(v15, v9);
      v18 = *(a3 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction);
      if (v18)
      {
        v33[3] = type metadata accessor for Action(0);
        v33[4] = sub_24E95A148(&qword_27F216DE8, type metadata accessor for Action);
        v33[0] = v18;
        type metadata accessor for OfferActionImplementation(0, a5, v19, v20);
        swift_retain_n();
        swift_getWitnessTable();
        sub_24F1489C4(v33, a4);

        __swift_destroy_boxed_opaque_existential_1(v33);
      }
    }

    else
    {
      v26 = v17 | v16;
      v28 = *(a3 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
      v27 = *(a3 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
      type metadata accessor for OfferActionImplementation.ImplementationError(0, a5, v11, v12);
      swift_getWitnessTable();
      v30 = swift_allocError();
      *v29 = v28;
      *(v29 + 8) = v27;
      if (v26)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      *(v29 + 16) = v31;

      sub_24F92A9A8();
    }
  }

  else
  {
    v21 = objc_opt_self();

    v22 = [v21 defaultCenter];
    if (qword_27F20FFC8 != -1)
    {
      swift_once();
    }

    v23 = qword_27F2214F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878, &unk_24F96B040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v33[0] = 0x64496D616461;
    v33[1] = 0xE600000000000000;
    sub_24F92C7F8();
    *(inited + 96) = &type metadata for AdamId;
    *(inited + 72) = v17;
    *(inited + 80) = v16;
    sub_24E608210(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, qword_27F23E470, &qword_24F93ADD0);
    v25 = sub_24F92AE28();

    [v22 postNotificationName:v23 object:0 userInfo:v25];

    (*(v10 + 104))(v15, *MEMORY[0x277D21CA8], v9);
    sub_24F92A9C8();
    (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_24E957048(uint64_t a1)
{
  if (qword_27F2105C8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F22D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();
}

uint64_t sub_24E957214(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F928FD8();
  sub_24F92A758();
  v9 = v17;
  v10 = v18;
  if (a1)
  {
    v11 = a1;
    sub_24F92A9A8();
    v12.underlyingAdamID._object = swift_getObjectType();
    v17 = a4;
    v18 = a5;
    v12.underlyingAdamID._countAndFlagsBits = &v17;
    AppStateController.clearWaiting(for:)(v12);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v17 = a4;
    v18 = a5;
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v10;
    v14[4] = a4;
    v14[5] = a5;
    v14[6] = a3;
    v15 = *(v10 + 24);
    swift_unknownObjectRetain();

    v15(&v17, sub_24E95A138, v14, ObjectType, v10);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_24E957378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24F928AE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.underlyingAdamID._object = swift_getObjectType();
  v12[0] = a3;
  v12[1] = a4;
  v10.underlyingAdamID._countAndFlagsBits = v12;
  AppStateController.clearWaiting(for:)(v10);
  (*(v7 + 104))(v9, *MEMORY[0x277D21CA8], v6);
  sub_24F92A9C8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24E9574AC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v61 = sub_24F922028();
  v9 = *(v61 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v62 = a1;
  v14 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v15 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  aBlock = v14;
  v65 = v15;
  AdamId.numberValue.getter();
  if (v16)
  {
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    v18 = sub_24F92A9E8();
    v58 = a3;
    v59 = v18;
    ObjectType = swift_getObjectType();
    v57 = a4;
    v20 = (*(a4 + 24))(ObjectType, a4) & a2;
    sub_24F929778();
    sub_24F929768();
    sub_24F921FF8();
    sub_24F92C058();
    v21 = sub_24F929768();
    v56 = v20 & 1;
    if (v20)
    {
      v22 = "RootActionRunner[ASDAppQuery.BetaApps]:cancelAction";
    }

    else
    {
      v22 = "RootActionRunner[ASDAppQuery]:cancelAction";
    }

    if (v20)
    {
      v23 = 51;
    }

    else
    {
      v23 = 42;
    }

    v53 = v23;
    v54 = v22;
    if (v20)
    {
      v24 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    }

    else
    {
      v24 = &selRef_queryForStoreItemIDs_;
    }

    v25 = v13;
    v55 = v13;
    sub_24F921FE8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_24F941C80;
    *(v26 + 32) = v17;
    sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
    v51 = v17;
    v27 = sub_24F92B588();

    v52 = [objc_opt_self() *v24];

    v28 = v60;
    v29 = v61;
    (*(v9 + 16))(v60, v25, v61);
    v30 = (*(v9 + 80) + 41) & ~*(v9 + 80);
    v31 = v30 + v10;
    v32 = (v30 + v10) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v53;
    v38 = v54;
    *(v36 + 16) = v63;
    *(v36 + 24) = v38;
    *(v36 + 32) = v37;
    *(v36 + 40) = 2;
    (*(v9 + 32))(v36 + v30, v28, v29);
    *(v36 + v31) = v56;
    *(v36 + v32 + 8) = v62;
    v39 = (v36 + v33);
    v40 = v57;
    *v39 = v58;
    v39[1] = v40;
    v41 = v59;
    *(v36 + v34) = v59;
    v42 = v51;
    *(v36 + v35) = v51;
    v68 = sub_24E959F08;
    v69 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = sub_24EC312A0;
    v67 = &block_descriptor_24;
    v43 = _Block_copy(&aBlock);
    v44 = v42;

    swift_unknownObjectRetain();

    v45 = v52;
    [v52 executeQueryWithResultHandler_];
    _Block_release(v43);

    (*(v9 + 8))(v55, v29);
    return v41;
  }

  else
  {
    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v47 = sub_24F92AAE8();
    __swift_project_value_buffer(v47, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    type metadata accessor for OfferActionImplementation.ImplementationError(0, v63, v48, v49);
    swift_getWitnessTable();
    swift_allocError();
    *v50 = v14;
    *(v50 + 8) = v15;
    *(v50 + 16) = 0;

    return sub_24F92A978();
  }
}

void sub_24E957A74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v43 = a8;
  v44 = a13;
  v42 = a12;
  v45 = a11;
  v15 = sub_24F928AE8();
  v41 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C048();
  sub_24F929778();
  v18 = sub_24F929768();
  sub_24F921FE8();

  if (!a1)
  {
    goto LABEL_13;
  }

  if (a1 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_4;
    }

LABEL_13:
    if (a7)
    {
      sub_24E9574AC(v43, 0, a9, a10, v44);
      v32 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      swift_retain_n();
      v33 = sub_24F92BEF8();
      v47 = v32;
      v48 = MEMORY[0x277D225C0];
      v46[0] = v33;
      sub_24F92A958();

      __swift_destroy_boxed_opaque_existential_1(v46);
      return;
    }

    if (qword_27F2105C8 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x253052270](0, a1);
    goto LABEL_7;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(a1 + 32);
LABEL_7:
    v20 = v19;
    v21 = [v19 progress];
    if (v21)
    {
      v22 = v21;
      [v21 cancel];
      v23 = v41;
      (*(v41 + 104))(v17, *MEMORY[0x277D21CA8], v15);
      sub_24F92A9C8();

      (*(v23 + 8))(v17, v15);
      return;
    }

    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v24 = sub_24F92AAE8();
    __swift_project_value_buffer(v24, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    v47 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
    v46[0] = v42;
    v25 = v42;
    sub_24F9283B8();
    sub_24E601704(v46, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F92A5A8();

    v27 = *(v43 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
    v26 = *(v43 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
    type metadata accessor for OfferActionImplementation.ImplementationError(0, v44, v28, v29);
    swift_getWitnessTable();
    v30 = swift_allocError();
    *v31 = v27;
    *(v31 + 8) = v26;
    *(v31 + 16) = 4;

    sub_24F92A9A8();

    goto LABEL_17;
  }

  __break(1u);
LABEL_20:
  swift_once();
LABEL_16:
  v34 = sub_24F92AAE8();
  __swift_project_value_buffer(v34, qword_27F22D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  v47 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  v46[0] = v42;
  v35 = v42;
  sub_24F9283B8();
  sub_24E601704(v46, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  sub_24F92A5A8();

  v37 = *(v43 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v36 = *(v43 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  type metadata accessor for OfferActionImplementation.ImplementationError(0, v44, v38, v39);
  swift_getWitnessTable();
  v30 = swift_allocError();
  *v40 = v37;
  *(v40 + 8) = v36;
  *(v40 + 16) = 4;

  sub_24F92A9A8();
LABEL_17:
}

void sub_24E958158(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_24F928AE8();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:
    v39 = a4;
    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v31 = sub_24F92AAE8();
    __swift_project_value_buffer(v31, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    v41 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
    v40[0] = a3;
    v32 = a3;
    sub_24F9283B8();
    sub_24E601704(v40, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F92A5A8();

    v33 = *(a5 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
    v34 = *(a5 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
    type metadata accessor for OfferActionImplementation.ImplementationError(0, a6, v35, v36);
    swift_getWitnessTable();
    v27 = swift_allocError();
    *v37 = v33;
    *(v37 + 8) = v34;
    *(v37 + 16) = 5;

    sub_24F92A9A8();
    goto LABEL_15;
  }

  v29 = v13;
  v30 = sub_24F92C738();
  v13 = v29;
  if (!v30)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = v13;
    v18 = MEMORY[0x253052270](0, a1, v14);
LABEL_7:
    a1 = v18;
    v19 = [v18 progress];
    if (v19)
    {
      v20 = v19;
      [v19 pause];
      (*(v12 + 104))(v16, *MEMORY[0x277D21CA8], v17);
      sub_24F92A9C8();

      (*(v12 + 8))(v16, v17);
      return;
    }

    v39 = a4;
    if (qword_27F2105C8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = v13;
    v18 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v21 = sub_24F92AAE8();
  __swift_project_value_buffer(v21, qword_27F22D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  v41 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  v40[0] = a3;
  v22 = a3;
  sub_24F9283B8();
  sub_24E601704(v40, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  sub_24F92A5A8();

  v23 = *(a5 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v24 = *(a5 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  type metadata accessor for OfferActionImplementation.ImplementationError(0, a6, v25, v26);
  swift_getWitnessTable();
  v27 = swift_allocError();
  *v28 = v23;
  *(v28 + 8) = v24;
  *(v28 + 16) = 5;

  sub_24F92A9A8();

LABEL_15:
}

void sub_24E95873C(unint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_14:
    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v11 = sub_24F92AAE8();
    __swift_project_value_buffer(v11, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    v15 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
    v14[0] = a3;
    v12 = a3;
    sub_24F9283B8();
    sub_24E601704(v14, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F92A5A8();
    goto LABEL_17;
  }

  v3 = a1;
  v10 = sub_24F92C738();
  a1 = v3;
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x253052270](0, a1);
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v6 = *(a1 + 32);
  }

  v3 = v6;
  v7 = [v6 progress];
  if (!v7)
  {
    if (qword_27F2105C8 == -1)
    {
LABEL_12:
      v8 = sub_24F92AAE8();
      __swift_project_value_buffer(v8, qword_27F22D7E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F9479A0;
      sub_24F9283A8();
      v15 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
      v14[0] = a3;
      v9 = a3;
      sub_24F9283B8();
      sub_24E601704(v14, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      sub_24F92A5A8();

LABEL_17:

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_12;
  }

  v13 = v7;
  [v7 resume];
}

uint64_t sub_24E958BC4(__n128 a1)
{
  v2 = sub_24F927E88();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

id sub_24E958CA0(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_24F92B098();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifierOfSystemPlaceholder:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_24F91F278();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_24E958D6C(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v7 = sub_24F92A9E8();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = v6;
  v8[5] = v5;
  v11[4] = sub_24E95A0E4;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E9FABA0;
  v11[3] = &block_descriptor_37;
  v9 = _Block_copy(v11);

  [a1 startWithErrorHandler_];
  _Block_release(v9);
  return v7;
}

uint64_t sub_24E958E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId + 8);
  if (!v6 || (v11 = objc_allocWithZone(MEMORY[0x277CC1E70]), , v12 = sub_24E958CA0(v7, v6), !v12))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    type metadata accessor for OfferActionImplementation.ImplementationError(0, a5, v13, v14);
    swift_getWitnessTable();
    swift_allocError();
    *v15 = v7;
    *(v15 + 8) = v6;
    *(v15 + 16) = 3;

    return sub_24F92A978();
  }

  v17 = objc_allocWithZone(MEMORY[0x277CEC4B8]);
  v18 = sub_24F92B098();
  v19 = [v17 initWithBundleID_];

  v20 = (a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v21 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  v39 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v40 = v21;
  AdamId.numberValue.getter();
  v23 = v22;
  [v19 setStoreItemID_];

  [v19 setUserInitiated_];
  ObjectType = swift_getObjectType();
  (*(a3 + 16))(&v39, ObjectType, a3);
  v25 = v45 >> 60;
  if (v45 >> 60 == 3)
  {
    goto LABEL_15;
  }

  if (v25 != 8 || ((v26 = v44 | v46, v27 = v42 | v41 | v40, v45 != 0x8000000000000000) || v26 | v39 | v43 | v27) && (v45 != 0x8000000000000000 || v39 != 4 || v26 | v43 | v27))
  {
    LOBYTE(v25) = 0;
LABEL_15:
    sub_24E88D2AC(&v39);
    goto LABEL_16;
  }

  LOBYTE(v25) = 1;
LABEL_16:
  v28 = (*(a3 + 56))(ObjectType, a3);
  if (v28)
  {
    v30 = v29;
    v37 = v28;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
    sub_24F928FD8();
    sub_24F92A758();
    v30 = v38;
  }

  v31 = swift_getObjectType();
  v32 = v20[1];
  v37 = *v20;
  v38 = v32;
  v36 = v25;
  v33 = *(v30 + 64);

  v33(&v37, &v36, v31, v30);

  v34 = v20[1];
  v37 = *v20;
  v38 = v34;

  v35 = sub_24E958D6C(v19, &v37, a4);
  swift_unknownObjectRelease();

  return v35;
}

uint64_t sub_24E9591E4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  v22 = v6;
  v23 = v5;
  AdamId.numberValue.getter();
  if (v7)
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    v9 = sub_24F92A9E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24F941C80;
    *(v10 + 32) = v8;
    sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
    v11 = v8;
    v12 = sub_24F92B588();

    v13 = [objc_opt_self() queryForStoreItemIDs_];

    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = v11;
    v14[4] = v9;
    v14[5] = a1;
    v26 = sub_24E959DD0;
    v27 = v14;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_24EC312A0;
    v25 = &block_descriptor_29;
    v15 = _Block_copy(&v22);
    v16 = v11;

    [v13 executeQueryWithResultHandler_];
    _Block_release(v15);

    return v9;
  }

  else
  {
    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v18 = sub_24F92AAE8();
    __swift_project_value_buffer(v18, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    type metadata accessor for OfferActionImplementation.ImplementationError(0, a2, v19, v20);
    swift_getWitnessTable();
    swift_allocError();
    *v21 = v6;
    *(v21 + 8) = v5;
    *(v21 + 16) = 0;

    return sub_24F92A978();
  }
}

void sub_24E959568(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  v13 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v14 = v2;
  AdamId.numberValue.getter();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_24F941C80;
    *(v5 + 32) = v4;
    sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
    v6 = v4;
    v7 = sub_24F92B588();

    v8 = [objc_opt_self() queryForStoreItemIDs_];

    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v17 = sub_24E959E2C;
    v18 = v9;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_24EC312A0;
    v16 = &block_descriptor_18;
    v10 = _Block_copy(&v13);
    v11 = v6;

    [v8 executeQueryWithResultHandler_];
    _Block_release(v10);
  }

  else
  {
    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v12 = sub_24F92AAE8();
    __swift_project_value_buffer(v12, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t sub_24E959840(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v48 = sub_24F91F6B8();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_24F928AD8();
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = *a2;
  v18 = (a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v20 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v19 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  *&v60 = v20;
  *(&v60 + 1) = v19;
  AdamId.numberValue.getter();
  if (v21)
  {
    v49 = a4;

    v23 = *v18;
    v22 = v18[1];

    sub_24F928A98();
    v24 = type metadata accessor for OpenAppAction(0);
    v25 = swift_allocObject();
    v26 = (v25 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
    *v26 = v23;
    v26[1] = v22;
    *(v25 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_destination) = v17;
    *(v25 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_allowBetaApps) = 1;
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v27 = v50;
    (*(v50 + 16))(v13, v16, v11);
    v28 = sub_24F929608();
    (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
    v29 = (v25 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v29 = 0u;
    v29[1] = 0u;
    sub_24E65E064(&v60, &v54);
    if (*(&v55 + 1))
    {
      v57 = v54;
      v58 = v55;
      v59 = v56;
    }

    else
    {
      v34 = v46;
      sub_24F91F6A8();
      v35 = sub_24F91F668();
      v37 = v36;
      (*(v47 + 8))(v34, v48);
      v52 = v35;
      v53 = v37;
      sub_24F92C7F8();
      sub_24E601704(&v54, &qword_27F235830, &qword_24F93B8C0);
    }

    v38 = v51;
    v39 = v49;
    sub_24E601704(&v60, &qword_27F235830, &qword_24F93B8C0);
    (*(v27 + 8))(v16, v11);
    v40 = v25 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    v41 = v58;
    *v40 = v57;
    *(v40 + 16) = v41;
    *(v40 + 32) = v59;
    sub_24E65E0D4(v10, v25 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    (*(v27 + 32))(v25 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v13, v11);
    *(&v61 + 1) = v24;
    v62 = sub_24E95A148(qword_27F222880, type metadata accessor for OpenAppAction);
    *&v60 = v25;
    type metadata accessor for OfferActionImplementation(0, v39, v42, v43);

    swift_getWitnessTable();
    v44 = sub_24F1489C4(&v60, v38);

    __swift_destroy_boxed_opaque_existential_1(&v60);
    return v44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    type metadata accessor for OfferActionImplementation.ImplementationError(0, a4, v30, v31);
    swift_getWitnessTable();
    swift_allocError();
    *v32 = v20;
    *(v32 + 8) = v19;
    *(v32 + 16) = 0;

    return sub_24F92A978();
  }
}

uint64_t sub_24E959D88()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E959DF4()
{

  return swift_deallocObject();
}

uint64_t sub_24E959E34()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (((((((v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24E959F08(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(sub_24F922028() - 8);
  v7 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = ((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_24E957A74(a1, a2, *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v7, *(v2 + v8), *(v2 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5);
}

uint64_t sub_24E959FF4()
{

  return swift_deallocObject();
}

uint64_t sub_24E95A09C()
{

  return swift_deallocObject();
}

uint64_t sub_24E95A0F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E95A148(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_24E95A19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit25OfferActionImplementationV0F5ErrorOyx_G(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_24E95A1F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24E95A23C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_24E95A280(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24E95A2C8(uint64_t a1)
{
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927DC8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
  result = swift_beginAccess();
  if (*(v1 + v11) != a1)
  {
    v19 = v8;
    v20 = v7;
    v21 = v4;
    if (qword_27F210598 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    v18[1] = __swift_project_value_buffer(v13, qword_27F39C428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    v14 = *(v1 + v11);
    v23 = MEMORY[0x277D83B88];
    aBlock[0] = v14;
    sub_24F928438();
    sub_24E601704(aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F92A598();

    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v15 = sub_24F92BEF8();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = sub_24E95C9E0;
    v25 = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    v23 = &block_descriptor_12_0;
    v17 = _Block_copy(aBlock);

    sub_24F927DA8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v10, v6, v17);
    _Block_release(v17);

    (*(v21 + 8))(v6, v3);
    return (*(v19 + 8))(v10, v20);
  }

  return result;
}

double sub_24E95A718(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    sub_24F92AD88();
  }

  return result;
}

uint64_t sub_24E95A788()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_24E95A7CC()
{
  v0 = sub_24F927D88();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F927DC8();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927D98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D851C8], v7);
  v11 = sub_24F92BF48();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24E95ADF8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_30;
  v13 = _Block_copy(aBlock);

  sub_24F927DA8();
  v17 = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v6, v3, v13);
  _Block_release(v13);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v16);

  return result;
}

uint64_t sub_24E95AB34()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

void sub_24E95AB6C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() daemonProxy];
    [v3 addDataUpdateDelegate_];

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_24E95BD30(sub_24E95CA8C, v4);

    v5 = [objc_opt_self() defaultCenter];
    sub_24F92AB98();
    v6 = v2;
    v7 = sub_24F92AB78();
    [v5 addObserver:v6 selector:sel_accountsDidChangeWithNotification_ name:v7 object:sub_24F92AB88()];
  }

  else
  {
    if (qword_27F210598 != -1)
    {
      swift_once();
    }

    v8 = sub_24F92AAE8();
    __swift_project_value_buffer(v8, qword_27F39C428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id GameCenterFriendRequestCoordinator.__allocating_init(bag:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_onFriendRequestCountDidUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *&v3[v4] = sub_24F92ADA8();
  *&v3[OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount] = 0;
  *&v3[OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_bag] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id GameCenterFriendRequestCoordinator.init(bag:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_onFriendRequestCountDidUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *&v1[v3] = sub_24F92ADA8();
  *&v1[OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount] = 0;
  *&v1[OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_bag] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GameCenterFriendRequestCoordinator();
  return objc_msgSendSuper2(&v5, sel_init);
}

id GameCenterFriendRequestCoordinator.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for GameCenterFriendRequestCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24E95B0C4(void *a1)
{
  if (qword_27F210598 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  v3 = [a1 name];
  v4 = sub_24F92B0D8();
  v6 = v5;

  v9[3] = MEMORY[0x277D837D0];
  v9[0] = v4;
  v9[1] = v6;
  sub_24F928438();
  sub_24E601704(v9, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  sub_24F92A588();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24E95BD30(sub_24E95C9E8, v7);
}

double sub_24E95B310(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v25[1] = a4;
  v26 = a1;
  v27 = a2;
  v6 = sub_24F927D88();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24F927DC8();
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927D98();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  (*(v13 + 104))(v15, *MEMORY[0x277D851C8], v12);
  v16 = sub_24F92BF48();
  (*(v13 + 8))(v15, v12);
  v17 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  v19[2] = v17;
  v19[3] = v20;
  v19[4] = v21;
  aBlock[4] = v28;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = v29;
  v22 = _Block_copy(aBlock);

  v23 = v21;
  sub_24F927DA8();
  v32 = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v11, v8, v22);
  _Block_release(v22);

  (*(v31 + 8))(v8, v6);
  (*(v9 + 8))(v11, v30);

  return result;
}

void sub_24E95B72C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_24E95B7F0(a2, a3);
  }
}

void sub_24E95B7F0(uint64_t a1, void *a2)
{
  v24 = a2;
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  if (qword_27F210598 != -1)
  {
    swift_once();
  }

  v5 = sub_24F92AAE8();
  __swift_project_value_buffer(v5, qword_27F39C428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  v30 = MEMORY[0x277D83B88];
  v29[0] = v26;
  sub_24F928438();
  sub_24E601704(v29, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  sub_24F92A588();

  v6 = v24;
  if (v24)
  {
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    v7 = v6;
    sub_24F9283A8();
    swift_getErrorValue();
    v8 = v27;
    v9 = v28;
    v30 = v28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8, v9);
    sub_24F928458();
    sub_24E601704(v29, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    v11 = OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
    v12 = v25;
    swift_beginAccess();
    v13 = *(v12 + v11);
    *(v12 + v11) = 0;
    sub_24E95A2C8(v13);
  }

  else
  {
    v14 = v26;
    sub_24F92AB98();
    sub_24F92AB88();
    MEMORY[0x2530504F0]();

    v15 = sub_24F92AB18();
    v16 = (*(*(v15 - 8) + 48))(v4, 1, v15);
    sub_24E601704(v4, &qword_27F2330E0, &unk_24F9694C0);
    if (v16 == 1 || (sub_24E69A5C4(0, &unk_27F2229D0, 0x277D0C138), (v17 = static GKLocalPlayer.currentAcknowledgedPlayer.getter()) == 0))
    {
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A5A8();

      v21 = OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
      v22 = v25;
      swift_beginAccess();
      v20 = *(v22 + v21);
      *(v22 + v21) = 0;
    }

    else
    {

      v18 = OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
      v19 = v25;
      swift_beginAccess();
      v20 = *(v19 + v18);
      *(v19 + v18) = v14;
    }

    sub_24E95A2C8(v20);
  }
}

double sub_24E95BCFC()
{
  result = vcvtd_n_f64_u64(sub_24F18A83C(0x20000000000001uLL), 0x35uLL) + 0.0;
  qword_27F222910 = *&result;
  return result;
}

void sub_24E95BD30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  if (qword_27F210A18 != -1)
  {
    swift_once();
  }

  sub_24F92A438();
  sub_24F92A408();
  (*(v5 + 8))(v7, v4);
  if (sub_24E95C260(aBlock[0]))
  {
    if (qword_27F210598 != -1)
    {
      swift_once();
    }

    v8 = sub_24F92AAE8();
    __swift_project_value_buffer(v8, qword_27F39C428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v9 = objc_opt_self();
    *&aBlock[4] = a1;
    *&aBlock[5] = a2;
    *&aBlock[0] = MEMORY[0x277D85DD0];
    *&aBlock[1] = 1107296256;
    *&aBlock[2] = sub_24E95C154;
    *&aBlock[3] = &block_descriptor_8;
    v10 = _Block_copy(aBlock);

    [v9 getActiveFriendRequestCount_];
    _Block_release(v10);
  }

  else
  {
    if (qword_27F210598 != -1)
    {
      swift_once();
    }

    v11 = sub_24F92AAE8();
    __swift_project_value_buffer(v11, qword_27F39C428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }
}

void sub_24E95C154(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

id GameCenterFriendRequestCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

BOOL sub_24E95C260(double a1)
{
  if (a1 <= 0.0)
  {
    if (qword_27F210598 != -1)
    {
      swift_once();
    }

    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F39C428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    return 0;
  }

  else if (a1 >= 1.0)
  {
    if (qword_27F210598 != -1)
    {
      swift_once();
    }

    v6 = sub_24F92AAE8();
    __swift_project_value_buffer(v6, qword_27F39C428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    return 1;
  }

  else
  {
    if (qword_27F210598 != -1)
    {
      swift_once();
    }

    v2 = sub_24F92AAE8();
    __swift_project_value_buffer(v2, qword_27F39C428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    if (qword_27F210018 != -1)
    {
      swift_once();
    }

    v3 = *&qword_27F222910;
    v7[3] = MEMORY[0x277D839F8];
    v7[0] = qword_27F222910;
    sub_24F928438();
    sub_24E601704(v7, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    return v3 < a1;
  }
}

uint64_t sub_24E95C66C(uint64_t result)
{
  if ((result & 0xFFFFFFFE) == 2)
  {
    v1 = result;
    if (qword_27F210598 != -1)
    {
      swift_once();
    }

    v2 = sub_24F92AAE8();
    __swift_project_value_buffer(v2, qword_27F39C428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    type metadata accessor for GKRefreshDataType(0);
    v6 = v3;
    v5[0] = v1;
    sub_24F928458();
    sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_24E95BD30(sub_24E95CA2C, v4);
  }

  return result;
}

uint64_t sub_24E95C864@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24E95C8BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_24E95A2C8(v5);
}

uint64_t objectdestroy_16Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24E95CB54(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24E95DB98(v6);
  return sub_24F92C958();
}

void sub_24E95CBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E8, &qword_24F9FD320);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = [objc_opt_self() proxyForLocalPlayer];
  v19 = [v11 gameStatServicePrivate];

  v12 = sub_24F92B098();
  v13 = sub_24F92BA98();
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v14, v10, v6);
  *(v16 + v15) = a3;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  aBlock[4] = sub_24E960E34;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EFA60B8;
  aBlock[3] = &block_descriptor_31;
  v17 = _Block_copy(aBlock);

  [v19 getGamesFriendsPlayed:0 type:v12 fetchOptions:1 withinSecs:v21 matchingBundleIDs:v13 handler:v17];
  swift_unknownObjectRelease();

  _Block_release(v17);
}

void sub_24E95CE58(uint64_t a1, void *a2, void *a3, uint64_t isUniquelyReferenced_nonNull_native, uint64_t a5)
{
  v80 = a5;
  v8 = type metadata accessor for GameSuggestion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Player(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Game(0) - 8;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v21 = (v79 - v20);
  if (a2)
  {
    v95[0] = a2;
    v22 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E8, &qword_24F9FD320);
    sub_24F92B788();
    return;
  }

  v23 = a3;
  v83 = v15;
  v82 = v13;
  v79[0] = v19;
  v91 = v9;
  v92 = v18;
  v90 = v8;

  v95[0] = sub_24EC4E0E0(v24);
  sub_24E95CB54(v95);
  v25 = v95[0];
  v26 = v83;
  v27 = v23;
  if ((v95[0] & 0x8000000000000000) != 0 || (v95[0] & 0x4000000000000000) != 0)
  {
LABEL_62:
    v28 = sub_24F92C738();
  }

  else
  {
    v28 = *(v95[0] + 16);
  }

  v79[1] = v27;
  v89 = v11;
  if (v28)
  {
    v86 = 0;
    v29 = 0;
    v88 = v25 & 0xC000000000000001;
    v84 = (v25 + 32);
    v93 = MEMORY[0x277D84F98];
    v94 = isUniquelyReferenced_nonNull_native + 56;
    v11 = v92;
    v81 = isUniquelyReferenced_nonNull_native;
    v85 = v25;
    v87 = v28;
    while (1)
    {
      while (1)
      {
        if (v88)
        {
          v30 = MEMORY[0x253052270](v29, v25);
          v31 = __OFADD__(v29++, 1);
          if (v31)
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v29 >= *(v25 + 16))
          {
            goto LABEL_60;
          }

          v30 = v84[v29];
          v31 = __OFADD__(v29++, 1);
          if (v31)
          {
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        v27 = v30;
        v32 = [v27 lastPlayedGame];
        if (v32)
        {
          break;
        }

        if (v29 == v28)
        {
          goto LABEL_43;
        }
      }

      v33 = v32;
      v34 = [v33 bundleIdentifier];
      v35 = sub_24F92B0D8();
      v37 = v36;

      if (*(isUniquelyReferenced_nonNull_native + 16))
      {
        sub_24F92D068();
        sub_24F92B218();
        v38 = sub_24F92D0B8();
        v39 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
        v40 = v38 & ~v39;
        if ((*(v94 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
        {
          v41 = ~v39;
          while (1)
          {
            v42 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v40);
            v43 = *v42 == v35 && v42[1] == v37;
            if (v43 || (sub_24F92CE08() & 1) != 0)
            {
              break;
            }

            v40 = (v40 + 1) & v41;
            if (((*(v94 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v44 = [v33 bundleIdentifier];

          v11 = sub_24F92B0D8();
          v25 = v26;
          v26 = v45;

          sub_24F3FAC70(v27, 0, 0, v25);
          sub_24E824448(v86, 0);
          v46 = v93;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95[0] = v46;
          v48 = sub_24E76D644(v11, v26);
          v49 = *(v46 + 16);
          v50 = (v47 & 1) == 0;
          v51 = v49 + v50;
          if (__OFADD__(v49, v50))
          {
            goto LABEL_61;
          }

          v52 = v47;
          if (*(v46 + 24) >= v51)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24E8B07DC();
            }
          }

          else
          {
            sub_24E89DAD4(v51, isUniquelyReferenced_nonNull_native);
            v53 = sub_24E76D644(v11, v26);
            if ((v52 & 1) != (v54 & 1))
            {
              sub_24F92CF88();
              __break(1u);

              __break(1u);
              return;
            }

            v48 = v53;
          }

          isUniquelyReferenced_nonNull_native = v81;
          v55 = v95[0];
          if (v52)
          {
          }

          else
          {
            sub_24EC275F0(v48, v11, v26, MEMORY[0x277D84F90], v95[0]);
          }

          v93 = v55;
          v56 = *(v55 + 56);
          v57 = *(v56 + 8 * v48);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          *(v56 + 8 * v48) = v57;
          if ((v58 & 1) == 0)
          {
            v57 = sub_24E618138(0, v57[2] + 1, 1, v57);
            *(v56 + 8 * v48) = v57;
          }

          v60 = v57[2];
          v59 = v57[3];
          if (v60 >= v59 >> 1)
          {
            *(v56 + 8 * v48) = sub_24E618138((v59 > 1), v60 + 1, 1, v57);
          }

          v61 = *(v56 + 8 * v48);
          *(v61 + 16) = v60 + 1;
          v62 = v61 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v60;
          v26 = v83;
          sub_24E960F10(v83, v62, type metadata accessor for Player);
          v86 = sub_24E95DAD0;
        }

        else
        {
LABEL_25:
        }

        v11 = v92;
        v25 = v85;
      }

      else
      {

        v11 = v92;
      }

      v28 = v87;
      if (v29 == v87)
      {
LABEL_43:

        goto LABEL_45;
      }
    }
  }

  v86 = 0;
  v93 = MEMORY[0x277D84F98];
  v11 = v92;
LABEL_45:
  v63 = *(v80 + 16);
  if (v63)
  {
    v64 = v80 + ((*(v79[0] + 80) + 32) & ~*(v79[0] + 80));
    v65 = *(v79[0] + 72);
    v66 = MEMORY[0x277D84F90];
    v67 = MEMORY[0x277D84F90];
    do
    {
      sub_24E69BF7C(v64, v21);
      sub_24E69BF7C(v21, v11);
      v69 = *v21;
      v68 = v21[1];

      sub_24E69BFE0(v21);
      if (*(v93 + 16))
      {
        v70 = sub_24E76D644(v69, v68);
        v72 = v71;

        v73 = v66;
        if (v72)
        {
          v73 = *(*(v93 + 56) + 8 * v70);
        }
      }

      else
      {

        v73 = v66;
      }

      v11 = v92;
      v74 = v89;
      sub_24E960F10(v92, v89, type metadata accessor for Game);
      *(v74 + *(v90 + 20)) = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_24E618110(0, v67[2] + 1, 1, v67);
      }

      v76 = v67[2];
      v75 = v67[3];
      v77 = v91;
      if (v76 >= v75 >> 1)
      {
        v78 = sub_24E618110((v75 > 1), v76 + 1, 1, v67);
        v77 = v91;
        v67 = v78;
      }

      v67[2] = v76 + 1;
      sub_24E960F10(v74, v67 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76, type metadata accessor for GameSuggestion);
      v64 += v65;
      --v63;
    }

    while (v63);
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  v95[0] = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E8, &qword_24F9FD320);
  sub_24F92B798();

  sub_24E824448(v86, 0);
}

uint64_t sub_24E95D6F0(id *a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v35 - v18;
  v20 = *a2;
  v21 = &selRef_systemBackgroundColor;
  v22 = [*a1 lastPlayedDate];
  v37 = v19;
  if (v22)
  {
    v23 = v22;
    sub_24F91F608();

    v24 = *(v10 + 32);
    v24(v8, v15, v9);
    v36 = *(v10 + 56);
    v36(v8, 0, 1, v9);
    v24(v19, v8, v9);
    v21 = &selRef_systemBackgroundColor;
  }

  else
  {
    v36 = *(v10 + 56);
    v36(v8, 1, 1, v9);
    sub_24F91F618();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_24E601704(v8, &unk_27F22EC30, &qword_24F939880);
    }
  }

  v25 = [v20 v21[76]];
  if (v25)
  {
    v26 = v25;
    sub_24F91F608();

    v27 = *(v10 + 32);
    v28 = v38;
    v27(v38, v15, v9);
    v36(v28, 0, 1, v9);
    v27(v12, v28, v9);
    v29 = v37;
  }

  else
  {
    v30 = v38;
    v36(v38, 1, 1, v9);
    sub_24F91F618();
    v31 = (*(v10 + 48))(v30, 1, v9);
    v29 = v37;
    if (v31 != 1)
    {
      sub_24E601704(v30, &unk_27F22EC30, &qword_24F939880);
    }
  }

  v32 = sub_24F91F588();
  v33 = *(v10 + 8);
  v33(v12, v9);
  v33(v29, v9);
  return v32 & 1;
}

uint64_t sub_24E95DAE0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return sub_24E95FCF0(v5, a3);
}

void sub_24E95DB98(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
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
        sub_24E960F78();
        v6 = sub_24F92B618();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_24E95E134(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_24E95DC9C(0, v2, 1, a1);
  }
}

void sub_24E95DC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = sub_24F91F648();
  MEMORY[0x28223BE20](v13);
  v60 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v46 - v16;
  MEMORY[0x28223BE20](v17);
  v51 = &v46 - v19;
  v47 = a2;
  if (a3 != a2)
  {
    v56 = (v18 + 32);
    v20 = *a4;
    v59 = (v18 + 56);
    v52 = (v18 + 48);
    v53 = (v18 + 8);
    v54 = v20;
    v21 = v20 + 8 * a3 - 8;
    v22 = a1 - a3;
LABEL_5:
    v49 = v21;
    v50 = a3;
    v23 = *(v54 + 8 * a3);
    v48 = v22;
    v24 = v51;
    while (1)
    {
      v25 = *v21;
      v26 = v23;
      v61 = v25;
      v58 = v26;
      v27 = [v26 lastPlayedDate];
      if (v27)
      {
        v28 = v27;
        v29 = v57;
        sub_24F91F608();

        v30 = *v56;
        (*v56)(v12, v29, v13);
        v31 = *v59;
        (*v59)(v12, 0, 1, v13);
        v30(v24, v12, v13);
      }

      else
      {
        v31 = *v59;
        (*v59)(v12, 1, 1, v13);
        sub_24F91F618();
        if ((*v52)(v12, 1, v13) != 1)
        {
          sub_24E601704(v12, &unk_27F22EC30, &qword_24F939880);
        }
      }

      v32 = [v61 lastPlayedDate];
      if (v32)
      {
        v33 = v57;
        v34 = v32;
        sub_24F91F608();

        v35 = *v56;
        v36 = v12;
        v37 = v55;
        v38 = v33;
        v24 = v51;
        (*v56)(v55, v38, v13);
        v31(v37, 0, 1, v13);
        v39 = v37;
        v12 = v36;
        v35(v60, v39, v13);
      }

      else
      {
        v40 = v55;
        v31(v55, 1, 1, v13);
        sub_24F91F618();
        if ((*v52)(v40, 1, v13) != 1)
        {
          sub_24E601704(v55, &unk_27F22EC30, &qword_24F939880);
        }
      }

      v41 = v60;
      v42 = sub_24F91F588();
      v43 = *v53;
      (*v53)(v41, v13);
      v43(v24, v13);

      if ((v42 & 1) == 0)
      {
LABEL_4:
        a3 = v50 + 1;
        v21 = v49 + 8;
        v22 = v48 - 1;
        if (v50 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v54)
      {
        break;
      }

      v44 = *v21;
      v23 = *(v21 + 8);
      *v21 = v23;
      *(v21 + 8) = v44;
      v21 -= 8;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24E95E134(uint64_t **a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v161 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v140 - v11;
  MEMORY[0x28223BE20](v12);
  v151 = &v140 - v13;
  MEMORY[0x28223BE20](v14);
  v149 = &v140 - v15;
  v16 = sub_24F91F648();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v165 = &v140 - v18;
  MEMORY[0x28223BE20](v19);
  v148 = &v140 - v20;
  MEMORY[0x28223BE20](v21);
  v163 = &v140 - v22;
  MEMORY[0x28223BE20](v23);
  v152 = a3;
  v153 = &v140 - v26;
  if (*(a3 + 8) < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_106:
    a3 = *v144;
    if (!*v144)
    {
      goto LABEL_147;
    }

    a4 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    v135 = a4;
LABEL_109:
    v169 = v135;
    a4 = *(v135 + 2);
    if (a4 >= 2)
    {
      while (*v152)
      {
        v136 = *&v135[16 * a4];
        v137 = v135;
        v138 = *&v135[16 * a4 + 24];
        sub_24E95EEB8((*v152 + 8 * v136), (*v152 + 8 * *&v135[16 * a4 + 16]), (*v152 + 8 * v138), a3);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v138 < v136)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_24E86164C(v137);
        }

        if (a4 - 2 >= *(v137 + 2))
        {
          goto LABEL_135;
        }

        v139 = &v137[16 * a4];
        *v139 = v136;
        *(v139 + 1) = v138;
        v169 = v137;
        sub_24E8615C0(a4 - 1);
        v135 = v169;
        a4 = *(v169 + 2);
        if (a4 <= 1)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_145;
    }

LABEL_117:

    return;
  }

  v27 = *(a3 + 8);
  v141 = a4;
  v28 = 0;
  v162 = (v24 + 32);
  v166 = (v24 + 56);
  v155 = (v24 + 48);
  v29 = MEMORY[0x277D84F90];
  v160 = (v24 + 8);
  v156 = v16;
  v157 = v25;
  while (1)
  {
    v30 = v28;
    if (v28 + 1 >= v27)
    {
      v43 = v28 + 1;
    }

    else
    {
      v154 = v27;
      v143 = v29;
      a4 = *v152;
      v31 = *(*v152 + 8 * (v28 + 1));
      v167 = *(*v152 + 8 * v28);
      v32 = v167;
      v168 = v31;
      v33 = v31;
      a3 = v32;
      LODWORD(v159) = sub_24E95D6F0(&v168, &v167);
      if (v5)
      {

        return;
      }

      v34 = v28 + 2;
      v142 = v28;
      v147 = 8 * v28;
      v35 = (a4 + 8 * v28 + 16);
      v150 = 0;
      while (1)
      {
        v43 = v154;
        if (v154 == v34)
        {
          break;
        }

        v44 = *(v35 - 1);
        v45 = *v35;
        v46 = v44;
        v164 = v45;
        v47 = [v45 lastPlayedDate];
        if (v47)
        {
          v48 = v47;
          v49 = v163;
          sub_24F91F608();

          v50 = *v162;
          v51 = v149;
          (*v162)(v149, v49, v16);
          v52 = *v166;
          (*v166)(v51, 0, 1, v16);
          (v50)(v153, v51, v16);
        }

        else
        {
          v52 = *v166;
          v53 = v149;
          (*v166)(v149, 1, 1, v16);
          sub_24F91F618();
          if ((*v155)(v53, 1, v16) != 1)
          {
            sub_24E601704(v53, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v54 = [v46 lastPlayedDate];
        if (v54)
        {
          v36 = v163;
          v37 = v54;
          sub_24F91F608();

          v38 = *v162;
          v39 = v151;
          (*v162)(v151, v36, v16);
          v52(v39, 0, 1, v16);
          v40 = v148;
          (v38)(v148, v39, v16);
        }

        else
        {
          v55 = v151;
          v52(v151, 1, 1, v16);
          v40 = v148;
          sub_24F91F618();
          if ((*v155)(v55, 1, v16) != 1)
          {
            sub_24E601704(v151, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v41 = v153;
        a4 = sub_24F91F588();
        a3 = v160;
        v42 = *v160;
        (*v160)(v40, v16);
        v42(v41, v16);

        ++v34;
        ++v35;
        v5 = v150;
        if ((v159 ^ a4))
        {
          v43 = v34 - 1;
          break;
        }
      }

      v29 = v143;
      v30 = v142;
      v56 = v147;
      if (v159)
      {
        if (v43 < v142)
        {
          goto LABEL_140;
        }

        if (v142 < v43)
        {
          v57 = 8 * v43 - 8;
          v58 = v43;
          v59 = v142;
          do
          {
            if (v59 != --v58)
            {
              v60 = *v152;
              if (!*v152)
              {
                goto LABEL_144;
              }

              v61 = *(v60 + v56);
              *(v60 + v56) = *(v60 + v57);
              *(v60 + v57) = v61;
            }

            ++v59;
            v57 -= 8;
            v56 += 8;
          }

          while (v59 < v58);
        }
      }
    }

    v62 = v152[1];
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v30))
      {
        goto LABEL_137;
      }

      if (v43 - v30 < v141)
      {
        if (__OFADD__(v30, v141))
        {
          goto LABEL_138;
        }

        if (v30 + v141 < v62)
        {
          v62 = v30 + v141;
        }

        if (v62 < v30)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v135 = sub_24E86164C(a4);
          goto LABEL_109;
        }

        if (v43 != v62)
        {
          break;
        }
      }
    }

    v28 = v43;
    if (v43 < v30)
    {
      goto LABEL_136;
    }

LABEL_36:
    v63 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v63;
    }

    else
    {
      v29 = sub_24E615ED8(0, *(v63 + 2) + 1, 1, v63);
    }

    a3 = *(v29 + 2);
    v64 = *(v29 + 3);
    v65 = a3 + 1;
    if (a3 >= v64 >> 1)
    {
      v29 = sub_24E615ED8((v64 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v65;
    v66 = &v29[16 * a3];
    *(v66 + 4) = v30;
    *(v66 + 5) = v28;
    v67 = *v144;
    if (!*v144)
    {
      goto LABEL_146;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v29 + 4);
          v69 = *(v29 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_55:
          if (v71)
          {
            goto LABEL_125;
          }

          v84 = &v29[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_128;
          }

          v90 = &v29[16 * a3 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_132;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              a3 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v94 = &v29[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_69:
        if (v89)
        {
          goto LABEL_127;
        }

        v97 = &v29[16 * a3];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_130;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = a3 - 1;
        if (a3 - 1 >= v65)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v152)
        {
          goto LABEL_143;
        }

        v105 = v29;
        v106 = *&v29[16 * a4 + 32];
        v107 = *&v29[16 * a3 + 40];
        sub_24E95EEB8((*v152 + 8 * v106), (*v152 + 8 * *&v29[16 * a3 + 32]), (*v152 + 8 * v107), v67);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v107 < v106)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_24E86164C(v105);
        }

        if (a4 >= *(v105 + 2))
        {
          goto LABEL_122;
        }

        v108 = &v105[16 * a4];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v169 = v105;
        a4 = &v169;
        sub_24E8615C0(a3);
        v29 = v169;
        v65 = *(v169 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v29[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_123;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_124;
      }

      v79 = &v29[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_126;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_129;
      }

      if (v83 >= v75)
      {
        v101 = &v29[16 * a3 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_133;
        }

        if (v70 < v104)
        {
          a3 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v27 = v152[1];
    if (v28 >= v27)
    {
      goto LABEL_106;
    }
  }

  v145 = v62;
  v143 = v29;
  v150 = v5;
  v159 = *v152;
  v109 = v159 + 8 * v43 - 8;
  v142 = v30;
  v110 = v30 - v43;
LABEL_87:
  v154 = v43;
  v111 = *(v159 + 8 * v43);
  v146 = v110;
  v147 = v109;
  while (1)
  {
    v112 = *v109;
    v113 = v111;
    v114 = v112;
    v164 = v113;
    v115 = [v113 lastPlayedDate];
    if (v115)
    {
      v116 = v163;
      v117 = v115;
      sub_24F91F608();

      v118 = *v162;
      v119 = v158;
      (*v162)(v158, v116, v16);
      v120 = *v166;
      (*v166)(v119, 0, 1, v16);
      (v118)(v165, v119, v16);
    }

    else
    {
      v120 = *v166;
      v121 = v158;
      (*v166)(v158, 1, 1, v16);
      sub_24F91F618();
      if ((*v155)(v121, 1, v16) != 1)
      {
        sub_24E601704(v121, &unk_27F22EC30, &qword_24F939880);
      }
    }

    v122 = [v114 lastPlayedDate];
    if (v122)
    {
      v123 = v163;
      v124 = v122;
      sub_24F91F608();

      v125 = v161;
      v126 = *v162;
      v127 = v123;
      v128 = v156;
      (*v162)(v161, v127, v156);
      v120(v125, 0, 1, v128);
      v129 = v157;
      v126();
      v16 = v128;
    }

    else
    {
      v130 = v161;
      v16 = v156;
      v120(v161, 1, 1, v156);
      v129 = v157;
      sub_24F91F618();
      if ((*v155)(v130, 1, v16) != 1)
      {
        sub_24E601704(v161, &unk_27F22EC30, &qword_24F939880);
      }
    }

    v131 = v165;
    a4 = sub_24F91F588();
    a3 = v160;
    v132 = *v160;
    (*v160)(v129, v16);
    v132(v131, v16);

    if ((a4 & 1) == 0)
    {
LABEL_86:
      v43 = v154 + 1;
      v109 = v147 + 8;
      v110 = v146 - 1;
      if (v154 + 1 != v145)
      {
        goto LABEL_87;
      }

      v5 = v150;
      v29 = v143;
      v30 = v142;
      v28 = v145;
      if (v145 < v142)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    if (!v159)
    {
      break;
    }

    v133 = *v109;
    v111 = *(v109 + 8);
    *v109 = v111;
    *(v109 + 8) = v133;
    v109 -= 8;
    if (__CFADD__(v110++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_24E95EEB8(void **a1, void **a2, void **a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = (&v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v95 = &v89 - v11;
  MEMORY[0x28223BE20](v12);
  v98 = &v89 - v13;
  MEMORY[0x28223BE20](v14);
  v96 = &v89 - v15;
  v16 = sub_24F91F648();
  MEMORY[0x28223BE20](v16);
  v94 = (&v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v102 = &v89 - v19;
  MEMORY[0x28223BE20](v20);
  v93 = (&v89 - v21);
  MEMORY[0x28223BE20](v22);
  v103 = &v89 - v23;
  MEMORY[0x28223BE20](v24);
  v101 = &v89 - v26;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v28 < v29 >> 3)
  {
    if (a4 != a1 || &a1[v28] <= a4)
    {
      v31 = v25;
      memmove(a4, a1, 8 * v28);
      v25 = v31;
    }

    v92 = &a4[v28];
    if (a2 - a1 < 8)
    {
      a2 = a1;
    }

    else
    {
      v32 = a1;
      if (a2 < a3)
      {
        v97 = (v25 + 32);
        v102 = (v25 + 56);
        v94 = (v25 + 48);
        v95 = (v25 + 8);
        v33 = v92;
        while (1)
        {
          v100 = a2;
          v34 = *a2;
          v104 = a4;
          v35 = *a4;
          v36 = v34;
          v37 = v35;
          v99 = v36;
          v38 = [v36 lastPlayedDate];
          if (v38)
          {
            v39 = v38;
            v40 = v103;
            sub_24F91F608();

            v41 = v96;
            v42 = *v97;
            (*v97)(v96, v40, v16);
            v43 = *v102;
            (*v102)(v41, 0, 1, v16);
            v42(v101, v41, v16);
          }

          else
          {
            v43 = *v102;
            v44 = v96;
            (*v102)(v96, 1, 1, v16);
            sub_24F91F618();
            if ((*v94)(v44, 1, v16) != 1)
            {
              sub_24E601704(v44, &unk_27F22EC30, &qword_24F939880);
            }
          }

          v45 = [v37 lastPlayedDate];
          if (v45)
          {
            v46 = v32;
            v47 = v103;
            v48 = v45;
            sub_24F91F608();

            v49 = v98;
            v50 = *v97;
            v51 = v47;
            v32 = v46;
            v33 = v92;
            (*v97)(v98, v51, v16);
            v43(v49, 0, 1, v16);
            v52 = v93;
            v50(v93, v49, v16);
          }

          else
          {
            v53 = v98;
            v43(v98, 1, 1, v16);
            v52 = v93;
            sub_24F91F618();
            if ((*v94)(v53, 1, v16) != 1)
            {
              sub_24E601704(v98, &unk_27F22EC30, &qword_24F939880);
            }
          }

          v54 = v101;
          v55 = sub_24F91F588();
          v56 = v52;
          v57 = *v95;
          (*v95)(v56, v16);
          v57(v54, v16);

          if ((v55 & 1) == 0)
          {
            break;
          }

          v58 = v100;
          a2 = v100 + 1;
          a4 = v104;
          if (v32 != v100)
          {
            goto LABEL_24;
          }

LABEL_25:
          ++v32;
          if (a4 >= v33 || a2 >= a3)
          {
            a2 = v32;
            goto LABEL_56;
          }
        }

        v58 = v104;
        a4 = v104 + 1;
        a2 = v100;
        if (v32 == v104)
        {
          goto LABEL_25;
        }

LABEL_24:
        *v32 = *v58;
        goto LABEL_25;
      }

      a2 = a1;
    }

    v33 = v92;
    goto LABEL_56;
  }

  v90 = a1;
  if (a4 != a2 || &a2[v30] <= a4)
  {
    v59 = v25;
    memmove(a4, a2, 8 * v30);
    v25 = v59;
  }

  v33 = &a4[v30];
  if (a3 - a2 >= 8 && a2 > v90)
  {
    v96 = (v25 + 32);
    v101 = (v25 + 56);
    v91 = (v25 + 48);
    v92 = (v25 + 8);
    v104 = a4;
    do
    {
      v100 = a2;
      v60 = a2 - 1;
      --a3;
      v61 = v33;
      v93 = v60;
      while (1)
      {
        v62 = *--v61;
        v63 = *v60;
        v64 = v62;
        v65 = v63;
        v66 = [v64 lastPlayedDate];
        v99 = v64;
        if (v66)
        {
          v67 = v66;
          v68 = v103;
          sub_24F91F608();

          v69 = v95;
          v70 = *v96;
          (*v96)(v95, v68, v16);
          v71 = *v101;
          (*v101)(v69, 0, 1, v16);
          v70(v102, v69, v16);
        }

        else
        {
          v71 = *v101;
          v72 = v95;
          (*v101)(v95, 1, 1, v16);
          sub_24F91F618();
          if ((*v91)(v72, 1, v16) != 1)
          {
            sub_24E601704(v72, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v98 = v65;
        v73 = [v65 lastPlayedDate];
        if (v73)
        {
          v74 = a3;
          v75 = v33;
          v76 = v103;
          v77 = v73;
          sub_24F91F608();

          v78 = v97;
          v79 = *v96;
          v80 = v76;
          v33 = v75;
          a3 = v74;
          (*v96)(v97, v80, v16);
          v71(v78, 0, 1, v16);
          v81 = v94;
          v79(v94, v78, v16);
        }

        else
        {
          v82 = v97;
          v71(v97, 1, 1, v16);
          v81 = v94;
          sub_24F91F618();
          if ((*v91)(v82, 1, v16) != 1)
          {
            sub_24E601704(v97, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v83 = v102;
        v84 = sub_24F91F588();
        v85 = *v92;
        (*v92)(v81, v16);
        v85(v83, v16);

        v86 = (a3 + 1);
        if (v84)
        {
          break;
        }

        a4 = v104;
        v60 = v93;
        if (v86 != v33)
        {
          *a3 = *v61;
        }

        --a3;
        v33 = v61;
        if (v61 <= a4)
        {
          v33 = v61;
          a2 = v100;
          goto LABEL_56;
        }
      }

      a4 = v104;
      v87 = v93;
      if (v86 != v100)
      {
        *a3 = *v93;
      }

      if (v33 <= a4)
      {
        break;
      }

      a2 = v87;
    }

    while (v87 > v90);
    a2 = v87;
  }

LABEL_56:
  if (a2 != a4 || a2 >= (a4 + ((v33 - a4 + (v33 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v33 - a4));
  }

  return 1;
}

uint64_t sub_24E95F82C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = *(type metadata accessor for Game(0) - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E95F8E8, 0, 0);
}

uint64_t sub_24E95F8E8(__n128 a1)
{
  v2 = v1[3];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v1[5];
    v6 = v1[6];
    v21 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v3, 0);
    v4 = v21;
    v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 72);
    do
    {
      v9 = v1[6];
      sub_24E69BF7C(v7, v9);
      v10 = *v9;
      v11 = *(v6 + 8);

      sub_24E69BFE0(v9);
      v13 = *(v21 + 16);
      v12 = *(v21 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24F4578E0((v12 > 1), v13 + 1, 1);
      }

      *(v21 + 16) = v13 + 1;
      v14 = v21 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v7 += v8;
      --v3;
    }

    while (v3);
    v2 = v1[3];
  }

  v15 = v1[4];
  v16 = sub_24F45D828(v4);
  v1[7] = v16;

  v17 = swift_task_alloc();
  v1[8] = v17;
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v2;
  v18 = swift_task_alloc();
  v1[9] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E0, &qword_24F96B290);
  *v18 = v1;
  v18[1] = sub_24E95FAE8;

  return MEMORY[0x2822008A0](v1 + 2, 0, 0, 0xD00000000000003FLL, 0x800000024FA4B010, sub_24E960D70, v17, v19);
}

uint64_t sub_24E95FAE8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24E95FC78;
  }

  else
  {

    v2 = sub_24E95FC0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E95FC0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E95FC78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E95FCF0(char a1, uint64_t a2)
{
  *(v2 + 152) = a2;
  *(v2 + 360) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v3 - 8);
  *(v2 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18, &unk_24F9762F0);
  *(v2 + 184) = swift_task_alloc();
  v4 = sub_24F920728();
  *(v2 + 192) = v4;
  *(v2 + 200) = *(v4 - 8);
  *(v2 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20, qword_24F95A020);
  *(v2 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E95FE8C, 0, 0);
}

uint64_t sub_24E95FE8C()
{
  *(v0 + 224) = sub_24F92B7F8();
  *(v0 + 232) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E95FF24, v2, v1);
}

uint64_t sub_24E95FF24()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 240) = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_24E95FFAC, 0, 0);
}

uint64_t sub_24E95FFAC(uint64_t a1)
{
  *(v1 + 248) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E960038, v3, v2);
}

uint64_t sub_24E960038()
{
  v1 = v0[30];

  swift_getKeyPath();
  v0[16] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[32] = *v2;
  v0[33] = v2[1];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_24E960180;

  return MEMORY[0x28217F228](v0 + 7, v3, v3);
}

uint64_t sub_24E960180()
{
  *(*v1 + 280) = v0;

  if (v0)
  {

    v2 = sub_24E9604A4;
  }

  else
  {
    v2 = sub_24E96029C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E96029C()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_24F920698();
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  (*(v3 + 32))(v1, v0[26], v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  v5 = sub_24F920398();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_24E96052C;
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[27];
  v10 = v0[23];
  v11 = v0[19];

  return sub_24F6F826C(v9, v10, 0, 1, v7, v8, 0, v11);
}

uint64_t sub_24E9604A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E96052C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v5 = *(*v2 + 184);
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  sub_24E601704(v5, &qword_27F21DA18, &unk_24F9762F0);
  sub_24E601704(v4, &qword_27F21DA20, qword_24F95A020);
  if (v1)
  {
    v6 = sub_24E960C50;
  }

  else
  {
    v6 = sub_24E9606C0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24E9606C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = type metadata accessor for ASKBagContract(0);
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_24E960778;

  return MEMORY[0x28217F228](v0 + 136, v1, v1);
}

uint64_t sub_24E960778()
{
  *(*v1 + 320) = v0;

  if (v0)
  {

    v2 = sub_24E960CE0;
  }

  else
  {
    v2 = sub_24E960894;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E960894()
{
  v0[41] = v0[17];
  if (qword_27F210A20 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_24F92A398();
  sub_24F92A408();
  (*(v2 + 8))(v1, v3);
  v4 = v0[18];
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_24E9609DC;
  v6 = v0[37];

  return sub_24E95F82C(v6, v4);
}

uint64_t sub_24E9609DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = sub_24E960BB4;
  }

  else
  {
    *(v4 + 352) = a1;
    v5 = sub_24E960B04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24E960B04()
{
  v1 = *(v0 + 352);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E960BB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E960C50()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E960CE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E960D7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E8, &qword_24F9FD320);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24E960E34(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E8, &qword_24F9FD320) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24E95CE58(a1, a2, (v2 + v6), v8, v9);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E960F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E960F78()
{
  result = qword_27F235820;
  if (!qword_27F235820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F235820);
  }

  return result;
}

uint64_t sub_24E960FC4()
{
  result = sub_24F923278();
  qword_27F2229F0 = result;
  return result;
}

double static MoltresTips.setup(shouldReset:)(char a1)
{
  sub_24F922F38();
  if (a1)
  {
    goto LABEL_5;
  }

  if (qword_27F210020 != -1)
  {
    swift_once();
  }

  sub_24F923288();

  if (v3 == 1)
  {
LABEL_5:
    _s12GameStoreKit11MoltresTipsO14resetDatastoreyyFZ_0();
  }

  if (qword_27F210020 != -1)
  {
    swift_once();
  }

  sub_24F923298();

  return result;
}

GameStoreKit::BreakoutDetailsDisplayProperties::DetailPosition_optional __swiftcall BreakoutDetailsDisplayProperties.DetailPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BreakoutDetailsDisplayProperties.DetailPosition.rawValue.getter()
{
  v1 = 0x676E696C69617274;
  if (*v0 != 1)
  {
    v1 = 0x7265746E6563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_24E961460(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696C69617274;
  if (v2 != 1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696C69617274;
  if (*a2 != 1)
  {
    v8 = 0x7265746E6563;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24E96155C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E9615FC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E961688()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E961730(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E696C69617274;
  if (v2 != 1)
  {
    v5 = 0x7265746E6563;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696461656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

GameStoreKit::BreakoutDetailsDisplayProperties __swiftcall BreakoutDetailsDisplayProperties.init(position:wantsBlur:)(GameStoreKit::BreakoutDetailsDisplayProperties::DetailPosition position, Swift::Bool wantsBlur)
{
  *v2 = *position;
  v2[1] = wantsBlur;
  result.position = position;
  return result;
}

uint64_t BreakoutDetailsDisplayProperties.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  sub_24F928398();
  sub_24E9619AC();
  sub_24F928208();
  v13 = *(v7 + 8);
  v13(v12, v6);
  LOBYTE(v12) = v17[31];
  sub_24F928398();
  v14 = sub_24F928278();
  v15 = sub_24F9285B8();
  (*(*(v15 - 8) + 8))(a2, v15);
  v13(a1, v6);
  result = (v13)(v9, v6);
  *a3 = v12;
  a3[1] = v14 & 1;
  return result;
}

unint64_t sub_24E9619AC()
{
  result = qword_27F2229F8;
  if (!qword_27F2229F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2229F8);
  }

  return result;
}

unint64_t sub_24E961A04()
{
  result = qword_27F222A00;
  if (!qword_27F222A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222A00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BreakoutDetailsDisplayProperties(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BreakoutDetailsDisplayProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_24E961C0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_24F923BB8();
  sub_24E96257C();
  sub_24F92BB88();
  sub_24F92BC08();
  v9 = sub_24F92BBF8();
  sub_24E961D98(v9, a1, a2 & 1);
  *a6 = v10;
}

void (*sub_24E961CB8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

unint64_t sub_24E961D44()
{
  result = qword_27F222A08;
  if (!qword_27F222A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222A08);
  }

  return result;
}

double sub_24E961D98(unint64_t a1, uint64_t a2, char a3)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  if (a1 > 4)
  {
    result = 802.0;
    if (a3)
    {
      return result;
    }
  }

  else
  {
    result = dbl_24F96B508[a1 - 1];
    if (a3)
    {
      return result;
    }
  }

  if (result > *&a2)
  {
    return result * (*&a2 / result);
  }

  return result;
}

uint64_t sub_24E961E20(double a1, double a2, uint64_t a3, double *a4)
{
  v4 = sub_24F923A38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F923BB8();
  sub_24E96257C();
  sub_24F92BB88();
  sub_24F92BC08();
  v8 = sub_24F92BBF8();
  result = sub_24EAC4868(v8);
  if (result > 2u)
  {
    if (result == 3)
    {
      sub_24F923BC8();
      sub_24F927828();
      v12[0] = 0;
      v11[0] = 0;
      sub_24F923A28();
      v10 = *(v5 + 8);
      v10(v7, v4);
      sub_24F923BC8();
      sub_24F927828();
      v12[0] = 0;
      v11[0] = 0;
      sub_24F923A28();
      v10(v7, v4);
      sub_24F923BC8();
      sub_24F927828();
      v12[0] = 0;
      v11[0] = 0;
      sub_24F923A28();
      v10(v7, v4);
    }

    else
    {
      if (result != 4)
      {
        return result;
      }

      sub_24F923BC8();
      sub_24F927828();
      v12[0] = 0;
      v11[0] = 0;
      sub_24F923A28();
      v10 = *(v5 + 8);
      v10(v7, v4);
      sub_24F923BC8();
      sub_24F927828();
      v12[0] = 0;
      v11[0] = 0;
      sub_24F923A28();
      v10(v7, v4);
      sub_24F923BC8();
      sub_24F927828();
      v12[0] = 0;
      v11[0] = 0;
      sub_24F923A28();
      v10(v7, v4);
      sub_24F923BC8();
      sub_24F927828();
      v12[0] = 0;
      v11[0] = 0;
      sub_24F923A28();
      v10(v7, v4);
      sub_24F923BC8();
      sub_24F927828();
      v12[0] = 0;
      v11[0] = 0;
      sub_24F923A28();
      v10(v7, v4);
    }

    goto LABEL_11;
  }

  if (!result)
  {
    sub_24F923BC8();
    sub_24F927828();
    v12[0] = 0;
    v11[0] = 0;
    sub_24F923A28();
    return (*(v5 + 8))(v7, v4);
  }

  if (result != 1)
  {
    sub_24F923BC8();
    sub_24F927828();
    v12[0] = 0;
    v11[0] = 0;
    sub_24F923A28();
    v10 = *(v5 + 8);
    v10(v7, v4);
    sub_24F923BC8();
    sub_24F927828();
    v12[0] = 0;
    v11[0] = 0;
    sub_24F923A28();
    v10(v7, v4);
LABEL_11:
    sub_24F923BC8();
    goto LABEL_12;
  }

  sub_24F923BC8();
  sub_24F927828();
  v12[0] = 0;
  v11[0] = 0;
  sub_24F923A28();
  v10 = *(v5 + 8);
  v10(v7, v4);
  sub_24F923BC8();
LABEL_12:
  sub_24F927828();
  v12[0] = 0;
  v11[0] = 0;
  sub_24F923A28();
  return (v10)(v7, v4);
}

unint64_t sub_24E96257C()
{
  result = qword_27F2195F8;
  if (!qword_27F2195F8)
  {
    sub_24F923BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2195F8);
  }

  return result;
}

GameStoreKit::ItemBackground_optional __swiftcall ItemBackground.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ItemBackground.rawValue.getter()
{
  v1 = 25697;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x65736E65646E6F63;
  }

  if (*v0)
  {
    v1 = 0x64417465736E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24E9626CC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E962794(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E962848()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E962918(unint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25697;
  v4 = 0x800000024FA40FB0;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x65736E65646E6F63;
    v4 = 0xEF68637261655364;
  }

  if (*v1)
  {
    v3 = 0x64417465736E69;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24E9629C0()
{
  result = qword_27F222A10;
  if (!qword_27F222A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222A10);
  }

  return result;
}

uint64_t sub_24E962A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = -1 << *(a1 + 32);
  v4 = ~v3;
  *a3 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  *(a3 + 8) = result;
  *(a3 + 16) = v4;
  *(a3 + 24) = 0;
  *(a3 + 32) = v9 & v6;
  v10 = -1 << *(a2 + 32);
  v11 = ~v10;
  *(a3 + 40) = a2;
  v14 = *(a2 + 64);
  v12 = a2 + 64;
  v13 = v14;
  v15 = -v10;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  *(a3 + 48) = v12;
  *(a3 + 56) = v11;
  *(a3 + 64) = 0;
  *(a3 + 72) = v16 & v13;
  *(a3 + 80) = 0;
  return result;
}

void sub_24E962AA8(char a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = qword_27F39C780;
  swift_beginAccess();

  v10 = sub_24E965148(v9, a2, a3);

  if (!a1)
  {
LABEL_30:
    *(v4 + v8) = v10;

    v27 = *(v4 + qword_27F22F1A0);
    v28 = MEMORY[0x277D84F90];
    *&v36 = MEMORY[0x277D84F90];
    v29 = *(v27 + 16);

    if (!v29)
    {
      goto LABEL_41;
    }

    v30 = 0;
    v31 = v27 + 32;
    while (1)
    {
      v32 = v31 + 40 * v30;
      v33 = v30;
      while (1)
      {
        if (v33 >= *(v27 + 16))
        {
          __break(1u);
          goto LABEL_43;
        }

        sub_24E65864C(v32, &v42);
        if (*(*(v4 + v8) + 16))
        {
          break;
        }

LABEL_33:
        ++v33;
        sub_24E6585F8(&v42);
        v32 += 40;
        if (v29 == v33)
        {
          goto LABEL_41;
        }
      }

      sub_24E76D934(&v42);
      if ((v34 & 1) == 0)
      {
        break;
      }

      v35 = sub_24E6585F8(&v42);
      MEMORY[0x253050F00](v35);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v30 = v33 + 1;
      sub_24F92B638();
      v31 = v27 + 32;
      v28 = v36;
      if (v29 - 1 == v33)
      {
LABEL_41:

        *&v42 = v28;
        BYTE8(v42) = 0;
        sub_24F92AD88();
        sub_24E96513C(v42, SBYTE8(v42));
        return;
      }
    }

    goto LABEL_33;
  }

  if (a1 != 1)
  {
    goto LABEL_28;
  }

  sub_24E962A38(*(v4 + v8), v10, &v42);
  v11 = &v44;
  v12 = *(&v43 + 1);
  v13 = (v43 + 64) >> 6;
  v14 = (*(&v45 + 1) + 64) >> 6;
  v15 = v44;
  v16 = *(&v46 + 1);
  v17 = v46;
LABEL_5:
  if (v47)
  {
    goto LABEL_27;
  }

  if (v15)
  {
    goto LABEL_12;
  }

  v19 = v12;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v13)
    {
      if (v13 <= v12 + 1)
      {
        v25 = v12 + 1;
      }

      else
      {
        v25 = (v43 + 64) >> 6;
      }

      *&v46 = v17;
      *(&v46 + 1) = v16;
      *(&v43 + 1) = v25 - 1;
      goto LABEL_26;
    }

    v15 = *(*(&v42 + 1) + 8 * v20);
    ++v19;
    if (v15)
    {
      v12 = v20;
LABEL_12:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = *(*(v42 + 56) + ((v12 << 9) | (8 * v21)));
      if (v16)
      {
        goto LABEL_4;
      }

      v23 = v17;
      while (2)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_44;
        }

        if (v24 >= v14)
        {
          if (v14 <= v17 + 1)
          {
            v26 = v17 + 1;
          }

          else
          {
            v26 = (*(&v45 + 1) + 64) >> 6;
          }

          *(&v43 + 1) = v12;
          *&v44 = v15;
          *&v46 = v26 - 1;
          v11 = (&v46 + 8);
LABEL_26:
          *v11 = 0;
          v47 = 1;
LABEL_27:
          v38 = v44;
          v39 = v45;
          v40 = v46;
          v41 = v47;
          v36 = v42;
          v37 = v43;

          sub_24E601704(&v36, &qword_27F222A38, &qword_24F96B680);
LABEL_28:
          *(v4 + v8) = v10;

          return;
        }

        v16 = *(v45 + 8 * v24);
        ++v23;
        if (!v16)
        {
          continue;
        }

        break;
      }

      v17 = v24;
LABEL_4:
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      if (*(v22 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) != *(*(*(*(&v44 + 1) + 56) + ((v17 << 9) | (8 * v18))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
      {
        *(&v43 + 1) = v12;
        *&v44 = v15;
        *&v46 = v17;
        *(&v46 + 1) = v16;
        v38 = v44;
        v39 = v45;
        v40 = v46;
        v41 = v47;
        v36 = v42;
        v37 = v43;

        sub_24E601704(&v36, &qword_27F222A38, &qword_24F96B680);
        goto LABEL_30;
      }

      goto LABEL_5;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t GenericDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_24E9647B8(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t GenericDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_24E9647B8(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t sub_24E962FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v30 = a3;
  v31 = a4;
  v6 = type metadata accessor for ClosedGenericPageIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78, &unk_24F96B6B0);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v32 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_24F91F4A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  sub_24E60169C(a2, v13, &qword_27F228530, &unk_24F93C6E0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24E601704(v13, &qword_27F228530, &unk_24F93C6E0);
    v21 = v30;
    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60, &qword_24F96B6A0);
      v38[0] = v21;

      return sub_24F92A988();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60, &qword_24F96B6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A68, &qword_24F96B6A8);
      sub_24E602068(&qword_27F222A70, &qword_27F222A68, &qword_24F96B6A8, &protocol conformance descriptor for DiffablePageContentPresenter<A>.FetchError);
      swift_allocError();
      *v28 = 0;
      return sub_24F92A978();
    }
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    v36 = 0xD000000000000023;
    v37 = 0x800000024F96B620;
    sub_24F92C7F8();
    v23 = *(v15 + 16);
    v23(v17, v20, v14);
    sub_24E65864C(v38, v8);
    v23(&v8[*(v6 + 20)], v17, v14);
    sub_24E9656F4();
    v24 = v32;
    sub_24F929188();
    v25 = *(v15 + 8);
    v25(v17, v14);
    sub_24E6585F8(v38);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24F929C28();

    sub_24F928FE8();
    sub_24F929BF8();

    v26 = sub_24F929C08();

    v27 = sub_24EB46678(v24, v26, "GameStoreKit/GenericDiffablePageContentPresenter.swift", 54, 2);

    (*(v34 + 8))(v24, v35);
    v25(v20, v14);
    return v27;
  }
}

uint64_t sub_24E96348C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v4 = sub_24F929C18();

  v5 = sub_24EB46264(a1, v4, "GameStoreKit/GenericDiffablePageContentPresenter.swift", 54, 2);

  return v5;
}

uint64_t sub_24E96357C(uint64_t a1, uint64_t a2)
{
  sub_24E60169C(a1, &v6, &qword_27F2129B0, &unk_24F945320);
  if (v7)
  {
    sub_24E612B0C(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24E643A9C(v8, &v6);
    v3 = sub_24EB4692C(&v6, a2, "GameStoreKit/GenericDiffablePageContentPresenter.swift", 54, 2);

    sub_24E9656A0(&v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0, &unk_24F945320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60, &qword_24F96B6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A68, &qword_24F96B6A8);
    sub_24E602068(&qword_27F222A70, &qword_27F222A68, &qword_24F96B6A8, &protocol conformance descriptor for DiffablePageContentPresenter<A>.FetchError);
    swift_allocError();
    *v5 = 2;
    return sub_24F92A978();
  }
}

uint64_t sub_24E9636EC(uint64_t a1, uint64_t a2)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0, &unk_24F963D50);
  v56 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v51 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v7 = qword_27F39C780;
  v8 = Strong;
  swift_beginAccess();

  v10 = a1;
  sub_24E9643FC(v9, v8);
  v12 = v11;

  *(v8 + v7) = v12;

  v13 = MEMORY[0x277D84F90];
  v14 = sub_24E60A498(MEMORY[0x277D84F90]);
  v15 = qword_27F222A18;
  swift_beginAccess();
  v60 = v15;
  v55 = v8;
  *(v8 + v15) = v14;

  v16 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v17 = *(v10 + v16);
  v64[0] = v13;
  v18 = *(v17 + 16);
  v19 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  v57 = v10;
  swift_beginAccess();
  if (!v18)
  {
    goto LABEL_13;
  }

  v20 = 0;
  while (2)
  {
    v21 = v17 + 32 + 40 * v20;
    v22 = v20;
    v23 = v57;
    while (1)
    {
      if (v22 >= *(v17 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      sub_24E65864C(v21, v65);
      if (*(*(v23 + v19) + 16))
      {
        break;
      }

LABEL_5:
      ++v22;
      sub_24E6585F8(v65);
      v21 += 40;
      if (v18 == v22)
      {
        goto LABEL_13;
      }
    }

    sub_24E76D934(v65);
    if ((v24 & 1) == 0)
    {

      goto LABEL_5;
    }

    v25 = sub_24E6585F8(v65);
    MEMORY[0x253050F00](v25);
    if (*((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v20 = v22 + 1;
    sub_24F92B638();
    v13 = v64[0];
    if (v18 - 1 != v22)
    {
      continue;
    }

    break;
  }

LABEL_13:

  if (v13 >> 62)
  {
LABEL_44:
    v26 = sub_24F92C738();
  }

  else
  {
    v26 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v55;
  if (!v26)
  {
LABEL_37:
  }

  v28 = 0;
  v59 = v13 & 0xC000000000000001;
  v52 = v13 & 0xFFFFFFFFFFFFFF8;
  v58 = (v56 + 32);
  v51 = v56 + 40;
  v53 = v26;
  while (1)
  {
    if (v59)
    {
      v29 = MEMORY[0x253052270](v28, v13);
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v28 >= *(v52 + 16))
      {
        goto LABEL_42;
      }

      v29 = *(v13 + 8 * v28 + 32);

      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_40;
      }
    }

    if (!*(v29 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
    {

      goto LABEL_18;
    }

    sub_24E65864C(v29 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50, &unk_24F97B600);
    sub_24E602068(&qword_27F222A58, &qword_27F222A50, &unk_24F97B600, MEMORY[0x277D21A98]);

    sub_24F9288B8();
    type metadata accessor for GenericDiffablePageContentPresenter(0);
    v31 = v54;
    sub_24F9288C8();
    __swift_destroy_boxed_opaque_existential_1(v64);
    v32 = v60;
    swift_beginAccess();
    v33 = *v58;
    (*v58)(v61, v31, v62);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v27;
    v36 = isUniquelyReferenced_nonNull_native;
    v63 = *(v35 + v32);
    v37 = v63;
    *(v35 + v32) = 0x8000000000000000;
    v39 = sub_24E76D934(v65);
    v40 = v37[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_41;
    }

    v43 = v38;
    if (v37[3] >= v42)
    {
      if ((v36 & 1) == 0)
      {
        sub_24E8B07F0();
      }

      goto LABEL_32;
    }

    sub_24E89DAE8(v42, v36);
    v44 = sub_24E76D934(v65);
    if ((v43 & 1) != (v45 & 1))
    {
      break;
    }

    v39 = v44;
LABEL_32:
    v27 = v55;
    v46 = v63;
    if (v43)
    {
      (*(v56 + 40))(v63[7] + *(v56 + 72) * v39, v61, v62);
      sub_24E6585F8(v65);
    }

    else
    {
      v63[(v39 >> 6) + 8] |= 1 << v39;
      sub_24E65864C(v65, v46[6] + 40 * v39);
      v33((v46[7] + *(v56 + 72) * v39), v61, v62);
      sub_24E6585F8(v65);
      v47 = v46[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_43;
      }

      v46[2] = v49;
    }

    *(v27 + v60) = v46;

    swift_endAccess();

    v26 = v53;
LABEL_18:
    ++v28;
    if (v30 == v26)
    {
      goto LABEL_37;
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24E963E3C(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v6);
  sub_24E615E00(a2, &v7);
  sub_24E60169C(v6, v4, &qword_27F222A30, &qword_24F9A7D00);
  sub_24E963F54(v4, v5);
  sub_24E601704(v6, &qword_27F222A30, &qword_24F9A7D00);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t (*sub_24E963EDC(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24E965690;
  *(v2 + 24) = a1;

  return sub_24E965698;
}

uint64_t sub_24E963F54(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v9);
  sub_24E615E00(a2, &v10);
  v8 = MEMORY[0x277D84F90];
  v7 = 0;
  v4[2] = v9;
  v4[3] = &v7;
  v4[4] = &v8;
  sub_24E962AA8(1, sub_24E965130, v4);
  v5 = v8;
  v6 = 17;

  sub_24F92AD88();
  sub_24E96513C(v5, v6);

  return sub_24E601704(v9, &qword_27F222A30, &qword_24F9A7D00);
}

void *sub_24E964038(void *a1, void *a2, BOOL *a3, void *a4)
{
  v8 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F928D68();
  v9 = MEMORY[0x253052150](a1 + v8, v17);
  v10 = sub_24E6585F8(v17);
  if (v9)
  {
    v11 = a1[3];
    MEMORY[0x28223BE20](v10);
    v16[2] = a2;

    v12 = sub_24ED75C20(sub_24E965334, v16, v11);
    if (*(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
    {
      v13 = 1;
    }

    else if (*(v11 + 16))
    {
      v13 = *(v12 + 2) == 0;
    }

    else
    {
      v13 = 0;
    }

    *a3 = v13;
    v17[0] = 104;
    a1 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v12, v17, 1, v13);

    MEMORY[0x253050F00](v14);
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
  }

  else
  {
  }

  return a1;
}

BOOL sub_24E9641FC(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F928D68();
  __swift_project_boxed_opaque_existential_1(a2 + 5, a2[8]);
  sub_24F928D68();
  v3 = MEMORY[0x253052150](v6, v5);
  sub_24E6585F8(v5);
  sub_24E6585F8(v6);
  return (v3 & 1) == 0;
}

uint64_t GenericDiffablePageContentPresenter.deinit()
{
  v0 = _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return v0;
}

uint64_t GenericDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24E964394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_24E824448(a10, a11);
  sub_24E824448(a6, a7);
  sub_24E824448(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_24E9643FC(uint64_t a1, uint64_t a2)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0, &unk_24F963D50);
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = v35 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C8, &unk_24F963C30);
  v8 = sub_24F92CB28();
  v48 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v40 = qword_27F222A18;
  v41 = a2;
  swift_beginAccess();
  v15 = 0;
  v16 = (v12 + 63) >> 6;
  v35[3] = v4 + 16;
  v35[2] = v4 + 32;
  v38 = v4;
  v35[1] = v4 + 8;
  v42 = v8 + 8;
  if (v14)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v20 = v17 | (v15 << 6);
      v21 = v48;
      sub_24E65864C(*(v48 + 48) + 40 * v20, v46);
      v22 = *(*(v21 + 56) + 8 * v20);
      v43 = v46[0];
      v44 = v46[1];
      v45 = v47;
      if (*(v22 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) && (v23 = *(v41 + v40), *(v23 + 16)))
      {
        v24 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;

        v25 = sub_24E76D934(v22 + v24);
        if (v26)
        {
          (*(v38 + 16))(v37, *(v23 + 56) + *(v38 + 72) * v25, v39);

          v27 = *(v38 + 32);
          v35[0] = v8;
          v28 = v36;
          v27(v36, v37, v39);
          sub_24F9280B8();

          v29 = v28;
          v8 = v35[0];
          (*(v38 + 8))(v29, v39);
        }

        else
        {
        }
      }

      else
      {
      }

      *(v42 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v30 = v8[6] + 40 * v20;
      v31 = v44;
      *v30 = v43;
      *(v30 + 16) = v31;
      *(v30 + 32) = v45;
      *(v8[7] + 8 * v20) = v22;
      v32 = v8[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v8[2] = v34;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v15;
    while (1)
    {
      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v15 >= v16)
      {

        return;
      }

      v19 = *(v10 + 8 * v15);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24E9647B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v85 = a3;
  v93 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v88 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v84 - v13;
  v86 = &v84 - v13;
  v15 = qword_27F222A18;
  v16 = MEMORY[0x277D84F90];
  *(v6 + v15) = sub_24E60A498(MEMORY[0x277D84F90]);
  v92 = a2;
  sub_24E60169C(a2, v14, &qword_27F228530, &unk_24F93C6E0);
  *(v6 + qword_27F22F198) = 0;
  *(v6 + qword_27F22F1A0) = v16;
  v17 = qword_27F39C780;
  v91 = a5;

  v89 = a4;

  *(v6 + v17) = sub_24E60986C(v16);
  v18 = (v6 + qword_27F22F1A8);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v6 + qword_27F22F1B0);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v6 + qword_27F22F1B8);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v6 + qword_27F22F1C0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v6 + qword_27F22F1C8);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v6 + qword_27F39C788);
  *v23 = 0u;
  v23[1] = 0u;
  *(v23 + 25) = 0u;
  *(v6 + qword_27F39C790) = 0;
  *(v6 + qword_27F22F1D0) = 0;
  *(v6 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F39C798) = 0;
  v24 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A40, &unk_24F96B688);
  swift_allocObject();
  *(v6 + v24) = sub_24F92ADA8();
  v25 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v6 + v25) = sub_24F92ADA8();
  v26 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A48, &qword_24F96B698);
  swift_allocObject();
  *(v6 + v26) = sub_24F92ADA8();
  v27 = qword_27F39C7B8;
  swift_allocObject();
  *(v6 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v6 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *(v6 + v29) = sub_24F92ADA8();
  v30 = qword_27F22F1E0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v32 = *(*(v31 - 8) + 56);
  v32(v6 + v30, 1, 1, v31);
  v32(v6 + qword_27F22F1E8, 1, 1, v31);
  v34 = v85;
  v33 = v86;
  *(v6 + 16) = v93;
  sub_24E911D90(v33, v6 + qword_27F39C7D0);
  v35 = *v18;
  v36 = v18[1];
  *v18 = 0;
  v18[1] = 0;
  sub_24E824448(v35, v36);
  v37 = *v20;
  v38 = v20[1];
  *v20 = 0;
  v20[1] = 0;
  sub_24E824448(v37, v38);
  if (v34)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v34;
    v40 = sub_24E965688;
  }

  else
  {
    v40 = 0;
    v39 = 0;
  }

  v42 = *v19;
  v41 = v19[1];
  *v19 = v40;
  v19[1] = v39;
  sub_24E824448(v42, v41);
  v43 = *v21;
  v44 = v21[1];
  *v21 = 0;
  v21[1] = 0;
  sub_24E824448(v43, v44);
  v45 = *v22;
  v46 = v22[1];
  *v22 = 0;
  v22[1] = 0;
  sub_24E824448(v45, v46);
  v47 = v90;
  *(v6 + qword_27F22F1F0) = v89;
  v49 = v91;
  v48 = v92;
  *(v6 + qword_27F39C7D8) = v91;
  sub_24E60169C(v48, v47, &qword_27F228530, &unk_24F93C6E0);
  v50 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v51 = (v87 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  sub_24E911D90(v47, v53 + v50);
  *(v53 + v51) = v34;
  v54 = v93;
  *(v53 + v52) = v93;
  *(v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = v49;
  v56 = swift_allocObject();
  swift_weakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = sub_24E9655A8;
  *(v57 + 24) = v54;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_24E9654A0;
  *(v58 + 24) = v53;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_24E965628;
  *(v59 + 24) = v58;
  v60 = (v6 + qword_27F22F1A8);
  v61 = *(v6 + qword_27F22F1A8);
  v62 = *(v6 + qword_27F22F1A8 + 8);
  *v60 = sub_24E965630;
  v60[1] = v59;
  swift_retain_n();
  v63 = v56;
  swift_retain_n();
  swift_retain_n();

  sub_24E824448(v61, v62);
  v64 = (v6 + qword_27F22F1B0);
  v65 = *(v6 + qword_27F22F1B0);
  v66 = *(v6 + qword_27F22F1B0 + 8);
  if (v65)
  {
    v67 = swift_allocObject();
    *(v67 + 16) = v65;
    *(v67 + 24) = v66;
    v68 = swift_allocObject();
    *(v68 + 16) = sub_24E8D23E0;
    *(v68 + 24) = v67;
    v69 = sub_24E965648;
  }

  else
  {
    v69 = 0;
    v68 = *(v6 + qword_27F22F1B0 + 8);
  }

  *v64 = v69;
  v64[1] = v68;
  sub_24E5FCA4C(v65, v66);
  sub_24E824448(v65, v66);
  v70 = swift_allocObject();
  *(v70 + 16) = sub_24E9655E8;
  *(v70 + 24) = v63;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_24E965638;
  *(v71 + 24) = v70;
  v72 = (v6 + qword_27F22F1B8);
  v73 = *(v6 + qword_27F22F1B8);
  v74 = *(v6 + qword_27F22F1B8 + 8);
  *v72 = sub_24E965640;
  v72[1] = v71;

  sub_24E824448(v73, v74);
  v75 = (v6 + qword_27F22F1C0);
  v76 = *(v6 + qword_27F22F1C0);
  v77 = *(v6 + qword_27F22F1C0 + 8);
  *v75 = sub_24E9655A0;
  v75[1] = v55;

  sub_24E824448(v76, v77);
  v78 = swift_allocObject();
  *(v78 + 16) = sub_24E94DE8C;
  *(v78 + 24) = v57;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_24E965628;
  *(v79 + 24) = v78;
  v80 = (v6 + qword_27F22F1C8);
  v81 = *(v6 + qword_27F22F1C8);
  v82 = *(v6 + qword_27F22F1C8 + 8);
  *v80 = sub_24E965630;
  v80[1] = v79;

  sub_24E824448(v81, v82);

  sub_24E601704(v92, &qword_27F228530, &unk_24F93C6E0);
  return v6;
}

uint64_t type metadata accessor for GenericDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_27F222A20;
  if (!qword_27F222A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E96513C(uint64_t a1, char a2)
{
  if ((a2 & 0x80) == 0)
  {
  }

  return result;
}

void *sub_24E965148(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v36 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C8, &unk_24F963C30);
  result = sub_24F92CB28();
  v6 = 0;
  v28 = result;
  v29 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v27 = result + 8;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      sub_24E65864C(*(v29 + 48) + 40 * v17, v34);
      v31 = v34[0];
      v32 = v34[1];
      v33 = v35;

      v19 = a2(v18);
      if (v3)
      {
        break;
      }

      v20 = v19;

      result = v28;
      *(v27 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v21 = v28[6] + 40 * v17;
      v22 = v31;
      v23 = v32;
      *(v21 + 32) = v33;
      *v21 = v22;
      *(v21 + 16) = v23;
      *(v28[7] + 8 * v17) = v20;
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v28[2] = v26;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_24E6585F8(&v31);

    return v28;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_24E965354()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24E9654A0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E962FC0(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_24E965560()
{

  return swift_deallocObject();
}

uint64_t sub_24E9655B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E9655F0()
{

  return swift_deallocObject();
}

uint64_t sub_24E965650()
{

  return swift_deallocObject();
}

unint64_t sub_24E9656F4()
{
  result = qword_27F222A80;
  if (!qword_27F222A80)
  {
    type metadata accessor for ClosedGenericPageIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222A80);
  }

  return result;
}

void sub_24E965794(uint64_t a1)
{
  sub_24E8EA41C(319);
  if (v1 <= 0x3F)
  {
    sub_24E6C5550();
    if (v2 <= 0x3F)
    {
      sub_24E965F50(319, &qword_27F222B10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E965874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E965944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E965A14(uint64_t a1)
{
  sub_24E96AA50(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_24E8EA41C(319);
    if (v2 <= 0x3F)
    {
      sub_24E6C5550();
      if (v3 <= 0x3F)
      {
        sub_24E965F50(319, &qword_27F222B10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24E965F50(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24E965F50(319, &qword_27F222BA0, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24E96AA50(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
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

uint64_t sub_24E965C04(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[17];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[18];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[19];

  return v15(v16, a2, v14);
}

uint64_t sub_24E965DA8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[17];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[18];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[19];

  return v15(v16, a2, a2, v14);
}

void sub_24E965F50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 sub_24E965FF8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(type metadata accessor for CapsuleButton(0, a6, a7, a4) + 44);
  *(a8 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  result = *a1;
  v16 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v16;
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a2;
  *(a8 + 64) = a3;
  return result;
}

uint64_t sub_24E9660A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v4 = sub_24F9234D8();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v81 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24F924338();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F924C38();
  v64 = v8;
  v77 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v76 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v71 = *(v10 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v57 - v15;
  v17 = *(a1 + 16);
  v66 = *(a1 + 24);
  v18 = a1;
  v19 = v17;
  v20 = sub_24F9217A8();
  v73 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v65 = &v57 - v21;
  WitnessTable = swift_getWitnessTable();
  v63 = WitnessTable;
  v62 = sub_24E96BA4C(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v89 = v20;
  v90 = v8;
  v91 = WitnessTable;
  v92 = v62;
  v68 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v59 = &v57 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222BA8, &unk_24F96B940);
  v69 = sub_24F924038();
  v74 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v60 = &v57 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DB0, &qword_24F987E00);
  v25 = sub_24F924038();
  v75 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v67 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v72 = &v57 - v28;
  v29 = sub_24F9232F8();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  v58 = v2;
  sub_24E60169C(v2, &v89, qword_27F21B590, &unk_24F93BE30);
  v30 = *(v10 + 16);
  v31 = v2;
  v32 = v18;
  v57 = v18;
  v30(v13, v31, v18);
  v33 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v66;
  (*(v10 + 32))(v34 + v33, v13, v32);
  v35 = v65;
  sub_24F921788();
  v36 = v76;
  sub_24F924C28();
  v37 = v59;
  v38 = v64;
  v39 = v63;
  v40 = v62;
  sub_24F926178();
  (*(v77 + 8))(v36, v38);
  (*(v73 + 8))(v35, v20);
  v41 = v78;
  sub_24F924328();
  v89 = v20;
  v90 = v38;
  v91 = v39;
  v92 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v60;
  v44 = OpaqueTypeMetadata2;
  sub_24F9264E8();
  (*(v79 + 8))(v41, v80);
  (*(v70 + 8))(v37, v44);
  v45 = *(v58 + 56);
  v46 = v81;
  sub_24F76A034(v81);
  v47 = v45(v46);
  (*(v82 + 8))(v46, v83);
  v89 = v47;
  v48 = MEMORY[0x277CE0868];
  v49 = sub_24E602068(&qword_27F222BB0, &qword_27F222BA8, &unk_24F96B940, MEMORY[0x277CE0868]);
  v87 = OpaqueTypeConformance2;
  v88 = v49;
  v50 = v69;
  v51 = swift_getWitnessTable();
  v52 = v67;
  sub_24F9268F8();

  (*(v74 + 8))(v43, v50);
  v53 = sub_24E602068(&unk_27F236270, &qword_27F219DB0, &qword_24F987E00, v48);
  v85 = v51;
  v86 = v53;
  swift_getWitnessTable();
  v54 = v72;
  sub_24E7896B8();
  v55 = *(v75 + 8);
  v55(v52, v25);
  sub_24E7896B8();
  return (v55)(v54, v25);
}

double sub_24E966A20@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + 16, &v7, qword_27F21B590, &unk_24F93BE30);
  if (v8)
  {
    sub_24E612C80(&v7, v6);
    sub_24E966AB8(v6, v2, a1[2], a1[3], a1[4], a1[5], a2);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24E966AB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v43 = a4;
  v47 = a6;
  v44 = a5;
  v45 = a3;
  v38 = a2;
  v42 = a7;
  v46[0] = a3;
  v46[1] = a4;
  v46[2] = a5;
  v46[3] = a6;
  v39 = type metadata accessor for ProgressCapsuleButton(0, v46);
  v9 = *(v39 - 8);
  v36 = *(v9 + 64);
  MEMORY[0x28223BE20](v39);
  v11 = v34 - v10;
  v12 = sub_24F928AD8();
  MEMORY[0x28223BE20](v12 - 8);
  v34[1] = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v40 = a1;
  v41 = v34 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F928478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F9479A0;
  sub_24F928A98();
  v37 = *(v9 + 16);
  v34[0] = v11;
  v17 = v39;
  v37(v11, a2, v39);
  v18 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v21 = v43;
  v20 = v44;
  *(v19 + 2) = v45;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  *(v19 + 5) = v47;
  v35 = *(v9 + 32);
  v22 = v11;
  v23 = v17;
  v35(&v19[v18], v22, v17);
  v24 = sub_24F928B08();
  v25 = MEMORY[0x277D21CB8];
  *(v16 + 56) = v24;
  *(v16 + 64) = v25;
  __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  sub_24F928AF8();
  sub_24E615E00(v40, v16 + 72);
  sub_24F928A98();
  v26 = v34[0];
  v37(v34[0], v38, v23);
  v27 = swift_allocObject();
  v29 = v43;
  v28 = v44;
  *(v27 + 2) = v45;
  *(v27 + 3) = v29;
  *(v27 + 4) = v28;
  *(v27 + 5) = v47;
  v35(&v27[v18], v26, v23);
  *(v16 + 136) = v24;
  *(v16 + 144) = MEMORY[0x277D21CB8];
  __swift_allocate_boxed_opaque_existential_1((v16 + 112));
  sub_24F928AF8();
  v30 = sub_24F928DD8();
  v31 = MEMORY[0x277D21D10];
  v32 = v42;
  v42[3] = v30;
  v32[4] = v31;
  __swift_allocate_boxed_opaque_existential_1(v32);
  return sub_24F928DC8();
}

uint64_t sub_24E966E50(uint64_t a1)
{
  v2 = sub_24F9234F8();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x253049E50](v5);
}

uint64_t sub_24E966F18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = *(a1 - 1);
  v44 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = (v7 + 40);
  v43 = *(v7 + 16);
  v8 = sub_24F924038();
  v42 = a1[4];
  v52 = v42;
  v53 = MEMORY[0x277CDF900];
  v46 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v50 = v8;
  v51 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v39 = a1[3];
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v10 = sub_24F927128();
  v37 = v10;
  v36 = swift_getWitnessTable();
  v12 = type metadata accessor for CapsuleButton(0, v10, v36, v11);
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F255320, &unk_24F9397C0);
  v15 = sub_24F924038();
  v41 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v35 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v38 = &v33 - v18;
  v19 = sub_24E966A20(a1, &v50);
  v20 = *(v2 + 96);
  v34 = *(v2 + 88);
  (*(v4 + 16))(v6, v2, a1, v19);
  v21 = v4;
  v22 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *&v24 = v42;
  *&v25 = v43;
  *(&v24 + 1) = *v45;
  *(&v25 + 1) = v39;
  *(v23 + 16) = v25;
  *(v23 + 32) = v24;
  (*(v21 + 32))(v23 + v22, v6, a1);
  sub_24E965FF8(&v50, v34, v20, sub_24E969CF4, v23, v37, v36, v14);
  v26 = *(v2 + 8);
  LOBYTE(v50) = *v2;
  v51 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  v27 = swift_getWitnessTable();
  v28 = v35;
  sub_24F926A88();
  (*(v40 + 8))(v14, v12);
  v29 = sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
  v48 = v27;
  v49 = v29;
  swift_getWitnessTable();
  v30 = v38;
  sub_24E7896B8();
  v31 = *(v41 + 8);
  v31(v28, v15);
  sub_24E7896B8();
  return (v31)(v30, v15);
}

uint64_t sub_24E967438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a5;
  v20[1] = a6;
  v10 = sub_24F924038();
  v20[12] = a4;
  v20[13] = MEMORY[0x277CDF900];
  v20[10] = v10;
  v20[11] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v11 = sub_24F927128();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = v20[0];
  v20[8] = a1;
  sub_24F927618();
  sub_24F927118();
  swift_getWitnessTable();
  sub_24E7896B8();
  v18 = *(v12 + 8);
  v18(v14, v11);
  sub_24E7896B8();
  return (v18)(v17, v11);
}

uint64_t sub_24E9676A0@<X0>(void (**a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a5;
  v60 = a4;
  v75 = a6;
  v68 = *(a3 - 8);
  v69 = a3;
  MEMORY[0x28223BE20](a1);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v55 - v11;
  v74 = sub_24F92C4A8();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v66 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = &v55 - v14;
  v67 = sub_24F9248C8();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = *(a2 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F924038();
  v63 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  v83 = a4;
  v84 = MEMORY[0x277CDF900];
  WitnessTable = swift_getWitnessTable();
  v81 = v19;
  v82 = WitnessTable;
  v61 = MEMORY[0x277CDEF50];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v70 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v55 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v55 - v30;
  a1[7](v29);
  v59 = *a1;
  v55 = a1;
  v58 = a1[1];
  LOBYTE(v81) = v59;
  v82 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  sub_24F9269F8();
  (*(v62 + 8))(v18, a2);
  v32 = v64;
  sub_24F8672B8(v19);
  v33 = 1;
  View.componentFocusable(_:interactions:)(1, v32, v19, WitnessTable);
  (*(v65 + 8))(v32, v67);
  v34 = v21;
  v35 = v68;
  (*(v63 + 8))(v34, v19);
  v81 = v19;
  v82 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v31;
  v63 = OpaqueTypeConformance2;
  sub_24E7896B8();
  v37 = *(v76 + 8);
  v38 = v27;
  v39 = v69;
  v40 = OpaqueTypeMetadata2;
  v65 = v76 + 8;
  v64 = v37;
  v37(v38, OpaqueTypeMetadata2);
  LOBYTE(v81) = v59;
  v41 = v66;
  v82 = v58;
  v42 = v71;
  v43 = sub_24F926F38();
  if (LOBYTE(v80[0]) == 1)
  {
    v44 = v57;
    (v55[9])(v43);
    v45 = v56;
    sub_24E7896B8();
    v46 = *(v35 + 8);
    v46(v44, v39);
    sub_24E7896B8();
    v46(v45, v39);
    (*(v35 + 32))(v41, v44, v39);
    v33 = 0;
  }

  (*(v35 + 56))(v41, v33, 1, v39);
  v47 = v73;
  sub_24E8D5004(v41, v73);
  v48 = v72;
  v49 = *(v72 + 8);
  v50 = v74;
  v49(v41, v74);
  v51 = v70;
  v52 = v67;
  (*(v76 + 16))(v70, v67, v40);
  v81 = v51;
  (*(v48 + 16))(v41, v47, v50);
  v82 = v41;
  v80[0] = v40;
  v80[1] = v50;
  v77 = v42;
  v78 = v63;
  v79 = swift_getWitnessTable();
  sub_24F57BA64(&v81, 2uLL, v80);
  v49(v47, v50);
  v53 = v64;
  v64(v52, v40);
  v49(v41, v50);
  return v53(v51, v40);
}

uint64_t sub_24E967EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_24F926DF8();
  sub_24F926338();

  v5 = *(v2 + *(a1 + 24));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C30, &qword_24F96BB30);
  v7 = (a2 + *(result + 36));
  *v7 = 0;
  v7[1] = v5;
  return result;
}

uint64_t sub_24E967F8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_24F924848();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0, &qword_24F93C240);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v61 - v6;
  v7 = sub_24F9234F8();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222BE8, &qword_24F96BA20) - 8;
  MEMORY[0x28223BE20](v65);
  v10 = (&v61 - v9);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222BF0, &qword_24F96BA28);
  MEMORY[0x28223BE20](v70);
  v69 = &v61 - v11;
  v12 = type metadata accessor for OfferButtonDesign.Metrics(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E968608(v15);
  v16 = type metadata accessor for CapsuleButtonContent(0);
  v17 = *(v1 + v16[9]);
  v18 = sub_24F9249A8();
  v19 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222BF8, &qword_24F96BA30) + 44);
  *v19 = v18;
  *(v19 + 1) = v17;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C00, &qword_24F96BA38);
  sub_24E968B60(v2, v15, &v19[*(v20 + 44)]);
  v21 = *(v15 + 4);
  KeyPath = swift_getKeyPath();
  v23 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C08, &qword_24F96BA70) + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = *(v13 + 60);
  v25 = swift_getKeyPath();
  v26 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C10, &unk_24F96BAA8) + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v28 = sub_24F926E78();
  (*(*(v28 - 8) + 16))(v26 + v27, &v15[v24], v28);
  *v26 = v25;
  v29 = v10;

  LOBYTE(v21) = sub_24F9257F8();
  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C18, &qword_24F96BAB8) + 36)];
  *v38 = v21;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  *v10 = *(v15 + 8);
  LOBYTE(v25) = sub_24F9257F8();
  v39 = v64;
  sub_24F76A05C(v64);
  v40 = sub_24F923E98();
  v41 = v66;
  (*(*(v40 - 8) + 56))(v66, 1, 1, v40);
  sub_24F5B3DA0(v39, v41);
  sub_24E601704(v41, &qword_27F2140C0, &qword_24F93C240);
  (*(v67 + 8))(v39, v68);
  sub_24F923318();
  v42 = v10 + *(v65 + 44);
  *v42 = v25;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v47 = v2 + v16[13];
  v48 = *v47;
  if (*(v47 + 8) == 1)
  {
    if ((v48 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {

    sub_24F92BDC8();
    v51 = sub_24F9257A8();
    sub_24F921FD8();

    v52 = v61;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v48, 0);
    (*(v62 + 8))(v52, v63);
    if (v72 != 1)
    {
LABEL_3:
      v49 = v2 + v16[8];
      if (*(v49 + 8) != 3 && ((v50 = *(v49 + 1), v50 == 8) || v50 == 3))
      {
        sub_24F926C88();
      }

      else
      {
        _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
      }

      v56 = sub_24F926D08();

      goto LABEL_16;
    }
  }

  v53 = v2 + v16[8];
  if (*(v53 + 8) != 3 && ((v54 = *(v53 + 1), v54 == 8) || v54 == 3))
  {
    v55 = sub_24F926C88();
  }

  else
  {
    v55 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v56 = v55;
LABEL_16:
  v58 = v70;
  v57 = v71;
  v59 = v69;
  sub_24E6009C8(v29, v69, &qword_27F222BE8, &qword_24F96BA20);
  *(v59 + *(v58 + 36)) = v56;
  sub_24E6009C8(v59, v57, &qword_27F222BF0, &qword_24F96BA28);
  return sub_24E96B1B0(v15, type metadata accessor for OfferButtonDesign.Metrics);
}

uint64_t sub_24E968608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for OfferButtonDesign.Size(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9234F8();
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78, &qword_24F943EE0);
  MEMORY[0x28223BE20](v11 - 8);
  v42 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = sub_24F923E98();
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for OfferButtonDesign.Context(0);
  MEMORY[0x28223BE20](v46);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for OfferButtonDesign(0);
  MEMORY[0x28223BE20](v44);
  v22 = (&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for CapsuleButtonContent(0);
  sub_24F769CA8(v22);
  v45 = v18;
  sub_24F769788(v18);
  v24 = *(v1 + *(v23 + 20) + 8);
  v54 = v6;
  v50 = v5;
  v51 = v8;
  v49 = v22;
  if (v24)
  {
    v43 = sub_24F92B228();
  }

  else
  {
    v43 = 0;
  }

  sub_24E60169C(v1, v15, &qword_27F216C78, &qword_24F943EE0);
  v25 = type metadata accessor for CapsuleButtonContent.Symbol(0);
  v26 = *(*(v25 - 8) + 48);
  v27 = v2;
  v28 = 1;
  v29 = v26(v15, 1, v25);
  sub_24E601704(v15, &qword_27F216C78, &qword_24F943EE0);
  if (v29 == 1)
  {
    v30 = v27 + *(v23 + 24);
    v31 = v42;
    sub_24E60169C(v30, v42, &qword_27F216C78, &qword_24F943EE0);
    v28 = v26(v31, 1, v25) != 1;
    sub_24E601704(v31, &qword_27F216C78, &qword_24F943EE0);
  }

  (*(v47 + 32))(v20, v45, v48);
  v32 = v46;
  v20[*(v46 + 20)] = 8;
  *&v20[*(v32 + 24)] = v43;
  v20[*(v32 + 28)] = v28;
  v34 = v49;
  v33 = v50;
  v35 = *v49;
  sub_24E96B14C(v49 + *(v44 + 20), v50);
  v37 = v53;
  v36 = v54;
  if ((*(v53 + 48))(v33, 1, v54) == 1)
  {
    v38 = v51;
    (*(v37 + 104))(v51, *MEMORY[0x277CDF440], v36);
    v39 = *(v37 + 32);
  }

  else
  {
    v39 = *(v37 + 32);
    v38 = v51;
    v39(v51, v33, v36);
  }

  v40 = v52;
  v39(v52, v38, v36);
  v35(v20, v40);
  (*(v37 + 8))(v40, v36);
  sub_24E96B1B0(v20, type metadata accessor for OfferButtonDesign.Context);
  return sub_24E96B1B0(v34, type metadata accessor for OfferButtonDesign);
}