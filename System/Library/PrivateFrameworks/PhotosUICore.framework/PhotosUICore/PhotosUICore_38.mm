uint64_t sub_1A40EF490@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v38 = sub_1A5249B24();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = (v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A40EF0C0(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v37 = v10;
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v31 = v30 - v11;
  sub_1A40EEFC0(0);
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v45 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249434();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v40 = a1 & 1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;

  sub_1A524B744();
  LOBYTE(v50) = a1;
  v51 = a2;
  sub_1A3C2DE14(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v30[1] = v48;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  v41 = a2;

  v16 = sub_1A524B6E4();
  v17 = v35;
  v18 = v36;
  *v35 = v16;
  v19 = v38;
  (*(v18 + 104))(v17, *MEMORY[0x1E697C8C0], v38);
  sub_1A40EA8FC(0, &qword_1EB131F20, sub_1A40EF114, sub_1A3E7D334);
  v21 = v20;
  v22 = sub_1A3D6E520();
  v32 = sub_1A40EF210();
  v33 = v22;
  v34 = v21;
  v23 = v37;
  v24 = v31;
  sub_1A524A9B4();

  (*(v18 + 8))(v17, v19);
  (*(v39 + 8))(v24, v23);
  v46 = a3;
  v47 = a4;
  sub_1A40E93E4(0, &qword_1EB131F90, sub_1A40EE8E4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v50)
  {
    v25 = sub_1A5243164();
  }

  else
  {
    v25 = 0;
  }

  v50 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v40;
  *(v26 + 24) = v41;
  *(v26 + 32) = a3;
  *(v26 + 40) = a4;
  sub_1A40EF414(0);

  v46 = v23;
  v47 = v34;
  v48 = v33;
  v49 = v32;
  swift_getOpaqueTypeConformance2();
  sub_1A40F0A34(&qword_1EB131F50, sub_1A40EF414, sub_1A403594C, MEMORY[0x1E69E7C80]);
  v27 = v43;
  v28 = v45;
  sub_1A524B144();

  return (*(v42 + 8))(v28, v27);
}

void sub_1A40EFA8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40E93E4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = a1;
  v32[1] = a2;
  sub_1A40E93E4(0, &qword_1EB131F90, sub_1A40EE8E4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v15 = v31;
  if (v31)
  {
    v16 = *(sub_1A5243194() + 16);

    type metadata accessor for LemonadeNavigationContext(0);
    swift_storeEnumTagMultiPayload();
    v17 = type metadata accessor for LemonadeDetailsContext(0);
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);

    j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(v32);
    v18 = sub_1A3C799F0(v14, 0, 0, 0, v11, v32, v16, 2);
    *v8 = v15;
    *(v8 + 1) = swift_getKeyPath();
    v8[16] = 0;
    *(v8 + 3) = swift_getKeyPath();
    v8[32] = 0;
    v19 = v6[7];
    *&v8[v19] = swift_getKeyPath();
    v20 = MEMORY[0x1E697DCB8];
    sub_1A40E93E4(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    v21 = &v8[v6[8]];
    *v21 = swift_getKeyPath();
    v21[8] = 0;
    v22 = v6[9];
    *&v8[v22] = swift_getKeyPath();
    sub_1A40E93E4(0, &qword_1EB128A50, MEMORY[0x1E697E730], v20);
    swift_storeEnumTagMultiPayload();

    v32[0] = sub_1A524B414();
    sub_1A40EA6E0(&unk_1EB1295D8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView, &unk_1A5319E48);
    sub_1A524AE84();

    sub_1A40F0E14(v8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
    KeyPath = swift_getKeyPath();
    sub_1A40EF114(0);
    v25 = (a3 + *(v24 + 36));
    *v25 = KeyPath;
    v25[1] = v18;
    v26 = swift_getKeyPath();
    v27 = *(v16 + 16);

    sub_1A40EA8FC(0, &qword_1EB131F20, sub_1A40EF114, sub_1A3E7D334);
    v29 = (a3 + *(v28 + 36));
    *v29 = v26;
    v29[1] = v27;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1A40EFF54()
{
  result = qword_1EB131F68;
  if (!qword_1EB131F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131F68);
  }

  return result;
}

__n128 sub_1A40EFFC4@<Q0>(__n128 *a1@<X8>)
{
  sub_1A524B694();
  sub_1A40EE8E4(0);
  sub_1A524B694();
  result = v3;
  a1->n128_u8[0] = v3.n128_u8[0];
  a1->n128_u64[1] = v3.n128_u64[1];
  a1[1] = v3;
  return result;
}

uint64_t sub_1A40F0040(uint64_t a1)
{
  v2 = sub_1A40F04C8();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A40F008C(uint64_t a1)
{
  v2 = sub_1A40F04C8();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A40F0100(uint64_t a1, uint64_t a2)
{
  sub_1A40EE918(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1A40E93E4(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      sub_1A3C2DE14(319, &qword_1EB124830, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        sub_1A40E93E4(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v5 <= 0x3F)
        {
          sub_1A3C2DE14(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
          if (v6 <= 0x3F)
          {
            sub_1A40E93E4(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A40F02CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A40F0328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A40F038C()
{
  result = qword_1EB131F70;
  if (!qword_1EB131F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131F70);
  }

  return result;
}

unint64_t sub_1A40F03E0()
{
  result = qword_1EB131F78;
  if (!qword_1EB131F78)
  {
    sub_1A40E9F54(255, &qword_1EB131F60, sub_1A40EEC78, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A40EA6E0(&qword_1EB131F80, sub_1A40EEC78, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131F78);
  }

  return result;
}

unint64_t sub_1A40F04C8()
{
  result = qword_1EB131F88;
  if (!qword_1EB131F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131F88);
  }

  return result;
}

void sub_1A40F051C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedPhotoLibrary];
  type metadata accessor for LemonadeBookmarksManager(0);
  v3 = type metadata accessor for LemonadeMockBookmarksDataSource();
  v4 = v2;
  v5 = sub_1A495E4AC();
  v6[3] = v3;
  v6[4] = sub_1A40EA6E0(&qword_1EB13D0D0, type metadata accessor for LemonadeMockBookmarksDataSource, &unk_1A5376B80);
  v6[0] = v5;
  LemonadeBookmarksManager.__allocating_init(photoLibrary:dataSource:)(v4, v6);
}

uint64_t objectdestroy_28Tm()
{

  return swift_deallocObject();
}

void sub_1A40F076C()
{
  sub_1A40E93E4(0, &qword_1EB131F90, sub_1A40EE8E4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v2)
  {
    v0 = sub_1A5243164();

    v1 = *(v0 + 16);

    if (v1)
    {
      sub_1A3C2DE14(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      sub_1A524B6B4();
    }
  }
}

void sub_1A40F0860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A40F08C4(uint64_t a1)
{
  if (!qword_1EB131FA0)
  {
    sub_1A40E9CD4(255);
    sub_1A40F0930();
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131FA0);
    }
  }
}

unint64_t sub_1A40F0930()
{
  result = qword_1EB131FA8;
  if (!qword_1EB131FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131FA8);
  }

  return result;
}

uint64_t sub_1A40F0984@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1A40EBE60(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_1A40F0A34(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

uint64_t objectdestroyTm_23()
{
  v1 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  j__swift_release(*(v2 + 8));
  sub_1A3C53AEC(*(v2 + 24), *(v2 + 32));
  v3 = v1[7];
  sub_1A40E93E4(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  v5 = v1[9];
  sub_1A40E93E4(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52486A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A40F0CE4@<X0>(void *a1@<X8>)
{
  type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0);

  PXDisplayCollectionDetailedCountsMake();
  *a1 = v2;
  v3 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1A40F0DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40F0E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A40F0E74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A40EDFD4(v4, a1);
}

uint64_t sub_1A40F0F10@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40E93E4(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A40F12C0(v8, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1A40F1128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40F1190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40F11F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A40F1258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40F12C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A40E93E4(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_1A40F1340()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 40);
  v5 = *(v0 + 32);
  v11 = v5;
  if (v12 == 1)
  {
    v6 = v5;
  }

  else
  {

    v7 = sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A40F4E14(&v11, sub_1A40F14AC);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v5;
}

void sub_1A40F14E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A40F1600(double (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  *a2 = a1();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_1A40F1634@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_1A5249234();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F1C80(0, v4);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(**v1 + 584))(v13);
  v17 = *(v16 + 16);
  if (v17)
  {
    sub_1A40FA2C4(v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * (v17 - 1), v15, type metadata accessor for LemonadeFeatureLibrary.Shelf);

    sub_1A3C5322C();
    v18 = LOBYTE(v47);
    v19 = sub_1A40F4E14(v15, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  }

  else
  {

    v18 = 24;
  }

  MEMORY[0x1EEE9AC00](v19);
  *(&v44 - 2) = v1;
  *(&v44 - 8) = v18;
  sub_1A40F1DB4(0);
  sub_1A40F2598(&qword_1EB132240, sub_1A40F1DB4, sub_1A40F4DE0, MEMORY[0x1E69819D0]);
  sub_1A40977A0(sub_1A40F4E74);
  KeyPath = swift_getKeyPath();
  v55 = *(v2 + 80);
  v21 = *(v2 + 64);
  *v54 = *(v2 + 48);
  *&v54[16] = v21;
  if (v55 == 1)
  {
    v22 = *&v54[24];
    v23 = *&v54[8];
    v24 = *v54;
  }

  else
  {

    v25 = sub_1A524D254();
    v26 = sub_1A524A014();
    sub_1A5246DF4(v25, &dword_1A3C1C000, v26, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A40F501C(v54);
    (*(v45 + 8))(v6, v46);
    v24 = v47;
    v23 = v48;
    v22 = v49;
  }

  v27 = v50 + 1;
  v28 = &v10[*(v8 + 36)];
  *v28 = KeyPath;
  *(v28 + 1) = v24;
  *(v28 + 1) = v23;
  *(v28 + 4) = v22;
  v52 = *(v2 + 88);
  v53 = *(v2 + 104);
  if (v53 == 1)
  {
    v29 = *&v52;
  }

  else
  {

    v30 = sub_1A524D254();
    v31 = sub_1A524A014();
    sub_1A5246DF4(v30, &dword_1A3C1C000, v31, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A40F4E14(&v52, sub_1A40F509C);
    (*(v45 + 8))(v6, v46);
    v29 = v47;
  }

  v51 = *(v2 + 144);
  v32 = *(v2 + 128);
  v50[0] = *(v2 + 112);
  v50[1] = v32;
  if ((v51 & 1) == 0)
  {
    v27 = &v48;

    v33 = sub_1A524D254();
    v34 = sub_1A524A014();
    sub_1A5246DF4(v33, &dword_1A3C1C000, v34, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A40F501C(v50);
    (*(v45 + 8))(v6, v46);
  }

  sub_1A40F5120(v29 - (*v27 + *v27));
  v35 = v44;
  sub_1A524A6E4();
  sub_1A40F4E14(v10, sub_1A40F1C80);
  v36 = swift_allocObject();
  v37 = *(v2 + 112);
  *(v36 + 112) = *(v2 + 96);
  *(v36 + 128) = v37;
  *(v36 + 144) = *(v2 + 128);
  *(v36 + 160) = *(v2 + 144);
  v38 = *(v2 + 48);
  *(v36 + 48) = *(v2 + 32);
  *(v36 + 64) = v38;
  v39 = *(v2 + 80);
  *(v36 + 80) = *(v2 + 64);
  *(v36 + 96) = v39;
  v40 = *(v2 + 16);
  *(v36 + 16) = *v2;
  *(v36 + 32) = v40;
  sub_1A40FA394(0, &qword_1EB132260, sub_1A40F9D50, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  v42 = (v35 + *(v41 + 36));
  *v42 = sub_1A40F9D04;
  v42[1] = v36;
  v42[2] = 0;
  v42[3] = 0;
  return sub_1A40F9DD4(v2, &v47);
}

void sub_1A40F1C80(uint64_t a1, double a2)
{
  if (!qword_1EB131FC8)
  {
    sub_1A40F1D0C(255, a2);
    sub_1A40F50D0(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB131FC8);
    }
  }
}

void sub_1A40F1D0C(uint64_t a1, double a2)
{
  if (!qword_1EB131FD0)
  {
    sub_1A40F1DB4(255);
    v4 = v3;
    v5 = sub_1A40F2598(&qword_1EB132240, sub_1A40F1DB4, sub_1A40F4DE0, MEMORY[0x1E69819D0]);
    v7 = type metadata accessor for LazyOrRegularVStack(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_1EB131FD0);
    }
  }
}

void sub_1A40F1DB4(uint64_t a1)
{
  if (!qword_1EB131FD8)
  {
    sub_1A3F32024(255);
    sub_1A40F1E7C(255);
    sub_1A40F2390(&qword_1EB126F20, sub_1A3F32024, MEMORY[0x1E69E6338]);
    sub_1A3C3DEB4();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131FD8);
    }
  }
}

void sub_1A40F1E7C(uint64_t a1)
{
  if (!qword_1EB131FE0)
  {
    sub_1A40F1F24(255, &qword_1EB131FE8, sub_1A40F1FA8, sub_1A40F1FF0, MEMORY[0x1E697F960]);
    sub_1A40F4494();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131FE0);
    }
  }
}

void sub_1A40F1F24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A40F214C(uint64_t a1)
{
  if (!qword_1EB132020)
  {
    v4[0] = &type metadata for LemonadeAlbumsFeature.ShelfProvider;
    v4[1] = sub_1A40F227C();
    v4[2] = sub_1A3C51EF8();
    v4[3] = sub_1A40F2598(&unk_1EB146F10, sub_1A3CA2A44, sub_1A3D6FBA4, MEMORY[0x1E69C1F78]);
    v4[4] = sub_1A40F2390(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
    v4[5] = sub_1A3D6FBA4();
    v4[6] = sub_1A3CA2B54();
    v4[7] = sub_1A40F2320();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132020);
    }
  }
}

unint64_t sub_1A40F227C()
{
  result = qword_1EB146F30;
  if (!qword_1EB146F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146F30);
  }

  return result;
}

uint64_t sub_1A40F22D0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C52C70(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40F2320()
{
  result = qword_1EB132028;
  if (!qword_1EB132028)
  {
    sub_1A3C379F4(255, &unk_1EB12A880, &qword_1EB126CD0, 0x1E6978758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132028);
  }

  return result;
}

uint64_t sub_1A40F2390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A40F2414(uint64_t a1)
{
  if (!qword_1EB132038)
  {
    v4[0] = &type metadata for LemonadeBookmarksFeature.ShelfProvider;
    v4[1] = sub_1A40F2544();
    v4[2] = sub_1A3C43144();
    v4[3] = sub_1A40F2598(&qword_1EB132048, sub_1A40EEA04, sub_1A40F2608, &unk_1A5368E68);
    v4[4] = sub_1A40F2390(&qword_1EB1256B0, sub_1A40EEA04, &unk_1A5368DF0);
    v4[5] = sub_1A40F2608();
    v4[6] = sub_1A40F265C();
    v4[7] = sub_1A40F26B0();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132038);
    }
  }
}

unint64_t sub_1A40F2544()
{
  result = qword_1EB132040;
  if (!qword_1EB132040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132040);
  }

  return result;
}

uint64_t sub_1A40F2598(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

unint64_t sub_1A40F2608()
{
  result = qword_1EB1434D0;
  if (!qword_1EB1434D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1434D0);
  }

  return result;
}

unint64_t sub_1A40F265C()
{
  result = qword_1EB125A00;
  if (!qword_1EB125A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125A00);
  }

  return result;
}

unint64_t sub_1A40F26B0()
{
  result = qword_1EB132050;
  if (!qword_1EB132050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132050);
  }

  return result;
}

void sub_1A40F2788(uint64_t a1)
{
  if (!qword_1EB132070)
  {
    v4[0] = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(255);
    v4[1] = sub_1A40F2390(&unk_1EB146F00, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337070);
    v4[2] = sub_1A40F2390(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337054);
    v4[3] = sub_1A40F2598(&unk_1EB146F10, sub_1A3CA2A44, sub_1A3D6FBA4, MEMORY[0x1E69C1F78]);
    v4[4] = sub_1A40F2390(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
    v4[5] = sub_1A3D6FBA4();
    v4[6] = sub_1A3CA2B54();
    v4[7] = sub_1A40F2320();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132070);
    }
  }
}

void sub_1A40F294C(uint64_t a1)
{
  if (!qword_1EB132080)
  {
    v4[0] = &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider;
    v4[1] = sub_1A40F2A7C();
    v4[2] = sub_1A3C445AC();
    v4[3] = sub_1A40F2598(&qword_1EB146EE0, sub_1A40F2AD0, sub_1A3D71010, MEMORY[0x1E69C1F78]);
    v4[4] = sub_1A40F2390(&qword_1EB124EE8, sub_1A40F2AD0, MEMORY[0x1E69C1F68]);
    v4[5] = sub_1A3D71010();
    v4[6] = sub_1A40F2BE0();
    v4[7] = sub_1A40F2320();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132080);
    }
  }
}

unint64_t sub_1A40F2A7C()
{
  result = qword_1EB146ED0;
  if (!qword_1EB146ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146ED0);
  }

  return result;
}

void sub_1A40F2AD0(uint64_t a1)
{
  if (!qword_1EB1291F8)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
    sub_1A40F2B70();
    sub_1A40F2BE0();
    sub_1A40F2C50();
    v1 = sub_1A5242734();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1291F8);
    }
  }
}

unint64_t sub_1A40F2B70()
{
  result = qword_1EB12A830;
  if (!qword_1EB12A830)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A830);
  }

  return result;
}

unint64_t sub_1A40F2BE0()
{
  result = qword_1EB12A820;
  if (!qword_1EB12A820)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A820);
  }

  return result;
}

unint64_t sub_1A40F2C50()
{
  result = qword_1EB12A850;
  if (!qword_1EB12A850)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A850);
  }

  return result;
}

void sub_1A40F2D8C(uint64_t a1)
{
  if (!qword_1EB146EA0)
  {
    v4[0] = &type metadata for LemonadePeopleShelfProvider;
    v4[1] = sub_1A40F2EEC();
    v4[2] = sub_1A3C36888();
    v4[3] = sub_1A40F2598(&qword_1EB1320A8, sub_1A3D61454, sub_1A40F2F40, MEMORY[0x1E69C2028]);
    v4[4] = sub_1A40F2390(&qword_1EB124E78, sub_1A3D61454, MEMORY[0x1E69C2018]);
    v4[5] = sub_1A40F2F40();
    v4[6] = sub_1A40F2390(&qword_1EB12A420, type metadata accessor for PeopleUnifiedItem, &protocol conformance descriptor for PeopleUnifiedItem);
    v4[7] = sub_1A40F2320();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB146EA0);
    }
  }
}

unint64_t sub_1A40F2EEC()
{
  result = qword_1EB1320A0;
  if (!qword_1EB1320A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1320A0);
  }

  return result;
}

void sub_1A40F2FB0(uint64_t a1)
{
  if (!qword_1EB1320B8)
  {
    v4[0] = type metadata accessor for LemonadeSocialGroupsShelfProvider(255);
    v4[1] = sub_1A40F2390(&qword_1EB1320C0, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F194);
    v4[2] = sub_1A40F2390(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
    v4[3] = sub_1A40F2598(&qword_1EB1320A8, sub_1A3D61454, sub_1A40F2F40, MEMORY[0x1E69C2028]);
    v4[4] = sub_1A40F2390(&qword_1EB124E78, sub_1A3D61454, MEMORY[0x1E69C2018]);
    v4[5] = sub_1A40F2F40();
    v4[6] = sub_1A40F2390(&qword_1EB12A420, type metadata accessor for PeopleUnifiedItem, &protocol conformance descriptor for PeopleUnifiedItem);
    v4[7] = sub_1A40F2320();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1320B8);
    }
  }
}

void sub_1A40F31EC(uint64_t a1)
{
  if (!qword_1EB146E90)
  {
    v4[0] = &type metadata for LemonadeEventsFeature.ShelfProvider;
    v4[1] = sub_1A40F3338();
    v4[2] = sub_1A3C440BC();
    v4[3] = sub_1A40F338C();
    v4[4] = sub_1A40F2390(&qword_1EB124EC0, sub_1A40F3434, MEMORY[0x1E69C22B8]);
    v4[5] = sub_1A40F3648(&qword_1EB124B68, sub_1A3D71010, &protocol conformance descriptor for <> PhotosConcatenatedItem<A, B, C>);
    v4[6] = sub_1A40F3648(&qword_1EB124B70, sub_1A40F2BE0, &protocol conformance descriptor for <> PhotosConcatenatedItem<A, B, C>);
    v4[7] = sub_1A40F2320();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB146E90);
    }
  }
}

unint64_t sub_1A40F3338()
{
  result = qword_1EB1320E0;
  if (!qword_1EB1320E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1320E0);
  }

  return result;
}

unint64_t sub_1A40F338C()
{
  result = qword_1EB124ED8;
  if (!qword_1EB124ED8)
  {
    sub_1A40F3434(255);
    sub_1A40F3648(&qword_1EB124B68, sub_1A3D71010, &protocol conformance descriptor for <> PhotosConcatenatedItem<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124ED8);
  }

  return result;
}

void sub_1A40F3434(uint64_t a1)
{
  if (!qword_1EB124EB0)
  {
    sub_1A40F354C(255);
    sub_1A40F3648(&unk_1EB128E50, sub_1A40F35D8, &protocol conformance descriptor for <> PhotosConcatenatedItem<A, B, C>);
    sub_1A40F3648(&qword_1EB124B70, sub_1A40F2BE0, &protocol conformance descriptor for <> PhotosConcatenatedItem<A, B, C>);
    sub_1A40F2390(&unk_1EB128E40, sub_1A40F354C, off_1E7721008);
    v1 = sub_1A5242764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124EB0);
    }
  }
}

void sub_1A40F354C(uint64_t a1)
{
  if (!qword_1EB128E30)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
    sub_1A40F2C50();
    sub_1A5245A24();
  }
}

unint64_t sub_1A40F35D8()
{
  result = qword_1EB12A808;
  if (!qword_1EB12A808)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A808);
  }

  return result;
}

uint64_t sub_1A40F3648(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A40F354C(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A40F36F4(uint64_t a1)
{
  if (!qword_1EB1320F8)
  {
    v4[0] = &type metadata for LemonadeTripsFeature.ShelfProvider;
    v4[1] = sub_1A40F3824();
    v4[2] = sub_1A3C441B4();
    v4[3] = sub_1A40F2598(&unk_1EB146E80, sub_1A40F3878, sub_1A3D71010, MEMORY[0x1E69C22C8]);
    v4[4] = sub_1A40F2390(&qword_1EB129290, sub_1A40F3878, MEMORY[0x1E69C22B8]);
    v4[5] = sub_1A3D71010();
    v4[6] = sub_1A40F2BE0();
    v4[7] = sub_1A40F2320();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1320F8);
    }
  }
}

unint64_t sub_1A40F3824()
{
  result = qword_1EB146E70;
  if (!qword_1EB146E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146E70);
  }

  return result;
}

void sub_1A40F3878(uint64_t a1)
{
  if (!qword_1EB129270)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
    sub_1A40F35D8();
    sub_1A40F2BE0();
    sub_1A40F2C50();
    v1 = sub_1A52424E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB129270);
    }
  }
}

void sub_1A40F3A20(uint64_t a1)
{
  if (!qword_1EB132128)
  {
    v4[0] = &type metadata for LemonadeMemoriesFeature.ShelfProvider;
    v4[1] = sub_1A40F3B50();
    v4[2] = sub_1A3C411C8();
    v4[3] = sub_1A40F2598(&qword_1EB124E90, sub_1A3F93438, sub_1A40F3C14, MEMORY[0x1E69C22C8]);
    v4[4] = sub_1A40F2390(&qword_1EB1291B8, sub_1A3F93438, MEMORY[0x1E69C22B8]);
    v4[5] = sub_1A40F3C14();
    v4[6] = sub_1A40F3BA4();
    v4[7] = sub_1A40F2320();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132128);
    }
  }
}

unint64_t sub_1A40F3B50()
{
  result = qword_1EB146E50;
  if (!qword_1EB146E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146E50);
  }

  return result;
}

unint64_t sub_1A40F3BA4()
{
  result = qword_1EB12A7B8;
  if (!qword_1EB12A7B8)
  {
    sub_1A3C379F4(255, &qword_1EB12A7B0, &qword_1EB1265E0, 0x1E69788F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A7B8);
  }

  return result;
}

unint64_t sub_1A40F3C14()
{
  result = qword_1EB125C50;
  if (!qword_1EB125C50)
  {
    sub_1A3C379F4(255, &qword_1EB12A7B0, &qword_1EB1265E0, 0x1E69788F0);
    sub_1A40F22D0(&unk_1EB120580, &qword_1EB1265E0, 0x1E69788F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C50);
  }

  return result;
}

void sub_1A40F3D00(uint64_t a1)
{
  if (!qword_1EB132138)
  {
    v4[0] = &type metadata for LemonadeMediaTypesFeature.ShelfProvider;
    v4[1] = sub_1A40F3E30();
    v4[2] = sub_1A3C442E8();
    v4[3] = sub_1A40F2598(&qword_1EB146E10, sub_1A40F3E84, sub_1A3D71010, MEMORY[0x1E69C2498]);
    v4[4] = sub_1A40F2390(&qword_1EB124D98, sub_1A40F3E84, MEMORY[0x1E69C2488]);
    v4[5] = sub_1A3D71010();
    v4[6] = sub_1A40F2BE0();
    v4[7] = sub_1A40F2320();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132138);
    }
  }
}

unint64_t sub_1A40F3E30()
{
  result = qword_1EB146E30;
  if (!qword_1EB146E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146E30);
  }

  return result;
}

void sub_1A40F3E84(uint64_t a1)
{
  if (!qword_1EB1290B8)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
    sub_1A40F3F24();
    sub_1A40F2BE0();
    sub_1A40F2C50();
    v1 = sub_1A5243434();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1290B8);
    }
  }
}

unint64_t sub_1A40F3F24()
{
  result = qword_1EB12A840;
  if (!qword_1EB12A840)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A840);
  }

  return result;
}

void sub_1A40F4018(uint64_t a1)
{
  if (!qword_1EB132150)
  {
    v4[0] = &type metadata for LemonadeUtilitiesFeature.ShelfProvider;
    v4[1] = sub_1A40F4148();
    v4[2] = sub_1A3C52114();
    v4[3] = sub_1A40F2598(&qword_1EB146E10, sub_1A40F3E84, sub_1A3D71010, MEMORY[0x1E69C2498]);
    v4[4] = sub_1A40F2390(&qword_1EB124D98, sub_1A40F3E84, MEMORY[0x1E69C2488]);
    v4[5] = sub_1A3D71010();
    v4[6] = sub_1A40F2BE0();
    v4[7] = sub_1A40F2320();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132150);
    }
  }
}

unint64_t sub_1A40F4148()
{
  result = qword_1EB146E00;
  if (!qword_1EB146E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146E00);
  }

  return result;
}

void sub_1A40F41D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = sub_1A40F2390(a4, a5, &unk_1A5330810);
    v12 = type metadata accessor for LemonadeShelf(a1, v9, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_1A40F426C(uint64_t a1)
{
  if (!qword_1EB146DD0)
  {
    v4[0] = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(255);
    v4[1] = sub_1A40F2390(&qword_1EB132160, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider, &unk_1A531BE90);
    v4[2] = sub_1A40F2390(&qword_1EB129BA0, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider, &unk_1A531BE74);
    v4[3] = sub_1A40F2598(&qword_1EB132168, sub_1A40F43F4, sub_1A3D71010, MEMORY[0x1E69C22C8]);
    v4[4] = sub_1A40F2390(&qword_1EB146DE0, sub_1A40F43F4, MEMORY[0x1E69C22B8]);
    v4[5] = sub_1A3D71010();
    v4[6] = sub_1A40F2BE0();
    v4[7] = sub_1A40F2320();
    v2 = type metadata accessor for LemonadePickerShelfProviderAdapter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB146DD0);
    }
  }
}

void sub_1A40F43F4(uint64_t a1)
{
  if (!qword_1EB129120)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
    sub_1A40F35D8();
    sub_1A40F2BE0();
    sub_1A40F2C50();
    v1 = sub_1A5242E74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB129120);
    }
  }
}

unint64_t sub_1A40F4494()
{
  result = qword_1EB132170;
  if (!qword_1EB132170)
  {
    sub_1A40F1F24(255, &qword_1EB131FE8, sub_1A40F1FA8, sub_1A40F1FF0, MEMORY[0x1E697F960]);
    sub_1A40F459C();
    sub_1A40F4B9C(&qword_1EB132180, sub_1A40F1FF0, sub_1A40F4690, sub_1A40F4AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132170);
  }

  return result;
}

unint64_t sub_1A40F459C()
{
  result = qword_1EB132178;
  if (!qword_1EB132178)
  {
    sub_1A40F1FA8(255);
    sub_1A40F4B9C(&qword_1EB132180, sub_1A40F1FF0, sub_1A40F4690, sub_1A40F4AD8);
    sub_1A40F2390(&unk_1EB122150, sub_1A40A3BA8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132178);
  }

  return result;
}

unint64_t sub_1A40F4720()
{
  result = qword_1EB132198;
  if (!qword_1EB132198)
  {
    sub_1A40F20C8(255);
    sub_1A40F2390(&qword_1EB1321A0, sub_1A40F2110, &unk_1A5306A30);
    sub_1A40F2390(&qword_1EB1321A8, sub_1A40F23D8, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132198);
  }

  return result;
}

unint64_t sub_1A40F47FC()
{
  result = qword_1EB1321B0;
  if (!qword_1EB1321B0)
  {
    sub_1A40F2704(255);
    sub_1A40F2390(&qword_1EB1321B8, sub_1A40F274C, &unk_1A5306A30);
    sub_1A40F2390(&qword_1EB1321C0, sub_1A40F2910, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1321B0);
  }

  return result;
}

unint64_t sub_1A40F4920()
{
  result = qword_1EB1321D0;
  if (!qword_1EB1321D0)
  {
    sub_1A40F2D08(255);
    sub_1A40F2390(&qword_1EB1321D8, sub_1A40F2D50, &unk_1A5306A30);
    sub_1A40F2390(&qword_1EB1321E0, sub_1A40F2F74, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1321D0);
  }

  return result;
}

unint64_t sub_1A40F49FC()
{
  result = qword_1EB1321E8;
  if (!qword_1EB1321E8)
  {
    sub_1A40F3168(255);
    sub_1A40F2390(&qword_1EB1321F0, sub_1A40F31B0, &unk_1A5306A30);
    sub_1A40F2390(&qword_1EB1321F8, sub_1A40F36B8, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1321E8);
  }

  return result;
}

unint64_t sub_1A40F4AD8()
{
  result = qword_1EB132200;
  if (!qword_1EB132200)
  {
    sub_1A40F3918(255);
    sub_1A40F4B9C(&qword_1EB132208, sub_1A40F3954, sub_1A40F4C28, sub_1A40F4D04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132200);
  }

  return result;
}

uint64_t sub_1A40F4B9C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t sub_1A40F4C28()
{
  result = qword_1EB132210;
  if (!qword_1EB132210)
  {
    sub_1A40F399C(255);
    sub_1A40F2390(&qword_1EB132218, sub_1A40F39E4, &unk_1A5306A30);
    sub_1A40F2390(&qword_1EB132220, sub_1A40F3CC4, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132210);
  }

  return result;
}

unint64_t sub_1A40F4D04()
{
  result = qword_1EB132228;
  if (!qword_1EB132228)
  {
    sub_1A40F3F94(255);
    sub_1A40F2390(&qword_1EB132230, sub_1A40F3FDC, &unk_1A5306A30);
    sub_1A40F2390(&qword_1EB132238, sub_1A40F419C, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132228);
  }

  return result;
}

uint64_t sub_1A40F4E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1A40F4E74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v13 = (*(**v1 + 584))();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = *(v1 + 16);
  *(v3 + 24) = *v1;
  *(v3 + 40) = v4;
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  v7 = *(v1 + 48);
  *(v3 + 56) = *(v1 + 32);
  *(v3 + 104) = v6;
  *(v3 + 88) = v5;
  *(v3 + 72) = v7;
  v9 = *(v1 + 112);
  v8 = *(v1 + 128);
  v10 = *(v1 + 144);
  *(v3 + 120) = *(v1 + 96);
  *(v3 + 168) = v10;
  *(v3 + 152) = v8;
  *(v3 + 136) = v9;
  sub_1A40F9DD4(v1, v12);
  sub_1A3F32024(0);
  sub_1A40F1E7C(0);
  sub_1A40F2390(&qword_1EB126F20, sub_1A3F32024, MEMORY[0x1E69E6338]);
  sub_1A40F4DE0();
  sub_1A40F2390(&qword_1EB12A158, type metadata accessor for LemonadeFeatureLibrary.Shelf, &unk_1A536AF40);
  sub_1A524B9C4();
  return result;
}

uint64_t sub_1A40F501C(uint64_t a1)
{
  sub_1A40F50D0(0, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A40F50D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A40F5120(double a1)
{
  result = qword_1EB132250;
  if (!qword_1EB132250)
  {
    sub_1A40F1C80(255, a1);
    sub_1A40F2390(&qword_1EB132258, sub_1A40F1D0C, &unk_1A5316EC8);
    sub_1A3E73DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132250);
  }

  return result;
}

uint64_t sub_1A40F51D0(uint64_t *a1, uint64_t a2, int a3)
{
  v43 = a3;
  sub_1A40F1F24(0, &qword_1EB132280, sub_1A40F1FA8, sub_1A40F1FF0, MEMORY[0x1E697F948]);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  sub_1A40F1FF0(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  sub_1A40F1FA8(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  if (MEMORY[0x1A590D320](v20))
  {
    v41 = a2;
    v42 = v9;
    v23 = *a1;
    v24 = sub_1A3C5322C();
    v25 = v45;
    v26 = (*(*v23 + 680))(v24);
    if (!*(v26 + 16))
    {
      goto LABEL_11;
    }

    v27 = sub_1A3C6246C(v25);
    if ((v28 & 1) == 0)
    {
      goto LABEL_11;
    }

    v29 = *(*(v26 + 56) + 8 * v27);

    v30 = sub_1A40F1340();
    if (v30)
    {
      v31 = v30;
      sub_1A40F56F8(v41, v30, a1[1], v43 & 1, v14);

      KeyPath = swift_getKeyPath();
      sub_1A40FA32C(v14, v18, sub_1A40F1FF0);
      v33 = &v18[*(v16 + 36)];
      *v33 = KeyPath;
      v33[1] = v29;
      sub_1A40FA32C(v18, v22, sub_1A40F1FA8);
      sub_1A40FA2C4(v22, v7, sub_1A40F1FA8);
      swift_storeEnumTagMultiPayload();
      sub_1A40F459C();
      sub_1A40F4B9C(&qword_1EB132180, sub_1A40F1FF0, sub_1A40F4690, sub_1A40F4AD8);
      sub_1A5249744();
      v34 = sub_1A40F1FA8;
      v35 = v22;
      return sub_1A40F4E14(v35, v34);
    }
  }

  else
  {
    v36 = sub_1A40F1340();
    if (v36)
    {
      v37 = v36;
      sub_1A40F56F8(a2, v36, a1[1], v43 & 1, v11);

      sub_1A40FA2C4(v11, v7, sub_1A40F1FF0);
      swift_storeEnumTagMultiPayload();
      sub_1A40F459C();
      sub_1A40F4B9C(&qword_1EB132180, sub_1A40F1FF0, sub_1A40F4690, sub_1A40F4AD8);
      sub_1A5249744();
      v34 = sub_1A40F1FF0;
      v35 = v11;
      return sub_1A40F4E14(v35, v34);
    }

    __break(1u);
  }

  __break(1u);
LABEL_11:

  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1A524E404();

  v45 = 0xD000000000000016;
  v46 = 0x80000001A53C7770;
  sub_1A3C5322C();
  sub_1A3C66768();
  v39 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v39);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A40F56F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v401 = a4;
  v402 = a3;
  v400 = a2;
  v403 = a1;
  v408 = a5;
  v339 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v339);
  v338 = &v323 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F426C(0);
  v341 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v340 = &v323 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F419C(0);
  v375 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v345 = &v323 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = type metadata accessor for LemonadeSuggestionsFeature(0);
  MEMORY[0x1EEE9AC00](v335);
  v344 = &v323 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E697F948];
  sub_1A40F1F24(0, &qword_1EB132288, sub_1A40F3FDC, sub_1A40F419C, MEMORY[0x1E697F948]);
  v371 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v373 = &v323 - v13;
  sub_1A40F3F94(0);
  v389 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v374 = &v323 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F3FDC(0);
  v372 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v343 = &v323 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F3CC4(0);
  v370 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v342 = &v323 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40FA394(0, &qword_1EB132290, sub_1A40F3954, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v391 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v393 = &v323 - v21;
  sub_1A40F1F24(0, &qword_1EB132298, sub_1A40F399C, sub_1A40F3F94, v11);
  v386 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v388 = &v323 - v23;
  sub_1A40F1F24(0, &qword_1EB1322A0, sub_1A40F39E4, sub_1A40F3CC4, v11);
  v366 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v368 = &v323 - v25;
  sub_1A40F399C(0);
  v387 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v369 = &v323 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F3954(0);
  v392 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v390 = &v323 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F3918(0);
  v407 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v394 = &v323 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F39E4(0);
  v365 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v337 = &v323 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F36B8(0);
  v364 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v336 = &v323 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F1F24(0, &qword_1EB1322A8, sub_1A40F31B0, sub_1A40F36B8, v11);
  v361 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v363 = &v323 - v37;
  sub_1A40F3168(0);
  v385 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v367 = &v323 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F31B0(0);
  v362 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v334 = &v323 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = type metadata accessor for LemonadeSocialGroupsShelfProvider(0);
  MEMORY[0x1EEE9AC00](v327);
  v326 = &v323 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F2FB0(0);
  v330 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v328 = &v323 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F2F74(0);
  v360 = v45;
  MEMORY[0x1EEE9AC00](v45);
  v333 = &v323 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4AFFC(0);
  v323 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v332 = &v323 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F1F24(0, &qword_1EB1322B0, sub_1A40F2D08, sub_1A40F3168, v11);
  v381 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v383 = &v323 - v50;
  sub_1A40F1F24(0, &qword_1EB1322B8, sub_1A40F2D50, sub_1A40F2F74, v11);
  v355 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v358 = &v323 - v52;
  sub_1A40F2D08(0);
  v382 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v359 = &v323 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F2CC0(0);
  v398 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v384 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F2D50(0);
  v357 = v57;
  MEMORY[0x1EEE9AC00](v57);
  v331 = &v323 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F2910(0);
  v354 = v59;
  MEMORY[0x1EEE9AC00](v59);
  v329 = &v323 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F1F24(0, &qword_1EB1322C0, sub_1A40F274C, sub_1A40F2910, v11);
  v352 = v61;
  MEMORY[0x1EEE9AC00](v61);
  v353 = &v323 - v62;
  sub_1A40F2704(0);
  v380 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v356 = &v323 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v323 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F2788(0);
  v69 = v68;
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v323 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F274C(0);
  v351 = v72;
  MEMORY[0x1EEE9AC00](v72);
  v325 = &v323 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for LemonadeMacSyncedAlbumsFeature(0);
  MEMORY[0x1EEE9AC00](v74);
  v349 = &v323 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F23D8(0);
  v350 = v76;
  MEMORY[0x1EEE9AC00](v76);
  v324 = &v323 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F1F24(0, &qword_1EB1322C8, sub_1A40F2038, sub_1A40F3918, v11);
  v404 = v78;
  MEMORY[0x1EEE9AC00](v78);
  v406 = &v323 - v79;
  sub_1A40F1F24(0, &qword_1EB1322D0, sub_1A40F2080, sub_1A40F2CC0, v11);
  v395 = v80;
  MEMORY[0x1EEE9AC00](v80);
  v397 = &v323 - v81;
  sub_1A40F1F24(0, &qword_1EB1322D8, sub_1A40F20C8, sub_1A40F2704, v11);
  v376 = v82;
  MEMORY[0x1EEE9AC00](v82);
  v378 = &v323 - v83;
  sub_1A40F1F24(0, &unk_1EB1322E0, sub_1A40F2110, sub_1A40F23D8, v11);
  v347 = v84;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v323 - v85;
  sub_1A40F20C8(0);
  v377 = v87;
  MEMORY[0x1EEE9AC00](v87);
  v348 = &v323 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F2080(0);
  v396 = v89;
  MEMORY[0x1EEE9AC00](v89);
  v379 = &v323 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F2038(0);
  v405 = v91;
  MEMORY[0x1EEE9AC00](v91);
  v399 = &v323 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F2110(0);
  v346 = v93;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v323 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v323 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40FA2C4(v403, v98, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v284 = *(v98 + 2);
          v403 = *(v98 + 1);
          v394 = v284;
          LOBYTE(v284) = v98[32];
          *&v413 = *(v98 + 3);
          v285 = v413;
          BYTE8(v413) = v284;
          v286 = sub_1A40F3338();
          v287 = sub_1A3C440BC();
          v288 = sub_1A40F338C();
          v289 = sub_1A40F2390(&qword_1EB124EC0, sub_1A40F3434, MEMORY[0x1E69C22B8]);
          v290 = sub_1A40F3648(&qword_1EB124B68, sub_1A3D71010, &protocol conformance descriptor for <> PhotosConcatenatedItem<A, B, C>);
          v291 = sub_1A40F3648(&qword_1EB124B70, sub_1A40F2BE0, &protocol conformance descriptor for <> PhotosConcatenatedItem<A, B, C>);
          v292 = sub_1A40F2320();
          v293 = v400;
          v400 = v285;
          sub_1A432C3B4(&v413, v293, &type metadata for LemonadeEventsFeature.ShelfProvider, v286, v287, v288, v289, v290, &v418, v291, v292);
          *&v413 = v418;
          BYTE8(v413) = BYTE8(v418);
          *&v414 = *v419;
          sub_1A40F31EC(0);
          v295 = v294;
          v296 = sub_1A40F2390(&qword_1EB1320E8, sub_1A40F31EC, &unk_1A5330810);
          v297 = v402;

          LODWORD(v287) = sub_1A3C5A374();
          v298 = sub_1A3C5A374();
          v115 = v334;
          sub_1A3EFC060(&v413, v297, v287, v298 & 1, v401 & 1, v295, v296, v334);
          sub_1A40FA2C4(v115, v363, sub_1A40F31B0);
          swift_storeEnumTagMultiPayload();
          sub_1A40F2390(&qword_1EB1321F0, sub_1A40F31B0, &unk_1A5306A30);
          sub_1A40F2390(&qword_1EB1321F8, sub_1A40F36B8, &unk_1A5306A30);
          v299 = v367;
          sub_1A5249744();
          sub_1A40FA2C4(v299, v383, sub_1A40F3168);
          swift_storeEnumTagMultiPayload();
          sub_1A40F4920();
          sub_1A40F49FC();
          v300 = v384;
          sub_1A5249744();
          sub_1A40F4E14(v299, sub_1A40F3168);
          sub_1A40FA2C4(v300, v397, sub_1A40F2CC0);
          swift_storeEnumTagMultiPayload();
          sub_1A40F46D8();
          sub_1A40F48D8();
          v301 = v399;
          sub_1A5249744();
          sub_1A40F4E14(v300, sub_1A40F2CC0);
          sub_1A40FA2C4(v301, v406, sub_1A40F2038);
          swift_storeEnumTagMultiPayload();
          sub_1A40F4690();
          sub_1A40F4AD8();
          sub_1A5249744();

          sub_1A40F4E14(v301, sub_1A40F2038);
          v119 = sub_1A40F31B0;
          goto LABEL_29;
        }

        if (EnumCaseMultiPayload == 5)
        {
          v138 = *(v98 + 2);
          v403 = *(v98 + 1);
          v394 = v138;
          v139 = *(v98 + 4);
          LOBYTE(v138) = v98[40];
          *&v413 = *(v98 + 3);
          v140 = v413;
          *(&v413 + 1) = v139;
          LOBYTE(v414) = v138;
          v393 = sub_1A40F3824();
          v141 = sub_1A3C441B4();
          v142 = sub_1A40F2598(&unk_1EB146E80, sub_1A40F3878, sub_1A3D71010, MEMORY[0x1E69C22C8]);
          v143 = sub_1A40F2390(&qword_1EB129290, sub_1A40F3878, MEMORY[0x1E69C22B8]);
          v144 = sub_1A3D71010();
          v145 = sub_1A40F2BE0();
          v146 = sub_1A40F2320();
          v147 = v400;
          v400 = v140;
          v148 = v139;
          sub_1A432C3B4(&v413, v147, &type metadata for LemonadeTripsFeature.ShelfProvider, v393, v141, v142, v143, v144, &v418, v145, v146);
          v413 = v418;
          LOBYTE(v414) = v419[0];
          *(&v414 + 1) = *&v419[8];
          sub_1A40F36F4(0);
          v150 = v149;
          v151 = sub_1A40F2390(&qword_1EB132100, sub_1A40F36F4, &unk_1A5330810);
          v152 = v402;

          LODWORD(v140) = sub_1A3C5A374();
          v153 = sub_1A3C5A374();
          v115 = v336;
          sub_1A3EFC060(&v413, v152, v140, v153 & 1, v401 & 1, v150, v151, v336);
          sub_1A40FA2C4(v115, v363, sub_1A40F36B8);
          swift_storeEnumTagMultiPayload();
          sub_1A40F2390(&qword_1EB1321F0, sub_1A40F31B0, &unk_1A5306A30);
          sub_1A40F2390(&qword_1EB1321F8, sub_1A40F36B8, &unk_1A5306A30);
          v154 = v367;
          sub_1A5249744();
          sub_1A40FA2C4(v154, v383, sub_1A40F3168);
          swift_storeEnumTagMultiPayload();
          sub_1A40F4920();
          sub_1A40F49FC();
          v155 = v384;
          sub_1A5249744();
          sub_1A40F4E14(v154, sub_1A40F3168);
          sub_1A40FA2C4(v155, v397, sub_1A40F2CC0);
          swift_storeEnumTagMultiPayload();
          sub_1A40F46D8();
          sub_1A40F48D8();
          v156 = v399;
          sub_1A5249744();
          sub_1A40F4E14(v155, sub_1A40F2CC0);
          sub_1A40FA2C4(v156, v406, sub_1A40F2038);
          swift_storeEnumTagMultiPayload();
          sub_1A40F4690();
          sub_1A40F4AD8();
          sub_1A5249744();

          sub_1A40F4E14(v156, sub_1A40F2038);
          v119 = sub_1A40F36B8;
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      v95 = v332;
      sub_1A40FA32C(v98, v332, sub_1A3C4AFFC);
      v215 = v326;
      sub_1A40FA2C4(&v95[*(v323 + 40)], v326, type metadata accessor for LemonadeSocialGroupsShelfProvider);
      v216 = sub_1A40F2390(&qword_1EB1320C0, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F194);
      v217 = sub_1A40F2390(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
      v218 = sub_1A40F2598(&qword_1EB1320A8, sub_1A3D61454, sub_1A40F2F40, MEMORY[0x1E69C2028]);
      v219 = sub_1A40F2390(&qword_1EB124E78, sub_1A3D61454, MEMORY[0x1E69C2018]);
      v220 = sub_1A40F2F40();
      v221 = sub_1A40F2390(&qword_1EB12A420, type metadata accessor for PeopleUnifiedItem, &protocol conformance descriptor for PeopleUnifiedItem);
      v222 = sub_1A40F2320();
      v223 = v400;
      v322 = v221;
      v224 = v328;
      sub_1A432C3B4(v215, v223, v327, v216, v217, v218, v219, v220, v328, v322, v222);
      v225 = sub_1A40F2390(&qword_1EB1320C8, sub_1A40F2FB0, &unk_1A5330810);
      v226 = v402;

      v227 = v330;
      LODWORD(v217) = sub_1A3C5A374();
      v228 = sub_1A3C5A374();
      v229 = v333;
      sub_1A3EFC060(v224, v226, v217, v228 & 1, v401 & 1, v227, v225, v333);
      sub_1A40FA2C4(v229, v358, sub_1A40F2F74);
      swift_storeEnumTagMultiPayload();
      sub_1A40F2390(&qword_1EB1321D8, sub_1A40F2D50, &unk_1A5306A30);
      sub_1A40F2390(&qword_1EB1321E0, sub_1A40F2F74, &unk_1A5306A30);
      v230 = v359;
      sub_1A5249744();
      sub_1A40FA2C4(v230, v383, sub_1A40F2D08);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4920();
      sub_1A40F49FC();
      v231 = v384;
      sub_1A5249744();
      sub_1A40F4E14(v230, sub_1A40F2D08);
      sub_1A40FA2C4(v231, v397, sub_1A40F2CC0);
      swift_storeEnumTagMultiPayload();
      sub_1A40F46D8();
      sub_1A40F48D8();
      v232 = v399;
      sub_1A5249744();
      sub_1A40F4E14(v231, sub_1A40F2CC0);
      sub_1A40FA2C4(v232, v406, sub_1A40F2038);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4690();
      sub_1A40F4AD8();
      sub_1A5249744();
      sub_1A40F4E14(v232, sub_1A40F2038);
      sub_1A40F4E14(v229, sub_1A40F2F74);
      v175 = sub_1A3C4AFFC;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v251 = *(v98 + 2);
          v403 = *(v98 + 1);
          v394 = v251;
          v252 = *(v98 + 3);
          LOBYTE(v251) = v98[32];
          v393 = *(v98 + 5);
          *&v413 = v252;
          BYTE8(v413) = v251;
          v253 = sub_1A40F2A7C();
          v254 = sub_1A3C445AC();
          v255 = sub_1A40F2598(&qword_1EB146EE0, sub_1A40F2AD0, sub_1A3D71010, MEMORY[0x1E69C1F78]);
          v256 = sub_1A40F2390(&qword_1EB124EE8, sub_1A40F2AD0, MEMORY[0x1E69C1F68]);
          v257 = sub_1A3D71010();
          v258 = sub_1A40F2BE0();
          v259 = sub_1A40F2320();
          v260 = v400;
          v400 = v252;
          sub_1A432C3B4(&v413, v260, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, v253, v254, v255, v256, v257, &v418, v258, v259);
          *&v413 = v418;
          BYTE8(v413) = BYTE8(v418);
          *&v414 = *v419;
          sub_1A40F294C(0);
          v262 = v261;
          v263 = sub_1A40F2390(&unk_1EB146EF0, sub_1A40F294C, &unk_1A5330810);
          v264 = v402;

          LODWORD(v252) = sub_1A3C5A374();
          v265 = sub_1A3C5A374();
          v115 = v329;
          sub_1A3EFC060(&v413, v264, v252, v265 & 1, v401 & 1, v262, v263, v329);
          sub_1A40FA2C4(v115, v353, sub_1A40F2910);
          swift_storeEnumTagMultiPayload();
          sub_1A40F2390(&qword_1EB1321B8, sub_1A40F274C, &unk_1A5306A30);
          sub_1A40F2390(&qword_1EB1321C0, sub_1A40F2910, &unk_1A5306A30);
          v266 = v356;
          sub_1A5249744();
          sub_1A40FA2C4(v266, v378, sub_1A40F2704);
          swift_storeEnumTagMultiPayload();
          sub_1A40F4720();
          sub_1A40F47FC();
          v267 = v379;
          sub_1A5249744();
          sub_1A40F4E14(v266, sub_1A40F2704);
          sub_1A40FA2C4(v267, v397, sub_1A40F2080);
          swift_storeEnumTagMultiPayload();
          sub_1A40F46D8();
          sub_1A40F48D8();
          v268 = v399;
          sub_1A5249744();
          sub_1A40F4E14(v267, sub_1A40F2080);
          sub_1A40FA2C4(v268, v406, sub_1A40F2038);
          swift_storeEnumTagMultiPayload();
          sub_1A40F4690();
          sub_1A40F4AD8();
          sub_1A5249744();

          sub_1A40F4E14(v268, sub_1A40F2038);
          v119 = sub_1A40F2910;
          goto LABEL_29;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v100 = *(v98 + 2);
          v403 = *(v98 + 1);
          v394 = v100;
          LOWORD(v100) = *(v98 + 16);
          *&v413 = *(v98 + 3);
          v101 = v413;
          WORD4(v413) = v100;
          v102 = sub_1A40F2EEC();
          v103 = sub_1A3C36888();
          v104 = sub_1A40F2598(&qword_1EB1320A8, sub_1A3D61454, sub_1A40F2F40, MEMORY[0x1E69C2028]);
          v105 = sub_1A40F2390(&qword_1EB124E78, sub_1A3D61454, MEMORY[0x1E69C2018]);
          v106 = sub_1A40F2F40();
          v107 = sub_1A40F2390(&qword_1EB12A420, type metadata accessor for PeopleUnifiedItem, &protocol conformance descriptor for PeopleUnifiedItem);
          v108 = sub_1A40F2320();
          v109 = v400;
          v400 = v101;
          sub_1A432C3B4(&v413, v109, &type metadata for LemonadePeopleShelfProvider, v102, v103, v104, v105, v106, &v418, v107, v108);
          *&v413 = v418;
          WORD4(v413) = WORD4(v418);
          *&v414 = *v419;
          sub_1A40F2D8C(0);
          v111 = v110;
          v112 = sub_1A40F2390(&unk_1EB146EC0, sub_1A40F2D8C, &unk_1A5330810);
          v113 = v402;

          LODWORD(v103) = sub_1A3C5A374();
          v114 = sub_1A3C5A374();
          v115 = v331;
          sub_1A3EFC060(&v413, v113, v103, v114 & 1, v401 & 1, v111, v112, v331);
          sub_1A40FA2C4(v115, v358, sub_1A40F2D50);
          swift_storeEnumTagMultiPayload();
          sub_1A40F2390(&qword_1EB1321D8, sub_1A40F2D50, &unk_1A5306A30);
          sub_1A40F2390(&qword_1EB1321E0, sub_1A40F2F74, &unk_1A5306A30);
          v116 = v359;
          sub_1A5249744();
          sub_1A40FA2C4(v116, v383, sub_1A40F2D08);
          swift_storeEnumTagMultiPayload();
          sub_1A40F4920();
          sub_1A40F49FC();
          v117 = v384;
          sub_1A5249744();
          sub_1A40F4E14(v116, sub_1A40F2D08);
          sub_1A40FA2C4(v117, v397, sub_1A40F2CC0);
          swift_storeEnumTagMultiPayload();
          sub_1A40F46D8();
          sub_1A40F48D8();
          v118 = v399;
          sub_1A5249744();
          sub_1A40F4E14(v117, sub_1A40F2CC0);
          sub_1A40FA2C4(v118, v406, sub_1A40F2038);
          swift_storeEnumTagMultiPayload();
          sub_1A40F4690();
          sub_1A40F4AD8();
          sub_1A5249744();

          sub_1A40F4E14(v118, sub_1A40F2038);
          v119 = sub_1A40F2D50;
LABEL_29:
          v213 = v119;
          v214 = v115;
          return sub_1A40F4E14(v214, v213);
        }

        goto LABEL_31;
      }

      v176 = *(v98 + 3);
      *&v419[16] = *(v98 + 2);
      v420 = v176;
      v421 = *(v98 + 4);
      v422 = v98[80];
      v177 = *(v98 + 1);
      v418 = *v98;
      *v419 = v177;
      v178 = *(v98 + 40);
      v409 = *(v98 + 24);
      v410 = v178;
      v411[0] = *(v98 + 56);
      *(v411 + 9) = *(v98 + 65);
      sub_1A3FA1224(&v419[8], &v413);
      v179 = sub_1A40F227C();
      v180 = sub_1A3C51EF8();
      v181 = sub_1A40F2598(&unk_1EB146F10, sub_1A3CA2A44, sub_1A3D6FBA4, MEMORY[0x1E69C1F78]);
      v182 = sub_1A40F2390(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
      v183 = sub_1A3D6FBA4();
      v184 = sub_1A3CA2B54();
      v185 = sub_1A40F2320();
      sub_1A432C3B4(&v409, v400, &type metadata for LemonadeAlbumsFeature.ShelfProvider, v179, v180, v181, v182, v183, &v413, v184, v185);
      v411[0] = v415;
      v411[1] = v416;
      v412 = v417;
      v409 = v413;
      v410 = v414;
      sub_1A40F214C(0);
      v187 = v186;
      v188 = sub_1A40F2390(&qword_1EB146F40, sub_1A40F214C, &unk_1A5330810);
      v189 = v402;

      LODWORD(v181) = sub_1A3C5A374();
      v190 = sub_1A3C5A374();
      sub_1A3EFC060(&v409, v189, v181, v190 & 1, v401 & 1, v187, v188, v95);
      sub_1A40FA2C4(v95, v86, sub_1A40F2110);
      swift_storeEnumTagMultiPayload();
      sub_1A40F2390(&qword_1EB1321A0, sub_1A40F2110, &unk_1A5306A30);
      sub_1A40F2390(&qword_1EB1321A8, sub_1A40F23D8, &unk_1A5306A30);
      v191 = v348;
      sub_1A5249744();
      sub_1A40FA2C4(v191, v378, sub_1A40F20C8);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4720();
      sub_1A40F47FC();
      v192 = v379;
      sub_1A5249744();
      sub_1A40F4E14(v191, sub_1A40F20C8);
      sub_1A40FA2C4(v192, v397, sub_1A40F2080);
      swift_storeEnumTagMultiPayload();
      sub_1A40F46D8();
      sub_1A40F48D8();
      v193 = v399;
      sub_1A5249744();
      sub_1A40F4E14(v192, sub_1A40F2080);
      sub_1A40FA2C4(v193, v406, sub_1A40F2038);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4690();
      sub_1A40F4AD8();
      sub_1A5249744();
      sub_1A3FA1280(&v418);
      sub_1A40F4E14(v193, sub_1A40F2038);
      v175 = sub_1A40F2110;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload > 18)
  {
    if (EnumCaseMultiPayload == 19)
    {
      v233 = *(v98 + 2);
      v403 = *(v98 + 1);
      v399 = v233;
      LOBYTE(v233) = v98[32];
      *&v413 = *(v98 + 3);
      v234 = v413;
      BYTE8(v413) = v233;
      v235 = sub_1A40F4148();
      v236 = sub_1A3C52114();
      v237 = sub_1A40F2598(&qword_1EB146E10, sub_1A40F3E84, sub_1A3D71010, MEMORY[0x1E69C2498]);
      v238 = sub_1A40F2390(&qword_1EB124D98, sub_1A40F3E84, MEMORY[0x1E69C2488]);
      v239 = sub_1A3D71010();
      v240 = sub_1A40F2BE0();
      v241 = sub_1A40F2320();
      v242 = v400;
      v400 = v234;
      sub_1A432C3B4(&v413, v242, &type metadata for LemonadeUtilitiesFeature.ShelfProvider, v235, v236, v237, v238, v239, &v418, v240, v241);
      *&v413 = v418;
      BYTE8(v413) = BYTE8(v418);
      *&v414 = *v419;
      sub_1A40F4018(0);
      v244 = v243;
      v245 = sub_1A40F2390(&unk_1EB146E20, sub_1A40F4018, &unk_1A5330810);
      v246 = v402;

      LODWORD(v236) = sub_1A3C5A374();
      v247 = sub_1A3C5A374();
      v115 = v343;
      sub_1A3EFC060(&v413, v246, v236, v247 & 1, v401 & 1, v244, v245, v343);
      sub_1A40FA2C4(v115, v373, sub_1A40F3FDC);
      swift_storeEnumTagMultiPayload();
      sub_1A40F2390(&qword_1EB132230, sub_1A40F3FDC, &unk_1A5306A30);
      sub_1A40F2390(&qword_1EB132238, sub_1A40F419C, &unk_1A5306A30);
      v248 = v374;
      sub_1A5249744();
      sub_1A40FA2C4(v248, v388, sub_1A40F3F94);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4C28();
      sub_1A40F4D04();
      v249 = v390;
      sub_1A5249744();
      sub_1A40F4E14(v248, sub_1A40F3F94);
      sub_1A40FA2C4(v249, v393, sub_1A40F3954);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4B9C(&qword_1EB132208, sub_1A40F3954, sub_1A40F4C28, sub_1A40F4D04);
      v250 = v394;
      sub_1A5249744();
      sub_1A40F4E14(v249, sub_1A40F3954);
      sub_1A40FA2C4(v250, v406, sub_1A40F3918);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4690();
      sub_1A40F4AD8();
      sub_1A5249744();

      sub_1A40F4E14(v250, sub_1A40F3918);
      v119 = sub_1A40F3FDC;
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload == 20)
    {
      v302 = *(v98 + 2);
      v403 = *(v98 + 1);
      v394 = v302;
      LOBYTE(v302) = v98[32];
      *&v413 = *(v98 + 3);
      v303 = v413;
      BYTE8(v413) = v302;
      v393 = sub_1A40F2544();
      v304 = sub_1A3C43144();
      v305 = sub_1A40F2598(&qword_1EB132048, sub_1A40EEA04, sub_1A40F2608, &unk_1A5368E68);
      v306 = sub_1A40F2390(&qword_1EB1256B0, sub_1A40EEA04, &unk_1A5368DF0);
      v307 = sub_1A40F2608();
      v308 = sub_1A40F265C();
      v309 = sub_1A40F26B0();
      v310 = v400;
      v400 = v303;
      sub_1A432C3B4(&v413, v310, &type metadata for LemonadeBookmarksFeature.ShelfProvider, v393, v304, v305, v306, v307, &v418, v308, v309);
      *&v413 = v418;
      BYTE8(v413) = BYTE8(v418);
      *&v414 = *v419;
      sub_1A40F2414(0);
      v312 = v311;
      v313 = sub_1A40F2390(&qword_1EB132058, sub_1A40F2414, &unk_1A5330810);
      v314 = v402;

      LODWORD(v303) = sub_1A3C5A374();
      v315 = sub_1A3C5A374();
      v115 = v324;
      sub_1A3EFC060(&v413, v314, v303, v315 & 1, v401 & 1, v312, v313, v324);
      sub_1A40FA2C4(v115, v86, sub_1A40F23D8);
      swift_storeEnumTagMultiPayload();
      sub_1A40F2390(&qword_1EB1321A0, sub_1A40F2110, &unk_1A5306A30);
      sub_1A40F2390(&qword_1EB1321A8, sub_1A40F23D8, &unk_1A5306A30);
      v316 = v348;
      sub_1A5249744();
      sub_1A40FA2C4(v316, v378, sub_1A40F20C8);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4720();
      sub_1A40F47FC();
      v317 = v379;
      sub_1A5249744();
      sub_1A40F4E14(v316, sub_1A40F20C8);
      sub_1A40FA2C4(v317, v397, sub_1A40F2080);
      swift_storeEnumTagMultiPayload();
      sub_1A40F46D8();
      sub_1A40F48D8();
      v318 = v399;
      sub_1A5249744();
      sub_1A40F4E14(v317, sub_1A40F2080);
      sub_1A40FA2C4(v318, v406, sub_1A40F2038);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4690();
      sub_1A40F4AD8();
      sub_1A5249744();

      sub_1A40F4E14(v318, sub_1A40F2038);
      v119 = sub_1A40F23D8;
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload != 21)
    {
      goto LABEL_31;
    }

    v95 = v344;
    sub_1A40FA32C(v98, v344, type metadata accessor for LemonadeSuggestionsFeature);
    v157 = v338;
    sub_1A40FA2C4(&v95[*(v335 + 24)], v338, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
    v158 = sub_1A40F2390(&qword_1EB132160, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider, &unk_1A531BE90);
    v159 = sub_1A40F2390(&qword_1EB129BA0, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider, &unk_1A531BE74);
    v160 = sub_1A40F2598(&qword_1EB132168, sub_1A40F43F4, sub_1A3D71010, MEMORY[0x1E69C22C8]);
    v161 = sub_1A40F2390(&qword_1EB146DE0, sub_1A40F43F4, MEMORY[0x1E69C22B8]);
    v162 = sub_1A3D71010();
    v163 = sub_1A40F2BE0();
    v164 = sub_1A40F2320();
    v165 = v400;
    v321 = v163;
    v166 = v340;
    sub_1A432C3B4(v157, v165, v339, v158, v159, v160, v161, v162, v340, v321, v164);
    v167 = sub_1A40F2390(&unk_1EB146DF0, sub_1A40F426C, &unk_1A5330810);
    v168 = v402;

    v169 = v341;
    LODWORD(v159) = sub_1A3C5A374();
    v170 = sub_1A3C5A374();
    v171 = v345;
    sub_1A3EFC060(v166, v168, v159, v170 & 1, v401 & 1, v169, v167, v345);
    sub_1A40FA2C4(v171, v373, sub_1A40F419C);
    swift_storeEnumTagMultiPayload();
    sub_1A40F2390(&qword_1EB132230, sub_1A40F3FDC, &unk_1A5306A30);
    sub_1A40F2390(&qword_1EB132238, sub_1A40F419C, &unk_1A5306A30);
    v172 = v374;
    sub_1A5249744();
    sub_1A40FA2C4(v172, v388, sub_1A40F3F94);
    swift_storeEnumTagMultiPayload();
    sub_1A40F4C28();
    sub_1A40F4D04();
    v173 = v390;
    sub_1A5249744();
    sub_1A40F4E14(v172, sub_1A40F3F94);
    sub_1A40FA2C4(v173, v393, sub_1A40F3954);
    swift_storeEnumTagMultiPayload();
    sub_1A40F4B9C(&qword_1EB132208, sub_1A40F3954, sub_1A40F4C28, sub_1A40F4D04);
    v174 = v394;
    sub_1A5249744();
    sub_1A40F4E14(v173, sub_1A40F3954);
    sub_1A40FA2C4(v174, v406, sub_1A40F3918);
    swift_storeEnumTagMultiPayload();
    sub_1A40F4690();
    sub_1A40F4AD8();
    sub_1A5249744();
    sub_1A40F4E14(v174, sub_1A40F3918);
    sub_1A40F4E14(v171, sub_1A40F419C);
    v175 = type metadata accessor for LemonadeSuggestionsFeature;
LABEL_23:
    v213 = v175;
    v214 = v95;
    return sub_1A40F4E14(v214, v213);
  }

  switch(EnumCaseMultiPayload)
  {
    case 7:
      v194 = *(v98 + 1);
      v418 = *v98;
      *v419 = v194;
      *&v419[16] = *(v98 + 4);
      sub_1A459C7CC();
      *&v409 = v195;
      BYTE8(v409) = v196;
      v197 = sub_1A40F3B50();
      v198 = sub_1A3C411C8();
      v199 = sub_1A40F2598(&qword_1EB124E90, sub_1A3F93438, sub_1A40F3C14, MEMORY[0x1E69C22C8]);
      v200 = sub_1A40F2390(&qword_1EB1291B8, sub_1A3F93438, MEMORY[0x1E69C22B8]);
      v201 = sub_1A40F3C14();
      v202 = sub_1A40F3BA4();
      v203 = sub_1A40F2320();
      sub_1A432C3B4(&v409, v400, &type metadata for LemonadeMemoriesFeature.ShelfProvider, v197, v198, v199, v200, v201, &v413, v202, v203);
      *&v409 = v413;
      BYTE8(v409) = BYTE8(v413);
      *&v410 = v414;
      sub_1A40F3A20(0);
      v205 = v204;
      v206 = sub_1A40F2390(&unk_1EB146E60, sub_1A40F3A20, &unk_1A5330810);
      v207 = v402;

      LODWORD(v199) = sub_1A3C5A374();
      v208 = sub_1A3C5A374();
      v209 = v337;
      sub_1A3EFC060(&v409, v207, v199, v208 & 1, v401 & 1, v205, v206, v337);
      sub_1A40FA2C4(v209, v368, sub_1A40F39E4);
      swift_storeEnumTagMultiPayload();
      sub_1A40F2390(&qword_1EB132218, sub_1A40F39E4, &unk_1A5306A30);
      sub_1A40F2390(&qword_1EB132220, sub_1A40F3CC4, &unk_1A5306A30);
      v210 = v369;
      sub_1A5249744();
      sub_1A40FA2C4(v210, v388, sub_1A40F399C);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4C28();
      sub_1A40F4D04();
      v211 = v390;
      sub_1A5249744();
      sub_1A40F4E14(v210, sub_1A40F399C);
      sub_1A40FA2C4(v211, v393, sub_1A40F3954);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4B9C(&qword_1EB132208, sub_1A40F3954, sub_1A40F4C28, sub_1A40F4D04);
      v212 = v394;
      sub_1A5249744();
      sub_1A40F4E14(v211, sub_1A40F3954);
      sub_1A40FA2C4(v212, v406, sub_1A40F3918);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4690();
      sub_1A40F4AD8();
      sub_1A5249744();
      v409 = v418;
      sub_1A3C651B8(&v409);

      v413 = *&v419[8];
      sub_1A40F4E14(&v413, sub_1A3FA1068);
      sub_1A40F4E14(v212, sub_1A40F3918);
      v213 = sub_1A40F39E4;
      v214 = v209;
      break;
    case 15:
      v269 = v98;
      v270 = v349;
      sub_1A40FA32C(v269, v349, type metadata accessor for LemonadeMacSyncedAlbumsFeature);
      sub_1A40FA2C4(v270 + *(v74 + 24), v67, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider);
      v403 = sub_1A40F2390(&unk_1EB146F00, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337070);
      v394 = sub_1A40F2390(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337054);
      v271 = sub_1A40F2598(&unk_1EB146F10, sub_1A3CA2A44, sub_1A3D6FBA4, MEMORY[0x1E69C1F78]);
      v272 = sub_1A40F2390(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
      v273 = sub_1A3D6FBA4();
      v274 = sub_1A3CA2B54();
      v275 = sub_1A40F2320();
      v276 = v400;
      sub_1A432C3B4(v67, v276, v65, v403, v394, v271, v272, v273, v71, v274, v275);
      v277 = sub_1A40F2390(&unk_1EB146F20, sub_1A40F2788, &unk_1A5330810);
      v278 = v402;

      LODWORD(v275) = sub_1A3C5A374();
      v279 = sub_1A3C5A374();
      v280 = v325;
      sub_1A3EFC060(v71, v278, v275, v279 & 1, v401 & 1, v69, v277, v325);
      sub_1A40FA2C4(v280, v353, sub_1A40F274C);
      swift_storeEnumTagMultiPayload();
      sub_1A40F2390(&qword_1EB1321B8, sub_1A40F274C, &unk_1A5306A30);
      sub_1A40F2390(&qword_1EB1321C0, sub_1A40F2910, &unk_1A5306A30);
      v281 = v356;
      sub_1A5249744();
      sub_1A40FA2C4(v281, v378, sub_1A40F2704);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4720();
      sub_1A40F47FC();
      v282 = v379;
      sub_1A5249744();
      sub_1A40F4E14(v281, sub_1A40F2704);
      sub_1A40FA2C4(v282, v397, sub_1A40F2080);
      swift_storeEnumTagMultiPayload();
      sub_1A40F46D8();
      sub_1A40F48D8();
      v283 = v399;
      sub_1A5249744();
      sub_1A40F4E14(v282, sub_1A40F2080);
      sub_1A40FA2C4(v283, v406, sub_1A40F2038);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4690();
      sub_1A40F4AD8();
      sub_1A5249744();
      sub_1A40F4E14(v283, sub_1A40F2038);
      sub_1A40F4E14(v280, sub_1A40F274C);
      v213 = type metadata accessor for LemonadeMacSyncedAlbumsFeature;
      v214 = v349;
      break;
    case 18:
      v120 = *(v98 + 2);
      v403 = *(v98 + 1);
      v399 = v120;
      LOBYTE(v120) = v98[32];
      *&v413 = *(v98 + 3);
      v121 = v413;
      BYTE8(v413) = v120;
      v122 = sub_1A40F3E30();
      v123 = sub_1A3C442E8();
      v124 = sub_1A40F2598(&qword_1EB146E10, sub_1A40F3E84, sub_1A3D71010, MEMORY[0x1E69C2498]);
      v125 = sub_1A40F2390(&qword_1EB124D98, sub_1A40F3E84, MEMORY[0x1E69C2488]);
      v126 = sub_1A3D71010();
      v127 = sub_1A40F2BE0();
      v128 = sub_1A40F2320();
      v129 = v400;
      v400 = v121;
      sub_1A432C3B4(&v413, v129, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, v122, v123, v124, v125, v126, &v418, v127, v128);
      *&v413 = v418;
      BYTE8(v413) = BYTE8(v418);
      *&v414 = *v419;
      sub_1A40F3D00(0);
      v131 = v130;
      v132 = sub_1A40F2390(&unk_1EB146E40, sub_1A40F3D00, &unk_1A5330810);
      v133 = v402;

      LODWORD(v123) = sub_1A3C5A374();
      v134 = sub_1A3C5A374();
      v115 = v342;
      sub_1A3EFC060(&v413, v133, v123, v134 & 1, v401 & 1, v131, v132, v342);
      sub_1A40FA2C4(v115, v368, sub_1A40F3CC4);
      swift_storeEnumTagMultiPayload();
      sub_1A40F2390(&qword_1EB132218, sub_1A40F39E4, &unk_1A5306A30);
      sub_1A40F2390(&qword_1EB132220, sub_1A40F3CC4, &unk_1A5306A30);
      v135 = v369;
      sub_1A5249744();
      sub_1A40FA2C4(v135, v388, sub_1A40F399C);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4C28();
      sub_1A40F4D04();
      v136 = v390;
      sub_1A5249744();
      sub_1A40F4E14(v135, sub_1A40F399C);
      sub_1A40FA2C4(v136, v393, sub_1A40F3954);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4B9C(&qword_1EB132208, sub_1A40F3954, sub_1A40F4C28, sub_1A40F4D04);
      v137 = v394;
      sub_1A5249744();
      sub_1A40F4E14(v136, sub_1A40F3954);
      sub_1A40FA2C4(v137, v406, sub_1A40F3918);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4690();
      sub_1A40F4AD8();
      sub_1A5249744();

      sub_1A40F4E14(v137, sub_1A40F3918);
      v119 = sub_1A40F3CC4;
      goto LABEL_29;
    default:
LABEL_31:
      swift_storeEnumTagMultiPayload();
      sub_1A40F4B9C(&qword_1EB132208, sub_1A40F3954, sub_1A40F4C28, sub_1A40F4D04);
      v320 = v394;
      sub_1A5249744();
      sub_1A40FA2C4(v320, v406, sub_1A40F3918);
      swift_storeEnumTagMultiPayload();
      sub_1A40F4690();
      sub_1A40F4AD8();
      sub_1A5249744();
      sub_1A40F4E14(v320, sub_1A40F3918);
      v213 = type metadata accessor for LemonadeFeatureLibrary.Shelf;
      v214 = v98;
      return sub_1A40F4E14(v214, v213);
  }

  return sub_1A40F4E14(v214, v213);
}

void sub_1A40F9D50(uint64_t a1, double a2)
{
  if (!qword_1EB132268)
  {
    sub_1A40F1C80(255, a2);
    sub_1A40F5120(v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132268);
    }
  }
}

uint64_t sub_1A40F9E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = KeyPath;
  *(a5 + 24) = 0;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 48) = v11;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = v12;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 112) = result;
  *(a5 + 120) = 0;
  *(a5 + 128) = 0;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1A40F9FA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A40F9FE8(uint64_t result, int a2, int a3)
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
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A40FA060()
{
  result = qword_1EB132270;
  if (!qword_1EB132270)
  {
    sub_1A40FA394(255, &qword_1EB132260, sub_1A40F9D50, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A40F1C80(255, v1);
    sub_1A40F5120(v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132270);
  }

  return result;
}

uint64_t sub_1A40FA148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v2 + 16);
  sub_1A3C5322C();
  if (v9 == 24)
  {
    v7 = v6 == 24;
  }

  else if (v6 == 24)
  {
    v7 = 0;
  }

  else
  {
    sub_1A3C4CDB0();
    v7 = sub_1A524C594();
  }

  *a2 = sub_1A5249574();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1A40FA218(0);
  return sub_1A40F51D0((v3 + 24), a1, v7 & 1);
}

void sub_1A40FA218(uint64_t a1)
{
  if (!qword_1EB132278)
  {
    sub_1A40F1F24(255, &qword_1EB131FE8, sub_1A40F1FA8, sub_1A40F1FF0, MEMORY[0x1E697F960]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132278);
    }
  }
}

uint64_t sub_1A40FA2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40FA32C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A40FA394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

char *PHSearchQueryResult.collectionResultsUUIDs.getter()
{
  v2 = v0;
  v3 = sub_1A5243994();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v117 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v106 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v106 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v106 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v106 - v15;
  result = [v2 searchResults];
  if (!result)
  {
    return result;
  }

  v18 = result;
  v114 = v16;
  sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
  v19 = sub_1A524CA34();

  v20 = [v2 searchQuery];
  v21 = [v20 searchOptions];

  if (!v21)
  {
LABEL_5:

    return 0;
  }

  if (([v21 searchQueryResultTypes] & 2) == 0)
  {

    goto LABEL_5;
  }

  v108 = v21;
  v22 = MEMORY[0x1E69E7CC0];
  v109 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
  v23 = *MEMORY[0x1E69C26E8];
  v110 = *(v4 + 104);
  v111 = v4 + 104;
  v110(v114, v23, v3);
  v121 = v22;
  if (v19 >> 62)
  {
LABEL_37:
    v24 = sub_1A524E2B4();
  }

  else
  {
    v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = v4;
  v113 = v3;
  v25 = MEMORY[0x1E69E7CC0];
  v3 = &selRef_trashedState;
  v107 = v2;
  v112 = v12;
  v120 = v24;
  if (v24)
  {
    v4 = 0;
    v12 = (v19 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1A59097F0](v4, v19);
        v27 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v4 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_37;
        }

        v26 = *(v19 + 8 * v4 + 32);
        v27 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          v29 = v121;
          v25 = MEMORY[0x1E69E7CC0];
          v12 = v112;
          v119 = v19;
          if ((v121 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_38;
        }
      }

      v2 = v26;
      if ([v2 v3[65]] == 2)
      {
      }

      else
      {
        v28 = [v2 v3[65]];

        if (v28 != 3)
        {

          goto LABEL_12;
        }
      }

      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v3 = &selRef_trashedState;
LABEL_12:
      ++v4;
      if (v27 == v120)
      {
        goto LABEL_22;
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
  v119 = v19;
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_25:
  if ((v29 & 0x4000000000000000) != 0)
  {
LABEL_38:
    v30 = sub_1A524E2B4();
    if (v30)
    {
      goto LABEL_27;
    }

LABEL_39:

    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v30 = *(v29 + 16);
  if (!v30)
  {
    goto LABEL_39;
  }

LABEL_27:
  v121 = v25;
  result = sub_1A3C57108(0, v30 & ~(v30 >> 63), 0);
  if (v30 < 0)
  {
    __break(1u);
    goto LABEL_105;
  }

  v31 = 0;
  v32 = v121;
  do
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1A59097F0](v31, v29);
    }

    else
    {
      v33 = *(v29 + 8 * v31 + 32);
    }

    v34 = v33;
    v35 = [v34 uuid];
    v36 = sub_1A524C674();
    v1 = v37;

    v121 = v32;
    v39 = *(v32 + 16);
    v38 = *(v32 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_1A3C57108((v38 > 1), v39 + 1, 1);
      v32 = v121;
    }

    ++v31;
    *(v32 + 16) = v39 + 1;
    v40 = v32 + 16 * v39;
    *(v40 + 32) = v36;
    *(v40 + 40) = v1;
  }

  while (v30 != v31);

  v19 = v119;
  v25 = MEMORY[0x1E69E7CC0];
  v12 = v112;
LABEL_40:
  v41 = v109;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v121 = v41;
  v43 = v114;
  sub_1A40FC574(v32, v114, isUniquelyReferenced_nonNull_native);
  v44 = v43;
  v45 = v113;
  v114 = *(v115 + 8);
  v115 += 8;
  (v114)(v44, v113);
  v109 = v121;
  v110(v12, *MEMORY[0x1E69C26F8], v45);
  v121 = v25;
  if (v120)
  {
    v46 = 0;
    v25 = v120;
    v47 = &selRef_trashedState;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x1A59097F0](v46, v19);
      }

      else
      {
        if (v46 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v48 = *(v19 + 8 * v46 + 32);
      }

      v49 = v48;
      v50 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if ([v48 v47[65]] == 4)
      {
        sub_1A524E514();
        sub_1A524E564();
        v25 = v120;
        sub_1A524E574();
        sub_1A524E524();
        v47 = &selRef_trashedState;
      }

      else
      {
      }

      ++v46;
    }

    while (v50 != v25);
    v46 = v121;
    v25 = MEMORY[0x1E69E7CC0];
    if ((v121 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_67;
  }

  v46 = v25;
  if (v25 < 0)
  {
    goto LABEL_67;
  }

LABEL_54:
  if ((v46 & 0x4000000000000000) != 0)
  {
LABEL_67:
    v51 = sub_1A524E2B4();
    v52 = v112;
    if (!v51)
    {
      goto LABEL_68;
    }

    goto LABEL_56;
  }

  v51 = *(v46 + 16);
  v52 = v112;
  if (!v51)
  {
LABEL_68:

    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_69;
  }

LABEL_56:
  v121 = v25;
  result = sub_1A3C57108(0, v51 & ~(v51 >> 63), 0);
  if (v51 < 0)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v53 = 0;
  v54 = v121;
  do
  {
    if ((v46 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x1A59097F0](v53, v46);
    }

    else
    {
      v55 = *(v46 + 8 * v53 + 32);
    }

    v56 = v55;
    v57 = [v56 uuid];
    v58 = sub_1A524C674();
    v1 = v59;

    v121 = v54;
    v61 = *(v54 + 16);
    v60 = *(v54 + 24);
    if (v61 >= v60 >> 1)
    {
      sub_1A3C57108((v60 > 1), v61 + 1, 1);
      v54 = v121;
    }

    ++v53;
    *(v54 + 16) = v61 + 1;
    v62 = v54 + 16 * v61;
    *(v62 + 32) = v58;
    *(v62 + 40) = v1;
  }

  while (v51 != v53);

  v19 = v119;
  v25 = MEMORY[0x1E69E7CC0];
  v52 = v112;
LABEL_69:
  v63 = v109;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v121 = v63;
  sub_1A40FC574(v54, v52, v64);
  v65 = v52;
  v66 = v113;
  (v114)(v65, v113);
  v67 = v121;
  v110(v118, *MEMORY[0x1E69C26E0], v66);
  v121 = v25;
  if (v120)
  {
    v68 = 0;
    v69 = v19 & 0xC000000000000001;
    v70 = v19 & 0xFFFFFFFFFFFFFF8;
    v25 = v120;
    v71 = &selRef_trashedState;
    while (1)
    {
      if (v69)
      {
        v73 = MEMORY[0x1A59097F0](v68, v19);
      }

      else
      {
        if (v68 >= *(v70 + 16))
        {
          goto LABEL_95;
        }

        v73 = *(v19 + 8 * v68 + 32);
      }

      v74 = v73;
      v75 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if ([v73 v71[65]] == 5)
      {
        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        sub_1A524E524();
        v71 = &selRef_trashedState;
      }

      else
      {
      }

      ++v68;
      v72 = v75 == v25;
      v19 = v119;
      if (v72)
      {
        v1 = v121;
        v25 = MEMORY[0x1E69E7CC0];
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v76 = sub_1A524E2B4();
    if (!v76)
    {
      goto LABEL_97;
    }

    goto LABEL_85;
  }

  v1 = v25;
LABEL_82:

  if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    goto LABEL_96;
  }

  v76 = *(v1 + 16);
  if (v76)
  {
LABEL_85:
    v120 = v67;
    v121 = v25;
    result = sub_1A3C57108(0, v76 & ~(v76 >> 63), 0);
    if ((v76 & 0x8000000000000000) == 0)
    {
      v77 = 0;
      v78 = v121;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v79 = MEMORY[0x1A59097F0](v77, v1);
        }

        else
        {
          v79 = *(v1 + 8 * v77 + 32);
        }

        v80 = v79;
        v81 = [v80 uuid];
        v82 = sub_1A524C674();
        v84 = v83;

        v121 = v78;
        v86 = *(v78 + 16);
        v85 = *(v78 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_1A3C57108((v85 > 1), v86 + 1, 1);
          v78 = v121;
        }

        ++v77;
        *(v78 + 16) = v86 + 1;
        v87 = v78 + 16 * v86;
        *(v87 + 32) = v82;
        *(v87 + 40) = v84;
      }

      while (v76 != v77);

      v67 = v120;
      goto LABEL_98;
    }

LABEL_106:
    __break(1u);
    return result;
  }

LABEL_97:

  v78 = MEMORY[0x1E69E7CC0];
LABEL_98:
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v121 = v67;
  v89 = v118;
  sub_1A40FC574(v78, v118, v88);
  v91 = v113;
  v90 = v114;
  (v114)(v89, v113);
  v92 = v121;
  v93 = [v107 queryMatchDetails];
  if (v93)
  {
    v94 = v93;
    v95 = v116;
    v96 = v110;
    v110(v116, *MEMORY[0x1E69C2700], v91);
    v97 = [v94 personUUIDS];
    v98 = sub_1A524CA34();

    v99 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v92;
    sub_1A40FC574(v98, v95, v99);
    v90(v95, v91);
    v100 = v121;
    v101 = [v94 ocrAssetUUIDs];
    v102 = sub_1A524CA34();

    v103 = v117;
    v96(v117, *MEMORY[0x1E69C2710], v91);
    type metadata accessor for PhotosSearchUtilities(0, v104);
    if (!static PhotosSearchUtilities.shouldShowTextFoundCollection(ocrAssetUUIDs:countOfQueryTerms:)(v102, [v94 countOfQueryTerms]))
    {

      v102 = MEMORY[0x1E69E7CC0];
    }

    v105 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v100;
    sub_1A40FC574(v102, v103, v105);
    (v114)(v103, v113);

    return v121;
  }

  else
  {

    return v92;
  }
}

char *PHSearchQueryResult.rankedCollectionResultsUUIDs.getter()
{
  v2 = v0;
  v3 = sub_1A5243994();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v115 = (&v105 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v105 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v105 - v14;
  result = [v2 rankedCollectionSearchResults];
  if (result)
  {
    v17 = result;
    v113 = v11;
    v114 = v15;
    sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
    v18 = sub_1A524CA34();

    v111 = v2;
    v19 = [v2 searchQuery];
    v20 = [v19 searchOptions];

    if (!v20)
    {
LABEL_5:

      return 0;
    }

    if (([v20 searchQueryResultTypes] & 2) == 0)
    {

      goto LABEL_5;
    }

    v21 = MEMORY[0x1E69E7CC0];
    v107 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
    v22 = *MEMORY[0x1E69C26E8];
    v108 = *(v4 + 104);
    v109 = v4 + 104;
    v108(v114, v22, v3);
    v118 = v21;
    if (v18 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
    {
      v112 = v4;
      v110 = v3;
      v24 = MEMORY[0x1E69E7CC0];
      v116 = i;
      if (!i)
      {
        break;
      }

      v25 = i;
      v1 = v20;
      v26 = v6;
      v4 = 0;
      v6 = (v18 & 0xC000000000000001);
      v20 = (v18 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v6)
        {
          v27 = MEMORY[0x1A59097F0](v4, v18);
        }

        else
        {
          if (v4 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v27 = *(v18 + 8 * v4 + 32);
        }

        v28 = v27;
        v29 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ([v27 type] == 2 || objc_msgSend(v28, sel_type) == 3)
        {
          v3 = &v118;
          sub_1A524E514();
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
          v25 = v116;
        }

        else
        {
        }

        ++v4;
        if (v29 == v25)
        {
          v24 = v118;
          v6 = v26;
          v20 = v1;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_21:
    v117 = v18;
    v105 = v6;
    v106 = v20;
    if ((v24 & 0x8000000000000000) != 0 || (v24 & 0x4000000000000000) != 0)
    {
      v30 = sub_1A524E2B4();
      if (v30)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30 = *(v24 + 16);
      if (v30)
      {
LABEL_24:
        v118 = MEMORY[0x1E69E7CC0];
        result = sub_1A3C57108(0, v30 & ~(v30 >> 63), 0);
        if (v30 < 0)
        {
          __break(1u);
          goto LABEL_101;
        }

        v31 = 0;
        v32 = v118;
        do
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x1A59097F0](v31, v24);
          }

          else
          {
            v33 = *(v24 + 8 * v31 + 32);
          }

          v34 = v33;
          v35 = [v34 uuid];
          v36 = sub_1A524C674();
          v38 = v37;

          v118 = v32;
          v1 = *(v32 + 16);
          v39 = *(v32 + 24);
          if (v1 >= v39 >> 1)
          {
            sub_1A3C57108((v39 > 1), v1 + 1, 1);
            v32 = v118;
          }

          ++v31;
          *(v32 + 16) = v1 + 1;
          v40 = v32 + 16 * v1;
          *(v40 + 32) = v36;
          *(v40 + 40) = v38;
          v18 = v117;
        }

        while (v30 != v31);

LABEL_38:
        v41 = v107;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v41;
        v43 = v114;
        sub_1A40FC574(v32, v114, isUniquelyReferenced_nonNull_native);
        v44 = *(v112 + 8);
        v45 = v43;
        v46 = v110;
        v112 += 8;
        v114 = v44;
        v44(v45, v110);
        v107 = v118;
        v108(v113, *MEMORY[0x1E69C26F8], v46);
        v47 = MEMORY[0x1E69E7CC0];
        v118 = MEMORY[0x1E69E7CC0];
        v48 = v116;
        if (v116)
        {
          v49 = 0;
          v47 = v18 & 0xC000000000000001;
          do
          {
            if (v47)
            {
              v50 = MEMORY[0x1A59097F0](v49, v18);
            }

            else
            {
              if (v49 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_64;
              }

              v50 = *(v18 + 8 * v49 + 32);
            }

            v51 = v50;
            v52 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            if ([v50 type] == 4)
            {
              sub_1A524E514();
              v24 = *(v118 + 16);
              sub_1A524E564();
              sub_1A524E574();
              sub_1A524E524();
              v48 = v116;
            }

            else
            {
            }

            ++v49;
          }

          while (v52 != v48);
          v24 = v118;
          v47 = MEMORY[0x1E69E7CC0];
          if ((v118 & 0x8000000000000000) == 0)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v24 = MEMORY[0x1E69E7CC0];
          if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
          {
LABEL_52:
            if ((v24 & 0x4000000000000000) == 0)
            {
              v53 = *(v24 + 16);
              if (!v53)
              {
LABEL_66:

                v55 = MEMORY[0x1E69E7CC0];
                goto LABEL_67;
              }

              goto LABEL_54;
            }
          }
        }

LABEL_65:
        v53 = sub_1A524E2B4();
        if (!v53)
        {
          goto LABEL_66;
        }

LABEL_54:
        v118 = v47;
        result = sub_1A3C57108(0, v53 & ~(v53 >> 63), 0);
        if ((v53 & 0x8000000000000000) == 0)
        {
          v54 = 0;
          v55 = v118;
          do
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v56 = MEMORY[0x1A59097F0](v54, v24);
            }

            else
            {
              v56 = *(v24 + 8 * v54 + 32);
            }

            v57 = v56;
            v58 = [v57 uuid];
            v59 = sub_1A524C674();
            v61 = v60;

            v118 = v55;
            v1 = *(v55 + 16);
            v62 = *(v55 + 24);
            if (v1 >= v62 >> 1)
            {
              sub_1A3C57108((v62 > 1), v1 + 1, 1);
              v55 = v118;
            }

            ++v54;
            *(v55 + 16) = v1 + 1;
            v63 = v55 + 16 * v1;
            *(v63 + 32) = v59;
            *(v63 + 40) = v61;
            v18 = v117;
          }

          while (v53 != v54);

          v47 = MEMORY[0x1E69E7CC0];
LABEL_67:
          v64 = v107;
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v118 = v64;
          v66 = v113;
          sub_1A40FC574(v55, v113, v65);
          v67 = v66;
          v68 = v110;
          v114(v67, v110);
          v69 = v118;
          v108(v115, *MEMORY[0x1E69C26E0], v68);
          v117 = v69;
          v118 = v47;
          v70 = v116;
          if (v116)
          {
            v71 = 0;
            v47 = v18 & 0xC000000000000001;
            while (1)
            {
              if (v47)
              {
                v72 = MEMORY[0x1A59097F0](v71, v18);
              }

              else
              {
                if (v71 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_93;
                }

                v72 = *(v18 + 8 * v71 + 32);
              }

              v73 = v72;
              v74 = v71 + 1;
              if (__OFADD__(v71, 1))
              {
                break;
              }

              if ([v72 type] == 5)
              {
                sub_1A524E514();
                sub_1A524E564();
                sub_1A524E574();
                sub_1A524E524();
                v70 = v116;
              }

              else
              {
              }

              ++v71;
              if (v74 == v70)
              {
                v1 = v118;
                v47 = MEMORY[0x1E69E7CC0];
                goto LABEL_80;
              }
            }

            __break(1u);
LABEL_93:
            __break(1u);
          }

          else
          {
            v1 = v47;
LABEL_80:

            if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
            {
              v75 = *(v1 + 16);
              if (!v75)
              {
LABEL_95:

                v77 = MEMORY[0x1E69E7CC0];
LABEL_96:
                v87 = v117;
                v88 = swift_isUniquelyReferenced_nonNull_native();
                v118 = v87;
                v89 = v115;
                sub_1A40FC574(v77, v115, v88);
                v90 = v110;
                v91 = v114;
                v114(v89, v110);
                v92 = v118;
                v93 = [v111 queryMatchDetails];
                if (v93)
                {
                  v94 = v93;
                  v95 = v105;
                  v96 = v108;
                  v108(v105, *MEMORY[0x1E69C2700], v90);
                  v97 = [v94 personUUIDS];
                  v98 = sub_1A524CA34();

                  v99 = swift_isUniquelyReferenced_nonNull_native();
                  v118 = v92;
                  sub_1A40FC574(v98, v95, v99);
                  v91(v95, v90);
                  v100 = v91;
                  v101 = v118;
                  v96(v95, *MEMORY[0x1E69C2710], v90);
                  v102 = [v94 ocrAssetUUIDs];
                  v103 = sub_1A524CA34();

                  v104 = swift_isUniquelyReferenced_nonNull_native();
                  v118 = v101;
                  sub_1A40FC574(v103, v95, v104);
                  v100(v95, v90);

                  return v118;
                }

                else
                {

                  return v92;
                }
              }

              goto LABEL_83;
            }
          }

          v75 = sub_1A524E2B4();
          if (!v75)
          {
            goto LABEL_95;
          }

LABEL_83:
          v118 = v47;
          result = sub_1A3C57108(0, v75 & ~(v75 >> 63), 0);
          if ((v75 & 0x8000000000000000) == 0)
          {
            v76 = 0;
            v77 = v118;
            do
            {
              if ((v1 & 0xC000000000000001) != 0)
              {
                v78 = MEMORY[0x1A59097F0](v76, v1);
              }

              else
              {
                v78 = *(v1 + 8 * v76 + 32);
              }

              v79 = v78;
              v80 = [v79 uuid];
              v81 = sub_1A524C674();
              v83 = v82;

              v118 = v77;
              v85 = *(v77 + 16);
              v84 = *(v77 + 24);
              if (v85 >= v84 >> 1)
              {
                sub_1A3C57108((v84 > 1), v85 + 1, 1);
                v77 = v118;
              }

              ++v76;
              *(v77 + 16) = v85 + 1;
              v86 = v77 + 16 * v85;
              *(v86 + 32) = v81;
              *(v86 + 40) = v83;
            }

            while (v75 != v76);

            goto LABEL_96;
          }

LABEL_102:
          __break(1u);
          return result;
        }

LABEL_101:
        __break(1u);
        goto LABEL_102;
      }
    }

    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_38;
  }

  return result;
}

void *PHSearchQueryResult.rankedCollectionResultScores.getter()
{
  v1 = [v0 rankedCollectionSearchResults];
  if (v1)
  {
    sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
    v2 = sub_1A524CA34();

    v1 = sub_1A3DAF0C0(MEMORY[0x1E69E7CC0]);
    if (v2 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
    {
      v4 = 0;
      v36 = v2 & 0xFFFFFFFFFFFFFF8;
      v37 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v37)
        {
          v9 = MEMORY[0x1A59097F0](v4, v2);
        }

        else
        {
          if (v4 >= *(v36 + 16))
          {
            goto LABEL_31;
          }

          v9 = *(v2 + 8 * v4 + 32);
        }

        v10 = v9;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v11 = [v9 uuid];
        v12 = sub_1A524C674();
        v14 = v13;

        v15 = [v10 collectionScore];
        if (!v15)
        {
          v27 = sub_1A3C5DCA4(v12, v14);
          v29 = v28;

          if (v29)
          {
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1A3DAD990();
            }

            sub_1A3D74B38(v27, v1, v30);
          }

          else
          {
          }

          goto LABEL_7;
        }

        v16 = v15;
        v17 = v2;
        v2 = i;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = sub_1A3C5DCA4(v12, v14);
        v21 = v1[2];
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          goto LABEL_30;
        }

        v25 = v20;
        if (v1[3] < v24)
        {
          sub_1A3DACE54(v24, isUniquelyReferenced_nonNull_native);
          v19 = sub_1A3C5DCA4(v12, v14);
          if ((v25 & 1) != (v26 & 1))
          {
            result = sub_1A524EB84();
            __break(1u);
            return result;
          }

LABEL_23:
          if ((v25 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_5;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_23;
        }

        v34 = v19;
        sub_1A3DAD990();
        v19 = v34;
        if ((v25 & 1) == 0)
        {
LABEL_24:
          v1[(v19 >> 6) + 8] |= 1 << v19;
          v31 = (v1[6] + 16 * v19);
          *v31 = v12;
          v31[1] = v14;
          *(v1[7] + 8 * v19) = v16;

          v32 = v1[2];
          v23 = __OFADD__(v32, 1);
          v33 = v32 + 1;
          if (v23)
          {
            goto LABEL_32;
          }

          v1[2] = v33;
          goto LABEL_6;
        }

LABEL_5:
        v5 = v19;

        v6 = v1[7];
        v7 = *(v6 + 8 * v5);
        *(v6 + 8 * v5) = v16;

LABEL_6:
        i = v2;
        v2 = v17;
        v8 = v4 + 1;
LABEL_7:
        ++v4;
        if (v8 == i)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:
  }

  return v1;
}

id PHSearchQueryResult.matchInfo.getter()
{
  v1 = [v0 queryMatchDetails];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 queryText];
  v4 = [v3 string];

  sub_1A524C674();
  v5 = [v2 sceneIdentifiers];
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v6 = sub_1A524CA34();

  sub_1A40B1618(v6, v7);

  v8 = [v2 personUUIDS];
  v9 = sub_1A524CA34();

  sub_1A3C4467C(v9);

  v10 = [v2 audioIdentifiers];
  v11 = sub_1A524CA34();

  sub_1A40B1618(v11, v12);

  v13 = [v2 humanActionIdentifiers];
  v14 = sub_1A524CA34();

  sub_1A40B1618(v14, v15);

  v16 = [v2 ocrQueryTokens];
  if (!v16)
  {
    sub_1A524CA34();
    v17 = sub_1A524CA14();

    v16 = v17;
  }

  v29 = v16;
  v18 = [v2 ocrAssetUUIDs];
  if (!v18)
  {
    sub_1A524CA34();
    v18 = sub_1A524CA14();
  }

  v19 = [v2 queryEmbedding];
  v28 = [v2 countOfQueryTerms];
  v27 = objc_allocWithZone(PXSearchQueryMatchInfo);
  v20 = sub_1A524C634();

  sub_1A3D92850();
  v21 = sub_1A524CF34();

  v22 = sub_1A524CF34();

  v23 = sub_1A524CF34();

  v24 = sub_1A524CF34();

  v25 = [v27 initWithLocalizedQueryString:v20 matchedSceneIdentifiers:v21 personLocalIdentifiers:v22 audioIdentifiers:v23 humanActionIdentifiers:v24 ocrTexts:v29 ocrAssetUUIDS:v18 queryEmbedding:v19 countOfQueryTerms:v28];

  return v25;
}

void sub_1A40FC1BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1A5243994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A40FCA64(0);
  v40 = v4;
  v10 = sub_1A524E774();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v6 + 72);
      v25 = v24 + v43 * v23;
      if ((v40 & 1) == 0)
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*v41)(v44, v25, v5);
      v42 = *(*(v9 + 56) + 8 * v23);
      sub_1A3C2E1EC(&qword_1EB124D30, MEMORY[0x1E69C2720]);
      v26 = sub_1A524C4A4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1A40FC574(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A5243994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1A3DAC880(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1A40FC7F8();
      goto LABEL_7;
    }

    sub_1A40FC1BC(v17, a3 & 1);
    v21 = sub_1A3DAC880(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1A40FC740(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1A524EB84();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1A40FC740(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1A5243994();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_1A40FC7F8()
{
  v1 = v0;
  v31 = sub_1A5243994();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40FCA64(0);
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      v15 = __clz(__rbit64(v13));
      v34 = (v13 - 1) & v13;
      goto LABEL_17;
    }

    v16 = 0;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_20;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v1 = v5;
  }
}

void sub_1A40FCA64(uint64_t a1)
{
  if (!qword_1EB12C290)
  {
    sub_1A5243994();
    sub_1A3C2DE64(255, &qword_1EB126ED0, MEMORY[0x1E69E62F8]);
    sub_1A3C2E1EC(&qword_1EB124D30, MEMORY[0x1E69C2720]);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C290);
    }
  }
}

void sub_1A40FCB18(void *a1)
{
  v1 = [a1 assetDirectory];
  sub_1A5240DE4();
}

uint64_t sub_1A40FCB74(void *a1, void *a2)
{
  v3 = [a1 identifier];
  v4 = sub_1A524C674();
  v6 = v5;

  v7 = [a2 identifier];
  v8 = sub_1A524C674();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A524EAB4();
  }

  return v12 & 1;
}

uint64_t sub_1A40FCC38(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identifier];
  v4 = sub_1A524C674();
  v6 = v5;

  v7 = [v2 identifier];
  v8 = sub_1A524C674();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A524EAB4();
  }

  return v12 & 1;
}

uint64_t sub_1A40FCD00()
{
  v1 = *v0;
  sub_1A524EC94();
  v2 = [v1 identifier];
  sub_1A524C674();

  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A40FCD88(uint64_t a1)
{
  v2 = [*v1 identifier];
  sub_1A524C674();

  sub_1A524C794();

  return result;
}

uint64_t sub_1A40FCE00(uint64_t a1)
{
  v2 = *v1;
  sub_1A524EC94();
  v3 = [v2 identifier];
  sub_1A524C674();

  sub_1A524C794();

  return sub_1A524ECE4();
}

BOOL sub_1A40FCE84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = [*a1 identifier];
  v6 = sub_1A524C674();
  v8 = v7;

  v9 = [v3 identifier];
  v10 = sub_1A524C674();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {

    return v2 == v4;
  }

  v14 = sub_1A524EAB4();

  result = 0;
  if (v14)
  {
    return v2 == v4;
  }

  return result;
}

double sub_1A40FCF70(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v24 = sub_1A524BEE4();
  v27 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41036F0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = sub_1A524BEF4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  (*(v12 + 104))(v14, *MEMORY[0x1E69E7F88], v11);
  v21 = sub_1A524D4C4();
  (*(v12 + 8))(v14, v11);
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v23;
  (*(v9 + 32))(v16 + v15, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_1A4103768;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_82_2;
  v17 = _Block_copy(aBlock);

  sub_1A524BF14();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1A3C5DE40(&qword_1EB12B1E0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C5D624(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v18 = v24;
  sub_1A524E224();
  v19 = v21;
  MEMORY[0x1A5908800](0, v6, v3, v17);
  _Block_release(v17);

  (*(v27 + 8))(v3, v18);
  (*(v25 + 8))(v6, v26);

  return result;
}

uint64_t sub_1A40FD444@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result & 1;
  return result;
}

void sub_1A40FD4FC(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12PhotosUICore24LemonadeWallpaperManager__isFeatureAvailable;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x100))(v5);
  }
}

uint64_t (*sub_1A40FD610(uint64_t *a1))()
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
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF8))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeWallpaperManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5DE40(&unk_1EB125800, 255, type metadata accessor for LemonadeWallpaperManager, &unk_1A531A8BC);
  sub_1A52415F4();

  v4[7] = sub_1A40FD3E4(v4);
  return sub_1A40FD760;
}

void sub_1A40FD760(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A40FD7F4()
{
  result = sub_1A524C634();
  qword_1EB168590 = result;
  return result;
}

uint64_t sub_1A40FD878(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1A5240E64();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[13] = v4;
  *v4 = v2;
  v4[1] = sub_1A40FD990;

  return sub_1A40FEA6C();
}

uint64_t sub_1A40FD990(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A40FDB20, 0, 0);
  }
}

void sub_1A40FDB20()
{
  v0[6] = v0[14];
  v1 = v0[15];
  v2 = v0[9];
  sub_1A3C5CFEC(0, &qword_1EB126E28, &qword_1EB126960, &protocolRef_PXPRSPosterDescriptor, MEMORY[0x1E69E62F8]);
  v4 = v3;
  v5 = sub_1A41028D8();
  sub_1A48BD7CC(sub_1A40FE2F4, 0, v4, MEMORY[0x1E69E6158], v5, MEMORY[0x1E69E6168]);
  v7 = v6;
  v8 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(v1, v6);
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v11 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    v20 = xmmword_1A52F8E10;
    while ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1A59097F0](v11, v9);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_16;
      }

LABEL_12:
      v14 = [v12 descriptorIdentifier];
      v15 = sub_1A524C674();
      v17 = v16;

      v0[2] = v15;
      v0[3] = v17;
      v0[4] = 46;
      v0[5] = 0xE100000000000000;
      sub_1A3D5F9DC();
      v18 = sub_1A524DF84();

      if (*(v18 + 16))
      {
        if (*(v7 + 16))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v11;
      if (v13 == i)
      {
        goto LABEL_20;
      }
    }

    if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v12 = *(v9 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    __break(1u);
LABEL_18:
    ;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_20:

  swift_unknownObjectRelease();

  v19 = v0[1];

  v19(v21);
}

void sub_1A40FE2F4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_1A524C674();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1A40FE35C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A40FE380, 0, 0);
}

uint64_t sub_1A40FE380()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC12PhotosUICore24LemonadeWallpaperManager__posterService);
  v0[7] = v1;
  swift_unknownObjectRetain();

  v2 = swift_task_alloc();
  v0[8] = v2;
  v3 = sub_1A3C5D0E8(0, &unk_1EB126C90, &protocolRef_PXPRSService);
  *v2 = v0;
  v2[1] = sub_1A40FE49C;

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0x6553726574736F70, 0xED00006563697672, sub_1A410295C, v1, v3);
}

uint64_t sub_1A40FE49C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A40FE598, 0, 0);
}

uint64_t sub_1A40FE598()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[2];
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v2;
  v4[5] = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  sub_1A4102970(0);
  *v5 = v0;
  v5[1] = sub_1A40FE6B0;

  return MEMORY[0x1EEE6DE38](v0 + 3, 0, 0, 0xD00000000000001CLL, 0x80000001A53C7790, sub_1A4102964, v4, v6);
}

uint64_t sub_1A40FE6B0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1A40FE840;
  }

  else
  {

    v2 = sub_1A40FE7CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A40FE7CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A40FE840()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A40FE8B8(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  sub_1A41035BC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1A410363C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D54680;
  aBlock[3] = &block_descriptor_76_1;
  v15 = _Block_copy(aBlock);

  PXFetchSnapshotImageForDescriptor(a2, a3, a4, v15);
  _Block_release(v15);
}

uint64_t sub_1A40FEA6C()
{
  *(v1 + 32) = v0;
  sub_1A3C5D624(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40FEB2C, 0, 0);
}

uint64_t sub_1A40FEB2C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v0[6] = v3;
  [v3 wallpaperLoadingArtificialDelay];
  v5 = v4;
  [v3 wallpaperLoadingTimeout];
  v7 = v6;
  v8 = sub_1A524D224();
  v9 = *sub_1A3CAA3FC();
  sub_1A3E072BC(0);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E63B0];
  *(v10 + 16) = xmmword_1A52F8E10;
  v12 = MEMORY[0x1E69E6438];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = v7;
  v13 = v9;
  sub_1A5246DF4(v8, &dword_1A3C1C000, v13, "LemonadeWallpaperManager fetching descriptors, timeout is %.3f seconds.", v21);

  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v1, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = v2;
  v15[6] = v7;
  v16 = v2;
  v17 = sub_1A41004BC(0, 0, v1, &unk_1A531AAD8, v15);
  v0[7] = v17;
  v18 = swift_task_alloc();
  v0[8] = v18;
  sub_1A41039F0(0);
  *v18 = v0;
  v18[1] = sub_1A40FEDA4;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1A531AAE8, v17, sub_1A410398C, v17, 0, 0, v19);
}

uint64_t sub_1A40FEDA4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1A40FEF40;
  }

  else
  {
    v2 = sub_1A40FEEB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A40FEEB8()
{
  v1 = v0[6];

  v2 = v0[2];
  v3 = v0[3];

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1A40FEF40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A40FEFB8(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 1576) = a3;
  *(v6 + 1528) = a6;
  *(v6 + 1480) = a2;
  *(v6 + 1432) = a1;
  v7 = sub_1A5241144();
  *(v6 + 1624) = v7;
  *(v6 + 1672) = *(v7 - 8);
  *(v6 + 1680) = swift_task_alloc();
  *(v6 + 1688) = swift_task_alloc();
  v8 = sub_1A524E5E4();
  *(v6 + 1696) = v8;
  *(v6 + 1704) = *(v8 - 8);
  *(v6 + 1712) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40FF0EC, 0, 0);
}

uint64_t sub_1A40FF0EC(uint64_t a1)
{
  v2 = *(v1 + 1480);
  if (v2 <= 0.0)
  {
    *(v1 + 1736) = 0;
    v14 = *(v1 + 1576);
    v15 = *(v1 + 1528);
    v16 = sub_1A524D224();
    v17 = sub_1A3CAA3FC();
    *(v1 + 1744) = v17;
    v18 = *v17;
    sub_1A5246DF4(v16, &dword_1A3C1C000, v18, "LemonadeWallpaperManager starting fetch from PRSService.", 56, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5241104();
    v19 = swift_allocObject();
    *(v1 + 1752) = v19;
    *(v19 + 16) = v15;
    *(v19 + 24) = v14;
    v20 = v15;
    sub_1A3C5CFEC(0, &qword_1EB126E28, &qword_1EB126960, &protocolRef_PXPRSPosterDescriptor, MEMORY[0x1E69E62F8]);
    swift_asyncLet_begin();
    v21 = swift_allocObject();
    *(v1 + 1760) = v21;
    *(v21 + 16) = v20;
    *(v21 + 24) = v14;
    v22 = v20;
    sub_1A3C5CFEC(0, &unk_1EB1206E8, &qword_1EB126810, &protocolRef_PXATXFaceGalleryConfiguration, MEMORY[0x1E69E6720]);
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEB8](v1 + 16, v1 + 1336, sub_1A40FF85C, v1 + 1296);
  }

  else
  {
    v3 = sub_1A524D224();
    v4 = *sub_1A3CAA3FC();
    sub_1A3E072BC(0);
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E63B0];
    *(v5 + 16) = xmmword_1A52F8E10;
    v7 = MEMORY[0x1E69E6438];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v2;
    v8 = v4;
    sub_1A5246DF4(v3, &dword_1A3C1C000, v8, "LemonadeWallpaperManager adding artificial delay of %.3f seconds.", v23);

    v9 = sub_1A524EE14();
    v11 = v10;
    sub_1A524EBB4();
    v12 = swift_task_alloc();
    *(v1 + 1720) = v12;
    *v12 = v1;
    v12[1] = sub_1A40FF41C;

    return sub_1A3DCFAB0(v9, v11, 0, 0, 1);
  }
}

uint64_t sub_1A40FF41C()
{
  v2 = *v1;
  *(*v1 + 1728) = v0;

  (*(v2[213] + 8))(v2[214], v2[212]);
  if (v0)
  {
    v3 = sub_1A40FF7D8;
  }

  else
  {
    v3 = sub_1A40FF584;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A40FF584()
{
  v1 = v0[216];
  sub_1A524CDD4();
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[217] = 0;
    v4 = v0[197];
    v5 = v0[191];
    v6 = sub_1A524D224();
    v7 = sub_1A3CAA3FC();
    v0[218] = v7;
    v8 = *v7;
    sub_1A5246DF4(v6, &dword_1A3C1C000, v8, "LemonadeWallpaperManager starting fetch from PRSService.", 56, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5241104();
    v9 = swift_allocObject();
    v0[219] = v9;
    *(v9 + 16) = v5;
    *(v9 + 24) = v4;
    v10 = v5;
    sub_1A3C5CFEC(0, &qword_1EB126E28, &qword_1EB126960, &protocolRef_PXPRSPosterDescriptor, MEMORY[0x1E69E62F8]);
    swift_asyncLet_begin();
    v11 = swift_allocObject();
    v0[220] = v11;
    *(v11 + 16) = v10;
    *(v11 + 24) = v4;
    v12 = v10;
    sub_1A3C5CFEC(0, &unk_1EB1206E8, &qword_1EB126810, &protocolRef_PXATXFaceGalleryConfiguration, MEMORY[0x1E69E6720]);
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 167, sub_1A40FF85C, v0 + 162);
  }
}

uint64_t sub_1A40FF7D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A40FF8E8()
{
  v1 = v0[218];
  v2 = v0[217];
  v3 = v0[173];
  swift_unknownObjectRetain();
  sub_1A5241104();
  sub_1A5241054();
  v5 = v4;
  v6 = sub_1A524D224();
  v7 = *v1;
  sub_1A3E072BC(0);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E63B0];
  *(v8 + 16) = xmmword_1A52F8E10;
  v10 = MEMORY[0x1E69E6438];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v5;
  v11 = v7;
  sub_1A5246DF4(v6, &dword_1A3C1C000, v11, "LemonadeWallpaperManager finished fetch from PRSService in %.3f seconds.", v36);

  sub_1A524CDD4();
  v0[222] = v2;
  if (v2)
  {
    v12 = v0[210];
    v13 = v0[209];
    v14 = v0[203];
    v15 = *(v13 + 8);
    v0[228] = v15;
    v0[229] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v14);
    swift_unknownObjectRelease();

    v17 = sub_1A40FFDE0;
    v18 = v0 + 82;
    v19 = v0 + 173;
    v20 = v0 + 174;
    goto LABEL_9;
  }

  if (v3)
  {
    v21 = v0[221];
    if (v21 >> 62)
    {
      if (sub_1A524E2B4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v22 = v0[221];
      v23 = v0[210];
      v24 = v0[209];
      v25 = v0[203];
      v26 = v0[179];
      v27 = *(v24 + 8);
      v0[223] = v27;
      v0[224] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v27(v23, v25);
      *v26 = v22;
      v26[1] = v3;
      v17 = sub_1A40FFBC4;
      v18 = v0 + 82;
      v19 = v0 + 173;
      v20 = v0 + 198;
      goto LABEL_9;
    }
  }

  v28 = v0[218];
  v29 = v0[210];
  v30 = v0[209];
  v31 = v0[203];

  v32 = sub_1A524D254();
  v33 = *v28;
  sub_1A5246DF4(v32, &dword_1A3C1C000, v33, "LemonadeWallpaperManager timeout fired.", 39, 2, MEMORY[0x1E69E7CC0]);

  sub_1A4103BFC();
  v0[225] = swift_allocError();
  swift_willThrow();
  swift_unknownObjectRelease();
  v34 = *(v30 + 8);
  v0[226] = v34;
  v0[227] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v29, v31);
  v17 = sub_1A40FFCD8;
  v18 = v0 + 82;
  v19 = v0 + 173;
  v20 = v0 + 186;
LABEL_9:

  return MEMORY[0x1EEE6DEB0](v18, v19, v17, v20, v16);
}

uint64_t sub_1A40FFC1C()
{
  (*(v0 + 1784))(*(v0 + 1688), *(v0 + 1624));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A40FFD30()
{
  (*(v0 + 1808))(*(v0 + 1688), *(v0 + 1624));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A40FFE38()
{
  (*(v0 + 1824))(*(v0 + 1688), *(v0 + 1624));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A40FFEE8(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A40FFF0C, 0, 0);
}

uint64_t sub_1A40FFF0C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC12PhotosUICore24LemonadeWallpaperManager__posterService);
  v0[6] = v1;

  v2 = swift_task_alloc();
  v0[7] = v2;
  v3 = sub_1A3C5D0E8(0, &unk_1EB126C90, &protocolRef_PXPRSService);
  *v2 = v0;
  v2[1] = sub_1A4100020;

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0x6553726574736F70, 0xED00006563697672, sub_1A4103C7C, v1, v3);
}

uint64_t sub_1A4100020()
{

  return MEMORY[0x1EEE6DFA0](sub_1A410011C, 0, 0);
}

uint64_t sub_1A410011C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = fetchPosterDescriptorsWithTimeout(*(v0 + 16), 0, v1);
  swift_unknownObjectRelease();
  sub_1A3C5D0E8(0, &qword_1EB126960, &protocolRef_PXPRSPosterDescriptor);
  v4 = sub_1A524CA34();

  *v2 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A41001E8(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A410020C, 0, 0);
}

uint64_t sub_1A410020C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC12PhotosUICore24LemonadeWallpaperManager__posterService);
  v0[6] = v1;

  v2 = swift_task_alloc();
  v0[7] = v2;
  v3 = sub_1A3C5D0E8(0, &unk_1EB126C90, &protocolRef_PXPRSService);
  *v2 = v0;
  v2[1] = sub_1A4100320;

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0x6553726574736F70, 0xED00006563697672, sub_1A4103C7C, v1, v3);
}

uint64_t sub_1A4100320()
{

  return MEMORY[0x1EEE6DFA0](sub_1A410041C, 0, 0);
}

uint64_t sub_1A410041C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = fetchGalleryConfigurationWithTimeout(*(v0 + 16), 0, v1);
  swift_unknownObjectRelease();
  *v2 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A41004BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A3C5D624(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A3D96FAC(a3, v22 - v9);
  v11 = sub_1A524CCB4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1A3D97040(v10);
  }

  else
  {
    sub_1A524CCA4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A524CBC4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1A524C744() + 32;
      sub_1A41039F0(0);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1A3D97040(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A3D97040(a3);
  sub_1A41039F0(0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A4100758(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  sub_1A41039F0(0);
  v6 = v5;
  v7 = sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
  *v4 = v2;
  v4[1] = sub_1A4100838;
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v2 + 16, a2, v6, v7, v8);
}

uint64_t sub_1A4100838()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1A4100970;
  }

  else
  {
    v2 = sub_1A410094C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4100988(void *a1, uint64_t a2)
{
  v2 = [a1 sections];
  sub_1A3C5D0E8(0, &qword_1EB1268F0, &protocolRef_PXATXFaceGallerySection);
  v3 = sub_1A524CA34();

  v5 = sub_1A4100E50(v3, v4);

  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v7 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1A59097F0](v7, v5);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_14;
      }

LABEL_11:
      v10 = [v8 descriptorIdentifier];
      sub_1A524C674();

      sub_1A3D5F9DC();
      v11 = sub_1A524DF84();

      if (*(v11 + 16))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      swift_unknownObjectRelease();
      if (v7 == i)
      {

        v12 = v14;
        goto LABEL_18;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v8 = *(v5 + 32 + 8 * v7);
    swift_unknownObjectRetain();
    v9 = __OFADD__(v7++, 1);
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v12;
}

unint64_t sub_1A4100E50(unint64_t a1, __n128 a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_77;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = 0;
    v46 = v2 & 0xFFFFFFFFFFFFFF8;
    v47 = v2 & 0xC000000000000001;
    v45 = v2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v49 = v2;
    v44 = v3;
    while (1)
    {
      if (v47)
      {
        v8 = MEMORY[0x1A59097F0](v5, v2, a2);
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v5 >= *(v46 + 16))
        {
          goto LABEL_72;
        }

        v8 = *(v45 + 8 * v5);
        swift_unknownObjectRetain();
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_71;
        }
      }

      v50 = v5;
      v51 = v6;
      v10 = [v8 items];
      sub_1A3C5D0E8(0, &unk_1EB1269F0, &protocolRef_PXATXFaceGalleryItem);
      v11 = sub_1A524CA34();

      v53[0] = v4;
      if (v11 >> 62)
      {
        break;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_12;
      }

LABEL_32:

      if (v48)
      {
        v6 = v51;

        swift_unknownObjectRelease();
        return v6;
      }

      swift_unknownObjectRelease();
      v26 = v4 >> 62;
      v6 = v51;
      if (v4 >> 62)
      {
        v27 = sub_1A524E2B4();
      }

      else
      {
        v27 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = v51 >> 62;
      if (v51 >> 62)
      {
        v42 = sub_1A524E2B4();
        v30 = v42 + v27;
        if (__OFADD__(v42, v27))
        {
LABEL_65:
          __break(1u);
          return v4;
        }
      }

      else
      {
        v29 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v30 = v29 + v27;
        if (__OFADD__(v29, v27))
        {
          goto LABEL_65;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v28)
        {
          v31 = v51 & 0xFFFFFFFFFFFFFF8;
          if (v30 <= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

LABEL_42:
        sub_1A524E2B4();
        goto LABEL_43;
      }

      if (v28)
      {
        goto LABEL_42;
      }

LABEL_43:
      v6 = sub_1A524E494();
      v31 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_44:
      v32 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v26)
      {
        v34 = sub_1A524E2B4();
        if (v34)
        {
LABEL_48:
          if (((v33 >> 1) - v32) < v27)
          {
            goto LABEL_74;
          }

          v52 = v6;
          v35 = v31 + 8 * v32 + 32;
          v54 = v27;
          if (v26)
          {
            if (v34 < 1)
            {
              goto LABEL_76;
            }

            sub_1A3C5CFEC(0, &qword_1EB132518, &unk_1EB1269F0, &protocolRef_PXATXFaceGalleryItem, MEMORY[0x1E69E62F8]);
            sub_1A4103538();
            for (i = 0; i != v34; ++i)
            {
              v37 = sub_1A4102850(v53, i, v4);
              v39 = *v38;
              swift_unknownObjectRetain();
              (v37)(v53, 0);
              *(v35 + 8 * i) = v39;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v7 = v44;
          v4 = MEMORY[0x1E69E7CC0];
          v5 = v50;
          v6 = v52;
          v2 = v49;
          if (v54 >= 1)
          {
            v40 = *(v31 + 16);
            v9 = __OFADD__(v40, v54);
            v41 = v40 + v54;
            if (v9)
            {
              goto LABEL_75;
            }

            *(v31 + 16) = v41;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v34 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
          goto LABEL_48;
        }
      }

      v7 = v44;
      v4 = MEMORY[0x1E69E7CC0];
      if (v27 > 0)
      {
        goto LABEL_73;
      }

LABEL_6:
      if (v5 == v7)
      {
        return v6;
      }
    }

    v12 = sub_1A524E2B4();
    if (!v12)
    {
      goto LABEL_32;
    }

LABEL_12:
    v13 = v11 & 0xC000000000000001;
    v14 = v11 & 0xFFFFFFFFFFFFFF8;
    v2 = 4;
    v54 = v12;
    while (1)
    {
      v15 = v2 - 4;
      if (v13)
      {
        v16 = MEMORY[0x1A59097F0](v2 - 4, v11);
        v17 = v2 - 3;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v15 >= *(v14 + 16))
        {
          goto LABEL_70;
        }

        v16 = *(v11 + 8 * v2);
        swift_unknownObjectRetain();
        v17 = v2 - 3;
        if (__OFADD__(v15, 1))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          v3 = sub_1A524E2B4();
          goto LABEL_3;
        }
      }

      if (([v16 isBlankTemplate] & 1) == 0)
      {
        break;
      }

      swift_unknownObjectRelease();
LABEL_14:
      ++v2;
      if (v17 == v12)
      {
        v4 = v53[0];
        v2 = v49;
        goto LABEL_32;
      }
    }

    v18 = v11;
    v19 = [v16 extensionBundleIdentifier];
    v20 = sub_1A524C674();
    v22 = v21;

    if (v20 == sub_1A524C674() && v22 == v23)
    {
    }

    else
    {
      v25 = sub_1A524EAB4();

      if ((v25 & 1) == 0)
      {
        swift_unknownObjectRelease();
LABEL_27:
        v11 = v18;
        v12 = v54;
        goto LABEL_14;
      }
    }

    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    goto LABEL_27;
  }

  return v4;
}

id sub_1A410148C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeWallpaperManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A410161C(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A410167C()
{
  v1 = [*v0 identifier];
  v2 = sub_1A524C674();

  return v2;
}

void sub_1A41016D4()
{
  sub_1A3FD505C();

    ;
  }
}

void sub_1A4101710()
{
  sub_1A3FD505C();

    ;
  }
}

void sub_1A4101750(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_1A524C674();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void sub_1A41017A8()
{
  sub_1A3C5D624(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A5245EC4();
}

uint64_t sub_1A4101F70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1A4102468;
  }

  else
  {
    v4 = sub_1A4102084;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1A41022E8()
{
  v1 = *(v0 + 24);

  *(v0 + 16) = v1;
  sub_1A4103114(0, &unk_1EB128D68, off_1E7721068);
  sub_1A4102D64(&unk_1EB128D78, &unk_1EB128D68, off_1E7721068, off_1E7721078);

  sub_1A5245F44();
}

uint64_t sub_1A41023FC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A4102468(__n128 a1)
{
  v2 = v1[9];
  v3 = sub_1A524D254();
  v4 = *sub_1A3CAA3FC();
  v5 = MEMORY[0x1E69E7CC0];
  sub_1A5246DF4(v3, &dword_1A3C1C000, v4, "Wallpaper failed to fetch descriptors from LemonadeWallpaperManager.", 68, 2, MEMORY[0x1E69E7CC0]);

  v6 = *(v5 + 16);
  if (v6)
  {
    sub_1A524E554();
    v7 = v5 + 32;
    do
    {
      v7 += 8;
      swift_unknownObjectRetain();
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      --v6;
    }

    while (v6);
  }

  (*(v1[5] + 104))(v1[6], *off_1E77210C0, v1[4]);
  sub_1A4103114(0, &qword_1EB128EB0, off_1E7720F98);
  swift_allocObject();
  sub_1A52458A4();
}

uint64_t sub_1A41026AC()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1A4102718(uint64_t a1, uint64_t a2)
{
  sub_1A4103114(0, &unk_1EB128D68, off_1E7721068);
  sub_1A4102D64(&qword_1EB128D88, &unk_1EB128D68, off_1E7721068, off_1E7721070);

  sub_1A5245C54();
}

void sub_1A41027F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore24LemonadeWallpaperManager__isFeatureAvailable;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t (*sub_1A4102850(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1A41028D0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A41028D8()
{
  result = qword_1EB126E18;
  if (!qword_1EB126E18)
  {
    sub_1A3C5CFEC(255, &qword_1EB126E28, &qword_1EB126960, &protocolRef_PXPRSPosterDescriptor, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126E18);
  }

  return result;
}

void sub_1A4102970(uint64_t a1)
{
  if (!qword_1EB126620)
  {
    sub_1A3C52C70(255, &qword_1EB126630, 0x1E69DCAB8);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126620);
    }
  }
}

uint64_t sub_1A4102D64(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4103114(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4102DAC()
{
  result = qword_1EB132430;
  if (!qword_1EB132430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132430);
  }

  return result;
}

unint64_t sub_1A4102E04()
{
  result = qword_1EB132438;
  if (!qword_1EB132438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132438);
  }

  return result;
}

unint64_t sub_1A4102E5C()
{
  result = qword_1EB132440;
  if (!qword_1EB132440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132440);
  }

  return result;
}

unint64_t sub_1A4102EB4()
{
  result = qword_1EB12A1A8;
  if (!qword_1EB12A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A1A8);
  }

  return result;
}

unint64_t sub_1A4102F0C()
{
  result = qword_1EB12A1A0;
  if (!qword_1EB12A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A1A0);
  }

  return result;
}

unint64_t sub_1A4102F60()
{
  result = qword_1EB12A188;
  if (!qword_1EB12A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A188);
  }

  return result;
}

unint64_t sub_1A4102FB8()
{
  result = qword_1EB1258E0;
  if (!qword_1EB1258E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1258E0);
  }

  return result;
}

void sub_1A4103114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3FD505C();
    v7 = a3(a1, &type metadata for LemonadeWallpaperItem, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A4103244()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  sub_1A4101DDC(v5, v6, v7, v2, v3, v4);
}

double sub_1A41032EC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 viewMode];
      v6 = *(v2 + 40);
      *(v2 + 40) = v5;
      if (v6 != v5)
      {
        v7 = sub_1A524D264();
        v8 = *sub_1A3CAA3FC();
        sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Wallpaper refreshing due to libraryFilterViewMode change.", 57, 2, MEMORY[0x1E69E7CC0]);

        sub_1A41017A8();
      }
    }
  }

  return result;
}

double sub_1A41033D8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1A524CC54();
    sub_1A3C67884(sub_1A4103470, v2, "PhotosUICore/LemonadeWallpaperData.swift", 40, 2u, 368);
  }

  return result;
}

void sub_1A4103470(__n128 a1)
{
  v1 = sub_1A524D264();
  v2 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v1, &dword_1A3C1C000, v2, "Wallpaper refreshing due to PXPhotosResetViewNotification.", 58, 2, MEMORY[0x1E69E7CC0]);

  sub_1A41017A8();
}

void sub_1A41034E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A4103538()
{
  result = qword_1EB132520;
  if (!qword_1EB132520)
  {
    sub_1A3C5CFEC(255, &qword_1EB132518, &unk_1EB1269F0, &protocolRef_PXATXFaceGalleryItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132520);
  }

  return result;
}

void sub_1A41035BC(uint64_t a1)
{
  if (!qword_1EB126DC8)
  {
    sub_1A4102970(255);
    sub_1A3C34400(255, &qword_1EB126160, MEMORY[0x1E69E7280]);
    v1 = sub_1A524CBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126DC8);
    }
  }
}

uint64_t sub_1A410363C(void *a1, void *a2)
{
  sub_1A41035BC(0);
  if (a2)
  {
    v4 = a2;
    return sub_1A524CBD4();
  }

  else
  {
    v6 = a1;
    return sub_1A524CBE4();
  }
}

void sub_1A41036F0(uint64_t a1)
{
  if (!qword_1EB126DD8)
  {
    sub_1A3C5D0E8(255, &unk_1EB126C90, &protocolRef_PXPRSService);
    v1 = sub_1A524CBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126DD8);
    }
  }
}

uint64_t sub_1A4103768()
{
  sub_1A41036F0(0);
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  if (!*(v1 + 16))
  {
    *(v1 + 16) = PXCreatePRSService();
    swift_unknownObjectRetain();
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 24));
  return sub_1A524CBE4();
}

uint64_t sub_1A4103830(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(v1 + 5);
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A40FEFB8(a1, v4, v6, v7, v8, v5);
}

uint64_t sub_1A41038F0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A4100758(a1, v1);
}

uint64_t sub_1A410398C()
{
  sub_1A41039F0(0);
  sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);

  return sub_1A524CD94();
}

void sub_1A41039F0(uint64_t a1)
{
  if (!qword_1EB126E08)
  {
    sub_1A3C5CFEC(255, &qword_1EB126E28, &qword_1EB126960, &protocolRef_PXPRSPosterDescriptor, MEMORY[0x1E69E62F8]);
    sub_1A3C5D0E8(255, &qword_1EB126810, &protocolRef_PXATXFaceGalleryConfiguration);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB126E08);
    }
  }
}

uint64_t sub_1A4103A9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3CA8098;

  return sub_1A40FFEE8(a1, v4, v5);
}

uint64_t sub_1A4103B4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3CA8098;

  return sub_1A41001E8(a1, v4, v5);
}

unint64_t sub_1A4103BFC()
{
  result = qword_1EB125810;
  if (!qword_1EB125810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125810);
  }

  return result;
}

uint64_t sub_1A4103C9C()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1EBB70);
  __swift_project_value_buffer(v6, qword_1EB1EBB70);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t sub_1A4103E88()
{
  sub_1A4106770(0, &qword_1EB132590, sub_1A41040B0, &type metadata for FavoriteMemoriesIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A4106770(0, &qword_1EB1325A0, sub_1A41040B0, &type metadata for FavoriteMemoriesIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A41040B0();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4104104(0);
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A41042DC(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A41040B0()
{
  result = qword_1EB132598;
  if (!qword_1EB132598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132598);
  }

  return result;
}

void sub_1A4104104(uint64_t a1)
{
  if (!qword_1EB1325A8)
  {
    sub_1A4104164(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1325A8);
    }
  }
}

void sub_1A4104164(uint64_t a1)
{
  if (!qword_1EB1325B0)
  {
    sub_1A3FC306C(255, &qword_1EB1325B8, &type metadata for MemoryEntity, MEMORY[0x1E69E62F8]);
    sub_1A41041EC();
    v1 = sub_1A5240044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1325B0);
    }
  }
}

unint64_t sub_1A41041EC()
{
  result = qword_1EB1325C0;
  if (!qword_1EB1325C0)
  {
    sub_1A3FC306C(255, &qword_1EB1325B8, &type metadata for MemoryEntity, MEMORY[0x1E69E62F8]);
    sub_1A4104288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1325C0);
  }

  return result;
}

unint64_t sub_1A4104288()
{
  result = qword_1EB1325C8;
  if (!qword_1EB1325C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1325C8);
  }

  return result;
}

void sub_1A41042DC(uint64_t a1)
{
  if (!qword_1EB1325D0)
  {
    sub_1A4106770(255, &qword_1EB1325D8, sub_1A4104374, &type metadata for FavoriteMemoriesIntentAction, MEMORY[0x1E695A1A0]);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1325D0);
    }
  }
}

unint64_t sub_1A4104374()
{
  result = qword_1EB1325E0;
  if (!qword_1EB1325E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1325E0);
  }

  return result;
}

uint64_t sub_1A41043C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4104464, v5, v4);
}

uint64_t sub_1A4104464()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[2] = v1;
  v0[3] = v2;
  sub_1A523FF44();
  v3 = *(v0[4] + 16);

  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  sub_1A41040B0();
  *v5 = v0;
  v5[1] = sub_1A3FC0434;
  v6 = v0[5];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, 0, 0, v3, 0, &unk_1A531AB70);
}

uint64_t sub_1A4104590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A410462C, v5, v4);
}

uint64_t sub_1A410462C()
{
  sub_1A523FF44();
  if (*(v0 + 120))
  {
    v1 = sub_1A524EAB4();
  }

  else
  {
    v1 = 1;
  }

  v8 = *(v0 + 48);

  sub_1A523FF44();
  v2 = *(v0 + 32);
  *(v0 + 88) = v2;
  *(v0 + 16) = v8;
  sub_1A41040B0();
  v3 = AppIntent.px_intentName.getter(&type metadata for FavoriteMemoriesIntent);
  v5 = v4;
  *(v0 + 96) = v4;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1A3FC0824;

  return sub_1A4104EE4(v1 & 1, v2, v3, v5);
}

uint64_t sub_1A41047A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A4104590(a1, v5, v4);
}

uint64_t sub_1A4104850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A4104EE4(a1, a2, a3, a4);
}

uint64_t sub_1A410491C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1A82E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1EBB70);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A41049E0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A41043C8(a1, v5, v4);
}

uint64_t sub_1A4104A8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A41053F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A4104AB4(uint64_t a1)
{
  v2 = sub_1A41040B0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A4104AF0()
{
  sub_1A41067D8(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A5240BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A5240BC4();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A5240384();
}

void sub_1A4104DD4(char *a2@<X8>)
{
  v3 = sub_1A524E824();

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

uint64_t sub_1A4104E38(uint64_t a1)
{
  v2 = sub_1A41053A4();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A4104E88(uint64_t a1)
{
  v2 = sub_1A41064E0();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

uint64_t sub_1A4104EE4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 112) = a1;
  v5 = sub_1A5246F24();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_1A524CC54();
  *(v4 + 64) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A4104FE0, v7, v6);
}

void sub_1A4104FE0()
{
  v1 = v0;
  if (!(sub_1A489989C(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A4105350()
{
  result = qword_1EB138530;
  if (!qword_1EB138530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138530);
  }

  return result;
}

unint64_t sub_1A41053A4()
{
  result = qword_1EB1325F0;
  if (!qword_1EB1325F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1325F0);
  }

  return result;
}

uint64_t sub_1A41053F8()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A41067D8(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v40 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v31 - v4;
  v38 = sub_1A5240334();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41067D8(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v31 - v9;
  v10 = sub_1A5240BA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v33 = sub_1A5240BB4();
  v16 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  sub_1A4104164(0);
  v34 = v17;
  sub_1A524C5B4();
  sub_1A5241244();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v11 + 104);
  v19(v13, v18, v10);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v19(v13, v18, v10);
  v20 = v35;
  sub_1A5240BC4();
  v21 = *(v16 + 56);
  v22 = v20;
  v23 = v33;
  v21(v20, 0, 1, v33);
  v43 = 0;
  sub_1A5240174();
  v32 = *MEMORY[0x1E695A500];
  v24 = *(v41 + 104);
  v41 += 104;
  v31 = v24;
  v25 = v37;
  v26 = v38;
  v24(v37);
  sub_1A3FC2D54(&qword_1EB1325E8, &qword_1EB1325B8, &type metadata for MemoryEntity);
  sub_1A4105350();
  v27 = sub_1A5240034();
  sub_1A4106770(0, &qword_1EB1325D8, sub_1A4104374, &type metadata for FavoriteMemoriesIntentAction, MEMORY[0x1E695A1A0]);
  v21(v22, 1, 1, v23);
  v42 = 0;
  v28 = sub_1A523FDB4();
  v29 = *(*(v28 - 8) + 56);
  v29(v39, 1, 1, v28);
  v29(v40, 1, 1, v28);
  v31(v25, v32, v26);
  sub_1A41053A4();
  sub_1A523FF74();
  return v27;
}

unint64_t sub_1A4105A70(uint64_t a1)
{
  sub_1A410683C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A41068A4(0);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A4106910(v10, v6);
      v12 = *v6;
      result = sub_1A40ABF60(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1A5240274();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A4105C30()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A41067D8(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v25 - v2;
  sub_1A41067D8(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v25 - v4;
  v38 = sub_1A5240BA4();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v27 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A41067D8(0, &qword_1EB132678, sub_1A410683C, MEMORY[0x1E69E6F90]);
  sub_1A410683C(0);
  v11 = v10;
  v40 = v10;
  v12 = *(v10 - 8);
  v35 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v30 = v14;
  *(v14 + 16) = xmmword_1A52FC9F0;
  v15 = v14 + v13;
  v34 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_1A524C5B4();
  sub_1A5241244();
  v31 = *MEMORY[0x1E6968DF0];
  v16 = *(v5 + 104);
  v32 = v5 + 104;
  v33 = v16;
  v16(v39);
  sub_1A5240BC4();
  v17 = *(v41 + 56);
  v41 += 56;
  v28 = v17;
  v18 = v36;
  v17(v36, 1, 1, v9);
  v19 = sub_1A5240244();
  v26 = *(*(v19 - 8) + 56);
  v20 = v37;
  v26(v37, 1, 1, v19);
  v29 = v15;
  v21 = v20;
  sub_1A5240264();
  v22 = (v15 + v35);
  v35 = *(v40 + 48);
  *v22 = 1;
  sub_1A524C5B4();
  sub_1A5241244();
  v33(v39, v31, v38);
  sub_1A5240BC4();
  v28(v18, 1, 1, v27);
  v26(v21, 1, 1, v19);
  sub_1A5240264();
  v23 = sub_1A4105A70(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

unint64_t sub_1A4106204()
{
  result = qword_1EB1325F8;
  if (!qword_1EB1325F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1325F8);
  }

  return result;
}

unint64_t sub_1A410625C()
{
  result = qword_1EB132600;
  if (!qword_1EB132600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132600);
  }

  return result;
}

unint64_t sub_1A41062D0()
{
  result = qword_1EB132608;
  if (!qword_1EB132608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132608);
  }

  return result;
}

unint64_t sub_1A4106328()
{
  result = qword_1EB132610;
  if (!qword_1EB132610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132610);
  }

  return result;
}

unint64_t sub_1A4106380()
{
  result = qword_1EB132618;
  if (!qword_1EB132618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132618);
  }

  return result;
}

unint64_t sub_1A41063D8()
{
  result = qword_1EB132620;
  if (!qword_1EB132620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132620);
  }

  return result;
}

unint64_t sub_1A4106430()
{
  result = qword_1EB132628;
  if (!qword_1EB132628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132628);
  }

  return result;
}

unint64_t sub_1A4106488()
{
  result = qword_1EB132630;
  if (!qword_1EB132630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132630);
  }

  return result;
}

unint64_t sub_1A41064E0()
{
  result = qword_1EB132638;
  if (!qword_1EB132638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132638);
  }

  return result;
}

unint64_t sub_1A410658C()
{
  result = qword_1EB132640;
  if (!qword_1EB132640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132640);
  }

  return result;
}

unint64_t sub_1A41065E4()
{
  result = qword_1EB132648;
  if (!qword_1EB132648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132648);
  }

  return result;
}

unint64_t sub_1A410663C()
{
  result = qword_1EB132650;
  if (!qword_1EB132650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132650);
  }

  return result;
}

unint64_t sub_1A41066E0()
{
  result = qword_1EB132668;
  if (!qword_1EB132668)
  {
    sub_1A4106770(255, &qword_1EB132670, sub_1A41040B0, &type metadata for FavoriteMemoriesIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132668);
  }

  return result;
}

void sub_1A4106770(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A41067D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A410683C(uint64_t a1)
{
  if (!qword_1EB132680)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB132680);
    }
  }
}

void sub_1A41068A4(uint64_t a1)
{
  if (!qword_1EB132688)
  {
    sub_1A5240274();
    sub_1A410663C();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132688);
    }
  }
}

uint64_t sub_1A4106910(uint64_t a1, uint64_t a2)
{
  sub_1A410683C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TimelineEngineCell(uint64_t a1)
{
  result = qword_1EB1A8D00;
  if (!qword_1EB1A8D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A41069C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TimelineEngineCell(0);
  v5 = sub_1A52411B4();
  v6 = 0;
  v7 = sub_1A4106D6C(v5, 0.0, 360.0);
  v9 = v8;
  sub_1A4106D6C(v7, 100.0, 300.0);
  *a2 = a1;
  *(a2 + v4[6]) = 0;
  *(a2 + v4[7]) = a1 % 10 == 0;
  if (a1 % 10)
  {
    v11 = v10;
    v12 = __sincos_stret(v9);
    *(a2 + v4[8]) = v12.__sinval * v11;
    *(a2 + v4[9]) = v12.__cosval * v11;
    sub_1A3E2AEFC(0.0, 1.0);
    v6 = v13;
  }

  else
  {
    *(a2 + v4[8]) = 0;
    *(a2 + v4[9]) = 0;
  }

  *(a2 + v4[10]) = v6;
}

void sub_1A4106ADC(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v8 = type metadata accessor for TimelineEngineCell(0);
  sub_1A52411B4();
  *a1 = 0;
  *(a1 + v8[6]) = 1;
  *(a1 + v8[7]) = 1;
  *(a1 + v8[8]) = a3;
  *(a1 + v8[9]) = a4;
  *(a1 + v8[10]) = a2;
}

uint64_t sub_1A4106B60(uint64_t a1)
{
  MEMORY[0x1A590A010](*v1);
  v2 = type metadata accessor for TimelineEngineCell(0);
  sub_1A52411C4();
  sub_1A4106FA4(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A524C4B4();
  MEMORY[0x1A590A010](*(v1 + v2[6]));
  sub_1A524ECB4();
  v3 = *(v1 + v2[8]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1A590A040](*&v3);
  v4 = *(v1 + v2[9]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1A590A040](*&v4);
  v5 = *(v1 + v2[10]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x1A590A040](*&v5);
}

uint64_t sub_1A4106C74()
{
  sub_1A524EC94();
  sub_1A4106B60(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4106CB8(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A4106B60(v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A4106CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1A52411C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A4106D84(uint64_t result, uint64_t (*a2)(uint64_t, double, double), double a3, double a4)
{
  if (a3 == a4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = a4 - a3;
  if (COERCE__INT64(fabs(a4 - a3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = 0;
  result = MEMORY[0x1A590EEE0](&v9, 8);
  if (v6 * vcvtd_n_f64_u64(v9 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a3 == a4)
  {
    return a2(v8, a3, a4);
  }

  return result;
}

BOOL sub_1A4106E30(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for TimelineEngineCell(0);
  return (_s12PhotosUICore33LemonadeMemoryPlayerConfigurationV2eeoiySbAC_ACtFZ_0() & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]);
}

unint64_t sub_1A4106F08()
{
  result = qword_1EB132690;
  if (!qword_1EB132690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132690);
  }

  return result;
}

uint64_t sub_1A4106FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A410706C(uint64_t a1)
{
  result = sub_1A52411C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1A4107114@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = xmmword_1A531B0C0;
  *(a3 + 32) = sub_1A3C38BD4(0xD00000000000001BLL);
  *(a3 + 40) = v6;
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = swift_getKeyPath();
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = swift_getKeyPath();
  *(a3 + 136) = 0;
  v7 = type metadata accessor for LemonadeCustomizeView(0);
  v8 = v7[12];
  *(a3 + v8) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v9 = v7[13];
  *(a3 + v9) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v10 = a3 + v7[14];
  sub_1A3E316EC(0);
  sub_1A524B694();
  result = *&v12;
  *v10 = v12;
  *(v10 + 16) = v13;
  *(v10 + 24) = v14;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t type metadata accessor for LemonadeCustomizeView(uint64_t a1)
{
  result = qword_1EB187FB0;
  if (!qword_1EB187FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A41072D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeCustomizeView(0);
  sub_1A410B768(v1 + *(v10 + 48), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A41074D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E71AC8(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeCustomizeView(0);
  sub_1A410B768(v1 + *(v10 + 52), v9, sub_1A3E71AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5242D14();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1A41076D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4107734(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 128);
  if (*(a1 + 136) == 1)
  {
    *a2 = v8;
  }

  else
  {

    v9 = sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3DD15BC(v8, 0);
    (*(v5 + 8))(v7, v4);
  }
}

void LemonadeCustomizeView.body.getter(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_1A5242D14();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4107D78(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4108440(0);
  v27 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4108C98(0);
  v26 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  v33 = v1;
  sub_1A524A044();
  sub_1A4107E0C(0);
  sub_1A41083F8(&qword_1EB132720, sub_1A4107E0C, MEMORY[0x1E6981870]);
  sub_1A5247D14();
  v32 = v1;
  sub_1A410857C(0);
  v17 = v16;
  v18 = sub_1A41083F8(&qword_1EB132788, sub_1A4107D78, MEMORY[0x1E697BE60]);
  sub_1A4108630(255);
  v20 = v19;
  v21 = sub_1A41083F8(&qword_1EB132780, sub_1A4108630, MEMORY[0x1E697BEF0]);
  v34 = v20;
  v35 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524B0E4();
  (*(v6 + 8))(v8, v5);
  v34 = v5;
  v35 = v17;
  v36 = v18;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_1A524AA94();
  (*(v10 + 8))(v12, v23);
  sub_1A47E2D44(0x7A696D6F74737543, 0xE900000000000065, &v15[*(v26 + 36)]);
}

void sub_1A4107D78(uint64_t a1)
{
  if (!qword_1EB1326A0)
  {
    sub_1A4107E0C(255);
    sub_1A41083F8(&qword_1EB132720, sub_1A4107E0C, MEMORY[0x1E6981870]);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1326A0);
    }
  }
}

void sub_1A4107E0C(uint64_t a1)
{
  if (!qword_1EB1326A8)
  {
    sub_1A4107EA0(255);
    sub_1A41083F8(&qword_1EB132718, sub_1A4107EA0, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1326A8);
    }
  }
}

void sub_1A4107ED4(uint64_t a1)
{
  if (!qword_1EB1326B8)
  {
    sub_1A4107F44(255);
    sub_1A410823C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1326B8);
    }
  }
}

void sub_1A4107F44(uint64_t a1)
{
  if (!qword_1EB1326C0)
  {
    sub_1A4107FD8(255);
    sub_1A41083F8(&qword_1EB1326F0, sub_1A4107FD8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1326C0);
    }
  }
}

void sub_1A410800C(uint64_t a1)
{
  if (!qword_1EB1326D0)
  {
    sub_1A4108084(255);
    sub_1A41080CC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1326D0);
    }
  }
}

void sub_1A41080CC(uint64_t a1)
{
  if (!qword_1EB1326E0)
  {
    sub_1A410814C(255);
    sub_1A41081D0(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1326E0);
    }
  }
}

void sub_1A410814C(uint64_t a1)
{
  if (!qword_1EB1326E8)
  {
    sub_1A4108874(255, &unk_1EB124040, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1326E8);
    }
  }
}

void sub_1A41081D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3C48A4C(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A410825C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A41082D8(uint64_t a1)
{
  if (!qword_1EB132708)
  {
    sub_1A4108374(255, &qword_1EB132710, type metadata accessor for LemonadeTwoColumnsReorderView, type metadata accessor for LemonadeReorderView, MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132708);
    }
  }
}

void sub_1A4108374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A41083F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4108440(uint64_t a1)
{
  if (!qword_1EB132728)
  {
    sub_1A4107D78(255);
    sub_1A410857C(255);
    sub_1A41083F8(&qword_1EB132788, sub_1A4107D78, MEMORY[0x1E697BE60]);
    sub_1A4108630(255);
    sub_1A41083F8(&qword_1EB132780, sub_1A4108630, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132728);
    }
  }
}

void sub_1A410857C(uint64_t a1)
{
  if (!qword_1EB132730)
  {
    sub_1A4108630(255);
    sub_1A41083F8(&qword_1EB132780, sub_1A4108630, MEMORY[0x1E697BEF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132730);
    }
  }
}

void sub_1A4108630(uint64_t a1)
{
  if (!qword_1EB132738)
  {
    sub_1A4108768(255);
    sub_1A4108874(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A41088C8(255);
    sub_1A3D6E520();
    sub_1A410BCA8(&qword_1EB132770, sub_1A41088C8, sub_1A4108B34, sub_1A3F94B48);
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132738);
    }
  }
}

void sub_1A4108768(uint64_t a1)
{
  if (!qword_1EB132740)
  {
    sub_1A4108874(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A41088C8(255);
    sub_1A3D6E520();
    sub_1A410BCA8(&qword_1EB132770, sub_1A41088C8, sub_1A4108B34, sub_1A3F94B48);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132740);
    }
  }
}

void sub_1A4108874(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E6981148], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A41088C8(uint64_t a1)
{
  if (!qword_1EB132748)
  {
    sub_1A4108948(255);
    sub_1A41081D0(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132748);
    }
  }
}

void sub_1A4108948(uint64_t a1)
{
  if (!qword_1EB132750)
  {
    sub_1A41089C8(255);
    sub_1A41081D0(255, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132750);
    }
  }
}

void sub_1A41089C8(uint64_t a1)
{
  if (!qword_1EB132758)
  {
    sub_1A4108A90(255);
    sub_1A410BCA8(&qword_1EB132768, sub_1A4108A90, sub_1A3D6E520, sub_1A3F96350);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132758);
    }
  }
}

void sub_1A4108A90(uint64_t a1)
{
  if (!qword_1EB132760)
  {
    sub_1A4108874(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A41081D0(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132760);
    }
  }
}

unint64_t sub_1A4108B34()
{
  result = qword_1EB132778;
  if (!qword_1EB132778)
  {
    sub_1A4108948(255);
    sub_1A4108A90(255);
    sub_1A410BCA8(&qword_1EB132768, sub_1A4108A90, sub_1A3D6E520, sub_1A3F96350);
    swift_getOpaqueTypeConformance2();
    sub_1A4108C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132778);
  }

  return result;
}

unint64_t sub_1A4108C28()
{
  result = qword_1EB127870;
  if (!qword_1EB127870)
  {
    sub_1A41081D0(255, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127870);
  }

  return result;
}

void sub_1A4108D28(uint64_t a1@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 24);
  *a1 = sub_1A5249574();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  sub_1A410BBDC(0, &qword_1EB1327D0, sub_1A4107EA0);
  sub_1A4108D98(v4);
}

void sub_1A4108D98(uint64_t a1)
{
  sub_1A410823C(0);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A4107F44(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  *v8 = sub_1A5249584();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_1A410BBDC(0, &qword_1EB1327D8, sub_1A4107FD8);
  sub_1A4109038(a1, &v8[*(v9 + 44)]);
}

void sub_1A4109038(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a1;
  v21 = a2;
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  sub_1A4108084(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v22 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  sub_1A41074D4(v8);
  v19 = *MEMORY[0x1E69C2200];
  v18 = *(v3 + 104);
  v18(v5);
  v14 = sub_1A5242D04();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  if (v14)
  {
    v16 = 0xD000000000000028;
  }

  else
  {
    v16 = 0xD00000000000002BLL;
  }

  sub_1A3C38BD4(v16);
  v20 = v13;
  sub_1A41094FC(v13);
}

void sub_1A41094FC(uint64_t a3@<X8>)
{
  v11[3] = a3;
  v12 = sub_1A5249524();
  v11[2] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524A274();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 104))(v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6980EE8], v6, v8);
  v10 = sub_1A524A154();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4109A38()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A524A274();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 104))(&v11[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6980EF8], v6, v8);
  v10 = sub_1A524A154();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4109E48@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = type metadata accessor for LemonadeReorderView(0);
  MEMORY[0x1EEE9AC00](v30);
  v26 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4108374(0, &qword_1EB1327E0, type metadata accessor for LemonadeTwoColumnsReorderView, type metadata accessor for LemonadeReorderView, MEMORY[0x1E697F948]);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v28 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52486A4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5242D14();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_1A41074D4(v16);
  sub_1A41072D8(v12);
  v17 = sub_1A41875F0(sub_1A410BCA0, v31, v16, v12);
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  v18 = *a1;
  if (v17)
  {
    v19 = a1 + *(type metadata accessor for LemonadeCustomizeView(0) + 56);
    v20 = v19[16];
    v21 = *(v19 + 3);
    v36 = *v19;
    v37 = v20;
    v38 = v21;
    sub_1A41076D0(0, &qword_1EB127498, sub_1A3E316EC, MEMORY[0x1E6981790]);

    sub_1A524B6A4();
    sub_1A458CD28(v18, v33, v34, v35, v8);
  }

  v23 = v26;
  sub_1A3F31428(v22, v26);
  sub_1A410B768(v23, v6, type metadata accessor for LemonadeReorderView);
  swift_storeEnumTagMultiPayload();
  sub_1A41083F8(&qword_1EB1327E8, type metadata accessor for LemonadeTwoColumnsReorderView, &unk_1A534C698);
  sub_1A41083F8(&qword_1EB12EC68, type metadata accessor for LemonadeReorderView, &unk_1A5308418);
  sub_1A5249744();
  return sub_1A410BC40(v23, type metadata accessor for LemonadeReorderView);
}

uint64_t sub_1A410A364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1A4108630(0);
  v27[0] = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41074D4(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E69C2210], v3);
  v15 = sub_1A5242D04();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v16(v9, v3);
  if (v15)
  {
    v17 = sub_1A5249834();
  }

  else
  {
    v17 = sub_1A5249824();
  }

  MEMORY[0x1EEE9AC00](v17);
  v27[-2] = a1;
  sub_1A4108768(0);
  sub_1A4108874(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v19 = v18;
  sub_1A41088C8(255);
  v21 = v20;
  v22 = sub_1A3D6E520();
  v23 = sub_1A410BCA8(&qword_1EB132770, sub_1A41088C8, sub_1A4108B34, sub_1A3F94B48);
  v27[2] = v19;
  v27[3] = v21;
  v27[4] = v22;
  v27[5] = v23;
  swift_getOpaqueTypeConformance2();
  sub_1A5247F24();
  v24 = sub_1A41083F8(&qword_1EB132780, sub_1A4108630, MEMORY[0x1E697BEF0]);
  v25 = v27[0];
  MEMORY[0x1A5904CD0](v14, v27[0], v24);
  return (*(v12 + 8))(v14, v25);
}

void sub_1A410A708(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeCustomizeView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A4108874(0, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(a1 + 40);
  v9[0] = *(a1 + 32);
  v9[1] = v6;
  sub_1A410B768(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeCustomizeView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1A410B7D0(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A410A998(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LemonadeCustomizeView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A410B768(a2, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeCustomizeView);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1A410B7D0(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1A3CDCAA8(a1, a3);
  sub_1A4108374(0, &qword_1EB1327A0, sub_1A4108C98, sub_1A410AB24, MEMORY[0x1E697E830]);
  v12 = (a3 + *(v11 + 36));
  *v12 = sub_1A410AEF4;
  v12[1] = 0;
  v12[2] = sub_1A410B834;
  v12[3] = v10;
}

void sub_1A410AB24(uint64_t a1)
{
  if (!qword_1EB127B28)
  {
    type metadata accessor for CGSize(255);
    sub_1A41083F8(&qword_1EB126710, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
    v1 = sub_1A5249BB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127B28);
    }
  }
}

unint64_t sub_1A410ABB8()
{
  result = qword_1EB1327A8;
  if (!qword_1EB1327A8)
  {
    sub_1A4108C98(255);
    sub_1A410AC68();
    sub_1A41083F8(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker, &unk_1A5362FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1327A8);
  }

  return result;
}

unint64_t sub_1A410AC68()
{
  result = qword_1EB1327B0;
  if (!qword_1EB1327B0)
  {
    sub_1A4108CE0(255);
    sub_1A4107D78(255);
    sub_1A410857C(255);
    sub_1A41083F8(&qword_1EB132788, sub_1A4107D78, MEMORY[0x1E697BE60]);
    sub_1A4108630(255);
    sub_1A41083F8(&qword_1EB132780, sub_1A4108630, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A41083F8(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1327B0);
  }

  return result;
}

unint64_t sub_1A410AE00()
{
  result = qword_1EB1327B8;
  if (!qword_1EB1327B8)
  {
    sub_1A4108374(255, &qword_1EB1327A0, sub_1A4108C98, sub_1A410AB24, MEMORY[0x1E697E830]);
    sub_1A410ABB8();
    sub_1A41083F8(&unk_1EB127B30, sub_1A410AB24, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1327B8);
  }

  return result;
}

void sub_1A410AEF4(void *a2@<X8>)
{
  sub_1A52482B4();
  *a2 = v3;
  a2[1] = v4;
}

void sub_1A410AF20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4108A90(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524A0E4();
  KeyPath = swift_getKeyPath();
  sub_1A4108874(0, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  (*(*(v10 - 8) + 16))(v7, a1, v10);
  v11 = &v7[*(v5 + 36)];
  *v11 = KeyPath;
  v11[1] = v8;
  sub_1A524A1A4();
  sub_1A410BCA8(&qword_1EB132768, sub_1A4108A90, sub_1A3D6E520, sub_1A3F96350);
  sub_1A524A8F4();
  sub_1A410BC40(v7, sub_1A4108A90);
  v12 = sub_1A524B294();
  v13 = swift_getKeyPath();
  v21[1] = v12;
  v14 = sub_1A5248204();
  sub_1A4108948(0);
  v16 = (a2 + *(v15 + 36));
  *v16 = v13;
  v16[1] = v14;
  v17 = sub_1A524B3C4();
  v18 = swift_getKeyPath();
  sub_1A41088C8(0);
  v20 = (a2 + *(v19 + 36));
  *v20 = v18;
  v20[1] = v17;
}

void sub_1A410B130()
{
  sub_1A41076D0(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15[-1] - v2;
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeMockShelvesDataSource();
  v8 = sub_1A42F8364();
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  type metadata accessor for LemonadePhotoLibraryContext(0, v10);
  v11 = [objc_opt_self() sharedPhotoLibrary];
  v12 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v11, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(v15);
  sub_1A3C799F0(v6, 0, 0, 0, v3, v15, v12, 2);
  type metadata accessor for LemonadeShelvesViewModel(0);
  v15[3] = v7;
  v15[4] = sub_1A41083F8(&qword_1EB12EC48, type metadata accessor for LemonadeMockShelvesDataSource, &unk_1A532ED48);
  v15[0] = v8;

  v13 = sub_1A3C5A374();
  sub_1A3C5A7B8(v15, 0, v13);
}

unint64_t sub_1A410B3AC()
{
  result = qword_1EB1327C0;
  if (!qword_1EB1327C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1327C0);
  }

  return result;
}

uint64_t sub_1A410B420(uint64_t a1)
{
  v2 = sub_1A410B714();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A410B46C(uint64_t a1)
{
  v2 = sub_1A410B714();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A410B4E0(uint64_t a1)
{
  type metadata accessor for LemonadeShelvesViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v2 <= 0x3F)
    {
      sub_1A3C48A4C(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A3C48A4C(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A3C48A4C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A41076D0(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A41076D0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1A41076D0(319, &qword_1EB127498, sub_1A3E316EC, MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
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
}

unint64_t sub_1A410B714()
{
  result = qword_1EB1327C8;
  if (!qword_1EB1327C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1327C8);
  }

  return result;
}

uint64_t sub_1A410B768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A410B7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeCustomizeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A410B834(uint64_t a1)
{
  type metadata accessor for LemonadeCustomizeView(0);
  sub_1A41076D0(0, &qword_1EB127498, sub_1A3E316EC, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for LemonadeCustomizeView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1A3D35A84(*(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80));
  sub_1A3D35A84(*(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 120));
  sub_1A3DD15BC(*(v2 + 128), *(v2 + 136));
  v3 = *(v1 + 48);
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 52);
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A410BB84@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1A59044A0]();
  *a1 = result;
  return result;
}

void sub_1A410BBDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A410BC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A410BCA8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t sub_1A410BD34()
{
  result = qword_1EB1327F8;
  if (!qword_1EB1327F8)
  {
    sub_1A410814C(255);
    sub_1A410BDB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1327F8);
  }

  return result;
}

unint64_t sub_1A410BDB4()
{
  result = qword_1EB124050;
  if (!qword_1EB124050)
  {
    sub_1A4108874(255, &unk_1EB124040, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124050);
  }

  return result;
}

uint64_t LemonadeShelfLoadPriority.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

double sub_1A410BEDC(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1A524C594();
  if (v3)
  {
    v1[74] = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 848))(v6);
  }

  return result;
}

double sub_1A410C054(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v9 = *(v3 + 80);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*(*v1 + 848))(KeyPath, sub_1A410F204, &v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double sub_1A410C150(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v9 = *(v3 + 80);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*(*v1 + 848))(KeyPath, sub_1A410F1A4, &v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double sub_1A410C24C(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  sub_1A3C60B64(v2);

  return result;
}

void sub_1A410C28C(void *a1)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A410C2D8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 16);
  *(v2 + 16) = *a1;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C60B64(v3);

  return result;
}

uint64_t sub_1A410C344@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

void sub_1A410C3E4(uint64_t *a1)
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
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 840))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v9);
  swift_getKeyPath();
  type metadata accessor for LemonadeShelvesLoader(255, v6, v7, v10);
  swift_getWitnessTable();
  sub_1A52415F4();

  sub_1A410C28C(v4);
}

uint64_t sub_1A410C5B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  return result;
}

void sub_1A410C664()
{
  sub_1A410EBEC();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A410C68C(uint64_t *a1)
{
  a1[1] = v1;
  sub_1A410DE88();
  *a1 = sub_1A3C77D68();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A410C6E0(uint64_t *a1, char a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C77C5C(*a1);
}

uint64_t sub_1A410C738(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1A5246E54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  v26 = *a1;
  v27 = v10;
  v11 = *(v4 + 304);
  v11(&v24, v7);
  v22 = v24;
  v23 = v25;
  result = static LemonadeShelvesLoader.LoadingTarget.== infix(_:_:)(&v26, &v22);
  if ((result & 1) == 0)
  {
    if (qword_1EB18EAA0 != -1)
    {
      swift_once();
    }

    v13 = sub_1A5246E94();
    __swift_project_value_buffer(v13, qword_1EB18EAA8);

    sub_1A5246E44();
    v14 = sub_1A5246E84();
    v15 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v16 = swift_slowAlloc();
      v21[3] = v15;
      v17 = v16;
      v24 = swift_slowAlloc();
      *v17 = 136315138;
      (v11)(&v26);
      v18 = LemonadeShelvesLoader.LoadingTarget.description.getter();
      v20 = v19;

      sub_1A3C2EF94(v18, v20, &v24);
    }

    (*(v6 + 8))(v9, v5);
    return sub_1A3C613C0();
  }

  return result;
}

void sub_1A410C9FC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t (*sub_1A410CA10(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  return sub_1A410CA44;
}

uint64_t sub_1A410CA44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v1 + 24) = *a1;
  *(v1 + 32) = v2;
  v6 = v3;
  v7 = v4;
  return sub_1A410C738(&v6);
}

void *sub_1A410CA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 304))(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1A410CB00(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return (*(*v3 + 312))(&v5);
}

uint64_t (*sub_1A410CB68(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 840))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v9);
  swift_getKeyPath();
  type metadata accessor for LemonadeShelvesLoader(255, v6, v7, v10);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A410CA10(v4);
  return sub_1A410CD2C;
}

void sub_1A410CD38(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 88);
  swift_getKeyPath();
  type metadata accessor for LemonadeShelvesLoader(255, v5, v6, v7);
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v3);
}

uint64_t sub_1A410CE34@<X0>(uint64_t a1@<X8>)
{
  if ((*(*v1 + 336))())
  {
    v3 = *MEMORY[0x1E69C1DC8];
    v4 = sub_1A5242394();
    v5 = *(*(v4 - 8) + 104);

    return v5(a1, v3, v4);
  }

  else
  {
    (*(*v1 + 256))();
    sub_1A524CB74();
    swift_getWitnessTable();
    v7 = sub_1A524D094();

    v8 = sub_1A5242394();
    if (v7)
    {
      v9 = MEMORY[0x1E69C1DD8];
    }

    else
    {
      v9 = MEMORY[0x1E69C1DD0];
    }

    return (*(*(v8 - 8) + 104))(a1, *v9, v8);
  }
}

uint64_t sub_1A410CFF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A410D0A0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1A3C782E8() & 1;
  return sub_1A410D0EC;
}

uint64_t sub_1A410D114()
{
  v1 = *v0;
  v2 = *v0;
  v26 = *(*v0 + 88);
  v3 = *(v1 + 80);
  v25 = *(v26 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v17 - v5;
  v6 = *(v3 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = *(v2 + 256);
  v27 = v0;
  v13 = v12(v9);
  if (sub_1A524CAF4())
  {
    v18 = v7;
    v19 = v6;
    v21 = (v6 + 8);
    v22 = (v6 + 16);
    v20 = v4 + 8;
    v14 = sub_1A524CAD4();
    sub_1A524CA64();
    if (v14)
    {
      (*(v6 + 16))(v11, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3);
      goto LABEL_4;
    }

    result = sub_1A524E474();
    if (v18 == 8)
    {
      v28 = result;
      (*v22)(v11, &v28, v3);
      swift_unknownObjectRelease();
LABEL_4:
      sub_1A524E424();
      (*v21)(v11, v3);
      sub_1A3C6436C();
      type metadata accessor for LemonadeShelvesLoader.ShelfState(0, v3, v26, v15);
      swift_getAssociatedConformanceWitness();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }

  else
  {

    return 1;
  }

  return result;
}

uint64_t sub_1A410D4D8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 368))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A410D570(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 376);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

void (*(*sub_1A410D630(uint64_t a1))(uint64_t a1, char a2))(uint64_t)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A410D684;
}

void (*sub_1A410D684(uint64_t a1, char a2))(uint64_t)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A3C785A8();
  }

  return result;
}

unint64_t LemonadeShelvesLoader.LoadingTarget.description.getter()
{
  if (*(v0 + 8) <= 1u)
  {
    if (*(v0 + 8))
    {
      sub_1A524E404();

      v1 = 0xD000000000000012;
    }

    else
    {
      sub_1A524E404();

      v1 = 0xD00000000000001ALL;
    }

    goto LABEL_7;
  }

  if (*(v0 + 8) == 2)
  {
    sub_1A524E404();

    v1 = 0xD000000000000011;
LABEL_7:
    v4 = v1;
    v2 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v2);

    MEMORY[0x1A5907B60](41, 0xE100000000000000);
    return v4;
  }

  if (*v0)
  {
    return 1819042094;
  }

  else
  {
    return 0x656C64692ELL;
  }
}

uint64_t LemonadeShelvesLoader.LoadingTarget.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) != 2)
    {
      v1 = 4 * (v1 != 0);
      return MEMORY[0x1A590A010](v1);
    }

    v2 = 3;
  }

  else if (*(v0 + 8))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1A590A010](v2);
  return MEMORY[0x1A590A010](v1);
}

uint64_t LemonadeShelvesLoader.LoadingTarget.hashValue.getter()
{
  sub_1A524EC94();
  LemonadeShelvesLoader.LoadingTarget.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A410D8E4(uint64_t a1)
{
  sub_1A524EC94();
  LemonadeShelvesLoader.LoadingTarget.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A410D934@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3C61AB0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A410D99C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3C782E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A410D9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *(a4 + 40);
  v14(a3, a4, v11);
  (v14)(a3, a4);
  swift_getAssociatedConformanceWitness();
  v15 = sub_1A524C594();
  v16 = *(v7 + 8);
  v16(v9, AssociatedTypeWitness);
  v16(v13, AssociatedTypeWitness);
  return v15 & 1;
}

double sub_1A410DB98(uint64_t a1)
{
  *(v1 + 80) = a1;

  return result;
}

void sub_1A410DBA8()
{
  sub_1A3C612E8();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A410DBD0(uint64_t *a1@<X8>)
{
  *a1 = sub_1A3C612E8();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A410DC38(uint64_t a1)
{
  *(v1 + 88) = a1;

  return result;
}

void sub_1A410DC48()
{
  sub_1A3C77D68();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A410DC70(uint64_t *a1@<X8>)
{
  *a1 = sub_1A3C77D68();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A410DCD8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;

  return result;
}

void sub_1A410DD20()
{
  sub_1A3C6436C();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A410DD48(uint64_t *a1@<X8>)
{
  *a1 = sub_1A3C6436C();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A410DDB0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;

  return result;
}

void sub_1A410DDF8()
{
  sub_1A410F0C0();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A410DE20(uint64_t *a1@<X8>)
{
  *a1 = sub_1A410F0C0();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void *sub_1A410DE88()
{
  result = (*(*v0 + 304))(&v2);
  if (!v3)
  {
    v3 = 1;
    return (*(*v0 + 312))(&v2);
  }

  return result;
}

uint64_t sub_1A410DF2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3C6147C();
  *a1 = result & 1;
  return result;
}

void sub_1A410DF84(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5[4] = v1;
  MEMORY[0x1EEE9AC00](v2);
  v5[5] = v5 - v3;
  v4 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3C63A90(sub_1A410F194, 0);
}

uint64_t sub_1A410E468()
{
  if (*(v0 + 24))
  {
    swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    swift_unknownObjectRetain();
    sub_1A5245904();
  }

  return 1;
}

void sub_1A410E5D0(char a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  sub_1A3C749F8(v2);
}

id sub_1A410E5E0(id result)
{
  v2 = *(v1 + 18);
  *(v1 + 18) = result;
  if (v2 != (result & 1))
  {
    return [*(v1 + 40) signalChange_];
  }

  return result;
}

uint64_t sub_1A410E60C(char a1)
{
  if (!a1)
  {
    return 1701602409;
  }

  if (a1 == 1)
  {
    return 0x676E6964616F6CLL;
  }

  return 0x646564616F6CLL;
}

uint64_t sub_1A410E680(unsigned __int8 a1)
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](a1);
  return sub_1A524ECE4();
}

uint64_t sub_1A410E6E4(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A410E658(v3, *v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A410E72C()
{
  v1 = *v0;
  swift_unknownObjectRelease();

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 17));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1A410E828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeShelvesLoader.ShelfState(0, *(a3 + 80), *(a3 + 88), a4);
  swift_getWitnessTable();

  sub_1A5245F44();
}

void sub_1A410E8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeShelvesLoader.ShelfState(0, *(a3 + 80), *(a3 + 88), a4);
  swift_getWitnessTable();

  sub_1A5245C54();
}

char *LemonadeShelvesLoader.deinit()
{

  sub_1A3C784D4(*(v0 + 40), *(v0 + 48));

  v1 = qword_1EB1873A0;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeShelvesLoader.__deallocating_deinit()
{
  LemonadeShelvesLoader.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1A410EA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524C4A4();

  return sub_1A410EA64(a1, v6, a2, a3);
}

unint64_t sub_1A410EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1A524C594();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1A410EBEC()
{
  sub_1A410DE88();

  return sub_1A3C77D68();
}

unint64_t sub_1A410EC18()
{
  result = qword_1EB132800;
  if (!qword_1EB132800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132800);
  }

  return result;
}

uint64_t sub_1A410EFD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A410F018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1A410F05C(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1A410F074(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1A410F0C0()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 840))(KeyPath);

  swift_beginAccess();
  return v0[13];
}

uint64_t sub_1A410F2E0(uint64_t a1)
{
  sub_1A410F33C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A410F33C(uint64_t a1)
{
  if (!qword_1EB132808)
  {
    sub_1A410F394();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132808);
    }
  }
}