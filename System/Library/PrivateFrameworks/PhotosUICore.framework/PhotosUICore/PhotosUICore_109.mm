id MemoryChangeRequestAnnotator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MemoryChangeRequestAnnotator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MemoryChangeRequestAnnotator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4A46190()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1E85C0);
  __swift_project_value_buffer(v0, qword_1EB1E85C0);
  sub_1A5246EF4();
}

void _s12PhotosUICore28MemoryChangeRequestAnnotatorC03setcdE0_27userCreatedFromSourceObjectySo08PHMemorydE0C_yXlSgtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemoryChangeRequestAnnotator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___PXMemoryChangeRequestAnnotator_sourceObject] = a2;
  v7.receiver = v5;
  v7.super_class = v4;
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v7, sel_init);
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x60))(a1);
}

void sub_1A4A464B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1A4A46508@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  v8 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
  a6[5] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  type metadata accessor for LemonadePeopleFeedView(0);
  type metadata accessor for LemonadePeopleSectionProvider(0);
  swift_retain_n();
  v10 = a2;

  v11 = v8;
  sub_1A5247C74();
  *(swift_allocObject() + 16) = v10;
  type metadata accessor for LemonadePeopleProgressStatus(0);
  v12 = v10;
  sub_1A5247C74();

  return result;
}

uint64_t sub_1A4A46670@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*(*(v1 + 24) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
  v5 = v4;
  v6 = v3;
  v7 = MEMORY[0x1E69E7CC0];

  return sub_1A4251F54(v6, 0, 0, 1, 1, v7, v4, a1);
}

uint64_t type metadata accessor for LemonadePeopleFeedView(uint64_t a1)
{
  result = qword_1EB1E8660;
  if (!qword_1EB1E8660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4A46734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A5249574();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  sub_1A4A47A78(0);
  return sub_1A4A46C94(a1, (a2 + *(v5 + 44)));
}

void sub_1A4A46784(uint64_t a1)
{
  if (!qword_1EB147C48)
  {
    sub_1A4A467F4(255);
    sub_1A4A46A04(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147C48);
    }
  }
}

void sub_1A4A467F4(uint64_t a1)
{
  if (!qword_1EB147C50)
  {
    sub_1A4A46874(255);
    sub_1A4A468DC();
    v1 = sub_1A5243DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147C50);
    }
  }
}

void sub_1A4A46874(uint64_t a1)
{
  if (!qword_1EB147C58)
  {
    sub_1A44FD0D4(255);
    sub_1A402344C();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147C58);
    }
  }
}

unint64_t sub_1A4A468DC()
{
  result = qword_1EB147C60;
  if (!qword_1EB147C60)
  {
    sub_1A4A46874(255);
    sub_1A4A469BC(&qword_1EB13CBE0, sub_1A44FD0D4, &unk_1A53341A0);
    sub_1A4A469BC(&qword_1EB1277D0, sub_1A402344C, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147C60);
  }

  return result;
}

uint64_t sub_1A4A469BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4A46A04(uint64_t a1)
{
  if (!qword_1EB147C68)
  {
    sub_1A4A46A90(255, &qword_1EB147C70, &qword_1EB147C78, sub_1A4A46B30, &qword_1EB147C88);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147C68);
    }
  }
}

void sub_1A4A46A90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1A4A47C44(255, a3, a4, MEMORY[0x1E6981F40]);
    sub_1A4A46B90(a5, a3, a4);
    v9 = sub_1A524B894();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4A46B30()
{
  if (!qword_1EB147C80)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147C80);
    }
  }
}

uint64_t sub_1A4A46B90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4A47C44(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4A46BF4()
{
  result = qword_1EB147C98;
  if (!qword_1EB147C98)
  {
    sub_1A4A46A90(255, &qword_1EB147C38, &qword_1EB147C40, sub_1A4A46784, &qword_1EB147C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147C98);
  }

  return result;
}

uint64_t sub_1A4A46C94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for LemonadePeopleFeedView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A4A467F4(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  sub_1A4A47B80(a1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleFeedView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1A4A47CA8(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LemonadePeopleFeedView);
  sub_1A5249584();
  sub_1A4A46874(0);
  sub_1A4A468DC();
  sub_1A5243DC4();
  v32 = sub_1A5249574();
  LOBYTE(v35[0]) = 1;
  sub_1A3F5CDFC(v35, *(a1 + 8), &v39);
  v15 = v39;
  v31 = v40;
  sub_1A4A47C44(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v16 = sub_1A49AAA74();

  if (v16)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  v54 = 1;
  v51 = 1;
  v18 = *(v8 + 16);
  v19 = v34;
  v18(v34, v12, v7);
  v20 = v33;
  v18(v33, v19, v7);
  sub_1A4A46784(0);
  v22 = &v20[*(v21 + 48)];
  v23 = v32;
  v35[0] = v32;
  v35[1] = 0;
  LOBYTE(v36) = 1;
  *(&v36 + 1) = *v53;
  DWORD1(v36) = *&v53[3];
  BYTE8(v36) = v15;
  HIDWORD(v36) = *&v52[3];
  *(&v36 + 9) = *v52;
  v24 = v31;
  v37 = v31;
  LOBYTE(v38) = 1;
  DWORD1(v38) = *&v50[3];
  *(&v38 + 1) = *v50;
  *(&v38 + 1) = v17;
  v25 = v32;
  v26 = v36;
  v27 = v38;
  *(v22 + 2) = v31;
  *(v22 + 3) = v27;
  *v22 = v25;
  *(v22 + 1) = v26;
  sub_1A4A47B80(v35, &v39, sub_1A4A46A04);
  v28 = *(v8 + 8);
  v28(v12, v7);
  v39 = v23;
  v40 = 0;
  v41 = 1;
  *v42 = *v53;
  *&v42[3] = *&v53[3];
  v43 = v15;
  *v44 = *v52;
  *&v44[3] = *&v52[3];
  v45 = v24;
  v46 = 0;
  v47 = 1;
  *&v48[3] = *&v50[3];
  *v48 = *v50;
  v49 = v17;
  sub_1A4A47BE8(&v39);
  return (v28)(v34, v7);
}

void sub_1A4A47108(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4A47C44(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = type metadata accessor for LemonadePeopleSectionProvider(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD0D4(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadePeopleFeedView(0);
  sub_1A4A47C44(0, &qword_1EB147CA0, type metadata accessor for LemonadePeopleSectionProvider, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v13 = *a1;
  v14 = sub_1A52442E4();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = a1[4];
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v16 = sub_1A4A469BC(&qword_1EB136230, type metadata accessor for LemonadePeopleSectionProvider, &unk_1A53285E8);

  v17 = sub_1A3C30368();
  v18 = sub_1A3C5A374();
  sub_1A437CBD4(v9, v13, v6, v15, v17 & 1, v23, 0, 0, v12, v18 & 1, v7, v16);
  KeyPath = swift_getKeyPath();
  v20 = a1[5];
  if (v20)
  {
    LOBYTE(v20) = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x2A0))();
  }

  sub_1A4A47CA8(v12, a2, sub_1A44FD0D4);
  sub_1A4A46874(0);
  v22 = a2 + *(v21 + 36);
  *v22 = KeyPath;
  *(v22 + 8) = v20 & 1;
}

void sub_1A4A4742C(uint64_t a1)
{
  v1 = *(a1 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A4A47B80(v3, &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleFeedView);
  v4 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v5 = swift_allocObject();
  sub_1A4A47CA8(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for LemonadePeopleFeedView);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4A475E8(uint64_t a1)
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v1 <= 0x3F)
  {
    sub_1A3C4B4AC(319, v1);
    if (v2 <= 0x3F)
    {
      sub_1A440B640();
      if (v3 <= 0x3F)
      {
        sub_1A4A47C44(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A4A47C44(319, &qword_1EB147CA0, type metadata accessor for LemonadePeopleSectionProvider, MEMORY[0x1E697DA80]);
          if (v5 <= 0x3F)
          {
            sub_1A4A47C44(319, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
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

void sub_1A4A47764(uint64_t a1)
{
  if (!qword_1EB147CB0)
  {
    sub_1A4A46A90(255, &qword_1EB147C38, &qword_1EB147C40, sub_1A4A46784, &qword_1EB147C90);
    sub_1A4A46BF4();
    v1 = sub_1A5242CE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147CB0);
    }
  }
}

uint64_t objectdestroy_8Tm_4()
{
  v1 = (type metadata accessor for LemonadePeopleFeedView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];
  v4 = MEMORY[0x1E6981E90];
  sub_1A4A47C44(0, &qword_1EB147C28, type metadata accessor for LemonadePeopleSectionProvider, MEMORY[0x1E6981E90]);
  (*(*(v5 - 8) + 8))(v3, v5);
  v6 = MEMORY[0x1E6981E98];
  sub_1A4A47C44(0, &qword_1EB147C30, type metadata accessor for LemonadePeopleSectionProvider, MEMORY[0x1E6981E98]);

  v7 = v2 + v1[12];
  sub_1A4A47C44(0, &qword_1EB121428, type metadata accessor for LemonadePeopleProgressStatus, v4);
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_1A4A47C44(0, &qword_1EB127238, type metadata accessor for LemonadePeopleProgressStatus, v6);

  return swift_deallocObject();
}

uint64_t sub_1A4A47A08@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePeopleFeedView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A4A46734(v4, a1);
}

void sub_1A4A47A78(uint64_t a1)
{
  if (!qword_1EB147CB8)
  {
    sub_1A4A47C44(255, &qword_1EB147C40, sub_1A4A46784, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147CB8);
    }
  }
}

void sub_1A4A47B10(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePeopleFeedView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_1A4A47108(v4, a1);
}

uint64_t sub_1A4A47B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4A47BE8(uint64_t a1)
{
  sub_1A4A46A04(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4A47C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4A47CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4A47D20(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F8] || v7 == *MEMORY[0x1E69C2210])
  {
    return 8;
  }

  (*(v3 + 8))(v6, v2);
  return 3;
}

uint64_t sub_1A4A47E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 8) == 1)
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000023, 0x80000001A53D98B0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for LemonadeSocialGroupsShelfProvider(0);
    v6 = sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);

    v7 = sub_1A42E6C64(v5, v6);
    v14 = *(v2 + 8);
    sub_1A414D2C8(a1, v7, v8, &v14, &v15);
    v9 = v16;
    v10 = v17;
    *a2 = v15;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    v11 = type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_1A4A48034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x2D0))();
    if (MEMORY[0x1A590D320]())
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = v7 != 0;
    v12 = type metadata accessor for LemonadeSocialGroupsShelfProvider(0);
    v13 = sub_1A3C36CEC(&qword_1EB125370, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F1B0);
    v14 = sub_1A3C66934(v4, v12, v13);
    v20 = a1;
    type metadata accessor for PeopleUnifiedItemListManager(0, v15);
    v16 = type metadata accessor for PeopleUnifiedItem();
    v17 = sub_1A3C36CEC(&qword_1EB129918, type metadata accessor for PeopleUnifiedItemListManager, &protocol conformance descriptor for PeopleUnifiedItemListManager);

    sub_1A426FECC(v14, &v20, v11, v8, v16, v17, a3);
    goto LABEL_8;
  }

  v8 = 0;
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = *(a1 + 16);
  if (v9 < 0)
  {
    v18 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1A4270930(v18);
  }

  else
  {
    v10 = *(v9 + 16);

    sub_1A4270424(v10);
  }

LABEL_8:
  type metadata accessor for LemonadeNavigationDestination(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1A4A48248(uint64_t a1, void *a2)
{
  if ((*(a1 + 16) & 0x8000000000000000) == 0)
  {
    v4 = a2[5];
    if (v4)
    {
      v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x2D0);

      v5(v6);
    }

    else
    {
    }

    v10 = sub_1A3C36888();
    v11 = sub_1A3C6E9EC();
    v12 = sub_1A3C30368();
    sub_1A414DB94(a2, 0, 1, v11, 0, v12 & 1, &type metadata for LemonadePeopleShelfProvider, v10);
  }

  v7 = a2[5];
  if (v7)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x2D0);

    v8(v9);
  }

  else
  {
  }

  v13 = type metadata accessor for LemonadeSocialGroupsShelfProvider(0);
  v14 = sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
  sub_1A414D84C(a2, v13, v14);
}

void sub_1A4A485E0(uint64_t a1, char a2, void *a3)
{
  sub_1A3C4C218(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for LemonadeNavigationDestination(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  if (sub_1A3DBEE68(a2 & 1, 0))
  {
    sub_1A4A47E4C(a3, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1A43DD648(v8);
    }

    else
    {
      sub_1A40B671C(v8, v16);
      sub_1A465EB84(v16, v13, type metadata accessor for LemonadeNavigationDestination);
      v17 = sub_1A4249320(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1A4249320((v18 > 1), v19 + 1, 1, v17);
      }

      sub_1A457EF10(v16);
      v17[2] = v19 + 1;
      sub_1A40B671C(v13, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19);
    }
  }

  sub_1A4A48248(a1, a3);
}

uint64_t sub_1A4A488E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_1A4A49340(0);
  v35 = v3;
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4A496F0(0, &qword_1EB147CC8, MEMORY[0x1E697F948]);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = sub_1A5243624();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40C6344(0);
  v14 = v13;
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A5242954();
  Kind = v38[1].Kind;
  v37 = v38;
  if ((Kind & 0x8000000000000000) == 0)
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E69C2538], v9);
    v18 = sub_1A3C36888();

    v19 = sub_1A3C30368();
    v20 = sub_1A3C5A374();
    sub_1A414D324(Kind, v12, v19 & 1, v20 & 1, v16);
    (*(v10 + 8))(v12, v9);
    v21 = v33;
    (*(v33 + 16))(v8, v16, v14);
    swift_storeEnumTagMultiPayload();
    v38 = &type metadata for LemonadePeopleShelfProvider;
    v39 = v18;
    swift_getOpaqueTypeConformance2();
    v22 = type metadata accessor for LemonadeSocialGroupsShelfProvider(255);
    v23 = sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
    v38 = v22;
    v39 = v23;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();

    return (*(v21 + 8))(v16, v14);
  }

  v25 = v35;

  if (PhotoKitItem.expectsKeyAssets.getter())
  {
    v26 = PhotoKitItem.keyAssets.getter();
    if (!v26)
    {
      v27 = 1;
      goto LABEL_7;
    }
  }

  v27 = 0;
LABEL_7:
  v28 = type metadata accessor for LemonadeSocialGroupsShelfProvider(0);
  v29 = sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
  sub_1A414D6DC(a1, Kind & 0x7FFFFFFFFFFFFFFFLL, v27);
  v30 = v32;
  (*(v32 + 16))(v8, v5, v25);
  swift_storeEnumTagMultiPayload();
  v31 = sub_1A3C36888();
  v38 = &type metadata for LemonadePeopleShelfProvider;
  v39 = v31;
  swift_getOpaqueTypeConformance2();
  v38 = v28;
  v39 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1A5249744();

  return (*(v30 + 8))(v5, v25);
}

uint64_t sub_1A4A48E14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3C4C218(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-v7];
  v9 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v10) = *a2;
  *a3 = a1;
  *(a3 + 8) = v10;
  v12 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider(0) + 28);
  v13 = sub_1A3C47918();
  v15 = v14;
  v16 = sub_1A3C47918();
  v18 = v17;
  v19 = sub_1A3C4ED50(v16);
  v21[8] = 1;
  *v11 = sub_1A4A47D20;
  *(v11 + 1) = 0;
  v11[16] = 2;
  *(v11 + 3) = 0;
  v11[32] = 1;
  *(v11 + 5) = v13;
  *(v11 + 6) = v15;
  *(v11 + 7) = v16;
  *(v11 + 8) = v18;
  *(v11 + 72) = xmmword_1A5305D30;
  v11[88] = 0;
  v11[89] = v19;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v8);
  return sub_1A3C52D78(v11, 0, v8, a3 + v12);
}

uint64_t sub_1A4A48FCC()
{
  if (*(v0 + 8) >= 2u)
  {
    return sub_1A3C38BD4(0xD00000000000002CLL);
  }

  v1._object = 0x80000001A53CEBD0;
  v1._countAndFlagsBits = 0xD000000000000020;
  return LemonadeLocalizedPeopleAndPetsTitle(for:key:)(*v0, v1)._countAndFlagsBits;
}

uint64_t sub_1A4A49018@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 px_isPeopleVirtualCollection])
  {

    return sub_1A4A47E4C(a2, a3);
  }

  else
  {
    v6 = type metadata accessor for LemonadeNavigationDestination(0);
    v7 = *(*(v6 - 8) + 56);

    return v7(a3, 1, 1, v6);
  }
}

uint64_t sub_1A4A490E8@<X0>(void *a1@<X8>)
{

  return sub_1A3D61770(v2, a1);
}

uint64_t sub_1A4A49128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3C36CEC(&qword_1EB12A458, type metadata accessor for PeopleUnifiedItem, &protocol conformance descriptor for PeopleUnifiedItem);

  return sub_1A4201830(a1, a2, a3, v6);
}

unint64_t sub_1A4A491B8(uint64_t a1)
{
  v2 = sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);

  return sub_1A42E6E80(a1, v2);
}

void sub_1A4A49224(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = [objc_opt_self() sharedScheduler];
  v6[4] = sub_1A44B281C;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3C2E0D0;
  v6[3] = &block_descriptor_338;
  v5 = _Block_copy(v6);

  [v4 scheduleMainQueueTask_];
  _Block_release(v5);

  LOBYTE(v6[0]) = v3;
  sub_1A3C36888();
  sub_1A414E050(a2, 0, v6);
}

void sub_1A4A49340(uint64_t a1)
{
  if (!qword_1EB147CC0)
  {
    type metadata accessor for LemonadeSocialGroupsShelfProvider(255);
    sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147CC0);
    }
  }
}

unint64_t sub_1A4A493F8()
{
  result = qword_1EB147CD0;
  if (!qword_1EB147CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147CD0);
  }

  return result;
}

unint64_t sub_1A4A49450()
{
  result = qword_1EB147CD8;
  if (!qword_1EB147CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147CD8);
  }

  return result;
}

unint64_t sub_1A4A495C0(double a1)
{
  result = qword_1EB147CE0;
  if (!qword_1EB147CE0)
  {
    sub_1A4A496F0(255, &qword_1EB147CE8, MEMORY[0x1E697F960]);
    sub_1A3C36888();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for LemonadeSocialGroupsShelfProvider(255);
    sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147CE0);
  }

  return result;
}

void sub_1A4A496F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A40C6344(255);
    v7 = v6;
    sub_1A4A49340(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4A4976C(char a1)
{
  strcpy(v8, "utilityAlbum");
  v1 = sub_1A4A498A0(a1);
  v3 = v2;
  sub_1A3DD1E84(1, v1, v2);

  sub_1A4A4A2E0();
  v4 = sub_1A524DF94();
  v6 = v5;

  sub_1A3F6D270(1uLL, v1, v3);

  sub_1A3F6D320();
  sub_1A524C7D4();

  MEMORY[0x1A5907B60](v4, v6);

  return v8[0];
}

uint64_t sub_1A4A498A0(char a1)
{
  result = 0x6F54656C62616E75;
  switch(a1)
  {
    case 1:
      result = 0x657469726F766166;
      break;
    case 2:
      result = 0x65646469486C6C61;
      break;
    case 3:
    case 9:
    case 10:
    case 11:
    case 12:
      result = 0x796C746E65636572;
      break;
    case 4:
      result = 0x746163696C707564;
      break;
    case 5:
      result = 0x7374706965636572;
      break;
    case 6:
      result = 0x74697277646E6168;
      break;
    case 7:
      result = 0x61727473756C6C69;
      break;
    case 8:
      result = 0x7365646F437271;
      break;
    case 13:
      result = 0x44636972656E6567;
      break;
    case 14:
      result = 0x7374726F706D69;
      break;
    case 15:
      result = 7364973;
      break;
    case 16:
      result = 0x657265766F636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A4A49AA0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1A4A498A0(*a1);
  v5 = v4;
  if (v3 == sub_1A4A498A0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();
  }

  return v8 & 1;
}

unint64_t sub_1A4A49B28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A4A4AB4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1A4A49B58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A4A498A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4A49B84()
{
  v1 = *v0;
  sub_1A524EC94();
  sub_1A4A498A0(v1);
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A4A49BE8(uint64_t a1)
{
  sub_1A4A498A0(*v1);
  sub_1A524C794();

  return result;
}

uint64_t sub_1A4A49C3C(uint64_t a1)
{
  v2 = *v1;
  sub_1A524EC94();
  sub_1A4A498A0(v2);
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A4A49C9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A4A4976C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1A4A49CD8(void *a1, char a2)
{
  v4 = [a1 px_virtualCollections];
  v5 = v4;
  switch(a2)
  {
    case 1:
      v8 = a1;
      v7 = 203;
      goto LABEL_15;
    case 2:
      v6 = [a1 px:205 assetCollectionForSmartAlbumWithSubtype:?];
      break;
    case 3:
      v6 = [a1 px:1000000201 assetCollectionForSmartAlbumWithSubtype:?];
      break;
    case 4:
      v7 = 1000000212;
      goto LABEL_9;
    case 5:
      v6 = [a1 px:2 utilityCollectionWithType:?];
      break;
    case 6:
      v6 = [a1 px:4 utilityCollectionWithType:?];
      break;
    case 7:
      v6 = [a1 px:3 utilityCollectionWithType:?];
      break;
    case 8:
      v6 = [a1 px:5 utilityCollectionWithType:?];
      break;
    case 9:
      v7 = 1000000218;
      goto LABEL_9;
    case 10:
      v6 = [v4 recentlyViewedCollection];
      break;
    case 11:
      v6 = [v4 recentlyEditedCollection];
      break;
    case 12:
      v6 = [v4 recentlySharedCollection];
      break;
    case 13:
      v6 = [a1 px:1 utilityCollectionWithType:?];
      break;
    case 14:
      v6 = [v4 importHistoryCollection];
      break;
    case 15:
      v6 = [v4 mapCollection];
      break;
    case 16:
      v7 = 1000000219;
LABEL_9:
      v8 = a1;
LABEL_15:
      v6 = [v8 px:v7 assetCollectionForSmartAlbumWithSubtype:?];
      break;
    default:
      v6 = [a1 px:216 assetCollectionForSmartAlbumWithSubtype:?];
      break;
  }

  v9 = v6;

  return v9;
}

unint64_t sub_1A4A49EB4()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 type];
    if (v2 >= 7)
    {
      result = sub_1A524E6E4();
      __break(1u);
    }

    else
    {
      return 0x11080607050D11uLL >> (8 * v2);
    }
  }

  else
  {
    if (![v0 isTransient])
    {
      v4 = [v0 assetCollectionSubtype];
      if (v4 <= 1000000200)
      {
        switch(v4)
        {
          case 203:
            return 1;
          case 205:
            return 2;
          case 216:
            return 0;
        }
      }

      else if (v4 > 1000000217)
      {
        if (v4 == 1000000218)
        {
          return 9;
        }

        if (v4 == 1000000219)
        {
          return 16;
        }
      }

      else
      {
        if (v4 == 1000000201)
        {
          return 3;
        }

        if (v4 == 1000000212)
        {
          return 4;
        }
      }

      return 17;
    }

    if ([v0 px_isRecentlyViewedCollection])
    {
      return 10;
    }

    else if ([v0 px_isRecentlyEditedCollection])
    {
      return 11;
    }

    else if ([v0 px_isRecentlySharedCollection])
    {
      return 12;
    }

    else if ([v0 px_isImportHistoryCollection])
    {
      return 14;
    }

    else if ([v0 px_isMapVirtualCollection])
    {
      return 15;
    }

    else
    {
      return 17;
    }
  }

  return result;
}

uint64_t sub_1A4A4A0D4()
{
  v14 = MEMORY[0x1E69E7CD0];
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x438))();
  if (v2)
  {
    v2 = sub_1A3D6BDD4(&v8, 2);
  }

  v3 = (*((*v1 & *v0) + 0x570))(v2);
  if (v3)
  {
    v3 = sub_1A3D6BDD4(&v9, 3);
  }

  v4 = (*((*v1 & *v0) + 0x588))(v3);
  if (v4)
  {
    v4 = sub_1A3D6BDD4(&v10, 4);
  }

  v5 = (*((*v1 & *v0) + 0x5A0))(v4);
  if (v5)
  {
    v5 = sub_1A3D6BDD4(&v11, 15);
  }

  v6 = (*((*v1 & *v0) + 0x5B8))(v5);
  if (v6)
  {
    v6 = sub_1A3D6BDD4(&v12, 16);
  }

  if ((*((*v1 & *v0) + 0x3D8))(v6))
  {
    sub_1A3D6BDD4(&v13, 1);
  }

  return v14;
}

unint64_t sub_1A4A4A2E0()
{
  result = qword_1EB147CF0;
  if (!qword_1EB147CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147CF0);
  }

  return result;
}

void sub_1A4A4A334(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3D71674(0);
    v3 = sub_1A524E3D4();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    while (1)
    {
      v6 = *(v28 + v4);
      v29 = v4 + 1;
      sub_1A524EC94();
      sub_1A524C794();

      v7 = sub_1A524ECE4();
      v8 = ~(-1 << *(v3 + 32));
      v9 = v7 & v8;
      v10 = (v7 & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (v7 & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xEE0064616F6C7055;
          v14 = 0x6F54656C62616E75;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v13 = 0xE900000000000073;
              v14 = 0x657469726F766166;
              break;
            case 2:
              v13 = 0xE90000000000006ELL;
              v14 = 0x65646469486C6C61;
              break;
            case 3:
              v14 = 0x796C746E65636572;
              v13 = 0xEF646574656C6544;
              break;
            case 4:
              v14 = 0x746163696C707564;
              v13 = 0xEA00000000007365;
              break;
            case 5:
              v13 = 0xE800000000000000;
              v14 = 0x7374706965636572;
              break;
            case 6:
              v14 = 0x74697277646E6168;
              v13 = 0xEB00000000676E69;
              break;
            case 7:
              v14 = 0x61727473756C6C69;
              v13 = 0xED0000736E6F6974;
              break;
            case 8:
              v13 = 0xE700000000000000;
              v15 = 0x65646F437271;
              goto LABEL_24;
            case 9:
              v14 = 0x796C746E65636572;
              v13 = 0xED00006465766153;
              break;
            case 0xA:
              v14 = 0x796C746E65636572;
              v16 = 2003134806;
              goto LABEL_22;
            case 0xB:
              v14 = 0x796C746E65636572;
              v16 = 1953064005;
              goto LABEL_22;
            case 0xC:
              v14 = 0x796C746E65636572;
              v16 = 1918986323;
LABEL_22:
              v13 = v16 | 0xEE00646500000000;
              break;
            case 0xD:
              v14 = 0x44636972656E6567;
              v13 = 0xEF746E656D75636FLL;
              break;
            case 0xE:
              v13 = 0xE700000000000000;
              v15 = 0x74726F706D69;
LABEL_24:
              v14 = v15 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
              break;
            case 0xF:
              v13 = 0xE300000000000000;
              v14 = 7364973;
              break;
            case 0x10:
              v14 = 0x657265766F636572;
              v13 = 0xE900000000000064;
              break;
            default:
              break;
          }

          v17 = 0x6F54656C62616E75;
          v18 = 0xEE0064616F6C7055;
          switch(v6)
          {
            case 1:
              v18 = 0xE900000000000073;
              if (v14 == 0x657469726F766166)
              {
                goto LABEL_55;
              }

              goto LABEL_56;
            case 2:
              v18 = 0xE90000000000006ELL;
              if (v14 != 0x65646469486C6C61)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 3:
              v18 = 0xEF646574656C6544;
              if (v14 != 0x796C746E65636572)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 4:
              v18 = 0xEA00000000007365;
              if (v14 != 0x746163696C707564)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 5:
              v18 = 0xE800000000000000;
              if (v14 != 0x7374706965636572)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 6:
              v18 = 0xEB00000000676E69;
              if (v14 != 0x74697277646E6168)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 7:
              v21 = 0x61727473756C6C69;
              v22 = 0x736E6F6974;
              goto LABEL_45;
            case 8:
              v18 = 0xE700000000000000;
              v19 = 0x65646F437271;
              goto LABEL_60;
            case 9:
              v21 = 0x796C746E65636572;
              v22 = 0x6465766153;
LABEL_45:
              v18 = v22 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              if (v14 != v21)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 10:
              v17 = 0x796C746E65636572;
              v18 = 0xEE00646577656956;
              goto LABEL_54;
            case 11:
              v20 = 1953064005;
              goto LABEL_35;
            case 12:
              v20 = 1918986323;
LABEL_35:
              v18 = v20 | 0xEE00646500000000;
              if (v14 != 0x796C746E65636572)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 13:
              v18 = 0xEF746E656D75636FLL;
              if (v14 != 0x44636972656E6567)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 14:
              v18 = 0xE700000000000000;
              v19 = 0x74726F706D69;
LABEL_60:
              if (v14 != (v19 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 15:
              v18 = 0xE300000000000000;
              if (v14 != 7364973)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 16:
              v18 = 0xE900000000000064;
              if (v14 != 0x657265766F636572)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            default:
LABEL_54:
              if (v14 != v17)
              {
                goto LABEL_56;
              }

LABEL_55:
              if (v13 == v18)
              {

                goto LABEL_4;
              }

LABEL_56:
              v23 = sub_1A524EAB4();

              if (v23)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_62;
              }

              break;
          }
        }
      }

LABEL_62:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      v4 = v29;
      if (v29 == v27)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1A4A4AB4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A524EB24();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A4A4ABA8()
{
  result = qword_1EB147CF8;
  if (!qword_1EB147CF8)
  {
    sub_1A4A4AC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147CF8);
  }

  return result;
}

void sub_1A4A4AC00()
{
  if (!qword_1EB120CF8)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120CF8);
    }
  }
}

uint64_t sub_1A4A4AC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v31 = a6;
  sub_1A4A4B024(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4A4B0E0(0);
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  sub_1A4A4B084(0);
  (*(*(v20 - 8) + 16))(v14, a1, v20);
  v21 = &v14[*(v12 + 36)];
  *v21 = sub_1A4A4B588;
  *(v21 + 1) = v19;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = *(*a2 + 584);

  LOBYTE(v32) = v22(v23) & 1;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  *(v24 + 32) = a4;
  *(v24 + 40) = a5;
  v25 = sub_1A4A4B178();

  sub_1A524B154();

  sub_1A4A4B2F4(v14);
  LOBYTE(v32) = a3;
  v33 = a4;
  LOBYTE(v34) = a5;
  sub_1A4222DB0(0);
  sub_1A5247C04();
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  *(v26 + 32) = a4;
  *(v26 + 40) = a5;
  sub_1A4222E14();

  v32 = v12;
  v33 = MEMORY[0x1E69E6370];
  v34 = v25;
  v35 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  sub_1A4A4B474(&qword_1EB147D28, sub_1A4A4B4E0, MEMORY[0x1E69E7C80]);
  v27 = v29;
  sub_1A524B144();

  return (*(v30 + 8))(v18, v27);
}

void sub_1A4A4B024(uint64_t a1)
{
  if (!qword_1EB147D00)
  {
    sub_1A4A4B084(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147D00);
    }
  }
}

void sub_1A4A4B084(uint64_t a1)
{
  if (!qword_1EB147D08)
  {
    sub_1A45CFCF4();
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147D08);
    }
  }
}

void sub_1A4A4B0E0(uint64_t a1)
{
  if (!qword_1EB147D10)
  {
    sub_1A4A4B024(255);
    sub_1A4A4B178();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147D10);
    }
  }
}

unint64_t sub_1A4A4B178()
{
  result = qword_1EB147D18;
  if (!qword_1EB147D18)
  {
    sub_1A4A4B024(255);
    sub_1A4A4B1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147D18);
  }

  return result;
}

unint64_t sub_1A4A4B1F8()
{
  result = qword_1EB147D20;
  if (!qword_1EB147D20)
  {
    sub_1A4A4B084(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147D20);
  }

  return result;
}

uint64_t sub_1A4A4B254()
{
  (*(**(v0 + 16) + 584))();
  sub_1A4222DB0(0);
  return sub_1A5247C14();
}

uint64_t sub_1A4A4B2F4(uint64_t a1)
{
  sub_1A4A4B024(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_93()
{

  return swift_deallocObject();
}

uint64_t sub_1A4A4B390(uint64_t a1, _BYTE *a2)
{
  v3 = *(v2 + 16);
  if (*a2 == 2)
  {
    return (*(*v3 + 592))(0);
  }

  sub_1A4222DB0(0);
  sub_1A5247C04();
  v6 = (v7 & 1) == 0 && v7 != 2;
  return (*(*v3 + 592))(v6);
}

uint64_t sub_1A4A4B474(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A4222E14();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4A4B4E0()
{
  result = qword_1EB1257B8;
  if (!qword_1EB1257B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257B8);
  }

  return result;
}

id PXResetTransientCollectionSortOrderAction.init(collection:)(void *a1)
{
  *&v1[OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedMediaTypes] = 0;
  *&v1[OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedUtilityTypes] = 0;
  *&v1[OBJC_IVAR___PXResetTransientCollectionSortOrderAction_collection] = a1;
  v2 = a1;
  result = [v2 photoLibrary];
  if (result)
  {
    v4 = result;
    v6.receiver = v1;
    v6.super_class = PXResetTransientCollectionSortOrderAction;
    v5 = objc_msgSendSuper2(&v6, sel_initWithPhotoLibrary_, result);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PXResetTransientCollectionSortOrderAction.perform(_:)(uint64_t (*a1)(uint64_t, void, __n128))
{
  v2 = v1;
  v4 = [v1 collection];
  v5 = [v4 px_isMediaTypesFolder];

  if (v5)
  {
    v6 = [v2 photoLibrary];
    v7 = sub_1A41CE3A4(v6);

    v8 = (*(*v7 + 248))();

    *&v2[OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedMediaTypes] = v8;

    v9 = [v2 photoLibrary];
    sub_1A41CE3A4(v9);

    v10 = [v2 photoLibrary];
    sub_1A41CE3A4(v10);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v11 = [v2 collection];
  v12 = [v11 px_isUtilitiesFolder];

  if (v12)
  {
    v13 = [v2 photoLibrary];
    v14 = sub_1A3D63EA0(v13);

    v15 = (*(*v14 + 192))();

    *&v2[OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedUtilityTypes] = v15;

    v16 = [v2 photoLibrary];
    v17 = sub_1A3D63EA0(v16);

    sub_1A4A49A94();
    (*(*v17 + 240))();

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return (a1)(v18, 0);
}

uint64_t PXResetTransientCollectionSortOrderAction.performUndo(_:)(uint64_t (*a1)(uint64_t, void, __n128), __n128 a2)
{
  if (*(v2 + OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedMediaTypes))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*(v2 + OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedUtilityTypes))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return (a1)(0, 0);
}

void sub_1A4A4BB64(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

unint64_t type metadata accessor for PXResetTransientCollectionSortOrderAction()
{
  result = qword_1EB1E8A10[0];
  if (!qword_1EB1E8A10[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB1E8A10);
  }

  return result;
}

uint64_t sub_1A4A4BCF4(char *a1, uint64_t a2)
{
  v4 = [a1 collection];
  v5 = [v4 px_isMediaTypesFolder];

  if (v5)
  {
    v6 = [a1 photoLibrary];
    v7 = sub_1A41CE3A4(v6);

    v8 = (*(*v7 + 248))();

    *&a1[OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedMediaTypes] = v8;

    v9 = [a1 photoLibrary];
    sub_1A41CE3A4(v9);

    v10 = [a1 photoLibrary];
    sub_1A41CE3A4(v10);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v11 = [a1 collection];
  v12 = [v11 px_isUtilitiesFolder];

  if (v12)
  {
    v13 = [a1 photoLibrary];
    v14 = sub_1A3D63EA0(v13);

    v15 = (*(*v14 + 192))();

    *&a1[OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedUtilityTypes] = v15;

    v16 = [a1 photoLibrary];
    v17 = sub_1A3D63EA0(v16);

    sub_1A4A49A94();
    (*(*v17 + 240))();

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a2 + 16);

  return v19(a2, v18, 0);
}

uint64_t sub_1A4A4BF90(char *a1, uint64_t a2, __n128 a3)
{
  if (*&a1[OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedMediaTypes])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*&a1[OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedUtilityTypes])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = *(a2 + 16);

  return v3(a2, 0, 0);
}

unint64_t TimelineVFXGeometry.init(viewSize:cameraPosition:projectionDirection:)@<X0>(unint64_t result@<X0>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>, __n128 a5@<Q2>)
{
  a2->n128_f64[0] = a3;
  a2->n128_f64[1] = a4;
  a2[1] = a5;
  a2[2].n128_u64[0] = result;
  return result;
}

void TimelineVFXGeometry.frameForNode(position:scale:aspectRatio:)(__n128 a1, float a2, double a3)
{
  if (*(v3 + 32) <= 1uLL)
  {
    sub_1A524D9E4();
  }

  sub_1A524E6E4();
  __break(1u);
}

__n128 __swift_memcpy40_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A4A4C42C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1A4A4C494()
{
  v1 = *(*v0 + 88);
  result = v1();
  if (result)
  {
    v3 = result;
    v4 = sub_1A41CE39C();

    LOBYTE(v3) = (*(*v4 + 152))();

    if (v3)
    {
      return 1;
    }

    result = (v1)(v5);
    if (result)
    {
      v6 = result;
      v7 = sub_1A3D63E98();

      LOBYTE(v6) = (*(*v7 + 144))();

      return v6 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4A4C5A0(void *a1, void *a2)
{
  sub_1A3D93850();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41DD7A4(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = a2;
  v16 = a1;
  sub_1A524B704();
  sub_1A41DD8E4(0);
  v18 = v17;
  v19 = sub_1A4A4D4D0(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
  v20 = sub_1A5243474();
  v21 = sub_1A4A4D4D0(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  v26 = v5;
  v27 = v20;
  v28 = v19;
  v29 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524A4C4();
  (*(v6 + 8))(v8, v5);
  v25[0] = sub_1A3C38BD4(0xD00000000000001ALL);
  v25[1] = v23;
  v26 = v5;
  v27 = v18;
  v28 = v19;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A3D5F9DC();
  sub_1A524AC94();

  return (*(v11 + 8))(v13, v10);
}

void sub_1A4A4C8DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_allocWithZone(PXResetTransientCollectionSortOrderAction) initWithCollection_];
  v5[4] = sub_1A4A4C9B4;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A3D6084C;
  v5[3] = &block_descriptor_339;
  v4 = _Block_copy(v5);
  [v3 executeWithUndoManager:v2 completionHandler:v4];
  _Block_release(v4);
}

void sub_1A4A4C9B4(char a1, void *a2)
{
  v3 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v3);
  if ((a1 & 1) == 0)
  {
    sub_1A5246EF4();
  }
}

uint64_t sub_1A4A4CB80@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C38BD4(0xD000000000000016);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A4A4CBF0()
{
  v0 = sub_1A5243474();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  sub_1A3D93850();
  sub_1A4A4D4D0(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
  sub_1A4A4D4D0(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

void sub_1A4A4CD64(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = sub_1A52414C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *a4;
  sub_1A5241494();
  sub_1A5241464();
  sub_1A4A4D1CC();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A52F8E10;
  *(v11 + 32) = v10;
  type metadata accessor for LemonadeAnalyticsCustomization();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4A4D1CC()
{
  if (!qword_1EB126240)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126240);
    }
  }
}

void sub_1A4A4D21C(uint64_t *a2@<X8>)
{
  swift_getAtKeyPath();
  v4 = sub_1A524C634();

  *a2 = v4;
}

unint64_t sub_1A4A4D2CC()
{
  result = qword_1EB147D48;
  if (!qword_1EB147D48)
  {
    sub_1A4A4D468(255);
    sub_1A3D93850();
    sub_1A41DD8E4(255);
    sub_1A4A4D4D0(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
    sub_1A5243474();
    sub_1A4A4D4D0(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4A4D4D0(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147D48);
  }

  return result;
}

void sub_1A4A4D468(uint64_t a1)
{
  if (!qword_1EB147D50)
  {
    sub_1A41DD7A4(255);
    sub_1A5249F54();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147D50);
    }
  }
}

uint64_t sub_1A4A4D4D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4A4D518@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v88 = a1;
  v79 = a2;
  sub_1A3EE1D04(0);
  v114 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v110 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5248B24();
  v112 = *(v5 - 8);
  v113 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5248934();
  v109 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4A4EA90(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v107 = &v71 - v10;
  v106 = sub_1A524A274();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(a1 - 8);
  v98 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *(a1 + 16);
  v97 = sub_1A5248804();
  v92 = *(a1 + 24);
  v126 = v92;
  v127 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1A524B764();
  v103 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v71 - v15;
  v16 = MEMORY[0x1E6980A08];
  sub_1A4A4EA90(255, &qword_1EB127820, sub_1A3FF1F48, MEMORY[0x1E6980A08]);
  v95 = v14;
  v17 = sub_1A5248804();
  v101 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v71 - v18;
  v19 = swift_getWitnessTable();
  v93 = v19;
  v20 = sub_1A4A4E22C(&qword_1EB127830, &qword_1EB127820, sub_1A3FF1F48);
  v124 = v19;
  v125 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1A4A4E290(&qword_1EB147D58, MEMORY[0x1E697C1D8], MEMORY[0x1E697C1D0]);
  v120 = v17;
  v121 = v7;
  v82 = v17;
  v23 = v7;
  v81 = v7;
  v122 = v21;
  v123 = v22;
  v84 = v21;
  v83 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v99 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v86 = &v71 - v24;
  v25 = MEMORY[0x1E697C2B0];
  sub_1A4A4EA90(255, &qword_1EB127838, MEMORY[0x1E697C2B0], v16);
  v26 = sub_1A5248804();
  v77 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v80 = &v71 - v27;
  v120 = v17;
  v121 = v23;
  v122 = v21;
  v123 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = OpaqueTypeConformance2;
  v29 = sub_1A4A4E22C(&qword_1EB1220F0, &qword_1EB127838, v25);
  v118 = OpaqueTypeConformance2;
  v119 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_1A4A4E290(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
  v78 = v26;
  v120 = v26;
  v121 = v114;
  v76 = v30;
  v122 = v30;
  v123 = v31;
  v74 = v31;
  v75 = swift_getOpaqueTypeMetadata2();
  v32 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v73 = &v71 - v36;
  v37 = v91;
  v38 = v90;
  v39 = v105;
  v40 = v88;
  (*(v91 + 16))(v90, v105, v88, v35);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = swift_allocObject();
  v43 = v94;
  v44 = v92;
  *(v42 + 16) = v94;
  *(v42 + 24) = v44;
  (*(v37 + 32))(v42 + v41, v38, v40);
  v115 = v43;
  v116 = v44;
  v117 = v39;
  v45 = v89;
  sub_1A524B704();
  v46 = v104;
  v47 = v102;
  v48 = v106;
  (*(v104 + 104))(v102, *MEMORY[0x1E6980F18], v106);
  v49 = sub_1A524A154();
  v50 = v107;
  (*(*(v49 - 8) + 56))(v107, 1, 1, v49);
  sub_1A524A1C4();
  sub_1A441183C(v50);
  (*(v46 + 8))(v47, v48);
  sub_1A524A184();
  sub_1A524A1F4();

  v51 = v100;
  v52 = v95;
  v53 = v45;
  v54 = v80;
  sub_1A524AF74();
  v55 = v110;

  (*(v103 + 8))(v53, v52);
  v56 = v108;
  sub_1A5248924();
  v57 = v86;
  v58 = v82;
  v59 = v81;
  sub_1A524A934();
  (*(v109 + 8))(v56, v59);
  (*(v101 + 8))(v51, v58);
  v60 = v111;
  sub_1A5248B14();
  v61 = OpaqueTypeMetadata2;
  sub_1A524AC24();
  (*(v112 + 8))(v60, v113);
  (*(v99 + 8))(v57, v61);
  v62 = *MEMORY[0x1E697E720];
  v63 = sub_1A52486A4();
  (*(*(v63 - 8) + 104))(v55, v62, v63);
  sub_1A4A4E290(&unk_1EB1288C0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1A524C594();
  if (result)
  {
    v65 = v72;
    v66 = v78;
    sub_1A524AB84();
    sub_1A4A44A0C(v55);
    (*(v77 + 8))(v54, v66);
    v67 = *(v32 + 16);
    v68 = v73;
    v69 = v75;
    v67(v73, v65, v75);
    v70 = *(v32 + 8);
    v70(v65, v69);
    v67(v79, v68, v69);
    return (v70)(v68, v69);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4A4E22C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4A4EA90(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4A4E290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4A4E358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v23 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5248804();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  (*(a1 + 16))(v15);
  type metadata accessor for GenerativeStoryInlineActionButton(0, a2, a3, v18);
  sub_1A4A4E5A8();
  sub_1A524B0C4();
  (*(v7 + 8))(v9, a2);
  v24 = a3;
  v25 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v19 = *(v11 + 16);
  v19(v17, v13, v10);
  v20 = *(v11 + 8);
  v20(v13, v10);
  v19(v23, v17, v10);
  return (v20)(v17, v10);
}

void sub_1A4A4E5A8()
{
  v0 = sub_1A5242D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D61808(v3);
  if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69C2210])
  {
    sub_1A5247BA4();
  }

  else
  {
    static EdgeInsets.all(_:)();
    (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1A4A4E6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v8 = *(type metadata accessor for GenerativeStoryInlineActionButton(0, a5, a6, a4) + 40);
  *(a7 + v8) = swift_getKeyPath();
  sub_1A4A4EA90(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4A4E790@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  sub_1A4A4EB18(0, a2, a3, a4);
  v6 = v5;
  a1[3] = v5;
  a1[4] = sub_1A4A4E290(&qword_1EB13A218, sub_1A4A4EB18, &unk_1A537F610);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  *boxed_opaque_existential_1 = PXDisplayCollectionDetailedCountsMake;
  boxed_opaque_existential_1[1] = 0;
  boxed_opaque_existential_1[2] = sub_1A4A4E894;
  boxed_opaque_existential_1[3] = 0;
  v8 = *(v6 + 40);
  *(boxed_opaque_existential_1 + v8) = swift_getKeyPath();
  sub_1A4A4EA90(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4A4E894@<X0>(uint64_t a1@<X8>)
{
  sub_1A5249434();
  result = sub_1A524A444();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_1A4A4E9C8(uint64_t a1)
{
  sub_1A3C3637C();
  if (v1 <= 0x3F)
  {
    sub_1A4A4EA90(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A4A4EA90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4A4EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB13A168)
  {
    v4 = type metadata accessor for GenerativeStoryInlineActionButton(0, MEMORY[0x1E6981148], MEMORY[0x1E6981138], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB13A168);
    }
  }
}

uint64_t sub_1A4A4EB70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4A4EC04;

  return sub_1A4A5199C(a1);
}

uint64_t sub_1A4A4EC04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4A4ED38, 0, 0);
  }
}

uint64_t sub_1A4A4ED38()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [objc_opt_self() isAutoEnhanceEnabledForCompositionController_];

    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 2;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1A4A4EDD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4A4EE68;

  return sub_1A4A5199C(a1);
}

uint64_t sub_1A4A4EE68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4A4EF9C, 0, 0);
  }
}

uint64_t sub_1A4A4EF9C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *MEMORY[0x1E69BDFD8];
    v3 = v1;
    v4 = [v3 adjustmentControllerForKey_];
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        if ([v6 enabled])
        {
          [v7 aperture];
          v9 = v8;

          v10 = 0;
          v11 = v9;
          goto LABEL_9;
        }
      }
    }
  }

  v11 = 0;
  v10 = 1;
LABEL_9:
  v12 = *(v0 + 8);

  return v12(v11, v10);
}

uint64_t sub_1A4A4F0AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4A4F140;

  return sub_1A4A5199C(a1);
}

uint64_t sub_1A4A4F140(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4A4F274, 0, 0);
  }
}

uint64_t sub_1A4A4F274()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A4A4F314();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

id sub_1A4A4F314()
{
  v1 = [v0 adjustmentControllerForKey_];
  if (!v1)
  {
LABEL_4:
    result = [v0 adjustmentControllerForKey_];
    if (!result)
    {
      return result;
    }

    v5 = result;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

    goto LABEL_4;
  }

LABEL_6:
  v5 = v3;
  if ([v5 enabled])
  {
    v6 = [v5 kind];
    v7 = sub_1A524C674();

    return v7;
  }

LABEL_9:
  return 0;
}

uint64_t sub_1A4A4F42C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4A4F4C0;

  return sub_1A4A5199C(a1);
}

uint64_t sub_1A4A4F4C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4A4F5F4, 0, 0);
  }
}

uint64_t sub_1A4A4F5F4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *MEMORY[0x1E69BE178];
    v3 = v1;
    v4 = [v3 adjustmentControllerForKey_];
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        if ([v6 enabled])
        {
          [v7 offsetExposure];
          v9 = v8;

          v10 = 0;
          v11 = v9 * 100.0;
          goto LABEL_9;
        }
      }
    }
  }

  v11 = 0.0;
  v10 = 1;
LABEL_9:
  v12 = *(v0 + 8);

  return v12(*&v11, v10);
}

uint64_t sub_1A4A4F710(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4A4F7A4;

  return sub_1A4A5199C(a1);
}

uint64_t sub_1A4A4F7A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4A4F8D8, 0, 0);
  }
}

uint64_t sub_1A4A4F8D8()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = *MEMORY[0x1E69BDFD8];
  v3 = v1;
  v4 = [v3 adjustmentControllerForKey_];
  v5 = v3;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = v4;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    v5 = v6;
LABEL_7:

    goto LABEL_8;
  }

  v8 = [v7 enabled];

  if (v8)
  {
    v9 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v9 = 2;
LABEL_9:
  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1A4A4F9D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4A4FA68;

  return sub_1A4A5199C(a1);
}

uint64_t sub_1A4A4FA68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4A4FB9C, 0, 0);
  }
}

uint64_t sub_1A4A4FB9C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *MEMORY[0x1E69BE170];
    v3 = v1;
    v4 = [v3 adjustmentControllerForKey_];
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        if ([v6 enabled])
        {
          [v7 offsetSaturation];
          v9 = v8;

          v10 = 0;
          v11 = v9 * 100.0;
          goto LABEL_9;
        }
      }
    }
  }

  v11 = 0.0;
  v10 = 1;
LABEL_9:
  v12 = *(v0 + 8);

  return v12(*&v11, v10);
}

uint64_t sub_1A4A4FCB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4A4FD4C;

  return sub_1A4A5199C(a1);
}

uint64_t sub_1A4A4FD4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4A4FE80, 0, 0);
  }
}

uint64_t sub_1A4A4FE80()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A4A4FF20();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 1;
  }

  v6 = *(v0 + 8);

  return v6(v3, v5 & 1);
}

id sub_1A4A4FF20()
{
  result = [v0 adjustmentControllerForKey_];
  if (*&result != 0.0)
  {
    v2 = result;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3 && (v4 = v3, [v3 enabled]) && objc_msgSend(v4, sel_colorType) == 3)
    {
      [v4 warmTemp];
      v6 = v5;

      *&result = v6 * 200.0;
    }

    else
    {

      *&result = 0.0;
    }
  }

  return result;
}

uint64_t static PXAssetEntityEditResourceLoader.descriptionOfEdits(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A4A50014, 0, 0);
}

uint64_t sub_1A4A50014()
{
  v1 = *(v0 + 24);
  v2 = [objc_allocWithZone(*(v0 + 32)) init];
  *(v0 + 40) = v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  sub_1A3ECD7F0(0, &qword_1EB147D60, &qword_1EB147D68, 0x1E69C42E8, MEMORY[0x1E69E62F8]);
  *v4 = v0;
  v4[1] = sub_1A4A50154;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000019, 0x80000001A53F9460, sub_1A4A51DEC, v3, v5);
}

uint64_t sub_1A4A50154()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1A4A50C3C;
  }

  else
  {

    v2 = sub_1A4A50270;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4A50270()
{
  v108 = v0;
  v1 = *(v0 + 16);
  v2 = sub_1A4A51DF4(MEMORY[0x1E69E7CC0]);
  if (v1 >> 62)
  {
LABEL_72:
    v3 = sub_1A524E2B4();
    v95 = v0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v95 = v0;
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v103 = v1 & 0xC000000000000001;
      v96 = v1 & 0xFFFFFFFFFFFFFF8;
      v104 = *MEMORY[0x1E69BDFD8];
      v100 = *MEMORY[0x1E69BE178];
      v101 = v3;
      v5 = &selRef_actionPerformerBottomPaddingForPresentingToast_;
      v98 = *MEMORY[0x1E69BE170];
      v99 = *MEMORY[0x1E69BE058];
      v97 = *MEMORY[0x1E69BE0C8];
      v102 = v1;
      do
      {
        if (v103)
        {
          v6 = MEMORY[0x1A59097F0](v4, v1);
        }

        else
        {
          if (v4 >= *(v96 + 16))
          {
            goto LABEL_71;
          }

          v6 = *(v1 + 8 * v4 + 32);
        }

        v7 = v6;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v105 = v4 + 1;
        v8 = [v6 compositionController];
        v0 = sub_1A3DAF1D4(MEMORY[0x1E69E7CC0]);
        v106 = v0;
        if (v8)
        {
          v9 = objc_opt_self();
          v10 = v8;
          if ([v9 isAutoEnhanceEnabledForCompositionController_])
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v107 = v0;
            sub_1A4A516B0(0x64656C62616E65, 0xE700000000000000, 0x61686E456F747541, 0xEB0000000065636ELL, isUniquelyReferenced_nonNull_native);
            v0 = v107;
            v106 = v107;
          }

          v12 = [v10 v5[350]];
          if (v12)
          {
            v13 = v12;
            objc_opt_self();
            v14 = swift_dynamicCastObjCClass();
            if (v14 && (v15 = v14, ([v14 enabled] & 1) != 0))
            {
              [v15 aperture];

              v16 = sub_1A524CEE4();
              v18 = v17;
              v19 = swift_isUniquelyReferenced_nonNull_native();
              v107 = v0;
              sub_1A4A516B0(v16, v18, 0x6874706544, 0xE500000000000000, v19);
              v0 = v107;
              v106 = v107;
            }

            else
            {
            }
          }

          v20 = [v10 v5[350]];
          if (v20)
          {
            v21 = v20;
            objc_opt_self();
            v22 = swift_dynamicCastObjCClass();
            if (v22 && (v23 = v22, ([v22 enabled] & 1) != 0))
            {
              [v23 offsetExposure];

              v24 = sub_1A524CEE4();
              v26 = v25;
              v27 = swift_isUniquelyReferenced_nonNull_native();
              v107 = v0;
              sub_1A4A516B0(v24, v26, 0x657275736F707845, 0xE800000000000000, v27);
              v106 = v107;
            }

            else
            {
            }
          }

          v28 = sub_1A4A4F314();
          if (v29)
          {
            sub_1A4A50CD8(v28, v29, 0x7265746C6946, 0xE600000000000000);
          }

          v30 = [v10 v5[350]];
          if (v30)
          {
            v31 = v30;
            objc_opt_self();
            v32 = swift_dynamicCastObjCClass();
            if (v32)
            {
              v33 = [v32 enabled];

              if (v33)
              {
                v34 = swift_isUniquelyReferenced_nonNull_native();
                v107 = v106;
                sub_1A4A516B0(0x64656C62616E65, 0xE700000000000000, 0x7469617274726F50, 0xEC00000065646F4DLL, v34);
                v106 = v107;
              }
            }

            else
            {
            }
          }

          v35 = [v10 v5[350]];
          if (v35)
          {
            v36 = v35;
            objc_opt_self();
            v37 = swift_dynamicCastObjCClass();
            if (v37 && (v38 = v37, [v37 enabled]) && objc_msgSend(v38, sel_orientation) != 1)
            {
              v79 = NUOrientationName();
              v80 = sub_1A524C674();
              v82 = v81;

              if (v82)
              {
                sub_1A4A50CD8(v80, v82, 0x6E6F697461746F52, 0xE800000000000000);
              }
            }

            else
            {
            }
          }

          v39 = [v10 v5[350]];
          if (v39)
          {
            v40 = v39;
            objc_opt_self();
            v41 = swift_dynamicCastObjCClass();
            if (v41 && (v42 = v41, ([v41 enabled] & 1) != 0))
            {
              [v42 offsetSaturation];

              v43 = sub_1A524CEE4();
              v45 = v44;
              v46 = swift_isUniquelyReferenced_nonNull_native();
              v107 = v106;
              sub_1A4A516B0(v43, v45, 0x6974617275746153, 0xEA00000000006E6FLL, v46);
              v106 = v107;
            }

            else
            {
            }
          }

          v47 = [v10 v5[350]];
          if (v47)
          {
            v48 = v47;
            objc_opt_self();
            v49 = swift_dynamicCastObjCClass();
            if (v49 && (v50 = v49, [v49 enabled]))
            {
              v51 = [v50 cast];
              v52 = sub_1A524C674();
              v54 = v53;
              if (v52 == sub_1A524C674() && v54 == v55)
              {
              }

              else
              {
                v78 = sub_1A524EAB4();

                if (v78)
                {
                }

                else
                {
                  v83 = sub_1A524C674();
                  v85 = v84;

                  if (v85)
                  {
                    sub_1A4A50CD8(v83, v85, 0x656C797453, 0xE500000000000000);
                  }
                }
              }
            }

            else
            {
            }
          }

          sub_1A4A4FF20();
          if (v56)
          {

            v0 = v106;
          }

          else
          {
            v57 = sub_1A524CEE4();
            v59 = v58;
            v60 = swift_isUniquelyReferenced_nonNull_native();
            v107 = v106;
            sub_1A4A516B0(v57, v59, 0x68746D726157, 0xE600000000000000, v60);

            v0 = v107;
          }
        }

        v61 = [objc_msgSend(v7 asset)];
        swift_unknownObjectRelease();
        v62 = sub_1A524C674();
        v64 = v63;

        v65 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v2;
        v1 = v2;
        v67 = sub_1A3C5DCA4(v62, v64);
        v68 = v2[2];
        v69 = (v66 & 1) == 0;
        v70 = v68 + v69;
        if (__OFADD__(v68, v69))
        {
          goto LABEL_69;
        }

        v71 = v66;
        if (v2[3] >= v70)
        {
          if (v65)
          {
            v5 = &selRef_actionPerformerBottomPaddingForPresentingToast_;
            if (v66)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v1 = &v107;
            sub_1A4A51838();
            v5 = &selRef_actionPerformerBottomPaddingForPresentingToast_;
            if (v71)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1A4A51414(v70, v65);
          v1 = v107;
          v72 = sub_1A3C5DCA4(v62, v64);
          if ((v71 & 1) != (v73 & 1))
          {
            result = sub_1A524EB84();
            __break(1u);
            return result;
          }

          v67 = v72;
          v5 = &selRef_actionPerformerBottomPaddingForPresentingToast_;
          if (v71)
          {
LABEL_4:

            v2 = v107;
            *(v107[7] + 8 * v67) = v0;

            goto LABEL_5;
          }
        }

        v2 = v107;
        v107[(v67 >> 6) + 8] |= 1 << v67;
        v74 = (v2[6] + 16 * v67);
        *v74 = v62;
        v74[1] = v64;
        *(v2[7] + 8 * v67) = v0;

        v75 = v2[2];
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          goto LABEL_70;
        }

        v2[2] = v77;
LABEL_5:
        ++v4;
        v1 = v102;
      }

      while (v105 != v101);
    }
  }

  v86 = v95[8];

  v88 = sub_1A4A51EEC(v2, v87);
  v90 = v89;
  v91 = v95[5];

  if (v86)
  {
    v92 = v95[1];

    return v92();
  }

  else
  {
    v94 = v95[1];

    return v94(v88, v90);
  }
}

uint64_t sub_1A4A50C3C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

id PXAssetEntityEditResourceLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1A4A50CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1A4A516B0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v11 = sub_1A3C5DCA4(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v18 = *v5;
      if (!v14)
      {
        sub_1A3DADC84();
        v15 = v18;
      }

      sub_1A3DAD688(v11, v15, v16);
      *v5 = v15;
    }
  }
}

void sub_1A4A50DE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1A4A52858(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4A520AC(0);
  v10 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, a1, v9);
  (*(v11 + 56))(v8, 0, 1, v10);
  v12 = OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_continuation;
  swift_beginAccess();
  sub_1A4A52A28(v8, a2 + v12);
  swift_endAccess();
  v13 = [objc_allocWithZone(MEMORY[0x1E69C42E0]) init];
  [v13 setRequireAdjustments_];
  [v13 setRequireLocalResources_];
  v24 = v13;
  [v13 setDelegate_];
  if (!(a3 >> 62))
  {
    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v14 = sub_1A524E2B4();
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_resourceLoader;
    v17 = a3;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1A59097F0](v15);
      }

      else
      {
        v18 = *(v17 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = sub_1A524D474();
      v21 = [objc_allocWithZone(MEMORY[0x1E69C42F0]) initWithAsset:v19 loadingQueue:v20];

      swift_beginAccess();
      v22 = v21;
      MEMORY[0x1A5907D70]();
      if (*((*(a2 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23[1] = *((*(a2 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A524CA74();
      }

      ++v15;
      sub_1A524CAE4();
      swift_endAccess();
      [v22 enqueueRequest_];

      v17 = a3;
    }

    while (v14 != v15);
    goto LABEL_13;
  }

  __break(1u);
}

id PXAssetEntityEditResourceLoader.init()()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_results] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_resourceLoader] = v2;
  v3 = OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_continuation;
  sub_1A4A520AC(0);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id PXAssetEntityEditResourceLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4A51414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A4A529A4(0);
  v35 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v25 = sub_1A524ECE4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A4A516B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A3C5DCA4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A3DAD3B8(v18, a5 & 1);
      v13 = sub_1A3C5DCA4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1A3DADC84();
      v13 = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v25 = (v23[6] + 16 * v13);
    *v25 = a3;
    v25[1] = a4;
    v26 = (v23[7] + 16 * v13);
    *v26 = a1;
    v26[1] = a2;
    v27 = v23[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v23[2] = v28;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v24 = (v23[7] + 16 * v13);
  *v24 = a1;
  v24[1] = a2;
}

void sub_1A4A51838()
{
  v1 = v0;
  sub_1A4A529A4(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

uint64_t sub_1A4A519BC()
{
  v1 = v0[8];
  v2 = [objc_allocWithZone(type metadata accessor for PXAssetEntityEditResourceLoader(0)) init];
  v0[9] = v2;
  sub_1A3CB8F68();
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = xmmword_1A52F9790;
  *(inited + 32) = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = inited;
  v6 = swift_task_alloc();
  v0[12] = v6;
  sub_1A3ECD7F0(0, &qword_1EB147D60, &qword_1EB147D68, 0x1E69C42E8, MEMORY[0x1E69E62F8]);
  *v6 = v0;
  v6[1] = sub_1A4A51B30;

  return MEMORY[0x1EEE6DE38](v0 + 7, 0, 0, 0xD000000000000019, 0x80000001A53F9460, sub_1A4A52A8C, v5, v7);
}

uint64_t sub_1A4A51B30()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1A4A51D54;
  }

  else
  {

    v2 = sub_1A4A51C54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4A51C54()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    result = sub_1A524E2B4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1A59097F0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
LABEL_9:
  v5 = v0[9];

  v6 = [v4 compositionController];

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1A4A51D54()
{
  v1 = *(v0 + 72);
  swift_setDeallocating();
  swift_arrayDestroy();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1A4A51DF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A4A529A4(0);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A4A51EEC(uint64_t a1, double a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1A524C6F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = objc_opt_self();
  sub_1A3C2F1C4(0, &unk_1EB120E00, MEMORY[0x1E69E5E28]);
  v4 = sub_1A524C3D4();
  v15[0] = 0;
  v5 = [v3 dataWithJSONObject:v4 options:1 error:v15];

  v6 = v15[0];
  if (v5)
  {
    v7 = sub_1A5240EA4();
    v9 = v8;

    sub_1A524C6E4();
    v10 = sub_1A524C694();
    v12 = v11;
    sub_1A3C59280(v7, v9);
    if (v12)
    {
      return v10;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    v14 = v6;
    sub_1A5240B84();

    return swift_willThrow();
  }
}

void sub_1A4A520AC(uint64_t a1)
{
  if (!qword_1EB147D70)
  {
    sub_1A3ECD7F0(255, &qword_1EB147D60, &qword_1EB147D68, 0x1E69C42E8, MEMORY[0x1E69E62F8]);
    sub_1A3DBD9A0();
    v1 = sub_1A524CBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147D70);
    }
  }
}

uint64_t sub_1A4A52148(void *a1)
{
  v2 = v1;
  sub_1A4A520AC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5246F24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A3CB648C();
  (*(v10 + 16))(v12, v13, v9);
  v14 = a1;
  v15 = sub_1A5246F04();
  v16 = sub_1A524D244();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v6;
    v20 = v8;
    v21 = v19;
    *v18 = 138412290;
    v22 = a1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_1A3C1C000, v15, v16, "mediaLoadDidFailWithError: %@", v18, 0xCu);
    sub_1A3CB65E4(v21);
    v24 = v21;
    v8 = v20;
    v6 = v29;
    MEMORY[0x1A590EEC0](v24, -1, -1);
    v25 = v18;
    v2 = v30;
    MEMORY[0x1A590EEC0](v25, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v26 = OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_continuation;
  swift_beginAccess();
  result = (*(v6 + 48))(v2 + v26, 1, v5);
  if (!result)
  {
    (*(v6 + 16))(v8, v2 + v26, v5);
    v31 = a1;
    v28 = a1;
    sub_1A524CBD4();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1A4A52430(void *a1)
{
  v2 = v1;
  sub_1A4A520AC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5246F24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A3CB648C();
  (*(v10 + 16))(v12, v13, v9);
  v14 = a1;
  v15 = sub_1A5246F04();
  v16 = sub_1A524D244();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v6;
    v34 = v5;
    v18 = v17;
    v19 = v8;
    v20 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v14;
    *v20 = v14;
    v21 = v14;
    _os_log_impl(&dword_1A3C1C000, v15, v16, "didCompleteWith: %@", v18, 0xCu);
    sub_1A3CB65E4(v20);
    v22 = v20;
    v8 = v19;
    MEMORY[0x1A590EEC0](v22, -1, -1);
    v23 = v18;
    v6 = v33;
    v5 = v34;
    MEMORY[0x1A590EEC0](v23, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v24 = OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_results;
  swift_beginAccess();
  v25 = v14;
  MEMORY[0x1A5907D70]();
  if (*((*(v2 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A524CA74();
  }

  sub_1A524CAE4();
  swift_endAccess();
  v26 = OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_resourceLoader;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (v27 >> 62)
  {
    v28 = sub_1A524E2B4();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = *(v2 + v24);
  if (v29 >> 62)
  {
    result = sub_1A524E2B4();
    if (v28 != result)
    {
      return result;
    }
  }

  else
  {
    result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28 != result)
    {
      return result;
    }
  }

  v31 = OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_continuation;
  swift_beginAccess();
  result = (*(v6 + 48))(v2 + v31, 1, v5);
  if (!result)
  {
    (*(v6 + 16))(v8, v2 + v31, v5);
    v35 = *(v2 + v24);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A4A527FC(uint64_t a1)
{
  sub_1A4A52858(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4A52858(uint64_t a1)
{
  if (!qword_1EB147D90)
  {
    sub_1A4A520AC(255);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147D90);
    }
  }
}

uint64_t type metadata accessor for PXAssetEntityEditResourceLoader(uint64_t a1)
{
  result = qword_1EB1E8C38;
  if (!qword_1EB1E8C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4A52904(uint64_t a1)
{
  sub_1A4A52858(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A4A529A4(uint64_t a1)
{
  if (!qword_1EB147E08)
  {
    sub_1A3C2F1C4(255, &unk_1EB120E00, MEMORY[0x1E69E5E28]);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147E08);
    }
  }
}

uint64_t sub_1A4A52A28(uint64_t a1, uint64_t a2)
{
  sub_1A4A52858(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A4A52A90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier(uint64_t a1)
{
  result = qword_1EB1E8CE0;
  if (!qword_1EB1E8CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4A52B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v5 = type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = v6;
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v40 - v13;
  sub_1A4A52B40(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  sub_1A4A540F8(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 56);
  sub_1A4A54350(a1, v22, sub_1A4A52B40);
  v49 = a2;
  sub_1A4A54350(a2, &v22[v24], sub_1A4A52B40);
  v41 = v10;
  v25 = *(v10 + 48);
  if (v25(v22, 1, v9) == 1)
  {
    if (v25(&v22[v24], 1, v9) == 1)
    {
      v26 = sub_1A4A52B40;
      v27 = v22;
      return sub_1A4A5415C(v27, v26);
    }

    goto LABEL_6;
  }

  sub_1A4A54350(v22, v19, sub_1A4A52B40);
  if (v25(&v22[v24], 1, v9) == 1)
  {
    sub_1A4A5415C(v19, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
LABEL_6:
    sub_1A4A5415C(v22, sub_1A4A540F8);
    goto LABEL_7;
  }

  v37 = &v22[v24];
  v38 = v48;
  sub_1A4A541BC(v37, v48, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
  sub_1A4A532F0(&qword_1EB147E28, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, &unk_1A5345360);
  v39 = sub_1A524C594();
  sub_1A4A5415C(v38, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
  sub_1A4A5415C(v19, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
  result = sub_1A4A5415C(v22, sub_1A4A52B40);
  if ((v39 & 1) == 0)
  {
LABEL_7:
    sub_1A4A54350(v49, v16, sub_1A4A52B40);
    if (v25(v16, 1, v9) == 1)
    {
      v26 = sub_1A4A52B40;
      v27 = v16;
    }

    else
    {
      v28 = v47;
      sub_1A4A541BC(v16, v47, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
      if (*(v28 + *(v9 + 24)) == 1)
      {
        v29 = v46;
        sub_1A524CC74();
        v30 = sub_1A524CCB4();
        (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
        v31 = v45;
        sub_1A4A54350(v43, v45, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier);
        v32 = v48;
        sub_1A4A54350(v28, v48, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
        v33 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v34 = (v44 + *(v41 + 80) + v33) & ~*(v41 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = 0;
        *(v35 + 24) = 0;
        sub_1A4A541BC(v31, v35 + v33, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier);
        sub_1A4A541BC(v32, v35 + v34, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
        sub_1A3DCD53C(0, 0, v29, &unk_1A537F8E0, v35);

        sub_1A4A5415C(v29, sub_1A3DB4F20);
      }

      v26 = type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState;
      v27 = v28;
    }

    return sub_1A4A5415C(v27, v26);
  }

  return result;
}

void sub_1A4A531B4(uint64_t a1)
{
  if (!qword_1EB147E10)
  {
    type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier(255);
    sub_1A4A532F0(&qword_1EB13E6B8, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier, &unk_1A537F850);
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147E10);
    }
  }
}

unint64_t sub_1A4A53248()
{
  result = qword_1EB147E20;
  if (!qword_1EB147E20)
  {
    sub_1A4A52B40(255);
    sub_1A4A532F0(&qword_1EB147E28, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, &unk_1A5345360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147E20);
  }

  return result;
}

uint64_t sub_1A4A532F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4A53338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1A4A533D8;

  return sub_1A4A53640(a5);
}

uint64_t sub_1A4A533D8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A4A534D8, 0, 0);
}

uint64_t sub_1A4A534D8()
{
  sub_1A524CC54();
  *(v0 + 40) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4A5356C, v2, v1);
}

uint64_t sub_1A4A5356C()
{
  v1 = *(v0 + 32);

  sub_1A4A537EC(v1);

  return MEMORY[0x1EEE6DFA0](sub_1A4A535E0, 0, 0);
}

uint64_t sub_1A4A535E0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A53640(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A4A53660, 0, 0);
}

uint64_t sub_1A4A53660(uint64_t a1)
{
  result = sub_1A5244634();
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = [*(**(v1 + 24) + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary) librarySpecificFetchOptions];
    [v6 setFetchLimit_];
    [v6 setIncludePendingMemories_];
    [v6 setIncludeStoryMemories_];
    v7 = objc_opt_self();
    sub_1A3D9E6B8();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    *(v8 + 32) = v4;
    *(v8 + 40) = v5;
    v9 = sub_1A524CA14();

    v10 = [v7 fetchMemoriesWithLocalIdentifiers:v9 options:v6];

    v11 = [v10 objectAtIndex_];
    v12 = *(v1 + 8);

    return v12(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A4A537EC(void *a1)
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);

  if ((v10 & 1) == 0)
  {
    v11 = sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4(v11, &dword_1A3C1C000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v9);
    (*(v6 + 8))(v8, v5);
    v9 = v14[1];
  }

  if (v9)
  {
    type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier(0);
    sub_1A3FF29A0(v4);
    sub_1A3D63A8C(0);
    if ((*(*(v13 - 8) + 48))(v4, 1, v13) != 1)
    {
      sub_1A5245C94();
    }
  }

  else
  {
    __break(1u);
  }

  sub_1A4A5415C(v4, sub_1A3D63A58);
  __break(1u);
}

uint64_t sub_1A4A53AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  v3 = *(type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier(0) + 24);
  *(a2 + v3) = swift_getKeyPath();
  sub_1A4A52A90(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4A53B64(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1A4A52B40(0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v2 + 2032))(v6);
  sub_1A4A54350(v2, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1A4A541BC(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier);
  sub_1A4A531B4(0);
  sub_1A4A532F0(&qword_1EB147E18, sub_1A4A531B4, MEMORY[0x1E697FDF8]);
  sub_1A4A53248();
  sub_1A524B144();

  return sub_1A4A5415C(v8, sub_1A4A52B40);
}

void sub_1A4A53DD8(uint64_t a1)
{
  type metadata accessor for GenerativeStoryCreationViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A4A52A90(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A4A52A90(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t objectdestroyTm_94()
{
  v1 = (type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  j__swift_release(*(v2 + 8));
  v3 = v1[8];
  sub_1A4A52A90(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v5 = v4;
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(v2 + v3, 1, v4))
    {
      (*(v6 + 8))(v2 + v3, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A4A54078(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A4A52B74(a1, a2, v6);
}

void sub_1A4A540F8(uint64_t a1)
{
  if (!qword_1EB13CD90)
  {
    sub_1A4A52B40(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13CD90);
    }
  }
}

uint64_t sub_1A4A5415C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4A541BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4A54224()
{
  v2 = *(type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A4A53338(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_1A4A54350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4A543BC(void *a1, uint64_t a2)
{
  v8 = a2;
  sub_1A3C36318(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = v5 - v3;
  v6 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v6);
  v5[2] = v5 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5245BA4();
}

uint64_t sub_1A4A54894(uint64_t a1)
{
  sub_1A3C36318(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4A54920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

PXPhotosSearchFeatureAvailabilityManagerObjcHelper __swiftcall PXPhotosSearchFeatureAvailabilityManagerObjcHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A4A54AD4(char a1)
{
  sub_1A4A552B8();
  sub_1A4A54BD8();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1A524EAB4();
  }

  return v2 & 1;
}

unint64_t type metadata accessor for PXPhotosSearchFeatureAvailabilityManagerObjcHelper()
{
  result = qword_1EB1E8CF0;
  if (!qword_1EB1E8CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1E8CF0);
  }

  return result;
}

unint64_t sub_1A4A54BD8()
{
  result = qword_1EB147E30;
  if (!qword_1EB147E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147E30);
  }

  return result;
}

uint64_t sub_1A4A54C38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x4E65727574616566;
  v5 = 0xEF646E756F46746FLL;
  v6 = 0xD000000000000018;
  v7 = 0x80000001A53F9590;
  if (a1 != 4)
  {
    v6 = 0x4664656C62616E65;
    v7 = 0xEE0057535049726FLL;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x64656C6261736964;
  if (a1 != 1)
  {
    v9 = 0x64656C62616E65;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEF646E756F46746FLL;
      if (v10 != 0x4E65727574616566)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x80000001A53F9590;
      if (v10 != 0xD000000000000018)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE0057535049726FLL;
      if (v10 != 0x4664656C62616E65)
      {
LABEL_34:
        v13 = sub_1A524EAB4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x64656C6261736964)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64656C62616E65)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1A4A54E54(unsigned __int8 a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A4A54F78(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A4A5508C(uint64_t a1, unsigned __int8 a2)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

unint64_t sub_1A4A551AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A4A56FF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A4A551DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEF646E756F46746FLL;
  v6 = 0x4E65727574616566;
  v7 = 0x80000001A53F9590;
  v8 = 0xD000000000000018;
  if (v2 != 4)
  {
    v8 = 0x4664656C62616E65;
    v7 = 0xEE0057535049726FLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x64656C6261736964;
  if (v2 != 1)
  {
    v10 = 0x64656C62616E65;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1A4A552B8()
{
  if (qword_1EB1E8D00 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB1E8D08;
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_476B0F06ED59354F41C905D0821043F838PhotosSearchFeatureAvailabilityManager_features;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  v4 = v2 + 32;
  v5 = v3 + 1;
  while (--v5)
  {
    v6 = v4 + 16;
    ObjectType = swift_getObjectType();
    v8 = type metadata accessor for PhotosSearchReportAConcernFeature();
    v4 = v6;
    if (ObjectType == v8)
    {
      return (*(*(v6 - 8) + 40))(v0, ObjectType);
    }
  }

  return 3;
}

double sub_1A4A553A4(void *a1)
{
  if (qword_1EB1E8D00 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_1A4A55684(a1);
}

void sub_1A4A55408(void *a1, char a2)
{
  if (a2)
  {
    v3 = sub_1A524D244();
    sub_1A3C713E4(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], 1);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A52F8E10;
    v5 = a1;
    sub_1A3C652C8(0, &qword_1EB126160, MEMORY[0x1E69E7280], 1);
    v6 = sub_1A524C714();
    v8 = v7;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1A3D710E8();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
    v9 = sub_1A524DED4();
    sub_1A5246DF4(v3, &dword_1A3C1C000, v9, "Fraction of Assets Analyzed & Indexed was unable to be set up %@", 64, 2, v4);
  }

  else
  {
    sub_1A3C713E4(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], 1);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    v12 = MEMORY[0x1E69E6438];
    *(v11 + 56) = MEMORY[0x1E69E63B0];
    *(v11 + 64) = v12;
    *(v11 + 32) = *&a1 * 100.0;
    v13 = sub_1A524C6C4();
    v15 = v14;
    v16 = sub_1A524D224();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52F8E10;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1A3D710E8();
    *(v17 + 32) = v13;
    *(v17 + 40) = v15;
    sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
    v18 = sub_1A524DED4();
    sub_1A5246DF4(v16, &dword_1A3C1C000, v18, "Fraction of Assets Analyzed & Indexed: %{public}@", 49, 2, v17);
  }
}

double sub_1A4A55684(void *a1)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524BF64();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_476B0F06ED59354F41C905D0821043F838PhotosSearchFeatureAvailabilityManager_utilityQueue);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = sub_1A4A55408;
  v10[4] = 0;
  aBlock[4] = sub_1A4A573A0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_340;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  sub_1A524BF14();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v13 = MEMORY[0x1E69E7F60];
  sub_1A4A571F0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2AA8C(&qword_1EB12B1B0, &qword_1EB12B1C0, v13);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);

  return result;
}

double sub_1A4A5597C(uint64_t a1)
{
  if (qword_1EB1E8D00 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = qword_1EB1E8D08;
  if (!a1 || (v2 = *(a1 + 16)) == 0)
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v11 = OBJC_IVAR____TtC12PhotosUICoreP33_476B0F06ED59354F41C905D0821043F838PhotosSearchFeatureAvailabilityManager_features;
  swift_beginAccess();
  for (i = 0; i != v2; ++i)
  {
    if (*(*(v1 + v11) + 16))
    {
      type metadata accessor for PhotosSearchReportAConcernFeature();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v4 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v4)
  {
    v5 = (MEMORY[0x1E69E7CC0] + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 32);
      swift_unknownObjectRetain();
      v8(v1, ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

id sub_1A4A55BB4()
{
  result = [objc_allocWithZone(type metadata accessor for PhotosSearchFeatureAvailabilityManager()) init];
  qword_1EB1E8D08 = result;
  return result;
}

char *sub_1A4A55BE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v29 = sub_1A524D464();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_476B0F06ED59354F41C905D0821043F838PhotosSearchFeatureAvailabilityManager_features] = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtC12PhotosUICoreP33_476B0F06ED59354F41C905D0821043F838PhotosSearchFeatureAvailabilityManager_searchAIStatus;
  type metadata accessor for PhotosSearchAIStatus(0);
  *&v0[v8] = PhotosSearchAIStatus.__allocating_init()();
  v9 = OBJC_IVAR____TtC12PhotosUICoreP33_476B0F06ED59354F41C905D0821043F838PhotosSearchFeatureAvailabilityManager_isAppleInternal;
  v1[v9] = PFOSVariantHasInternalUI();
  v28 = OBJC_IVAR____TtC12PhotosUICoreP33_476B0F06ED59354F41C905D0821043F838PhotosSearchFeatureAvailabilityManager_utilityQueue;
  v10 = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v27[0] = "setting state to: ";
  v27[1] = v10;
  sub_1A524BF54();
  v31 = v7;
  sub_1A3D75A78(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v11 = MEMORY[0x1E69E8030];
  sub_1A4A571F0(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C2AA8C(&qword_1EB126E30, &qword_1EB126E40, v11);
  sub_1A524E224();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v29);
  *&v1[v28] = sub_1A524D4B4();
  v32.receiver = v1;
  v32.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v32, sel_init);
  v13 = objc_opt_self();
  type metadata accessor for PhotosSearchReportAConcernFeature();
  v14 = swift_allocObject();
  strcpy(v14 + 16, "ReportAConcern");
  v14[31] = -18;
  v14[32] = 0;
  v15 = v12;
  v16 = [v13 currentDevice];
  v17 = [v16 userInterfaceIdiom];

  v14[33] = v17 < 2;
  v18 = OBJC_IVAR____TtC12PhotosUICoreP33_476B0F06ED59354F41C905D0821043F838PhotosSearchFeatureAvailabilityManager_features;
  swift_beginAccess();
  v19 = *&v15[v18];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v15[v18] = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1A4A56EAC(0, v19[2] + 1, 1, v19);
    *&v15[v18] = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1A4A56EAC((v21 > 1), v22 + 1, 1, v19);
  }

  v19[2] = v22 + 1;
  v23 = &v19[2 * v22];
  v23[4] = v14;
  v23[5] = &off_1F1736F98;
  *&v15[v18] = v19;
  v24 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v24);
  v27[-2] = v15;
  MEMORY[0x1EEE9AC00](v25);
  v27[-2] = v15;
  sub_1A52415B4();

  return v15;
}

double sub_1A4A560C4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_476B0F06ED59354F41C905D0821043F838PhotosSearchFeatureAvailabilityManager_features;
  swift_beginAccess();
  if (*(*(a1 + v2) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

double sub_1A4A56194(uint64_t a1)
{
  sub_1A4A571F0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;

  sub_1A3EA52F4(0, 0, v3, &unk_1A537FBB0, v8);

  return result;
}

uint64_t sub_1A4A56334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4A563CC, v6, v5);
}

uint64_t sub_1A4A563CC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(swift_task_alloc() + 16) = Strong;
    *(swift_task_alloc() + 16) = Strong;
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1A4A56538()
{
  v13 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A524E404();

  v2 = *(v0 + 32);
  v3 = 0xE700000000000000;
  v4 = 0x4E65727574616566;
  v5 = 0x80000001A53F9590;
  v6 = 0xD000000000000018;
  if (v2 != 4)
  {
    v6 = 0x4664656C62616E65;
    v5 = 0xEE0057535049726FLL;
  }

  if (v2 == 3)
  {
    v5 = 0xEF646E756F46746FLL;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656C62616E65;
  if (v2 == 1)
  {
    v8 = 0x64656C6261736964;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (*(v0 + 32))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*(v0 + 32))
  {
    v3 = v7;
  }

  if (*(v0 + 32) <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (*(v0 + 32) <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  MEMORY[0x1A5907B60](v10, v11);

  if (*(v0 + 32) > 2u || *(v0 + 32))
  {
    v12 = sub_1A524EAB4();

    if ((v12 & 1) == 0)
    {
      sub_1A3C3335C();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
  }

  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4A56AA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A3C52C70(0, &qword_1EB120A48, off_1E771F5D8);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 overriddenCentralizedFeedbackMode];

  if ((v7 - 2) < 3)
  {
    sub_1A3C3335C();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (PLSearchSemanticSearchQueriesSupported() && *(v2 + 33) == 1)
  {
    if (*(a1 + OBJC_IVAR____TtC12PhotosUICoreP33_476B0F06ED59354F41C905D0821043F838PhotosSearchFeatureAvailabilityManager_isAppleInternal) == 1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }
  }

  else
  {
    v8 = 1;
  }

  *(v2 + 32) = v8;
  sub_1A4A56538();
}

uint64_t sub_1A4A56E70()
{

  return swift_deallocClassInstance();
}

void *sub_1A4A56EAC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A3C713E4(0, &qword_1EB147E78, &qword_1EB147E80, &protocol descriptor for PhotosSearchFeature, 0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3C652C8(0, &qword_1EB147E80, &protocol descriptor for PhotosSearchFeature, 0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A4A56FF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A524E824();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A4A5706C()
{
  result = qword_1EB147E40;
  if (!qword_1EB147E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147E40);
  }

  return result;
}

unint64_t sub_1A4A570C4()
{
  result = qword_1EB147E48;
  if (!qword_1EB147E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147E48);
  }

  return result;
}

unint64_t sub_1A4A5711C()
{
  result = qword_1EB147E50;
  if (!qword_1EB147E50)
  {
    sub_1A4A572F4(255, &qword_1EB147E58, &type metadata for PhotosSearchFeatures, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147E50);
  }

  return result;
}

void sub_1A4A571F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4A57254(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A4A56334(a1, v5, v6, v4);
}

void sub_1A4A572F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double (*sub_1A4A57344())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A4A571E8;
}

void sub_1A4A573A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_allocWithZone(MEMORY[0x1E6978828]) init];
  v10 = 0;
  v4 = [v1 featureAvailabilityForFeature:3 readOptions:v3 error:&v10];

  if (v4)
  {
    v5 = v10;
    [v4 fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
    v2(v6, 0);
  }

  else
  {
    v7 = v10;
    v8 = sub_1A5240B84();

    swift_willThrow();
    v9 = v8;
    v2(v8, 1);
  }
}

uint64_t type metadata accessor for MacSyncedAssetsNotificationItem(uint64_t a1)
{
  result = qword_1EB162CE0;
  if (!qword_1EB162CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4A574F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1A5241144();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a7, a1, v14);
  v16 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  v17 = (a7 + v16[5]);
  *v17 = a2;
  v17[1] = a3;
  v18 = (a7 + v16[6]);
  *v18 = a4;
  v18[1] = a5;
  sub_1A4A57630(a6, v22);
  v19 = v16[7];
  sub_1A4A57694(0);
  SendableTransfer.init(wrappedValue:)(v22, v20, a7 + v19);
  sub_1A4A5772C(a6);
  return (*(v15 + 8))(a1, v14);
}

uint64_t sub_1A4A57630(uint64_t a1, uint64_t a2)
{
  sub_1A4A57694(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4A576C8()
{
  result = qword_1EB125090;
  if (!qword_1EB125090)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB125090);
  }

  return result;
}

uint64_t sub_1A4A5772C(uint64_t a1)
{
  sub_1A4A57694(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4A57788()
{
  v1 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  sub_1A4A5782C(v0 + *(v1 + 28), &v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  v2 = *(&v6 + 1);
  if (!*(&v6 + 1))
  {
    return sub_1A4A5772C(v8);
  }

  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v8, *(&v6 + 1));
  (*(v3 + 8))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_1A4A5782C(uint64_t a1, uint64_t a2)
{
  sub_1A4A578C0(0, &qword_1EB125B08, sub_1A4A57694, type metadata accessor for SendableTransfer);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4A578C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4A57924(__n128 a1)
{
  sub_1A5240ED4();

  return sub_1A524CEE4();
}

uint64_t sub_1A4A579EC@<X0>(uint64_t *a1@<X8>)
{
  sub_1A5240ED4();
  result = sub_1A524CEE4();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A4A57A18()
{
  sub_1A4A57BB4(&qword_1EB1253C0, &unk_1A537FBC0);

    ;
  }
}

void sub_1A4A57A70()
{
  sub_1A4A57BB4(&qword_1EB1253C0, &unk_1A537FBC0);

    ;
  }
}

void sub_1A4A57AF0(uint64_t a1)
{
  sub_1A5241144();
  if (v1 <= 0x3F)
  {
    sub_1A4A578C0(319, &qword_1EB125B08, sub_1A4A57694, type metadata accessor for SendableTransfer);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4A57BB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MacSyncedAssetsNotificationItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1A4A57BFC@<D0>(uint64_t a1@<X8>)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v25 = sub_1A524B574();
  sub_1A524A1A4();
  v5 = sub_1A524A154();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_1A524A1B4();
  sub_1A441183C(v4);
  KeyPath = swift_getKeyPath();
  v8 = sub_1A524B4A4();
  v9 = swift_getKeyPath();
  v10 = sub_1A524A064();
  LOBYTE(v27) = 1;
  v11 = sub_1A524A064();
  sub_1A524BC74();
  sub_1A52481F4();
  *&v26[7] = v27;
  *&v26[23] = v28;
  *&v26[39] = v29;
  sub_1A44C8814(0, &qword_1EB13C548, sub_1A44C8784, sub_1A3E42C88);
  v13 = (a1 + *(v12 + 36));
  v14 = *(sub_1A5248A14() + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1A52494A4();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #10.0 }

  *v13 = _Q0;
  sub_1A3E42C88(0);
  *&v13[*(v22 + 36)] = 256;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v23 = *&v26[16];
  *(a1 + 97) = *v26;
  *a1 = v25;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v6;
  *(a1 + 24) = v9;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 80) = 1;
  *(a1 + 88) = 1;
  *(a1 + 96) = v11;
  *(a1 + 113) = v23;
  result = *&v26[32];
  *(a1 + 129) = *&v26[32];
  *(a1 + 144) = *&v26[47];
  return result;
}

uint64_t sub_1A4A57E90(uint64_t a1, double a2)
{
  v3 = sub_1A5243C24();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A52407E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(*a1 + 184))(v10);
  sub_1A52408B4();
  sub_1A52407F4();
  sub_1A5243C14();
  v13 = sub_1A5243C04();
  (*(*a1 + 136))(v13);
  (*(v6 + 16))(v8, v12, v5);
  sub_1A5243554();
  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_1A4A5810C@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v1 = sub_1A5243934();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v9 - v6;
  sub_1A5243904();
  (*(v2 + 16))(v4, v7, v1);
  v10 = 1;

  sub_1A524B954();
  v9[0] = v11;
  sub_1A44C8814(0, &qword_1EB13C548, sub_1A44C8784, sub_1A3E42C88);
  sub_1A5243544();
  sub_1A44C8A1C();
  sub_1A44C89D4(&qword_1EB12EAA8, MEMORY[0x1E69C2510], MEMORY[0x1E69C2508]);
  sub_1A5242914();
  return (*(v2 + 8))(v7, v1);
}

void sub_1A4A583C0()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = sub_1A5241144();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = v0[2];
  if ([v16 shouldShowBanner])
  {
    sub_1A5241104();
    v17 = [v16 bannerTitle];
    v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v9;
    v18 = v8;
    v35 = v8;
    v19 = v17;
    v20 = sub_1A524C674();
    v31 = v21;
    v32 = v20;

    v22 = [v16 bannerSubtitle];
    v23 = sub_1A524C674();
    v30 = v24;

    (*(v9 + 16))(v11, v15, v18);
    v37[3] = v2;
    v37[4] = &off_1F1737090;
    v37[0] = v1;

    sub_1A4A574F8(v11, v32, v31, v23, v30, v37, v7);
    v37[0] = v1;
    v25 = v33;
    sub_1A4A59468(v7, v33);
    v26 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v27 = swift_allocObject();
    sub_1A4A594CC(v25, v27 + v26);
    sub_1A4A593CC(&qword_1EB147E98, v28, type metadata accessor for MacSyncedAssetsNotificationListManager, &unk_1A537FE98);
    sub_1A5245F44();
  }

  swift_beginAccess();

  sub_1A52458B4();
}

void (*sub_1A4A58CD0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 48);

  return sub_1A4A58D68;
}

void sub_1A4A58D68(uint64_t a1, char a2)
{
  v2 = *(*a1 + 24);
  if (a2)
  {

    sub_1A4A58A5C(v3);
  }

  sub_1A4A58A5C(v2);
}

void sub_1A4A58DCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1A5246184();
}

double sub_1A4A58E44@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MacSyncedAssetsNotificationListManager.Mutator();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;

  return result;
}

void sub_1A4A58E94(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1A4A593CC(&qword_1EB125108, a2, type metadata accessor for MacSyncedAssetsNotificationListManager, &unk_1A537FF6C);

  sub_1A5245C54();
}

void sub_1A4A58F18(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1A4A593CC(&qword_1EB147E98, a2, type metadata accessor for MacSyncedAssetsNotificationListManager, &unk_1A537FE98);

  sub_1A5245F44();
}

uint64_t sub_1A4A593CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_1A4A59414()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A4A583C0();
  }

  return result;
}

uint64_t sub_1A4A59468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4A594CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4A59530(uint64_t *a1)
{
  v3 = *(type metadata accessor for MacSyncedAssetsNotificationItem(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1A4A5878C(a1, v4);
}

uint64_t sub_1A4A595A0(uint64_t a1)
{
  v2 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4A595FC(uint64_t a1)
{
  if (!qword_1EB147EA0)
  {
    type metadata accessor for MacSyncedAssetsNotificationItem(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147EA0);
    }
  }
}

void sub_1A4A59658()
{
  swift_getKeyPath();
  (*(*v0 + 288))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4A596CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A4A59730(uint64_t a1, uint64_t a2)
{
  v5 = v2[2] == a1 && v2[3] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[2] = a1;
    v2[3] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 296))(v8);
  }

  return result;
}

void sub_1A4A59870()
{
  swift_getKeyPath();
  (*(*v0 + 288))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4A598E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A4A59990(uint64_t a1, uint64_t a2)
{
  v5 = v2[4] == a1 && v2[5] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 296))(v8);
  }

  return result;
}

void sub_1A4A59AD0(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0xE000000000000000;
  v2[4] = 0;
  v2[5] = 0xE000000000000000;
  sub_1A5241604();
  sub_1A4A59468(a1, v2 + OBJC_IVAR____TtC12PhotosUICore32MacSyncedAssetsNotificationModel__item);
  sub_1A4A59CA0(a1);
}

uint64_t sub_1A4A59B48(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 296))();

  return sub_1A4A595A0(a1);
}

uint64_t sub_1A4A59BF0()
{
  v1 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 256))(v2);
  sub_1A4A57788();
  return sub_1A4A595A0(v4);
}

void sub_1A4A59CA0(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for MacSyncedAssetsNotificationItem(0) + 20));
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v1 + 16) == *v2 && *(v1 + 24) == v3;
  if (!v5 && (sub_1A524EAB4() & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v4;
    v9 = v3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A4A59F00(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for MacSyncedAssetsNotificationItem(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return sub_1A4A59FC0;
}

void sub_1A4A59FC0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  v5 = *(v3 + 32);
  if ((a2 & 1) == 0)
  {
    (*(**(v3 + 24) + 256))(v4);
    sub_1A4A59CA0(v5);
  }

  free(v5);

  free(v3);
}

uint64_t sub_1A4A5A05C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 288))();

  v3 = OBJC_IVAR____TtC12PhotosUICore32MacSyncedAssetsNotificationModel__item;
  swift_beginAccess();
  return sub_1A4A59468(v1 + v3, a1);
}

uint64_t sub_1A4A5A144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4A59468(a1, v6);
  return (*(**a2 + 264))(v6);
}

void sub_1A4A5A204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1A4A59468(a2, &v12 - v8);
  v10 = OBJC_IVAR____TtC12PhotosUICore32MacSyncedAssetsNotificationModel__item;
  swift_beginAccess();
  sub_1A4A5ABF0(v9, a1 + v10);
  v11 = swift_endAccess();
  (*(*a1 + 256))(v11);
  sub_1A4A59CA0(v6);
}

uint64_t (*sub_1A4A5A358(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32MacSyncedAssetsNotificationModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4A5AA70(&qword_1EB147EA8, type metadata accessor for MacSyncedAssetsNotificationModel, &unk_1A5380170);
  sub_1A52415F4();

  v4[7] = sub_1A4A59F00(v4);
  return sub_1A4A5A4A8;
}

void sub_1A4A5A4A8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t type metadata accessor for MacSyncedAssetsNotificationModel(uint64_t a1)
{
  result = qword_1EB1E9450;
  if (!qword_1EB1E9450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4A5A588()
{
  v1 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5.n128_f64[0] = (*(*v0 + 256))(v2);
  v6 = sub_1A4A57924(v5);
  sub_1A4A595A0(v4);
  return v6;
}

uint64_t sub_1A4A5A790()
{

  sub_1A4A595A0(v0 + OBJC_IVAR____TtC12PhotosUICore32MacSyncedAssetsNotificationModel__item);
  v1 = OBJC_IVAR____TtC12PhotosUICore32MacSyncedAssetsNotificationModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void (*sub_1A4A5A990(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 272))();
  return sub_1A3D3D728;
}

uint64_t sub_1A4A5AA70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4A5AABC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 280))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4A5AB18(uint64_t a1)
{
  result = type metadata accessor for MacSyncedAssetsNotificationItem(319);
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A4A5ABF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1A4A5AC58()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EB18D7D8 = result;
  return result;
}

uint64_t sub_1A4A5ACAC()
{
  v0 = sub_1A5246944();
  __swift_allocate_value_buffer(v0, qword_1EB1EC1D8);
  __swift_project_value_buffer(v0, qword_1EB1EC1D8);
  if (qword_1EB18D7D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB18D7D8;
  return sub_1A5246934();
}

uint64_t sub_1A4A5AD8C()
{
  v0 = sub_1A5246944();
  __swift_allocate_value_buffer(v0, qword_1EB1EB110);
  __swift_project_value_buffer(v0, qword_1EB1EB110);
  if (qword_1EB18D7D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB18D7D8;
  return sub_1A5246934();
}

uint64_t sub_1A4A5AE74()
{
  v0 = sub_1A5246944();
  __swift_allocate_value_buffer(v0, qword_1EB1EC1F0);
  __swift_project_value_buffer(v0, qword_1EB1EC1F0);
  if (qword_1EB18D7D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB18D7D8;
  return sub_1A5246934();
}

uint64_t sub_1A4A5AF58(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EB1578F0 == -1)
  {
    if (qword_1EB1578F8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EB1578F8)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EB1578E8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EB1578DC > a3)
      {
        return 1;
      }

      if (dword_1EB1578DC >= a3)
      {
        return dword_1EB1578E0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EB1578F8;
  if (qword_1EB1578F8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EB1578F8 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1A590DEF0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EB1578DC, &dword_1EB1578E0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

void sub_1A4A5D918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4A5EC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(v27);
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PXSetupPXVideoRequestOptionsForDeliveryQuality(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v5 = v3;
        v4 = 2;
        break;
      case 4:
        v5 = v3;
        v4 = 3;
        break;
      case 5:
        v5 = v3;
        v4 = 0;
        break;
      default:
        goto LABEL_16;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        goto LABEL_16;
      }

      v5 = v3;
      [v3 setDeliveryMode:2];
      [v5 setAllowMediumHighQuality:1];
      goto LABEL_15;
    }

    v5 = v3;
    v4 = 4;
  }

  else
  {
    v5 = v3;
    v4 = 1;
  }

  [v3 setDeliveryMode:v4];
LABEL_15:
  v3 = v5;
LABEL_16:
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4A62D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__235(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _isEqualMemories(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a2;
  v4 = [a1 assetCollection];
  v5 = [v3 assetCollection];

  v6 = [v4 isEqual:v5];
  return v6;
}

uint64_t _isEqualEntries(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [v3 memories];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___isEqualEntries_block_invoke;
  v9[3] = &unk_1E77417A0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_1A4A639D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___isEqualEntries_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) memories];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___isEqualEntries_block_invoke_2;
  v10[3] = &unk_1E772C828;
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v8;
  v13 = a4;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v10];
}

void ___isEqualEntries_block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = a2;
  v8 = [v6 assetCollection];
  v9 = [v7 assetCollection];

  LODWORD(v7) = [v8 isEqual:v9];
  if (v7)
  {
    v10 = a1[6];
    *(*(a1[5] + 8) + 24) = 1;
    *v10 = 1;
    *a4 = 1;
  }
}

id PXCuratedLibrarySpritePredicate(char a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PXCuratedLibrarySpritePredicate_block_invoke;
  v7[3] = &unk_1E772C8A0;
  v9 = a1;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

BOOL __PXCuratedLibrarySpritePredicate_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (*(a1 + 40) == *(a2 + 216))
  {
    if (*(a1 + 32))
    {
      v7 = [v5 rootLayout];
      v8 = v7 == *(a1 + 32);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1A4A67DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4A697B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getICQOfferManagerClass_block_invoke(uint64_t a1)
{
  iCloudQuotaUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICQOfferManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICQOfferManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getICQOfferManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PXCloudQuotaUpsellSheetManager.m" lineNumber:19 description:{@"Unable to find class %s", "ICQOfferManager"}];

    __break(1u);
  }
}

void *__getICQUIUpsellTriggerEventAppLaunchSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIUpsellTriggerEventAppLaunch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIUpsellTriggerEventAppLaunchSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *iCloudQuotaUILibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __iCloudQuotaUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E772C998;
    v6 = 0;
    iCloudQuotaUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = iCloudQuotaUILibraryCore_frameworkLibrary;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *iCloudQuotaUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PXCloudQuotaUpsellSheetManager.m" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __iCloudQuotaUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudQuotaUILibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *_DeviceFamilyDescription(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid PXSharedLibraryLegacyDeviceFamily: %ld", a1];
  }

  else
  {
    v2 = off_1E772CA70[a1];
  }

  return v2;
}

uint64_t PXSharedLibraryLegacyDeviceOperatingSystemForProductType(void *a1)
{
  result = _DeviceFamilyForProductType(a1);
  if (result)
  {
    return qword_1A53814B8[result - 1];
  }

  return result;
}

uint64_t _DeviceFamilyForProductType(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"([a-z]+)([0-9]+) options:([0-9]+)" error:{1, 0}];
  v3 = [v2 firstMatchInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];
  v4 = v3;
  if (v3 && [v3 numberOfRanges] == 4)
  {
    v5 = 1;
    v6 = [v4 rangeAtIndex:1];
    v8 = [v1 substringWithRange:{v6, v7}];
    v9 = [v8 lowercaseString];

    v10 = v9;
    if (([v10 isEqualToString:@"imac"] & 1) == 0)
    {
      if ([v10 isEqualToString:@"imacpro"])
      {
        v5 = 2;
      }

      else if ([v10 isEqualToString:@"macmini"])
      {
        v5 = 3;
      }

      else if ([v10 isEqualToString:@"macpro"])
      {
        v5 = 4;
      }

      else if ([v10 isEqualToString:@"macbook"])
      {
        v5 = 5;
      }

      else if ([v10 isEqualToString:@"macbookpro"])
      {
        v5 = 6;
      }

      else if ([v10 isEqualToString:@"macbookair"])
      {
        v5 = 7;
      }

      else if ([v10 isEqualToString:@"mac"])
      {
        v5 = 8;
      }

      else if ([v10 isEqualToString:@"iphone"])
      {
        v5 = 9;
      }

      else if ([v10 isEqualToString:@"ipod"])
      {
        v5 = 10;
      }

      else if ([v10 isEqualToString:@"ipad"])
      {
        v5 = 11;
      }

      else if ([v10 isEqualToString:@"appletv"])
      {
        v5 = 12;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t PXSharedLibraryVersionForSpecifier(void *a1, uint64_t *a2)
{
  v3 = a1;
  if ([v3 length])
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXSharedLibraryVersionForSpecifier(NSString *__strong _Nonnull, PXSharedLibraryLegacyDeviceVersion * _Nonnull)"}];
    [v17 handleFailureInFunction:v18 file:@"PXSharedLibraryLegacyDevicesUtilities.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"compositSpecifier.length"}];

    if (a2)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXSharedLibraryVersionForSpecifier(NSString *__strong _Nonnull, PXSharedLibraryLegacyDeviceVersion * _Nonnull)"}];
  [v19 handleFailureInFunction:v20 file:@"PXSharedLibraryLegacyDevicesUtilities.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"version"}];

LABEL_3:
  v4 = [v3 componentsSeparatedByString:@""];;
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
    if (![v5 length])
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSharedLibraryLegacyDeviceVersion _VersionForSpecifier(NSString *__strong)"];
      [v21 handleFailureInFunction:v22 file:@"PXSharedLibraryLegacyDevicesUtilities.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"specifier.length"}];
    }

    v6 = [v5 componentsSeparatedByString:@"."];
    v7 = _UnsignedIntegerValueAtIndex(v6, 0, 1uLL);
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v7, v9 = _UnsignedIntegerValueAtIndex(v6, 1uLL, 0), v9 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
      v13 = _UnsignedIntegerValueAtIndex(v6, 2uLL, 0);
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = 0;
      }

      else
      {
        v10 = v13;
      }
    }

    v15 = v11 == 0x7FFFFFFFFFFFFFFFLL && v8 == 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL;
    v12 = !v15;
    if (!v15)
    {
      *a2 = v8;
      a2[1] = v11;
      a2[2] = v10;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t _UnsignedIntegerValueAtIndex(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if ([v5 count] > a2)
  {
    v7 = [v5 objectAtIndexedSubscript:a2];
    v8 = [v7 integerValue];

    if (v8 >= a3)
    {
      v6 = v8;
    }
  }

  return v6;
}

BOOL PXSharedLibraryIsLegacyDevice(uint64_t a1, void *a2)
{
  if (!a1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXSharedLibraryIsLegacyDevice(PXSharedLibraryLegacyDeviceOperatingSystem, PXSharedLibraryLegacyDeviceVersion)"}];
    [v9 handleFailureInFunction:v10 file:@"PXSharedLibraryLegacyDevicesUtilities.m" lineNumber:279 description:{@"Invalid parameter not satisfying: %@", @"operatingSystem != PXSharedLibraryLegacyDeviceOperatingSystemUnknown"}];
  }

  if (*a2 == 0x7FFFFFFFFFFFFFFFLL && a2[1] == 0x7FFFFFFFFFFFFFFFLL && a2[2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXSharedLibraryIsLegacyDevice(PXSharedLibraryLegacyDeviceOperatingSystem, PXSharedLibraryLegacyDeviceVersion)"}];
    [v11 handleFailureInFunction:v12 file:@"PXSharedLibraryLegacyDevicesUtilities.m" lineNumber:280 description:{@"Invalid parameter not satisfying: %@", @"!PXSharedLibraryLegacyDeviceVersionIsNull(version)"}];
  }

  result = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return *a2 < 0xDuLL;
    }

    if (a1 != 4)
    {
      return result;
    }
  }

  else if ((a1 - 1) >= 2)
  {
    if (!a1)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXSharedLibraryIsLegacyDevice(PXSharedLibraryLegacyDeviceOperatingSystem, PXSharedLibraryLegacyDeviceVersion)"}];
      [v7 handleFailureInFunction:v8 file:@"PXSharedLibraryLegacyDevicesUtilities.m" lineNumber:285 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    return result;
  }

  return *a2 < 0x10uLL || *a2 == 16 && !a2[1];
}

void PXSharedLibraryFetchLegacyDevices(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryFetchLegacyDevices(void (^__strong _Nonnull)(NSArray<PXSharedLibraryLegacyDevice *> *__strong, NSError * _Nullable __strong))"}];
    [v7 handleFailureInFunction:v8 file:@"PXSharedLibraryLegacyDevicesUtilities.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevice: Fetching all devices...", buf, 2u);
  }

  v3 = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
  v4 = [v3 cachedPrimaryAppleAccount];

  v5 = [objc_alloc(MEMORY[0x1E698B8A0]) initWithAccount:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PXSharedLibraryFetchLegacyDevices_block_invoke;
  v9[3] = &unk_1E772CA50;
  v10 = v1;
  v6 = v1;
  [v5 performRequestWithHandler:v9];
}

void __PXSharedLibraryFetchLegacyDevices_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PXSharedLibraryFetchLegacyDevices_block_invoke_2;
  aBlock[3] = &unk_1E772C9E0;
  v25 = *(a1 + 32);
  v8 = _Block_copy(aBlock);
  if (v6)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryFetchLegacyDevices(void (^__strong _Nonnull)(NSArray<PXSharedLibraryLegacyDevice *> *__strong, NSError * _Nullable __strong))_block_invoke"}];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v10 px_descriptionForAssertionMessage];
      [v17 handleFailureInFunction:v18 file:@"PXSharedLibraryLegacyDevicesUtilities.m" lineNumber:333 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"response", v20, v21}];
    }

    v11 = [v10 devices];
    v12 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 count];
      *buf = 134217984;
      v27 = v13;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevice: Fetched %lu candidate devices", buf, 0xCu);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __PXSharedLibraryFetchLegacyDevices_block_invoke_123;
    v22[3] = &unk_1E772CA08;
    v23 = v9;
    v14 = v9;
    [v11 enumerateObjectsUsingBlock:v22];
    v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_771];
    v8[2](v8, v15, 0);
  }

  else
  {
    v16 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "PXSharedLibraryLegacyDevice: Failed to fetch devices: %@", buf, 0xCu);
    }

    (v8)[2](v8, 0, v7);
  }
}

void __PXSharedLibraryFetchLegacyDevices_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[PXSharedLibrarySettings sharedInstance];
  v8 = [v7 simulateSlowLegacyDevicesFetchInFallback];

  if (v8)
  {
    v9 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevice: [DEBUG] Simulating slow fetch - delaying completion by 10s", buf, 2u);
    }

    v10 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PXSharedLibraryFetchLegacyDevices_block_invoke_108;
    block[3] = &unk_1E774A0E0;
    v11 = &v27;
    v12 = *(a1 + 32);
    v26 = v6;
    v27 = v12;
    v13 = &v25;
    v14 = &v26;
    v25 = v5;
    v15 = v6;
    v16 = v5;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __PXSharedLibraryFetchLegacyDevices_block_invoke_2_110;
    v20[3] = &unk_1E774A0E0;
    v11 = &v23;
    v17 = *(a1 + 32);
    v22 = v6;
    v23 = v17;
    v13 = &v21;
    v14 = &v22;
    v21 = v5;
    v18 = v6;
    v19 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v20);
  }
}

void __PXSharedLibraryFetchLegacyDevices_block_invoke_123(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 name];
  v4 = [v2 model];
  v5 = [v2 swVersion];
  v6 = [(__CFString *)v3 length];
  v7 = @"-";
  if (v6)
  {
    v7 = v3;
  }

  v8 = v7;
  v9 = _DeviceFamilyForProductType(v4);
  if (v9)
  {
    v10 = v9;
    v11 = qword_1A53814B8[v9 - 1];
    v51 = 0uLL;
    v52 = 0;
    if ((PXSharedLibraryVersionForSpecifier(v5, &v51) & 1) == 0)
    {
      v14 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = PXSharedLibraryLegacyDeviceOperatingSystemDescription(v11);
        *buf = 138413570;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        *&buf[22] = 2112;
        v54 = v8;
        v55 = 2114;
        v56 = v4;
        v57 = 2114;
        v58 = v5;
        v59 = 2114;
        v60 = v26;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "PXSharedLibraryLegacyDevice: Skipping candidate device with unknown os version: <%@:%p, name: %@, model: %{public}@, swVersion: %{public}@, os: %{public}@>", buf, 0x3Eu);
      }

      goto LABEL_40;
    }

    *buf = v51;
    *&buf[16] = v52;
    v48 = v11;
    if (!PXSharedLibraryIsLegacyDevice(v11, buf))
    {
      v12 = +[PXSharedLibrarySettings sharedInstance];
      v13 = [v12 includeNonLegacyDevicesInFallback];

      v14 = PLSharedLibraryGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (!v13)
      {
        if (v15)
        {
          v28 = objc_opt_class();
          v29 = PXSharedLibraryLegacyDeviceOperatingSystemDescription(v48);
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu.%lu.%lu", v51, v52];
          *buf = 138413826;
          *&buf[4] = v28;
          *&buf[12] = 2048;
          *&buf[14] = v2;
          *&buf[22] = 2112;
          v54 = v8;
          v55 = 2114;
          v56 = v4;
          v57 = 2114;
          v58 = v5;
          v59 = 2114;
          v60 = v29;
          v61 = 2114;
          v62 = v30;
          _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevice: Skipping supported device: <%@:%p, name: %@, model: %{public}@, swVersion: %{public}@, os: %{public}@, version: %{public}@>", buf, 0x48u);
        }

        goto LABEL_40;
      }

      if (v15)
      {
        v16 = objc_opt_class();
        *buf = 138412546;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevice: [DEBUG] Including supported device: <%@:%p>", buf, 0x16u);
      }
    }

    v17 = [v2 modelSmallPhotoURL1x];
    v18 = [v2 modelSmallPhotoURL2x];
    v19 = [v2 modelSmallPhotoURL3x];
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v17;
    }

    v45 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v22 = [MEMORY[0x1E695DFF8] URLWithString:v21];
    v46 = v22;
    v47 = v8;
    v44 = v18;
    if (!v22)
    {
      v23 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        *buf = 138413314;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        *&buf[22] = 2114;
        v54 = v17;
        v55 = 2114;
        v56 = v18;
        v57 = 2114;
        v58 = v45;
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_ERROR, "PXSharedLibraryLegacyDevice: No icon URL for legacy device: <%@:%p>, 1x:%{public}@, 2x:%{public}@, 3x:%{public}@", buf, 0x34u);
      }

      v14 = 0;
      goto LABEL_34;
    }

    v50 = 0;
    v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v22 options:0 error:&v50];
    v23 = v50;
    if (v14)
    {
      if ([v14 length])
      {
LABEL_34:

        v33 = PLSharedLibraryGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v43 = v5;
          v34 = v17;
          v35 = objc_opt_class();
          v36 = PXSharedLibraryLegacyDeviceOperatingSystemDescription(v48);
          v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu.%lu.%lu", v51, v52];
          *buf = 138414082;
          *&buf[4] = v35;
          v17 = v34;
          v5 = v43;
          *&buf[12] = 2048;
          *&buf[14] = v2;
          *&buf[22] = 2112;
          v54 = v47;
          v55 = 2114;
          v56 = v4;
          v57 = 2114;
          v58 = v43;
          v59 = 2114;
          v60 = v36;
          v61 = 2114;
          v62 = v37;
          v63 = 1024;
          v64 = v10 != 10;
          _os_log_impl(&dword_1A3C1C000, v33, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevice: Found legacy device: <%@:%p, name: %@, model: %{public}@, swVersion: %{public}@, os: %{public}@, version: %{public}@, upgradeable: %d>", buf, 0x4Eu);
        }

        v38 = [PXSharedLibraryLegacyDevice alloc];
        if (v3)
        {
          v39 = v3;
        }

        else
        {
          v39 = &stru_1F1741150;
        }

        v40 = [(PXSharedLibraryLegacyDevice *)v38 initWithName:v39 iconData:v14 operatingSystem:v48 upgradeable:v10 != 10];
        [*(a1 + 32) addObject:v40];

        v8 = v47;
LABEL_40:

        goto LABEL_41;
      }

      v41 = v17;
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[NSObject length](v14, "length")];
    }

    else
    {
      v41 = v17;
      v42 = @"-";
    }

    v31 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      *buf = 138413314;
      *&buf[4] = v32;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      *&buf[22] = 2114;
      v54 = v46;
      v55 = 2114;
      v56 = v42;
      v57 = 2112;
      v58 = v23;
      _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_ERROR, "PXSharedLibraryLegacyDevice: No icon for legacy device: <%@:%p>, url: %{public}@, data: %{public}@, error: %@", buf, 0x34u);
    }

    v17 = v41;
    goto LABEL_34;
  }

  v24 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2048;
    *&buf[14] = v2;
    *&buf[22] = 2112;
    v54 = v8;
    v55 = 2114;
    v56 = v4;
    v57 = 2114;
    v58 = v5;
    _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevice: Skipping candidate device with unknown or ignored device family: <%@:%p, name: %@, model: %{public}@, swVersion: %{public}@>", buf, 0x34u);
  }

LABEL_41:
}

uint64_t __PXSharedLibraryFetchLegacyDevices_block_invoke_136(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

void sub_1A4A6E1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4A74EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4A760E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4A78798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ClippingAnimationIdentifierForClip(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = MEMORY[0x1E696AD98];
  v5 = [v2 identifier];

  v6 = [v4 numberWithInteger:v5];
  v7 = [v3 initWithFormat:@"%@.clipping.PXStoryClipLayout", v6];

  return v7;
}

id KenBurnsAnimationIdentifierForClip(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = MEMORY[0x1E696AD98];
  v5 = [v2 identifier];

  v6 = [v4 numberWithInteger:v5];
  v7 = [v3 initWithFormat:@"%@.kenburns.PXStoryClipLayout", v6];

  return v7;
}

void sub_1A4A7E9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1835(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4A81364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4A8AAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a2 == 1)
  {
    v22 = objc_begin_catch(exception_object);
    v23 = MEMORY[0x1E696ABC0];
    a20 = *MEMORY[0x1E696A278];
    v24 = [v22 description];
    a21 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a21 forKeys:&a20 count:1];
    [v23 errorWithDomain:@"PXStoryChapterErrorDomain" code:6 userInfo:v25];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    if (!v21)
    {
      JUMPOUT(0x1A4A8AA20);
    }

    JUMPOUT(0x1A4A8AA14);
  }

  _Unwind_Resume(exception_object);
}

__CFString *PXAppleMusicCapabilityStatusDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E772D358[a1 - 1];
  }
}

PXDefaultAppleMusicStatusProvider *PXCreateDefaultAppleMusicStatusProvider()
{
  v0 = objc_alloc_init(PXDefaultAppleMusicStatusProvider);

  return v0;
}

_PXOverriddenAppleMusicStatusProvider *PXCreateDefaultAppleMusicStatusProviderWithOverrides(void *a1)
{
  v1 = a1;
  v2 = [_PXOverriddenAppleMusicStatusProvider alloc];
  v3 = objc_alloc_init(PXDefaultAppleMusicStatusProvider);
  v4 = [(_PXOverriddenAppleMusicStatusProvider *)v2 initWithAppleMusicStatusProvider:v3 overrides:v1];

  return v4;
}

id _PXLanguageRequiringLineHeightAdjustmentsForString()
{
  v0 = CTFontCopyTallestTextStyleLanguageForString();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x1E696AEC0] stringWithString:v0];
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1A4A8DFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PXAttributedStringWithLanguageAwareLineHeightAdjustments(void *a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 length];
  v3 = v1;
  v4 = v3;
  v5 = v3;
  if (v2)
  {
    v6 = [v3 attributesAtIndex:0 effectiveRange:0];
    v7 = [v6 mutableCopy];

    v8 = *MEMORY[0x1E69DB648];
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    v5 = v4;
    if (v9)
    {
      v10 = v9;
      v11 = [v4 string];
      v12 = _PXLanguageRequiringLineHeightAdjustmentsForString();

      if (v12)
      {
        v13 = [v10 fontDescriptor];
        v25 = *MEMORY[0x1E69656F0];
        v26[0] = v12;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        v15 = [v13 fontDescriptorByAddingAttributes:v14];

        v16 = MEMORY[0x1E69DB878];
        [v10 pointSize];
        v17 = [v16 fontWithDescriptor:v15 size:?];

        [v7 setObject:v17 forKeyedSubscript:v8];
        v18 = *MEMORY[0x1E69DB688];
        v19 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
        v20 = [v19 mutableCopy];

        if (v20)
        {
          [v20 setLineHeightMultiple:0.0];
        }

        v21 = [v20 copy];
        [v7 setObject:v21 forKeyedSubscript:v18];

        v22 = objc_alloc(MEMORY[0x1E696AAB0]);
        v23 = [v4 string];
        v5 = [v22 initWithString:v23 attributes:v7];

        v10 = v17;
      }

      else
      {
        v5 = v4;
      }
    }
  }

  return v5;
}

void sub_1A4A90D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4A939D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4A9B02C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x650], 8);
  _Block_object_dispose(&STACK[0x690], 8);
  _Block_object_dispose(&STACK[0x6B0], 8);
  _Block_object_dispose(&STACK[0x6D0], 8);
  _Block_object_dispose(&STACK[0x6F0], 8);
  _Unwind_Resume(a1);
}

uint64_t PXCuratedLibraryAnimationGetContext(void *a1)
{
  v1 = objc_getAssociatedObject(a1, _PXCuratedLibraryContextAssociationKey);
  v2 = [v1 integerValue];

  return v2;
}

void _PXCuratedLibraryAnimationSetContext(void *a1, uint64_t a2)
{
  v3 = _PXCuratedLibraryContextAssociationKey;
  v4 = MEMORY[0x1E696AD98];
  v5 = a1;
  v6 = [v4 numberWithInteger:a2];
  objc_setAssociatedObject(v5, v3, v6, 0x301);
}

void sub_1A4AA0B58(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

void sub_1A4AA3A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AA4508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3599(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4AA4964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AA560C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AssetContainerFromCacheKey(void *a1)
{
  v1 = [a1 objects];
  v2 = [v1 firstObject];

  return v2;
}

id CacheKey(void *a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v5 = [off_1E7721928 alloc];
  v9[0] = v4;
  v9[1] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  v7 = [v5 initWithObjects:v6];

  return v7;
}

id RequestCacheKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 categories];
  if (v5)
  {
    v6 = [v3 categories];
    v7 = [v6 allObjects];
    v8 = [v7 sortedArrayUsingSelector:sel_compare_];
    v9 = [v8 componentsJoinedByString:@"&"];
  }

  else
  {
    v9 = @"All";
  }

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [v4 identifier];

  v12 = [v10 initWithFormat:@"%@-%@", v11, v9];

  return v12;
}

void sub_1A4AA6514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3748(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4AA6F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1A4AA7CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AA7ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AA88D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3860(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4AA8AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak(va);
  objc_destroyWeak((v9 - 24));
  _Unwind_Resume(a1);
}

void sub_1A4AA9504(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A4AACFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4223(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PXAudioCueDescription(CMTime *a1)
{
  *&time1.value = *&a1->value;
  value = a1[1].value;
  time1.epoch = a1->epoch;
  memset(&time2, 0, sizeof(time2));
  if ((CMTimeCompare(&time1, &time2) || value) && a1[1].value)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = a1[1].value;
    if (v4 > 4)
    {
      v5 = @"Unspecified";
    }

    else
    {
      v5 = off_1E772DC08[v4];
    }

    time1 = *a1;
    v7 = PXCMTimeDescription(&time1);
    v6 = [v3 initWithFormat:@"%@ %@", v5, v7];
  }

  else
  {
    v6 = @"None";
  }

  return v6;
}

BOOL PXAudioCueIsNull(uint64_t a1)
{
  *&time1.value = *a1;
  v1 = *(a1 + 24);
  time1.epoch = *(a1 + 16);
  memset(&time2, 0, sizeof(time2));
  return !CMTimeCompare(&time1, &time2) && v1 == 0;
}

__CFString *PXAudioCueRankDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E772DC08[a1];
  }
}

__CFString *PXAudioCueRankSymbol(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"?";
  }

  else
  {
    return off_1E772DC30[a1 - 1];
  }
}

BOOL PXAudioCueEqualToAudioCue(CMTime *a1, CMTime *a2)
{
  time1 = *a1;
  v5 = *a2;
  return !CMTimeCompare(&time1, &v5) && a1[1].value == a2[1].value;
}

__n128 PXAudioCueMake@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = a1[1].n128_u64[0];
  a3[1].n128_u64[1] = a2;
  return result;
}

id PXCPLStatusUpdateTypeDebugDescription(__int16 a1)
{
  v2 = ~a1;
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if ((v2 & 0xFBF) == 0)
  {
    v5 = @"All";
LABEL_28:
    [v4 addObject:v5];
    goto LABEL_29;
  }

  if (a1)
  {
    [v3 addObject:@"PhotoLibrary"];
    if ((a1 & 2) == 0)
    {
LABEL_5:
      if ((a1 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_5;
  }

  [v4 addObject:@"CPLStatus"];
  if ((a1 & 4) == 0)
  {
LABEL_6:
    if ((a1 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    [v4 addObject:@"TransferBytes"];
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_20:
  [v4 addObject:@"TransferCounts"];
  if ((a1 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((a1 & 0x10) != 0)
  {
LABEL_8:
    [v4 addObject:@"NumberOfOriginals"];
  }

LABEL_9:
  v6 = _os_feature_enabled_impl();
  if ((a1 & 0x20) != 0 && v6)
  {
    [v4 addObject:@"NumberOfFailures"];
  }

  if ((a1 & 0x80) != 0)
  {
    [v4 addObject:@"CloudQuota"];
    if ((a1 & 0x100) == 0)
    {
LABEL_14:
      if ((a1 & 0x200) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((a1 & 0x100) == 0)
  {
    goto LABEL_14;
  }

  [v4 addObject:@"PauseStates"];
  if ((a1 & 0x200) == 0)
  {
LABEL_15:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_16;
    }

LABEL_26:
    [v4 addObject:@"ResetSyncState"];
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_25:
  [v4 addObject:@"SyncProgress"];
  if ((a1 & 0x400) != 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  if ((a1 & 0x800) != 0)
  {
LABEL_27:
    v5 = @"SharedLibrary";
    goto LABEL_28;
  }

LABEL_29:
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v4 componentsJoinedByString:{@", "}];
  v9 = [v7 stringWithFormat:@"(%@)", v8];

  return v9;
}

void sub_1A4AB6148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4AB6414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PXLemonadeViewFactory()
{
  v0 = objc_opt_class();
  v1 = v0;
  if (v0)
  {
    if ([v0 conformsToProtocol:&unk_1F195BA88])
    {
      goto LABEL_3;
    }

    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<PXLemonadeViewFactoryProtocol>  _Nonnull PXLemonadeViewFactory(void)"];
    v5 = [v1 px_descriptionForAssertionMessage];
    [v3 handleFailureInFunction:v4 file:@"PXLemonadeViewFactory.m" lineNumber:14 description:{@"%@ should conform to protocol %@, but %@ doesn't", @"[PXLemonadeViewSwiftFactory class]", @"PXLemonadeViewFactoryProtocol", v5}];
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<PXLemonadeViewFactoryProtocol>  _Nonnull PXLemonadeViewFactory(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXLemonadeViewFactory.m" lineNumber:14 description:{@"%@ should conform to protocol %@, but it is nil", @"[PXLemonadeViewSwiftFactory class]", @"PXLemonadeViewFactoryProtocol"}];
  }

LABEL_3:

  return v1;
}

void PXPrototypeToolsUIPrepare()
{
  if (PXPrototypeToolsUIPrepare_onceToken != -1)
  {
    dispatch_once(&PXPrototypeToolsUIPrepare_onceToken, &__block_literal_global_5822);
  }
}

id PXTileIdentifierDescription(unint64_t *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  if (*a1)
  {
    v3 = 0;
    do
    {
      if (v3)
      {
        [v2 appendString:@":"];
      }

      [v2 appendFormat:@"%lu", a1[++v3]];
    }

    while (v3 < *a1);
  }

  [v2 appendString:@"}"];

  return v2;
}

void sub_1A4AB87A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AB8C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4AB9F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__n128 PXStoryBasicContentInfoForDisplayAsset@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v31 = [v3 pixelWidth];
  v30 = [v3 pixelHeight];
  [v3 preferredCropRect];
  v28 = v5;
  v29 = v4;
  v26 = v7;
  v27 = v6;
  [v3 acceptableCropRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v3 faceAreaRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v29;
  *(a2 + 24) = v28;
  *(a2 + 32) = v27;
  *(a2 + 40) = v26;
  *(a2 + 48) = v9;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13;
  *(a2 + 72) = v15;
  *(a2 + 80) = v17;
  *(a2 + 88) = v19;
  *(a2 + 96) = v21;
  *(a2 + 104) = v23;
  result = *MEMORY[0x1E695F050];
  v25 = *(MEMORY[0x1E695F050] + 16);
  *(a2 + 112) = *MEMORY[0x1E695F050];
  *(a2 + 128) = v25;
  return result;
}

void __PXStoryAssetContentInfoDescription_block_invoke(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10 = a2;
  v12.origin.x = a3;
  v12.origin.y = a4;
  v12.size.width = a5;
  v12.size.height = a6;
  if (!CGRectIsNull(v12))
  {
    PXRectDescription();
  }
}

id PXStoryClipOptionsDescription(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PXStoryClipOptionsDescription_block_invoke;
  aBlock[3] = &unk_1E773CD50;
  v9 = v11;
  v10 = a1;
  v3 = v2;
  v8 = v3;
  v4 = _Block_copy(aBlock);
  v4[2](v4, 1, @"aspectFitOnly");
  v4[2](v4, 2, @"key");
  [v3 appendString:@"]"];
  v5 = [v3 copy];

  _Block_object_dispose(v11, 8);

  return v5;
}

void sub_1A4ABAE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PXStoryClipOptionsDescription_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & ~*(a1 + 48)) == 0)
  {
    v7 = v5;
    if (*(*(*(a1 + 40) + 8) + 24) >= 1)
    {
      [*(a1 + 32) appendString:@"|"];
    }

    [*(a1 + 32) appendString:v7];
    v6 = v7;
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

id PXStoryClipAudioInfoDescription(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  if (*a1 > 3uLL)
  {
    v3 = @"??";
  }

  else
  {
    v3 = off_1E7740310[*a1];
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5 > 0xA)
  {
    v6 = @"?";
  }

  else
  {
    v6 = off_1E7740330[v5];
  }

  v7 = v6;
  v8 = [v2 stringWithFormat:@"{mode=%@, modeBasis=%@, vol=%0.2f, J=%0.2f, L=%0.2f, fin=%0.2f, fout=%0.2f}", v4, v7, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48)];

  return v8;
}

void sub_1A4ABB898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A4ABE6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4ABE750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1A4ABF824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4ABFADC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A4ABFF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AC01D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AC0564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AC07D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A4AC09BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7002(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4AC0B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AC0E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AC1174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AC131C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4AC1640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void PXSharedLibrarySetDidConfirmMoveToSharedLibrary(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setBool:a1 forKey:@"PXSharedLibraryMoveItemsToSharedLibraryConfirmed"];
}

uint64_t PXSharedLibraryShouldDisplayMoveToSharedLibraryConfirmation()
{
  v0 = +[PXSharedLibrarySettings sharedInstance];
  v1 = [v0 alwaysConfirmMoveToSharedLibrary];

  if (v1)
  {
    return 1;
  }

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"PXSharedLibraryMoveItemsToSharedLibraryConfirmed"];

  return v4 ^ 1u;
}

void PXSharedLibrarySetDidConfirmMoveToPersonalLibrary(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setBool:a1 forKey:@"PXSharedLibraryMoveItemsToPersonalLibraryConfirmed"];
}

unint64_t PXSharedLibraryShouldDisplayMoveToPersonalLibraryConfirmation(int a1)
{
  v2 = +[PXSharedLibrarySettings sharedInstance];
  v3 = [v2 alwaysConfirmMoveToPersonalLibrary];

  if (v3)
  {
    v4 = 1;
    return v4 & 1;
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 BOOLForKey:@"PXSharedLibraryMoveItemsToPersonalLibraryConfirmed"];

  v4 = (a1 | v7) ^ 1;
  if (!a1 || (v7 & 1) != 0)
  {
    return v4 & 1;
  }

  v8 = +[PXSharedLibrarySettings sharedInstance];
  v9 = [v8 confirmMoveToPersonalLibraryFromSharedLibraryPreview];

  return v9;
}

void PXSharedLibrarySetDidConfirmRemoveSharedLibrarySuggestion(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setBool:a1 forKey:@"PXSharedLibraryRemoveSharedLibrarySuggestionsConfirmedKey"];
}

uint64_t PXSharedLibraryShouldDisplayRemoveSharedLibrarySuggestionConfirmation()
{
  v0 = +[PXSharedLibrarySettings sharedInstance];
  v1 = [v0 alwaysConfirmRemoveSharedLibrarySuggestion];

  if (v1)
  {
    return 1;
  }

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"PXSharedLibraryRemoveSharedLibrarySuggestionsConfirmedKey"];

  return v4 ^ 1u;
}

id PXSharedLibraryShortNameForNameComponents(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:a1 style:1 options:0];
    v1 = vars8;
  }

  return a1;
}

id PXSharedLibraryFullNameForNameComponents(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:a1 style:0 options:0];
    v1 = vars8;
  }

  return a1;
}

id PXSharedLibraryFooterSharedLibraryTitle(int a1)
{
  if (a1)
  {
    return PXLocalizedSharedLibraryString(@"PXSharedLibrary_FilterFooter_Preview");
  }

  else
  {
    return PXLocalizedSharedLibraryString(@"PXSharedLibrary_FilterFooter_Shared");
  }
}

__CFString *PXSharedLibraryButtonImageNameForLibraryViewMode(uint64_t a1)
{
  v1 = @"ellipsis";
  if (a1 == 1)
  {
    v1 = @"person.fill";
  }

  if (a1 == 2)
  {
    return @"person.2.fill";
  }

  else
  {
    return v1;
  }
}

__CFString *PXSharedLibraryShortNameForParticipant(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = PXSharedLibraryContactForParticipant(v1);
  if (v2)
  {
    v3 = [MEMORY[0x1E6978980] px_localizedNameFromContact:v2];
  }

  else
  {
    v3 = 0;
  }

  if (![(__CFString *)v3 length])
  {
    v4 = [v1 nameComponents];
    v5 = PXSharedLibraryShortNameForNameComponents(v4);

    v3 = v5;
  }

  if (![(__CFString *)v3 length])
  {
    v6 = [v1 emailAddress];

    v3 = v6;
  }

  if (![(__CFString *)v3 length])
  {
    v7 = [v1 phoneNumber];

    v3 = v7;
  }

  if (![(__CFString *)v3 length])
  {
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v1;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Failed to format short name for participant: %@", &v10, 0xCu);
    }

    v3 = &stru_1F1741150;
  }

  return v3;
}

id PXSharedLibraryContactForParticipant(void *a1)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695CD80];
  v2 = a1;
  v3 = [v1 descriptorForRequiredKeysForStyle:0];
  v4 = *MEMORY[0x1E695C208];
  v9[0] = v3;
  v9[1] = v4;
  v5 = *MEMORY[0x1E695C400];
  v9[2] = *MEMORY[0x1E695C330];
  v9[3] = v5;
  v9[4] = *MEMORY[0x1E695C1C0];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  v7 = PXSharedLibraryContactForParticipantAndKeys(v2, v6);

  return v7;
}

id PXSharedLibraryContactForParticipantAndKeys(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 emailAddress];
  if ([v5 length])
  {
    v6 = _contactForEmail(v5, v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 phoneNumber];
  v8 = v7;
  if (!v6)
  {
    if (![v7 length] || (_contactForPhone(v8, v4), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412802;
        v12 = v3;
        v13 = 2048;
        v14 = [v5 length];
        v15 = 2048;
        v16 = [v8 length];
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Failed to get CNContact for participant: %@ (email:%lu, phone:%lu)", &v11, 0x20u);
      }

      v6 = 0;
    }
  }

  return v6;
}

id _contactForEmail(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695CD58];
  v4 = a2;
  v5 = [v3 predicateForContactsMatchingEmailAddress:a1];
  v6 = _contactForPredicate(v5, v4);

  return v6;
}

id _contactForPhone(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = _predicateForPhone(v3);
  v6 = _contactForPredicate(v5, v4);

  if (!v6)
  {
    if ([v3 hasPrefix:@"+"])
    {
      v6 = 0;
    }

    else
    {
      v7 = [@"+" stringByAppendingString:v3];
      v8 = _predicateForPhone(v7);
      v6 = _contactForPredicate(v8, v4);

      if (v6)
      {
        v9 = PLSharedLibraryGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = 138412802;
          v12 = v3;
          v13 = 2048;
          v14 = [v3 length];
          v15 = 2112;
          v16 = v6;
          _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Sad workaround allowed %@ (%lu) to be recognized as a phone number for %@", &v11, 0x20u);
        }
      }
    }
  }

  return v6;
}

id _predicateForPhone(void *a1)
{
  v1 = MEMORY[0x1E695CF50];
  v2 = a1;
  v3 = [[v1 alloc] initWithStringValue:v2];

  v4 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v3];

  return v4;
}

id _contactForPredicate(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CNContact * _Nullable _contactForPredicate(NSPredicate *__strong, NSArray<id<CNKeyDescriptor>> *__strong)"}];
    [v12 handleFailureInFunction:v13 file:@"PXSharedLibraryUtilities.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];
  }

  if (![v4 count])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CNContact * _Nullable _contactForPredicate(NSPredicate *__strong, NSArray<id<CNKeyDescriptor>> *__strong)"}];
    [v14 handleFailureInFunction:v15 file:@"PXSharedLibraryUtilities.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"keys.count > 0"}];
  }

  if (+[PXPeopleUtilities isGreenTeaAndContactsAccessDenied])
  {
    v5 = 0;
  }

  else
  {
    v6 = +[PXPeopleUtilities sharedContactStore];
    v16 = 0;
    v7 = [v6 unifiedContactsMatchingPredicate:v3 keysToFetch:v4 error:&v16];
    v8 = v16;

    if (v8)
    {
      v9 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Error fetching contacts: %@", buf, 0xCu);
      }
    }

    if ([v7 count] > 1)
    {
      v10 = [v7 sortedArrayUsingComparator:&__block_literal_global_637];
      v5 = [v10 firstObject];
    }

    else
    {
      v5 = [v7 firstObject];
    }
  }

  return v5;
}

uint64_t ___contactForPredicate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E6978980] fullNameFromContact:v4];
  v7 = [MEMORY[0x1E6978980] fullNameFromContact:v5];
  if ([v6 length] && !objc_msgSend(v7, "length"))
  {
    v10 = -1;
  }

  else if ([v6 length] || !objc_msgSend(v7, "length"))
  {
    if ([v6 isEqualToString:v7])
    {
      v8 = [v4 identifier];
      v9 = [v5 identifier];
      v10 = [v8 compare:v9];
    }

    else
    {
      v10 = [v6 localizedCompare:v7];
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

id PXSharedLibraryTermsOfAddressForParticipant(void *a1)
{
  v1 = PXSharedLibraryContactForParticipant(a1);
  v2 = [v1 termsOfAddress];

  return v2;
}

id _PXSharedLibraryStatusProviderFromAssets(void *a1)
{
  v1 = a1;
  v2 = [v1 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSharedLibraryStatusProvider *_PXSharedLibraryStatusProviderFromAssets(__strong id<PXFastEnumeration>)"];
    [v8 handleFailureInFunction:v9 file:@"PXSharedLibraryUtilities.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"[assets.firstObject isKindOfClass:PHAsset.class]"}];
  }

  v4 = [v1 firstObject];
  v5 = [v4 photoLibrary];
  v6 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v5];

  return v6;
}

uint64_t PXSharedLibraryCanMoveAssetsToSharedLibrary(void *a1)
{
  v1 = a1;
  v2 = _PXSharedLibraryStatusProviderFromAssets(v1);
  v3 = [v2 sharedLibraryOrPreview];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 canMoveAssetsToSharedLibrary:v1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t PXSharedLibraryCanMoveAssetsToPersonalLibrary(void *a1)
{
  v1 = a1;
  v2 = _PXSharedLibraryStatusProviderFromAssets(v1);
  v3 = [v2 sharedLibraryOrPreview];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 canMoveAssetsToPersonalLibrary:v1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t PXSharedLibraryCanRemoveFromSharedLibrarySuggestions(void *a1)
{
  v1 = a1;
  v2 = _PXSharedLibraryStatusProviderFromAssets(v1);
  v3 = [v2 sharedLibrary];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 canRemoveAssetSharingSuggestions:v1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void PXSharedLibraryMoveAssetsToSharedLibrary(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = _PXSharedLibraryStatusProviderFromAssets(v8);
  v5 = [v4 sharedLibraryOrPreview];
  v6 = v5;
  if (v5)
  {
    [v5 moveAssetsToSharedLibrary:v8 completion:v3];
  }

  else if (v3)
  {
    v7 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 underlyingError:0 debugDescription:@"Failed to move assets to shared library: No shared library"];
    v3[2](v3, 0, v7);
  }
}

void PXSharedLibraryMoveAssetsToPersonalLibrary(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = _PXSharedLibraryStatusProviderFromAssets(v8);
  v5 = [v4 sharedLibraryOrPreview];
  v6 = v5;
  if (v5)
  {
    [v5 moveAssetsToPersonalLibrary:v8 completion:v3];
  }

  else if (v3)
  {
    v7 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 underlyingError:0 debugDescription:@"Failed to move assets to personal library: No shared library"];
    v3[2](v3, 0, v7);
  }
}

void PXSharedLibraryRemoveSharingSuggestions(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = _PXSharedLibraryStatusProviderFromAssets(v8);
  v5 = [v4 sharedLibrary];
  v6 = v5;
  if (v5)
  {
    [v5 removeAssetSharingSuggestions:v8 completion:v3];
  }

  else if (v3)
  {
    v7 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 underlyingError:0 debugDescription:@"Failed to remove sharing suggestions: No shared library"];
    v3[2](v3, 0, v7);
  }
}

void PXSharedLibraryAddSharingSuggestions(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = _PXSharedLibraryStatusProviderFromAssets(v8);
  v5 = [v4 sharedLibrary];
  v6 = v5;
  if (v5)
  {
    [v5 addAssetSharingSuggestions:v8 completion:v3];
  }

  else if (v3)
  {
    v7 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 underlyingError:0 debugDescription:@"Failed to add sharing suggestions: No shared library"];
    v3[2](v3, 0, v7);
  }
}

id _PXTextAttachmentImageForViewMode(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIImage *_PXTextAttachmentImageForViewMode(PXLibraryFilterViewMode)"];
    [v15 handleFailureInFunction:v16 file:@"PXSharedLibraryUtilities.m" lineNumber:406 description:{@"Invalid parameter not satisfying: %@", @"libraryViewMode != PXLibraryFilterViewModeAll"}];
  }

  v2 = @"person.2.circle.fill";
  if (a1 == 1)
  {
    v2 = @"person.circle.fill";
  }

  v3 = MEMORY[0x1E69DCAD8];
  v4 = v2;
  v5 = [v3 configurationWithWeight:6];
  v6 = MEMORY[0x1E69DCAD8];
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v17[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v9 = [v6 configurationWithPaletteColors:v8];
  v10 = [v5 configurationByApplyingConfiguration:v9];

  v11 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
  v12 = [v10 configurationByApplyingConfiguration:v11];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4 withConfiguration:v12];

  return v13;
}

id PXSharedLibraryEmptyLibraryTitleForViewMode(uint64_t a1)
{
  if (!a1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXSharedLibraryEmptyLibraryTitleForViewMode(PXLibraryFilterViewMode)"];
    [v4 handleFailureInFunction:v5 file:@"PXSharedLibraryUtilities.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"libraryViewMode != PXLibraryFilterViewModeAll"}];
  }

  if (a1 == 1)
  {
    v2 = @"PXSharedLibrary_EmptyPersonalLibraryTitle";
  }

  else
  {
    v2 = @"PXSharedLibrary_EmptySharedLibraryTitle";
  }

  return PXLocalizedSharedLibraryString(v2);
}

id PXSharedLibraryEmptyLibraryMessageForViewMode(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSAttributedString * _Nonnull PXSharedLibraryEmptyLibraryMessageForViewMode(PXLibraryFilterViewMode, NSDictionary<NSAttributedStringKey, id> *__strong _Nonnull)"}];
    [v9 handleFailureInFunction:v10 file:@"PXSharedLibraryUtilities.m" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"libraryViewMode != PXLibraryFilterViewModeAll"}];
  }

  if (a1 == 1)
  {
    v4 = @"PXSharedLibrary_EmptyPersonalLibraryMessage_iOS";
  }

  else
  {
    v4 = @"PXSharedLibrary_EmptySharedLibraryMessage_iOS";
  }

  v5 = PXLocalizedSharedLibraryString(v4);
  v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5 attributes:v3];
  v7 = _PXTextAttachmentImageForViewMode(a1);
  [v6 px_replaceOccurrencesOfString:@"(_BUTTON_SYMBOL_PLACEHOLDER_)" withTextAttachmentWithImage:v7];

  return v6;
}

id PXSharedLibraryEmptyPeopleMessageForViewMode(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = +[PXPeopleUtilities locKeyForPersonOrPet:withVisibility:key:](PXPeopleUtilities, "locKeyForPersonOrPet:withVisibility:key:", 0, [a2 px_peoplePetsHomeVisibility], @"PXSharedLibrary_EmptyPeopleAlbum_Message");
  v7 = [v6 stringByAppendingString:@"_iOS"];

  v8 = PXLocalizedSharedLibraryString(v7);
  v9 = _PXTextAttachmentImageForViewMode(a1);
  v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8 attributes:v5];

  [v10 px_replaceOccurrencesOfString:@"(_BUTTON_SYMBOL_PLACEHOLDER_)" withTextAttachmentWithImage:v9];

  return v10;
}

id PXSharedLibraryEmptyAlbumMessageForViewMode(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_EmptyAlbum_Message_iOS");
  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4 attributes:v3];

  v6 = _PXTextAttachmentImageForViewMode(a1);
  [v5 px_replaceOccurrencesOfString:@"(_BUTTON_SYMBOL_PLACEHOLDER_)" withTextAttachmentWithImage:v6];

  return v5;
}

id PXSharedLibraryDuplicatesAlbumNotAvailableMessageForViewMode(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_EmptyDuplicatesAlbum_Message_iOS");
  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4 attributes:v3];

  v6 = _PXTextAttachmentImageForViewMode(a1);
  [v5 px_replaceOccurrencesOfString:@"(_BUTTON_SYMBOL_PLACEHOLDER_)" withTextAttachmentWithImage:v6];

  return v5;
}

id PXSharedLibraryInvitationTitleForParticipantName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSAttributedString * _Nonnull PXSharedLibraryInvitationTitleForParticipantName(NSString * _Nullable __strong, NSDictionary<NSAttributedStringKey, id> *__strong _Nonnull)"}];
    [v5 handleFailureInFunction:v6 file:@"PXSharedLibraryUtilities.m" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"attributes"}];

    if (v3)
    {
LABEL_3:
      PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationTitle_WithOwnerFormat");
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }
  }

  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationTitle_UnknownOwner");
  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v4];

  return v8;
}