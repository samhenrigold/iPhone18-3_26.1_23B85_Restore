__CFString *sub_1A429C41C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v8 = type metadata accessor for LemonadeSharedLibraryFilterView(0);
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *a1;
  v46 = sub_1A5249314();
  v51[200] = 1;
  v48 = v10;
  v11 = PXLibraryFilterItemTagFromViewMode(v10);
  result = PXLibraryFilterMenuImageNameForItemTagFilled(v11, 1);
  if (result)
  {
    v13 = result;
    v43 = v9;
    v44 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = a5;
    sub_1A524C674();

    v42 = sub_1A524B544();
    sub_1A524BC74();
    sub_1A52481F4();
    v38 = v52;
    v39 = v54;
    v36 = v55;
    v37 = v53;
    v40 = v57;
    v41 = v56;
    result = PXLibraryFilterTitleForItemTag(v11);
    if (result)
    {
      v14 = result;
      v15 = sub_1A524C674();
      v33 = v16;
      v34 = v15;

      sub_1A429B62C(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
      v35 = a3;
      v17 = sub_1A5247C84();
      v18 = (*(*v58 + 144))(v17);

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      if (v18 == v48)
      {
        v28 = v32[1];
        v58 = *v32;
        v59 = v28;
        v29 = v32[3];
        v60 = v32[2];
        v61 = v29;
        v27 = *(v32 + 8);
        *&v62 = v27;
        v20 = *(&v58 + 1);
        v30 = v58;
        v22 = *(&v59 + 1);
        v21 = v59;
        v24 = *(&v60 + 1);
        v23 = v60;
        v26 = *(&v29 + 1);
        v25 = v29;
        sub_1A429D4B8(&v58, &v49, &qword_1EB136D70, sub_1A429B9D8, MEMORY[0x1E697E048], sub_1A429B974);
        v19 = v30;
      }

      v51[8] = v37;
      v51[0] = v36;
      v68 = 0;
      v67 = 1;
      *&v49 = v19;
      *(&v49 + 1) = v20;
      *&v50[0] = v21;
      *(&v50[0] + 1) = v22;
      *&v50[1] = v23;
      *(&v50[1] + 1) = v24;
      *&v50[2] = v25;
      *(&v50[2] + 1) = v26;
      *&v50[3] = v27;
      v63 = v49;
      v66 = v27;
      v65[1] = v50[2];
      v65[0] = v50[1];
      v64 = v50[0];
      v31[3] = v37;
      LODWORD(v32) = v36;
      v36 = 0;
      v37 = 1;
      *&v58 = v19;
      *(&v58 + 1) = v20;
      *&v59 = v21;
      *(&v59 + 1) = v22;
      *&v60 = v23;
      *(&v60 + 1) = v24;
      *&v61 = v25;
      *(&v61 + 1) = v26;
      *&v62 = v27;

      sub_1A3E75E68(v34, v33, 0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A429CB8C()
{
  sub_1A429B438(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_1A429B49C(0);
  sub_1A429BC28();
  sub_1A524A294();
  sub_1A429D0CC(&qword_1EB136DA8, sub_1A429B438, MEMORY[0x1E697CCF0]);
  sub_1A524ADD4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A429CCF8()
{
  result = qword_1EB136DB0;
  if (!qword_1EB136DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136DB0);
  }

  return result;
}

uint64_t sub_1A429CD68@<X0>(void *a2@<X8>)
{
  v3 = [objc_opt_self() sharedPhotoLibrary];
  v4 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];

  v5 = type metadata accessor for LemonadeSharedLibraryFilterView(0);
  *(a2 + *(v5 + 24)) = &unk_1F1701D20;
  v6 = *(v5 + 28);
  *(a2 + v6) = swift_getKeyPath();
  sub_1A429B62C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *a2 = v4;
  *(swift_allocObject() + 16) = v4;
  type metadata accessor for SharedLibraryFilterViewModel(0);
  v7 = v4;
  return sub_1A5247C74();
}

uint64_t sub_1A429CEB8(uint64_t a1)
{
  v2 = sub_1A429D114();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A429CF04(uint64_t a1)
{
  v2 = sub_1A429D114();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A429CF78(uint64_t a1, uint64_t a2)
{
  sub_1A3C4BCF0(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1A429B62C(319, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    if (v3 <= 0x3F)
    {
      sub_1A429B62C(319, &qword_1EB120C30, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E69E62F8]);
      if (v4 <= 0x3F)
      {
        sub_1A429B62C(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A429D0CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A429D114()
{
  result = qword_1EB136DC0;
  if (!qword_1EB136DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136DC0);
  }

  return result;
}

uint64_t sub_1A429D170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSharedLibraryFilterView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__CFString *sub_1A429D1D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeSharedLibraryFilterView(0) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A429C41C(a1, v2 + v6, v7, a2);
}

uint64_t sub_1A429D284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A429D2E4()
{
  v1 = type metadata accessor for LemonadeSharedLibraryFilterView(0);
  v2 = *(v0 + ((*(*(v1 - 8) + 64) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1A429B62C(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v3 = *(v4 + 24);

  [v3 setViewMode_];
}

uint64_t sub_1A429D3F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A429D450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A429D4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t (*sub_1A429D54C())()
{
  sub_1A429D5B8();
  sub_1A5249244();
  *(swift_allocObject() + 16) = v1;
  return sub_1A3D6069C;
}

unint64_t sub_1A429D5B8()
{
  result = qword_1EB179620[0];
  if (!qword_1EB179620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB179620);
  }

  return result;
}

double sub_1A429D60C@<D0>(_OWORD *a1@<X8>)
{
  sub_1A429D5B8();
  sub_1A5249244();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A429D65C(void *a1)
{
  sub_1A429D5B8();

  return sub_1A5249254();
}

void sub_1A429D6BC(uint64_t a1)
{
  if (!qword_1EB127718)
  {
    sub_1A3C3637C();
    v1 = sub_1A5249F44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127718);
    }
  }
}

void sub_1A429D724(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  sub_1A42A4360(a1 & 1, a2);
}

void sub_1A429D7A8()
{
  v1 = [v0 superlayout];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
      swift_beginAccess();
      [v4 setAlpha_];
    }
  }

  sub_1A42A080C();
}

float sub_1A429D878()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  swift_beginAccess();
  return *v1;
}

void sub_1A429D8DC(float a1)
{
  v3 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *v3 = a1;
  sub_1A429D7A8();
}

uint64_t (*sub_1A429D950(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A429D9D0;
}

uint64_t sub_1A429D9D0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A429D7A8();
  }

  return result;
}

uint64_t sub_1A429DA38@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1A429DB7C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_1A429DCC8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x98));
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

void sub_1A429DD00(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_1A429DD78@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  swift_beginAccess();
  return sub_1A3EBECA4(v1 + v3, a1);
}

uint64_t sub_1A429DDEC(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  swift_beginAccess();
  sub_1A42A5660(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1A429DEC0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *((v2 & v1) + 0xC8);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  LODWORD(AssociatedTypeWitness) = (*(*(AssociatedTypeWitness - 8) + 48))(v7, 1, AssociatedTypeWitness);
  result = (*(v5 + 8))(v7, v4);
  if (AssociatedTypeWitness != 1)
  {
    return [v0 setNeedsUpdate];
  }

  return result;
}

uint64_t sub_1A429E078@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1A429E180(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_1A524EEA4();
}

uint64_t sub_1A429E1E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t sub_1A429E248(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t sub_1A429E2B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t sub_1A429E318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A429E384(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t sub_1A429E3EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t sub_1A429E4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A429E564(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6A108](a1, a2, WitnessTable);
}

uint64_t sub_1A429E5E4(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_1A524EEA4();
}

uint64_t sub_1A429E644(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t sub_1A429E6AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t sub_1A429E714(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t sub_1A429E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A429E7E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t sub_1A429E850(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t sub_1A429E93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A429E9B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6A108](a1, a2, WitnessTable);
}

uint64_t sub_1A429EA18(uint64_t a1)
{
  v46 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v45 = sub_1A524DF24();
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v39 - v8;
  v10 = sub_1A524DF24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - v23;
  [v1 updateIfNeeded];
  sub_1A3C341C8(v46, v48);
  sub_1A3C34400(0, &qword_1EB128C90, off_1E77211B8);
  v25 = swift_dynamicCast();
  v26 = *(v47 + 56);
  v46 = AssociatedTypeWitness;
  v26(v24, v25 ^ 1u, 1, AssociatedTypeWitness);
  sub_1A429DA38(v9);
  LODWORD(v6) = (*(*(v6 - 8) + 48))(v9, 1, v6);
  (*(v7 + 8))(v9, v45);
  v27 = *(v11 + 16);
  if (v6 == 1)
  {
    goto LABEL_4;
  }

  v27(v20, v24, v10);
  v28 = *(v47 + 48);
  if (v28(v20, 1, v46) == 1)
  {
    (*(v11 + 8))(v20, v10);
LABEL_4:
    v27(v13, v24, v10);
    sub_1A42A477C(v13);
    v29 = *(v11 + 8);
    v29(v13, v10);
    return (v29)(v24, v10);
  }

  v31 = *(v47 + 32);
  v32 = v44;
  v45 = v47 + 32;
  v40 = v31;
  v31(v44, v20, v46);
  v33 = v32;
  v34 = v43;
  sub_1A42A23F4(v33, v43);
  v35 = v42;
  v27(v42, v34, v10);
  if (v28(v35, 1, v46) == 1)
  {
    v29 = *(v11 + 8);
    v29(v35, v10);
    sub_1A42A477C(v34);
    v29(v34, v10);
    (*(v47 + 8))(v44, v46);
  }

  else
  {
    v36 = v41;
    v37 = v46;
    v40(v41, v35, v46);
    sub_1A42A3970(v36);
    v38 = *(v47 + 8);
    v38(v36, v37);
    v29 = *(v11 + 8);
    v29(v34, v10);
    v38(v44, v37);
  }

  return (v29)(v24, v10);
}

uint64_t sub_1A429EFF8(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v21 - v6;
  v8 = sub_1A524DF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  [v1 updateIfNeeded];
  sub_1A42A29D8(a1, v15);
  (*(v9 + 16))(v11, v15, v8);
  if ((*(v5 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    v16 = *(v9 + 8);
    v16(v11, v8);
    v17 = *((*v3 & *v1) + 0xC0);
    v18 = *(v1 + v17);
    *(v1 + v17) = a1;
    v19 = a1;

    if (*(v1 + *((*v3 & *v1) + 0xC0)))
    {
      [v1 setNeedsUpdate];
    }

    return (v16)(v15, v8);
  }

  else
  {
    (*(v5 + 32))(v7, v11, AssociatedTypeWitness);
    sub_1A42A3970(v7);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    return (*(v9 + 8))(v15, v8);
  }
}

void sub_1A429F2EC(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a1, 1, 1, AssociatedTypeWitness);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A42A4878;
  *(v7 + 24) = v6;
  v10[4] = sub_1A3D9C868;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3D9A79C;
  v10[3] = &block_descriptor_142;
  v8 = _Block_copy(v10);

  [v1 enumerateVisibleAnchoringLayoutsUsingBlock_];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1A429F4D0(uint64_t a1, _BYTE *a2, void *a3, char *a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1A524DF24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v23 - v18;
  if ([a3 objectReferenceForSpriteIndex_])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
    sub_1A3C57128(v23, v24);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  sub_1A3C37290(0, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v20 = swift_dynamicCast();
  v21 = *(v15 + 56);
  if (v20)
  {
    v21(v14, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v19, v14, AssociatedTypeWitness);
    (*(v12 + 8))(a4, v11);
    (*(v15 + 16))(a4, v19, AssociatedTypeWitness);
    v21(a4, 0, 1, AssociatedTypeWitness);
    *a2 = 1;
    return (*(v15 + 8))(v19, AssociatedTypeWitness);
  }

  else
  {
    v21(v14, 1, 1, AssociatedTypeWitness);
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_1A429F7E8(void *a1)
{
  v2 = a1;
  sub_1A429FCA8(&selRef_willUpdate, off_1E7722270, v2, v1);
}

uint64_t sub_1A429FCA8(SEL *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for HighlightsLevelLayout(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v12.receiver = v4;
  v12.super_class = v8;
  objc_msgSendSuper2(&v12, *a1);
  v9 = *((*v7 & *v4) + 0x80);
  swift_beginAccess();
  a2(v4 + v9);
  swift_endAccess();
  v10 = *((*v7 & *v4) + 0x88);
  swift_beginAccess();
  a2(v4 + v10);
  return swift_endAccess();
}

void sub_1A429FDB4(void *a1)
{
  v2 = a1;
  sub_1A429FCA8(&selRef_didUpdate, off_1E7722268, v2, v1);
}

void sub_1A429FE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HighlightsLevelLayout(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v6.receiver = v4;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, sel_visibleRectDidChange);
  sub_1A42A1E70();
}

void sub_1A429FF40(SEL *a1, uint64_t (*a2)(id), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for HighlightsLevelLayout(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v7;
  v8 = objc_msgSendSuper2(&v9, *a1);
  a2(v8);
  sub_1A42A1E70();
}

double sub_1A42A0038@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  if ((*(v5 + 0xD8))() <= 0.0)
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v7 = type metadata accessor for HighlightsLevelLayout(0, *(v5 + 80), *(v5 + 88), v6);
    v11.receiver = v2;
    v11.super_class = v7;
    if (objc_msgSendSuper2(&v11, sel_objectReferenceForSpriteIndex_, a1))
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    result = *&v9;
    *a2 = v9;
    a2[1] = v10;
  }

  return result;
}

id sub_1A42A0134(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1A42A0038(a3, &v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1A524EA94();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_1A42A0278(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  if ((*(v3 + 0xD8))() <= 0.0)
  {
    return 0;
  }

  v5 = type metadata accessor for HighlightsLevelLayout(0, *(v3 + 80), *(v3 + 88), v4);
  v7.receiver = v1;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_hitTestResultForSpriteIndex_, a1);
}

id sub_1A42A0340(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = sub_1A42A0278(a3);

  return v5;
}

uint64_t sub_1A42A038C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v8 = sub_1A42A4A24(v10, a5);

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

double sub_1A42A040C(void (*a1)(id, __int128 *), uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  sub_1A429DD78(&v21);
  if (v22)
  {
    sub_1A3C57128(&v21, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, v18);
    v6 = [v2 spriteReferenceForObjectReference_];
    swift_unknownObjectRelease();
    v7 = [v2 sublayoutIndexForSpriteReference:v6 options:1];
    if (v7 == sub_1A52403B4())
    {

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {
      v8 = [v2 sublayoutAtIndex:v7 loadIfNeeded:0];

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      if (v8)
      {
        LOBYTE(aBlock) = 0;
        a1(v8, &aBlock);

        return result;
      }
    }
  }

  else
  {
    sub_1A3C2C778(&v21, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37290);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v19 = sub_1A42A5D18;
  v20 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v17 = sub_1A3D9A79C;
  v18 = &block_descriptor_10_3;
  v11 = _Block_copy(&aBlock);

  v13 = type metadata accessor for HighlightsLevelLayout(0, *(v5 + 80), *(v5 + 88), v12);
  v15.receiver = v2;
  v15.super_class = v13;
  objc_msgSendSuper2(&v15, sel_enumerateVisibleAnchoringLayoutsUsingBlock_, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1A42A06D4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v6[2] = v4;
  v5 = a1;
  sub_1A42A040C(sub_1A42A5648, v6);
  _Block_release(v4);
}

uint64_t sub_1A42A0744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HighlightsLevelLayout(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, sel_clearLastVisibleAreaAnchoringInformation);
  memset(v7, 0, sizeof(v7));
  return sub_1A429DDEC(v7);
}

void sub_1A42A07C4(void *a1)
{
  v4 = a1;
  sub_1A42A0744(v4, v1, v2, v3);
}

void sub_1A42A0814()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*MEMORY[0x1E69E7D40] & *v0);
  if (!*(v0 + v2[13]) && (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))() > 0.0)
  {
    v4 = v2[10];
    v3 = v2[11];
    *(v0 + *((*v1 & *v0) + 0x68)) = (*(v3 + 48))(*(v0 + *((*v1 & *v0) + 0x78)), v4, v3);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v4;
    v6[3] = v3;
    v6[4] = v5;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1A52457C4();
  }
}

id sub_1A42A0BA0()
{
  [v0 safeAreaInsets];
  v2 = v1;
  [v0 safeAreaInsets];

  return [v0 setPadding_];
}

void sub_1A42A0C14()
{
  v25 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19[25] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19[7] = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v19[13] = v19 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v22 = v19 - v6;
  v7 = sub_1A52413E4();
  v19[16] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v23 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D9C6F4(0);
  v19[15] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v26 = sub_1A52414C4();
  v19[23] = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v19[14] = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v19[22] = v19 - v12;
  v24 = AssociatedTypeWitness;
  v20 = sub_1A524DF24();
  v19[24] = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v19[12] = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v19[20] = v19 - v15;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v19 - v18;
  sub_1A5245E94();
}

void sub_1A42A1CBC()
{
  v1 = v0;
  v2 = [v0 entityManager];
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x1E69E7D40];
    v5 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0));
    if (!v5 || (v6 = [v5 entityManager]) == 0 || (v7 = v6, sub_1A3C52C70(0, &unk_1EB136E30, &off_1E77215E0), v13 = v3, v8 = sub_1A524DBF4(), v7, v13, (v8 & 1) == 0))
    {
      v9 = [objc_allocWithZone(off_1E77215E8) initWithEntityManager_];
      [v9 setExposure_];
      v10 = sub_1A3DBEE68(*(v1 + *((*v4 & *v1) + 0x78)), 1);
      v11 = 40.0;
      if (!v10)
      {
        v11 = 20.0;
      }

      [v9 setRadius_];
      v12 = *((*v4 & *v1) + 0xA0);
      v13 = *(v1 + v12);
      *(v1 + v12) = v9;
    }
  }
}

void sub_1A42A1E78(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v10 = a1;
  v6 = *((v3 & v2) + 0x88);
  swift_beginAccess();
  v8 = type metadata accessor for HighlightsLevelLayout.PostInvalidatableEntities(0, v4, v5, v7);
  WitnessTable = swift_getWitnessTable();
  PXGLayout.invalidate<A>(updateFlags:with:)(v1 + v6, &v10, v8, WitnessTable);
}

void sub_1A42A21A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v10 = a1;
  v6 = *((v3 & v2) + 0x80);
  swift_beginAccess();
  v8 = type metadata accessor for HighlightsLevelLayout.PreInvalidatableEntities(0, v4, v5, v7);
  WitnessTable = swift_getWitnessTable();
  PXGLayout.invalidate<A>(updateFlags:with:)(v1 + v6, &v10, v8, WitnessTable);
}

void sub_1A42A227C()
{
  v1 = v0;
  v2 = [v0 sublayoutDataStore];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1A42A56F4;
    *(v5 + 24) = v4;
    v8[4] = sub_1A3D9C3A0;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1A3D9B774;
    v8[3] = &block_descriptor_30_2;
    v6 = _Block_copy(v8);
    v7 = v1;

    [v3 enumerateSublayoutsUsingBlock_];

    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A42A23F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = sub_1A524DF24();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v23 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v20 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v20 - v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A429DA38(v12);
  if ((*(v13 + 48))(v12, 1, v8) != 1)
  {
    (*(v13 + 32))(v16, v12, v8);
    v18 = *(AssociatedTypeWitness - 8);
    v21 = *(v18 + 56);
    v21(v29, 1, 1, AssociatedTypeWitness);
    v30[3] = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v18 + 16))(boxed_opaque_existential_1, v26, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1A5246384();
  }

  (*(v10 + 8))(v12, v9);
  return (*(*(AssociatedTypeWitness - 8) + 56))(v28, 1, 1, AssociatedTypeWitness);
}

void sub_1A42A29D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = sub_1A5241144();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v37 - v13;
  v14 = *((v5 & v4) + 0x58);
  swift_getAssociatedTypeWitness();
  v41 = v14;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1A524DF24();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - v18;
  if (!a1)
  {
    goto LABEL_10;
  }

  sub_1A429DA38(&v37 - v18);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v19, v16);
LABEL_10:
    v34 = swift_getAssociatedTypeWitness();
    (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
    return;
  }

  sub_1A42A5A6C(0, &unk_1EB136E40, type metadata accessor for PhotoKitItemListImplementation);
  v20 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_10;
  }

  v21 = aBlock;
  v22 = *(aBlock + 114);
  if (v22 != 2)
  {
    v23 = [v20 creationDate];
    if (v23)
    {
      v37 = v20;
      v24 = v23;
      sub_1A52410F4();

      v25 = v39;
      v26 = v21;
      v27 = *(v39 + 32);
      v28 = v38;
      v29 = v11;
      v30 = v40;
      v27(v38, v29, v40);
      (*(v25 + 16))(v8, v28, v30);
      v31 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v26;
      v27((v32 + v31), v8, v30);
      LOBYTE(aBlock) = v22 & 1;
      v49 = 0;

      LOBYTE(v24) = static PhotoKitItemListManagerOptions.PromisedSortOrder.== infix(_:_:)(&aBlock, &v49);
      PhotoKitItemListImplementation.numberOfItems.getter();
      if (v24)
      {
        v33 = swift_allocObject();
        *(v33 + 16) = sub_1A42A5ADC;
        *(v33 + 24) = v32;
        v47 = sub_1A3F923EC;
        v48 = v33;
        aBlock = MEMORY[0x1E69E9820];
        v44 = 1107296256;
        v45 = sub_1A3F8FAAC;
        v46 = &block_descriptor_64_2;
        _Block_copy(&aBlock);

        PXLastIndexInSortedRangePassingTest();
      }

      v36 = swift_allocObject();
      *(v36 + 16) = sub_1A42A5ADC;
      *(v36 + 24) = v32;
      v47 = sub_1A3F91FC8;
      v48 = v36;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v45 = sub_1A3F8FAAC;
      v46 = &block_descriptor_57_1;
      _Block_copy(&aBlock);

      PXFirstIndexInSortedRangePassingTest();
    }
  }

  v35 = swift_getAssociatedTypeWitness();
  (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
  sub_1A3C33378(0, 0);
  sub_1A3C33378(0, 0);
}

uint64_t sub_1A42A31C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42A5B50(0, &qword_1EB1260A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1A5240524();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  PhotoKitItemListImplementation.item(at:)(a1);
  PhotoKitItem<>.dateInterval.getter(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_1A3C2C778(v10, &qword_1EB1260A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1A42A5B50);
    v15 = 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_1A5240514();
    sub_1A3C745F0(&unk_1EB134140, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v16 = sub_1A524C534();

    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    v15 = v16 ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_1A42A34CC(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16[1] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = swift_getAssociatedTypeWitness();
  v18 = v4;
  v19 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = v5;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v16 - v13;
  sub_1A429DA38(v10);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  result = (*(v11 + 32))(v14, v10, v6);
  if (__OFSUB__(a1, 5))
  {
    __break(1u);
  }

  else if (((a1 - 5) & ~((a1 - 5) >> 63)) <= a1)
  {
    v22 = (a1 - 5) & ~((a1 - 5) >> 63);
    v23 = a1;
    if (!__OFADD__(a1, 5))
    {
      v16[3] = swift_getAssociatedConformanceWitness();
      sub_1A5246344();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1A42A3970(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19[1] = swift_getAssociatedConformanceWitness();
  v19[2] = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  v8 = sub_1A524DF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - v10;
  sub_1A429DA38(v19 - v10);
  if (!(*(v5 + 48))(v11, 1, v4))
  {
    (*(v5 + 16))(v7, v11, v4);
    (*(v9 + 8))(v11, v8);
    v12 = swift_getAssociatedTypeWitness();
    v22 = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v20, v12);
    swift_getAssociatedConformanceWitness();
    sub_1A5246384();
  }

  (*(v9 + 8))(v11, v8);
  swift_getAssociatedTypeWitness();
  v14 = [v1 createAnchorForScrollingSpriteForObjectReference:sub_1A524EA94() toScrollPosition:2 padding:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  swift_unknownObjectRelease();

  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1A42A5C64;
  *(v16 + 24) = v15;
  v22 = sub_1A42A5BE0();
  v21[0] = sub_1A42A5BB4;
  v21[1] = v16;
  v17 = v2;
  return sub_1A429DDEC(v21);
}

id sub_1A42A3DB0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1A42A4F00(a4);
  v9 = v8;

  return v9;
}

id sub_1A42A3E14()
{
  sub_1A3D9B420(&v8);
  v0 = v9;
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1(&v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x1EEE9AC00](v1);
    v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = sub_1A524EA94();
    (*(v2 + 8))(v5, v0);
    __swift_destroy_boxed_opaque_existential_0(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1A42A3F44(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() grayColor];

  return v2;
}

id sub_1A42A3F84(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() grayColor];

  return v2;
}

id sub_1A42A4010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HighlightsLevelLayout(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1A42A4080(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectRelease();
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(&a1[*((*v2 & *a1) + 0x70)], *((v4 & v3) + 0x50));
  v5 = *((*v2 & *a1) + 0x90);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = sub_1A524DF24();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  swift_unknownObjectRelease();

  sub_1A3C2C778(&a1[*((*v2 & *a1) + 0xB0)], &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37290);
  v7 = *((*v2 & *a1) + 0xC8);
  swift_getAssociatedTypeWitness();
  v8 = sub_1A524DF24();
  v9 = *(*(v8 - 8) + 8);

  return v9(&a1[v7], v8);
}

void sub_1A42A4360(char a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  *&v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x68)] = 0;
  v8 = &v2[*((*v5 & *v2) + 0x80)];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = &v2[*((*v5 & *v2) + 0x88)];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 8) = 0;
  v10 = *((*v5 & *v2) + 0x90);
  v11 = *((v7 & v6) + 0x58);
  v12 = *((v7 & v6) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(&v2[v10], 1, 1, AssociatedTypeWitness);
  v14 = &v2[*((*v5 & *v2) + 0x98)];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v2[*((*v5 & *v2) + 0xA0)] = 0;
  v15 = &v2[*((*v5 & *v2) + 0xA8)];
  *v15 = 0;
  v15[4] = 1;
  v16 = &v2[*((*v5 & *v2) + 0xB0)];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v2[*((*v5 & *v2) + 0xB8)] = 0;
  *&v2[*((*v5 & *v2) + 0xC0)] = 0;
  v17 = *((*v5 & *v2) + 0xC8);
  v18 = swift_getAssociatedTypeWitness();
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  (*(*(v12 - 8) + 16))(&v2[*((*v5 & *v2) + 0x70)], a2, v12);
  v2[*((*v5 & *v2) + 0x78)] = a1 & 1;
  *&v2[*((*v5 & *v2) + 0x60)] = 0;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for HighlightsLevelLayout(0, v12, v11, v19);
  v20 = objc_msgSendSuper2(&v21, sel_init);
  [v20 setContentSource_];
  [v20 setAxis_];
  sub_1A42A0C0C();
}

id sub_1A42A477C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  (*(*(v4 - 8) + 24))(&v1[v3], a1, v4);
  swift_endAccess();
  return sub_1A429DEC0();
}

void sub_1A42A4878(void *a1)
{
  v3 = *(v1 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = *(v1 + 16);
  *(v4 + 32) = a1;
  *(v4 + 40) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A42A5A34;
  *(v5 + 24) = v4;
  v8[4] = sub_1A42A5A44;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A429F7B4;
  v8[3] = &block_descriptor_48_0;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v7 enumerateVisibleAnchoringSpriteIndexesUsingBlock_];
  _Block_release(v6);
  LODWORD(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

uint64_t sub_1A42A4A24(void *a1, void *a2)
{
  v33 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v32 = v4;
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v26 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1A524DF24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_1A524EA94();
  *v33 = v19;
  sub_1A3C2F0BC(a1, v34);
  v20 = swift_dynamicCast();
  v21 = *(v15 + 56);
  if (v20)
  {
    v21(v14, 0, 1, v10);
    (*(v15 + 32))(v18, v14, v10);
    sub_1A429DA38(v7);
    v22 = v31;
    v23 = v32;
    if ((*(v31 + 48))(v7, 1, v32) != 1)
    {
      (*(v22 + 32))(v28, v7, v23);
      v34[3] = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
      (*(v15 + 16))(boxed_opaque_existential_1, v18, v10);
      swift_getAssociatedConformanceWitness();
      sub_1A5246384();
    }

    (*(v15 + 8))(v18, v10);
    (*(v26 + 8))(v7, v27);
    return sub_1A52403B4();
  }

  else
  {
    v21(v14, 1, 1, v10);
    (*(v12 + 8))(v14, v11);
    return sub_1A52403B4();
  }
}

void sub_1A42A4F00(uint64_t a1)
{
  v2 = v1;
  v13[4] = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & v3;
  v14 = v3;
  v13[6] = *(*(v5 + 80) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13[5] = v13 - v6;
  v8 = *((v4 & v7) + 0x58);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[1] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13[3] = v8;
  v10 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v10);
  v13[2] = v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  if (*(v2 + *((v4 & v14) + 0x68)))
  {
    swift_unknownObjectRetain();
    swift_checkMetadataState();
    sub_1A5245904();
  }

  __break(1u);
}

uint64_t sub_1A42A5404(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1A524DF24();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_1A524DF24();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A42A560C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A42A5660(uint64_t a1, uint64_t a2)
{
  sub_1A3C37290(0, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1A42A56F4(uint64_t a1, void *a2)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0xD8))(a1);

  return [a2 setAlpha_];
}

void sub_1A42A576C()
{
  v1 = *(v0 + 16);
  [v1 visibleRect];
  [v1 safeAreaInsets];
  sub_1A524D1F4();
}

id sub_1A42A595C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = [v3 entityForSpriteAtIndex_];
  v7 = [a1 mutableEffectIds];
  result = [v5 effectId];
  v7[v6] = result;
  return result;
}

void sub_1A42A59CC(uint64_t a1)
{
  if (!qword_1EB12C0F0)
  {
    sub_1A3C34400(255, &qword_1EB138D90, &protocol descriptor for SpriteConfiguration);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C0F0);
    }
  }
}

void sub_1A42A5A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB126AA0, 0x1E69789F0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A42A5ADC(uint64_t a1)
{
  v3 = *(sub_1A5241144() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1A42A31C8(a1, v4, v5);
}

void sub_1A42A5B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A42A5BE0()
{
  result = qword_1EB136E58;
  if (!qword_1EB136E58)
  {
    sub_1A3C37290(255, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB136E58);
  }

  return result;
}

double sub_1A42A5C64@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([*(v2 + 16) objectReferenceForSpriteIndex_])
  {
    sub_1A524E0B4();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id sub_1A42A5D50(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() buttonWithType_];
  v3 = sub_1A524C634();
  v4 = PXLocalizedString(v3);

  if (!v4)
  {
    sub_1A524C674();
    v4 = sub_1A524C634();
  }

  [v2 setAccessibilityLabel_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

uint64_t sub_1A42A5E78(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___PXMapOptionsChooseMapSheetController_controllerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A42A5EE4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXMapOptionsChooseMapSheetController_controllerDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A3FE25C0;
}

uint64_t (*sub_1A42A6168(void *a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController);
  a1[1] = v2;
  *a1 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC8))();
  return sub_1A42A61EC;
}

uint64_t sub_1A42A61EC(uint64_t *a1, char a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1[1]) + 0xD0);
  if ((a2 & 1) == 0)
  {
    return v2(*a1);
  }

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_1A42A6448(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController);
  a1[1] = v2;
  *a1 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))();
  return sub_1A42A64CC;
}

id sub_1A42A6520()
{
  v1 = v0;
  v2 = OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController;
  type metadata accessor for MapOptionsChooseMapContainerViewController();
  *&v0[v2] = _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0();
  v3 = OBJC_IVAR___PXMapOptionsChooseMapSheetController_blurredBackgroundView;
  type metadata accessor for MapOptionsBlurredBackgroundView();
  v4 = _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0();
  v5 = [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v4;
  v6 = OBJC_IVAR___PXMapOptionsChooseMapSheetController_closeButton;
  *&v1[v6] = sub_1A42A5D50(v5, v7);
  *&v1[OBJC_IVAR___PXMapOptionsChooseMapSheetController_controllerDelegate + 8] = 0;
  v8 = swift_unknownObjectWeakInit();
  v20.receiver = v1;
  v20.super_class = type metadata accessor for MapOptionsChooseMapSheetController(v8, v9);
  v10 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  v11 = [v10 presentationController];
  if (v11)
  {
    v12 = v11;
    [v11 setDelegate_];
  }

  v13 = v10;
  v14 = [v13 sheetPresentationController];
  if (v14)
  {
    v15 = v14;
    [v14 setPrefersGrabberVisible_];
  }

  v16 = [v13 sheetPresentationController];

  if (v16)
  {
    sub_1A3CB8F68();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52F9790;
    *(v17 + 32) = [objc_opt_self() mediumDetent];
    sub_1A3C52C70(0, &qword_1EB136E98, 0x1E69DCF58);
    v18 = sub_1A524CA14();

    [v16 setDetents_];
  }

  return v13;
}

id sub_1A42A67D8()
{
  v1 = *&v0[OBJC_IVAR___PXMapOptionsChooseMapSheetController_closeButton];
  [v1 addTarget:v0 action:sel_handleCloseAction forControlEvents:64];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = *&v0[OBJC_IVAR___PXMapOptionsChooseMapSheetController_blurredBackgroundView];
  [result addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  [result addSubview_];

  v6 = *&v0[OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController];
  [v0 addChildViewController_];
  v7 = [v4 contentView];
  result = [v6 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  [v7 addSubview_];

  return [v6 didMoveToParentViewController_];
}

void sub_1A42A6938()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController] view];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setPreservesSuperviewLayoutMargins_];
  sub_1A3CB8F68();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A532B2B0;
  v5 = *&v1[OBJC_IVAR___PXMapOptionsChooseMapSheetController_blurredBackgroundView];
  v6 = [v5 topAnchor];
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v10;
  v11 = [v5 bottomAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 bottomAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v4 + 40) = v15;
  v16 = [v5 leadingAnchor];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v4 + 48) = v20;
  v21 = [v5 trailingAnchor];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v4 + 56) = v25;
  v26 = *&v1[OBJC_IVAR___PXMapOptionsChooseMapSheetController_closeButton];
  v27 = [v26 topAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = [v27 constraintEqualToAnchor:v30 constant:15.0];
  *(v4 + 64) = v31;
  v32 = [v26 trailingAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = objc_opt_self();
  v36 = [v34 layoutMarginsGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v32 constraintEqualToAnchor_];

  *(v4 + 72) = v38;
  v39 = [v26 heightAnchor];
  v40 = [v39 constraintEqualToConstant_];

  *(v4 + 80) = v40;
  v41 = [v26 widthAnchor];
  v42 = [v41 constraintEqualToConstant_];

  *(v4 + 88) = v42;
  v43 = [v3 topAnchor];
  v44 = [v5 contentView];
  v45 = [v44 topAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v4 + 96) = v46;
  v47 = [v3 bottomAnchor];
  v48 = [v5 contentView];
  v49 = [v48 bottomAnchor];

  v50 = [v47 constraintEqualToAnchor_];
  *(v4 + 104) = v50;
  v51 = [v3 leadingAnchor];
  v52 = [v5 contentView];
  v53 = [v52 leadingAnchor];

  v54 = [v51 constraintEqualToAnchor_];
  *(v4 + 112) = v54;
  v55 = [v3 trailingAnchor];
  v56 = [v5 contentView];
  v57 = [v56 trailingAnchor];

  v58 = [v55 constraintEqualToAnchor_];
  *(v4 + 120) = v58;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v59 = sub_1A524CA14();

  [v35 activateConstraints_];
}

id MapOptionsChooseMapSheetController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MapOptionsChooseMapSheetController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapOptionsChooseMapSheetController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

UIModalPresentationStyle __swiftcall MapOptionsChooseMapSheetController.adaptivePresentationStyle(for:traitCollection:)(UIPresentationController a1, UITraitCollection traitCollection)
{
  if ([(objc_class *)traitCollection.super.isa horizontalSizeClass]== 1)
  {
    return -1;
  }

  else
  {
    return 2;
  }
}

void sub_1A42A72A0()
{
  v1 = v0;
  v2 = OBJC_IVAR___PXMapOptionsChooseMapSheetController_contentViewController;
  type metadata accessor for MapOptionsChooseMapContainerViewController();
  *(v0 + v2) = _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0();
  v3 = OBJC_IVAR___PXMapOptionsChooseMapSheetController_blurredBackgroundView;
  type metadata accessor for MapOptionsBlurredBackgroundView();
  v4 = _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0();
  v5 = [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v3) = v4;
  v6 = OBJC_IVAR___PXMapOptionsChooseMapSheetController_closeButton;
  *(v1 + v6) = sub_1A42A5D50(v5, v7);
  *(v1 + OBJC_IVAR___PXMapOptionsChooseMapSheetController_controllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1A524E6E4();
  __break(1u);
}

double sub_1A42A7394(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PhotosPPTTestRunner(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C56598(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1A3DE0CA0(v2, v8);
  sub_1A524CC54();

  v13 = sub_1A524CC44();
  v14 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v13;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = a2;
  sub_1A42A7B90(v8, v15 + v14);
  sub_1A3D4D930(0, 0, v11, &unk_1A532B348, v15);

  return result;
}

uint64_t type metadata accessor for PhotosPPTTestRunner(uint64_t a1)
{
  result = qword_1EB1B3660;
  if (!qword_1EB1B3660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A42A75C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a6;
  v6[6] = type metadata accessor for PhotosPPTTestRunner(0);
  v6[7] = swift_task_alloc();
  v6[8] = sub_1A524CC54();
  v6[9] = sub_1A524CC44();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[10] = v8;
  *v8 = v6;
  v8[1] = sub_1A42A7704;

  return v10();
}

uint64_t sub_1A42A7704()
{
  *(*v1 + 88) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A42A78C8;
  }

  else
  {
    v4 = sub_1A42A7860;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A42A7860()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42A78C8()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[5];

  sub_1A3DE0CA0(v3, v2);
  v4 = v1;
  v5 = sub_1A5246F04();
  LOBYTE(v3) = sub_1A524D244();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136315394;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = v0[7];

  sub_1A3DE0D04(v7);
  v8 = v0[11];
  v9 = *(v0[5] + 8);
  v10 = sub_1A524C634();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = v8;
  sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
  sub_1A524E624();
  v11 = sub_1A524C634();

  [v9 failedTest:v10 withFailure:v11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A42A7B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPPTTestRunner(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A42A7BF4()
{
  v2 = *(type metadata accessor for PhotosPPTTestRunner(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A42A75C0(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_1A42A7CD0()
{
  v1[2] = v0;
  sub_1A524CC54();
  v1[3] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A42A7D68, v3, v2);
}

uint64_t sub_1A42A7D68()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1A42A7E30;

  return sub_1A42A8B54(10, 0, &unk_1A532B360, v2);
}

uint64_t sub_1A42A7E30()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A3DDF710;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A3DDDD8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A42A7F4C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A42A7FE8, v3, v2);
}

uint64_t sub_1A42A7FE8()
{
  v1 = [*(v0[2] + 8) px_firstKeyWindow];
  if (v1 && (v2 = v1, v3 = [v1 windowScene], v2, v3))
  {
    v4 = v0[2];
    v5 = [v3 effectiveGeometry];

    v6 = [v5 interfaceOrientation];
    if (v6 == 4)
    {
      v7 = 1;
    }

    else
    {
      v7 = 4;
    }

    v8 = sub_1A524CC44();
    v0[7] = v8;
    v9 = swift_task_alloc();
    v0[8] = v9;
    *(v9 + 16) = v4;
    *(v9 + 24) = v7;
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1A42A81EC;
    v11 = MEMORY[0x1E69E85E0];
    v12 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v10, v8, v11, 0xD000000000000011, 0x80000001A53CFC40, sub_1A42AAA14, v9, v12);
  }

  else
  {

    sub_1A42AA9C0();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1A42A81EC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1A3DDC7D0, v3, v2);
}

uint64_t sub_1A42A834C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A42A7F4C(v2);
}

void sub_1A42A83E0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1A3F6D768();
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for PhotosPPTTestRunner(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A42A8700(0x6E6F697461746F52, 0xE800000000000000, a2[2]);
}

void sub_1A42A8830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A524C634();
  v5 = sub_1A524C634();
  sub_1A3C4D548(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 16) = xmmword_1A52F8E10;
  *(v6 + 56) = v7;
  *(v6 + 32) = 7565414;
  *(v6 + 40) = 0xE300000000000000;
  v8 = sub_1A524CA14();

  [v3 startedSubTest:v4 forTest:v5 withMetrics:{v8, 1, 2}];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42A8A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A524C634();
  v5 = sub_1A524C634();
  [v3 finishedSubTest:v4 forTest:v5];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A42A8B54(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 120) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  sub_1A524CC54();
  *(v5 + 48) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A42A8BF4, v7, v6);
}

void sub_1A42A8BF4()
{
  v1 = *(v0 + 40);
  if (*(v0 + 120))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + 16);
  }

  v3 = v1[1];
  *(v0 + 72) = v3;
  *(v0 + 80) = v1[2];
  *(v0 + 88) = v1[3];
  v4 = sub_1A524C634();
  [v3 startedTest_];

  if (v2 < 0)
  {
    __break(1u);
  }

  else if (v2)
  {
    v5 = *(v0 + 24);
    *(v0 + 96) = 0;
    v10 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_1A42A8DB4;

    v10();
  }

  else
  {
    v7 = *(v0 + 72);

    v8 = sub_1A524C634();
    [v7 finishedTest_];

    v9 = *(v0 + 8);

    v9();
  }
}

uint64_t sub_1A42A8DB4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1A42A9078;
  }

  else
  {
    v5 = sub_1A42A8EF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A42A8EF0()
{
  v1 = *(v0 + 96) + 1;
  if (*(v0 + 120))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + 16);
  }

  if (v1 == v2)
  {
    v3 = *(v0 + 72);

    v4 = sub_1A524C634();
    [v3 finishedTest_];

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 96) = v1;
    v8 = (*(v0 + 24) + **(v0 + 24));
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_1A42A8DB4;

    return v8();
  }
}

uint64_t sub_1A42A9078()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42A90DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1A5243744();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A3C56598(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v4[9] = swift_task_alloc();
  v6 = sub_1A5243724();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_1A524CC54();
  v4[14] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42A9284, v8, v7);
}

void sub_1A42A9284()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[4];

  sub_1A42AAC14(v4, v3, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v5 = *(v2 + 48);
  v6 = v5(v3, 1, v1);
  v7 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  if (v6 == 1)
  {
    (*(v8 + 104))(v7, *MEMORY[0x1E69C2608], v0[10]);
    if (v5(v10, 1, v9) != 1)
    {
      sub_1A42AAC80(v0[9], &qword_1EB136EA0, MEMORY[0x1E69C2610]);
    }
  }

  else
  {
    (*(v8 + 32))(v7, v0[9], v0[10]);
  }

  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v14 = v0[11];
  sub_1A5243BC4();
  sub_1A5243BB4();
  (*(v14 + 16))(v12, v11, v13);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42A94EC()
{
  v1 = v0;
  v2 = type metadata accessor for PhotosPPTTestRunner(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v5 = [objc_opt_self() applicationRootViewController];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v5 = v5;
    v8 = [v7 selectedViewController];
    v9 = v5;
    if (v8)
    {
      v10 = v8;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v9 = [v11 topViewController];

        if (!v9)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v9 = v5;
      }
    }

    v5 = v9;
  }

LABEL_8:
  v12 = swift_allocObject();
  *(v12 + 16) = v40;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1A42AA7F4;
  *(v13 + 24) = v12;
  v38 = sub_1A3D9C868;
  v39 = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v36 = sub_1A3D9A79C;
  v37 = &block_descriptor_32_2;
  v14 = _Block_copy(&aBlock);

  [v5 px:0 enumerateDescendantViewControllersWithOptions:v14 usingBlock:?];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    sub_1A42AA930(v40, &v33);
    if (v34)
    {
      v29 = v4;
      sub_1A3C34460(&v33, &aBlock);
      sub_1A3C341C8(&aBlock, &v33);
      v15 = sub_1A5246F04();
      v16 = sub_1A524D234();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v28 = v0;
        v18 = v17;
        v42 = swift_slowAlloc();
        *v18 = 136315138;
        sub_1A3C341C8(&v33, v32);
        sub_1A3C34400(0, &qword_1EB136F88, MEMORY[0x1E697BED8]);
        v19 = sub_1A524C714();
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_0(&v33);
        sub_1A3C2EF94(v19, v21, &v42);
      }

      __swift_destroy_boxed_opaque_existential_0(&v33);
      v4 = v29;
      sub_1A3C34460(&aBlock, v31);
      v24 = MEMORY[0x1E697BED8];
    }

    else
    {
      v22 = MEMORY[0x1E697BED8];
      sub_1A42AACDC(&v33, &qword_1EB136F80, &qword_1EB136F88, MEMORY[0x1E697BED8], sub_1A3C34400);
      sub_1A42AA9C0();
      v1 = swift_allocError();
      *v23 = v5;
      swift_willThrow();
      v24 = v22;
    }

    sub_1A42AACDC(v40, &qword_1EB136F80, &qword_1EB136F88, v24, sub_1A3C34400);

    if (!v1)
    {
      sub_1A3DE0CA0(v30, v4);
      v25 = sub_1A5246F04();
      v26 = sub_1A524D224();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v27 = 136315138;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3DE0D04(v4);
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      sub_1A5247E94();
      __swift_destroy_boxed_opaque_existential_0(v31);
    }
  }
}

uint64_t sub_1A42A9B08(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_1A524CC54();
  v2[20] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A42A9BA0, v4, v3);
}

uint64_t sub_1A42A9BA0()
{
  v1 = v0[18];
  v2 = *(v0[19] + 40);
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1A42A9CC0;
  v3 = swift_continuation_init();
  sub_1A3FA4F7C(0);
  v0[17] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A3FA485C;
  v0[13] = &block_descriptor_143;
  v0[14] = v3;
  [v2 measureScrollingOfScrollView:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A42A9CC0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_1A42A9E54;
  }

  else
  {
    v5 = sub_1A42A9DF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A42A9DF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42A9E54()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42A9EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(type metadata accessor for PhotosPPTTestRunner(0) - 8);
  v5[13] = v6;
  v5[14] = *(v6 + 64);
  v5[15] = swift_task_alloc();
  sub_1A524CC54();
  v5[16] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v5[17] = v8;
  v5[18] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A42A9FC8, v8, v7);
}

uint64_t sub_1A42A9FC8()
{
  v1 = v0[10];
  v2 = *(v0[12] + 8);
  v3 = sub_1A524C634();
  v4 = sub_1A524C634();
  [v2 startedSubTest:v3 forTest:v4];

  v7 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1A42AA100;

  return v7();
}

uint64_t sub_1A42AA100()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1A42AA3A8;
  }

  else
  {
    v5 = sub_1A42AA23C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1A42AA23C()
{
  v1 = v0[15];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];

  sub_1A3DE0CA0(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1A42A7B90(v1, v8 + v7);
  v9 = (v8 + ((v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v9 = v6;
  v9[1] = v5;
  v0[6] = sub_1A42AA588;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3C2E0D0;
  v0[5] = &block_descriptor_15_2;
  _Block_copy(v0 + 2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A42AA3A8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A42AA42C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + 8);
  v6 = sub_1A524C634();
  v7 = sub_1A524C634();
  [v5 *a3];
}

void sub_1A42AA4E4()
{
  type metadata accessor for PhotosPPTTestRunner(0);
  sub_1A42AA680();
  sub_1A524C714();
  sub_1A5246EF4();
}

void sub_1A42AA588()
{
  v1 = *(type metadata accessor for PhotosPPTTestRunner(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 8);
  v4 = sub_1A524C634();
  v3 = sub_1A524C634();
  [v2 finishedSubTest:v4 forTest:v3];
}

double block_copy_helper_13_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1A42AA680()
{
  result = qword_1EB136EA8;
  if (!qword_1EB136EA8)
  {
    type metadata accessor for PhotosPPTTestRunner(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB136EA8);
  }

  return result;
}

void sub_1A42AA6F0(uint64_t a1)
{
  sub_1A3C5D0E8(319, &qword_1EB136F10, &protocolRef_PXPhotosTestGesturePerformer);
  if (v1 <= 0x3F)
  {
    sub_1A3C52C70(319, &qword_1EB12F728, 0x1E69DC668);
    if (v2 <= 0x3F)
    {
      sub_1A3D82860();
      if (v3 <= 0x3F)
      {
        sub_1A3C5D0E8(319, &qword_1EB136F78, &protocolRef_PXPhotosScrollTestPerformer);
        if (v4 <= 0x3F)
        {
          sub_1A5246F24();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A42AA7F4(void *a1, _BYTE *a2)
{
  v5 = *(v2 + 16);
  v10 = a1;
  sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
  sub_1A3C34400(0, &qword_1EB136F88, MEMORY[0x1E697BED8]);
  v6 = a1;
  if (swift_dynamicCast())
  {
    sub_1A3C34460(v8, v11);
    sub_1A42AACDC(v5, &qword_1EB136F80, &qword_1EB136F88, MEMORY[0x1E697BED8], sub_1A3C34400);
    sub_1A3C341C8(v11, v5);
    *a2 = 1;
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    return sub_1A42AACDC(v8, &qword_1EB136F80, &qword_1EB136F88, MEMORY[0x1E697BED8], sub_1A3C34400);
  }
}

uint64_t sub_1A42AA930(uint64_t a1, uint64_t a2)
{
  sub_1A3CB6A4C(0, &qword_1EB136F80, &qword_1EB136F88, MEMORY[0x1E697BED8], sub_1A3C34400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A42AA9C0()
{
  result = qword_1EB1B3670;
  if (!qword_1EB1B3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B3670);
  }

  return result;
}

void sub_1A42AAA1C()
{
  v1 = *(type metadata accessor for PhotosPPTTestRunner(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  MEMORY[0x1A5907B60](0x79636E6574614C2DLL, 0xE800000000000000);
  v5 = sub_1A524C634();

  v6 = sub_1A524C634();
  [v3 finishedSubTest:v5 forTest:v6];

  sub_1A42A8830(0x6E6F697461746F52, 0xE800000000000000, v4);
}

void sub_1A42AAB28()
{
  v1 = v0;
  v2 = *(type metadata accessor for PhotosPPTTestRunner(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_1A3F6D768();
  sub_1A42A8A34(0x6E6F697461746F52, 0xE800000000000000, *(v1 + v3 + 16));
}

uint64_t sub_1A42AAC14(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56598(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A42AAC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56598(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A42AACDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1A3CB6A4C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore0A13PPTTestRunnerV5Error33_458EA8B2F88B83A1DA433D303CCC0444LLO(unint64_t *a1)
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

uint64_t sub_1A42AAD5C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
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

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A42AADC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1A42AAE10(void *result, unsigned int a2)
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

id PXUpdateUtilitiesOrderAction.init(photoLibrary:orderedCollections:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPhotoLibrary:a1 orderedCollections:a2];

  swift_unknownObjectRelease();
  return v3;
}

{
  *(v2 + OBJC_IVAR___PXUpdateUtilitiesOrderAction_undoOrderedUtilityTypes) = 0;
  *(v2 + OBJC_IVAR___PXUpdateUtilitiesOrderAction_redoOrderedUtilityTypes) = 0;
  *(v2 + OBJC_IVAR___PXUpdateUtilitiesOrderAction_orderedCollections) = a2;
  v6.super_class = PXUpdateUtilitiesOrderAction;
  v4 = objc_msgSendSuper2(&v6, sel_initWithPhotoLibrary_, a1);

  return v4;
}

uint64_t PXUpdateUtilitiesOrderAction.perform(_:)(void (*a1)(uint64_t, void, __n128), uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  v26 = a1;
  v27 = sub_1A5240C64();
  v24 = *(v27 - 8);
  v4 = MEMORY[0x1EEE9AC00](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v2 orderedCollections];
  sub_1A5240C74();
  sub_1A5240C54();
  if (v30)
  {
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A3C57128(&v29, v31);
      sub_1A3C2F0BC(v31, &v29);
      sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
      if (swift_dynamicCast())
      {
        v9 = v28;
        v10 = sub_1A4A49EB4();
        if (v10 == 17)
        {
          __swift_destroy_boxed_opaque_existential_0(v31);
        }

        else
        {
          v11 = v10;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1A42AB6FC(0, *(v8 + 2) + 1, 1, v8);
          }

          v13 = *(v8 + 2);
          v12 = *(v8 + 3);
          if (v13 >= v12 >> 1)
          {
            v8 = sub_1A42AB6FC((v12 > 1), v13 + 1, 1, v8);
          }

          __swift_destroy_boxed_opaque_existential_0(v31);
          *(v8 + 2) = v13 + 1;
          v8[v13 + 32] = v11;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v31);
      }

      sub_1A5240C54();
    }

    while (v30);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1A3C35B00(&v29);
  v14 = [v3 photoLibrary];
  v15 = sub_1A3D63EA0(v14);

  v16 = (*(*v15 + 192))();

  *&v3[OBJC_IVAR___PXUpdateUtilitiesOrderAction_undoOrderedUtilityTypes] = v16;

  v17 = [v3 photoLibrary];
  v18 = sub_1A3D63EA0(v17);

  (*(*v18 + 240))(v8);

  v19 = [v3 photoLibrary];
  v20 = sub_1A3D63EA0(v19);

  v21 = (*(*v20 + 192))();

  *&v3[OBJC_IVAR___PXUpdateUtilitiesOrderAction_redoOrderedUtilityTypes] = v21;

  (v26)(1, 0);
  return (*(v24 + 8))(v6, v27);
}

void sub_1A42AB4A0(void *a1, int a2, void *aBlock, void *a4)
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  sub_1A42ABBB8(v7, v6, a4);
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1A42AB528(uint64_t (*a1)(BOOL, void), uint64_t a2, void *a3)
{
  if (*(v3 + *a3))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return a1(0, 0);
}

char *sub_1A42AB6FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C37060(0, &qword_1EB120388, &type metadata for UtilityAlbumType, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_1A42AB81C(char *a1, uint64_t a2)
{
  v23 = a2;
  v24 = sub_1A5240C64();
  v22 = *(v24 - 8);
  v3 = MEMORY[0x1EEE9AC00](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 orderedCollections];
  sub_1A5240C74();
  sub_1A5240C54();
  if (v27)
  {
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A3C57128(&v26, v28);
      sub_1A3C2F0BC(v28, &v26);
      sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
      if (swift_dynamicCast())
      {
        v8 = v25;
        v9 = sub_1A4A49EB4();
        if (v9 == 17)
        {
          __swift_destroy_boxed_opaque_existential_0(v28);
        }

        else
        {
          v10 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1A42AB6FC(0, *(v7 + 2) + 1, 1, v7);
          }

          v12 = *(v7 + 2);
          v11 = *(v7 + 3);
          if (v12 >= v11 >> 1)
          {
            v7 = sub_1A42AB6FC((v11 > 1), v12 + 1, 1, v7);
          }

          __swift_destroy_boxed_opaque_existential_0(v28);
          *(v7 + 2) = v12 + 1;
          v7[v12 + 32] = v10;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v28);
      }

      sub_1A5240C54();
    }

    while (v27);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1A3C35B00(&v26);
  v13 = [a1 photoLibrary];
  v14 = sub_1A3D63EA0(v13);

  v15 = (*(*v14 + 192))();

  *&a1[OBJC_IVAR___PXUpdateUtilitiesOrderAction_undoOrderedUtilityTypes] = v15;

  v16 = [a1 photoLibrary];
  v17 = sub_1A3D63EA0(v16);

  (*(*v17 + 240))(v7);

  v18 = [a1 photoLibrary];
  v19 = sub_1A3D63EA0(v18);

  v20 = (*(*v19 + 192))();

  *&a1[OBJC_IVAR___PXUpdateUtilitiesOrderAction_redoOrderedUtilityTypes] = v20;

  (*(v23 + 16))(v23, 1, 0);
  return (*(v22 + 8))(v5, v24);
}

uint64_t sub_1A42ABBB8(char *a1, uint64_t a2, void *a3)
{
  if (*&a1[*a3])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = *(a2 + 16);

  return v3(a2, 0, 0);
}

void sub_1A42ABC84(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
  *(v2 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel) = a2;
  v5 = a2;

  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_navigationItem);
  *(v2 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_navigationItem) = a1;
  v7 = a1;

  sub_1A42ABDAC();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))();
  sub_1A42AC670();
  sub_1A42ACDDC();
  sub_1A42ADEBC();

  sub_1A42ABF5C();
}

void sub_1A42ABDAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
  if (v1)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = v1;

    sub_1A524D1A4();
  }

  __break(1u);
}

void *sub_1A42ABE7C()
{
  result = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
  if (result)
  {
    v2 = [result mainModel];
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }

  __break(1u);
  return result;
}

void sub_1A42ABF5C()
{
  v1 = v0;
  v2 = sub_1A42AE5DC();
  if (!v2)
  {
    return;
  }

  v42 = v2;
  v3 = OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel;
  v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
  if (!v4)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (([v4 isInSelectMode] & 1) == 0)
  {
    v5 = *(v0 + v3);
    if (v5)
    {
      if ([v5 viewMode] != 1)
      {
        goto LABEL_13;
      }

      v6 = *(v0 + v3);
      if (v6)
      {
        if (![v6 wantsChromeVisible])
        {
          goto LABEL_13;
        }

        v7 = *(v0 + v3);
        if (v7)
        {
          if ([v7 wantsRelatedOverlayVisible])
          {
LABEL_13:
            v8 = MEMORY[0x1E69E7CC0];
            v9 = [v42 toolbarItems];
            if (v9)
            {
              v10 = v9;
              sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
              v11 = sub_1A524CA34();

              LOBYTE(v10) = sub_1A42AEED0(v8, v11, v12);

              if (v10)
              {
                goto LABEL_18;
              }
            }

            else
            {
            }

            sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
            v13 = sub_1A524CA14();
            [v42 setToolbarItems_];

LABEL_18:
            v14 = [v42 px_barAppearance];
            v15 = swift_allocObject();
            *(v15 + 16) = v8;
            aBlock[4] = sub_1A42AFA44;
            aBlock[5] = v15;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1A421179C;
            aBlock[3] = &block_descriptor_74;
            v16 = _Block_copy(aBlock);

            [v14 performChangesWithAnimationOptions:0 changes:v16];

            _Block_release(v16);
            return;
          }

          sub_1A3C372E0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1A52F9790;
          v17 = *(v0 + v3);
          if (v17)
          {
            sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
            v18 = swift_allocObject();
            v19 = [v17 actionPerformer];
            swift_unknownObjectWeakInit();
            swift_unknownObjectRelease();

            v20 = sub_1A524C634();
            v21 = objc_opt_self();
            v22 = [v21 _systemImageNamed_];

            sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);

            sub_1A524DC64();
            v23 = sub_1A524D2F4();
            v24 = sub_1A524C634();
            v25 = PXLocalizedString(v24);

            if (!v25)
            {
              sub_1A524C674();
              v25 = sub_1A524C634();
            }

            [v23 setAccessibilityLabel_];

            *(v41 + 32) = v23;
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1A52F9790;
            v27 = *(v1 + v3);
            if (v27)
            {
              v28 = inited;
              v29 = swift_allocObject();
              v30 = [v27 actionPerformer];
              swift_unknownObjectWeakInit();
              swift_unknownObjectRelease();

              v31 = sub_1A524C634();
              v32 = [v21 _systemImageNamed_];

              sub_1A524DC64();
              v33 = sub_1A524D2F4();
              v34 = sub_1A524C634();
              v35 = PXLocalizedString(v34);

              if (!v35)
              {
                sub_1A524C674();
                v35 = sub_1A524C634();
              }

              [v33 setAccessibilityLabel_];

              *(v28 + 32) = v33;
              aBlock[0] = v28;
              v36 = sub_1A42ADC0C(v42);
              if (v36)
              {
                v37 = v36;
                sub_1A42AFBFC(0, 0, v36);
              }

              v38 = swift_initStackObject();
              *(v38 + 16) = xmmword_1A52F9790;
              *(v38 + 32) = [objc_opt_self() flexibleSpaceItem];
              sub_1A3FEBA64(v38, v39);
              sub_1A3FEBA64(aBlock[0], v40);
              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            goto LABEL_34;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }
}

void sub_1A42AC670()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
  if (!v2)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ([v2 isInSelectMode])
  {
    return;
  }

  v3 = *(v0 + v1);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = [v3 viewMode];
  if (v4 == 2)
  {
    v13 = *(v0 + v1);
    if (!v13)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (([v13 chromeItems] & 0x20000) != 0)
    {
      sub_1A3C372E0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1A52F9790;
      sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
      v14 = swift_allocObject();
      v7 = v0;
      swift_unknownObjectWeakInit();

      v15 = sub_1A524C634();
      v16 = [objc_opt_self() _systemImageNamed_];

      sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);

      v31 = sub_1A42AFE84;
      v32 = v14;
      sub_1A524DC64();
      v10 = sub_1A524D2F4();
      v11 = sub_1A524C634();
      v12 = PXLocalizedString(v11);
      goto LABEL_14;
    }
  }

  else
  {
    if (v4 == 4)
    {
      sub_1A3C372E0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1A52F9790;
      sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
      v6 = swift_allocObject();
      v7 = v0;
      swift_unknownObjectWeakInit();

      v8 = sub_1A524C634();
      v9 = [objc_opt_self() _systemImageNamed_];

      sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);

      v31 = sub_1A42AFEA4;
      v32 = v6;
      sub_1A524DC64();
      v10 = sub_1A524D2F4();
      v11 = sub_1A524C634();
      v12 = PXLocalizedString(v11);
LABEL_14:
      v24 = v12;

      if (!v24)
      {
        sub_1A524C674();
        v24 = sub_1A524C634();
      }

      [v10 setAccessibilityLabel_];

      *(v5 + 32) = v10;
      v0 = v7;
      goto LABEL_17;
    }

    v17 = *(v0 + v1);
    if (!v17)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v17 wantsChromeVisible])
    {
      sub_1A3C372E0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1A52F9790;
      v7 = v0;
      v19 = *(v0 + v1);
      if (!v19)
      {
LABEL_30:
        __break(1u);
        return;
      }

      v5 = v18;
      sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
      v20 = swift_allocObject();
      v21 = [v19 actionPerformer];
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();

      v22 = sub_1A524C634();
      v23 = [objc_opt_self() _systemImageNamed_];

      sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);

      v31 = sub_1A42AFE1C;
      v32 = v20;
      sub_1A524DC64();
      v10 = sub_1A524D2F4();
      v11 = sub_1A524C634();
      v12 = PXLocalizedString(v11);
      goto LABEL_14;
    }
  }

LABEL_17:
  v25 = OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_navigationItem;
  v26 = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_navigationItem);
  if (!v26)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = [v26 leftBarButtonItems];
  if (v27)
  {
    v28 = v27;
    sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
    sub_1A524CA34();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v29 = *(v0 + v25);
  if (!v29)
  {
    goto LABEL_27;
  }

  sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
  v30 = v29;
  v33 = sub_1A524CA14();

  [v30 setLeftBarButtonItems_];
}

void sub_1A42ACDDC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
  if (!v2)
  {
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if ([v2 isInSelectMode])
  {
    return;
  }

  v3 = *(v0 + v1);
  if (!v3)
  {
    goto LABEL_54;
  }

  if ([v3 isAnyMenuOpen])
  {
    return;
  }

  v69 = MEMORY[0x1E69E7CC0];
  v4 = *(v0 + v1);
  if (!v4)
  {
    goto LABEL_55;
  }

  v5 = [v4 viewMode];
  if (v5 != 4)
  {
    if (v5 == 2)
    {
      v6 = *(v0 + v1);
      if (!v6)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if (([v6 chromeItems] & 0x80000000) != 0)
      {
        v15 = sub_1A524C634();
        v16 = PXLocalizedString(v15);

        sub_1A524C674();
        v17 = v0;
        v18 = *(v0 + v1);
        if (!v18)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
        sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);
        v19 = swift_allocObject();
        v20 = [v18 actionPerformer];
        swift_unknownObjectWeakInit();
        swift_unknownObjectRelease();
        sub_1A524DC64();
        v21 = sub_1A524D2F4();
        v22 = sub_1A524C634();
        v23 = PXLocalizedString(v22);

        if (!v23)
        {
          sub_1A524C674();
          v23 = sub_1A524C634();
        }

        [v21 setAccessibilityLabel_];

        v24 = v21;
        MEMORY[0x1A5907D70]();
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();

        v0 = v17;
      }

      v25 = *(v0 + v1);
      if (!v25)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (([v25 chromeItems] & 0x20000000) != 0)
      {
        v26 = v0;
        v27 = *(v0 + v1);
        if (!v27)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
        v28 = swift_allocObject();
        v29 = [v27 actionPerformer];
        swift_unknownObjectWeakInit();
        swift_unknownObjectRelease();

        v30 = sub_1A524C634();
        v31 = [objc_opt_self() _systemImageNamed_];

        sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);

        sub_1A524DC64();
        v32 = sub_1A524D2F4();
        v33 = sub_1A524C634();
        v34 = PXLocalizedString(v33);

        if (!v34)
        {
          sub_1A524C674();
          v34 = sub_1A524C634();
        }

        [v32 setAccessibilityLabel_];

        MEMORY[0x1A5907D70](v35);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v0 = v26;
      }
    }

    else
    {
      v7 = *(v0 + v1);
      if (!v7)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v8 = [v7 wantsRelatedOverlayVisible];
      v9 = *(v0 + v1);
      if (v8)
      {
        if (!v9)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (([v9 chromeItems] & 0x100000000) != 0)
        {
          v10 = *(v0 + v1);
          if (!v10)
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v11 = [v10 generativeStoryInWatchNextController];
          sub_1A524E0B4();
          swift_unknownObjectRelease();
          type metadata accessor for GenerativeStoryInWatchNextController(0);
          if (swift_dynamicCast())
          {
            sub_1A3C372E0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v12 = swift_allocObject();
            *(v12 + 16) = xmmword_1A52F9790;
            sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
            v13 = sub_1A524C634();
            v14 = PXMemoryCreationLocalizedString(v13);

            sub_1A524C674();
            sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);
            swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1A524DC64();
            *(v12 + 32) = sub_1A524D2F4();
          }
        }
      }

      else
      {
        if (!v9)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if ([v9 wantsChromeVisible])
        {
          v36 = *(v0 + v1);
          if (!v36)
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          [v36 isMuted];
          v37 = *(v0 + v1);
          if (!v37)
          {
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          [v37 isMuted];
          sub_1A3C372E0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1A52F9DE0;
          *(v38 + 32) = sub_1A42ADAF8();
          v67 = v0;
          v39 = *(v0 + v1);
          if (!v39)
          {
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
          v40 = swift_allocObject();
          v41 = [v39 actionPerformer];
          swift_unknownObjectWeakInit();
          swift_unknownObjectRelease();

          v42 = sub_1A524C634();
          v43 = objc_opt_self();
          v44 = [v43 _systemImageNamed_];

          sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);

          sub_1A524DC64();
          v45 = sub_1A524D2F4();
          v46 = sub_1A524C634();
          v47 = PXLocalizedString(v46);

          if (!v47)
          {
            sub_1A524C674();
            v47 = sub_1A524C634();
          }

          [v45 setAccessibilityLabel_];

          *(v38 + 40) = v45;
          v70 = v38;
          v0 = v67;
          v48 = *(v67 + v1);
          if (!v48)
          {
            goto LABEL_69;
          }

          v49 = v48;

          v50 = [v49 chromeItems];

          if ((v50 & 0x10000) != 0)
          {
            v51 = *(v67 + v1);
            if (!v51)
            {
LABEL_70:
              __break(1u);
              return;
            }

            v52 = swift_allocObject();
            v53 = [v51 actionPerformer];
            swift_unknownObjectWeakInit();
            swift_unknownObjectRelease();

            v54 = sub_1A524C634();
            v55 = [v43 _systemImageNamed_];

            sub_1A524DC64();
            v56 = sub_1A524D2F4();
            v57 = sub_1A524C634();
            v58 = PXLocalizedString(v57);

            if (!v58)
            {
              sub_1A524C674();
              v58 = sub_1A524C634();
            }

            [v56 setAccessibilityLabel_];

            MEMORY[0x1A5907D70](v59);
            if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A524CA74();
            }

            sub_1A524CAE4();
            v0 = v67;
          }
        }
      }
    }
  }

  v60 = OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_navigationItem;
  v61 = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_navigationItem);
  if (!v61)
  {
    goto LABEL_56;
  }

  v62 = [v61 rightBarButtonItems];
  if (v62)
  {
    v63 = v62;
    sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
    sub_1A524CA34();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v64 = *(v0 + v60);
  if (!v64)
  {
    goto LABEL_57;
  }

  sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
  v65 = v64;
  v66 = sub_1A524CA14();

  [v65 setRightBarButtonItems_];
}

id sub_1A42ADAF8()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v1 = sub_1A42AF454(0x73697370696C6C65, 0xE800000000000000, sub_1A42AF99C, v0);

  v2 = v1;
  v3 = sub_1A524C634();
  v4 = PXLocalizedString(v3);

  if (!v4)
  {
    sub_1A524C674();
    v4 = sub_1A524C634();
  }

  [v2 setAccessibilityLabel_];

  return v2;
}

id sub_1A42ADC0C(id result)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v1;
  v5 = result;
  v6 = v3;
  PXStoryViewModel.desiredFeedbackAction.getter(&v16);

  v15 = 2;
  if (!static PXStoryViewModel.FeedbackAction.== infix(_:_:)(&v16, &v15))
  {
    return 0;
  }

  result = *(v4 + v2);
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = [result mainAssetCollection];
  if (!result)
  {
    return result;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    type metadata accessor for PhotosFeedbackActionPerformer();
    v9 = PhotosFeedbackActionPerformer.__allocating_init(parentViewController:)(v5);
    if (v9)
    {
      v10 = v9;
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = v8;
      v12[3] = v10;
      v12[4] = v11;
      v12[5] = 0xD00000000000001ALL;
      v12[6] = 0x80000001A53CAFC0;
      swift_unknownObjectRetain();
      v13 = v10;

      v14 = sub_1A42AF454(0xD000000000000016, 0x80000001A53CAFA0, sub_1A42AF174, v12);

      swift_unknownObjectRelease();
      return v14;
    }
  }

  swift_unknownObjectRelease();
  return 0;
}

id sub_1A42ADDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_1A3C57128(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    sub_1A3C52C70(0, &qword_1EB126C10, 0x1E69DCC78);
    v3 = sub_1A524CA34();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1A3C35B00(v10);

  return v6;
}

void sub_1A42ADEBC()
{
  v1 = sub_1A52404F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel;
  v7 = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
  if (!v7)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ([v7 isInSelectMode])
  {
    return;
  }

  v8 = *(v0 + v6);
  v28 = v2;
  if (!v8)
  {
    v10 = (v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_navigationItem);
    v11 = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_navigationItem);
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v9 = [v8 chromeTitleInfo];
  v10 = (v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_navigationItem);
  v11 = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_navigationItem);
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = v9;
  if (!v9)
  {
LABEL_9:
    v13 = v11;
    v12 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 1;
    goto LABEL_10;
  }

  v13 = v11;
  v14 = [v12 title];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1A524C674();
    v18 = v17;

    v19 = 0;
  }

  else
  {
    v19 = 0;
    v16 = 0;
    v18 = 0;
  }

LABEL_10:
  if (sub_1A42AE2C4())
  {
    if (v18)
    {
      v29 = v16;
      v30 = v18;
      sub_1A52404C4();
      sub_1A3D5F9DC();
      sub_1A524DFB4();
      (*(v28 + 8))(v5, v1);

      v18 = sub_1A524C634();
    }
  }

  else
  {

    v18 = 0;
  }

  [v13 setTitle_];

  if (!*v10)
  {
    goto LABEL_30;
  }

  v20 = *v10;
  if ((v19 & 1) != 0 || (v21 = [v12 subtitle]) == 0)
  {
    v23 = 0;
    v25 = 0;
  }

  else
  {
    v22 = v21;
    v23 = sub_1A524C674();
    v25 = v24;
  }

  if (sub_1A42AE2C4())
  {
    if (!v25)
    {
      v26 = 0;
      goto LABEL_24;
    }

    v29 = v23;
    v30 = v25;
    sub_1A52404C4();
    sub_1A3D5F9DC();
    sub_1A524DFB4();
    (*(v28 + 8))(v5, v1);

    v26 = sub_1A524C634();
  }

  else
  {
    v26 = 0;
  }

LABEL_24:
  [v20 setSubtitle_];
}

void sub_1A42AE204(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PXStoryModelChange(0);
    sub_1A42AFCE8(&qword_1EB137048, type metadata accessor for PXStoryModelChange, &unk_1A532B81C);
    sub_1A524EE54();
  }
}

void *sub_1A42AE2C4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel;
  result = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = [result wantsChromeVisible];
  result = *(v0 + v1);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = [result mainModel];
  v5 = [v4 isFirstSegmentVisible];

  result = *(v0 + v1);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = [result viewMode];
  result = *(v0 + v1);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = [result viewMode] == 1;
  result = *(v0 + v1);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ([result viewMode] == 2)
  {
    result = *(v0 + v1);
    if (!result)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v8 = [result isInSelectMode] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  result = *(v0 + v1);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ([result wantsRelatedOverlayVisible])
  {
    v9 = 0;
  }

  else
  {
    if (v6 == 4)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }

    v9 = v10 | v7 & v3 & (v5 ^ 1);
  }

  return (v9 & 1);
}

void sub_1A42AE40C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = [v2 viewMode];
  v4 = *(v0 + v1);
  if (!v4)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = [v4 wantsChromeVisible];
  if (v3 == 4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(v0 + v1);
  if (!v7)
  {
    goto LABEL_18;
  }

  if ([v7 wantsChromeVisible])
  {
    goto LABEL_10;
  }

  v8 = *(v0 + v1);
  if (!v8)
  {
    goto LABEL_19;
  }

  if ([v8 viewMode] == 4)
  {
LABEL_10:
    v9 = 1;
    v10 = sub_1A42AE5DC();
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v16 = *(v0 + v1);
  if (!v16)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v9 = [v16 needsStatusBarVisible];
  v10 = sub_1A42AE5DC();
  if (v10)
  {
LABEL_11:
    v11 = v10;
    v12 = [v10 px_barAppearance];

    v13 = [objc_allocWithZone(PXBarAnimationOptions) initWithType_];
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 17) = v9;
    v17[4] = sub_1A42AF120;
    v17[5] = v14;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1A421179C;
    v17[3] = &block_descriptor_144;
    v15 = _Block_copy(v17);

    [v12 performChangesWithAnimationOptions:v13 changes:v15];
    _Block_release(v15);
  }
}

id sub_1A42AE5DC()
{
  result = *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
  if (result)
  {
    v2 = [result presentingViewController];
    if (!v2 || (v3 = v2, swift_unknownObjectRelease(), (result = v3) == 0))
    {
      v4 = sub_1A5246F04();
      v5 = sub_1A524D244();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1A3C1C000, v4, v5, "Expected to have a presenting view controller, player chrome is likely to be misconfigured now", v6, 2u);
        MEMORY[0x1A590EEC0](v6, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id StoryViewControllerDefaultChromeBarsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void StoryViewControllerDefaultChromeBarsController.init()()
{
  *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_navigationItem) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModelObservation);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_modelObservation);
  *v2 = 0;
  v2[1] = 0;
  sub_1A5246EF4();
}

uint64_t type metadata accessor for StoryViewControllerDefaultChromeBarsController(uint64_t a1)
{
  result = qword_1EB1B3718;
  if (!qword_1EB1B3718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A42AE8D0(uint64_t a1)
{
  result = sub_1A5246F24();
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

void sub_1A42AE9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21.receiver = v3;
  v21.super_class = type metadata accessor for MenuVisibilityTrackingButton(a1, a2);
  objc_msgSendSuper2(&v21, sel_contextMenuInteraction_willDisplayMenuForConfiguration_animator_, a1, a2, a3);
  v7 = [v3 menu];
  if (!v7)
  {
    v8 = [v3 _menuProvider];
    if (v8)
    {
      v9 = v8;
      memset(v20, 0, sizeof(v20));
      sub_1A3EBECA4(v20, v18);
      v10 = v19;
      if (v19)
      {
        v11 = __swift_project_boxed_opaque_existential_1(v18, v19);
        v12 = *(v10 - 8);
        v13 = MEMORY[0x1EEE9AC00](v11);
        v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v12 + 16))(v15, v13);
        v16 = sub_1A524EA94();
        (*(v12 + 8))(v15, v10);
        __swift_destroy_boxed_opaque_existential_0(v18);
      }

      else
      {
        v16 = 0;
      }

      v7 = v9[2](v9, v16, 0);
      swift_unknownObjectRelease();
      _Block_release(v9);
      sub_1A3C35B00(v20);
    }

    else
    {
      v7 = 0;
    }
  }

  [v7 willOpen];
  v17 = *&v3[OBJC_IVAR____TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton_currentlyOpenMenu];
  *&v3[OBJC_IVAR____TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton_currentlyOpenMenu] = v7;
}

void sub_1A42AEBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for MenuVisibilityTrackingButton(a1, a2);
  objc_msgSendSuper2(&v10, sel_contextMenuInteraction_willEndForConfiguration_animator_, a1, a2, a3);
  v7 = [v3 menu];
  if (!v7)
  {
    v7 = *&v3[OBJC_IVAR____TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton_currentlyOpenMenu];
  }

  v8 = v7;
  [v7 didClose];

  v9 = *&v3[OBJC_IVAR____TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton_currentlyOpenMenu];
  *&v3[OBJC_IVAR____TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton_currentlyOpenMenu] = 0;
}

void sub_1A42AECA8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

id sub_1A42AEE64(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A42AEED0(unint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1A59097F0](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1A59097F0](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_1A524DBF4();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_1A524DBF4();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v6 = sub_1A524E2B4();
  }

  result = sub_1A524E2B4();
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

id sub_1A42AF120(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  [a1 setPrefersNavigationBarVisible_];

  return [a1 setPrefersStatusBarVisible_];
}

void sub_1A42AF174()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  static GenerativeStoryFeedbackMenuFactory.makeMenu(memory:actionPerformer:invertedOrder:presentationPrepareHandler:)(v1, v2, 1, sub_1A42AF6C4, v5);

  v7 = swift_allocObject();
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v3;
  v9[4] = v4;
  aBlock[4] = sub_1A42AF790;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_45_2;
  _Block_copy(aBlock);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A42AF454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1A524DE34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = aBlock - v11;
  sub_1A524DDE4();
  sub_1A524DCF4();
  v13 = sub_1A524C634();
  v14 = [objc_opt_self() _systemImageNamed_];

  v15 = sub_1A524DDD4();
  type metadata accessor for MenuVisibilityTrackingButton(v15, v16);
  (*(v7 + 16))(v9, v12, v6);
  v17 = sub_1A524DE44();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A42ADDD8;
  aBlock[3] = &block_descriptor_37_1;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  [v19 _setMenuProvider_];
  _Block_release(v18);

  [v19 setShowsMenuAsPrimaryAction_];
  v20 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

  (*(v7 + 8))(v12, v6);
  return v20;
}

void sub_1A42AF6C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    aBlock[4] = sub_1A4173E38;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D59380;
    aBlock[3] = &block_descriptor_67_0;
    v2 = _Block_copy(aBlock);
    [v1 performChanges_];
    _Block_release(v2);
  }
}

uint64_t objectdestroy_41Tm()
{

  return swift_deallocObject();
}

void sub_1A42AF820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    aBlock[4] = a2;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D59380;
    aBlock[3] = a3;
    _Block_copy(aBlock);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A42AF930(void *a1, char a2)
{
  v4 = sub_1A524C634();
  [a1 setMenuIsOpen:a2 & 1 withIdentifier:v4];
}

id sub_1A42AF99C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [objc_opt_self() defaultStoryActionsMenuWithViewModel_];

  return v2;
}

id sub_1A42AFA44(void *a1, __n128 a2)
{
  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    v6 = a1;
    v4 = sub_1A524E2B4();
    a1 = v6;
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return [a1 setPrefersToolbarVisible_];
}

char *sub_1A42AFAD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1A524E2B4();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_1A524E2B4();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1A42AFBFC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    if (!v10)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1A524E2B4();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v14 = sub_1A524E2B4();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = (v14 + v13);
  if (v15)
  {
    goto LABEL_18;
  }

  sub_1A3D5C1C8(result, 1);

  return sub_1A42AFAD0(v8, v7, 1, v5, v16);
}

uint64_t sub_1A42AFCE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1A42AFD54(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result performActionForChromeActionMenuItem:a2 withValue:0 sender:objc_msgSend(a1 presentationSource:{sel_sender), objc_msgSend(a1, sel_presentationSourceItem)}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1A42AFE28(uint64_t a1, const char **a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A42AFEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC12PhotosUICore46StoryViewControllerDefaultChromeBarsController_viewModel);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      v9 = [v8 mainModel];

      aBlock[4] = a2;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D59380;
      aBlock[3] = a3;
      v10 = _Block_copy(aBlock);
      [v9 performChanges_];
      _Block_release(v10);
    }
  }
}

void sub_1A42AFFCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PXStoryViewModelChange(0);
    sub_1A42AFCE8(&qword_1EB137050, type metadata accessor for PXStoryViewModelChange, &unk_1A532B7E4);
    sub_1A524EE54();
  }
}

void sub_1A42B041C(uint64_t a1@<X8>)
{
  sub_1A42B0ED0(0);
  sub_1A42B0F80(0, v3);
  sub_1A3C29C9C(&qword_1EB137128, sub_1A42B0ED0, MEMORY[0x1E697FDF8]);
  sub_1A42B1004(255, v4);
  v23 = v6;
  v24 = sub_1A42B1524(v5);
  swift_getOpaqueTypeConformance2();
  sub_1A524B0E4();
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v26 = *(v1 + 8);
  v7 = v26;
  v10 = swift_allocObject();
  v11 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v1 + 32);
  *(v10 + 64) = *(v1 + 48);
  sub_1A42B1C30(0);
  v13 = (a1 + *(v12 + 36));
  *v13 = sub_1A42B1C28;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;

  sub_1A3DB8180(&v26, &v23);

  v14 = sub_1A524BD54();
  v15 = sub_1A45D4A14();
  sub_1A42B1D9C(0);
  v17 = a1 + *(v16 + 36);
  *v17 = v14;
  *(v17 + 8) = v15 & 1;
  v18 = sub_1A524BD54();
  v23 = v7;
  v24 = v8;
  v25 = v9;
  sub_1A42B1380(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v22);
  v19 = v22;
  sub_1A42B1EA8(0);
  v21 = a1 + *(v20 + 36);
  *v21 = v18;
  *(v21 + 8) = v19;
}

uint64_t sub_1A42B063C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v78 = a2;
  sub_1A42B14C0(0, a3);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697C5D8];
  sub_1A42B2250(0, &qword_1EB137100, sub_1A42B14C0, MEMORY[0x1E697C5D8]);
  v77 = v8;
  v74 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v62 - v9;
  v10 = sub_1A5248114();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1A5248364();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v62 - v17;
  sub_1A42B10C8(0, v16);
  v69 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42B2250(0, &qword_1EB1370D0, sub_1A42B10C8, v7);
  v76 = v21;
  v70 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v62 - v22;
  sub_1A42B12EC(0);
  v68 = v23;
  v66 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v64 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A52498B4();
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  sub_1A42B1138(0, v26);
  v62 = *(v27 - 8);
  v63 = v27;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v71 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42B1004(0, v28);
  v75 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1A45D4A14() & 1) != 0 && (v80 = *(a1 + 8), v81 = *(a1 + 24), sub_1A42B1380(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x1A5906C60](&v79), (v79 & 1) == 0))
  {
    v43 = sub_1A5249824();
    MEMORY[0x1EEE9AC00](v43);
    *(&v62 - 2) = a1;
    sub_1A42B11A8(0);
    sub_1A42B123C();
    v44 = v71;
    sub_1A5247F24();
    v45 = sub_1A5249834();
    MEMORY[0x1EEE9AC00](v45);
    *(&v62 - 2) = a1;
    sub_1A42B1380(0, &qword_1EB125418, &type metadata for GenerativeStoryTapToRadarButton, MEMORY[0x1E69E6720]);
    sub_1A42B13D0();
    v46 = v64;
    sub_1A5247F24();
    v47 = *(v69 + 48);
    v49 = v62;
    v48 = v63;
    v50 = v65;
    (*(v62 + 16))(v65, v44, v63);
    v51 = v66;
    v52 = v68;
    (*(v66 + 16))(&v50[v47], v46, v68);
    v53 = v67;
    sub_1A52495D4();
    v55 = sub_1A42B15EC(&qword_1EB137118, &qword_1EB1370D0, sub_1A42B10C8, v54);
    v57 = sub_1A42B15EC(&qword_1EB137120, &qword_1EB137100, sub_1A42B14C0, v56);
    v58 = v76;
    MEMORY[0x1A5904CE0](v53, v76, v77, v55, v57);
    (*(v70 + 8))(v53, v58);
    (*(v51 + 8))(v46, v52);
    v42 = (*(v49 + 8))(v71, v48);
  }

  else
  {
    sub_1A52480F4();
    sub_1A5249824();
    sub_1A5248374();
    sub_1A52480F4();
    sub_1A5249834();
    sub_1A5248374();
    v33 = *(v73 + 48);
    v34 = *(v12 + 16);
    v34(v6, v18, v11);
    v34(&v6[v33], v14, v11);
    v35 = v72;
    sub_1A52495D4();
    v37 = sub_1A42B15EC(&qword_1EB137118, &qword_1EB1370D0, sub_1A42B10C8, v36);
    v39 = sub_1A42B15EC(&qword_1EB137120, &qword_1EB137100, sub_1A42B14C0, v38);
    v40 = v77;
    MEMORY[0x1A5904CF0](v35, v76, v77, v37, v39);
    (*(v74 + 8))(v35, v40);
    v41 = *(v12 + 8);
    v41(v14, v11);
    v41(v18, v11);
  }

  v59 = sub_1A42B1524(v42);
  v60 = MEMORY[0x1A5904CD0](v32, v75, v59);
  return sub_1A42B22B4(v32, v60);
}

void sub_1A42B0ED0(uint64_t a1)
{
  if (!qword_1EB1370B0)
  {
    sub_1A42B0F2C();
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1370B0);
    }
  }
}

unint64_t sub_1A42B0F2C()
{
  result = qword_1EB1370B8;
  if (!qword_1EB1370B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1370B8);
  }

  return result;
}

void sub_1A42B0F80(uint64_t a1, double a2)
{
  if (!qword_1EB1370C0)
  {
    sub_1A42B1004(255, a2);
    sub_1A42B1524(v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1370C0);
    }
  }
}

void sub_1A42B1004(uint64_t a1, double a2)
{
  if (!qword_1EB1370C8)
  {
    v2 = MEMORY[0x1E697C5D8];
    sub_1A42B2250(255, &qword_1EB1370D0, sub_1A42B10C8, MEMORY[0x1E697C5D8]);
    sub_1A42B2250(255, &qword_1EB137100, sub_1A42B14C0, v2);
    v3 = sub_1A5249754();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB1370C8);
    }
  }
}

void sub_1A42B10C8(uint64_t a1, double a2)
{
  if (!qword_1EB1370D8)
  {
    sub_1A42B1138(255, a2);
    sub_1A42B12EC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1370D8);
    }
  }
}

void sub_1A42B1138(uint64_t a1, double a2)
{
  if (!qword_1EB1370E0)
  {
    sub_1A42B11A8(255);
    sub_1A42B123C();
    v2 = sub_1A5247F34();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1370E0);
    }
  }
}

void sub_1A42B11A8(uint64_t a1)
{
  if (!qword_1EB1370E8)
  {
    sub_1A42B1E54(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    sub_1A5249F54();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1370E8);
    }
  }
}

unint64_t sub_1A42B123C()
{
  result = qword_1EB1370F0;
  if (!qword_1EB1370F0)
  {
    sub_1A42B11A8(255);
    sub_1A425618C();
    sub_1A3C29C9C(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1370F0);
  }

  return result;
}

void sub_1A42B12EC(uint64_t a1)
{
  if (!qword_1EB1370F8)
  {
    sub_1A42B1380(255, &qword_1EB125418, &type metadata for GenerativeStoryTapToRadarButton, MEMORY[0x1E69E6720]);
    sub_1A42B13D0();
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1370F8);
    }
  }
}

void sub_1A42B1380(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A42B13D0()
{
  result = qword_1EB125410;
  if (!qword_1EB125410)
  {
    sub_1A42B1380(255, &qword_1EB125418, &type metadata for GenerativeStoryTapToRadarButton, MEMORY[0x1E69E6720]);
    sub_1A42B146C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125410);
  }

  return result;
}

unint64_t sub_1A42B146C()
{
  result = qword_1EB125420;
  if (!qword_1EB125420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125420);
  }

  return result;
}

void sub_1A42B14C0(uint64_t a1, double a2)
{
  if (!qword_1EB137108)
  {
    sub_1A5248364();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137108);
    }
  }
}

unint64_t sub_1A42B1524(double a1)
{
  result = qword_1EB137110;
  if (!qword_1EB137110)
  {
    sub_1A42B1004(255, a1);
    sub_1A42B15EC(&qword_1EB137118, &qword_1EB1370D0, sub_1A42B10C8, v2);
    sub_1A42B15EC(&qword_1EB137120, &qword_1EB137100, sub_1A42B14C0, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137110);
  }

  return result;
}

uint64_t sub_1A42B15EC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), double a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A42B2250(255, a2, a3, MEMORY[0x1E697C5D8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A42B1650(uint64_t a1)
{
  sub_1A42B1E54(0, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
  MEMORY[0x1EEE9AC00](v1);

  sub_1A524B704();
  sub_1A4406154();
  sub_1A425618C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void *sub_1A42B17C8(uint64_t a1)
{
  v28 = sub_1A524BEE4();
  v31 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BFC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  aBlock = v14;
  v34 = v15;
  LOBYTE(v35) = v16;
  sub_1A42B1380(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  result = MEMORY[0x1A5906C60](&v39);
  if (v39 == 1)
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v25 = sub_1A524D474();
    sub_1A524BFA4();
    sub_1A524C014();
    v18 = *(v8 + 8);
    v26 = v7;
    v27 = v18;
    v18(v10, v7);
    v39 = v14;
    v19 = swift_allocObject();
    v20 = *(a1 + 16);
    *(v19 + 16) = *a1;
    *(v19 + 32) = v20;
    *(v19 + 48) = *(a1 + 32);
    *(v19 + 64) = *(a1 + 48);
    v37 = sub_1A42B21DC;
    v38 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1A3C2E0D0;
    v36 = &block_descriptor_145;
    v21 = _Block_copy(&aBlock);

    sub_1A3DB8180(&v39, v32);

    sub_1A524BF14();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1A3C29C9C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A42B2250(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    v22 = v28;
    sub_1A524E224();
    v23 = v25;
    MEMORY[0x1A5908790](v13, v6, v3, v21);
    _Block_release(v21);

    (*(v31 + 8))(v3, v22);
    (*(v29 + 8))(v6, v30);
    return v27(v13, v26);
  }

  return result;
}

void sub_1A42B1C30(uint64_t a1)
{
  if (!qword_1EB137130)
  {
    sub_1A42B1C90(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137130);
    }
  }
}

void sub_1A42B1C90(uint64_t a1)
{
  if (!qword_1EB137138)
  {
    sub_1A42B0ED0(255);
    sub_1A42B0F80(255, v1);
    sub_1A3C29C9C(&qword_1EB137128, sub_1A42B0ED0, MEMORY[0x1E697FDF8]);
    sub_1A42B1004(255, v2);
    sub_1A42B1524(v3);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137138);
    }
  }
}

void sub_1A42B1DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A42B1E54(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A42B1E54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A42B1EC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B544();
  *a1 = result;
  return result;
}

uint64_t sub_1A42B1F08@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = 0x3FD999999999999ALL;
  return result;
}

uint64_t sub_1A42B1FD0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A3E734D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A42B2054()
{
  result = qword_1EB137160;
  if (!qword_1EB137160)
  {
    sub_1A42B1C30(255);
    sub_1A42B0ED0(255);
    sub_1A42B0F80(255, v1);
    sub_1A3C29C9C(&qword_1EB137128, sub_1A42B0ED0, MEMORY[0x1E697FDF8]);
    sub_1A42B1004(255, v2);
    sub_1A42B1524(v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137160);
  }

  return result;
}

uint64_t objectdestroyTm_43()
{

  return swift_deallocObject();
}

void sub_1A42B2250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A42B22B4(uint64_t a1, double a2)
{
  sub_1A42B1004(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A42B2318(uint64_t a1@<X8>)
{
  sub_1A3C52C70(0, &qword_1EB126BB0, off_1E771F528);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 canShowInternalUI];

  if (v3)
  {

    sub_1A4365EA8(v4, v8);
    v5 = v8[0];
    v6 = v8[1];
    v7 = v9;
  }

  else
  {
    v7 = 0;
    v5 = xmmword_1A5317AF0;
    v6 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
}

void sub_1A42B23CC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_contentView;
  v5 = *&v1[OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_contentView];
  v6 = *&v1[OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration];
  if (v6)
  {
    v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x80);
    v8 = v5;
    v9 = v6;
    v10 = v7();

    v11 = [v10 view];
    if (v5)
    {
      if (v11 && v5 == v11)
      {
        v12 = 0;
        v44 = 1;
        v11 = v5;
        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_13:
    v44 = v11 == 0;
    v12 = 1;
    goto LABEL_14;
  }

  v13 = v5;
  v11 = 0;
  if (!v5)
  {
    goto LABEL_13;
  }

  v8 = v13;
LABEL_8:
  if (a1)
  {
    v14 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xE0);
    v15 = v8;
    v16 = v14();
    if (v16)
    {
      v18 = v16;
      v19 = v17;
      v16(v15);
      sub_1A3C33378(v18, v19);
    }
  }

  v12 = 0;
  v44 = 0;
LABEL_14:
  v20 = *&v2[v4];
  *&v2[v4] = v11;
  v21 = OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_contentView;
  v22 = *&v2[OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_contentView];
  v45 = v11;
  if (v20)
  {
    if (v22 == v20)
    {
      goto LABEL_28;
    }
  }

  else if (!v22)
  {
    goto LABEL_28;
  }

  [v20 removeFromSuperview];
  v23 = *&v2[v21];
  if (v23)
  {
    v24 = v23;
    [v2 bounds];
    if (CGRectIsEmpty(v47))
    {
      [v2 setFrame_];
    }

    v25 = OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration;
    v26 = *&v2[OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration];
    if (v26)
    {
      v27 = *((*MEMORY[0x1E69E7D40] & *v26) + 0xB0);
      v28 = v24;
      v29 = OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration;
      v30 = v26;
      v31 = v27();
      v33 = v32;

      v25 = v29;
      v24 = v28;
      if (v31)
      {
        v31(v28);
        sub_1A3C33378(v31, v33);
      }
    }

    [v24 setPreservesSuperviewLayoutMargins_];
    [v2 bounds];
    [v24 setFrame_];
    [v24 setAutoresizingMask_];
    [v2 addSubview_];
    [v2 setNeedsLayout];
    v34 = *&v2[v25];
    if (v34)
    {
      v35 = *((*MEMORY[0x1E69E7D40] & *v34) + 0xC8);
      v36 = v34;
      v37 = v35();
      v39 = v38;

      if (v37)
      {
        v37(v24);
        sub_1A3C33378(v37, v39);
      }
    }
  }

LABEL_28:

  if ((v12 & 1) == 0)
  {
    if (!v44 && a1 && (v40 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xF8))()) != 0)
    {
      v42 = v40;
      v43 = v41;
      v40(v5);

      sub_1A3C33378(v42, v43);
      v45 = v5;
    }

    else
    {
    }
  }
}

uint64_t sub_1A42B2930(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_userData;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1A42B29A0();
  return swift_unknownObjectRelease();
}

void sub_1A42B29A0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_userData;
  v2 = swift_beginAccess();
  if (*(v0 + v1))
  {
    type metadata accessor for PhotosPageContainerView.Configuration(v2, v3);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration) = v4;
  v6 = v4;
  sub_1A42B23CC(v5);
}

void (*sub_1A42B2A40(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A42B2AA4;
}

void sub_1A42B2AA4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A42B29A0();
  }
}

double sub_1A42B2B24()
{
  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_clippingRect;
  swift_beginAccess();
  return *v1;
}

void sub_1A42B2BDC(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_clippingRect);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

void sub_1A42B2CAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration);
  v2 = v1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration) = 0;
  sub_1A42B23CC(v1);
}

void sub_1A42B2D9C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A42B2DF8(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_viewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

void *sub_1A42B2EDC()
{
  v1 = OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_weakLayout;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A42B2F88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_weakLayout;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A42B31B4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1A3C66EE8(*v2, v2[1]);
  return v3;
}

id sub_1A42B3278(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_weakLayout] = 0;
  v4 = &v3[OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_willAdd];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_didAdd];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_willRemove];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_didRemove];
  *v7 = 0;
  *(v7 + 1) = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v10.receiver = v3;
  v10.super_class = v1;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id sub_1A42B3378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = type metadata accessor for PhotosPageContainerView.Configuration(a1, a2);
  *a3 = v5;

  return v5;
}

id sub_1A42B3580(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_contentView] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_userData] = 0;
  v4 = &v2[OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_clippingRect];
  v5 = *(MEMORY[0x1E695F050] + 16);
  *v4 = *MEMORY[0x1E695F050];
  *(v4 + 1) = v5;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for PhotosPageContainerView(a1, a2);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1A42B3668(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A42B3744(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A42B37A0(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore21FullPageScreenshotter_rootViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

id sub_1A42B3838(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

uint64_t sub_1A42B38EC()
{
  sub_1A3C52C70(0, &qword_1EB126BB0, off_1E771F528);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 canShowInternalUI];

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 enableFullPageScreenshots];

  return v1 & v3;
}

uint64_t sub_1A42B39A0(uint64_t a1)
{
  *(v1 + 72) = a1;
  v2 = swift_task_alloc();
  *(v1 + 80) = v2;
  *v2 = v1;
  v2[1] = sub_1A42B3A4C;

  return sub_1A42B9758(v1 + 16);
}

uint64_t sub_1A42B3A4C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v9 = *v0;
  v8 = *(*v0 + 16);
  v3 = *(*v0 + 32);
  v6 = *(v1 + 56);
  v7 = *(v1 + 40);

  *v2 = v8;
  *(v2 + 16) = v3;
  *(v2 + 40) = v6;
  *(v2 + 24) = v7;
  v4 = *(v9 + 8);

  return v4();
}

uint64_t sub_1A42B3D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_1A524CC54();
  v3[12] = sub_1A524CC44();
  v5 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42B3DE4, v5, v4);
}

uint64_t sub_1A42B3DE4()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];

  v0[13] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1A42B3EBC;

  return sub_1A42B9758((v0 + 2));
}

uint64_t sub_1A42B3EBC()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 72);
  v4 = *v0;
  v5 = *(*v0 + 16);
  v6 = *(*v0 + 24);
  v7 = *(*v0 + 32);
  v8 = *(*v0 + 40);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 56);
  v11 = *(*v0 + 64);

  if (v6 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    sub_1A3DB506C(v5, v6);
    v12 = sub_1A5240E84();
    sub_1A3DB556C(v5, v6);
  }

  v13 = *(v1 + 104);
  (v13)[2](v13, v12, v7, v8, v9, v10, v11);

  _Block_release(v13);
  sub_1A3DB556C(v5, v6);
  v14 = *(v4 + 8);

  return v14();
}

uint64_t sub_1A42B40CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  v4 = sub_1A5240CB4();
  v3[53] = v4;
  v3[54] = *(v4 - 8);
  v3[55] = swift_task_alloc();
  v5 = sub_1A5241144();
  v3[56] = v5;
  v3[57] = *(v5 - 8);
  v3[58] = swift_task_alloc();
  sub_1A3C4D1D8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v3[59] = swift_task_alloc();
  v6 = sub_1A5240E64();
  v3[60] = v6;
  v7 = *(v6 - 8);
  v3[61] = v7;
  v3[62] = *(v7 + 64);
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = sub_1A524CC54();
  v3[70] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v3[71] = v8;
  v3[72] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A42B4358, v8, v9);
}

uint64_t sub_1A42B4358()
{
  v303 = v0;
  v302 = *MEMORY[0x1E69E9840];
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  *(v0 + 584) = v1;
  *(v0 + 908) = [v1 enableFullPageScreenshotDebuggingOverlays];
  v2 = INFINITY;
  if ([v1 limitFullPageScreenshotScale])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = INFINITY;
  }

  if ([v1 limitFullPageScreenshotSize])
  {
    [v1 maximumFullPageScreenshotDimension];
    v2 = v4;
  }

  *(v0 + 592) = v2;
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  v7 = *(v0 + 472);
  v8 = [objc_opt_self() defaultManager];
  sub_1A42B8BC4(0x80000001A53D02E0, v7);

  v300 = v0;
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v9 = *(v0 + 472);

    sub_1A3C687E0(v9, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    sub_1A42B9E34();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();

LABEL_17:

    v34 = *(v300 + 8);
LABEL_18:

    return v34();
  }

  v11 = *(v0 + 544);
  v12 = *(v0 + 480);
  v13 = *(v0 + 488);
  v14 = *(v0 + 472);
  v15 = *(v0 + 416);
  v16 = *(v13 + 32);
  *(v0 + 600) = v16;
  *(v0 + 608) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v16(v11, v14, v12);
  v17 = [v15 viewIfLoaded];
  *(v0 + 616) = v17;
  if (!v17)
  {
    v29 = *(v0 + 544);
    v30 = *(v0 + 480);
    v31 = *(v0 + 488);

    sub_1A42B9E34();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();

    goto LABEL_16;
  }

  v18 = v17;
  v19 = [*(v0 + 416) viewIfLoaded];
  if (!v19 || (v20 = v19, [v19 bounds], v24 = sub_1A42B8FB0(v20, v21, v22, v23), *(v0 + 624) = v24, v20, !v24))
  {
    v29 = *(v0 + 544);
    v30 = *(v0 + 480);
    v31 = *(v0 + 488);

    sub_1A42B9E34();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();

LABEL_16:
    (*(v31 + 8))(v29, v30);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = [v25 superview];
  v283 = v3;
  if (v26)
  {
    v27 = v26;
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (!v28)
    {
    }
  }

  else
  {
    v28 = 0;
  }

  *(v0 + 632) = v28;
  [v25 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  *(v0 + 640) = v40;
  *(v0 + 648) = v42;
  [v25 px_minimumContentOffset];
  v45 = v44;
  v47 = v46;
  *(v0 + 656) = v44;
  *(v0 + 664) = v46;
  [v25 px_maximumContentOffset];
  v49 = v48;
  *(v0 + 672) = v50;
  *(v0 + 680) = v48;
  v280 = v45;
  v51 = v50 - v45;
  *(v0 + 240) = v37;
  *(v0 + 248) = v39;
  *(v0 + 256) = v41;
  *(v0 + 264) = v43;
  v305.origin.x = v37;
  v305.origin.y = v39;
  v305.size.width = v41;
  v305.size.height = v43;
  Width = CGRectGetWidth(v305);
  *(v0 + 688) = Width;
  v53 = v51 + Width;
  v306.origin.x = v37;
  v306.origin.y = v39;
  v306.size.width = v41;
  v306.size.height = v43;
  Height = CGRectGetHeight(v306);
  *(v0 + 696) = Height;
  v55 = v49 - v47 + Height;
  if (v53 >= v2)
  {
    v56 = v2;
  }

  else
  {
    v56 = v53;
  }

  if (v55 < v2)
  {
    v2 = v55;
  }

  v57 = ceil(v56 / v41);
  *(v0 + 704) = v57;
  if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_110;
  }

  if (v57 <= -9.22337204e18)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v57 >= 9.22337204e18)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v58 = ceil(v2 / v43);
  *(v0 + 712) = v58;
  if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v294 = v28;
  aBlock = v25;
  if (v58 >= 9.22337204e18)
  {
    goto LABEL_114;
  }

  v59 = *(v0 + 464);
  v60 = *(v0 + 456);
  v61 = *(v300 + 448);
  v62 = *(v300 + 440);
  v63 = *(v300 + 432);
  v64 = *(v300 + 424);
  sub_1A5241104();
  v65 = sub_1A42B94D8();
  v67 = v66;
  (*(v60 + 8))(v59, v61);
  *&v301.a = v65;
  v301.b = v67;
  MEMORY[0x1A5907B60](1717858350, 0xE400000000000000);
  *(v300 + 272) = v65;
  *(v300 + 280) = v67;
  v68 = *MEMORY[0x1E6968F70];
  *(v300 + 904) = *MEMORY[0x1E6968F70];
  v69 = *(v63 + 104);
  *(v300 + 720) = v69;
  *(v300 + 728) = (v63 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v277 = v68;
  v273 = v69;
  v69(v62);
  *(v300 + 736) = sub_1A3D5F9DC();
  sub_1A5240E54();
  v70 = *(v63 + 8);
  *(v300 + 744) = v70;
  *(v300 + 752) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v70(v62, v64);

  v71 = v300;
  v72 = sub_1A5240D44();
  v73 = CGDataConsumerCreateWithURL(v72);
  *(v300 + 760) = v73;

  if (!v73)
  {
    v289 = *(v300 + 544);
    v88 = *(v300 + 536);
    v89 = *(v300 + 488);
    v90 = *(v300 + 480);

    sub_1A42B9E34();
    swift_allocError();
    *v91 = 2;
    swift_willThrow();
    v92 = *(v89 + 8);
    v92(v88, v90);
    [aBlock setBounds_];

    v92(v289, v90);
    goto LABEL_17;
  }

  *(v300 + 208) = 0;
  *(v300 + 216) = 0;
  *(v300 + 224) = v56;
  *(v300 + 232) = v2;
  v74 = CGPDFContextCreate(v73, (v300 + 208), 0);
  *(v300 + 768) = v74;
  if (!v74)
  {
    v290 = *(v300 + 544);
    v93 = *(v300 + 536);
    v94 = *(v300 + 488);
    v95 = *(v300 + 480);

    sub_1A42B9E34();
    swift_allocError();
    *v96 = 2;
    swift_willThrow();

    v97 = *(v94 + 8);
    v97(v93, v95);
    [aBlock setBounds_];

    v97(v290, v95);
    goto LABEL_17;
  }

  v75 = *(v300 + 440);
  v76 = *(v300 + 424);
  v77 = [*(v300 + 416) traitCollection];
  v78 = [objc_opt_self() formatForTraitCollection_];
  *(v300 + 776) = v78;

  [v78 scale];
  if (v79 >= v283)
  {
    v79 = v283;
  }

  [v78 setScale_];
  *(v300 + 288) = 0xD000000000000012;
  *(v300 + 296) = 0x80000001A53D0300;
  v273(v75, v277, v76);
  sub_1A5240E54();
  v70(v75, v76);
  [aBlock setBounds_];
  [aBlock layoutIfNeeded];
  if (v294)
  {
    v80 = v294;
    *(v300 + 784) = sub_1A524CC44();
    v81 = sub_1A524CBC4();
    *(v300 + 792) = v81;
    *(v300 + 800) = v82;
    v83 = sub_1A42B609C;
    goto LABEL_39;
  }

  v98 = *(v300 + 776);
  v99 = *(v300 + 648);
  v100 = *(v300 + 640);
  v101 = *(v300 + 616);
  v291 = *(v300 + 600);
  v102 = *(v300 + 908);
  v103 = *(v300 + 536);
  v104 = *(v300 + 520);
  v105 = *(v300 + 488);
  v106 = *(v300 + 480);
  v286 = objc_autoreleasePoolPush();
  v107 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
  *(v300 + 352) = v100;
  *(v300 + 360) = v99;
  v108 = [v107 initWithSize:v98 format:{v100, v99}];
  (*(v105 + 16))(v104, v103, v106);
  v109 = (*(v105 + 80) + 57) & ~*(v105 + 80);
  v110 = swift_allocObject();
  *(v110 + 24) = 0;
  *(v110 + 32) = 0;
  *(v110 + 16) = v101;
  *(v110 + 40) = v100;
  *(v110 + 48) = v99;
  *(v110 + 56) = v102;
  v291(v110 + v109, v104, v106);
  v111 = swift_allocObject();
  *(v111 + 16) = sub_1A42B9E88;
  *(v111 + 24) = v110;
  *(v300 + 48) = sub_1A3D78DD0;
  *(v300 + 56) = v111;
  *(v300 + 16) = MEMORY[0x1E69E9820];
  *(v300 + 24) = 1107296256;
  *(v300 + 32) = sub_1A3D35A90;
  *(v300 + 40) = &block_descriptor_146;
  v112 = _Block_copy((v300 + 16));

  v113 = v101;

  v114 = [(UIImage *)v108 imageWithActions:v112];
  _Block_release(v112);
  LOBYTE(v112) = swift_isEscapingClosureAtFileLocation();

  if (v112)
  {
    goto LABEL_117;
  }

  v86 = UIImagePNGRepresentation(v114);
  if (!v86)
  {
    goto LABEL_123;
  }

  v115 = v86;
  v116 = sub_1A5240EA4();
  v118 = v117;

  sub_1A5240EB4();
  v119 = *(v300 + 712);
  sub_1A3C59280(v116, v118);

  objc_autoreleasePoolPop(v286);
  if (v119 < 0)
  {
    goto LABEL_118;
  }

  v120 = *(v300 + 712);
  v121 = v120;
  if (!v120)
  {
LABEL_60:
    v158 = *(v300 + 768);
    v159 = *(v300 + 696);
    v160 = *(v300 + 688);
    v161 = *(v300 + 680);
    v162 = *(v300 + 672);
    v163 = *(v300 + 664);
    v164 = *(v300 + 656);
    v165 = *(v300 + 624);
    v166 = *(v300 + 592);

    if (v159 + v161 - v163 >= v166)
    {
      v167 = v166;
    }

    else
    {
      v167 = v159 + v161 - v163;
    }

    if (v160 + v162 - v164 >= v166)
    {
      v168 = v166;
    }

    else
    {
      v168 = v160 + v162 - v164;
    }

    v270 = objc_autoreleasePoolPush();
    CGPDFContextBeginPage(v158, 0);
    v169 = sub_1A42B8E9C();
    CGContextSaveGState(v158);
    v268 = v169;
    v170 = [v169 CGColor];
    CGContextSetFillColorWithColor(v158, v170);

    sub_1A3C4D1D8(0, &unk_1EB1372B0, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v171 = swift_allocObject();
    *(v171 + 16) = xmmword_1A52F8E10;
    *(v171 + 32) = 0;
    *(v171 + 40) = 0;
    *(v171 + 48) = v168;
    *(v171 + 56) = v167;
    sub_1A524D164();

    CGContextRestoreGState(v158);
    if (v121)
    {
      v271 = *(v300 + 704);
      if ((v271 & 0x8000000000000000) == 0)
      {
        v172 = 0;
        v278 = (*(v300 + 488) + 8);
        while (!__OFADD__(v172, 1))
        {
          v275 = v172 + 1;
          if (v271)
          {
            v281 = v172;
            v173 = 0;
            v174 = *(v71 + 696) + *(v71 + 680) - *(v71 + 664);
            if (v174 >= *(v71 + 592))
            {
              v174 = *(v71 + 592);
            }

            v175 = v174 - *(v71 + 648) * (v172 + 1);
            do
            {
              v292 = *(v71 + 744);
              v177 = *(v71 + 720);
              v178 = *(v71 + 904);
              v179 = *(v71 + 440);
              v180 = *(v71 + 424);
              aBlockb = objc_autoreleasePoolPush();
              *(v71 + 384) = v173;
              *&v301.a = sub_1A524EA44();
              v301.b = v181;
              MEMORY[0x1A5907B60](45, 0xE100000000000000);
              *(v71 + 392) = v281;
              v182 = sub_1A524EA44();
              MEMORY[0x1A5907B60](v182);

              MEMORY[0x1A5907B60](1735290926, 0xE400000000000000);
              b = v301.b;
              *(v71 + 336) = v301.a;
              *(v71 + 344) = b;
              v177(v179, v178, v180);
              sub_1A5240E54();
              v292(v179, v180);

              v184 = sub_1A5240D44();
              v185 = CGImageSourceCreateWithURL(v184, 0);

              if (v185)
              {
                ImageAtIndex = CGImageSourceCreateImageAtIndex(v185, 0, 0);
                if (ImageAtIndex)
                {
                  v187 = ImageAtIndex;
                  v71 = v300;
                  v188 = *(v300 + 908);
                  v189 = *(v300 + 640) * v173;
                  sub_1A524D154();
                  if (v188)
                  {
                    v307.size.height = *(v300 + 648);
                    v307.size.width = *(v300 + 640);
                    v307.origin.x = v189;
                    v307.origin.y = v175;
                    v308 = CGRectInset(v307, 1.0, 1.0);
                    x = v308.origin.x;
                    y = v308.origin.y;
                    v192 = v308.size.width;
                    v193 = v308.size.height;
                    if (qword_1EB1B3CC0 != -1)
                    {
                      swift_once();
                    }

                    v194 = *(v300 + 768);
                    v195 = *(v300 + 504);
                    v196 = *(v300 + 480);
                    v197 = qword_1EB1B3CC8;
                    CGContextSaveGState(v194);
                    v198 = [v197 CGColor];
                    CGContextSetStrokeColorWithColor(v194, v198);

                    CGContextSetLineWidth(v194, 2.0);
                    v309.origin.x = x;
                    v309.origin.y = y;
                    v309.size.width = v192;
                    v309.size.height = v193;
                    CGContextAddRect(v194, v309);
                    CGContextStrokePath(v194);
                    CGContextRestoreGState(v194);

                    (*v278)(v195, v196);
                  }

                  else
                  {
                    (*v278)(*(v300 + 504), *(v300 + 480));
                  }
                }

                else
                {
                  v71 = v300;
                  (*v278)(*(v300 + 504), *(v300 + 480));
                }
              }

              else
              {
                (*v278)(*(v71 + 504), *(v71 + 480));
              }

              ++v173;
              v176 = *(v71 + 704);
              objc_autoreleasePoolPop(aBlockb);
            }

            while (v173 != v176);
          }

          v172 = v275;
          if (v275 == *(v71 + 712))
          {
            goto LABEL_85;
          }
        }

LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
LABEL_85:
      v121 = objc_autoreleasePoolPush();
      v199 = sub_1A5240D44();
      v114 = CGImageSourceCreateWithURL(v199, 0);

      if (!v114)
      {
LABEL_94:
        v211 = *(v71 + 768);
        v213 = *(v71 + 240);
        v214 = *(v71 + 248);
        v215 = *(v71 + 256);
        v216 = *(v71 + 264);
        v219 = *(v71 + 592);
        if (*(v71 + 696) + *(v71 + 680) - *(v71 + 664) >= v219)
        {
          v220 = *(v71 + 592);
        }

        else
        {
          v220 = *(v71 + 696) + *(v71 + 680) - *(v71 + 664);
        }

        v212 = *(v71 + 688);
        v217 = *(v71 + 672);
        v218 = *(v71 + 656);
        if (v212 + v217 - v218 >= v219)
        {
          v221 = *(v71 + 592);
        }

        else
        {
          v221 = v212 + v217 - v218;
        }

        objc_autoreleasePoolPop(v121);
        CGPDFContextEndPage(v211);
        CGPDFContextClose(v211);

        objc_autoreleasePoolPop(v270);
        v222 = 0.0;
        v315.origin.x = 0.0;
        v315.origin.y = 0.0;
        v313.origin.x = v213;
        v313.origin.y = v214;
        v313.size.width = v215;
        v313.size.height = v216;
        v315.size.width = v221;
        v315.size.height = v220;
        v223 = CGRectIntersectsRect(v313, v315);
        v224 = *(v71 + 776);
        v225 = *(v71 + 768);
        v226 = *(v71 + 760);
        if (v223)
        {
          v227 = *(v71 + 240);
          v228 = *(v71 + 248);
          v229 = *(v71 + 256);
          v230 = *(v71 + 264);
          v231 = *(v71 + 528);
          v232 = *(v71 + 480);
          v233 = *(v71 + 488);
          v234 = *(v71 + 680) - *(v71 + 664);
          if (*(v71 + 696) + v234 >= *(v71 + 592))
          {
            v235 = *(v71 + 592);
          }

          else
          {
            v235 = *(v71 + 696) + v234;
          }

          CGAffineTransformMakeScale(&v301, 1.0, -1.0);
          v236 = *&v301.c;
          v237 = *&v301.tx;
          *(v71 + 112) = *&v301.a;
          *(v71 + 128) = v236;
          *(v71 + 144) = v237;
          CGAffineTransformTranslate(&v301, (v71 + 112), 0.0, -v235);
          v238 = *&v301.c;
          v239 = *&v301.tx;
          *(v71 + 160) = *&v301.a;
          *(v71 + 176) = v238;
          *(v71 + 192) = v239;
          v240 = v227;
          *&v238 = v228;
          *&v239 = v229;
          v241 = v230;
          v314 = CGRectApplyAffineTransform(*(&v238 - 8), (v71 + 160));
          v222 = v314.origin.x;
          v242 = v314.origin.y;
          v243 = v314.size.width;
          v244 = v314.size.height;

          aBlockc = *(v233 + 8);
          aBlockc(v231, v232);
        }

        else
        {
          aBlockc = *(*(v71 + 488) + 8);
          aBlockc(*(v71 + 528), *(v71 + 480));

          v242 = 0.0;
          v243 = 0.0;
          v244 = 0.0;
        }

        v257 = *(v71 + 240);
        v258 = *(v71 + 248);
        v259 = *(v71 + 256);
        v260 = *(v71 + 264);
        v261 = *(v71 + 632);
        v262 = *(v71 + 624);
        v263 = *(v71 + 616);
        v264 = *(v71 + 584);
        v265 = *(v300 + 544);
        v266 = *(v300 + 480);
        v267 = *(v300 + 400);
        (*(v71 + 600))(*(v300 + 408), *(v300 + 536), v266);
        [v262 setBounds_];

        aBlockc(v265, v266);

        *v267 = 0.0;
        v267[1] = v222;
        v267[2] = v242;
        v267[3] = v243;
        v267[4] = v244;
        v34 = *(v300 + 8);
        goto LABEL_18;
      }

      v200 = CGImageSourceCreateImageAtIndex(v114, 0, 0);
      if (!v200)
      {
LABEL_93:

        goto LABEL_94;
      }

      v108 = v200;
      v201 = *(v71 + 768);
      v202 = *(v71 + 648);
      v203 = *(v71 + 640);
      v204 = *(v71 + 908);
      v205 = *(v71 + 696) + *(v71 + 680) - *(v71 + 664);
      if (v205 >= *(v71 + 592))
      {
        v205 = *(v71 + 592);
      }

      v206 = v205 - v202;
      CGContextSaveGState(*(v71 + 768));
      v207 = swift_allocObject();
      *(v207 + 16) = xmmword_1A52F8E10;
      *(v207 + 32) = v203 * 0.0;
      *(v207 + 40) = v202 * 0.5 + v206;
      *(v207 + 48) = v203;
      *(v207 + 56) = v202 - v202 * 0.5;
      sub_1A524D144();

      sub_1A524D154();
      CGContextRestoreGState(v201);
      if (v204 != 1)
      {
LABEL_92:

        goto LABEL_93;
      }

      v310.size.width = *(v71 + 640);
      v310.origin.x = v310.size.width * 0.0;
      v310.origin.y = v202 * 0.5 + v206;
      v310.size.height = v202 - v202 * 0.5;
      v311 = CGRectInset(v310, 1.0, 1.0);
      v167 = v311.origin.x;
      v168 = v311.origin.y;
      v161 = v311.size.width;
      v162 = v311.size.height;
      if (qword_1EB1B3CD0 == -1)
      {
LABEL_91:
        v208 = *(v71 + 768);
        v209 = qword_1EB1B3CD8[0];
        CGContextSaveGState(v208);
        v210 = [v209 CGColor];
        CGContextSetStrokeColorWithColor(v208, v210);

        CGContextSetLineWidth(v208, 2.0);
        v312.origin.x = v167;
        v312.origin.y = v168;
        v312.size.width = v161;
        v312.size.height = v162;
        CGContextAddRect(v208, v312);
        CGContextStrokePath(v208);
        CGContextRestoreGState(v208);
        goto LABEL_92;
      }
    }

    swift_once();
    goto LABEL_91;
  }

  if (*(v300 + 704) < 0)
  {
    goto LABEL_119;
  }

  v122 = 0;
  v269 = v120;
LABEL_52:
  *(v300 + 832) = v122;
  if (!*(v300 + 704))
  {
    goto LABEL_51;
  }

  v123 = 0;
  while (1)
  {
    *(v300 + 848) = v123;
    *(v300 + 840) = 0;
    v124 = *(v300 + 632);
    v125 = *(v300 + 624);
    [v125 setBounds_];
    [v125 layoutIfNeeded];
    if (v124)
    {
      v245 = *(v300 + 632);
      *(v300 + 856) = sub_1A524CC44();
      v81 = sub_1A524CBC4();
      *(v300 + 864) = v81;
      *(v300 + 872) = v82;
      v83 = sub_1A42B7824;
LABEL_39:
      v84 = v81;
      v85 = v82;
      v86 = v83;
      v87 = v84;

      return MEMORY[0x1EEE6DFA0](v86, v87, v85);
    }

    v126 = *(v300 + 848);
    v127 = *(v300 + 832);
    v128 = *(v300 + 352);
    v129 = *(v300 + 360);
    v130 = *(v300 + 776);
    v131 = *(v300 + 648);
    v132 = *(v300 + 640);
    v133 = *(v300 + 632);
    v134 = *(v300 + 624);
    v135 = *(v300 + 908);
    v136 = *(v300 + 656) + v132 * v126;
    v137 = *(v300 + 664) + v131 * v127;
    aBlocka = objc_autoreleasePoolPush();
    v138 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v130 format:{v128, v129}];
    v139 = swift_allocObject();
    *(v139 + 24) = 0;
    *(v139 + 32) = 0;
    *(v139 + 16) = v133;
    *(v139 + 40) = v132;
    *(v139 + 48) = v131;
    *(v139 + 56) = v134;
    *(v139 + 64) = v135;
    *(v139 + 72) = v126;
    *(v139 + 80) = v127;
    *(v139 + 88) = v136;
    *(v139 + 96) = v137;
    v140 = swift_allocObject();
    *(v140 + 16) = sub_1A42BA1E8;
    *(v140 + 24) = v139;
    *(v300 + 96) = sub_1A3D7B4F8;
    *(v300 + 104) = v140;
    *(v300 + 64) = MEMORY[0x1E69E9820];
    *(v300 + 72) = 1107296256;
    *(v300 + 80) = sub_1A3D35A90;
    *(v300 + 88) = &block_descriptor_21_4;
    v141 = _Block_copy((v300 + 64));
    v142 = v134;
    v143 = v133;

    v295 = v138;
    v108 = [v138 imageWithActions_];
    _Block_release(v141);
    LOBYTE(v141) = swift_isEscapingClosureAtFileLocation();

    if (v141)
    {
      goto LABEL_115;
    }

    v144 = *(v300 + 832);
    v287 = *(v300 + 744);
    v274 = *(v300 + 720);
    v145 = *(v300 + 904);
    v146 = *(v300 + 440);
    v147 = *(v300 + 424);
    *(v300 + 368) = *(v300 + 848);
    v114 = MEMORY[0x1E69E6530];
    *(v300 + 304) = sub_1A524EA44();
    *(v300 + 312) = v148;
    MEMORY[0x1A5907B60](45, 0xE100000000000000);
    *(v300 + 376) = v144;
    v149 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v149);

    MEMORY[0x1A5907B60](1735290926, 0xE400000000000000);
    v150 = *(v300 + 312);
    *(v300 + 320) = *(v300 + 304);
    *(v300 + 328) = v150;
    v274(v146, v145, v147);
    sub_1A5240E54();
    v287(v146, v147);

    v86 = UIImagePNGRepresentation(v108);
    if (!v86)
    {
      break;
    }

    v151 = v86;
    v152 = *(v300 + 840);
    v153 = sub_1A5240EA4();
    v155 = v154;

    sub_1A5240EB4();
    if (v152)
    {
      v272 = *(v300 + 768);
      v246 = *(v300 + 240);
      v247 = *(v300 + 248);
      v248 = *(v300 + 256);
      v249 = *(v300 + 264);
      v250 = *(v300 + 624);
      v285 = *(v300 + 616);
      v282 = *(v300 + 776);
      v284 = *(v300 + 584);
      v288 = *(v300 + 544);
      v293 = *(v300 + 632);
      v276 = *(v300 + 760);
      v279 = *(v300 + 536);
      v251 = *(v300 + 528);
      v252 = v108;
      v253 = *(v300 + 512);
      v255 = *(v300 + 480);
      v254 = *(v300 + 488);

      sub_1A3C59280(v153, v155);
      v256 = *(v254 + 8);
      v256(v253, v255);

      objc_autoreleasePoolPop(aBlocka);

      v256(v251, v255);
      v256(v279, v255);
      [v250 setBounds_];

      v256(v288, v255);
      goto LABEL_17;
    }

    v156 = *(v300 + 848) + 1;
    v157 = *(v300 + 704);
    (*(*(v300 + 488) + 8))(*(v300 + 512), *(v300 + 480));
    sub_1A3C59280(v153, v155);

    objc_autoreleasePoolPop(aBlocka);
    if (v156 == v157)
    {
      v122 = *(v300 + 832);
      v120 = *(v300 + 712);
      v121 = v269;
LABEL_51:
      if (++v122 == v120)
      {
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    v123 = *(v300 + 848) + 1;
    v122 = *(v300 + 832);
  }

  __break(1u);
LABEL_123:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v86, v87, v85);
}

uint64_t sub_1A42B609C(__n128 a1)
{
  v2 = v1[79];
  v3 = sub_1A524CC44();
  v1[101] = v3;
  v4 = swift_task_alloc();
  v1[102] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[103] = v5;
  *v5 = v1;
  v5[1] = sub_1A42B61D0;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, v3, v6, 0xD000000000000013, 0x80000001A53D0320, sub_1A42BA690, v4, v7);
}

uint64_t sub_1A42B61D0()
{
  v1 = *v0;

  v2 = *(v1 + 800);
  v3 = *(v1 + 792);

  return MEMORY[0x1EEE6DFA0](sub_1A42B6364, v3, v2);
}

uint64_t sub_1A42B6364()
{
  v1 = v0[79];

  v2 = v0[72];
  v3 = v0[71];

  return MEMORY[0x1EEE6DFA0](sub_1A42B6400, v3, v2);
}

uint64_t sub_1A42B6400()
{
  v185 = v0;
  v184 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 97);
  v3 = *(v0 + 81);
  v4 = *(v0 + 80);
  v5 = *(v0 + 77);
  v177 = *(v0 + 75);
  v6 = v0[908];
  v7 = *(v0 + 67);
  v8 = *(v0 + 65);
  v9 = *(v0 + 61);
  v10 = *(v0 + 60);
  v173 = objc_autoreleasePoolPush();
  v11 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
  *(v0 + 44) = v4;
  *(v0 + 45) = v3;
  v12 = [v11 initWithSize:v2 format:{v4, v3}];
  (*(v9 + 16))(v8, v7, v10);
  v13 = (*(v9 + 80) + 57) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v14[3] = 0.0;
  v14[4] = 0.0;
  *(v14 + 2) = v5;
  v14[5] = v4;
  v14[6] = v3;
  *(v14 + 56) = v6;
  v177(v14 + v13, v8, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A42B9E88;
  *(v15 + 24) = v14;
  *(v0 + 6) = sub_1A3D78DD0;
  *(v0 + 7) = v15;
  *(v0 + 2) = MEMORY[0x1E69E9820];
  *&v16 = 1107296256;
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_1A3D35A90;
  *(v0 + 5) = &block_descriptor_146;
  v17 = _Block_copy(v0 + 16);
  aBlock = v0;

  v18 = v5;

  v19 = [v12 imageWithActions_];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v21 = UIImagePNGRepresentation(v19);
  if (!v21)
  {
    goto LABEL_80;
  }

  v22 = v21;
  v15 = *(v0 + 66);
  isEscapingClosureAtFileLocation = sub_1A5240EA4();
  v24 = v23;

  sub_1A5240EB4();
  v27 = *(v0 + 89);
  sub_1A3C59280(isEscapingClosureAtFileLocation, v24);

  objc_autoreleasePoolPop(v173);
  if (v27 < 0)
  {
    goto LABEL_75;
  }

  v28 = *(v0 + 89);
  v157 = v28;
  if (!v28)
  {
LABEL_21:
    v63 = *(v0 + 96);
    v64 = *(v0 + 87);
    v65 = *(v0 + 86);
    v16 = *(v0 + 85);
    v1 = *(v0 + 84);
    v66 = *(v0 + 83);
    v67 = *(v0 + 82);
    v68 = *(v0 + 78);
    v69 = *(v0 + 74);

    if (v64 + v16 - v66 >= v69)
    {
      v3 = v69;
    }

    else
    {
      v3 = v64 + v16 - v66;
    }

    if (v65 + v1 - v67 >= v69)
    {
      v4 = v69;
    }

    else
    {
      v4 = v65 + v1 - v67;
    }

    v161 = objc_autoreleasePoolPush();
    CGPDFContextBeginPage(v63, 0);
    v70 = sub_1A42B8E9C();
    CGContextSaveGState(v63);
    v159 = v70;
    v71 = [v70 CGColor];
    CGContextSetFillColorWithColor(v63, v71);

    sub_1A3C4D1D8(0, &unk_1EB1372B0, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1A52F8E10;
    *(v72 + 32) = 0;
    *(v72 + 40) = 0;
    *(v72 + 48) = v4;
    *(v72 + 56) = v3;
    isEscapingClosureAtFileLocation = v63;
    sub_1A524D164();

    CGContextRestoreGState(v63);
    if (!v157)
    {
LABEL_46:
      v14 = objc_autoreleasePoolPush();
      v88 = sub_1A5240D44();
      v15 = CGImageSourceCreateWithURL(v88, 0);

      if (!v15)
      {
        goto LABEL_55;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, 0, 0);
      if (!ImageAtIndex)
      {
LABEL_54:

LABEL_55:
        v100 = *(aBlock + 96);
        v102 = *(aBlock + 30);
        v103 = *(aBlock + 31);
        v104 = *(aBlock + 32);
        v105 = *(aBlock + 33);
        v108 = *(aBlock + 74);
        if (*(aBlock + 87) + *(aBlock + 85) - *(aBlock + 83) >= v108)
        {
          v109 = *(aBlock + 74);
        }

        else
        {
          v109 = *(aBlock + 87) + *(aBlock + 85) - *(aBlock + 83);
        }

        v101 = *(aBlock + 86);
        v106 = *(aBlock + 84);
        v107 = *(aBlock + 82);
        if (v101 + v106 - v107 >= v108)
        {
          v110 = *(aBlock + 74);
        }

        else
        {
          v110 = v101 + v106 - v107;
        }

        objc_autoreleasePoolPop(v14);
        CGPDFContextEndPage(v100);
        CGPDFContextClose(v100);

        objc_autoreleasePoolPop(v161);
        x = 0.0;
        v195.origin.x = 0.0;
        v195.origin.y = 0.0;
        v193.origin.x = v102;
        v193.origin.y = v103;
        v193.size.width = v104;
        v193.size.height = v105;
        v195.size.width = v110;
        v195.size.height = v109;
        v112 = CGRectIntersectsRect(v193, v195);
        v113 = *(aBlock + 97);
        v114 = *(aBlock + 96);
        v115 = *(aBlock + 95);
        if (v112)
        {
          v116 = *(aBlock + 30);
          v117 = *(aBlock + 31);
          v118 = *(aBlock + 32);
          v119 = *(aBlock + 33);
          v120 = *(aBlock + 66);
          v121 = *(aBlock + 60);
          v122 = *(aBlock + 61);
          v123 = *(aBlock + 85) - *(aBlock + 83);
          if (*(aBlock + 87) + v123 >= *(aBlock + 74))
          {
            v124 = *(aBlock + 74);
          }

          else
          {
            v124 = *(aBlock + 87) + v123;
          }

          CGAffineTransformMakeScale(&v183, 1.0, -1.0);
          v125 = *&v183.c;
          v126 = *&v183.tx;
          *(aBlock + 7) = *&v183.a;
          *(aBlock + 8) = v125;
          *(aBlock + 9) = v126;
          CGAffineTransformTranslate(&v183, (aBlock + 112), 0.0, -v124);
          v127 = *&v183.c;
          v128 = *&v183.tx;
          *(aBlock + 10) = *&v183.a;
          *(aBlock + 11) = v127;
          *(aBlock + 12) = v128;
          v129 = v116;
          *&v127 = v117;
          *&v128 = v118;
          v130 = v119;
          v194 = CGRectApplyAffineTransform(*(&v127 - 8), (aBlock + 160));
          x = v194.origin.x;
          y = v194.origin.y;
          width = v194.size.width;
          height = v194.size.height;

          v181 = *(v122 + 8);
          v181(v120, v121);
        }

        else
        {
          v181 = *(*(aBlock + 61) + 8);
          v181(*(aBlock + 66), *(aBlock + 60));

          y = 0.0;
          width = 0.0;
          height = 0.0;
        }

        v146 = *(aBlock + 30);
        v147 = *(aBlock + 31);
        v148 = *(aBlock + 32);
        v149 = *(aBlock + 33);
        v150 = *(aBlock + 79);
        v151 = *(aBlock + 78);
        v152 = *(aBlock + 77);
        v153 = *(aBlock + 73);
        v154 = *(aBlock + 68);
        v155 = *(aBlock + 60);
        v156 = *(aBlock + 50);
        (*(aBlock + 75))(*(aBlock + 51), *(aBlock + 67), v155);
        [v151 setBounds_];

        v181(v154, v155);

        *v156 = 0.0;
        v156[1] = x;
        v156[2] = y;
        v156[3] = width;
        v156[4] = height;
        v25 = *(aBlock + 1);
LABEL_4:

        return v25();
      }

      v12 = ImageAtIndex;
      v90 = *(aBlock + 96);
      v91 = *(aBlock + 81);
      v92 = *(aBlock + 80);
      v93 = aBlock[908];
      v94 = *(aBlock + 87) + *(aBlock + 85) - *(aBlock + 83);
      if (v94 >= *(aBlock + 74))
      {
        v94 = *(aBlock + 74);
      }

      v95 = v94 - v91;
      CGContextSaveGState(*(aBlock + 96));
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1A52F8E10;
      *(v96 + 32) = v92 * 0.0;
      *(v96 + 40) = v91 * 0.5 + v95;
      *(v96 + 48) = v92;
      *(v96 + 56) = v91 - v91 * 0.5;
      sub_1A524D144();

      sub_1A524D154();
      CGContextRestoreGState(v90);
      if (v93 != 1)
      {
LABEL_53:

        goto LABEL_54;
      }

      isEscapingClosureAtFileLocation = aBlock;
      v190.size.width = *(aBlock + 80);
      v190.origin.x = v190.size.width * 0.0;
      v190.origin.y = v91 * 0.5 + v95;
      v190.size.height = v91 - v91 * 0.5;
      v191 = CGRectInset(v190, 1.0, 1.0);
      v3 = v191.origin.x;
      v4 = v191.origin.y;
      v16 = v191.size.width;
      v1 = v191.size.height;
      if (qword_1EB1B3CD0 == -1)
      {
LABEL_52:
        v97 = *(isEscapingClosureAtFileLocation + 768);
        v98 = qword_1EB1B3CD8[0];
        CGContextSaveGState(v97);
        v99 = [v98 CGColor];
        CGContextSetStrokeColorWithColor(v97, v99);

        CGContextSetLineWidth(v97, 2.0);
        v192.origin.x = v3;
        v192.origin.y = v4;
        v192.size.width = v16;
        v192.size.height = v1;
        CGContextAddRect(v97, v192);
        CGContextStrokePath(v97);
        CGContextRestoreGState(v97);
        goto LABEL_53;
      }

LABEL_78:
      swift_once();
      goto LABEL_52;
    }

    v164 = *(v0 + 88);
    if (v164 < 0)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v167 = (*(v0 + 61) + 8);
    v169 = 0;
    while (!__OFADD__(v169, 1))
    {
      v166 = v169 + 1;
      if (v164)
      {
        v73 = 0;
        v74 = *(v0 + 87) + *(v0 + 85) - *(v0 + 83);
        if (v74 >= *(v0 + 74))
        {
          v74 = *(v0 + 74);
        }

        v3 = v74 - *(v0 + 81) * (v169 + 1);
        do
        {
          v175 = *(v0 + 93);
          v14 = *(v0 + 90);
          v15 = *(aBlock + 226);
          v75 = *(aBlock + 55);
          v76 = *(aBlock + 53);
          v180 = objc_autoreleasePoolPush();
          *(aBlock + 48) = v73;
          *&v183.a = sub_1A524EA44();
          v183.b = v77;
          MEMORY[0x1A5907B60](45, 0xE100000000000000);
          *(aBlock + 49) = v169;
          v78 = sub_1A524EA44();
          MEMORY[0x1A5907B60](v78);

          MEMORY[0x1A5907B60](1735290926, 0xE400000000000000);
          v12 = *&v183.b;
          *(aBlock + 42) = *&v183.a;
          *(aBlock + 43) = v12;
          v0 = aBlock;
          (v14)(v75, v15, v76);
          sub_1A5240E54();
          v175(v75, v76);

          v79 = sub_1A5240D44();
          v80 = CGImageSourceCreateWithURL(v79, 0);

          if (v80)
          {
            v81 = CGImageSourceCreateImageAtIndex(v80, 0, 0);
            if (v81)
            {
              v14 = v81;
              v82 = aBlock[908];
              v4 = *(aBlock + 80) * v73;
              sub_1A524D154();
              if (v82)
              {
                v187.size.height = *(aBlock + 81);
                v187.size.width = *(aBlock + 80);
                v187.origin.x = v4;
                v187.origin.y = v3;
                v188 = CGRectInset(v187, 1.0, 1.0);
                v4 = v188.origin.x;
                v16 = v188.origin.y;
                v1 = v188.size.width;
                v83 = v188.size.height;
                if (qword_1EB1B3CC0 != -1)
                {
                  swift_once();
                }

                v84 = *(aBlock + 96);
                v85 = *(aBlock + 63);
                v86 = *(aBlock + 60);
                v87 = qword_1EB1B3CC8;
                CGContextSaveGState(v84);
                v15 = [v87 CGColor];
                CGContextSetStrokeColorWithColor(v84, v15);

                v0 = aBlock;
                CGContextSetLineWidth(v84, 2.0);
                v189.origin.x = v4;
                v189.origin.y = v16;
                v189.size.width = v1;
                v189.size.height = v83;
                CGContextAddRect(v84, v189);
                CGContextStrokePath(v84);
                CGContextRestoreGState(v84);

                (*v167)(v85, v86);
              }

              else
              {
                (*v167)(*(aBlock + 63), *(aBlock + 60));
              }
            }

            else
            {
              (*v167)(*(aBlock + 63), *(aBlock + 60));
            }
          }

          else
          {
            (*v167)(*(aBlock + 63), *(aBlock + 60));
          }

          ++v73;
          isEscapingClosureAtFileLocation = *(v0 + 88);
          objc_autoreleasePoolPop(v180);
        }

        while (v73 != isEscapingClosureAtFileLocation);
      }

      ++v169;
      if (v166 == *(v0 + 89))
      {
        goto LABEL_46;
      }
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (*(v0 + 88) < 0)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v29 = 0;
  v159 = v0 + 80;
  v161 = v0 + 64;
  while (1)
  {
    *(v0 + 104) = v29;
    if (*(v0 + 88))
    {
      break;
    }

LABEL_12:
    if (++v29 == v28)
    {
      goto LABEL_21;
    }
  }

  v30 = 0;
  while (1)
  {
    *(v0 + 106) = v30;
    *(v0 + 105) = 0;
    v31 = *(v0 + 79);
    v32 = *(v0 + 78);
    [v32 setBounds_];
    [v32 layoutIfNeeded];
    if (v31)
    {
      break;
    }

    v33 = *(v0 + 106);
    v34 = *(v0 + 104);
    v3 = *(v0 + 44);
    v4 = *(v0 + 45);
    v35 = *(v0 + 97);
    v36 = *(v0 + 83);
    v37 = *(v0 + 82);
    v1 = *(v0 + 81);
    v38 = *(v0 + 80);
    v14 = *(v0 + 79);
    v39 = *(v0 + 78);
    v40 = aBlock[908];
    v41 = v37 + v38 * v33;
    v42 = v36 + v1 * v34;
    v12 = objc_autoreleasePoolPush();
    v43 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v35 format:{v3, v4}];
    v44 = swift_allocObject();
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    *(v44 + 16) = v14;
    *(v44 + 40) = v38;
    *(v44 + 48) = v1;
    *(v44 + 56) = v39;
    *(v44 + 64) = v40;
    v15 = aBlock;
    *(v44 + 72) = v33;
    *(v44 + 80) = v34;
    *(v44 + 88) = v41;
    *(v44 + 96) = v42;
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = sub_1A42BA1E8;
    *(isEscapingClosureAtFileLocation + 24) = v44;
    *(aBlock + 12) = sub_1A3D7B4F8;
    *(aBlock + 13) = isEscapingClosureAtFileLocation;
    *(aBlock + 8) = MEMORY[0x1E69E9820];
    *(aBlock + 9) = 1107296256;
    *(aBlock + 10) = sub_1A3D35A90;
    *(aBlock + 11) = &block_descriptor_21_4;
    v45 = _Block_copy(v161);
    v46 = v39;
    v47 = v14;

    v48 = [v43 imageWithActions_];
    _Block_release(v45);
    LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

    if (v45)
    {
      __break(1u);
      goto LABEL_73;
    }

    v163 = v43;
    v165 = v12;
    v49 = *(aBlock + 104);
    v174 = *(aBlock + 93);
    v179 = v48;
    v50 = *(aBlock + 90);
    v51 = *(aBlock + 226);
    v0 = aBlock;
    v15 = *(aBlock + 55);
    v52 = *(aBlock + 53);
    *(aBlock + 46) = *(aBlock + 106);
    *(aBlock + 38) = sub_1A524EA44();
    *(aBlock + 39) = v53;
    MEMORY[0x1A5907B60](45, 0xE100000000000000);
    *(aBlock + 47) = v49;
    v54 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v54);

    MEMORY[0x1A5907B60](1735290926, 0xE400000000000000);
    v55 = *(aBlock + 39);
    *(aBlock + 40) = *(aBlock + 38);
    *(aBlock + 41) = v55;
    v50(v15, v51, v52);
    sub_1A5240E54();
    v174(v15, v52);

    v56 = UIImagePNGRepresentation(v179);
    if (!v56)
    {
      __break(1u);
LABEL_80:
      __break(1u);
    }

    v57 = v56;
    v58 = *(aBlock + 105);
    v14 = *(aBlock + 64);
    v59 = sub_1A5240EA4();
    v12 = v60;

    sub_1A5240EB4();
    if (v58)
    {
      v160 = *(aBlock + 96);
      v162 = *(aBlock + 95);
      v137 = *(aBlock + 30);
      v138 = *(aBlock + 31);
      v139 = *(aBlock + 32);
      v140 = *(aBlock + 33);
      v141 = *(aBlock + 78);
      v172 = *(aBlock + 77);
      v170 = *(aBlock + 97);
      v171 = *(aBlock + 73);
      v176 = *(aBlock + 68);
      v178 = *(aBlock + 79);
      v168 = *(aBlock + 67);
      v158 = *(aBlock + 66);
      v142 = *(aBlock + 64);
      v143 = *(aBlock + 60);
      v144 = *(aBlock + 61);

      sub_1A3C59280(v59, v12);
      v145 = *(v144 + 8);
      v145(v142, v143);

      objc_autoreleasePoolPop(v165);

      v145(v158, v143);
      v145(v168, v143);
      [v141 setBounds_];

      v145(v176, v143);

      v25 = *(aBlock + 1);
      goto LABEL_4;
    }

    v61 = *(aBlock + 106) + 1;
    v62 = *(aBlock + 88);
    (*(*(aBlock + 61) + 8))(*(aBlock + 64), *(aBlock + 60));
    sub_1A3C59280(v59, v12);

    objc_autoreleasePoolPop(v165);
    if (v61 == v62)
    {
      v29 = *(aBlock + 104);
      v28 = *(aBlock + 89);
      goto LABEL_12;
    }

    v30 = *(aBlock + 106) + 1;
    v29 = *(aBlock + 104);
  }

  v134 = *(v0 + 79);
  *(v0 + 107) = sub_1A524CC44();
  v135 = sub_1A524CBC4();
  *(v0 + 108) = v135;
  *(v0 + 109) = v136;

  return MEMORY[0x1EEE6DFA0](sub_1A42B7824, v135, v136);
}

uint64_t sub_1A42B7824(__n128 a1)
{
  v2 = v1[79];
  v3 = sub_1A524CC44();
  v1[110] = v3;
  v4 = swift_task_alloc();
  v1[111] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[112] = v5;
  *v5 = v1;
  v5[1] = sub_1A42B7958;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, v3, v6, 0xD000000000000013, 0x80000001A53D0320, sub_1A42BA574, v4, v7);
}

uint64_t sub_1A42B7958()
{
  v1 = *v0;

  v2 = *(v1 + 872);
  v3 = *(v1 + 864);

  return MEMORY[0x1EEE6DFA0](sub_1A42B7AEC, v3, v2);
}

uint64_t sub_1A42B7AEC()
{
  v1 = v0[79];

  v2 = v0[72];
  v3 = v0[71];

  return MEMORY[0x1EEE6DFA0](sub_1A42B7B88, v3, v2);
}

uint64_t sub_1A42B7B88()
{
  v162 = v0;
  v161 = *MEMORY[0x1E69E9840];
  v139 = (v0 + 80);
  *&y = 1107296256;
  while (1)
  {
    v2 = *(v0 + 848);
    v3 = *(v0 + 832);
    v4 = *(v0 + 352);
    x = *(v0 + 360);
    v6 = *(v0 + 776);
    width = *(v0 + 648);
    v8 = *(v0 + 640);
    v9 = *(v0 + 632);
    v10 = *(v0 + 624);
    *&b = *(v0 + 908);
    v12 = *(v0 + 656) + v8 * v2;
    v13 = *(v0 + 664) + width * v3;
    v14 = objc_autoreleasePoolPush();
    v15 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v6 format:{v4, x}];
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 16) = v9;
    *(v16 + 40) = v8;
    *(v16 + 48) = width;
    *(v16 + 56) = v10;
    *(v16 + 64) = LOBYTE(b);
    *(v16 + 72) = v2;
    *(v16 + 80) = v3;
    *(v16 + 88) = v12;
    *(v16 + 96) = v13;
    v17 = swift_allocObject();
    v17[2] = sub_1A42BA1E8;
    v17[3] = v16;
    *(v0 + 96) = sub_1A3D7B4F8;
    *(v0 + 104) = v17;
    *(v0 + 64) = MEMORY[0x1E69E9820];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1A3D35A90;
    *(v0 + 88) = &block_descriptor_21_4;
    v18 = _Block_copy((v0 + 64));
    v19 = *(v0 + 104);
    v20 = v10;
    v21 = v9;

    v157 = v15;
    v22 = [v15 imageWithActions_];
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v23 = *(v0 + 832);
    v153 = *(v0 + 744);
    v143 = v14;
    v145 = *(v0 + 720);
    v24 = *(v0 + 904);
    v10 = *(v0 + 440);
    v25 = *(v0 + 424);
    *(v0 + 368) = *(v0 + 848);
    *(v0 + 304) = sub_1A524EA44();
    *(v0 + 312) = v26;
    MEMORY[0x1A5907B60](45, 0xE100000000000000);
    *(v0 + 376) = v23;
    v27 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v27);

    MEMORY[0x1A5907B60](1735290926, 0xE400000000000000);
    v28 = *(v0 + 312);
    *(v0 + 320) = *(v0 + 304);
    *(v0 + 328) = v28;
    v145(v10, v24, v25);
    sub_1A5240E54();
    v153(v10, v25);

    v29 = UIImagePNGRepresentation(v22);
    if (!v29)
    {
      __break(1u);
    }

    v30 = v29;
    v31 = *(v0 + 840);
    v32 = sub_1A5240EA4();
    v34 = v33;

    sub_1A5240EB4();
    if (v31)
    {
      v128 = *(v0 + 240);
      v129 = *(v0 + 248);
      v130 = *(v0 + 256);
      v131 = *(v0 + 264);
      v156 = *(v0 + 632);
      v132 = *(v0 + 624);
      v152 = *(v0 + 616);
      v150 = *(v0 + 776);
      v151 = *(v0 + 584);
      v155 = *(v0 + 544);
      v147 = *(v0 + 760);
      v149 = *(v0 + 536);
      v140 = *(v0 + 528);
      v142 = *(v0 + 768);
      v133 = *(v0 + 512);
      v134 = *(v0 + 480);
      v135 = *(v0 + 488);

      sub_1A3C59280(v32, v34);
      v136 = *(v135 + 8);
      v136(v133, v134);

      objc_autoreleasePoolPop(v143);

      v136(v140, v134);
      v136(v149, v134);
      [v132 setBounds_];

      v136(v155, v134);

      v127 = *(v0 + 8);
      goto LABEL_61;
    }

    v35 = *(v0 + 848) + 1;
    v36 = *(v0 + 704);
    (*(*(v0 + 488) + 8))(*(v0 + 512), *(v0 + 480));
    sub_1A3C59280(v32, v34);

    objc_autoreleasePoolPop(v143);
    v37 = *(v0 + 832);
    if (v35 == v36)
    {
      break;
    }

    v39 = *(v0 + 848) + 1;
LABEL_11:
    *(v0 + 848) = v39;
    *(v0 + 840) = 0;
    v40 = *(v0 + 632);
    v41 = *(v0 + 624);
    [v41 setBounds_];
    [v41 layoutIfNeeded];
    if (v40)
    {
      v42 = *(v0 + 632);
      *(v0 + 856) = sub_1A524CC44();
      v43 = sub_1A524CBC4();
      *(v0 + 864) = v43;
      *(v0 + 872) = v44;

      return MEMORY[0x1EEE6DFA0](sub_1A42B7824, v43, v44);
    }
  }

  v38 = *(v0 + 712) - 1;
  while (v38 != v37)
  {
    *(v0 + 832) = ++v37;
    if (*(v0 + 704))
    {
      v39 = 0;
      goto LABEL_11;
    }
  }

  v45 = *(v0 + 768);
  v46 = *(v0 + 696);
  v47 = *(v0 + 688);
  y = *(v0 + 680);
  width = *(v0 + 672);
  v48 = *(v0 + 664);
  v49 = *(v0 + 656);
  v50 = *(v0 + 624);
  v51 = *(v0 + 592);

  if (v46 + y - v48 >= v51)
  {
    v4 = v51;
  }

  else
  {
    v4 = v46 + y - v48;
  }

  if (v47 + width - v49 >= v51)
  {
    x = v51;
  }

  else
  {
    x = v47 + width - v49;
  }

  v52 = objc_autoreleasePoolPush();
  CGPDFContextBeginPage(v45, 0);
  v16 = sub_1A42B8E9C();
  CGContextSaveGState(v45);
  v53 = [v16 CGColor];
  CGContextSetFillColorWithColor(v45, v53);

  sub_1A3C4D1D8(0, &unk_1EB1372B0, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
  b = v54;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A52F8E10;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = x;
  *(v19 + 56) = v4;
  v17 = v45;
  sub_1A524D164();

  CGContextRestoreGState(v45);
  v141 = *(v0 + 704);
  if (v141 < 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
LABEL_45:
    v78 = v17[96];
    v79 = qword_1EB1B3CD8[0];
    CGContextSaveGState(v78);
    v80 = [v79 CGColor];
    CGContextSetStrokeColorWithColor(v78, v80);

    CGContextSetLineWidth(v78, 2.0);
    v169.origin.x = v4;
    v169.origin.y = x;
    v169.size.width = y;
    v169.size.height = width;
    CGContextAddRect(v78, v169);
    CGContextStrokePath(v78);
    CGContextRestoreGState(v78);
LABEL_46:

    goto LABEL_47;
  }

  v138 = v16;
  v139 = v52;
  v146 = (*(v0 + 488) + 8);
  v148 = 0;
  v10 = v0;
  do
  {
    v144 = v148 + 1;
    if (__OFADD__(v148, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v141)
    {
      v55 = 0;
      v56 = *(v0 + 696) + *(v0 + 680) - *(v0 + 664);
      if (v56 >= *(v0 + 592))
      {
        v56 = *(v0 + 592);
      }

      v4 = v56 - *(v0 + 648) * v144;
      do
      {
        v154 = *(v0 + 744);
        v57 = *(v0 + 720);
        v16 = *(v10 + 904);
        v19 = *(v10 + 440);
        v58 = *(v10 + 424);
        v158 = objc_autoreleasePoolPush();
        *(v10 + 384) = v55;
        *&v160.a = sub_1A524EA44();
        v160.b = v59;
        MEMORY[0x1A5907B60](45, 0xE100000000000000);
        *(v10 + 392) = v148;
        v60 = sub_1A524EA44();
        MEMORY[0x1A5907B60](v60);

        MEMORY[0x1A5907B60](1735290926, 0xE400000000000000);
        b = v160.b;
        *(v10 + 336) = v160.a;
        *(v10 + 344) = b;
        v0 = v10;
        v57(v19, v16, v58);
        sub_1A5240E54();
        v154(v19, v58);

        v61 = sub_1A5240D44();
        v62 = CGImageSourceCreateWithURL(v61, 0);

        if (v62)
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v62, 0, 0);
          if (ImageAtIndex)
          {
            v64 = ImageAtIndex;
            v19 = *(v10 + 908);
            x = *(v10 + 640) * v55;
            sub_1A524D154();
            if (v19)
            {
              v164.size.height = *(v10 + 648);
              v164.size.width = *(v10 + 640);
              v164.origin.x = x;
              v164.origin.y = v4;
              v165 = CGRectInset(v164, 1.0, 1.0);
              x = v165.origin.x;
              y = v165.origin.y;
              width = v165.size.width;
              height = v165.size.height;
              if (qword_1EB1B3CC0 != -1)
              {
                swift_once();
              }

              v66 = *(v10 + 768);
              v67 = *(v10 + 504);
              v19 = *(v10 + 480);
              v68 = qword_1EB1B3CC8;
              CGContextSaveGState(v66);
              v16 = [v68 CGColor];
              CGContextSetStrokeColorWithColor(v66, v16);

              v0 = v10;
              CGContextSetLineWidth(v66, 2.0);
              v166.origin.x = x;
              v166.origin.y = y;
              v166.size.width = width;
              v166.size.height = height;
              CGContextAddRect(v66, v166);
              CGContextStrokePath(v66);
              CGContextRestoreGState(v66);

              (*v146)(v67, v19);
            }

            else
            {
              (*v146)(*(v10 + 504), *(v10 + 480));
            }
          }

          else
          {
            (*v146)(*(v10 + 504), *(v10 + 480));
          }
        }

        else
        {
          (*v146)(*(v10 + 504), *(v10 + 480));
        }

        ++v55;
        v17 = *(v0 + 704);
        objc_autoreleasePoolPop(v158);
      }

      while (v55 != v17);
    }

    ++v148;
  }

  while (v144 != *(v0 + 712));
  v16 = objc_autoreleasePoolPush();
  v69 = sub_1A5240D44();
  b = COERCE_DOUBLE(CGImageSourceCreateWithURL(v69, 0));

  if (b == 0.0)
  {
    goto LABEL_48;
  }

  v70 = CGImageSourceCreateImageAtIndex(*&b, 0, 0);
  if (v70)
  {
    v19 = v70;
    v71 = *(v10 + 768);
    v72 = *(v10 + 648);
    v73 = *(v10 + 640);
    v74 = *(v10 + 908);
    v75 = *(v10 + 696) + *(v10 + 680) - *(v10 + 664);
    if (v75 >= *(v10 + 592))
    {
      v75 = *(v10 + 592);
    }

    v76 = v75 - v72;
    CGContextSaveGState(*(v10 + 768));
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1A52F8E10;
    *(v77 + 32) = v73 * 0.0;
    *(v77 + 40) = v72 * 0.5 + v76;
    *(v77 + 48) = v73;
    *(v77 + 56) = v72 - v72 * 0.5;
    sub_1A524D144();

    sub_1A524D154();
    CGContextRestoreGState(v71);
    if (v74 == 1)
    {
      v17 = v10;
      v167.size.width = *(v10 + 640);
      v167.origin.x = v167.size.width * 0.0;
      v167.origin.y = v72 * 0.5 + v76;
      v167.size.height = v72 - v72 * 0.5;
      v168 = CGRectInset(v167, 1.0, 1.0);
      v4 = v168.origin.x;
      x = v168.origin.y;
      y = v168.size.width;
      width = v168.size.height;
      if (qword_1EB1B3CD0 != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_45;
    }

    goto LABEL_46;
  }

LABEL_47:

LABEL_48:
  v81 = v10;
  v82 = *(v10 + 768);
  v84 = *(v10 + 240);
  v85 = *(v10 + 248);
  v86 = *(v10 + 256);
  v87 = *(v10 + 264);
  v90 = *(v10 + 592);
  if (*(v10 + 696) + *(v10 + 680) - *(v10 + 664) >= v90)
  {
    v91 = *(v10 + 592);
  }

  else
  {
    v91 = *(v10 + 696) + *(v10 + 680) - *(v10 + 664);
  }

  v83 = *(v10 + 688);
  v88 = *(v10 + 672);
  v89 = *(v10 + 656);
  if (v83 + v88 - v89 >= v90)
  {
    v92 = *(v10 + 592);
  }

  else
  {
    v92 = v83 + v88 - v89;
  }

  objc_autoreleasePoolPop(v16);
  CGPDFContextEndPage(v82);
  CGPDFContextClose(v82);

  objc_autoreleasePoolPop(v139);
  v93 = 0.0;
  v172.origin.x = 0.0;
  v172.origin.y = 0.0;
  v170.origin.x = v84;
  v170.origin.y = v85;
  v170.size.width = v86;
  v170.size.height = v87;
  v172.size.width = v92;
  v172.size.height = v91;
  v94 = CGRectIntersectsRect(v170, v172);
  v95 = *(v10 + 776);
  v96 = *(v81 + 768);
  v97 = *(v81 + 760);
  if (v94)
  {
    v98 = *(v81 + 240);
    v99 = *(v81 + 248);
    v100 = *(v81 + 256);
    v101 = *(v81 + 264);
    v102 = *(v81 + 528);
    v103 = *(v81 + 480);
    v104 = *(v81 + 488);
    v105 = *(v81 + 680) - *(v81 + 664);
    if (*(v81 + 696) + v105 >= *(v81 + 592))
    {
      v106 = *(v81 + 592);
    }

    else
    {
      v106 = *(v81 + 696) + v105;
    }

    CGAffineTransformMakeScale(&v160, 1.0, -1.0);
    v107 = *&v160.c;
    v108 = *&v160.tx;
    *(v81 + 112) = *&v160.a;
    *(v81 + 128) = v107;
    *(v81 + 144) = v108;
    CGAffineTransformTranslate(&v160, (v81 + 112), 0.0, -v106);
    v109 = *&v160.c;
    v110 = *&v160.tx;
    *(v81 + 160) = *&v160.a;
    *(v81 + 176) = v109;
    *(v81 + 192) = v110;
    v111 = v98;
    *&v109 = v99;
    *&v110 = v100;
    v112 = v101;
    v171 = CGRectApplyAffineTransform(*(&v109 - 8), (v81 + 160));
    v93 = v171.origin.x;
    v113 = v171.origin.y;
    v114 = v171.size.width;
    v115 = v171.size.height;

    v159 = *(v104 + 8);
    v159(v102, v103);
  }

  else
  {
    v159 = *(*(v81 + 488) + 8);
    v159(*(v81 + 528), *(v81 + 480));

    v113 = 0.0;
    v114 = 0.0;
    v115 = 0.0;
  }

  v116 = *(v81 + 240);
  v117 = *(v81 + 248);
  v118 = *(v81 + 256);
  v119 = *(v81 + 264);
  v120 = *(v81 + 632);
  v121 = *(v81 + 624);
  v122 = *(v81 + 616);
  v123 = *(v81 + 584);
  v124 = *(v81 + 544);
  v125 = *(v81 + 480);
  v126 = *(v81 + 400);
  (*(v81 + 600))(*(v81 + 408), *(v81 + 536), v125);
  [v121 setBounds_];

  v159(v124, v125);

  *v126 = 0.0;
  v126[1] = v93;
  v126[2] = v113;
  v126[3] = v114;
  v126[4] = v115;
  v127 = *(v81 + 8);
LABEL_61:

  return v127();
}

uint64_t sub_1A42B8BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C4D1D8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  v7 = sub_1A524C6F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = NSTemporaryDirectory();
  v12 = sub_1A524C674();
  v14 = v13;

  v20[0] = v12;
  v20[1] = v14;
  MEMORY[0x1A5907B60](47, 0xE100000000000000);
  MEMORY[0x1A5907B60](0xD000000000000019, a1);
  sub_1A524C6D4();
  sub_1A3D5F9DC();
  v15 = sub_1A524E024();
  (*(v8 + 8))(v10, v7);

  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1A42B93CC(0, *(v15 + 16), 0, v15);
    }

    mkdtemp((v15 + 32));
    v16 = sub_1A5240E64();
    v17 = *(*(v16 - 8) + 56);
    v17(v6, 1, 1, v16);
    sub_1A5240DC4();
    sub_1A3C687E0(v6, &unk_1EB12B250, MEMORY[0x1E6968FB0]);

    return (v17)(a2, 0, 1, v16);
  }

  else
  {
    v19 = sub_1A5240E64();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

id sub_1A42B8E9C()
{
  result = [v0 backgroundColor];
  if (!result)
  {
    v2 = [v0 superview];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1A42B8E9C();

      return v4;
    }

    else
    {
      v5 = [objc_opt_self() systemBackgroundColor];

      return v5;
    }
  }

  return result;
}

id sub_1A42B8F6C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FullPageScreenshotter(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_1A42B8FB0(void *a1, uint64_t a2, double a3, double a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    [v8 bounds];
    v12 = v11 == a3 && v10 == a4;
    if (v12 && [v8 px_scrollableAxis] == 2)
    {
      return v8;
    }
  }

  v13 = [a1 subviews];
  sub_1A3C52C70(0, &qword_1EB12B170, 0x1E69DD250);
  v14 = sub_1A524CA34();

  if (v14 >> 62)
  {
LABEL_24:
    v15 = sub_1A524E2B4();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v15 != i; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1A59097F0](i, v14);
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v17 = *(v14 + 8 * i + 32);
    }

    v19 = v17;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = sub_1A42B8FB0(v17, v18, a3, a4);

    if (v8)
    {

      return v8;
    }
  }

  return 0;
}

id sub_1A42B9154(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() redColor];
  qword_1EB1B3CB8 = result;
  return result;
}

void sub_1A42B91B8(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = [v4 colorWithAlphaComponent_];

  *a3 = v5;
}

void sub_1A42B9228(uint64_t a1, void *a2)
{
  sub_1A3F6D768();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1A3FBB1C4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_31;
  v11 = _Block_copy(aBlock);

  [a2 installRenderingCompletionHandler_];
  _Block_release(v11);
}

char *sub_1A42B93CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A42BA630(0, &qword_1EB1372C0, MEMORY[0x1E69E7230], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_1A42B94D8()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1A52411E4();
  v9 = sub_1A5241224();
  (*(v5 + 8))(v7, v4);
  [v8 setLocale_];

  v10 = sub_1A524C634();
  [v8 setDateFormat_];

  v17[0] = 0x68736E6565726353;
  v17[1] = 0xEB000000002D746FLL;
  sub_1A5241104();
  v11 = sub_1A5241074();
  (*(v1 + 8))(v3, v0);
  v12 = [v8 stringFromDate_];

  v13 = sub_1A524C674();
  v15 = v14;

  MEMORY[0x1A5907B60](v13, v15);

  return v17[0];
}

uint64_t sub_1A42B9758(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1A5240E64();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = sub_1A524CC54();
  v2[13] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A42B9850, v5, v4);
}

uint64_t sub_1A42B9850()
{
  v1 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & **(v0 + 64)) + 0x78))() & 1) != 0 && (v2 = (*((*v1 & **(v0 + 64)) + 0x58))()) != 0)
  {
    v3 = v2;
    v4 = [v2 px_topmostPresentedViewController];
    if (v4)
    {
      v5 = v4;

      v3 = v5;
    }

    *(v0 + 128) = v3;
    *(v0 + 136) = sub_1A524CC44();
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = sub_1A42B99F4;
    v7 = *(v0 + 88);

    return sub_1A42B40CC(v0 + 16, v7, v3);
  }

  else
  {

    v9 = *(v0 + 56);

    *v9 = xmmword_1A532B960;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1A42B99F4()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 152) = v0;
  *(v3 + 160) = *(v2 + 16);
  *(v3 + 168) = *(v3 + 24);
  *(v3 + 184) = *(v3 + 40);

  v5 = sub_1A524CBC4();
  if (v0)
  {
    v6 = sub_1A42B9C24;
  }

  else
  {
    v6 = sub_1A42B9B74;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1A42B9B74()
{
  v1 = v0[19];

  v2 = sub_1A5240E74();
  if (v1)
  {

    v2 = 0;
    v3 = 0xF000000000000000;
  }

  v0[25] = v2;
  v0[26] = v3;
  (*(v0[10] + 8))(v0[11], v0[9]);
  v4 = v0[14];
  v5 = v0[15];

  return MEMORY[0x1EEE6DFA0](sub_1A42B9D20, v4, v5);
}

uint64_t sub_1A42B9C24()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1A42B9C88, v1, v2);
}

uint64_t sub_1A42B9C88()
{
  v1 = v0[19];
  v2 = v0[16];

  v3 = v0[7];

  *v3 = xmmword_1A532B960;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1A42B9D20()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 160);
  v3 = *(v0 + 56);
  v7 = *(v0 + 168);
  v8 = *(v0 + 200);
  v6 = *(v0 + 184);

  *v3 = v8;
  *(v3 + 16) = v2;
  *(v3 + 40) = v6;
  *(v3 + 24) = v7;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1A42B9DD0()
{
  result = qword_1EB137228;
  if (!qword_1EB137228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137228);
  }

  return result;
}

unint64_t sub_1A42B9E34()
{
  result = qword_1EB1372A0;
  if (!qword_1EB1372A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1372A0);
  }

  return result;
}

void sub_1A42B9E88()
{
  sub_1A5240E64();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  [*(v0 + 16) drawViewHierarchyInRect:1 afterScreenUpdates:{v1, v2, v3, v4}];
  if (v5 == 1)
  {
    sub_1A524E404();

    sub_1A3C8C198(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v6 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v6);

    v7 = sub_1A524C634();

    sub_1A3C4D1D8(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FC9F0;
    v9 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v10 = objc_opt_self();
    v11 = *MEMORY[0x1E69DB958];
    v12 = v9;
    v13 = [v10 systemFontOfSize:16.0 weight:{v11, 0xD000000000000013, 0x80000001A53D0360}];
    v14 = sub_1A3C52C70(0, &qword_1EB120610, 0x1E69DB878);
    v15 = MEMORY[0x1E69DB650];
    *(inited + 40) = v13;
    v16 = *v15;
    *(inited + 64) = v14;
    *(inited + 72) = v16;
    v17 = qword_1EB1B3CB0;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_1EB1B3CB8;
    *(inited + 104) = sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
    *(inited + 80) = v19;
    v20 = v19;
    sub_1A3C8BCC0(inited);
    swift_setDeallocating();
    sub_1A3C8BC40(0);
    swift_arrayDestroy();
    type metadata accessor for Key(0);
    sub_1A3C8C198(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
    v21 = sub_1A524C3D4();

    [v7 drawInRect:v21 withAttributes:{v1, v2, v3, v4}];
  }
}

void sub_1A42BA1E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  if (!v1)
  {
    v1 = *(v0 + 56);
  }

  [v1 drawViewHierarchyInRect:1 afterScreenUpdates:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  if (v6)
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0x2065676150, 0xE500000000000000);
    v7 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v7);

    MEMORY[0x1A5907B60](8236, 0xE200000000000000);
    v8 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v8);

    MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53D0340);
    type metadata accessor for CGPoint(0);
    sub_1A524E624();
    v9 = sub_1A524C634();

    sub_1A3C4D1D8(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FC9F0;
    v11 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v12 = objc_opt_self();
    v13 = *MEMORY[0x1E69DB958];
    v14 = v11;
    v15 = [v12 systemFontOfSize:16.0 weight:v13];
    v16 = sub_1A3C52C70(0, &qword_1EB120610, 0x1E69DB878);
    v17 = MEMORY[0x1E69DB650];
    *(inited + 40) = v15;
    v18 = *v17;
    *(inited + 64) = v16;
    *(inited + 72) = v18;
    v19 = qword_1EB1B3CB0;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_1EB1B3CB8;
    *(inited + 104) = sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
    *(inited + 80) = v21;
    v22 = v21;
    sub_1A3C8BCC0(inited);
    swift_setDeallocating();
    sub_1A3C8BC40(0);
    swift_arrayDestroy();
    type metadata accessor for Key(0);
    sub_1A3C8C198(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
    v23 = sub_1A524C3D4();

    [v9 drawInRect:v23 withAttributes:{v2, v3, v4, v5}];
  }
}

uint64_t sub_1A42BA57C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A42B3D48(v2, v3, v4);
}

void sub_1A42BA630(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1A42BA694()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = [v0 layer];
  if (qword_1EB1B3E60 != -1)
  {
    swift_once();
  }

  [v1 setCornerRadius_];

  v2 = [v0 layer];
  [v2 setMasksToBounds_];

  v3 = [v0 layer];
  v4 = [objc_opt_self() blackColor];
  v5 = [v4 CGColor];

  [v3 setShadowColor_];
  v6 = [v0 layer];
  LODWORD(v7) = 1036831949;
  [v6 setShadowOpacity_];

  v8 = [v0 layer];
  [v8 setShadowRadius_];

  v9 = [v0 layer];
  [v9 setShadowPathIsBounds_];

  v10 = [v0 layer];
  [v10 setShadowOffset_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_1A42BA8B4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore21MapOptionsPlatterView_blurredBackgroundView) contentView];

  return v1;
}

id MapOptionsPlatterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *MapOptionsPlatterView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1A52473D4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = OBJC_IVAR____TtC12PhotosUICore21MapOptionsPlatterView_blurredBackgroundView;
  type metadata accessor for MapOptionsBlurredBackgroundView();
  v12 = _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0();
  v13 = [v12 layer];
  [v13 setMasksToBounds_];

  v14 = [v12 layer];
  if (qword_1EB1B3E60 != -1)
  {
    swift_once();
  }

  v15 = *&qword_1EB1B3E68;
  [v14 setCornerRadius_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v11] = v12;
  v16 = OBJC_IVAR____TtC12PhotosUICore21MapOptionsPlatterView_shadowView;
  v17 = sub_1A42BA694();
  *&v5[v16] = v17;
  v23.receiver = v5;
  v23.super_class = type metadata accessor for MapOptionsPlatterView(v17, v18);
  v19 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    [v19 addSubview_];
  }

  [v19 addSubview_];
  sub_1A42BABE0();
  if (MEMORY[0x1A590D320]())
  {
    sub_1A52473C4();
    v22[3] = sub_1A52473E4();
    v22[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_1A52473F4();
    sub_1A524DB24();
    v20 = [v19 layer];
    [v20 setCornerRadius_];
  }

  return v19;
}

void sub_1A42BABE0()
{
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    sub_1A3CB8F68();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1A531C940;
    v2 = *&v0[OBJC_IVAR____TtC12PhotosUICore21MapOptionsPlatterView_shadowView];
    v3 = [v2 topAnchor];
    v4 = [v0 topAnchor];
    v5 = [v3 constraintEqualToAnchor_];

    *(v1 + 32) = v5;
    v6 = [v2 bottomAnchor];
    v7 = [v0 bottomAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    *(v1 + 40) = v8;
    v9 = [v2 leadingAnchor];
    v10 = [v0 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v1 + 48) = v11;
    v12 = [v2 trailingAnchor];
    v13 = [v0 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v1 + 56) = v14;
  }

  sub_1A3CB8F68();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A531C940;
  v16 = *&v0[OBJC_IVAR____TtC12PhotosUICore21MapOptionsPlatterView_blurredBackgroundView];
  v17 = [v16 topAnchor];
  v18 = [v0 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(inited + 32) = v19;
  v20 = [v16 bottomAnchor];
  v21 = [v0 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(inited + 40) = v22;
  v23 = [v16 leadingAnchor];
  v24 = [v0 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(inited + 48) = v25;
  v26 = [v16 trailingAnchor];
  v27 = [v0 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(inited + 56) = v28;
  sub_1A42BB0C4(inited, v29);
  v30 = objc_opt_self();
  sub_1A4129FCC(0, v31);
  v32 = sub_1A524CA14();

  [v30 activateConstraints_];
}