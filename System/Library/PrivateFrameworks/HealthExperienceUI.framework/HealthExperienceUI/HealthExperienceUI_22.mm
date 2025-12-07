uint64_t _s18HealthExperienceUI29DataTypeDetailDescriptionCellC4ItemV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v20 = a1[6];
  v21 = a1[7];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v18 = *(a2 + 64);
  v19 = a1[8];
  v16 = *(a2 + 72);
  v17 = *(a1 + 72);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v6 || v4 != v7) && (sub_1BA4A8338() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v3 != v8 || v5 != v9) && (sub_1BA4A8338() & 1) == 0 || (v20 != v10 || v21 != v11) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  if (v19)
  {
    if (!v18)
    {
      return 0;
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B580, 0x1E696AAB0);
    v12 = v18;
    v13 = v19;
    v14 = sub_1BA4A7798();

    if ((v14 & 1) == 0)
    {
      return 0;
    }

LABEL_22:
    if (v17 == 2)
    {
      if (v16 != 2)
      {
        return 0;
      }
    }

    else if (v16 == 2 || ((v16 ^ v17) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v18)
  {
    goto LABEL_22;
  }

  return 0;
}

unint64_t sub_1BA155140()
{
  result = qword_1EBBECAE0;
  if (!qword_1EBBECAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECAE0);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA1551B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA155200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA15534C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA1553B8()
{
  result = qword_1EDC64010;
  if (!qword_1EDC64010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64010);
  }

  return result;
}

id sub_1BA15540C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1BA15534C(0, &qword_1EDC5DBB8, sub_1BA1555D0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 40) = a3;
  *(inited + 48) = v8;
  *(inited + 56) = a4;
  v9 = v7;
  v10 = a3;
  v11 = v8;
  v12 = a4;
  v13 = sub_1B9FDBC04(inited);
  swift_setDeallocating();
  sub_1BA1555D0(0);
  swift_arrayDestroy();
  sub_1B9FECAB8(v13);

  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1BA4A6758();
  type metadata accessor for Key(0);
  sub_1B9F2AA14(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
  v16 = sub_1BA4A6618();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

void sub_1BA1555D0(uint64_t a1)
{
  if (!qword_1EDC5E3A0)
  {
    type metadata accessor for Key(255);
    sub_1B9F0ADF8(255, &qword_1EDC6E350, 0x1E69E58C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E3A0);
    }
  }
}

id static SectionedDataSourceCardStackConfiguration.alertsStack(with:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EBBE83F0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBECB08;
  v3 = unk_1EBBECB10;
  v5 = qword_1EDC5E838;

  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDC5E840;
  v6 = *algn_1EDC5E848;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v7;
  a2[3] = v6;
  a2[4] = sub_1BA0392BC;
  a2[5] = v8;

  return a1;
}

uint64_t SnapshotDataSource.asCardStack(config:showAllDataSource:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v52 = a4;
  v54 = a3;
  v51 = a2;
  v8 = sub_1BA4A1798();
  v50 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v64 = *a1;
  v65 = v13;
  v66 = a1[2];
  v62 = type metadata accessor for MultipleItemsCardStackCell();
  sub_1BA155F78(0, &qword_1EDC654A0, type metadata accessor for MultipleItemsCardStackCell);
  v14 = sub_1BA4A6808();
  v58 = v15;
  v59 = v14;
  v62 = 0xD00000000000001BLL;
  v63 = 0x80000001BA4EDCF0;
  sub_1BA4A1788();
  v16 = sub_1BA4A1748();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v12, v8);
  MEMORY[0x1BFAF1350](v16, v18);

  v56 = v63;
  v57 = v62;
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v23 = v51;
  *(v22 + 32) = v21;
  *(v22 + 40) = v23;
  *(v22 + 48) = v54;
  v24 = v65;
  *(v22 + 56) = v64;
  *(v22 + 72) = v24;
  *(v22 + 88) = v66;
  *&v60 = type metadata accessor for CardStackMoreButtonCell();

  swift_unknownObjectRetain();
  sub_1BA155F40(&v64, &v62);
  sub_1BA155F78(0, &qword_1EDC66CA8, type metadata accessor for CardStackMoreButtonCell);
  v25 = sub_1BA4A6808();
  v27 = v26;
  sub_1BA4A1788();
  v28 = sub_1BA4A1748();
  v30 = v29;
  v19(v12, v50);
  *(v20 + 32) = v28;
  *(v20 + 40) = v30;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0xE000000000000000;
  *(v20 + 64) = 0;
  *(v20 + 72) = 1;
  *(v20 + 80) = sub_1BA155F2C;
  *(v20 + 88) = v22;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  *(v20 + 112) = 0;
  sub_1B9F0E30C(0, 0);
  *(v20 + 97) = 0;
  *(v20 + 16) = v25;
  *(v20 + 24) = v27;

  v31 = swift_allocObject();
  v32 = MEMORY[0x1E69E7CC0];
  v31[4] = MEMORY[0x1E69E7CC0];
  v33 = sub_1B9F1C5F0(v32);
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v32;
  v31[5] = v33;

  v31[5] = Array<A>.identifierToIndexDict()(v32);

  v31[6] = 0xD000000000000015;
  v31[7] = 0x80000001BA4EDD10;
  v35 = type metadata accessor for MappedDataSource(0, v52, v53, v34);
  v36 = swift_allocObject();
  v37 = v65;
  *(v36 + 24) = v64;
  *(v36 + 16) = v31;
  *(v36 + 40) = v37;
  *(v36 + 56) = v66;
  v39 = v58;
  v38 = v59;
  *(v36 + 72) = v20;
  *(v36 + 80) = v38;
  v40 = v56;
  v41 = v57;
  *(v36 + 88) = v39;
  *(v36 + 96) = v41;
  *(v36 + 104) = v40;
  *&v60 = sub_1BA156BEC;
  *(&v60 + 1) = v36;
  v61 = 2;
  sub_1BA155F40(&v64, &v62);
  v42 = v55;
  swift_unknownObjectRetain();

  sub_1BA3718D4(v42, &v60, v43, v44);
  swift_unknownObjectRelease();
  SnapshotDataSource.withCellRegistration(_:)(sub_1BA1564E0, 0, v35, &protocol witness table for MutableArrayDataSource);

  v46 = type metadata accessor for CellRegistering(0, v35, &protocol witness table for MutableArrayDataSource, v45);
  v47 = SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)(0, sub_1BA156508, 0, v46, &protocol witness table for CellRegistering<A>);

  return v47;
}

uint64_t SectionedDataSourceCardStackConfiguration.moreItemsButtonTitleFormat.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SectionedDataSourceCardStackConfiguration.expandedModalTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SectionedDataSourceCardStackConfiguration.modalDisplayedCompletion.getter()
{
  v1 = *(v0 + 32);
  sub_1B9F0F1B4(v1, *(v0 + 40));
  return v1;
}

uint64_t SectionedDataSourceCardStackConfiguration.init(moreItemsButtonTitleFormat:expandedModalTitle:modalDisplayedCompletion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void sub_1BA155CEC(uint64_t a1)
{
  type metadata accessor for AlertStackModalPresentationManager();
  inited = swift_initStackObject();
  v3 = [objc_opt_self() healthAppDefaultsDomainWithHealthStore_];
  *(inited + 16) = v3;
  sub_1B9FFE318(0, 0);
}

uint64_t sub_1BA155D64()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECB08 = result;
  unk_1EBBECB10 = v1;
  return result;
}

uint64_t sub_1BA155DFC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC5E840 = result;
  *algn_1EDC5E848 = v1;
  return result;
}

uint64_t sub_1BA155E94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = a5[1];
    v11[0] = *a5;
    v11[1] = v10;
    v11[2] = a5[2];
    _s18HealthExperienceUI18SnapshotDataSourcePAAE024presentCardStackOriginaleF014viewController04dataF06configySo06UIViewL0CSg_AaB_pSgAA09SectionedefhI13ConfigurationVtF_0(a1, a3, a4, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA155F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1BA155FC8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v22 = v10[2];
    if (v22)
    {
      sub_1B9F0A534((v10 + 4), v56);

      if (v22 == 1)
      {
        sub_1B9F21C5C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1BA4B5480;
        sub_1B9F0A534(v56, v23 + 32);
        v24 = a3;
        swift_beginAccess();
        a3[4] = v23;

        a3[5] = Array<A>.identifierToIndexDict()(v23);
        swift_endAccess();

        sub_1B9FF6758();
        v25 = swift_allocObject();
      }

      else
      {
        v26 = MEMORY[0x1E69E6F90];
        sub_1B9F21C5C(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        v28 = MEMORY[0x1E69E6530];
        *(v27 + 16) = xmmword_1BA4B5480;
        v29 = MEMORY[0x1E69E65A8];
        *(v27 + 56) = v28;
        *(v27 + 64) = v29;
        *(v27 + 32) = v22 - 1;
        v30 = sub_1BA4A6768();
        v32 = v31;

        swift_beginAccess();
        *(a5 + 48) = v30;
        *(a5 + 56) = v32;

        sub_1B9F21C5C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], v26);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1BA4B9FD0;
        *(v33 + 56) = &type metadata for MultipleItemsCardStackItem;
        *(v33 + 64) = sub_1BA156FC0();
        v34 = swift_allocObject();
        *(v33 + 32) = v34;
        v34[2] = a6;
        v34[3] = a7;
        v34[4] = a8;
        v34[5] = a9;
        sub_1B9F0A534(v56, v33 + 72);
        swift_beginAccess();
        v35 = *(a5 + 96);
        v54[4] = *(a5 + 80);
        v54[5] = v35;
        v55 = *(a5 + 112);
        v36 = *(a5 + 32);
        v54[0] = *(a5 + 16);
        v54[1] = v36;
        v37 = *(a5 + 64);
        v54[2] = *(a5 + 48);
        v54[3] = v37;
        *(v33 + 136) = &type metadata for ButtonCollectionViewItem;
        *(v33 + 144) = sub_1BA0FF9A8();
        v38 = swift_allocObject();
        *(v33 + 112) = v38;
        v39 = *(a5 + 96);
        *(v38 + 80) = *(a5 + 80);
        *(v38 + 96) = v39;
        *(v38 + 112) = *(a5 + 112);
        v40 = *(a5 + 32);
        *(v38 + 16) = *(a5 + 16);
        *(v38 + 32) = v40;
        v41 = *(a5 + 64);
        *(v38 + 48) = *(a5 + 48);
        *(v38 + 64) = v41;
        v24 = a3;
        swift_beginAccess();
        a3[4] = v33;

        sub_1BA157084(v54, v53);

        a3[5] = Array<A>.identifierToIndexDict()(v33);
        swift_endAccess();

        sub_1B9FF6758();
        v25 = swift_allocObject();
      }

      *(v25 + 16) = xmmword_1BA4B5480;
      swift_beginAccess();
      v43 = v24[2];
      v42 = v24[3];
      v44 = v24[4];
      v45 = v24[5];
      v46 = v24[6];
      v47 = v24[7];
      *(v25 + 32) = v43;
      *(v25 + 40) = v42;
      *(v25 + 48) = v44;
      *(v25 + 56) = v45;
      *(v25 + 64) = v46;
      *(v25 + 72) = v47;

      __swift_destroy_boxed_opaque_existential_1(v56);
    }

    else
    {
    }

    return;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v11 = (a1 + 48);
  v12 = MEMORY[0x1E69A3310];
  while (1)
  {
    v13 = *v11;
    v14 = *(*v11 + 16);
    v15 = v10[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v10[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v10 = sub_1B9F281E8(isUniquelyReferenced_nonNull_native, v18, 1, v10);
      if (*(v13 + 16))
      {
LABEL_14:
        if ((v10[3] >> 1) - v10[2] < v14)
        {
          goto LABEL_27;
        }

        sub_1B9F0D9AC(0, &qword_1EDC6AD50, v12, 1);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v19 = v10[2];
          v20 = __OFADD__(v19, v14);
          v21 = v19 + v14;
          if (v20)
          {
            goto LABEL_28;
          }

          v10[2] = v21;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_26;
    }

LABEL_4:
    v11 += 6;
    if (!--v9)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

id sub_1BA156508()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v12[4] = xmmword_1EDC6D3C8;
  v12[5] = unk_1EDC6D3D8;
  v12[6] = xmmword_1EDC6D3E8;
  v12[7] = unk_1EDC6D3F8;
  v12[0] = xmmword_1EDC6D388;
  v12[1] = xmmword_1EDC6D398;
  v12[2] = xmmword_1EDC6D3A8;
  v12[3] = xmmword_1EDC6D3B8;
  v11 = *(&xmmword_1EDC6D388 + 8);
  v0 = *(&xmmword_1EDC6D398 + 1);
  v2 = xmmword_1EDC6D3A8;
  v1 = xmmword_1EDC6D3B8;
  v10 = qword_1EDC6D400;
  v8 = *&qword_1EDC6D3E0;
  v9 = *(&xmmword_1EDC6D3E8 + 8);
  v6 = *(&xmmword_1EDC6D3B8 + 8);
  v7 = *(&xmmword_1EDC6D3C8 + 8);
  sub_1B9F1D9A4(v12, v14);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  *&v13[8] = v11;
  *&v13[72] = v7;
  *&v13[88] = v8;
  *&v13[104] = v9;
  memset(&v13[24], 0, 32);
  *v13 = 0;
  *&v13[120] = v10;
  *&v13[56] = v6;
  sub_1BA0117AC();
  *&v14[64] = *&v13[64];
  *&v14[80] = *&v13[80];
  *&v14[96] = *&v13[96];
  *&v14[112] = *&v13[112];
  *v14 = *v13;
  *&v14[16] = *&v13[16];
  *&v14[32] = *&v13[32];
  *&v14[48] = *&v13[48];
  sub_1B9F1D9A4(v13, &v5);
  v3 = sub_1B9F293A8(v14);
  *&v14[8] = v11;
  memset(&v14[24], 0, 32);
  *&v14[72] = v7;
  *&v14[88] = v8;
  *&v14[104] = v9;
  *v14 = 0;
  *&v14[120] = v10;
  *&v14[56] = v6;
  sub_1B9F1DA58(v14);
  return v3;
}

char *sub_1BA1566A8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUIP33_769EF482A8E949D5E185D49C9A04EEB923AllAlertsViewController_cancellable] = 0;
  return CompoundDataSourceCollectionViewController.init(dataSource:)(a1);
}

uint64_t sub_1BA15678C()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentingViewController];

    v4 = UIViewController.resolvedHealthStore.getter();
    if (v4)
    {
LABEL_3:
      v5 = v4;
      v6 = [v4 profileIdentifier];

      [v6 type];
      v7 = HKStringFromProfileType();
      v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v10 = v9;

      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = UIViewController.resolvedHealthStore.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  v10 = 0;
LABEL_6:
  v14 = 1;
  if (!v10)
  {
    v8 = 7104878;
    v10 = 0xE300000000000000;
  }

  type metadata accessor for HealthAppAnalyticsManager();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(&v14, v3, v8, v10, v12);

  return sub_1BA10F728(v12);
}

void _s18HealthExperienceUI18SnapshotDataSourcePAAE024presentCardStackOriginaleF014viewController04dataF06configySo06UIViewL0CSg_AaB_pSgAA09SectionedefhI13ConfigurationVtF_0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && a2)
  {
    v7 = a4[4];
    v24 = a4[5];
    sub_1B9F1DEA0(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5480;
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;
    type metadata accessor for CompoundSectionedDataSource(0);
    swift_allocObject();
    swift_unknownObjectRetain_n();
    v9 = a1;
    CompoundSectionedDataSource.init(_:)(v8);
    v10 = objc_allocWithZone(type metadata accessor for AllAlertsViewController());
    *&v10[OBJC_IVAR____TtC18HealthExperienceUIP33_769EF482A8E949D5E185D49C9A04EEB923AllAlertsViewController_cancellable] = 0;

    v12 = CompoundDataSourceCollectionViewController.init(dataSource:)(v11);
    if (qword_1EDC6D380 != -1)
    {
      swift_once();
    }

    v35[4] = xmmword_1EDC6D3C8;
    v35[5] = unk_1EDC6D3D8;
    v35[6] = xmmword_1EDC6D3E8;
    v35[7] = unk_1EDC6D3F8;
    v35[0] = xmmword_1EDC6D388;
    v35[1] = xmmword_1EDC6D398;
    v35[2] = xmmword_1EDC6D3A8;
    v35[3] = xmmword_1EDC6D3B8;
    v25 = xmmword_1EDC6D388;
    v13 = *(&xmmword_1EDC6D398 + 1);
    v26 = xmmword_1EDC6D398;
    v15 = xmmword_1EDC6D3A8;
    v14 = xmmword_1EDC6D3B8;
    v30 = *(&xmmword_1EDC6D3C8 + 8);
    v31 = *&qword_1EDC6D3E0;
    v32 = *(&xmmword_1EDC6D3E8 + 8);
    v33 = qword_1EDC6D400;
    v29 = *(&xmmword_1EDC6D3B8 + 8);
    sub_1B9F1D9A4(v35, aBlock);
    sub_1B9F1DA18(v13, v15, *(&v15 + 1), v14);
    sub_1BA0117AC();
    v27 = 0u;
    v28 = 0u;
    v16 = sub_1B9F293A8(&v25);
    v17 = [objc_allocWithZone(MEMORY[0x1E69DC808]) initWithSection_];

    v18 = [v12 collectionView];
    if (v18)
    {
      v19 = v18;
      [v18 setCollectionViewLayout:v17 animated:0];

      v20 = objc_allocWithZone(MEMORY[0x1E69A4418]);
      v21 = v12;
      v22 = [v20 initWithRootViewController_];
      v23 = sub_1BA4A6758();
      [v21 setTitle_];

      [v22 setModalPresentationStyle_];
      if (v7)
      {
        aBlock[4] = v7;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B9F0B040;
        aBlock[3] = &block_descriptor_33;
        v7 = _Block_copy(aBlock);
      }

      [v9 presentViewController:v22 animated:1 completion:{v7, v24}];
      _Block_release(v7);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1BA156FC0()
{
  result = qword_1EBBECB20;
  if (!qword_1EBBECB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECB20);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

UIBarButtonItem_optional __swiftcall TapToRadarButtonDisplaying.makeTapToRadarButtonIfNeeded()()
{
  v1 = v0;
  if (qword_1EDC648D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TapToRadarVisibilityManager(0);
  __swift_project_value_buffer(v2, qword_1EDC648D8);
  if ([objc_opt_self() isAppleInternalInstall] && (sub_1B9F140B4(), sub_1BA4A1CA8(), (v8 & 1) == 0))
  {
    v5 = sub_1BA4A6758();
    v6 = [objc_opt_self() systemImageNamed_];

    v7 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v6 style:0 target:sub_1BA4A8328() action:{sel_ttrButtonTapped, v1}];
    swift_unknownObjectRelease();
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  result.value.super.super.isa = v4;
  result.is_nil = v3;
  return result;
}

void TapToRadarButtonDisplaying<>.showDisambiguationTriageAlert(featureName:userConfirmed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4EBE50);
  MEMORY[0x1BFAF1350](a1, a2);
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4EBE70);
  v8 = sub_1BA4A6758();
  v9 = sub_1BA4A6758();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1BA4A6758();
  v29 = sub_1B9F7B0D4;
  v30 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_34;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  v16 = sub_1BA4A6758();
  v29 = sub_1BA157770;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_3_0;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v10 addAction_];
  v19 = sub_1BA4A6758();
  v29 = sub_1BA157958;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_6_3;
  v20 = _Block_copy(&aBlock);

  v21 = [v14 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v10 addAction_];
  v22 = sub_1BA4A6758();
  v23 = [v14 actionWithTitle:v22 style:1 handler:0];

  [v10 addAction_];
  [v24 presentViewController:v10 animated:1 completion:0];
}

uint64_t TapToRadarVisibilityManager.shouldShowTapToRadarButtons.getter()
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_1B9F140B4();
    sub_1BA4A1CA8();
    v0 = v2 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t static TapToRadarVisibilityManager.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC648D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TapToRadarVisibilityManager(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDC648D8);

  return sub_1BA157AF4(v3, a1);
}

uint64_t sub_1BA157770()
{
  v0 = sub_1BA4A15D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = sub_1BA4A6758();
  sub_1BA0B5A7C();
  v7 = sub_1BA4A6AE8();
  v8 = [v5 hk:v6 tapToHealthRadarURLWithTitle:0 description:0 classification:0 reproducibility:v7 keywords:2 autoDiagnostics:0 attachments:?];

  sub_1BA4A1588();
  v9 = [objc_opt_self() defaultWorkspace];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BA4A1548();
    sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
    v12 = sub_1BA4A6618();

    [v10 openSensitiveURL:v11 withOptions:v12];
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_1BA157958()
{
  sub_1BA011090(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    sub_1BA4A15C8();
    v6 = sub_1BA4A15D8();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v3, 1, v6) == 1)
    {
      __break(1u);
    }

    else
    {
      v8 = sub_1BA4A1548();
      (*(v7 + 8))(v3, v6);
      sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
      v9 = sub_1BA4A6618();

      [v5 openSensitiveURL:v8 withOptions:v9];
    }
  }
}

uint64_t sub_1BA157AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarVisibilityManager(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall HeaderWithSubtitleAndRightGlyphView.ViewModel.init(header:subtitle:glyphName:)(HealthExperienceUI::HeaderWithSubtitleAndRightGlyphView::ViewModel *__return_ptr retstr, Swift::String header, Swift::String subtitle, Swift::String glyphName)
{
  retstr->header = header;
  retstr->subtitle = subtitle;
  retstr->glyphName = glyphName;
}

id HeaderWithSubtitleAndRightGlyphView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *HeaderWithSubtitleAndRightGlyphView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_headerLabel;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v56 = objc_opt_self();
  v17 = [v56 labelColor];
  [v16 setTextColor_];

  [v16 setAdjustsFontForContentSizeCategory_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
  [v16 setFont_];

  *&v5[v15] = v16;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = *MEMORY[0x1E69DDD00];
  v21 = objc_opt_self();
  v22 = [v21 preferredFontDescriptorWithTextStyle:v20 compatibleWithTraitCollection:0];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
  }

  else
  {
    v54 = v11;
    v55 = v10;
    sub_1BA4A3DD8();
    v25 = v20;
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v59 = v29;
      *v28 = 136315906;
      v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      HIDWORD(v52) = v27;
      v32 = sub_1B9F0B82C(v30, v31, &v59);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v57 = 0;
      v58 = 1;
      sub_1BA1508E8(0);
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v59);

      *(v28 + 14) = v35;
      *(v28 + 22) = 2080;
      LODWORD(v57) = 0;
      type metadata accessor for SymbolicTraits(0);
      v36 = sub_1BA4A6808();
      v38 = sub_1B9F0B82C(v36, v37, &v59);

      *(v28 + 24) = v38;
      *(v28 + 32) = 2112;
      v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v28 + 34) = v39;
      v40 = v53;
      *v53 = v39;
      _os_log_impl(&dword_1B9F07000, v26, BYTE4(v52), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v28, 0x2Au);
      sub_1B9F8C6C8(v40);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    (*(v54 + 8))(v14, v55);
    v41 = [v21 preferredFontDescriptorWithTextStyle_];
    v24 = [objc_opt_self() fontWithDescriptor:v41 size:0.0];
  }

  v42 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_subtitleLabel;
  [v19 setFont_];

  v43 = [v56 secondaryLabelColor];
  [v19 setTextColor_];

  [v19 setAdjustsFontForContentSizeCategory_];
  *&v5[v42] = v19;
  v44 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_glyphImageView;
  v45 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  [v45 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v46 = [objc_opt_self() configurationWithScale_];
  [v45 setPreferredSymbolConfiguration_];

  *&v5[v44] = v45;
  v47 = type metadata accessor for HeaderWithSubtitleAndRightGlyphView();
  v60.receiver = v5;
  v60.super_class = v47;
  v48 = objc_msgSendSuper2(&v60, sel_initWithFrame_, a1, a2, a3, a4);
  v49 = *&v48[OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_headerLabel];
  v50 = v48;
  [v50 addSubview_];
  [v50 addSubview_];
  [v50 addSubview_];
  sub_1BA158284();

  return v50;
}

void sub_1BA158284()
{
  v38 = objc_opt_self();
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B79D0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_headerLabel];
  v3 = [v2 leadingAnchor];
  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v1 + 40) = v8;
  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_glyphImageView];
  v10 = [v9 leadingAnchor];
  v11 = [v2 trailingAnchor];
  v12 = [v10 constraintGreaterThanOrEqualToAnchor:v11 constant:5.0];

  *(v1 + 48) = v12;
  v13 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_subtitleLabel];
  v14 = [v13 topAnchor];
  v15 = [v2 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:5.0];

  *(v1 + 56) = v16;
  v17 = [v13 leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v1 + 64) = v19;
  v20 = [v0 bottomAnchor];
  v21 = [v13 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v1 + 72) = v22;
  v23 = [v9 leadingAnchor];
  v24 = [v13 trailingAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24 constant:5.0];

  *(v1 + 80) = v25;
  v26 = [v9 trailingAnchor];
  v27 = [v0 trailingAnchor];
  v28 = [v26 &selRef:v27 numberWithInteger:? + 5];

  *(v1 + 88) = v28;
  v29 = [v9 centerYAnchor];
  v30 = [v0 centerYAnchor];
  v31 = [v29 &selRef:v30 numberWithInteger:? + 5];

  *(v1 + 96) = v31;
  v32 = [v9 topAnchor];
  v33 = [v0 topAnchor];
  v34 = [v32 constraintGreaterThanOrEqualToAnchor_];

  *(v1 + 104) = v34;
  v35 = [v0 bottomAnchor];
  v36 = [v9 bottomAnchor];
  v37 = [v35 constraintGreaterThanOrEqualToAnchor_];

  *(v1 + 112) = v37;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v39 = sub_1BA4A6AE8();

  [v38 activateConstraints_];
}

void sub_1BA158790(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  v40 = v13;
  v41 = v9;
  sub_1BA4A3DD8();

  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FC8();

  v39 = v16;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v2;
    v18 = v17;
    v35 = swift_slowAlloc();
    v48 = v35;
    *v18 = 136315394;
    v19 = sub_1BA4A85D8();
    ObjectType = v5;
    v21 = sub_1B9F0B82C(v19, v20, &v48);
    v36 = v4;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v42 = v41;
    v43 = v10;
    v44 = v12;
    v45 = v11;
    v46 = v40;
    v47 = v14;

    v23 = sub_1BA4A6808();
    v25 = sub_1B9F0B82C(v23, v24, &v48);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_1B9F07000, v15, v39, "[%s] Updating view with view model: %s", v18, 0x16u);
    v26 = v35;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    v27 = v18;
    v2 = v37;
    MEMORY[0x1BFAF43A0](v27, -1, -1);

    (*(ObjectType + 8))(v8, v36);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v28 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_headerLabel);
  v29 = sub_1BA4A6758();
  [v28 setText_];

  v30 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_subtitleLabel);
  v31 = sub_1BA4A6758();
  [v30 setText_];

  v32 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_glyphImageView);
  v33 = sub_1BA4A6758();
  v34 = [objc_opt_self() systemImageNamed_];

  [v32 setImage_];
}

id HeaderWithSubtitleAndRightGlyphView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderWithSubtitleAndRightGlyphView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA158C08()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_headerLabel;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v43 = objc_opt_self();
  v9 = [v43 labelColor];
  [v8 setTextColor_];

  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
  [v8 setFont_];

  *(v1 + v7) = v8;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = *MEMORY[0x1E69DDD00];
  v13 = objc_opt_self();
  v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
  }

  else
  {
    v41 = v2;
    v42 = v3;
    sub_1BA4A3DD8();
    v17 = v12;
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46 = v40;
      *v20 = 136315906;
      v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v23 = sub_1B9F0B82C(v21, v22, &v46);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v44 = 0;
      v45 = 1;
      sub_1BA1508E8(0);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v46);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2080;
      LODWORD(v44) = 0;
      type metadata accessor for SymbolicTraits(0);
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, &v46);

      *(v20 + 24) = v29;
      *(v20 + 32) = 2112;
      v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v20 + 34) = v30;
      v31 = v39;
      *v39 = v30;
      _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
      sub_1B9F8C6C8(v31);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      v32 = v40;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v42 + 8))(v6, v41);
    v33 = [v13 preferredFontDescriptorWithTextStyle_];
    v16 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
  }

  v34 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_subtitleLabel;
  [v11 setFont_];

  v35 = [v43 secondaryLabelColor];
  [v11 setTextColor_];

  [v11 setAdjustsFontForContentSizeCategory_];
  *(v1 + v34) = v11;
  v36 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_glyphImageView;
  v37 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  [v37 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v38 = [objc_opt_self() configurationWithScale_];
  [v37 setPreferredSymbolConfiguration_];

  *(v1 + v36) = v37;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA1591BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A7C48();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1BA15B4D4(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_1BA4A1D08();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void *sub_1BA159278(uint64_t a1)
{
  v2 = sub_1BA4A7C48();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1BA15B594(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1BA159320(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1BA4A7C78();
    v9 = v8;
    v10 = sub_1BA4A7D18();
    v12 = v11;
    v13 = MEMORY[0x1BFAF26D0](v7, v9, v10, v11);
    sub_1BA0477A4(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_1BA0477A4(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = sub_1BA4A7C48();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1BA15B2BC(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_1BA0477A4(v7, v9, v6 != 0);
  return v16;
}

double sub_1BA159454@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26 = a3;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v14 = *(v9 + 16);
  v14(v12, v4 + v13, v8);
  v25 = a1;
  v27 = a1;
  v28 = a2;
  v15 = a2;
  sub_1BA4A44E8();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v12, v8);
  if (v17)
  {
    v19 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_3:
      v20 = v19[4];
      v21 = v19[5];

      sub_1B9F3AB98(v20, v21, v26);

      return result;
    }
  }

  else
  {
    v14(v12, v4 + v13, v8);
    v27 = v25;
    v28 = v15;
    v19 = sub_1BA4A4528();
    v18(v12, v8);
    if (v19[2])
    {
      goto LABEL_3;
    }
  }

  v23 = v26;
  *(v26 + 32) = 0;
  result = 0.0;
  *v23 = 0u;
  v23[1] = 0u;
  return result;
}

uint64_t FavoritableFeedItemsDataSource.init(sourceProfiles:managedObjectContext:pinnedContentManager:favoriteStatusFilter:searchQuery:separateByCategory:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = sub_1BA15B73C(a1, a2, a3, a4, a5, a6);

  return v8;
}

uint64_t FavoritableFeedItemsDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

double sub_1BA159798()
{
  sub_1B9FF5828();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F405E0(v0, v1);

  return result;
}

uint64_t FavoritableFeedItemsDataSource.__allocating_init(sourceProfiles:managedObjectContext:pinnedContentManager:favoriteStatusFilter:searchQuery:separateByCategory:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  swift_allocObject();
  v12 = sub_1BA15B73C(a1, a2, a3, a4, a5, v6);

  return v12;
}

uint64_t FavoritableFeedItem.uniqueIdentifier.getter()
{
  v1 = [*(v0 + 40) uniqueIdentifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0x7469726F7661665FLL, 0xEC000000656C6261);
  return v2;
}

uint64_t FavoritableFeedItem.hash(into:)(uint64_t a1)
{
  sub_1BA4A77A8();
  sub_1BA4A84A8();
  sub_1BA4A84A8();
  sub_1BA4A68C8();
  if (!*(v1 + 80))
  {
    return sub_1BA4A84A8();
  }

  sub_1BA4A84A8();

  return sub_1BA4A68C8();
}

uint64_t FavoritableFeedItem.pinnedContentManager.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1B9F1134C(a1, v1);
}

uint64_t FavoritableFeedItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t FavoritableFeedItem.baseIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void FavoritableFeedItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t FavoritableFeedItem.init(feedItem:cellClass:pinnedContentManager:showReorderingHandle:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 72) = 0;
  *(a6 + 80) = 0;
  *(a6 + 40) = a1;
  sub_1B9F0A534(a4, a6);
  v12 = a1;
  sub_1BA4A2748();
  *(a6 + 48) = sub_1BA4A2728() & 1;
  *(a6 + 49) = a5;
  *(a6 + 56) = (*(*(a3 + 8) + 8))(a2);
  *(a6 + 64) = v13;
  v14 = sub_1BA4A2758();

  v15 = sub_1BA159320(v14, &qword_1EDC6E920, 0x1E696C2E0);

  if (v15)
  {
    v16 = [v15 identifier];

    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;

    sub_1B9F217BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BA4B9FD0;
    *(v20 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    *(v20 + 40) = v21;
    strcpy((v20 + 48), "FavoritesEdit");
    *(v20 + 62) = -4864;
    *(v20 + 64) = v17;
    *(v20 + 72) = v19;
    v22 = sub_1BA4A6AE8();

    v23 = HKUIJoinStringsForAutomationIdentifier();

    if (v23)
    {
      v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    result = __swift_destroy_boxed_opaque_existential_1(a4);
    *(a6 + 72) = v24;
    *(a6 + 80) = v26;
  }

  else
  {

    return __swift_destroy_boxed_opaque_existential_1(a4);
  }

  return result;
}

id FavoritableFeedItem.favoritesCategoryImage.getter()
{
  v0 = sub_1BA4A2648();
  v1 = [v0 systemImage];

  return v1;
}

uint64_t sub_1BA159DC8(SEL *a1)
{
  v2 = [*(v1 + 40) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v4;
}

uint64_t sub_1BA159E58(SEL *a1, const char *a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v5, v7).n128_u64[0];
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(v2 + 40) *a1];
  if (v11)
  {
    v12 = v11;
    v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v13 = 0x6E776F6E6B6E55;
    sub_1BA4A3D68();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B9F07000, v14, v15, a2, v16, 2u);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
  }

  return v13;
}

uint64_t FavoritableFeedItem.hashValue.getter()
{
  sub_1BA4A8488();
  FavoritableFeedItem.hash(into:)(v1);
  return sub_1BA4A84D8();
}

id sub_1BA15A050()
{
  v0 = sub_1BA4A2648();
  v1 = [v0 systemImage];

  return v1;
}

uint64_t sub_1BA15A0E0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(v3 + 40) *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v6;
}

uint64_t sub_1BA15A144()
{
  sub_1BA4A8488();
  FavoritableFeedItem.hash(into:)(v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA15A188(uint64_t a1)
{
  sub_1BA4A8488();
  FavoritableFeedItem.hash(into:)(v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA15A1C4()
{
  v1 = *(v0 + 72);

  return v1;
}

void sub_1BA15A1F4(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_1BA15A22C()
{
  v1 = [*(v0 + 40) uniqueIdentifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0x7469726F7661665FLL, 0xEC000000656C6261);
  return v2;
}

uint64_t sub_1BA15A2B0(uint64_t a1)
{
  v2 = sub_1BA15BD08();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA15A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v72 - v15;
  sub_1B9F0A534(a1, v73);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1BA4A27B8();
  if (!swift_dynamicCast())
  {
    sub_1BA4A3DD8();
    sub_1B9F0A534(a1, v73);
    v28 = sub_1BA4A3E88();
    v29 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v79 = v31;
      *v30 = 136446466;
      v32 = sub_1BA4A85D8();
      v34 = sub_1B9F0B82C(v32, v33, &v79);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      sub_1B9F0A534(v73, v78);
      v35 = sub_1BA4A6808();
      v37 = v36;
      __swift_destroy_boxed_opaque_existential_1(v73);
      v38 = sub_1B9F0B82C(v35, v37, &v79);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_1B9F07000, v28, v29, "[%{public}s)]: Incorrect viewmodel; expected FeedItem, got: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    (*(v9 + 8))(v12, v8);
    return MEMORY[0x1E69E7CC0];
  }

  v17 = v78[0];
  v18 = [v78[0] localizedTitle];
  if (!v18)
  {
    sub_1BA4A3DD8();
    sub_1B9F0A534(a1, v73);
    v57 = sub_1BA4A3E88();
    v58 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v79 = v60;
      *v59 = 136446466;
      v61 = sub_1BA4A85D8();
      v63 = sub_1B9F0B82C(v61, v62, &v79);
      v72 = v8;
      v64 = v63;

      *(v59 + 4) = v64;
      *(v59 + 12) = 2082;
      sub_1B9F0A534(v73, v78);
      v65 = sub_1BA4A6808();
      v67 = v66;
      __swift_destroy_boxed_opaque_existential_1(v73);
      v68 = sub_1B9F0B82C(v65, v67, &v79);

      *(v59 + 14) = v68;
      _os_log_impl(&dword_1B9F07000, v57, v58, "[%{public}s)]: Incorrect viewmodel; expected FeedItem with localizedTitle, got: %{public}s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v60, -1, -1);
      MEMORY[0x1BFAF43A0](v59, -1, -1);

      (*(v9 + 8))(v16, v72);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v73);
      (*(v9 + 8))(v16, v8);
    }

LABEL_21:

    return MEMORY[0x1E69E7CC0];
  }

  v19 = v18;
  v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v22 = v21;

  v23 = *(a3 + 24);
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = *(a3 + 16);
  v25 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v25 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
LABEL_13:

    v27 = 1;
    goto LABEL_14;
  }

  *&v73[0] = v20;
  *(&v73[0] + 1) = v22;
  v78[0] = v24;
  v78[1] = v23;
  sub_1B9F252FC();
  v26 = sub_1BA4A7B68();

  if ((v26 & 1) == 0)
  {
    goto LABEL_21;
  }

  v27 = 0;
LABEL_14:
  sub_1BA15BC20(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BA4B5480;
  sub_1B9F0A534(a4, v78);
  *(v39 + 56) = &type metadata for FavoritableFeedItem;
  *(v39 + 64) = sub_1BA15BC8C();
  v40 = swift_allocObject();
  v41 = v39;
  *(v39 + 32) = v40;
  *(&v76 + 1) = 0;
  v77 = 0;
  *(&v74 + 1) = v17;
  sub_1B9F0A534(v78, v73);
  v42 = v17;
  sub_1BA4A2748();
  LOBYTE(v75) = sub_1BA4A2728() & 1;
  BYTE1(v75) = v27;
  v79 = type metadata accessor for EditFavoritesCollectionViewCell();
  sub_1BA15BFB8();
  *(&v75 + 1) = sub_1BA4A6808();
  *&v76 = v43;
  v44 = sub_1BA4A2758();
  v45 = sub_1BA159320(v44, &qword_1EDC6E920, 0x1E696C2E0);

  if (v45)
  {
    v46 = [v45 identifier];

    v47 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v49 = v48;

    sub_1B9F217BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1BA4B9FD0;
    *(v50 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    *(v50 + 40) = v51;
    strcpy((v50 + 48), "FavoritesEdit");
    *(v50 + 62) = -4864;
    *(v50 + 64) = v47;
    *(v50 + 72) = v49;
    v52 = sub_1BA4A6AE8();

    v53 = HKUIJoinStringsForAutomationIdentifier();

    if (v53)
    {
      v54 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v78);
    *(&v76 + 1) = v54;
    v77 = v56;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v78);
  }

  v70 = v75;
  *(v40 + 48) = v74;
  *(v40 + 64) = v70;
  *(v40 + 80) = v76;
  *(v40 + 96) = v77;
  v71 = v73[1];
  *(v40 + 16) = v73[0];
  *(v40 + 32) = v71;

  return v41;
}

uint64_t sub_1BA15AA44@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v63 = sub_1BA4A3EA8();
  v7 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v12 = v11;
  v13 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v13 + 16))(v16, v3 + v17, v12);
  v18 = sub_1BA4A4578();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v20(v16, v12);
  v21 = sub_1BA4A1968();
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v21 >= *(v18 + 16))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = 0xD00000000000001DLL;
  v23 = v18 + 16 * v21;
  v12 = *(v23 + 32);
  a1 = *(v23 + 40);

  v22.n128_f64[0] = sub_1BA159454(v12, a1, v70);
  if (!v71)
  {
LABEL_19:
    sub_1BA15BBB0(v70, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], v22);
    v24 = 0uLL;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    goto LABEL_21;
  }

  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1B9F0D950(0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v75 = 0;
    v24 = 0uLL;
    v73 = 0u;
    v74 = 0u;
    goto LABEL_21;
  }

  if (*(&v74 + 1))
  {
    sub_1B9F1134C(&v73, v76);
    v25 = v77;
    v26 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v27 = (*(v26 + 40))(v25, v26);
    if (v27)
    {
      v12 = v27;
      v28 = v77;
      v29 = v78;
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v30 = (*(v29 + 88))(v28, v29);
      if (v31)
      {
        v32 = v30;
        v33 = v31;

LABEL_15:
        a2[3] = &type metadata for HeaderWithIconItem;
        a2[4] = sub_1B9FE8F38();
        v59 = swift_allocObject();
        *a2 = v59;
        v59[2] = 0xD000000000000024;
        v59[3] = 0x80000001BA4EA100;
        v59[4] = v32;
        v59[5] = v33;
        v59[6] = v12;
        v59[7] = 0;
        v59[8] = 0;
        v59[9] = 0;
        return __swift_destroy_boxed_opaque_existential_1(v76);
      }
    }

    sub_1BA4A3DD8();
    sub_1B9F0A534(v76, &v73);
    sub_1B9F0A534(v76, v70);
    sub_1B9F0A534(v76, v67);
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v66 = v62;
      *v36 = 136315906;
      v64 = v6;
      swift_getMetatypeMetadata();
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, &v66);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
      v40 = sub_1BA4A2D58();
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1(&v73);
      v43 = sub_1B9F0B82C(v40, v42, &v66);

      *(v36 + 14) = v43;
      *(v36 + 22) = 2080;
      v45 = v71;
      v44 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      v64 = (*(v44 + 88))(v45, v44);
      v65 = v46;
      sub_1B9F217BC(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v47 = sub_1BA4A6808();
      v49 = v48;
      __swift_destroy_boxed_opaque_existential_1(v70);
      v50 = sub_1B9F0B82C(v47, v49, &v66);

      *(v36 + 24) = v50;
      *(v36 + 32) = 2080;
      v51 = v68;
      v52 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v64 = (*(v52 + 40))(v51, v52);
      sub_1B9F3C928(0);
      v53 = sub_1BA4A6808();
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_1(v67);
      v56 = sub_1B9F0B82C(v53, v55, &v66);
      v19 = 0xD00000000000001DLL;

      *(v36 + 34) = v56;
      _os_log_impl(&dword_1B9F07000, v34, v35, "[%s]: FeedItem does not have a category title or image: %s, %s, %s", v36, 0x2Au);
      v57 = v62;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v57, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);

      (*(v7 + 8))(v10, v63);
    }

    else
    {

      (*(v7 + 8))(v10, v63);
      __swift_destroy_boxed_opaque_existential_1(&v73);
      __swift_destroy_boxed_opaque_existential_1(v70);
      __swift_destroy_boxed_opaque_existential_1(v67);
    }

    v58 = sub_1BA4A6758();
    v12 = [objc_opt_self() systemImageNamed_];

    if (v12)
    {

      v32 = 0;
      v33 = 0xE000000000000000;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_21:
  sub_1BA15BBB0(&v73, &qword_1EBBE9BB0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying, v24);
  v76[0] = 0;
  v76[1] = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](v19 + 25, 0x80000001BA4EDFB0);
  MEMORY[0x1BFAF1350](v12, a1);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t FavoritableFeedItemsDataSource.__deallocating_deinit()
{
  FavoritableFeedItemsDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA15B2BC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1BFAF2720](a1, a2, v11);
      sub_1B9F0ADF8(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1B9F0ADF8(0, a5, a6);
    if (sub_1BA4A7CA8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1BA4A7CB8();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_1BA4A7788();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_1BA4A7798();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_1BA15B4D4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1BA4A1D08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void *sub_1BA15B594(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s18HealthExperienceUI19FavoritableFeedItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  v14 = v6;
  MEMORY[0x1BFAF1350](0x7469726F7661665FLL, 0xEC000000656C6261);
  v7 = v4;
  v8 = [*(a2 + 40) uniqueIdentifier];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  MEMORY[0x1BFAF1350](0x7469726F7661665FLL, 0xEC000000656C6261);
  if (v7 == v9 && v14 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1BA4A8338();
  }

  return v12 & 1;
}

uint64_t sub_1BA15B73C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v32 = *v6;
  *(v6 + qword_1EBC095A0) = a1;
  sub_1BA4A27B8();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  sub_1BA4A2388();
  v10 = sub_1BA4A2578();

  v11 = v10;
  v12 = sub_1BA4A26C8();

  sub_1B9F217BC(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B7510;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v15 = sub_1BA4A6758();
  v16 = [v14 initWithKey:v15 ascending:1];

  *(v13 + 32) = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v18 = sub_1BA4A6758();
  v19 = [v17 initWithKey:v18 ascending:1 selector:sel_localizedStandardCompare_];

  *(v13 + 40) = v19;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v20 = sub_1BA4A6AE8();

  [v12 setSortDescriptors_];

  v21 = a2;
  v22 = v12;
  if (a6)
  {
    v23 = sub_1BA4A6758();
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v12 managedObjectContext:a2 sectionNameKeyPath:v23 cacheName:0];

  sub_1B9F126E0(0);
  v26 = objc_allocWithZone(v25);
  v27 = v24;
  v28 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v27);
  sub_1B9F0A534(a3, v34);
  v29 = swift_allocObject();
  *(v29 + 16) = a5;
  sub_1B9F1134C(v34, v29 + 24);
  *(v29 + 64) = v32;

  v30 = sub_1B9F17A68(v28, sub_1BA0D8EF8, v29, 0);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v30;
}

uint64_t sub_1BA15BBB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, __n128 a5)
{
  sub_1BA15BC20(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA15BC20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA15BC8C()
{
  result = qword_1EDC67DC8;
  if (!qword_1EDC67DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67DC8);
  }

  return result;
}

unint64_t sub_1BA15BCE0(uint64_t a1)
{
  result = sub_1BA15BD08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA15BD08()
{
  result = qword_1EDC6D4B8;
  if (!qword_1EDC6D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D4B8);
  }

  return result;
}

unint64_t sub_1BA15BD60()
{
  result = qword_1EBBECB40;
  if (!qword_1EBBECB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECB40);
  }

  return result;
}

uint64_t sub_1BA15BDB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1BA15BDFC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t type metadata accessor for FavoritableFeedItemsDataSource(uint64_t a1)
{
  result = qword_1EBBECB48;
  if (!qword_1EBBECB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA15BFB8()
{
  result = qword_1EBBE9E08;
  if (!qword_1EBBE9E08)
  {
    type metadata accessor for EditFavoritesCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E08);
  }

  return result;
}

void sub_1BA15C010(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B9F264E0();
  swift_beginAccess();
  v8 = *(v4 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a4;
  aBlock[4] = sub_1B9F8C0CC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_35;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  [v11 notifyObservers_];
  _Block_release(v10);

  v12 = (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesSharingWithYouDataSource) + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v13 = *v12 == a1 && v12[1] == a2;
  if (v13 || (sub_1BA4A8338() & 1) != 0 || ((v14 = (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesYouAreSharingWithDataSource) + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier), *v14 == a1) ? (v15 = v14[1] == a2) : (v15 = 0), v15 || (sub_1BA4A8338() & 1) != 0))
  {
    sub_1BA15C358();
  }

  else
  {
    v16 = (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_errorDataSource) + qword_1EDC84AD0);
    if (*v16 == a1 && v16[1] == a2 || (sub_1BA4A8338() & 1) != 0)
    {
      sub_1B9F12538();
      v17 = sub_1BA4A44B8() > 0;
      sub_1BA15C8E4(v17);
    }
  }
}

double sub_1BA15C358()
{
  v1 = v0;
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v49 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesSharingWithYouDataSource);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v14 = *(v4 + 16);
  v14(v11, v12 + v13, v3);
  v15 = sub_1BA4A4538();
  v16 = *(v4 + 8);
  v16(v11, v3);
  v58 = *(v15 + 16);

  v59 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesYouAreSharingWithDataSource);
  v18 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v14(v7, v17 + v18, v3);
  v19 = sub_1BA4A4578();
  v16(v7, v3);
  v20 = *(v19 + 16);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  if (!v20)
  {
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v22 = 0;
  v23 = v19 + 40;
  v56 = v20 - 1;
  v24 = MEMORY[0x1E69E7CC0];
  v57 = v19 + 40;
  do
  {
    v25 = (v23 + 16 * v22);
    v26 = v22;
    while (1)
    {
      if (v26 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v27 = *(v17 + v21);
      if (*(v27 + 16))
      {
        break;
      }

LABEL_4:
      ++v26;
      v25 += 2;
      if (v20 == v26)
      {
        goto LABEL_17;
      }
    }

    v28 = *(v25 - 1);
    v29 = *v25;

    v30 = sub_1B9F24A34(v28, v29);
    if ((v31 & 1) == 0)
    {

      goto LABEL_4;
    }

    v32 = (*(v27 + 56) + 48 * v30);
    v34 = *v32;
    v33 = v32[1];
    v35 = v32[2];
    v50 = v32[3];
    v51 = v34;
    v36 = v32[5];
    v53 = v32[4];
    v54 = v33;

    v55 = v35;
    v37 = v50;

    v52 = v36;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v38 = v51;
    }

    else
    {
      v38 = v51;
      v24 = sub_1B9F21540(0, *(v24 + 2) + 1, 1, v24);
    }

    v40 = *(v24 + 2);
    v39 = *(v24 + 3);
    if (v40 >= v39 >> 1)
    {
      v24 = sub_1B9F21540((v39 > 1), v40 + 1, 1, v24);
    }

    v22 = v26 + 1;
    *(v24 + 2) = v40 + 1;
    v41 = &v24[48 * v40];
    v43 = v54;
    v42 = v55;
    *(v41 + 4) = v38;
    *(v41 + 5) = v43;
    *(v41 + 6) = v42;
    *(v41 + 7) = v37;
    v44 = v52;
    *(v41 + 8) = v53;
    *(v41 + 9) = v44;
    v23 = v57;
  }

  while (v56 != v26);
LABEL_17:

  v45 = sub_1BA00A2A0(v24);

  if (v45 >> 62)
  {
LABEL_26:
    v46 = sub_1BA4A7CC8();
  }

  else
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v58)
  {
    sub_1BA1EC154(v46 < 1);
    sub_1BA1EC38C(0);
  }

  else
  {
    if (v46 < 1)
    {
      sub_1BA1EC154(1);
      v47 = 0;
    }

    else
    {
      sub_1BA1EC154(0);
      v47 = 1;
    }

    return sub_1BA15C798(1, v47);
  }

  return result;
}

double sub_1BA15C798(char a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_sharingWithYouLearnMoreDataSource);
  sub_1BA1EC38C(a1 & 1);
  if (v4 != 2)
  {
    v7 = *(*v5 + 112);
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v8 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_shouldDisplayRequestItem) = a2 & 1;
    if (a2)
    {
      sub_1B9F1B4AC(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BA4B5480;
      v10 = *(v8 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_item);
      *(v9 + 56) = type metadata accessor for RequestNewSharingRelationshipItem();
      *(v9 + 64) = sub_1BA15D2B0();
      *(v9 + 32) = v10;

      sub_1BA0EB668(0, v9, 1);
    }

    else
    {

      sub_1BA0EB668(0, MEMORY[0x1E69E7CC0], 1);
    }
  }

  return result;
}

void sub_1BA15C8E4(char a1)
{
  v2 = v1;
  sub_1B9F12538();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1 & 1;
  if (a1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesSharingWithYouDataSource);
  v9 = *(*v8 + 512);
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v10 + 32) = v7;
  v11 = *(v8 + qword_1EDC84BB8);
  v12 = *(v8 + *(*v8 + 520));
  v13 = *(v8 + qword_1EDC64EB0);
  v14 = *(v8 + qword_1EDC64EB0 + 8);
  v15 = *(v8 + qword_1EDC64EB0 + 16);

  v16 = v11;
  sub_1BA1A217C(v16, v10, v12, v13, v14, v15);
  v18 = v17;

  sub_1BA0E7F10(v18, 1);

  v19 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesYouAreSharingWithDataSource);
  v20 = *(*v19 + 512);
  swift_beginAccess();
  v21 = *(v19 + v20);
  *(v21 + 16) = v7;
  v22 = *(v19 + qword_1EDC84BB8);
  v23 = *(v19 + *(*v19 + 520));
  v24 = *(v19 + qword_1EDC64EB0);
  v25 = *(v19 + qword_1EDC64EB0 + 8);
  LOBYTE(v16) = *(v19 + qword_1EDC64EB0 + 16);

  v26 = v22;
  sub_1BA15CFD8(v26, v21, v23, v24, v25, v16);
  v28 = v27;

  sub_1BA0E7F10(v28, 1);

  v29 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_sharingWithYouLearnMoreDataSource);
  v30 = *(*v29 + 112);
  swift_beginAccess();
  v31 = *(v29 + v30);
  *(v31 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_disabledState) = v7;
  *(*(v31 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_item) + 96) = v7;

  sub_1BA0E8D84(0);

  if (v42)
  {
    v32 = 0;
  }

  else
  {
    v33 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
    swift_beginAccess();
    v34 = v39;
    v35 = v40;
    v36 = v41;
    (*(v40 + 16))(v39, v8 + v33, v41);
    v37 = sub_1BA4A4538();
    (*(v35 + 8))(v34, v36);
    v38 = *(v37 + 16);

    v32 = v38 == 0;
  }

  sub_1BA1EC38C(v32);
}

uint64_t sub_1BA15CC78()
{

  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_healthExperienceStore);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_1BA15CD18()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_healthExperienceStore));
  return v0;
}

uint64_t sub_1BA15CE48()
{
  sub_1BA15CD18();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharingOverviewDataSource(uint64_t a1)
{
  result = qword_1EDC656F0;
  if (!qword_1EDC656F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1BA15CF5C@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, _OWORD *, uint64_t *)@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v18 = *a3;
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = v5;
  v14 = v6;
  a2(v15, v12, &v18);
  v8 = v16;
  v9 = v17;
  result = *v15;
  v11 = v15[1];
  *a4 = v15[0];
  *(a4 + 16) = v11;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  return result;
}

void sub_1BA15CFD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *), uint64_t a5, char a6)
{
  v9 = a3;
  v40 = a2;
  v10 = sub_1B9F18214();
  v12 = v10;
  if (a6)
  {
    if (a6 == 1)
    {
      MEMORY[0x1EEE9AC00](v10, v11);
      v31 = a4;
      v32 = a5;
      v33 = &v40;
      v13 = sub_1BA2F4270(sub_1BA15D290, v30, v12);
      v35 = 0;

      v14 = 0;
      v15 = *(v13 + 2);
      v16 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v17 = &v13[48 * v14 + 16];
      while (v15 != v14)
      {
        if (v14 >= *(v13 + 2))
        {
          __break(1u);
          return;
        }

        ++v14;
        v18 = (v17 + 48);
        v19 = *(v17 + 32);
        v17 += 48;
        if (*(v19 + 16))
        {
          v20 = *(v18 - 3);
          v36 = *(v18 - 4);
          v21 = *(v18 - 1);
          v22 = *v18;
          v23 = v18[1];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = v21;
          v39 = v16;
          v37 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B9F277B0(0, *(v16 + 16) + 1, 1);
            v16 = v39;
          }

          v26 = *(v16 + 16);
          v25 = *(v16 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1B9F277B0((v25 > 1), v26 + 1, 1);
            v16 = v39;
          }

          *(v16 + 16) = v26 + 1;
          v27 = (v16 + 48 * v26);
          v27[4] = v36;
          v27[5] = v20;
          v28 = v37;
          v29 = v38;
          v27[6] = v19;
          v27[7] = v29;
          v27[8] = v28;
          v27[9] = v23;
          goto LABEL_4;
        }
      }
    }

    else
    {
      a4(v10, &v40);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10, v11);
    v31 = a4;
    v32 = a5;
    v33 = &v40;
    v34 = v9 & 1;
    sub_1BA2F4270(sub_1BA15D24C, v30, v12);
  }
}

void sub_1BA15D24C(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = a1[1];
  v8[0] = *a1;
  v8[1] = v7;
  v8[2] = a1[2];
  sub_1BA170204(v8, v3, v4, *v5, v6, a2);
}

unint64_t sub_1BA15D2B0()
{
  result = qword_1EBBECB60;
  if (!qword_1EBBECB60)
  {
    type metadata accessor for RequestNewSharingRelationshipItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECB60);
  }

  return result;
}

uint64_t sub_1BA15D308(void *a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1B9F12538();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F140B4();
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A2A28();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_healthExperienceStore);
  sub_1B9F0A534(a1, v79);
  v75 = a3;
  sub_1B9F0A534(a3, v78);
  v77 = 2;
  type metadata accessor for ProfilesSharingWithYouDataSource(0);
  swift_allocObject();
  v19 = a2;
  v20 = sub_1BA19FEA8(v79, v19, v78, &v77);
  v71 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesSharingWithYouDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesSharingWithYouDataSource) = v20;
  sub_1B9F0A534(a1, v79);
  LOBYTE(v78[0]) = 2;
  sub_1B9F53270();
  v21 = v19;
  v22 = sub_1BA4A7068();
  type metadata accessor for ProfilesYouAreSharingWithDataSource(0);
  swift_allocObject();
  v23 = sub_1BA359C28(v79, v21, v22, v78);

  v70 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesYouAreSharingWithDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesYouAreSharingWithDataSource) = v23;
  sub_1B9F0A534(a1, v79);
  type metadata accessor for SharingWithYouLearnMoreDataSource(0);
  swift_allocObject();
  v24 = v21;
  v25 = sub_1BA2AFA40(v79, v24);

  sub_1B9F33FDC(0, &qword_1EDC67F20, type metadata accessor for SharingWithYouLearnMoreDataSource, &protocol witness table for MutableArrayDataSource);
  swift_allocObject();
  v26 = sub_1BA2AE514(v25, 0);

  v69 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_sharingWithYouLearnMoreDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_sharingWithYouLearnMoreDataSource) = v26;
  sub_1B9F0A534(a1, v79);
  v27 = objc_allocWithZone(type metadata accessor for ProvidersYouAreSharingWithDataSource(0));
  v28 = v24;
  v29 = sub_1BA25BA64(v79);
  v30 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v29);

  __swift_destroy_boxed_opaque_existential_1(v79);
  v31 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_providersYouAreSharingWithDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_providersYouAreSharingWithDataSource) = v30;
  sub_1B9F0A534(a1, v79);
  v32 = objc_allocWithZone(type metadata accessor for SharingOnboardingDataSource(0));
  v32[qword_1EDC84BB0] = 0;
  sub_1BA4A3268();
  v33 = SuggestedAction.fetchRequest.getter();
  (*(v15 + 8))(v18, v14);
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  v34 = v33;
  v35 = sub_1BA4A1B68();
  v36 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v34 managedObjectContext:v35 sectionNameKeyPath:0 cacheName:0];

  v37 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v36);
  __swift_destroy_boxed_opaque_existential_1(v79);
  sub_1B9F33FDC(0, qword_1EDC67F30, type metadata accessor for SharingOnboardingDataSource, &protocol witness table for FetchedResultsControllerDataSource<A>);
  swift_allocObject();
  v38 = sub_1BA2AE718(v37, 0);

  v39 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_onboardingDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_onboardingDataSource) = v38;
  type metadata accessor for AppsAndReSearchSectionDataSource(0);
  swift_allocObject();
  v40 = v28;
  v41 = sub_1BA4172BC(v40);

  v42 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_appsAndReSearchSectionDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_appsAndReSearchSectionDataSource) = v41;
  v76 = a1;
  sub_1B9F0A534(a1, v79);
  v43 = objc_allocWithZone(type metadata accessor for SharingCloudErrorDataSource(0));
  v44 = v40;
  v45 = sub_1BA290CC4(v44, v79);

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_errorDataSource) = v45;
  sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1BA4C1050;
  *(v46 + 32) = v45;
  *(v46 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v47 = v70;
  *(v46 + 48) = *(v4 + v71);
  *(v46 + 56) = &protocol witness table for MutableArrayDataSource;
  *(v46 + 64) = *(v4 + v39);
  *(v46 + 72) = &protocol witness table for HideableDataSource<A>;
  *(v46 + 80) = *(v4 + v47);
  *(v46 + 88) = &protocol witness table for MutableArrayDataSource;
  v48 = *(v4 + v31);
  *(v46 + 96) = v48;
  *(v46 + 104) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  *(v46 + 112) = *(v4 + v42);
  *(v46 + 120) = &protocol witness table for MutableArrayDataSource;
  *(v46 + 128) = *(v4 + v69);
  *(v46 + 136) = &protocol witness table for HideableDataSource<A>;
  v49 = v45;

  v50 = v48;

  v51 = CompoundSectionedDataSource.init(_:)(v46);

  sub_1BA15C358();
  if (qword_1EDC63A50 != -1)
  {
    swift_once();
  }

  v52 = v74;
  v53 = __swift_project_value_buffer(v74, qword_1EDC63A58);
  v54 = v72;
  v55 = v73;
  (*(v73 + 16))(v72, v53, v52);
  sub_1BA4A1CA8();
  (*(v55 + 8))(v54, v52);
  if ((v79[0] & 1) == 0)
  {
    v56 = *(v51 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_errorDataSource);
    v57 = qword_1EDC84AC8;
    swift_beginAccess();
    v58 = v67;
    v59 = v56 + v57;
    v60 = v66;
    v61 = v68;
    (*(v67 + 16))(v66, v59, v68);
    v62 = sub_1BA4A4538();
    (*(v58 + 8))(v60, v61);
    v63 = *(v62 + 16);

    sub_1BA15C8E4(v63 != 0);
  }

  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v76);
  return v51;
}

uint64_t DataTypeDetailConfiguration.FavoriteToggleComponent.init(hkType:headerTitle:contentInsetsReference:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t DataTypeDetailConfiguration.FavoriteToggleComponent.headerTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void DataTypeDetailConfiguration.FavoriteToggleComponent.headerTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t static DataTypeDetailConfiguration.FavoriteToggleComponent.defaultHeaderTitle.getter()
{
  type metadata accessor for DataTypeDetailViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BA4A1318();

  return v2;
}

uint64_t DataTypeDetailConfiguration.FavoriteToggleComponent.makeDataSource(context:)(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFE) == 2)
  {
    type metadata accessor for EmptyDataSource(0);
    swift_allocObject();
    v2 = EmptyDataSource.init()();
    sub_1BA15E1D0(0);
    v3 = swift_allocObject();
    v4 = *(v2 + 24);
    *(v3 + 16) = *(v2 + 16);
    *(v3 + 24) = v4;
    *(v3 + 32) = v2;
    *(v3 + 40) = 0;
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v8 = *v1;
    v7 = *(v1 + 8);
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v10 = sub_1BA4A1B68();
    v11 = *(a1 + 56);
    sub_1B9F0A534(a1 + 64, v35);
    v12 = *(a1 + 40);
    sub_1BA15E094();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5480;

    *(v13 + 32) = sub_1BA4A6F38();
    type metadata accessor for DataTypeDetailFavoritesDataSource(0);
    v14 = swift_allocObject();
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoriteChangedSink) = 0;
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_objectType) = v8;
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_healthStore) = v12;
    v15 = (v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_headerTitle);
    *v15 = v7;
    v15[1] = v5;
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_contentInsetsReference) = v6;
    sub_1B9F0A534(v35, v34);
    type metadata accessor for FavoritesToggleDataSource(0);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v16 = v8;

    v17 = v16;
    v18 = v12;
    v19 = v10;
    v20 = sub_1BA2E8670(v17, v19, v11, v34, v13, v7, v5, 0, v6);
    v21 = OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesToggleDataSource;
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesToggleDataSource) = v20;
    type metadata accessor for MutableArrayDataSource(0);
    sub_1B9F320F0(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5480;
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    v23 = MutableArrayDataSource.__allocating_init(_:)(inited);
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesDescriptionDataSource) = v23;
    sub_1B9F1DEA0(0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BA4B5460;
    *(v24 + 32) = *(v14 + v21);
    *(v24 + 40) = &protocol witness table for MutableArrayDataSource;
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v6;
    *(v26 + 24) = v25;
    sub_1BA15E128(0);
    v27 = swift_allocObject();
    *(v27 + 16) = v23;
    v29 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
    v28 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
    *(v27 + 24) = v29;
    *(v27 + 32) = v28;
    *(v27 + 40) = 1;
    *(v27 + 48) = sub_1BA15E10C;
    *(v27 + 56) = v26;
    sub_1BA15E164(0, qword_1EDC69078, sub_1BA15E128, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
    v30 = swift_allocObject();
    v30[4] = v27;
    v30[5] = sub_1BA2E7D80;
    v30[6] = 0;
    v30[2] = v29;
    v30[3] = v28;
    *(v24 + 48) = v30;
    *(v24 + 56) = &protocol witness table for CellRegistering<A>;
    swift_bridgeObjectRetain_n();

    v31 = CompoundSectionedDataSource.init(_:)(v24);

    sub_1BA2E8038();

    __swift_destroy_boxed_opaque_existential_1(v35);
    sub_1BA15E1D0(0);
    v3 = swift_allocObject();
    v32 = *(v31 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier + 8);
    *(v3 + 16) = *(v31 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);
    *(v3 + 24) = v32;
    *(v3 + 32) = v31;
    *(v3 + 40) = 1;
  }

  return v3;
}

void sub_1BA15E094()
{
  if (!qword_1EDC6B450)
  {
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B450);
    }
  }
}

void sub_1BA15E164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1BA15E1D0(uint64_t a1)
{
  if (!qword_1EDC66D00)
  {
    v4[0] = type metadata accessor for EmptyDataSource(255);
    v4[1] = type metadata accessor for DataTypeDetailFavoritesDataSource(255);
    v4[2] = &protocol witness table for EmptyDataSource;
    v4[3] = &protocol witness table for CompoundSectionedDataSource;
    v2 = type metadata accessor for _ConditionalDataSource(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC66D00);
    }
  }
}

void sub_1BA15E280(void *a1, uint64_t a2)
{
  v20 = *v2;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  v6 = a1;
  v7 = sub_1BA4A6758();
  v27 = sub_1BA15F71C;
  v28 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1BA0B06D4;
  v26 = &block_descriptor_36;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:2 handler:v8];
  _Block_release(v8);

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v6;
  v12[4] = v20;
  v21 = v6;

  v13 = sub_1BA4A6758();
  v27 = sub_1BA15F770;
  v28 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1BA0B06D4;
  v26 = &block_descriptor_12_1;
  v14 = _Block_copy(&aBlock);

  v15 = [v9 actionWithTitle:v13 style:1 handler:v14];
  _Block_release(v14);

  sub_1BA15E82C();
  v16 = sub_1BA4A6758();
  v17 = sub_1BA4A6758();

  v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:0];

  v19 = [v18 popoverPresentationController];
  [v19 setSourceItem_];

  [v18 addAction_];
  [v18 addAction_];
  [v21 presentViewController:v18 animated:1 completion:0];
}

double sub_1BA15E600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BA15E954(a3);
  }

  return result;
}

double sub_1BA15E660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    v13 = sub_1BA4A85D8();
    v15 = sub_1B9F0B82C(v13, v14, v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] User chose not to end sharing", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  swift_weakLoadStrong();

  return result;
}

uint64_t sub_1BA15E82C()
{
  sub_1BA071040(v0 + 24, v7);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v1 = sub_1BA4A2AD8();
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5480;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B9F1BE20();
    *(v4 + 32) = v1;
    *(v4 + 40) = v3;
    v5 = sub_1BA4A6768();
  }

  else
  {
    sub_1BA071124(v7);
    v5 = *(v0 + 96);
  }

  return v5;
}

uint64_t sub_1BA15E954(uint64_t a1)
{
  v2 = v1;
  v95 = a1;
  v94 = *v1;
  v93 = sub_1BA4A1798();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v3);
  v91 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BA4A3EA8();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v5);
  v96 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v87 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v87 - v13;
  sub_1BA15F66C(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v87 - v17;
  v19 = sub_1BA4A33C8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for EndSharingRelationshipNotificationUserInfo(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v90 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - v29;
  *&v33 = MEMORY[0x1EEE9AC00](v31, v32).n128_u64[0];
  v35 = &v87 - v34;
  v99 = v2;
  v36 = v2[2];
  v37 = [v36 type];
  if (v37 == 1)
  {
    sub_1BA071040((v99 + 3), &v100);
    if (v102)
    {
      sub_1B9F0D950(0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
      v69 = swift_dynamicCast();
      (*(v20 + 56))(v18, v69 ^ 1u, 1, v19);
      if ((*(v20 + 48))(v18, 1, v19) != 1)
      {
        (*(v20 + 32))(v23, v18, v19);
        sub_1BA4A3358();
        (*(v20 + 8))(v23, v19);
        v38 = 1;
        goto LABEL_5;
      }
    }

    else
    {
      sub_1BA071124(&v100);
      (*(v20 + 56))(v18, 1, 1, v19);
    }

    sub_1BA013068(v18);
    sub_1BA4A3E28();
    v80 = sub_1BA4A3E88();
    v81 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v100 = v83;
      *v82 = 136315138;
      v84 = sub_1BA4A85D8();
      v86 = sub_1B9F0B82C(v84, v85, &v100);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_1B9F07000, v80, v81, "[%s] Unable to cast as SharingEntryProfileInformation", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x1BFAF43A0](v83, -1, -1);
      MEMORY[0x1BFAF43A0](v82, -1, -1);
    }

    return (*(v97 + 8))(v14, v98);
  }

  else
  {
    v38 = v37;
    if (v37 == 2 || v37 == 3)
    {
      v39 = [v36 identifier];
      sub_1BA4A1778();

LABEL_5:
      *&v35[*(v24 + 20)] = v38;
      v40 = v96;
      sub_1BA4A3E28();
      sub_1BA15F5AC(v35, v30);
      v41 = sub_1BA4A3E88();
      v42 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v41, v42))
      {
        v88 = v38;
        v89 = v35;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v100 = v44;
        *v43 = 136315650;
        v45 = sub_1BA4A85D8();
        v47 = sub_1B9F0B82C(v45, v46, &v100);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2080;
        v48 = v90;
        sub_1BA15F5AC(v30, v90);
        v49 = v92;
        v50 = v91;
        v51 = v93;
        (*(v92 + 32))(v91, v48, v93);
        sub_1B9FD9EDC();
        v52 = sub_1BA4A82D8();
        v54 = v53;
        (*(v49 + 8))(v50, v51);
        sub_1BA15F610(v30);
        v55 = sub_1B9F0B82C(v52, v54, &v100);

        *(v43 + 14) = v55;
        *(v43 + 22) = 2080;
        if (qword_1EDC5E438 != -1)
        {
          swift_once();
        }

        v56 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v58 = sub_1B9F0B82C(v56, v57, &v100);

        *(v43 + 24) = v58;
        _os_log_impl(&dword_1B9F07000, v41, v42, "[%s] User confirmed to end sharing with %s. Posting notification for %s for this user.", v43, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v44, -1, -1);
        MEMORY[0x1BFAF43A0](v43, -1, -1);

        (*(v97 + 8))(v96, v98);
        v35 = v89;
        v38 = v88;
      }

      else
      {

        sub_1BA15F610(v30);
        (*(v97 + 8))(v40, v98);
      }

      if (qword_1EDC5E438 != -1)
      {
        swift_once();
      }

      v59 = qword_1EDC5E440;
      sub_1BA15F66C(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B5460;
      v100 = 0x55656C69666F7270;
      v101 = 0xEB00000000444955;
      v61 = v59;
      v62 = MEMORY[0x1E69E6158];
      sub_1BA4A7D58();
      v63 = sub_1BA4A1748();
      *(inited + 96) = v62;
      *(inited + 72) = v63;
      *(inited + 80) = v64;
      v100 = 0x54656C69666F7270;
      v101 = 0xEB00000000657079;
      sub_1BA4A7D58();
      *(inited + 168) = MEMORY[0x1E69E6530];
      *(inited + 144) = v38;
      sub_1B9FDB524(inited);
      swift_setDeallocating();
      sub_1BA1284D4();
      swift_arrayDestroy();
      v65 = objc_allocWithZone(sub_1BA4A34C8());
      v66 = sub_1BA4A34B8();
      sub_1BA15F6D0();
      v67 = sub_1BA4A7198();
      [v67 addOperation_];

      (v99[18])(v95);
      return sub_1BA15F610(v35);
    }

    sub_1BA4A3E28();

    v70 = sub_1BA4A3E88();
    v71 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v100 = v73;
      *v72 = 136315394;
      v74 = sub_1BA4A85D8();
      v76 = sub_1B9F0B82C(v74, v75, &v100);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v103 = [v36 type];
      type metadata accessor for HKProfileType(0);
      v77 = sub_1BA4A6808();
      v79 = sub_1B9F0B82C(v77, v78, &v100);

      *(v72 + 14) = v79;
      _os_log_impl(&dword_1B9F07000, v70, v71, "[%s] profile type %s not supported for ending sharing relationship", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v73, -1, -1);
      MEMORY[0x1BFAF43A0](v72, -1, -1);
    }

    return (*(v97 + 8))(v10, v98);
  }
}

uint64_t sub_1BA15F4DC()
{
  sub_1BA071124(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA15F5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndSharingRelationshipNotificationUserInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA15F610(uint64_t a1)
{
  v2 = type metadata accessor for EndSharingRelationshipNotificationUserInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA15F66C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA15F6D0()
{
  result = qword_1EDC6B5F0;
  if (!qword_1EDC6B5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B5F0);
  }

  return result;
}

uint64_t objectdestroy_4Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

char *sub_1BA15F784(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_openContactsHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  if (qword_1EBBE83F8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBC095A8;
  v11 = sub_1BA4A6758();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_imageView] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_textView] = v14;
  v86.receiver = v4;
  v86.super_class = type metadata accessor for SummarySharingContactSelectionSplashView();
  v15 = objc_msgSendSuper2(&v86, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_imageView;
  v17 = *&v15[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_imageView];
  v18 = v15;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v15[v16] setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v83 = v16;
  v84 = v15;
  v19 = *&v15[v16];
  v20 = v18;
  [v20 addSubview_];
  v21 = OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_textView;
  [*&v20[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_textView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v20[v21] setAdjustsFontForContentSizeCategory_];
  [*&v20[v21] setBackgroundColor_];
  [*&v20[v21] setScrollEnabled_];
  [*&v20[v21] _setInteractiveTextSelectionDisabled_];
  [*&v20[v21] setEditable_];
  [*&v20[v21] setSelectable_];
  v22 = *&v20[v21];
  [v22 textContainerInset];
  [v22 setTextContainerInset_];

  [*&v20[v21] setAccessibilityTraits_];
  [*&v20[v21] setTextAlignment_];
  [*&v20[v21] setDelegate_];
  v85 = v21;
  [v20 addSubview_];
  v23 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v23 setAlignment_];
  LODWORD(v24) = 0.5;
  [v23 setHyphenationFactor_];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v25 = sub_1BA4A1318();
  v27 = v26;
  sub_1BA4A1318();
  sub_1B9F1B50C(0, &qword_1EDC6B410, sub_1BA06FAE4);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5480;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1B9F1BE20();
  *(v28 + 32) = v25;
  *(v28 + 40) = v27;

  sub_1BA4A6768();

  sub_1B9F1B50C(0, &qword_1EDC5DBB0, sub_1B9FE9628);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v30 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v31 = objc_opt_self();
  v32 = *MEMORY[0x1E69DDCF8];
  v33 = v30;
  v34 = [v31 preferredFontForTextStyle_];
  v35 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *(inited + 40) = v34;
  v36 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v35;
  *(inited + 72) = v36;
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 secondaryLabelColor];
  v40 = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v39;
  v41 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v40;
  *(inited + 112) = v41;
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340, 0x1E69DB7C8);
  *(inited + 120) = v23;
  v42 = v41;
  v82 = v23;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  v43 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v44 = sub_1BA4A6758();
  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v45 = sub_1BA4A6618();

  v46 = [v43 initWithString:v44 attributes:v45];

  v47 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v48 = sub_1BA4A6758();

  v49 = [v47 initWithString_];

  v50 = sub_1BA4A6758();

  v51 = [v49 rangeOfString_];
  v53 = v52;

  v54 = *MEMORY[0x1E69DB670];
  v55 = sub_1BA4A6758();
  [v46 addAttribute:v54 value:v55 range:{v51, v53}];

  [*&v20[v85] setAttributedText_];
  v81 = objc_opt_self();
  sub_1B9F109F8();
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1BA4BBC90;
  v57 = [*&v84[v83] topAnchor];
  v58 = [v20 topAnchor];

  v59 = [v57 constraintEqualToAnchor_];
  *(v56 + 32) = v59;
  v60 = [*&v84[v83] centerXAnchor];
  v61 = [v20 centerXAnchor];

  v62 = [v60 constraintEqualToAnchor_];
  *(v56 + 40) = v62;
  v63 = [*&v84[v83] widthAnchor];
  v64 = [v63 constraintEqualToConstant_];

  *(v56 + 48) = v64;
  v65 = [*&v84[v83] heightAnchor];
  v66 = [v65 constraintEqualToConstant_];

  *(v56 + 56) = v66;
  v67 = [*&v20[v85] topAnchor];
  v68 = [*&v84[v83] bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:20.0];

  *(v56 + 64) = v69;
  v70 = [*&v20[v85] leadingAnchor];
  v71 = [v20 leadingAnchor];

  v72 = [v70 constraintEqualToAnchor:v71 constant:24.0];
  *(v56 + 72) = v72;
  v73 = [*&v20[v85] trailingAnchor];
  v74 = [v20 trailingAnchor];

  v75 = [v73 constraintEqualToAnchor:v74 constant:-24.0];
  *(v56 + 80) = v75;
  v76 = [*&v20[v85] bottomAnchor];
  v77 = [v20 bottomAnchor];

  v78 = [v76 constraintEqualToAnchor_];
  *(v56 + 88) = v78;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v79 = sub_1BA4A6AE8();

  [v81 activateConstraints_];

  return v20;
}

id sub_1BA16043C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingContactSelectionSplashView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA1604F4()
{
  type metadata accessor for SummarySharingOnboardingContactPickerViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBC095A8 = result;
  return result;
}

id sub_1BA16054C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA1605C4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_didTapCancel_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA16064C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ActivityIndicatorViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BA16054C();
    [v2 addSubview_];

    sub_1BA1607DC();
    [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView] startAnimating];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() systemBackgroundColor];
      [v5 setBackgroundColor_];

      v7 = [v0 navigationItem];
      v8 = sub_1BA1605C4();
      [v7 setRightBarButtonItem_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA1607DC()
{
  v1 = sub_1BA16054C();
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B7510;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView;
  v4 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView] centerXAnchor];
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 centerXAnchor];

  v8 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v8;
  v9 = [*&v0[v3] centerYAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v11 centerYAnchor];

  v14 = [v9 constraintEqualToAnchor_];
  *(v2 + 40) = v14;
  sub_1B9F740B0();
  v15 = sub_1BA4A6AE8();

  [v12 activateConstraints_];
}

id sub_1BA160B90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityIndicatorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EmbeddedViewDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void EmbeddedViewDataSourceItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t EmbeddedViewDataSourceItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall EmbeddedViewDataSourceItem.init(reuseIdentifier:embeddedView:)(HealthExperienceUI::EmbeddedViewDataSourceItem *__return_ptr retstr, Swift::String reuseIdentifier, UIView *embeddedView)
{
  object = reuseIdentifier._object;
  countAndFlagsBits = reuseIdentifier._countAndFlagsBits;
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  retstr->reuseIdentifier._countAndFlagsBits = countAndFlagsBits;
  retstr->reuseIdentifier._object = object;
  retstr->embeddedView.super.super.isa = embeddedView;
  v15 = 0xD00000000000001BLL;
  v16 = 0x80000001BA4EE490;

  v12 = embeddedView;
  MEMORY[0x1BFAF1350](countAndFlagsBits, object);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1B9FD9EDC();
  v13 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v13);

  (*(v8 + 8))(v11, v7);

  v14 = v16;
  retstr->uniqueIdentifier._countAndFlagsBits = v15;
  retstr->uniqueIdentifier._object = v14;
}

uint64_t static EmbeddedViewDataSourceItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  v7 = v2 == v4 && v3 == v5;
  if (!v7 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  sub_1BA0004FC();
  return sub_1BA4A7798() & 1;
}

uint64_t EmbeddedViewDataSourceItem.hash(into:)(uint64_t a1)
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A77A8();
}

uint64_t EmbeddedViewDataSourceItem.hashValue.getter()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA160FE4()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA161060(uint64_t a1)
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A77A8();
}

uint64_t sub_1BA1610B0(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA161128(uint64_t a1)
{
  v2 = sub_1BA1624C0();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA161174(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  v7 = v2 == v4 && v3 == v5;
  if (!v7 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  sub_1BA0004FC();
  return sub_1BA4A7798() & 1;
}

uint64_t EmbeddedViewControllerDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void EmbeddedViewControllerDataSourceItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t EmbeddedViewControllerDataSourceItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void EmbeddedViewControllerDataSourceItem.init(reuseIdentifier:parentViewController:embeddedViewController:)(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, unint64_t *a5@<X8>)
{
  v10 = sub_1BA4A1798();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  v20 = 0xD000000000000025;
  v21 = 0x80000001BA4EE4B0;

  v15 = a3;
  v16 = a4;
  MEMORY[0x1BFAF1350](a1, a2);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1B9FD9EDC();
  v17 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v17);

  (*(v11 + 8))(v14, v10);

  v18 = v20;
  v19 = v21;

  *a5 = v18;
  a5[1] = v19;
}

uint64_t EmbeddedViewControllerDataSourceItem.hash(into:)(uint64_t a1)
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  return sub_1BA4A77A8();
}

uint64_t EmbeddedViewControllerDataSourceItem.hashValue.getter()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA161578()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA16160C(uint64_t a1)
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  return sub_1BA4A77A8();
}

uint64_t sub_1BA161674(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA161704(uint64_t a1)
{
  v2 = sub_1BA16246C();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA161754(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA1617C4();
  return sub_1B9F7B644(v6);
}

void sub_1BA1617C4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v1], v11);
  if (v11[3])
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      v2 = v16;
      v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView];
      *&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView] = v16;
      v4 = v2;

      v5 = [v0 contentView];
      [v5 addSubview_];

      v6 = [v0 contentView];
      sub_1BA162514(v4, v6);

      v7 = [v0 contentView];
      [v7 setNeedsLayout];

LABEL_8:

      return;
    }
  }

  else
  {
    sub_1B9F7B644(v11);
  }

  sub_1B9F68124(&v0[v1], v14);
  if (v15)
  {
    sub_1B9FCD918();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v4 = v12;
    v8 = v13;
    [v12 addChildViewController_];
    [v8 didMoveToParentViewController_];
    v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController];
    *&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController] = v8;
    v10 = v8;

    sub_1BA161B30([v10 view]);
    goto LABEL_8;
  }

  sub_1B9F7B644(v14);
}

uint64_t sub_1BA1619D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA161A2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA1617C4();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA161A98(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA161AFC;
}

void sub_1BA161AFC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA1617C4();
  }
}

void sub_1BA161B30(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView] = a1;
  v4 = a1;

  if (a1)
  {
    v5 = [v1 contentView];
    [v5 addSubview_];

    v6 = [v1 contentView];
    sub_1BA162514(v4, v6);

    v7 = [v1 contentView];
    [v7 setNeedsLayout];
  }
}

void sub_1BA161C28()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EmbeddedViewTableViewCell();
  objc_msgSendSuper2(&v7, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController];
  if (v2)
  {
    [v2 willMoveToParentViewController_];
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView] removeFromSuperview];
  v4 = *&v0[v3];
  *&v0[v3] = 0;

  v5 = *&v0[v1];
  if (v5)
  {
    [v5 removeFromParentViewController];
    v6 = *&v0[v1];
    *&v0[v1] = 0;
  }
}

id EmbeddedViewTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id EmbeddedViewTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController] = 0;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for EmbeddedViewTableViewCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v6);

  return v7;
}

id EmbeddedViewTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmbeddedViewTableViewCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for EmbeddedViewTableViewCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id EmbeddedViewTableViewCell.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EmbeddedViewTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s18HealthExperienceUI36EmbeddedViewControllerDataSourceItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1BA4A8338()) && (v2 == v4 && v3 == v5 || (sub_1BA4A8338()) && (sub_1BA0004FC(), (sub_1BA4A7798()))
  {
    return sub_1BA4A7798() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BA1621AC()
{
  result = qword_1EBBECC18;
  if (!qword_1EBBECC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC18);
  }

  return result;
}

unint64_t sub_1BA162204()
{
  result = qword_1EBBECC20;
  if (!qword_1EBBECC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC20);
  }

  return result;
}

unint64_t sub_1BA16225C()
{
  result = qword_1EBBECC28;
  if (!qword_1EBBECC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC28);
  }

  return result;
}

unint64_t sub_1BA1622B4()
{
  result = qword_1EBBECC30;
  if (!qword_1EBBECC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC30);
  }

  return result;
}

uint64_t sub_1BA162308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA162350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BA16246C()
{
  result = qword_1EBBECC38;
  if (!qword_1EBBECC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC38);
  }

  return result;
}

unint64_t sub_1BA1624C0()
{
  result = qword_1EBBECC40;
  if (!qword_1EBBECC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC40);
  }

  return result;
}

void sub_1BA162514(void *a1, void *a2)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [a1 leadingAnchor];
  v5 = [a2 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  [v6 setActive_];
  v7 = [a1 trailingAnchor];
  v8 = [a2 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  [v9 setActive_];
  v10 = [a1 topAnchor];
  v11 = [a2 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  [v12 setActive_];
  v13 = [a1 bottomAnchor];
  v14 = [a2 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  [v15 setActive_];
}

uint64_t sub_1BA162730@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  return sub_1B9F374E8(v1 + v3, a1, &qword_1EDC6BAD0, qword_1EDC6BAE0, &protocol descriptor for CompoundSectionedDataSourceProvider);
}

uint64_t sub_1BA162800()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA162844(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1BA1628F4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA162940(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_1BA1629F8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource) = a1;

  return result;
}

double (*sub_1BA162A10(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1B9F23FB0();
  return sub_1BA162A58;
}

double sub_1BA162A58(uint64_t *a1)
{
  *(a1[1] + OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource) = *a1;

  return result;
}

double sub_1BA162A70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id sub_1BA162B28()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for DiffableCollectionViewAdaptor(0);
    v4 = sub_1B9F23FB0();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    return (*(v3 + 248))(v2, v4, &protocol witness table for CompoundSectionedDataSource, &protocol witness table for CompoundSectionedDataSource, 1, sub_1BA165690, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall UICollectionViewController.clearSelection()()
{
  v1 = v0;
  v2 = sub_1BA4A1998();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1;
  if ([v1 clearsSelectionOnViewWillAppear])
  {
    v8 = [v18 collectionView];
    if (!v8)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v8 indexPathsForSelectedItems];

    if (v10)
    {
      v11 = sub_1BA4A6B08();

      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 0;
        while (v13 < *(v11 + 16))
        {
          (*(v3 + 16))(v7, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v2);
          v14 = [v18 collectionView];
          if (!v14)
          {
            goto LABEL_12;
          }

          v15 = v14;
          ++v13;
          v16 = sub_1BA4A18F8();
          [v15 deselectItemAtIndexPath:v16 animated:1];

          (*(v3 + 8))(v7, v2);
          if (v12 == v13)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

LABEL_9:
    }
  }
}

uint64_t CompoundSectionedDataSourceProvider.dataSource(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a1, a2);
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();
  return CompoundSectionedDataSource.init(_:)(v3);
}

uint64_t sub_1BA162FD8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F374E8(a1, v6, &qword_1EDC6BAD0, qword_1EDC6BAE0, &protocol descriptor for CompoundSectionedDataSourceProvider);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1B9F10C48(v6, v3 + v4);
  return swift_endAccess();
}

void sub_1BA163054(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

double sub_1BA1630B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

id CompoundDataSourceCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id CompoundDataSourceCollectionViewController.init(collectionViewLayout:)(void *a1)
{
  v2 = sub_1B9F0F3F4(a1);

  return v2;
}

id CompoundDataSourceCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CompoundDataSourceCollectionViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins] = 1;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void *sub_1BA1632E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_1B9F23FB0();
    v7 = sub_1B9F54D58(a1);

    v12[3] = v6;
    type metadata accessor for CompoundDataSourceCollectionViewController();
    sub_1B9F0D950(0, &unk_1EDC60EE0, &protocol descriptor for CollectionViewLayoutSectionProviding);
    swift_unknownObjectRetain();
    v8 = v6;
    if (swift_dynamicCast())
    {
      v9 = *(&v14 + 1);
      v10 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
      v12[0] = a1;
      v12[1] = a2;
      v12[2] = v7;
      v11 = (*(v10 + 8))(v12, v9, v10);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(&v13);
      return v11;
    }

    else
    {
      swift_unknownObjectRelease();

      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      sub_1B9F43A50(&v13, &qword_1EBBECC80, &unk_1EDC60EE0, &protocol descriptor for CollectionViewLayoutSectionProviding);
      return 0;
    }
  }

  return result;
}

id CompoundDataSourceCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CompoundDataSourceCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double CompoundDataSourceCollectionViewController.selectableHandler(in:at:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = sub_1BA4A1998();
  v6 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v7);
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v72 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v73 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A18F8();
  v19 = [a1 cellForItemAtIndexPath_];

  if (!v19)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v67 = v9;
  v68 = v19;
  v69 = a3;
  v20 = sub_1BA4A1968();
  v21 = sub_1B9F23FB0();
  v22 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v23 = *(v14 + 16);
  v66 = v14 + 16;
  v64 = v23;
  v23(v17, v21 + v22, v13);
  v24 = sub_1BA4A4548();

  v25 = *(v14 + 8);
  v65 = v14 + 8;
  v63 = v25;
  v25(v17, v13);
  if (v20 >= v24 || (v26 = sub_1BA4A1958(), , v27 = sub_1BA4A1968(), v28 = sub_1B9F54D58(v27), , v26 >= v28))
  {
    v30 = v73;
    sub_1BA4A3D88();
    v31 = v70;
    v32 = v71;
    (*(v6 + 16))(v70, a2, v71);
    v33 = v74;
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v62 = v35;
      v37 = v31;
      v38 = v36;
      v74 = swift_slowAlloc();
      *&v80[0] = v74;
      *v38 = 136315906;
      sub_1B9F3A36C(&unk_1EBBED850, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
      v61 = v34;
      v39 = sub_1BA4A82D8();
      v41 = v40;
      (*(v6 + 8))(v37, v32);
      v42 = sub_1B9F0B82C(v39, v41, v80);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2048;
      v43 = sub_1B9F23FB0();
      v44 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
      swift_beginAccess();
      v45 = v64;
      v64(v17, v43 + v44, v13);
      v46 = sub_1BA4A4548();

      v47 = v63;
      v63(v17, v13);

      *(v38 + 14) = v46;
      *(v38 + 22) = 2048;
      v48 = sub_1B9F23FB0();
      v49 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
      swift_beginAccess();
      v45(v17, v48 + v49, v13);

      v50 = sub_1BA4A44B8();
      v47(v17, v13);

      *(v38 + 24) = v50;
      *(v38 + 32) = 2080;
      v51 = *&v33[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource];
      v52 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
      swift_beginAccess();
      v45(v17, v51 + v52, v13);
      v53 = NSDiffableDataSourceSnapshot<>.description.getter();
      v55 = v54;
      v47(v17, v13);
      v56 = sub_1B9F0B82C(v53, v55, v80);

      *(v38 + 34) = v56;
      v57 = v61;
      _os_log_impl(&dword_1B9F07000, v61, v62, "Failed to get handler for item because the snapshot does not contain the index path: %s, dataSource has %ld sections, %ld items. snapshot: %s.", v38, 0x2Au);
      v58 = v74;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v58, -1, -1);
      MEMORY[0x1BFAF43A0](v38, -1, -1);

      (*(v72 + 8))(v73, v67);
    }

    else
    {

      (*(v6 + 8))(v31, v32);
      (*(v72 + 8))(v30, v67);
    }

    v29 = v69;
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
  }

  else
  {

    sub_1BA079B80(a2, &v81);

    v29 = v69;
  }

  v75[0] = v81;
  v75[1] = v82;
  v76 = v83;
  if (*(&v82 + 1))
  {
    sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    sub_1B9F0D950(0, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
    if (swift_dynamicCast())
    {
      if (*(&v78 + 1))
      {

LABEL_17:
        sub_1B9F1134C(&v77, v80);
        sub_1B9F1134C(v80, v29);
        return result;
      }
    }

    else
    {
      v79 = 0;
      v78 = 0u;
      v77 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v75, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    v77 = 0u;
    v78 = 0u;
    v79 = 0;
  }

  sub_1B9F43A50(&v77, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *&v75[0] = v68;
  sub_1BA1650A4();
  sub_1B9F0D950(0, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  if (swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v79 = 0;
  v78 = 0u;
  v77 = 0u;
  sub_1B9F43A50(&v77, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(v29 + 32) = 0;
  result = 0.0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  return result;
}

uint64_t _s18HealthExperienceUI42CompoundDataSourceCollectionViewControllerC010collectionH0_18shouldSelectItemAtSbSo012UICollectionH0C_10Foundation9IndexPathVtF_0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A18F8();
  v7 = [a1 cellForItemAtIndexPath_];

  if (!v7)
  {
    goto LABEL_5;
  }

  CompoundDataSourceCollectionViewController.selectableHandler(in:at:)(a1, a2, v15);
  sub_1B9F374E8(v15, v12, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  v8 = v13;
  if (!v13)
  {
    sub_1B9F43A50(v15, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);

    sub_1B9F43A50(v12, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
LABEL_5:
    v10 = 0;
    return v10 & 1;
  }

  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v10 = (*(v9 + 8))(v7, v3, v8, v9);

  sub_1B9F43A50(v15, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10 & 1;
}

void CompoundDataSourceCollectionViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A18F8();
  v7 = [a1 cellForItemAtIndexPath_];

  if (v7)
  {
    CompoundDataSourceCollectionViewController.selectableHandler(in:at:)(a1, a2, v17);
    sub_1B9F374E8(v17, v14 + 1, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
    v8 = v15;
    if (v15)
    {
      v9 = v16;
      __swift_project_boxed_opaque_existential_1((v14 + 1), v15);
      (*(v9 + 16))(v7, v3, v8, v9);
      __swift_destroy_boxed_opaque_existential_1((v14 + 1));
    }

    else
    {
      sub_1B9F43A50(v14 + 1, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
    }

    sub_1B9F374E8(v17, v14 + 1, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
    v10 = v15;
    if (v15)
    {
      v11 = v16;
      __swift_project_boxed_opaque_existential_1((v14 + 1), v15);
      (*(v11 + 24))(v14, v3, v10, v11);
      v12 = LOBYTE(v14[0]);
      __swift_destroy_boxed_opaque_existential_1((v14 + 1));
      if (v12 == 2)
      {
        sub_1B9F43A50(v17, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);

        return;
      }

      v13 = sub_1BA4A18F8();
      [a1 deselectItemAtIndexPath:v13 animated:v12 & 1];
    }

    else
    {

      sub_1B9F43A50(v14 + 1, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
    }

    sub_1B9F43A50(v17, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  }
}

uint64_t CompoundDataSourceCollectionViewController.collectionView(_:selectionFollowsFocusForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A18F8();
  v7 = [a1 cellForItemAtIndexPath_];

  if (!v7)
  {
    v10 = [a1 selectionFollowsFocus];
    return v10 & 1;
  }

  CompoundDataSourceCollectionViewController.selectableHandler(in:at:)(a1, a2, v15);
  sub_1B9F374E8(v15, v12, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  v8 = v13;
  if (!v13)
  {
    sub_1B9F43A50(v12, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
    goto LABEL_7;
  }

  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v10 = (*(v9 + 32))(v7, v3, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v10 == 2)
  {
LABEL_7:
    v10 = [a1 selectionFollowsFocus];

    sub_1B9F43A50(v15, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
    return v10 & 1;
  }

  sub_1B9F43A50(v15, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);

  return v10 & 1;
}

uint64_t sub_1BA164784(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, char *))
{
  v8 = sub_1BA4A1998();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  v13 = a3;
  v14 = a1;
  LOBYTE(a5) = a5(v13, v12);

  (*(v9 + 8))(v12, v8);
  return a5 & 1;
}

uint64_t CompoundDataSourceCollectionViewController.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1B9F23FB0();
  v7 = (*(*v6 + 360))(a1, a2);

  v8 = sub_1BA4A1998();
  v9 = *(*(v8 - 8) + 16);
  if (v7)
  {
    v10 = a2;
  }

  else
  {
    v10 = a1;
  }

  return v9(a3, v10, v8);
}

uint64_t sub_1BA164B9C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B9F3BED8(0, &qword_1EBBECC78, type metadata accessor for DiffableCollectionViewAdaptor.DebugState, MEMORY[0x1E69E6720]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v35 - v7;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v14 = a1;

  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v15, v16))
  {
    v37 = v16;
    v38 = v5;
    v39 = v9;
    v17 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v17 = 136315650;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, &v41);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v40 = a1;
    v21 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v22 = sub_1BA4A6808();
    v24 = sub_1B9F0B82C(v22, v23, &v41);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v26 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState;
      v27 = Strong;
      swift_beginAccess();
      sub_1BA10C8F0(v27 + v26, v8);

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
    (*(*(v29 - 8) + 56))(v8, v28, 1, v29);
    v30 = sub_1BA4A6808();
    v32 = sub_1B9F0B82C(v30, v31, &v41);

    *(v17 + 24) = v32;
    _os_log_impl(&dword_1B9F07000, v15, v37, "[%s]: Unable to resolve layout: %s. Backing snapshot state: %s", v17, 0x20u);
    v33 = v36;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v33, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    (*(v10 + 8))(v13, v39);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  return 0;
}

unint64_t sub_1BA164F44()
{
  result = qword_1EBBED8C0;
  if (!qword_1EBBED8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED8C0);
  }

  return result;
}

uint64_t sub_1BA164FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  return (*(a4 + 248))(a1, a2, a6, a7, a3, a8, v15);
}

unint64_t sub_1BA1650A4()
{
  result = qword_1EDC6B550;
  if (!qword_1EDC6B550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B550);
  }

  return result;
}

uint64_t _s18HealthExperienceUI42CompoundDataSourceCollectionViewControllerC010collectionH0_33contextMenuConfigurationForItemAt5pointSo09UIContextlM0CSgSo012UICollectionH0C_10Foundation9IndexPathVSo7CGPointVtF_0(void *a1)
{
  v2 = sub_1BA4A18F8();
  v3 = [a1 cellForItemAtIndexPath_];

  if (v3)
  {
    v11 = v3;
    sub_1BA1650A4();
    sub_1B9F0D950(0, &qword_1EBBE9910, &protocol descriptor for ContextMenuConfigurationProviding);
    v4 = v3;
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(v9, v12);
      v5 = v13;
      v6 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v7 = (*(v6 + 8))(v5, v6);

      __swift_destroy_boxed_opaque_existential_1(v12);
      return v7;
    }

    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1B9F43A50(v9, &qword_1EBBE9908, &qword_1EBBE9910, &protocol descriptor for ContextMenuConfigurationProviding);
  }

  return 0;
}

id CategoryGradientView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CategoryGradientView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v13.receiver = v4;
  v13.super_class = type metadata accessor for CategoryGradientView();
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint_];

  v11 = [v9 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint_];

  return v9;
}

void sub_1BA165A18(unint64_t a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (a1 >> 62)
  {
    v5 = sub_1BA4A7CC8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_12:
    v14 = sub_1BA4A6AE8();

    [v4 setColors_];

    return;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1B9F468EC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v17;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFAF2860](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 CGColor];
      type metadata accessor for CGColor(0);
      v16 = v11;

      *&v15 = v10;
      v17 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B9F468EC((v12 > 1), v13 + 1, 1);
        v7 = v17;
      }

      ++v6;
      *(v7 + 16) = v13 + 1;
      sub_1B9F46920(&v15, (v7 + 32 * v13 + 32));
    }

    while (v5 != v6);
    goto LABEL_12;
  }

  __break(1u);
}

id CategoryGradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategoryGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CategoryGradientColorProvider.relevantTraits.getter()
{
  sub_1B9F7A684(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  v1 = sub_1BA4A4178();
  v2 = MEMORY[0x1E69DC0F8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t CategoryGradientColorProvider.init(baseColor:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B9F10B50(0);
  swift_allocObject();
  result = sub_1BA4A4DF8();
  *a2 = a1;
  a2[1] = result;
  return result;
}

Swift::Void __swiftcall CategoryGradientColorProvider.configureForTraitCollection(_:)(UITraitCollection a1)
{
  sub_1BA165D9C(a1.super.isa);
  sub_1BA4A4DA8();
}

uint64_t sub_1BA165D9C(void *a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = [a1 userInterfaceStyle];
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      sub_1B9F109F8();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1BA4B7510;
      *(v11 + 32) = [v9 colorWithAlphaComponent_];
      v12 = [v9 colorWithAlphaComponent_];
    }

    else
    {
      sub_1BA4A3DD8();
      v13 = a1;
      v14 = sub_1BA4A3E88();
      v15 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v14, v15))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136315394;
        *(v17 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4C1600, &v24);
        *(v17 + 12) = 2080;
        v23 = [v13 horizontalSizeClass];
        type metadata accessor for UIUserInterfaceSizeClass(0);
        v19 = sub_1BA4A6808();
        v21 = sub_1B9F0B82C(v19, v20, &v24);

        *(v17 + 14) = v21;
        _os_log_impl(&dword_1B9F07000, v14, v15, "[%s]: Unknown size class: %s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v18, -1, -1);
        MEMORY[0x1BFAF43A0](v17, -1, -1);
      }

      (*(v4 + 8))(v8, v3);
      sub_1B9F109F8();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1BA4B7510;
      *(v11 + 32) = [v9 colorWithAlphaComponent_];
      v12 = [v9 colorWithAlphaComponent_];
    }
  }

  else
  {
    sub_1B9F109F8();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BA4B7510;
    *(v11 + 32) = [v9 colorWithAlphaComponent_];
    v12 = [v9 colorWithAlphaComponent_];
  }

  *(v11 + 40) = v12;
  return v11;
}

double sub_1BA1660F8(void *a1)
{
  sub_1BA165D9C(a1);
  sub_1BA4A4DA8();

  return result;
}

uint64_t sub_1BA166150()
{
  sub_1B9F7A684(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  v1 = sub_1BA4A4178();
  v2 = MEMORY[0x1E69DC0F8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_1BA166238()
{
  sub_1B9FCD86C();
  if (!v5)
  {
    sub_1B9FCD638(v4);
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    goto LABEL_8;
  }

  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    goto LABEL_8;
  }

  if (!*(&v7 + 1))
  {
LABEL_8:
    sub_1BA166BC4(&v6, &qword_1EBBEBB88, &type metadata for FavoritableFeedItem, MEMORY[0x1E69E6720], sub_1BA167378);
    return 0;
  }

  v0 = [*(&v8 + 1) localizedTitle];
  if (v0)
  {
    v1 = v0;
    v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D8BF4(&v6);
    return v2;
  }

  sub_1BA0D8BF4(&v6);
  return 0;
}

uint64_t sub_1BA166380()
{
  sub_1B9FCD86C();
  if (v3)
  {
    sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    if (swift_dynamicCast())
    {
      if (*(&v5 + 1))
      {
        v0 = v7;
        sub_1BA0D8BF4(&v4);
        return v0;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      v4 = 0u;
    }
  }

  else
  {
    sub_1B9FCD638(v2);
    v4 = 0u;
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_1BA166BC4(&v4, &qword_1EBBEBB88, &type metadata for FavoritableFeedItem, MEMORY[0x1E69E6720], sub_1BA167378);
  return 0;
}

uint64_t OnboardingAddToFavoritesDataSource.init(objectType:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v59 = a3;
  v60 = a2;
  v58 = v4;
  v57 = *v4;
  v55 = MEMORY[0x1E6968130];
  v6 = MEMORY[0x1E69E6720];
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v51 - v9;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v11 = sub_1BA4A1C68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  v56 = xmmword_1BA4B5460;
  *(v15 + 16) = xmmword_1BA4B5460;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x1E69A3BB0], v11);
  v17(v16 + v13, *MEMORY[0x1E69A3BB8], v11);
  v18 = MEMORY[0x1E69E6F90];
  sub_1BA167378(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  v53 = xmmword_1BA4B5470;
  *(v19 + 16) = xmmword_1BA4B5470;
  *(v19 + 32) = a1;
  v20 = sub_1BA4A0FA8();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_1BA167378(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], v18);
  v21 = swift_allocObject();
  *(v21 + 16) = v56;
  *&v56 = a1;
  *(v21 + 32) = sub_1BA4A1D78();
  *(v21 + 40) = 0;
  v22 = MEMORY[0x1BFAED020](v15, v19, v10, v21);

  sub_1BA166BC4(v10, &qword_1EDC6E2A0, v55, v6, sub_1B9F0C9D8);
  v23 = v59;
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  sub_1BA4A2388();
  v24 = sub_1BA4A2568();
  v25 = swift_allocObject();
  v51 = xmmword_1BA4B7510;
  *(v25 + 16) = xmmword_1BA4B7510;
  *(v25 + 32) = v22;
  *(v25 + 40) = v24;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v55 = v22;
  v54 = v24;
  v26 = sub_1BA4A6AE8();

  v27 = objc_opt_self();
  v28 = [v27 andPredicateWithSubpredicates_];

  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  v29 = sub_1BA4A1B68();
  sub_1B9F0A534(v23, v62);
  v52 = type metadata accessor for AddToFavoritesTableViewCell();
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  sub_1BA4A2388();
  v30 = sub_1BA4A26E8();
  v31 = swift_allocObject();
  *(v31 + 16) = v51;
  *(v31 + 32) = v28;
  *(v31 + 40) = v30;
  v32 = v28;
  v33 = v30;
  v34 = sub_1BA4A6AE8();

  v35 = [v27 andPredicateWithSubpredicates_];

  v36 = v35;
  v37 = sub_1BA4A26C8();

  [v37 setFetchLimit_];
  v38 = swift_allocObject();
  *(v38 + 16) = v53;
  v39 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v40 = sub_1BA4A6758();
  v41 = [v39 initWithKey:v40 ascending:1];

  *(v38 + 32) = v41;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v42 = sub_1BA4A6AE8();

  [v37 setSortDescriptors_];

  v43 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v37 managedObjectContext:v29 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0(0);
  v45 = objc_allocWithZone(v44);
  v46 = v43;
  v47 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v46);
  sub_1B9F0A534(v62, v61);
  v48 = swift_allocObject();
  v48[2] = v52;
  v48[3] = &protocol witness table for AddToFavoritesTableViewCell;
  sub_1B9F25598(v61, (v48 + 4));
  v48[9] = v57;
  v49 = sub_1B9F17A68(v47, sub_1BA1672F0, v48, 0);

  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return v49;
}

uint64_t sub_1BA166BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t OnboardingAddToFavoritesDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t OnboardingAddToFavoritesDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return swift_deallocClassInstance();
}

void OnboardingAddToFavoritesDataSource.supplementaryContentConfiguration(ofKind:at:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1BA4A1968();
  if (v3 != 1 || v4 != 0)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v6 = [objc_opt_self() sharedBehavior];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 features];

    if (v8)
    {
      v9 = [v8 isPinnedInBrowse];

      if (v9)
      {
        if (qword_1EDC5E100 == -1)
        {
          goto LABEL_12;
        }
      }

      else if (qword_1EDC5E100 == -1)
      {
LABEL_12:
        sub_1BA4A1318();
        sub_1B9F0CF6C(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1BA4B5480;
        v11 = sub_1BA166238();
        v13 = v12;
        *(v10 + 56) = MEMORY[0x1E69E6158];
        *(v10 + 64) = sub_1B9F1BE20();
        *(v10 + 32) = v11;
        *(v10 + 40) = v13;
        sub_1BA4A67D8();

        sub_1BA4A1318();
        sub_1BA166380();

        v14 = sub_1BA4A4428();
        v15 = MEMORY[0x1E69DC110];
        *(a2 + 24) = v14;
        *(a2 + 32) = v15;
        __swift_allocate_boxed_opaque_existential_1(a2);
        sub_1BA4A43E8();
        sub_1BA4A43B8();
        return;
      }

      swift_once();
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for OnboardingAddToFavoritesDataSource(uint64_t a1)
{
  result = qword_1EBBECC88;
  if (!qword_1EBBECC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA167378(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA1673E8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA167CE0();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA167458@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA1674B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA167CE0();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA16751C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA167580;
}

void sub_1BA167580(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA167CE0();
  }
}

double sub_1BA1675B4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1BA167620()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA167678(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id SectionHeaderCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SectionHeaderCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier];
  v11 = type metadata accessor for DefaultHeaderCollectionReusableView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v12 = [objc_allocWithZone(v11) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView] = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SectionHeaderCollectionViewCell();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA167A40();

  return v13;
}

id sub_1BA167958(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier];
  v5 = type metadata accessor for DefaultHeaderCollectionReusableView();
  *v4 = 0;
  *(v4 + 1) = 0;
  result = [objc_allocWithZone(v5) initWithCoder_];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView] = result;
    v10.receiver = v1;
    v10.super_class = type metadata accessor for SectionHeaderCollectionViewCell();
    v7 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      sub_1BA167A40();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA167A40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView;
  v3 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView] accessibilityIdentifier];
  [v1 setAccessibilityIdentifier_];

  [*&v1[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 contentView];
  [v4 addSubview_];

  v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v5;

  MEMORY[0x1BFAF1350](0x437265646165482ELL, 0xEB000000006C6C65);

  v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier];
  swift_beginAccess();
  *v6 = v13;
  v6[1] = v14;

  v7 = *&v1[v2];
  v8 = sub_1BA4A6758();
  [v7 setAccessibilityIdentifier_];

  v9 = sub_1B9F7A014();

  MEMORY[0x1BFAF1350](0x6C69617465442ELL, 0xE700000000000000);
  v10 = sub_1BA4A6758();

  [v9 setAccessibilityIdentifier_];

  v11 = *&v1[v2];
  v12 = [v1 contentView];
  [v11 hk:v12 alignConstraintsWithView:?];
}

Swift::Void __swiftcall SectionHeaderCollectionViewCell.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView);
  sub_1B9F7B558(countAndFlagsBits, object);
}

void sub_1BA167CE0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView];
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v3], v7);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  v5 = v2;
  sub_1B9F63E74(v7, v2 + v4);
  swift_endAccess();
  sub_1B9F7A7A4();

  sub_1B9F7B644(v7);
  sub_1B9F68124(v1 + v3, v7);
  if (v8)
  {
    sub_1B9FCD918();
    type metadata accessor for HeaderItem(0);
    if (swift_dynamicCast())
    {

      v6 = sub_1BA4A6758();

      [v1 setAccessibilityLabel_];
    }
  }

  else
  {
    sub_1B9F7B644(v7);
  }
}

id SectionHeaderCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1BA167EC4(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA168348;
}

uint64_t sub_1BA167F28@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a1);
}

uint64_t sub_1BA167F84(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  swift_endAccess();
  sub_1BA167CE0();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA167FF4(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA16805C;
}

void sub_1BA168060(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView);
  sub_1B9F7B558(a1, a2);
}

uint64_t sub_1BA1680D4()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA168130(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_1BA168388(void *a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  v66 = sub_1BA4A6468();
  v6 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v7);
  v9 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_1BA4A3EA8();
  v10 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v65 - v16;
  v18 = sub_1BA4A2A28();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultPresented);
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultPresented) = a1;
  sub_1BA1698F8(v22);
  if (a1 < 2)
  {
    sub_1BA16A338(a1);
    sub_1BA4A3E48();
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B9F07000, v23, v24, "Medical ID data is unknown, waiting for value", v25, 2u);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v10 + 8))(v13, v67);
    v68[0] = sub_1BA4A2978();
    sub_1BA16A348();
    v26 = MEMORY[0x1E695BED8];
    sub_1BA1698B0(&qword_1EBBECD98, 255, sub_1BA16A348, MEMORY[0x1E695BED8]);
    v27 = sub_1BA4A4F98();

    *v9 = 1500;
    v28 = v66;
    (*(v6 + 104))(v9, *MEMORY[0x1E69E7F38], v66);
    v29 = sub_1BA169CBC(v27, v9);

    (*(v6 + 8))(v9, v28);
    v68[0] = v29;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BA16A3B0(0);
    sub_1BA1698B0(&qword_1EBBECDB0, 255, sub_1BA16A3B0, v26);
    v30 = sub_1BA4A5008();

    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultCancellable) = v30;

    return;
  }

  if (a1 != 2)
  {
    v50 = a1;

    sub_1BA168C40(a2 & 1);
    return;
  }

  v31 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController);
  if (v31)
  {
    v32 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_healthStore);
    v33 = v31;
    v34 = [v32 profileIdentifier];
    sub_1BA4A2A18();

    UIViewController.resolvedPinnedContentManager.getter(v68);
    v35 = objc_allocWithZone(type metadata accessor for FeedItemSuggestedActionViewController(0));
    v36 = FeedItemSuggestedActionViewController.init(_:pinnedContentManager:)(v21, v68);
    v38 = sub_1BA1698B0(&qword_1EBBECDB8, v37, type metadata accessor for MedicalIDDataSourceItem, &unk_1BA4C1778);
    v39 = &v36[OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedActionDelegate];
    swift_beginAccess();
    *(v39 + 1) = v38;
    swift_unknownObjectWeakAssign();
    type metadata accessor for ProfileViewController();
    if (swift_dynamicCastClass())
    {
      v40 = v33;
      v41 = sub_1BA388464();
      if (v42)
      {
        v43 = v41;
        v44 = v42;
        type metadata accessor for MedicalIDDataSourceItem();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v46 = [objc_opt_self() bundleForClass_];
        sub_1BA4A1318();

        sub_1B9F2EAC0(0);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1BA4B5480;
        *(v47 + 56) = MEMORY[0x1E69E6158];
        *(v47 + 64) = sub_1B9F1BE20();
        *(v47 + 32) = v43;
        *(v47 + 40) = v44;
        v48 = v36;
        sub_1BA4A6768();

        v49 = sub_1BA4A6758();

        [v48 setTitle_];

LABEL_19:
        v62 = [v33 navigationController];
        if (v62)
        {
          v63 = a2 & 1;
          v64 = v62;
          [v62 pushViewController:v36 animated:v63];
        }

        return;
      }
    }

    type metadata accessor for MedicalIDDataSourceItem();
    v58 = swift_getObjCClassFromMetadata();
    v59 = objc_opt_self();
    v60 = v36;
    v61 = [v59 bundleForClass_];
    sub_1BA4A1318();

    v49 = sub_1BA4A6758();

    [v60 setTitle_];
    goto LABEL_19;
  }

  sub_1BA4A3E48();
  v51 = sub_1BA4A3E88();
  v52 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v68[0] = v54;
    *v53 = 136315138;
    v55 = sub_1BA4A85D8();
    v57 = sub_1B9F0B82C(v55, v56, v68);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_1B9F07000, v51, v52, "[%s] Did not have presentingViewController to display Medical ID view controller", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1BFAF43A0](v54, -1, -1);
    MEMORY[0x1BFAF43A0](v53, -1, -1);
  }

  (*(v10 + 8))(v17, v67);
}

void sub_1BA168C40(char a1)
{
  v2 = v1;
  v11 = [objc_opt_self() standardConfiguration];
  [v11 setIsDeletionAvailable_];
  [v11 setShouldShowDonateLifeRegistrationIfAvailable_];
  [v11 setSuggestHealthData_];
  [v11 setAccessPoint_];
  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_healthStore);
  v5 = sub_1BA4A2928();
  v6 = [objc_allocWithZone(MEMORY[0x1E69B1510]) initWithHealthStore:v4 medicalIDData:v5 displayConfiguration:v11];

  v7 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController);
  if (v7)
  {
    v8 = [v7 navigationController];
    if (v8)
    {
      v9 = a1 & 1;
      v10 = v8;
      [v8 pushViewController:v6 animated:v9];
    }
  }
}

uint64_t sub_1BA168D94(void **a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v11 = *a1;
  if (*a1)
  {
    sub_1BA4A3E48();
    v12 = v11;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v11;
      v26 = v16;
      *v15 = 136446210;
      v17 = v11;
      sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, &v26);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1B9F07000, v13, v14, "Failed to show Medical ID due to %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_1BA4A3E48();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B9F07000, v22, v23, "Successfully displayed Medical ID view controller", v24, 2u);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    return (*(v3 + 8))(v10, v2);
  }
}

void sub_1BA169018(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_1BA4A2C08())
    {
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](0xD000000000000022, 0x80000001BA4EEDD0);
      sub_1BA4A7FB8();
      sub_1BA4A8018();
      __break(1u);
    }

    else
    {
      sub_1BA168388(v2, 1);
    }
  }
}

uint64_t sub_1BA16914C@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA16A660();
  result = swift_allocError();
  *a1 = result;
  return result;
}

id sub_1BA1691BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalIDDataSourceItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1692F4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_reuseIdentifier);

  return v1;
}

uint64_t sub_1BA16934C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*v3 + *a3);

  return v4;
}

uint64_t sub_1BA16939C()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA1693F8(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1BA1694C0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_uniqueIdentifier);

  return v1;
}

uint64_t sub_1BA169500(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void sub_1BA169564(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = *(*v2 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController);
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController) = a2;
  v5 = a2;

  v6 = sub_1BA4A2968();
  sub_1BA168388(v6, 1);

  sub_1BA1698F8(v6);
}

void sub_1BA1695D8(uint64_t a1)
{
  sub_1B9FF168C(a1, v10);
  if (!v11)
  {
    sub_1B9F23224(v10);
    goto LABEL_8;
  }

  sub_1B9F0ADF8(0, &qword_1EBBECD88, 0x1E696C648);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v2 = v9;
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController);
  if (v3)
  {
    v4 = [v3 navigationController];
    if (v4)
    {
      v5 = v4;

      v6 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultPresented);
      *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultPresented) = v9;
      v7 = v9;
      sub_1BA1698F8(v6);
      v8 = v7;
      sub_1BA168C40(0);

      v2 = v5;
    }
  }
}

void sub_1BA169794(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v3 = [v5 navigationController];
    if (v3)
    {
      v4 = v3;
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA169810(uint64_t a1, uint64_t a2)
{
  result = sub_1BA1698B0(&qword_1EBBECD70, a2, type metadata accessor for MedicalIDDataSourceItem, &unk_1BA4C1814);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA1698B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1BA1698F8(id a1)
{
  if (a1 >= 3)
  {
  }
}

id sub_1BA169908(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v2[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_uniqueIdentifier];
  v32 = 0xD000000000000018;
  v33 = 0x80000001BA4EEE30;
  sub_1BA4A1788();
  sub_1BA1698B0(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v12 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v12);

  (*(v7 + 8))(v10, v6);
  v13 = v33;
  *v11 = v32;
  v11[1] = v13;
  v14 = &v2[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_text];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *v14 = sub_1BA4A1318();
  v14[1] = v15;
  v16 = &v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_detailText];
  *v16 = 0;
  v16[1] = 0;
  v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_showDisclosureIndicator] = 1;
  v17 = &v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_reuseIdentifier];
  v32 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *v17 = sub_1BA4A6808();
  v17[1] = v18;
  sub_1B9F23348(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5460;
  *(v19 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v19 + 40) = v20;
  strcpy((v19 + 48), "ShowMedicalID");
  *(v19 + 62) = -4864;
  v21 = sub_1BA4A6AE8();

  v22 = HKUIJoinStringsForAutomationIdentifier();

  if (v22)
  {
    v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = &v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_baseIdentifier];
  *v26 = v23;
  v26[1] = v25;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultCancellable] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultPresented] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_healthStore] = a1;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_medicalIDCache] = a2;
  v27 = a1;
  v28 = a2;
  sub_1BA4A2938();
  v29 = type metadata accessor for MedicalIDDataSourceItem();
  v31.receiver = v3;
  v31.super_class = v29;
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t sub_1BA169CBC(void *a1, uint64_t a2)
{
  v42 = a2;
  sub_1B9F3E26C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1BA4A6468();
  v6 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A72D8();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA16A428(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA16A4C0(0);
  v21 = *(v20 - 8);
  v38 = v20;
  v39 = v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA16A590(0);
  v26 = *(v25 - 8);
  v40 = v25;
  v41 = v26;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  sub_1BA16A348();
  sub_1BA1698B0(&qword_1EBBECD98, 255, sub_1BA16A348, MEMORY[0x1E695BED8]);
  sub_1BA4A5028();
  sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
  sub_1BA1698B0(&qword_1EBBECDD0, 255, sub_1BA16A428, MEMORY[0x1E695BC90]);
  sub_1BA4A5138();
  (*(v16 + 8))(v19, v15);
  (*(v6 + 16))(v9, v42, v37);
  sub_1BA4A72E8();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v30 = sub_1BA4A7308();
  v46 = v30;
  v31 = sub_1BA4A72A8();
  v32 = v43;
  (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
  sub_1BA1698B0(&unk_1EBBECDE8, 255, sub_1BA16A4C0, MEMORY[0x1E695BCF8]);
  sub_1B9F3DC80();
  v33 = v38;
  sub_1BA4A50B8();
  sub_1B9F3E2C4(v32);

  (*(v44 + 8))(v13, v45);
  (*(v39 + 8))(v24, v33);
  sub_1BA1698B0(&qword_1EBBECDF8, 255, sub_1BA16A590, MEMORY[0x1E695BE48]);
  v34 = v40;
  v35 = sub_1BA4A4F98();
  (*(v41 + 8))(v29, v34);
  return v35;
}

void sub_1BA16A26C()
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696C248]) initWithHealthStore_];
  [v4 deleteMedicalIDDataWithCompletion_];
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController);
  if (v1)
  {
    v2 = [v1 navigationController];
    if (v2)
    {
      v3 = v2;

      sub_1BA168388(2, 0);
    }
  }
}

id sub_1BA16A338(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_1BA16A348()
{
  if (!qword_1EBBECD90)
  {
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECD90);
    }
  }
}

void sub_1BA16A3B0(uint64_t a1)
{
  if (!qword_1EBBECDA0)
  {
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBECDA0);
    }
  }
}

void sub_1BA16A428(uint64_t a1)
{
  if (!qword_1EBBECDC0)
  {
    sub_1BA16A348();
    sub_1BA1698B0(&qword_1EBBECD98, 255, sub_1BA16A348, MEMORY[0x1E695BED8]);
    v1 = sub_1BA4A4AD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBECDC0);
    }
  }
}

void sub_1BA16A4C0(uint64_t a1)
{
  if (!qword_1EBBECDC8)
  {
    sub_1BA16A428(255);
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    sub_1BA1698B0(&qword_1EBBECDD0, 255, sub_1BA16A428, MEMORY[0x1E695BC90]);
    v1 = sub_1BA4A4B38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBECDC8);
    }
  }
}

void sub_1BA16A590(uint64_t a1)
{
  if (!qword_1EBBECDD8)
  {
    sub_1BA16A4C0(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA1698B0(&unk_1EBBECDE8, 255, sub_1BA16A4C0, MEMORY[0x1E695BCF8]);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4C38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBECDD8);
    }
  }
}

unint64_t sub_1BA16A660()
{
  result = qword_1EBBECE00;
  if (!qword_1EBBECE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECE00);
  }

  return result;
}

unint64_t sub_1BA16A6B4()
{
  result = qword_1EDC6BE20;
  if (!qword_1EDC6BE20)
  {
    type metadata accessor for CollectionViewListDisclosureCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC6BE20);
  }

  return result;
}

unint64_t sub_1BA16A710()
{
  result = qword_1EBBECE10;
  if (!qword_1EBBECE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECE10);
  }

  return result;
}

uint64_t sub_1BA16A76C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE20 = result;
  *algn_1EBBECE28 = v1;
  return result;
}

uint64_t sub_1BA16A830()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE30 = result;
  *algn_1EBBECE38 = v1;
  return result;
}

uint64_t sub_1BA16A8F0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE40 = result;
  *algn_1EBBECE48 = v1;
  return result;
}

uint64_t sub_1BA16A99C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE50 = result;
  *algn_1EBBECE58 = v1;
  return result;
}

uint64_t sub_1BA16AA48()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE60 = result;
  *algn_1EBBECE68 = v1;
  return result;
}

uint64_t sub_1BA16AAF4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE70 = result;
  *algn_1EBBECE78 = v1;
  return result;
}

uint64_t sub_1BA16ABA0()
{
  v1 = OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_id;
  v2 = sub_1BA4A1798();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_healthExperienceStore));
  sub_1BA172980(v0 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA16AC90(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v68 = a3;
  v69 = *v4;
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SummarySharingSelectionFlow(0);
  v65 = *(v11 - 8);
  v64 = v65[8];
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1B9F0A534(a1, v75);
  v63 = type metadata accessor for SummarySharingSelectionFlow;
  sub_1BA16FF9C(a3, v14, type metadata accessor for SummarySharingSelectionFlow);
  type metadata accessor for SummarySharingAlertsSelectionDataSource.Configuration(0);
  v15 = swift_allocObject();
  sub_1BA4A1788();
  v16 = v15 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate;
  *(v15 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_iconCache;
  *(v15 + v17) = sub_1B9FDB1F8(MEMORY[0x1E69E7CC0]);
  sub_1B9F1134C(v75, v15 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_healthExperienceStore);
  v62 = type metadata accessor for SummarySharingSelectionFlow;
  sub_1BA172650(v14, v15 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);
  *(v16 + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(v15 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_hasShowAllButton) = a4;
  *(v4 + qword_1EBBECE80) = v15;

  v18 = sub_1BA171E0C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_1BA4A1B68();
  v20 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v18 managedObjectContext:v19 sectionNameKeyPath:0 cacheName:0];

  sub_1B9F126E0(0);
  v22 = objc_allocWithZone(v21);
  v67 = v20;
  v23 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v67);
  type metadata accessor for SummarySharingSelectionContextDelegate();
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v24 + 24) = 0;
  swift_unknownObjectWeakAssign();
  sub_1BA4A27B8();
  sub_1B9F0CA3C(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v25 = sub_1BA4A1C68();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v60 = xmmword_1BA4B5480;
  *(v28 + 16) = xmmword_1BA4B5480;
  (*(v26 + 104))(v28 + v27, *MEMORY[0x1E69A3B78], v25);
  v29 = sub_1BA4A0FA8();
  v30 = v61;
  (*(*(v29 - 8) + 56))(v61, 1, 1, v29);
  sub_1B9F1C0E4(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = v60;
  *&v60 = v23;
  *(v31 + 32) = sub_1BA4A1D78();
  v32 = MEMORY[0x1BFAED020](v28, 0, v30, v31);

  sub_1BA172980(v30, sub_1BA170230);
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = sub_1BA4A1B68();
  v61 = v33;
  sub_1BA16FF9C(v68, v14, v63);
  v34 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v35 = (v64 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1BA172650(v14, v36 + v34, v62);
  *(v36 + v35) = v15;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
  sub_1BA1722CC(0);
  v37 = swift_allocObject();
  *(v37 + *(*v37 + 600)) = MEMORY[0x1E69E7CC0];
  v38 = (v37 + *(*v37 + 608));
  *v38 = sub_1BA17220C;
  v38[1] = v36;
  type metadata accessor for FetchedResultsContext();
  swift_allocObject();

  v39 = v32;
  v65 = v39;
  v40 = sub_1BA0A31C4(v33, v39);

  sub_1BA0A27C8();
  *(v37 + *(*v37 + 616)) = v40;
  v41 = swift_allocObject();
  v41[2] = sub_1BA17220C;
  v41[3] = v36;
  v41[4] = v40;
  v42 = v37 + qword_1EDC64EB0;
  *v42 = sub_1BA17233C;
  *(v42 + 8) = v41;
  *(v42 + 16) = 0;
  v43 = v60;
  *(v37 + qword_1EDC84BB8) = v60;
  *(v37 + *(*v37 + 512)) = v24;
  *(v37 + *(*v37 + 520)) = 1;
  *&v75[0] = v24;
  v44 = v43;
  swift_retain_n();
  v45 = v44;

  v46 = sub_1B9F18214();
  v71 = sub_1BA17233C;
  v72 = v41;
  v73 = v75;
  v74 = 1;
  v47 = sub_1BA2F4270(sub_1BA1723B8, v70, v46);

  *&v75[0] = 0x534464657070614DLL;
  *(&v75[0] + 1) = 0xE90000000000003CLL;
  v48 = *&v45[qword_1EDC84AD0];
  v49 = *&v45[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v48, v49);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v50 = MutableArrayDataSource.init(arrangedSections:identifier:)(v47, *&v75[0], *(&v75[0] + 1));
  v51 = *(v50 + qword_1EDC84BB8);
  v52 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v51 + v52) registerObserver_];

  v53 = *(*(v50 + *(*v50 + 616)) + 16);
  v54 = qword_1EBBEA528;
  swift_beginAccess();
  v55 = *(v53 + v54);

  [v55 registerObserver_];

  v56 = swift_allocObject();
  v57 = v69;
  *(v56 + 16) = v15;
  *(v56 + 24) = v57;

  v58 = sub_1BA271888(v50, sub_1BA172410, v56, 1);

  sub_1BA172980(v68, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return v58;
}

uint64_t sub_1BA16B5E4(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a5;
  v138 = a4;
  v135 = a3;
  v140 = type metadata accessor for SummarySharingSelectionFlow(0);
  v7 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v8);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v134 = &v121 - v13;
  v136 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v136, v14);
  v16 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA17294C(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1728B8(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v139 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v25);
  v27 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v121 - v30;
  v32 = *a2;
  sub_1B9F0A534(a1, v145);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v129 = v10;
  v131 = v16;
  v132 = v31;
  v33 = v143;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(v32 + 24);
    ObjectType = swift_getObjectType();
    v36 = (*(v34 + 8))(ObjectType, v34);
    swift_unknownObjectRelease();

    v37 = [v33 uniqueIdentifier];
    v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v40 = v39;

    swift_beginAccess();
    v41 = *(v36 + 32);

    v130 = sub_1BA3D30B0(v38, v40, v41);
    v133 = v36;
  }

  else
  {
    v130 = 0;
    v133 = 0;
  }

  if (FeedItem.pluginInfo.getter())
  {
    v42 = sub_1BA4A3AD8();

    v43 = sub_1BA2FD9C4();
    v45 = v44;

    if (v43)
    {
      v46 = swift_getObjectType();
      sub_1BA16FF9C(v138, v20, type metadata accessor for SummarySharingSelectionFlow);
      (*(v7 + 56))(v20, 0, 1, v140);
      (*(v45 + 40))(v33, v20, v46, v45);
      sub_1BA172980(v20, sub_1BA17294C);
      v47 = *(v139 + 48);
      if (v47(v24, 1, v141) == 1)
      {
        swift_unknownObjectRelease();
        v48 = sub_1BA1728B8;
        v49 = v24;
LABEL_19:
        sub_1BA172980(v49, v48);
        goto LABEL_20;
      }

      v138 = v43;
      v50 = v132;
      sub_1BA172650(v24, v132, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v51 = *(v50 + 8);
      if (v51)
      {
        v52 = v51;
        if ((HKObjectType.isHealthSharingAlert.getter() & 1) != 0 && *(v50 + 24))
        {
          v123._object = *(v50 + 24);
          v124 = v47;
          v53 = v52;
          v123._countAndFlagsBits = *(v50 + 16);
          sub_1BA16FF9C(v50, v27, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          Strong = swift_unknownObjectWeakLoadStrong();
          v127 = *(v32 + 24);
          v143 = type metadata accessor for SummarySharingSelectableDataTypeCell();
          sub_1BA1729E0(0, &qword_1EBBE9DF8, type metadata accessor for SummarySharingSelectableDataTypeCell);
          v54 = v33;
          v55 = sub_1BA4A6808();
          v57 = v56;
          v58 = v131;
          *(v131 + 5) = 0;
          swift_unknownObjectWeakInit();
          v125 = &v58[*(v136 + 40)];
          v139 = *(v139 + 56);
          (v139)();
          *v58 = v55;
          *(v58 + 1) = v57;
          v143 = 0xD000000000000025;
          v144 = 0x80000001BA4E3640;
          v59 = [v54 uniqueIdentifier];
          v60 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v62 = v61;

          MEMORY[0x1BFAF1350](v60, v62);

          v63 = v144;
          *(v58 + 2) = v143;
          *(v58 + 3) = v63;
          v64 = [v54 uniqueIdentifier];
          v65 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v67 = v66;
          v122 = v54;

          *(v58 + 7) = v65;
          *(v58 + 8) = v67;
          v68 = v125;
          sub_1BA172980(v125, sub_1BA1728B8);
          sub_1BA172650(v27, v68, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          (v139)(v68, 0, 1, v141);
          v58[49] = v130 & 1;
          *(v58 + 5) = v127;
          swift_unknownObjectWeakAssign();
          swift_unknownObjectRelease();
          v58[48] = 1;
          v69 = v135;
          if (v135 >> 62)
          {
            goto LABEL_83;
          }

          for (i = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
          {
            v71 = v137;
            v72 = v53;
            if (!i)
            {
              break;
            }

            v68 = 0;
            v139 = v69 & 0xC000000000000001;
            Strong = v69 & 0xFFFFFFFFFFFFFF8;
            v127 = (v69 + 32);
            v121 = i;
            while (1)
            {
              if (v139)
              {
                v74 = MEMORY[0x1BFAF2860](v68, v135);
              }

              else
              {
                if (v68 >= *(Strong + 16))
                {
                  goto LABEL_82;
                }

                v74 = *&v127[8 * v68];
              }

              v69 = v74;
              if (__OFADD__(v68++, 1))
              {
                break;
              }

              v76 = sub_1BA4A2758();
              v77 = v76;
              if ((v76 & 0xC000000000000001) != 0)
              {
                v78 = v72;
                v79 = sub_1BA4A7D08();

                if (v79)
                {
                  v126 = v69;
                  goto LABEL_44;
                }
              }

              else if (*(v76 + 16))
              {
                v126 = v69;
                sub_1B9F0ADF8(0, &qword_1EDC6E920, 0x1E696C2E0);
                v80 = sub_1BA4A7788();
                v81 = -1 << *(v77 + 32);
                v82 = v80 & ~v81;
                if ((*(v77 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
                {
                  v69 = ~v81;
                  while (1)
                  {
                    v83 = *(*(v77 + 48) + 8 * v82);
                    v84 = sub_1BA4A7798();

                    if (v84)
                    {
                      break;
                    }

                    v82 = (v82 + 1) & v69;
                    if (((*(v77 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
                    {
                      goto LABEL_23;
                    }
                  }

                  v71 = v137;
                  v72 = v53;
                  goto LABEL_44;
                }

LABEL_23:

                v71 = v137;
                v72 = v53;
                i = v121;
              }

              else
              {
              }

              if (v68 == i)
              {
                v126 = 0;
LABEL_44:
                v68 = v125;
                goto LABEL_45;
              }
            }

            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            ;
          }

          v126 = 0;
LABEL_45:
          v85 = LocalizedGeminiHealthAlertTitle(_:value:)(v72, v123);
          v86 = v124;
          if (!v124(v68, 1, v141))
          {
            *(v68 + 16) = v85;
          }

          v87 = OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow;
          v88 = v134;
          sub_1BA16FF9C(v71 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, v134, type metadata accessor for SummarySharingSelectionFlow);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1BA172980(v88, type metadata accessor for SummarySharingSelectionFlow);
            goto LABEL_65;
          }

          v89 = OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_iconCache;
          swift_beginAccess();
          v90 = sub_1BA03E8C8(v72, *(v71 + v89));
          swift_endAccess();
          if (v90)
          {
            if (v86(v68, 1, v141))
            {

              goto LABEL_65;
            }

            v98 = *(v68 + 48);
            *(v68 + 48) = v90;
          }

          else
          {
            v91 = sub_1BA39EEFC(v72);
            if (!v91)
            {
              goto LABEL_65;
            }

            v92 = v91;
            v93 = v68;
            swift_beginAccess();
            v94 = *(v71 + v89);
            if ((v94 & 0xC000000000000001) != 0)
            {
              if (v94 < 0)
              {
                v95 = *(v71 + v89);
              }

              else
              {
                v95 = v94 & 0xFFFFFFFFFFFFFF8;
              }

              v96 = v92;
              v97 = v72;
              result = sub_1BA4A7CC8();
              if (__OFADD__(result, 1))
              {
                __break(1u);
                return result;
              }

              *(v71 + v89) = sub_1BA1703E0(v95, result + 1);
            }

            else
            {
              v96 = v92;
              v99 = v72;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v142 = *(v71 + v89);
            sub_1B9FF1C30(v96, v72, isUniquelyReferenced_nonNull_native);
            *(v71 + v89) = v142;

            swift_endAccess();
            if (v86(v93, 1, v141))
            {

              goto LABEL_65;
            }

            v98 = *(v93 + 48);
            *(v93 + 48) = v92;
          }

LABEL_65:
          v101 = v133;
          if (v133)
          {

            v102 = v122;
            v103 = [v122 uniqueIdentifier];
            v104 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v106 = v105;

            swift_beginAccess();
            v107 = *(v101 + 40);

            v108 = sub_1BA3D30B0(v104, v106, v107);

            v109 = v131;
          }

          else
          {
            v108 = 0;
            v109 = v131;
            v102 = v122;
          }

          if (v126)
          {
            v110 = v126;
            v111 = sub_1BA4A2768();

            v112 = sub_1BA4A2018();
            v114 = sub_1BA3D30B0(v112, v113, v111);

            if ((*(v71 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_hasShowAllButton) & 1) == 0)
            {
              goto LABEL_75;
            }
          }

          else if (*(v71 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_hasShowAllButton) != 1)
          {
            v114 = 0;
LABEL_75:
            v119 = v129;
            sub_1BA16FF9C(v71 + v87, v129, type metadata accessor for SummarySharingSelectionFlow);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v120 = v130 | v108 | v114;
              sub_1BA172980(v119, type metadata accessor for SummarySharingSelectionFlow);
              v115 = v132;
              if ((v120 & 1) == 0)
              {
                goto LABEL_79;
              }

LABEL_73:
              sub_1BA172450(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
              v116 = swift_allocObject();
              *(v116 + 16) = xmmword_1BA4B5480;
              *(v116 + 56) = v136;
              *(v116 + 64) = sub_1BA1721C4(&unk_1EBBE9B38, type metadata accessor for SummarySharingSelectableDataTypeItem, &protocol conformance descriptor for SummarySharingSelectableDataTypeItem);
              v117 = v116;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v116 + 32));
              sub_1BA172650(v109, boxed_opaque_existential_1, type metadata accessor for SummarySharingSelectableDataTypeItem);
              swift_unknownObjectRelease();

LABEL_80:
              sub_1BA172980(v115, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
              return v117;
            }

            sub_1BA172980(v119, type metadata accessor for SummarySharingSelectionFlow);
            v115 = v132;
            if (v114)
            {
              goto LABEL_73;
            }

LABEL_79:

            swift_unknownObjectRelease();

            sub_1BA172980(v109, type metadata accessor for SummarySharingSelectableDataTypeItem);
            v117 = MEMORY[0x1E69E7CC0];
            goto LABEL_80;
          }

          v115 = v132;
          if ((v130 | v108))
          {
            goto LABEL_73;
          }

          goto LABEL_79;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v48 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent;
      v49 = v50;
      goto LABEL_19;
    }
  }

LABEL_20:

  return MEMORY[0x1E69E7CC0];
}

__n128 sub_1BA16C490@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v15 = a1[4];
  v14 = a1[5];
  v66.n128_u64[0] = v10;
  v66.n128_u64[1] = v11;
  *&v67 = v12;
  *(&v67 + 1) = v13;
  v68 = v15;
  v69 = v14;
  v53 = v12[2];
  if (v53)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1BA2F67D4(v12);
    }

    v16 = v12[2];
    *&v60 = v12 + 4;
    *(&v60 + 1) = v16;
    sub_1BA17061C(&v60);
    *&v67 = v12;
    v17 = Array<A>.identifierToIndexDict()(v12);

    *(&v67 + 1) = v17;
  }

  else
  {
    v18 = qword_1EBBE88D0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = *algn_1EBBF1688;
    v52 = qword_1EBBF1680;
    *&v60 = type metadata accessor for SummarySharingIconWithNameCell();
    sub_1BA1729E0(0, &qword_1EBBE9DF0, type metadata accessor for SummarySharingIconWithNameCell);
    v49 = v19;

    v51 = sub_1BA4A6808();
    v50 = v20;
    *&v60 = 0xD00000000000001FLL;
    *(&v60 + 1) = 0x80000001BA4EF020;
    sub_1BA4A1788();
    v21 = sub_1BA4A1748();
    v23 = v22;
    (*(v6 + 8))(v9, v5);
    MEMORY[0x1BFAF1350](v21, v23);

    v24 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1B9F281E8(0, v12[2] + 1, 1, v12);
    }

    v26 = v12[2];
    v25 = v12[3];
    v48 = a3;
    if (v26 >= v25 >> 1)
    {
      v12 = sub_1B9F281E8((v25 > 1), v26 + 1, 1, v12);
    }

    v27 = v51;
    *&v56 = v51;
    v28 = v50;
    *(&v56 + 1) = v50;
    v57 = v24;
    v29 = v52;
    *&v58 = v52;
    v30 = v49;
    *(&v58 + 1) = v49;
    v59 = 0uLL;
    *(&v61 + 1) = &type metadata for SummarySharingIconWithNameItem;
    v62 = sub_1BA14D884();
    v31 = swift_allocObject();
    *&v60 = v31;
    v32 = v57;
    v31[1] = v56;
    v31[2] = v32;
    v33 = v59;
    v31[3] = v58;
    v31[4] = v33;
    v12[2] = v26 + 1;
    sub_1B9F1134C(&v60, &v12[5 * v26 + 4]);
    *&v60 = v27;
    *(&v60 + 1) = v28;
    v61 = v24;
    v62 = v29;
    v63 = v30;
    v64 = 0;
    v65 = 0;
    sub_1BA14D8D8(&v56, v55);
    sub_1BA14D934(&v60);
    *&v67 = v12;
    v17 = Array<A>.identifierToIndexDict()(v12);

    *(&v67 + 1) = v17;
    v11 = v66.n128_u64[1];
    v10 = v66.n128_u64[0];
    v12 = v67;
    v15 = v68;
    v14 = v69;
    a3 = v48;
  }

  v34 = v53 != 0;
  *&v60 = v10;
  *(&v60 + 1) = v11;
  *&v61 = v12;
  *(&v61 + 1) = v17;
  v62 = v15;
  v63 = v14;

  v35 = v54;
  sub_1BA16ECDC(&v60, v54, v34, &v56);

  v36 = *(&v57 + 1);
  v37 = v58;
  v38 = __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
  *(&v61 + 1) = v36;
  v62 = *(v37 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
  (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v38, v36);
  sub_1B9F1134C(&v60, v55);
  v40 = v12[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v40 >= v12[3] >> 1)
  {
    v12 = sub_1B9F281E8(isUniquelyReferenced_nonNull_native, v40 + 1, 1, v12);
    *&v67 = v12;
  }

  sub_1BA17029C(0, 0, 1, v55, &qword_1EDC6AD50, MEMORY[0x1E69A3310], &qword_1EBBECEE8);
  *&v67 = v12;
  v42 = Array<A>.identifierToIndexDict()(v12);

  *(&v67 + 1) = v42;
  __swift_destroy_boxed_opaque_existential_1(&v56);
  sub_1BA16D9E4(&v66, v35);
  v43 = v68;
  v44 = v69;
  result = v66;
  v46 = v67;
  *a3 = v66;
  *(a3 + 16) = v46;
  *(a3 + 32) = v43;
  *(a3 + 40) = v44;
  return result;
}

double sub_1BA16CA30()
{
  v1 = v0;
  v2 = *(v0 + qword_1EDC84BB8);
  v3 = *(v2 + qword_1EDC84BB8);
  v4 = *(*v2 + 512);
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v2 + *(*v2 + 520));
  v7 = *(v2 + qword_1EDC64EB0);
  v8 = *(v2 + qword_1EDC64EB0 + 8);
  v9 = *(v2 + qword_1EDC64EB0 + 16);

  v10 = v3;
  sub_1BA1E433C(v10, v5, v6, v7, v8, v9);
  v12 = v11;

  sub_1BA0E7F10(v12, 1);

  v13 = *(v1 + *(*v1 + 520));
  v14 = *(v1 + qword_1EDC64EB0);
  v15 = *(v1 + qword_1EDC64EB0 + 8);
  v16 = *(v1 + qword_1EDC64EB0 + 16);

  sub_1BA2710F0(v17, v13, v14, v15, v16);
  v19 = v18;

  sub_1BA0E7F10(v19, 1);

  return result;
}

uint64_t sub_1BA16CBD8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t sub_1BA16CCBC()
{
  sub_1BA16CBD8();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA16CDA4(uint64_t a1)
{
  result = sub_1BA4A1798();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SummarySharingSelectionFlow(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_1BA16CE94(uint64_t a1)
{
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22 - v13;
  v15 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, qword_1EDC6CB90);
  sub_1BA16FF9C(v16, v14, type metadata accessor for ListLayoutConfiguration);
  v17 = *(v7 + 88);
  v18 = sub_1BA4A47D8();
  v19 = *(v18 - 8);
  (*(v19 + 8))(&v14[v17], v18);
  (*(v19 + 104))(&v14[v17], *MEMORY[0x1E69DC288], v18);
  sub_1BA16FF9C(*(v1 + qword_1EBBECE80) + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, v6, type metadata accessor for SummarySharingSelectionFlow);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(v14 + 8) = 0x4034000000000000;
    sub_1BA172980(v6, type metadata accessor for SummarySharingSelectionFlow);
  }

  else
  {
    ListLayoutConfiguration.withFooter.getter(v10);
    sub_1BA170004(v10, v14);
  }

  v20 = ListLayoutConfiguration.layout(for:)(v15);
  sub_1BA172980(v14, type metadata accessor for ListLayoutConfiguration);
  return v20;
}

BOOL sub_1BA16D14C(uint64_t a1, uint64_t a2)
{
  sub_1BA1728B8(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v85 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v86 = &v80 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v87 = &v80 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v80 - v15;
  sub_1BA17256C(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v80 - v23;
  v25 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v88 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v80 - v31;
  sub_1B9F0A534(a1, &v91);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  v33 = swift_dynamicCast();
  v34 = *(v26 + 56);
  if ((v33 & 1) == 0)
  {
    v34(v24, 1, 1, v25);
    v40 = sub_1BA17256C;
    v41 = v24;
LABEL_13:
    sub_1BA172980(v41, v40);
    return 0;
  }

  v34(v24, 0, 1, v25);
  sub_1BA172650(v24, v32, type metadata accessor for SummarySharingSelectableDataTypeItem);
  sub_1B9F0A534(a2, &v91);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1BA172980(v32, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v34(v20, 1, 1, v25);
    v40 = sub_1BA17256C;
    v41 = v20;
    goto LABEL_13;
  }

  v34(v20, 0, 1, v25);
  sub_1BA172650(v20, v88, type metadata accessor for SummarySharingSelectableDataTypeItem);
  v35 = *(v25 + 40);
  v36 = v32;
  sub_1BA16FF9C(&v32[v35], v16, sub_1BA1728B8);
  v37 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v38 = *(*(v37 - 8) + 48);
  if (v38(v16, 1, v37) == 1)
  {
    v39 = v16;
LABEL_10:
    sub_1BA172980(v39, sub_1BA1728B8);
    goto LABEL_11;
  }

  v42 = *(v16 + 7);
  v43 = v42;
  sub_1BA172980(v16, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v42)
  {
LABEL_11:
    sub_1BA172980(v88, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v41 = v36;
LABEL_12:
    v40 = type metadata accessor for SummarySharingSelectableDataTypeItem;
    goto LABEL_13;
  }

  v44 = *(v25 + 40);
  v45 = v87;
  sub_1BA16FF9C(v88 + v44, v87, sub_1BA1728B8);
  if (v38(v45, 1, v37) == 1)
  {

    v39 = v45;
    goto LABEL_10;
  }

  v81 = v44;
  v47 = *(v45 + 7);
  v48 = v47;
  sub_1BA172980(v45, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v47)
  {

    goto LABEL_11;
  }

  v87 = v43;
  v49 = [v43 displayName];
  v50 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v82 = v51;
  v83 = v50;

  v84 = v48;
  v52 = [v48 displayName];
  v53 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v55 = v54;

  if (v83 == v53 && v82 == v55)
  {
  }

  else
  {
    v56 = sub_1BA4A8338();

    if ((v56 & 1) == 0)
    {
      v65 = v87;
      v66 = [v87 displayName];
      v67 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v69 = v68;

      v91 = v67;
      v92 = v69;
      v70 = v84;
      v71 = [v84 displayName];
      v72 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v74 = v73;

      v89 = v72;
      v90 = v74;
      sub_1B9F252FC();
      v75 = sub_1BA4A7B78();

      sub_1BA172980(v88, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA172980(v36, type metadata accessor for SummarySharingSelectableDataTypeItem);
      return v75 == -1;
    }
  }

  v57 = v36 + v35;
  v58 = v36;
  v59 = v86;
  sub_1BA16FF9C(v57, v86, sub_1BA1728B8);
  v60 = v38(v59, 1, v37);
  v61 = v87;
  if (v60 == 1)
  {

    sub_1BA172980(v59, sub_1BA1728B8);
LABEL_35:
    sub_1BA172980(v88, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v41 = v58;
    goto LABEL_12;
  }

  v62 = *(v59 + 16);
  v63 = *(v59 + 24);

  sub_1BA172980(v59, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v63)
  {
LABEL_33:

    goto LABEL_34;
  }

  v64 = v85;
  sub_1BA16FF9C(v88 + v81, v85, sub_1BA1728B8);
  if (v38(v64, 1, v37) == 1)
  {

    sub_1BA172980(v64, sub_1BA1728B8);
LABEL_34:
    v58 = v36;
    goto LABEL_35;
  }

  v77 = *(v64 + 16);
  v78 = *(v64 + 24);

  sub_1BA172980(v64, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v78)
  {

    goto LABEL_33;
  }

  v91 = v62;
  v92 = v63;
  v89 = v77;
  v90 = v78;
  sub_1B9F252FC();
  v79 = sub_1BA4A7B78();

  sub_1BA172980(v88, type metadata accessor for SummarySharingSelectableDataTypeItem);
  sub_1BA172980(v36, type metadata accessor for SummarySharingSelectableDataTypeItem);

  return v79 == -1;
}

void sub_1BA16D9E4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_hasShowAllButton) != 1)
  {
    return;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA172450(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  v5 = sub_1BA4A1318();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B9F1BE20();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = sub_1BA4A6768();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = [v11 secondarySystemBackgroundColor];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a2;

  v30 = [v11 linkColor];
  *&v35 = 0x6D6574496B6E694CLL;
  *(&v35 + 1) = 0xE90000000000005FLL;
  MEMORY[0x1BFAF1350](v8, v10);
  v14 = a1;
  v15 = *(a1 + 16);
  v16 = v15[2];
  if (!v16)
  {
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    goto LABEL_12;
  }

  sub_1B9F0A534(&v15[5 * v16 - 1], &v35);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    goto LABEL_12;
  }

  if (!*(&v33 + 1))
  {
LABEL_12:
    sub_1B9F43EAC(&v32, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
    goto LABEL_13;
  }

  v29 = v12;
  sub_1B9F1134C(&v32, &v35);
  __swift_project_boxed_opaque_existential_1(&v35, v36);
  v17 = sub_1BA4A2E58();
  v19 = v18;
  *&v32 = type metadata accessor for SummarySharingIconWithNameCell();
  sub_1BA1729E0(0, &qword_1EBBE9DF0, type metadata accessor for SummarySharingIconWithNameCell);
  if (v17 == sub_1BA4A6808() && v19 == v20)
  {

    goto LABEL_20;
  }

  v25 = sub_1BA4A8338();

  if (v25)
  {
LABEL_20:
    if (v15[2])
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_22:
        v12 = v29;
        v26 = v15[2];
        if (!v26)
        {
          __break(1u);
          return;
        }

        v27 = v26 - 1;
        __swift_destroy_boxed_opaque_existential_1(&v15[5 * v26 - 1]);
        v15[2] = v27;
        v14 = a1;
        *(a1 + 16) = v15;
        v28 = Array<A>.identifierToIndexDict()(v15);

        *(a1 + 24) = v28;
        __swift_destroy_boxed_opaque_existential_1(&v35);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    v15 = sub_1BA2F67D4(v15);
    goto LABEL_22;
  }

  __swift_destroy_boxed_opaque_existential_1(&v35);
  v12 = v29;
LABEL_13:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1B9F281E8(0, v15[2] + 1, 1, v15);
  }

  v22 = v15[2];
  v21 = v15[3];
  if (v22 >= v21 >> 1)
  {
    v15 = sub_1B9F281E8((v21 > 1), v22 + 1, 1, v15);
  }

  v36 = &type metadata for LinkButtonItem;
  v37 = sub_1BA1724E4();
  v23 = swift_allocObject();
  *&v35 = v23;
  v23[2] = 0x6D6574496B6E694CLL;
  v23[3] = 0xE90000000000005FLL;
  v23[4] = v8;
  v23[5] = v10;
  v23[6] = v30;
  v23[7] = v12;
  v23[8] = sub_1BA1724BC;
  v23[9] = v13;
  v15[2] = v22 + 1;
  sub_1B9F1134C(&v35, &v15[5 * v22 + 4]);
  *(v14 + 16) = v15;
  v24 = Array<A>.identifierToIndexDict()(v15);

  *(v14 + 24) = v24;
}

uint64_t sub_1BA16DF54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A1798();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v18 == a2)
  {
  }

  else
  {
    v44 = v7;
    v45 = v9;
    v20 = sub_1BA4A8338();

    if ((v20 & 1) == 0)
    {
      sub_1BA4A3D88();

      v21 = sub_1BA4A3E88();
      v22 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v46 = v43;
        *v23 = 136446466;
        v24 = sub_1BA4A85D8();
        v26 = sub_1B9F0B82C(v24, v25, &v46);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_1B9F0B82C(a1, a2, &v46);
        _os_log_impl(&dword_1B9F07000, v21, v22, "[%{public}s] Asked for a supplementary item type we weren't expecting: %s", v23, 0x16u);
        v27 = v43;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v27, -1, -1);
        MEMORY[0x1BFAF43A0](v23, -1, -1);
      }

      (*(v45 + 8))(v12, v8);
      a3[3] = &type metadata for EmptyHeaderItem;
      a3[4] = sub_1B9FDA1B0();
      *a3 = swift_allocObject();
      return EmptyHeaderItem.init()();
    }
  }

  if (sub_1BA4A2C68())
  {
    if (qword_1EBBE8410 != -1)
    {
      swift_once();
    }

    v29 = &qword_1EBBECE40;
  }

  else
  {
    if (qword_1EBBE8418 != -1)
    {
      swift_once();
    }

    v29 = &qword_1EBBECE50;
  }

  v31 = *v29;
  v30 = v29[1];

  v46 = 0x74497265746F6F46;
  v47 = 0xEB000000005F6D65;
  sub_1BA4A1788();
  v32 = sub_1BA4A1748();
  v34 = v33;
  (*(v14 + 8))(v17, v13);
  MEMORY[0x1BFAF1350](v32, v34);

  v35 = v46;
  v36 = v47;
  v37 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  a3[3] = v37;
  a3[4] = sub_1BA1721C4(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem, &protocol conformance descriptor for CollectionViewGroupedFooterItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v46 = type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA1729E0(0, qword_1EDC63330, type metadata accessor for CollectionViewGroupedFooterCell);
  *boxed_opaque_existential_1 = sub_1BA4A6808();
  boxed_opaque_existential_1[1] = v39;
  v40 = boxed_opaque_existential_1 + *(v37 + 32);
  *v40 = 0u;
  *(v40 + 1) = 0u;
  v40[32] = 1;
  v41 = (boxed_opaque_existential_1 + *(v37 + 28));
  *v41 = v31;
  v41[1] = v30;
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  result = swift_storeEnumTagMultiPayload();
  boxed_opaque_existential_1[2] = v35;
  boxed_opaque_existential_1[3] = v36;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = 0;
  return result;
}

void sub_1BA16E438(void *a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v61 - v15;
  swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17 && a1)
  {
    v18 = v17;
    v62 = v12;
    sub_1B9F0A534(a2 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_healthExperienceStore, v70);
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 8);
    v21 = a1;
    v66 = v18;
    v67 = v21;
    v22 = v20(ObjectType, v18);
    v65 = v16;
    sub_1BA16FF9C(a2 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, v16, type metadata accessor for SummarySharingSelectionFlow);
    v63 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v23 = objc_allocWithZone(type metadata accessor for SummarySharingAlertsSelectionViewController());
    *&v23[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v24 = MEMORY[0x1E69E7CC0];
    *&v23[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
    sub_1B9F0A534(v70, v69);
    swift_beginAccess();
    v64 = v22;
    v25 = *(v22 + 24);
    v26 = v25[2];
    if (v26 && (v24 = sub_1BA0219CC(v25[2], 0), v27 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8), sub_1BA023688(&v68, v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v26, v25), v29 = v28, v30 = v68, , sub_1B9F52E48(v30), v29 != v26))
    {
      __break(1u);
    }

    else
    {
      v31 = v65;
      v32 = v62;
      sub_1BA16FF9C(v65, v62, type metadata accessor for SummarySharingSelectionFlow);
      type metadata accessor for SummarySharingAlertsSelectionDataSource(0);
      swift_allocObject();
      v33 = sub_1BA16AC90(v69, v24, v32, 0);
      *&v23[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_alertsDataSource] = v33;
      v34 = v64;
      *&v23[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_selectedDataTypesContext] = v64;
      sub_1B9F1DEA0(0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1BA4B5480;
      *(v35 + 32) = v33;
      *(v35 + 40) = &protocol witness table for MutableArrayDataSource;
      type metadata accessor for CompoundSectionedDataSource(0);
      swift_allocObject();

      v36 = CompoundSectionedDataSource.init(_:)(v35);
      v37 = CompoundDataSourceCollectionViewController.init(dataSource:)(v36);
      v69[0] = *(v34 + 48);
      v38 = MEMORY[0x1E695BF70];
      sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
      sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v38, MEMORY[0x1E695BF88]);
      v39 = v37;
      v69[0] = sub_1BA4A4F98();
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = sub_1BA14DE2C;
      *(v41 + 24) = v40;
      v42 = MEMORY[0x1E695BED0];
      sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
      sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v42, MEMORY[0x1E695BED8]);
      sub_1BA4A5148();

      swift_beginAccess();
      sub_1B9F0CA3C(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
      sub_1BA091D04();
      sub_1BA4A4D38();
      swift_endAccess();

      *(*(*&v39[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_alertsDataSource] + qword_1EBBECE80) + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingAlertsSelectionViewController;
      swift_unknownObjectWeakAssign();
      type metadata accessor for SummarySharingSelectionContextDelegate();
      v43 = swift_allocObject();
      *(v43 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v43 + 24) = &protocol witness table for SummarySharingAlertsSelectionViewController;
      swift_unknownObjectWeakAssign();

      sub_1BA29AAC4(v43);
      sub_1BA16CA30();

      sub_1BA172980(v31, type metadata accessor for SummarySharingSelectionFlow);
      __swift_destroy_boxed_opaque_existential_1(v70);

      v44 = &v39[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate];
      swift_beginAccess();
      v45 = v67;
      *(v44 + 1) = v66;
      swift_unknownObjectWeakAssign();
      v46 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
      [v45 presentViewController:v46 animated:1 completion:0];
    }
  }

  else
  {
    sub_1BA4A3D88();
    v47 = a1;
    v48 = sub_1BA4A3E88();
    v49 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v70[0] = v67;
      *v50 = 136315394;
      v51 = sub_1BA4A85D8();
      v53 = sub_1B9F0B82C(v51, v52, v70);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v54 = v47;
      v55 = [v54 description];
      v56 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v58 = v57;

      v59 = sub_1B9F0B82C(v56, v58, v70);

      *(v50 + 14) = v59;
      _os_log_impl(&dword_1B9F07000, v48, v49, "[%s] %s does not conform to SummarySharingSelectedDataTypesDelegate", v50, 0x16u);
      v60 = v67;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v60, -1, -1);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

void sub_1BA16ECDC(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v134) = a3;
  v121 = a4;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v133 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v128 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA172538(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v130 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v117 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v132 = &v117 - v19;
  sub_1BA17256C(0);
  v21 = v20;
  v22 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20, v23);
  v124 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v123 = &v117 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v125 = &v117 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v129 = &v117 - v33;
  v34 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1[1];
  v148 = *a1;
  v149 = v38;
  v150 = a1[2];
  sub_1BA16FF9C(a2 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, v37, type metadata accessor for SummarySharingSelectionFlow);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v134 = v37;
    v39 = objc_opt_self();
    sub_1B9F1C0E4(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BA4B7510;
    v41 = objc_opt_self();
    *(v40 + 32) = [v41 blackColor];
    *(v40 + 40) = [v41 systemYellowColor];
    sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
    v42 = sub_1BA4A6AE8();

    v43 = [v39 _configurationWithHierarchicalColors_];

    v21 = [v39 configurationWithWeight_];
    v44 = v43;
    v45 = sub_1BA4A6758();
    v46 = [objc_opt_self() systemImageNamed:v45 withConfiguration:v44];

    v47 = [v46 imageByApplyingSymbolConfiguration_];
    LOBYTE(v143) = 0;
    LOBYTE(v37) = 1;
    LOBYTE(v137) = 1;
    LOBYTE(v135[0]) = 0;
    *&v139[0] = v47;
    *(v139 + 8) = xmmword_1BA4C1910;
    BYTE8(v139[1]) = 0;
    v140 = 0uLL;
    LOBYTE(v141) = 1;
    *(&v141 + 1) = 0x4024000000000000;
    v142 = 0;
    v48 = qword_1EBBE8400;
    v49 = v47;
    if (v48 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_3;
  }

  v120 = v4;
  if (qword_1EBBE8408 != -1)
  {
    swift_once();
  }

  v68 = qword_1EBBECE30;
  v67 = *algn_1EBBECE38;
  v44 = v125;
  if (v134)
  {
    v117 = qword_1EBBECE30;
    v118 = *algn_1EBBECE38;
    v119 = a2;
    v136[0] = v149;
    v122 = v149 + 32;
    v69 = *(v149 + 16);
    v134 = (v133 + 7);
    v49 = (v22 + 56);
    v70 = (v22 + 48);
    v71 = (v133 + 6);

    v37 = 0;
    v133 = v71;
    v126 = v71 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v127 = v7;
    v131 = v69;
    while (1)
    {
      if (v37 == v69)
      {
        *&v145 = 0;
        v37 = v69;
        v143 = 0u;
        v144 = 0u;
      }

      else
      {
        if (v37 >= v69)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          swift_once();
LABEL_3:
          v51 = qword_1EBBECE20;
          v50 = *algn_1EBBECE28;
          v145 = v140;
          v146 = v141;
          v147 = v142;
          v143 = v139[0];
          v144 = v139[1];
          v52 = v121;
          v121[3] = &type metadata for CollectionViewHeaderItem;
          v52[4] = sub_1BA09ADCC();
          v53 = swift_allocObject();
          *v52 = v53;
          v135[0] = type metadata accessor for CollectionViewHeaderCell();
          sub_1BA1725A0(v139, &v137);
          sub_1BA1725A0(v139, &v137);
          sub_1BA1729E0(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
          *(v53 + 16) = sub_1BA4A6808();
          *(v53 + 24) = v54;
          *(v53 + 32) = v51;
          *(v53 + 40) = v50;
          v55 = v143;
          *(v53 + 88) = v144;
          v56 = v146;
          *(v53 + 104) = v145;
          *(v53 + 120) = v56;
          *(v53 + 48) = sub_1BA09AE24;
          *(v53 + 56) = 0;
          *(v53 + 64) = v37;
          *(v53 + 136) = v147;
          *(v53 + 72) = v55;
          *(v53 + 144) = 0;
          v137 = v51;
          v138 = v50;
          v135[0] = 32;
          v135[1] = 0xE100000000000000;
          v136[0] = 0;
          v136[1] = 0xE000000000000000;
          sub_1B9F252FC();

          v57 = MEMORY[0x1E69E6158];
          v58 = sub_1BA4A7B58();
          v60 = v59;
          sub_1B9F1C0E4(0, &qword_1EDC6E330, v57, MEMORY[0x1E69E6F90]);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_1BA4B5480;
          *(v61 + 32) = v58;
          *(v61 + 40) = v60;

          v62 = sub_1BA4A6AE8();

          v63 = HKUIJoinStringsForAutomationIdentifier();

          if (v63)
          {

            v64 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v66 = v65;

            sub_1BA1725FC(v139);
            *(v53 + 152) = v64;
            *(v53 + 160) = v66;

            sub_1BA1725FC(v139);
            sub_1BA172980(v134, type metadata accessor for SummarySharingSelectionFlow);
            return;
          }

LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        sub_1B9F0A534(v122 + 40 * v37, &v143);
        if (__OFADD__(v37++, 1))
        {
          goto LABEL_37;
        }
      }

      v139[0] = v143;
      v139[1] = v144;
      *&v140 = v145;
      if (*(&v144 + 1))
      {
        sub_1B9F1134C(v139, &v137);
        sub_1B9F0A534(&v137, v135);
        sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
        v73 = swift_dynamicCast();
        (*v134)(v16, v73 ^ 1u, 1, v7);
        __swift_destroy_boxed_opaque_existential_1(&v137);
        v74 = *v49;
        (*v49)(v16, 0, 1, v21);
      }

      else
      {
        v74 = *v49;
        (*v49)(v16, 1, 1, v21);
      }

      v75 = *v70;
      if ((*v70)(v16, 1, v21) == 1)
      {
        break;
      }

      sub_1BA172650(v16, v44, sub_1BA17256C);
      if ((*v133)(v44, 1, v7) == 1)
      {
        sub_1BA172980(v44, sub_1BA17256C);
        v69 = v131;
      }

      else
      {
        sub_1BA172650(v44, v132, sub_1BA17256C);
        v76 = 0;
LABEL_21:
        v77 = v132;
        v74(v132, v76, 1, v21);
        v78 = v130;
        sub_1BA172650(v77, v130, sub_1BA172538);
        if (v75(v78, 1, v21) == 1)
        {
          v79 = v129;
          v7 = v127;
          (*v134)(v129, 1, 1, v127);
          v80 = (*v133)(v79, 1, v7);
        }

        else
        {
          v81 = v123;
          sub_1BA172650(v78, v123, sub_1BA17256C);
          v82 = v124;
          sub_1BA16FF9C(v81, v124, sub_1BA17256C);
          v83 = *v133;
          v7 = v127;
          if ((*v133)(v82, 1, v127) == 1)
          {
            __break(1u);
            goto LABEL_40;
          }

          v84 = v82;
          v79 = v129;
          sub_1BA172650(v84, v129, type metadata accessor for SummarySharingSelectableDataTypeItem);
          sub_1BA172980(v81, sub_1BA17256C);
          (*v134)(v79, 0, 1, v7);
          v44 = v125;
          v80 = v83(v79, 1, v7);
        }

        if (v80 == 1)
        {
          v88 = v120;
          sub_1B9F43EAC(v136, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
          if (qword_1EBBE8428 != -1)
          {
            swift_once();
          }

          v89 = &qword_1EBBECE70;
          goto LABEL_35;
        }

        v85 = v79;
        v86 = v128;
        sub_1BA172650(v85, v128, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v87 = *(v86 + 49);
        sub_1BA172980(v86, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v69 = v131;
        if ((v87 & 1) == 0)
        {
          v88 = v120;
          sub_1B9F43EAC(v136, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
          if (qword_1EBBE8420 != -1)
          {
            swift_once();
          }

          v89 = &qword_1EBBECE60;
LABEL_35:
          v103 = v121;
          v105 = *v89;
          v104 = v89[1];

          *&v143 = 0;
          *(&v143 + 1) = 0xE000000000000000;
          sub_1BA4A7DF8();
          v106 = sub_1BA4A85D8();
          v108 = v107;

          *&v143 = v106;
          *(&v143 + 1) = v108;
          MEMORY[0x1BFAF1350](95, 0xE100000000000000);
          v109 = v119;
          v110 = sub_1BA4A1748();
          MEMORY[0x1BFAF1350](v110);

          MEMORY[0x1BFAF1350](0x497265646165485FLL, 0xEB000000006D6574);
          v111 = v143;
          v112 = swift_allocObject();
          *(v112 + 16) = v109;
          *(v112 + 24) = v88;
          v113 = v149;
          *(v112 + 32) = v148;
          *(v112 + 48) = v113;
          *(v112 + 64) = v150;
          *(v112 + 80) = v88;
          v103[3] = &type metadata for CollectionViewHeaderWithLinkItem;
          v103[4] = sub_1BA09AD78();
          v114 = swift_allocObject();
          *v103 = v114;
          *&v139[0] = type metadata accessor for CollectionViewHeaderWithLinkCell();

          sub_1BA0F7D24(&v148, &v143);
          sub_1BA1729E0(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);
          *(v114 + 16) = sub_1BA4A6808();
          *(v114 + 24) = v115;
          *(v114 + 32) = v111;
          v116 = v118;
          *(v114 + 48) = v117;
          *(v114 + 56) = v116;
          *(v114 + 64) = sub_1BA09AE24;
          *(v114 + 72) = 0;
          *(v114 + 80) = 1;
          *(v114 + 88) = 1;
          *(v114 + 96) = 0u;
          *(v114 + 112) = 0u;
          *(v114 + 128) = 0u;
          *(v114 + 137) = 0u;
          *(v114 + 160) = 0;
          *(v114 + 168) = v105;
          *(v114 + 176) = v104;
          *(v114 + 184) = 1;
          *(v114 + 192) = sub_1BA1726B8;
          *(v114 + 200) = v112;
          *(v114 + 208) = 0;
          *(v114 + 216) = 0;

          return;
        }
      }
    }

    sub_1BA172980(v16, sub_1BA172538);
    v76 = 1;
    goto LABEL_21;
  }

  v90 = v121;
  v121[3] = &type metadata for CollectionViewHeaderItem;
  v90[4] = sub_1BA09ADCC();
  v91 = swift_allocObject();
  *v90 = v91;
  *&v143 = type metadata accessor for CollectionViewHeaderCell();
  sub_1BA1729E0(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
  *(v91 + 16) = sub_1BA4A6808();
  *(v91 + 24) = v92;
  *(v91 + 32) = v68;
  *(v91 + 40) = v67;
  *(v91 + 48) = sub_1BA09AE24;
  *(v91 + 56) = 0;
  *(v91 + 64) = 1;
  *(v91 + 72) = 1;
  *(v91 + 144) = 0;
  *(v91 + 80) = 0u;
  *(v91 + 96) = 0u;
  *(v91 + 112) = 0u;
  *(v91 + 121) = 0u;
  *&v143 = v68;
  *(&v143 + 1) = v67;
  *&v139[0] = 32;
  *(&v139[0] + 1) = 0xE100000000000000;
  v137 = 0;
  v138 = 0xE000000000000000;
  sub_1B9F252FC();

  v93 = MEMORY[0x1E69E6158];
  v94 = sub_1BA4A7B58();
  v96 = v95;
  sub_1B9F1C0E4(0, &qword_1EDC6E330, v93, MEMORY[0x1E69E6F90]);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1BA4B5480;
  *(v97 + 32) = v94;
  *(v97 + 40) = v96;

  v98 = sub_1BA4A6AE8();

  v99 = HKUIJoinStringsForAutomationIdentifier();

  if (!v99)
  {
    goto LABEL_41;
  }

  v100 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v102 = v101;

  *(v91 + 152) = v100;
  *(v91 + 160) = v102;
}

uint64_t sub_1BA16FCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 8))(ObjectType, v13);
    sub_1BA309CDC(a4, v15);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BA4A3D88();
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Attempting to toggle data type selection without a context to apply changes", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

void sub_1BA16FF2C()
{
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830(v0, v1);

  sub_1B9FF51C4();
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v2, v3);

  sub_1B9FF51F8();
  sub_1B9FF522C();
  sub_1B9FF5294();
}

uint64_t sub_1BA16FF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA170004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListLayoutConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BA170094(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void (*a6)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X5>, void *a7@<X8>)
{
  v28 = a4;
  v10 = a1[2];
  v29 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[5];
  v22 = a1[4];
  v24 = a2;
  v25 = a3;
  v26 = &v28;
  sub_1BA0F7D24(a1, v27);
  sub_1BA26CFFC(a6, v23, v10);
  v15 = v14;

  v16 = Array<A>.identifierToIndexDict()(v15);
  sub_1BA172980(&v29, sub_1BA1728EC);
  if (*(v15 + 16))
  {
    v17 = v12;
    v18 = v15;
    v19 = v16;
    v20 = v13;
  }

  else
  {
    if (a5)
    {
      v17 = v12;

      v21 = v11;
      v18 = v15;
      v19 = v16;
      v20 = v13;
    }

    else
    {
      v17 = 0;
      v21 = 0;
      v18 = 0;
      v19 = 0;
      v22 = 0;
      v20 = 0;
    }

    v11 = v21;
  }

  *a7 = v17;
  a7[1] = v11;
  a7[2] = v18;
  a7[3] = v19;
  a7[4] = v22;
  a7[5] = v20;
}

unint64_t sub_1BA17029C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = *v7;
  v15 = v14 + 32 + 40 * result;
  sub_1B9F0D9AC(0, a5, a6, 1);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v8);
  v17 = a3 - v8;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v17)
  {
    v18 = *(v14 + 16);
    v16 = __OFSUB__(v18, a2);
    v19 = v18 - a2;
    if (!v16)
    {
      result = v15 + 40 * a3;
      v20 = (v14 + 32 + 40 * a2);
      if (result != v20 || result >= v20 + 40 * v19)
      {
        result = memmove(result, v20, 40 * v19);
      }

      v22 = *(v14 + 16);
      v16 = __OFADD__(v22, v17);
      v23 = v22 + v17;
      if (!v16)
      {
        *(v14 + 16) = v23;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_1B9F43EAC(a4, a7, a5, a6, MEMORY[0x1E69E6BC0]);
  }

  result = sub_1B9F0A534(a4, v15);
  if (a3 == 1)
  {
    return sub_1B9F43EAC(a4, a7, a5, a6, MEMORY[0x1E69E6BC0]);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BA1703E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B9FDC2DC(0);
    v2 = sub_1BA4A8088();
    v19 = v2;
    sub_1BA4A7FD8();
    v3 = sub_1BA4A8008();
    if (v3)
    {
      v4 = v3;
      sub_1B9F0ADF8(0, &qword_1EDC6E920, 0x1E696C2E0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1BA0F47B0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1BA4A7788();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1BA4A8008();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void sub_1BA17061C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BA4A82B8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
        v5 = sub_1BA4A6B98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1BA170844(v7, v8, a1, v4);
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
    sub_1BA17072C(0, v2, 1, a1);
  }
}

uint64_t sub_1BA17072C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = a2;
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_4:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_1B9F0A534(v10, v15);
      sub_1B9F0A534(v10 - 40, v14);
      v11 = sub_1BA16D14C(v15, v14);
      __swift_destroy_boxed_opaque_existential_1(v14);
      result = __swift_destroy_boxed_opaque_existential_1(v15);
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        sub_1B9F1134C(v10, v15);
        v12 = *(v10 - 24);
        *v10 = *(v10 - 40);
        *(v10 + 16) = v12;
        *(v10 + 32) = *(v10 - 8);
        result = sub_1B9F1134C(v15, v10 - 40);
        v10 -= 40;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 += 40;
      --v8;
      if (v5 != v16)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1BA170844(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v162 = a1;
  sub_1BA1728B8(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v168 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v169 = &v160 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v171 = &v160 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v160 - v19;
  sub_1BA17256C(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v160 - v27;
  v29 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v187 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v185 = &v160 - v36;
  v176 = a3;
  v37 = a3[1];
  if (v37 < 1)
  {
    v39 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v24 = *v162;
    if (*v162)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_128;
    }

    goto LABEL_166;
  }

  v172 = v20;
  v161 = a4;
  v38 = 0;
  v173 = (v35 + 56);
  v39 = MEMORY[0x1E69E7CC0];
  v175 = v24;
  v174 = v28;
  v40 = v34;
  v184 = v34;
  while (1)
  {
    v163 = v38;
    if (v38 + 1 >= v37)
    {
      v49 = v38 + 1;
      v47 = v172;
      v50 = v40;
    }

    else
    {
      v41 = *v176;
      sub_1B9F0A534(*v176 + 40 * (v38 + 1), &v193);
      sub_1B9F0A534(v41 + 40 * v38, &v192);
      v42 = sub_1BA16D14C(&v193, &v192);
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1(&v192);
        __swift_destroy_boxed_opaque_existential_1(&v193);
        goto LABEL_138;
      }

      v43 = v42;
      __swift_destroy_boxed_opaque_existential_1(&v192);
      __swift_destroy_boxed_opaque_existential_1(&v193);
      v44 = v38 + 2;
      v45 = 40 * v38;
      v46 = v41 + 40 * v38 + 80;
      v47 = v172;
      while (v37 != v44)
      {
        sub_1B9F0A534(v46, &v193);
        sub_1B9F0A534(v46 - 40, &v192);
        v48 = sub_1BA16D14C(&v193, &v192);
        __swift_destroy_boxed_opaque_existential_1(&v192);
        __swift_destroy_boxed_opaque_existential_1(&v193);
        ++v44;
        v46 += 40;
        if ((v43 ^ v48))
        {
          v49 = v44 - 1;
          goto LABEL_12;
        }
      }

      v49 = v37;
LABEL_12:
      v24 = v175;
      v28 = v174;
      if (!v43)
      {
        goto LABEL_23;
      }

      v51 = v163;
      if (v49 < v163)
      {
        goto LABEL_160;
      }

      if (v163 < v49)
      {
        v52 = 40 * v49 - 40;
        v53 = v49;
        do
        {
          if (v51 != --v53)
          {
            v59 = *v176;
            if (!*v176)
            {
              goto LABEL_164;
            }

            v54 = v49;
            v55 = v59 + v45;
            v56 = v59 + v52;
            sub_1B9F1134C((v59 + v45), &v193);
            v57 = *(v56 + 32);
            v58 = *(v56 + 16);
            *v55 = *v56;
            *(v55 + 16) = v58;
            *(v55 + 32) = v57;
            sub_1B9F1134C(&v193, v56);
            v49 = v54;
          }

          ++v51;
          v52 -= 40;
          v45 += 40;
        }

        while (v51 < v53);
        v47 = v172;
        v24 = v175;
        v28 = v174;
LABEL_23:
        v50 = v184;
        goto LABEL_24;
      }

      v50 = v184;
      v47 = v172;
    }

LABEL_24:
    v60 = v176[1];
    if (v49 >= v60)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v49, v163))
    {
      goto LABEL_156;
    }

    if (v49 - v163 >= v161)
    {
LABEL_32:
      v38 = v49;
      goto LABEL_33;
    }

    if (__OFADD__(v163, v161))
    {
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      return;
    }

    if (&v163[v161] < v60)
    {
      v60 = &v163[v161];
    }

    if (v60 < v163)
    {
      goto LABEL_159;
    }

    if (v49 == v60)
    {
      goto LABEL_32;
    }

    v164 = v60;
    v170 = *v176;
    v107 = v170 + 40 * v49;
    v108 = &v163[-v49];
    v183 = v39;
    while (2)
    {
      v167 = v49;
      v165 = v108;
      v109 = v108;
      v166 = v107;
      while (1)
      {
        sub_1B9F0A534(v107, &v193);
        v182 = v107;
        v181 = (v107 - 40);
        sub_1B9F0A534(v107 - 40, &v192);
        sub_1B9F0A534(&v193, &v190);
        sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
        v110 = swift_dynamicCast();
        v111 = *v173;
        if (!v110)
        {
          v111(v28, 1, 1, v50);
          sub_1BA172980(v28, sub_1BA17256C);
          goto LABEL_114;
        }

        v180 = v109;
        v112 = v5;
        v111(v28, 0, 1, v50);
        v113 = v185;
        sub_1BA172650(v28, v185, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1B9F0A534(&v192, &v190);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v111(v24, 0, 1, v50);
        sub_1BA172650(v24, v187, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v114 = *(v50 + 40);
        sub_1BA16FF9C(v113 + v114, v47, sub_1BA1728B8);
        v115 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
        v116 = *(*(v115 - 8) + 48);
        if (v116(v47, 1, v115) == 1)
        {
          sub_1BA172980(v47, sub_1BA1728B8);
          v5 = v112;
          v39 = v183;
LABEL_85:
          sub_1BA172980(v187, type metadata accessor for SummarySharingSelectableDataTypeItem);
          sub_1BA172980(v185, type metadata accessor for SummarySharingSelectableDataTypeItem);
          goto LABEL_86;
        }

        v117 = *(v47 + 56);
        v186 = v117;
        sub_1BA172980(v47, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v5 = v112;
        v39 = v183;
        if (!v117)
        {
          goto LABEL_85;
        }

        v177 = v114;
        v118 = *(v184 + 40);
        v119 = v171;
        sub_1BA16FF9C(v187 + v118, v171, sub_1BA1728B8);
        if (v116(v119, 1, v115) == 1)
        {

          sub_1BA172980(v119, sub_1BA1728B8);
          goto LABEL_117;
        }

        v120 = *(v119 + 56);
        v121 = v120;
        sub_1BA172980(v119, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (!v120)
        {

LABEL_117:
          sub_1BA172980(v187, type metadata accessor for SummarySharingSelectableDataTypeItem);
          sub_1BA172980(v185, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v47 = v172;
LABEL_86:
          v24 = v175;
          v28 = v174;
LABEL_87:
          v50 = v184;
          goto LABEL_88;
        }

        v179 = v5;
        v122 = v121;
        v123 = [v186 displayName];
        v124 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v126 = v125;

        v178 = v122;
        v127 = [v122 displayName];
        v128 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v130 = v129;

        if (v124 == v128 && v126 == v130)
        {

          v5 = v179;
          v39 = v183;
        }

        else
        {
          v131 = sub_1BA4A8338();

          v5 = v179;
          v39 = v183;
          if ((v131 & 1) == 0)
          {
            v142 = v186;
            v143 = [v186 displayName];
            v144 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v146 = v145;

            v190 = v144;
            v191 = v146;
            v147 = v178;
            v148 = [v178 displayName];
            v149 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v151 = v150;

            v188 = v149;
            v189 = v151;
            sub_1B9F252FC();
            v141 = sub_1BA4A7B78();

            sub_1BA172980(v187, type metadata accessor for SummarySharingSelectableDataTypeItem);
            sub_1BA172980(v185, type metadata accessor for SummarySharingSelectableDataTypeItem);
            v47 = v172;
            v24 = v175;
            v28 = v174;
            goto LABEL_107;
          }
        }

        v132 = v185;
        v133 = v169;
        sub_1BA16FF9C(v185 + v177, v169, sub_1BA1728B8);
        if (v116(v133, 1, v115) == 1)
        {

          sub_1BA172980(v133, sub_1BA1728B8);
          v47 = v172;
          v24 = v175;
          v28 = v174;
          goto LABEL_123;
        }

        v134 = *(v133 + 16);
        v135 = *(v133 + 24);

        sub_1BA172980(v133, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (!v135)
        {

          goto LABEL_121;
        }

        v136 = v168;
        sub_1BA16FF9C(v187 + v118, v168, sub_1BA1728B8);
        if (v116(v136, 1, v115) == 1)
        {

          sub_1BA172980(v136, sub_1BA1728B8);
LABEL_121:
          v47 = v172;
          v24 = v175;
          v28 = v174;
          v132 = v185;
LABEL_123:
          sub_1BA172980(v187, type metadata accessor for SummarySharingSelectableDataTypeItem);
          sub_1BA172980(v132, type metadata accessor for SummarySharingSelectableDataTypeItem);
          goto LABEL_87;
        }

        v137 = v136;
        v139 = *(v136 + 16);
        v138 = *(v136 + 24);

        sub_1BA172980(v137, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v140 = v172;
        v24 = v175;
        v28 = v174;
        if (!v138)
        {

          v132 = v185;
          v47 = v140;
          goto LABEL_123;
        }

        v190 = v134;
        v191 = v135;
        v188 = v139;
        v189 = v138;
        sub_1B9F252FC();
        v141 = sub_1BA4A7B78();

        sub_1BA172980(v187, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA172980(v185, type metadata accessor for SummarySharingSelectableDataTypeItem);

        v47 = v140;
LABEL_107:
        __swift_destroy_boxed_opaque_existential_1(&v192);
        __swift_destroy_boxed_opaque_existential_1(&v193);
        v50 = v184;
        v152 = v180;
        if (v141 != -1)
        {
          goto LABEL_89;
        }

        if (!v170)
        {
          goto LABEL_161;
        }

        v153 = v182;
        sub_1B9F1134C(v182, &v193);
        v107 = v181;
        v154 = v181[1];
        *v153 = *v181;
        v153[1] = v154;
        *(v153 + 4) = *(v107 + 32);
        sub_1B9F1134C(&v193, v107);
        v155 = __CFADD__(v152, 1);
        v109 = v152 + 1;
        if (v155)
        {
          goto LABEL_89;
        }
      }

      sub_1BA172980(v113, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v111(v24, 1, 1, v50);
      sub_1BA172980(v24, sub_1BA17256C);
      v5 = v112;
LABEL_114:
      v39 = v183;
LABEL_88:
      __swift_destroy_boxed_opaque_existential_1(&v192);
      __swift_destroy_boxed_opaque_existential_1(&v193);
LABEL_89:
      v49 = v167 + 1;
      v107 = v166 + 40;
      v108 = v165 - 1;
      if (v167 + 1 != v164)
      {
        continue;
      }

      break;
    }

    v38 = v164;
LABEL_33:
    v24 = v163;
    if (v38 < v163)
    {
      goto LABEL_155;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1BA27F470(0, *(v39 + 2) + 1, 1, v39);
    }

    v62 = *(v39 + 2);
    v61 = *(v39 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v39 = sub_1BA27F470((v61 > 1), v62 + 1, 1, v39);
    }

    *(v39 + 2) = v63;
    v64 = &v39[16 * v62];
    *(v64 + 4) = v24;
    *(v64 + 5) = v38;
    v24 = *v162;
    if (!*v162)
    {
      goto LABEL_165;
    }

    if (v62)
    {
      break;
    }

LABEL_3:
    v40 = v50;
    v37 = v176[1];
    v24 = v175;
    v28 = v174;
    if (v38 >= v37)
    {
      goto LABEL_126;
    }
  }

  while (1)
  {
    v65 = v63 - 1;
    if (v63 >= 4)
    {
      v70 = &v39[16 * v63 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_142;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_143;
      }

      v77 = &v39[16 * v63];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_145;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_148;
      }

      if (v81 >= v73)
      {
        v99 = &v39[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_154;
        }

        if (v68 < v102)
        {
          v65 = v63 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v63 == 3)
    {
      v66 = *(v39 + 4);
      v67 = *(v39 + 5);
      v76 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      v69 = v76;
LABEL_53:
      if (v69)
      {
        goto LABEL_144;
      }

      v82 = &v39[16 * v63];
      v84 = *v82;
      v83 = *(v82 + 1);
      v85 = __OFSUB__(v83, v84);
      v86 = v83 - v84;
      v87 = v85;
      if (v85)
      {
        goto LABEL_147;
      }

      v88 = &v39[16 * v65 + 32];
      v90 = *v88;
      v89 = *(v88 + 1);
      v76 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v76)
      {
        goto LABEL_150;
      }

      if (__OFADD__(v86, v91))
      {
        goto LABEL_151;
      }

      if (v86 + v91 >= v68)
      {
        if (v68 < v91)
        {
          v65 = v63 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v92 = &v39[16 * v63];
    v94 = *v92;
    v93 = *(v92 + 1);
    v76 = __OFSUB__(v93, v94);
    v86 = v93 - v94;
    v87 = v76;
LABEL_67:
    if (v87)
    {
      goto LABEL_146;
    }

    v95 = &v39[16 * v65];
    v97 = *(v95 + 4);
    v96 = *(v95 + 5);
    v76 = __OFSUB__(v96, v97);
    v98 = v96 - v97;
    if (v76)
    {
      goto LABEL_149;
    }

    if (v98 < v86)
    {
      goto LABEL_3;
    }

LABEL_74:
    v103 = v65 - 1;
    if (v65 - 1 >= v63)
    {
      break;
    }

    if (!*v176)
    {
      goto LABEL_162;
    }

    v104 = *&v39[16 * v103 + 32];
    v105 = *&v39[16 * v65 + 40];
    sub_1BA171A28((*v176 + 40 * v104), (*v176 + 40 * *&v39[16 * v65 + 32]), *v176 + 40 * v105, v24);
    if (v5)
    {
      goto LABEL_138;
    }

    if (v105 < v104)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1BA442D80(v39);
    }

    if (v103 >= *(v39 + 2))
    {
      goto LABEL_141;
    }

    v106 = &v39[16 * v103];
    *(v106 + 4) = v104;
    *(v106 + 5) = v105;
    v194 = v39;
    sub_1BA442CF4(v65);
    v39 = v194;
    v63 = *(v194 + 2);
    v50 = v184;
    if (v63 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
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
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  v39 = sub_1BA442D80(v39);
LABEL_128:
  v194 = v39;
  v156 = *(v39 + 2);
  if (v156 >= 2)
  {
    while (*v176)
    {
      v157 = *&v39[16 * v156];
      v158 = *&v39[16 * v156 + 24];
      sub_1BA171A28((*v176 + 40 * v157), (*v176 + 40 * *&v39[16 * v156 + 16]), *v176 + 40 * v158, v24);
      if (v5)
      {
        goto LABEL_138;
      }

      if (v158 < v157)
      {
        goto LABEL_152;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1BA442D80(v39);
      }

      if (v156 - 2 >= *(v39 + 2))
      {
        goto LABEL_153;
      }

      v159 = &v39[16 * v156];
      *v159 = v157;
      *(v159 + 1) = v158;
      v194 = v39;
      sub_1BA442CF4(v156 - 1);
      v39 = v194;
      v156 = *(v194 + 2);
      if (v156 <= 1)
      {
        goto LABEL_138;
      }
    }

    goto LABEL_163;
  }

LABEL_138:
}