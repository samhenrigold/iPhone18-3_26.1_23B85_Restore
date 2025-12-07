uint64_t sub_1D6194084@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a2;
  v44 = a1;
  sub_1D6194C38(0);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F7BAC0();
  v48 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v42 - v17;
  sub_1D6194E68(0, &qword_1EC8848C8, sub_1D6194D70, sub_1D5F7B9E4);
  v45 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v51 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v50 = &v42 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v54 >> 62)
  {
    v25 = sub_1D7263BFC();
  }

  else
  {
    v25 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 1;
  if (v25)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v14;
    sub_1D72600CC();

    swift_getKeyPath();
    v27 = swift_allocObject();
    v28 = v47;
    v27[2] = v44;
    v27[3] = v28;
    v27[4] = v46;
    v27[5] = a4;
    sub_1D5EF3A64(0);
    v42 = v29;
    sub_1D6194E68(0, &qword_1EC8848D8, sub_1D6194EDC, sub_1D5F260A0);
    v44 = v18;
    v46 = a5;
    sub_1D6194FB0(&qword_1EC8848F0, sub_1D5EF3A64, MEMORY[0x1E69E6338]);
    v30 = v48;
    sub_1D61951D8();

    v31 = v50;
    v32 = v46;
    sub_1D72619DC();
    v33 = v31 + *(v45 + 36);
    *v33 = xmmword_1D7286690;
    *(v33 + 16) = xmmword_1D72866A0;
    *(v33 + 32) = 0;
    v54 = 0;
    v55 = 1;
    sub_1D7260EDC();
    v34 = v44;
    sub_1D72617DC();
    v35 = v51;
    sub_1D5D7FC54(v31, v51);
    v36 = *(v11 + 16);
    v37 = v43;
    v36(v43, v34, v30);
    v38 = v49;
    sub_1D5D7FC54(v35, v49);
    sub_1D6194CD0(0);
    v36((v38 + *(v39 + 48)), v37, v30);
    v40 = *(v11 + 8);
    v40(v34, v30);
    sub_1D5D7FCE8(v31);
    v40(v37, v30);
    sub_1D5D7FCE8(v35);
    a5 = v32;
    sub_1D5D7FD74(v38, v32);
    v26 = 0;
  }

  return (*(v52 + 56))(a5, v26, 1, v53);
}

void sub_1D61945CC(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1D6194EDC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a2 + 16);
  type metadata accessor for DebugFormatInventoryTreePackage(0);
  swift_allocObject();

  sub_1D6E2D6D8(v13, v12);

  type metadata accessor for DebugFormatInventoryTree(0);
  sub_1D6194FB0(&qword_1EC894480, type metadata accessor for DebugFormatInventoryTree, &unk_1D73A3638);
  v14 = sub_1D7260F8C();
  v16 = v15;
  sub_1D6194FB0(&qword_1EC884910, type metadata accessor for DebugFormatInventoryTreePackage, &unk_1D735D240);
  v17 = sub_1D7260F8C();
  v22[0] = v14;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  sub_1D7260EDC();
  sub_1D6194F5C();
  sub_1D72617DC();

  if (sub_1D61952E4(v12, a2))
  {
    sub_1D5C0B9F0();
    sub_1D726357C();
    v19 = sub_1D726189C();
  }

  else
  {
    v19 = sub_1D726185C();
  }

  v22[0] = v19;
  v20 = sub_1D726199C();
  (*(v8 + 32))(a3, v11, v7);
  sub_1D6194E68(0, &qword_1EC8848D8, sub_1D6194EDC, sub_1D5F260A0);
  *(a3 + *(v21 + 36)) = v20;
}

uint64_t sub_1D619487C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v5 = 0xE600000000000000;
      v7 = 0x73656D656854;
    }

    else if (v4 == 4)
    {
      v5 = 0xE800000000000000;
      v7 = 0x736C6C6177796150;
    }

    else
    {
      v5 = 0xEB0000000073646ELL;
      v7 = 0x756F72676B636142;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (*(a1 + 32))
    {
      if (v4 == 1)
      {
        v6 = 1684104520;
      }

      else
      {
        v6 = 1953460038;
      }

      v7 = v6 | 0x73726500000000;
    }

    else
    {
      v7 = 0x7374756F79614CLL;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v12 >> 62)
  {
    v8 = sub_1D7263BFC();
  }

  else
  {
    v8 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *(a1 + OBJC_IVAR____TtC8NewsFeed28DebugFormatInventoryTreeRole_unfilteredDebugPackages);
  if (v9 >> 62)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v11;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 49) = result == 0;
  return result;
}

uint64_t sub_1D6194A38()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v3 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v1;
  *(v7 + 40) = v5;
  swift_retain_n();
  sub_1D72619BC();
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v4;
  v8[5] = v3;
  sub_1D6194C6C(0, &qword_1EC8848B0, sub_1D6194C38, MEMORY[0x1E69E6720]);
  sub_1D5F7BB40();
  sub_1D6194FF8();

  return sub_1D7260FFC();
}

void sub_1D6194C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6194CD0(uint64_t a1)
{
  if (!qword_1EC8848C0)
  {
    sub_1D6194E68(255, &qword_1EC8848C8, sub_1D6194D70, sub_1D5F7B9E4);
    sub_1D5F7BAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8848C0);
    }
  }
}

void sub_1D6194D70(uint64_t a1)
{
  if (!qword_1EC8848D0)
  {
    sub_1D5EF3A64(255);
    sub_1D6194E68(255, &qword_1EC8848D8, sub_1D6194EDC, sub_1D5F260A0);
    sub_1D6194FB0(&qword_1EC8848F0, sub_1D5EF3A64, MEMORY[0x1E69E6338]);
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8848D0);
    }
  }
}

void sub_1D6194E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6194EDC(uint64_t a1)
{
  if (!qword_1EC8848E0)
  {
    sub_1D6194F5C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8848E0);
    }
  }
}

unint64_t sub_1D6194F5C()
{
  result = qword_1EC8848E8;
  if (!qword_1EC8848E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8848E8);
  }

  return result;
}

uint64_t sub_1D6194FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6194FF8()
{
  result = qword_1EC8848F8;
  if (!qword_1EC8848F8)
  {
    sub_1D6194C6C(255, &qword_1EC8848B0, sub_1D6194C38, MEMORY[0x1E69E6720]);
    sub_1D6194FB0(&qword_1EC884900, sub_1D6194C38, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8848F8);
  }

  return result;
}

void sub_1D61950D0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D6195150(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

unint64_t sub_1D61951D8()
{
  result = qword_1EC884908;
  if (!qword_1EC884908)
  {
    sub_1D6194E68(255, &qword_1EC8848D8, sub_1D6194EDC, sub_1D5F260A0);
    sub_1D6194F5C();
    swift_getOpaqueTypeConformance2();
    sub_1D6194FB0(&qword_1EC8811A8, sub_1D5F260A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884908);
  }

  return result;
}

uint64_t sub_1D61952E4(uint64_t a1, uint64_t a2)
{
  sub_1D6195740(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v36[10] = v32;
  v36[11] = v33;
  v36[12] = v34;
  v36[6] = v28;
  v36[7] = v29;
  v36[8] = v30;
  v36[9] = v31;
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v36[5] = v27;
  v36[0] = v22;
  v36[1] = v23;
  v38[10] = v32;
  v38[11] = v33;
  v39 = v34;
  v38[6] = v28;
  v38[7] = v29;
  v38[8] = v30;
  v38[9] = v31;
  v38[2] = v24;
  v38[3] = v25;
  v38[4] = v26;
  v38[5] = v27;
  v37 = v35;
  v40 = v35;
  v38[0] = v22;
  v38[1] = v23;
  if (sub_1D5DEA380(v38) == 1)
  {
    goto LABEL_26;
  }

  v7 = *(a1 + 16);
  if (*(v7 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) != 4)
  {
LABEL_19:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D72600CC();

    v14 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
    if (!(*(*(v14 - 8) + 48))(v6, 1, v14))
    {
      v15 = *(v6 + *(v14 + 24));

      sub_1D6195774(v6, sub_1D6195740);
      v16 = *(v15 + 16);

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);

      if (v18 == *(v7 + 16) && v17 == *(v7 + 24))
      {
        sub_1D6195774(v36, sub_1D61957D4);

        v19 = 1;
      }

      else
      {
        v19 = sub_1D72646CC();
        sub_1D6195774(v36, sub_1D61957D4);
      }

      return v19 & 1;
    }

    sub_1D6195774(v6, sub_1D6195740);
LABEL_25:
    sub_1D6195774(v36, sub_1D61957D4);
LABEL_26:
    v19 = 0;
    return v19 & 1;
  }

  v6 = *(&v39 + 1);
  if (*(&v39 + 1) >> 62)
  {
LABEL_32:
    v8 = sub_1D7263BFC();
  }

  else
  {
    v8 = *((*(&v39 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {

      goto LABEL_25;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA6FB460](v9, v6);
      if (__OFADD__(v9, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v10 = *(v6 + 8 * v9 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }
    }

    v11 = *(v10 + 16);
    if (*(v11 + 16) == *(v7 + 16) && *(v11 + 24) == *(v7 + 24))
    {
      break;
    }

    v13 = sub_1D72646CC();

    ++v9;
    if (v13)
    {

      goto LABEL_29;
    }
  }

LABEL_29:
  sub_1D6195774(v36, sub_1D61957D4);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1D6195774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D61957D4()
{
  if (!qword_1EC880D80[0])
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, qword_1EC880D80);
    }
  }
}

void sub_1D6195824(uint64_t a1)
{
  if (!qword_1EC884920)
  {
    sub_1D6194C6C(255, &qword_1EC8848B0, sub_1D6194C38, MEMORY[0x1E69E6720]);
    sub_1D5F7BB40();
    sub_1D6194FF8();
    v1 = sub_1D726100C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884920);
    }
  }
}

uint64_t sub_1D61958DC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
    if (*(v4 + 16))
    {
      v6 = sub_1D5B69D90(a1, a2);
      if (v7 & 1) != 0 || *(v4 + 16) && (v6 = sub_1D5B69D90(42, 0xE100000000000000), (v8))
      {
        v9 = *(*(*(v4 + 56) + 8 * v6) + 136);
        __swift_project_boxed_opaque_existential_1(a3, a3[3]);

        v10 = sub_1D725AA4C();
        if (*(v9 + 16))
        {
          sub_1D5B69D90(v10, v11);
          v13 = v12;

          if (v13)
          {

            return 1;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D6195A38(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - v10;
  v13 = *a1;
  v12 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  v17 = a1[4];
  v16 = a1[5];
  v18 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
  swift_beginAccess();
  sub_1D6196C40(v2 + v18, v7);
  sub_1D5B68374((v7 + 8), v31);
  v25 = v13;
  v26 = v12;
  v27 = v15;
  v28 = v14;
  v29 = v17;
  v30 = v16;

  sub_1D62F3AA0(v31, &v25, v11);
  sub_1D6196984(v7);
  sub_1D5E42B34();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D72816C0;
  v25 = v13;
  v26 = v12;
  v27 = v15;
  v28 = v14;
  v29 = v17;
  v30 = v16;
  type metadata accessor for FormatSlot();
  swift_allocObject();

  *(v19 + 32) = sub_1D7251C5C(&v25);
  sub_1D6196C40(v11, v7);
  v25 = v19;
  sub_1D6196D98(0, &qword_1EDF05188, type metadata accessor for FormatSlot, MEMORY[0x1E69E62F8]);
  sub_1D6196CA4();
  sub_1D5B57300(&qword_1EDF12998, type metadata accessor for FormatSlot, &unk_1D73B6994);

  v20 = sub_1D72623BC();

  type metadata accessor for FormatNodeAuxiliaryBinder(0);
  v21 = swift_allocObject();
  sub_1D6196D2C(v7, v21 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext);
  *(v21 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots) = v20;
  v22 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = *(v2 + v22);
  *(v2 + v22) = 0x8000000000000000;
  sub_1D6D789A8(v21, v13, v12, isUniquelyReferenced_nonNull_native);

  *(v2 + v22) = v31[0];
  swift_endAccess();
  return sub_1D6196984(v11);
}

void *sub_1D6195D3C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v83 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v83 - v18;
  v20 = a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
  v21 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  v88 = v5;
  if (v21 == 255)
  {
    v86 = v3;
    v47 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
    swift_beginAccess();
    sub_1D6196C40(v5 + v47, v15);
    v48 = *(v5 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
    v49 = *(v48 + 16);
    v85 = v11;
    v87 = a1;
    v50 = 0;
    if (v49)
    {
      v51 = (v48 + 32);
      do
      {
        v52 = *v51++;
        v53 = qword_1D72A9700[v52];
        if ((v53 & ~v50) == 0)
        {
          v53 = 0;
        }

        v50 |= v53;
        --v49;
      }

      while (v49);
    }

    v54 = *(a2 + 32);
    v55 = *(a2 + 40);
    v84 = v54;
    v56 = swift_allocObject();
    *(v56 + 16) = v50;
    sub_1D6196D98(0, &qword_1EDF39B30, sub_1D5EFF46C, type metadata accessor for FeedItemSorter);
    v57 = swift_allocObject();
    *(v57 + 16) = MEMORY[0x1E69E7CC0];
    v4 = swift_allocObject();
    v4[2] = sub_1D6196D90;
    v4[3] = v56;
    swift_beginAccess();
    v58 = *(v57 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 16) = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v58 = sub_1D698CCC4(0, v58[2] + 1, 1, v58);
      *(v57 + 16) = v58;
    }

    v61 = v58[2];
    v60 = v58[3];
    if (v61 >= v60 >> 1)
    {
      v58 = sub_1D698CCC4((v60 > 1), v61 + 1, 1, v58);
    }

    v58[2] = v61 + 1;
    v62 = &v58[2 * v61];
    v62[4] = sub_1D6196DFC;
    v62[5] = v4;
    *(v57 + 16) = v58;
    swift_endAccess();

    v63 = v86;
    a1 = v87;
    v64 = GroupLayoutBindingContext.peek(count:slotIdentifier:sorter:)(v87, v84, v55, v57);
    v46 = v63;
    if (!v63)
    {
      v4 = v64;
      sub_1D6196984(v15);

      return v4;
    }

    sub_1D6196984(v15);

    goto LABEL_27;
  }

  if ((v21 & 1) == 0)
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57300(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    v46 = swift_allocError();
LABEL_30:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_31;
  }

  v86 = v3;
  v4 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 32);
  v83 = *(v20 + 40);
  v84 = v23;
  v24 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
  swift_beginAccess();
  v25 = *(v5 + v24);
  v26 = *(v25 + 16);

  if (!v26 || (v27 = sub_1D5B69D90(v4, v22), (v28 & 1) == 0))
  {
    swift_endAccess();
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57300(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    v46 = swift_allocError();
    *v65 = v4;
    v65[1] = v22;
    goto LABEL_30;
  }

  v85 = v11;
  v29 = *(*(v25 + 56) + 8 * v27);
  swift_endAccess();

  v30 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
  swift_beginAccess();
  sub_1D6196C40(v29 + v30, v19);
  v31 = *(v5 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v32 = *(v31 + 16);
  v87 = a1;
  v33 = 0;
  if (v32)
  {
    v34 = (v31 + 32);
    do
    {
      v35 = *v34++;
      v36 = qword_1D72A9700[v35];
      if ((v36 & ~v33) == 0)
      {
        v36 = 0;
      }

      v33 |= v36;
      --v32;
    }

    while (v32);
  }

  v37 = swift_allocObject();
  *(v37 + 16) = v33;
  sub_1D6196D98(0, &qword_1EDF39B30, sub_1D5EFF46C, type metadata accessor for FeedItemSorter);
  v38 = swift_allocObject();
  *(v38 + 16) = MEMORY[0x1E69E7CC0];
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1D6196FC0;
  *(v39 + 24) = v37;
  swift_beginAccess();
  v4 = *(v38 + 16);

  v40 = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + 16) = v4;
  if ((v40 & 1) == 0)
  {
    v4 = sub_1D698CCC4(0, v4[2] + 1, 1, v4);
    *(v38 + 16) = v4;
  }

  v42 = v4[2];
  v41 = v4[3];
  if (v42 >= v41 >> 1)
  {
    v4 = sub_1D698CCC4((v41 > 1), v42 + 1, 1, v4);
  }

  v4[2] = v42 + 1;
  v43 = &v4[2 * v42];
  v43[4] = sub_1D6196FBC;
  v43[5] = v39;
  *(v38 + 16) = v4;
  swift_endAccess();

  v44 = v86;
  a1 = v87;
  v45 = GroupLayoutBindingContext.peek(count:slotIdentifier:sorter:)(v87, v84, v83, v38);
  v46 = v44;
  if (!v44)
  {
    v4 = v45;

    sub_1D6196984(v19);
    return v4;
  }

  sub_1D6196984(v19);
LABEL_27:
  v11 = v85;
LABEL_31:
  if (*(v20 + 48) == 255 && (v66 = v88, *(v88 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) == 1))
  {
    v67 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
    swift_beginAccess();
    sub_1D6196C40(v66 + v67, v11);
    v68 = *(v66 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = 0;
      v71 = (v68 + 32);
      do
      {
        v72 = *v71++;
        v73 = qword_1D72A9700[v72];
        if ((v73 & ~v70) == 0)
        {
          v73 = 0;
        }

        v70 |= v73;
        --v69;
      }

      while (v69);
    }

    else
    {
      v70 = 0;
    }

    v75 = swift_allocObject();
    *(v75 + 16) = v70;
    sub_1D6196D98(0, &qword_1EDF39B30, sub_1D5EFF46C, type metadata accessor for FeedItemSorter);
    v76 = swift_allocObject();
    *(v76 + 16) = MEMORY[0x1E69E7CC0];
    v77 = swift_allocObject();
    *(v77 + 16) = sub_1D6196FC0;
    *(v77 + 24) = v75;
    swift_beginAccess();
    v78 = *(v76 + 16);

    v79 = swift_isUniquelyReferenced_nonNull_native();
    *(v76 + 16) = v78;
    v87 = a1;
    if ((v79 & 1) == 0)
    {
      v78 = sub_1D698CCC4(0, v78[2] + 1, 1, v78);
      *(v76 + 16) = v78;
    }

    v81 = v78[2];
    v80 = v78[3];
    if (v81 >= v80 >> 1)
    {
      v78 = sub_1D698CCC4((v80 > 1), v81 + 1, 1, v78);
    }

    v78[2] = v81 + 1;
    v82 = &v78[2 * v81];
    v82[4] = sub_1D6196FBC;
    v82[5] = v77;
    *(v76 + 16) = v78;
    swift_endAccess();

    v4 = GroupLayoutBindingContext.peek(count:slotIdentifier:sorter:)(v87, 0, 0, v76);
    sub_1D6196984(v11);
  }

  else
  {
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1D6196638(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
  if (*(v3 + 16) && ((sub_1D5B69D90(a1, a2), (v4 & 1) != 0) || *(v3 + 16) && (sub_1D5B69D90(42, 0xE100000000000000), (v5 & 1) != 0)))
  {
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D61966A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = sub_1D5B69D90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = *(*(*(v3 + 56) + 8 * v4) + 112);

  v7 = sub_1D724F834();
  v8 = sub_1D5D6021C(v7, v6);

  return v8;
}

Swift::Int sub_1D6196720(Swift::String_optional *a1)
{
  v3 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (&a1->value._countAndFlagsBits + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v8 = *(&a1[3].value._countAndFlagsBits + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  if (v8 == 255)
  {
    v21 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
    swift_beginAccess();
    sub_1D6196C40(v1 + v21, v6);
    v20 = GroupLayoutBindingContext.count(forSlotIdentifier:)(a1[2]);
    goto LABEL_7;
  }

  if (v8)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[4];
    v12 = v7[5];
    v13 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (*(v14 + 16))
    {
      v15 = sub_1D5B69D90(v9, v10);
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);
        swift_endAccess();
        v18 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
        swift_beginAccess();
        sub_1D6196C40(v17 + v18, v6);

        v19.value._countAndFlagsBits = v11;
        v19.value._object = v12;
        v20 = GroupLayoutBindingContext.count(forSlotIdentifier:)(v19);

LABEL_7:
        sub_1D6196984(v6);
        return v20;
      }
    }

    swift_endAccess();
  }

  return 0;
}

void *FormatNodeBinder.deinit()
{

  sub_1D6196984(v0 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext);

  return v0;
}

uint64_t sub_1D6196984(uint64_t a1)
{
  v2 = type metadata accessor for GroupLayoutBindingContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatNodeBinder.__deallocating_deinit()
{

  sub_1D6196984(v0 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6196B08()
{
  sub_1D6196984(v0 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6196BA4(uint64_t a1)
{
  result = type metadata accessor for GroupLayoutBindingContext(319);
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

uint64_t sub_1D6196C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupLayoutBindingContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6196CA4()
{
  result = qword_1EDF05180;
  if (!qword_1EDF05180)
  {
    sub_1D6196D98(255, &qword_1EDF05188, type metadata accessor for FormatSlot, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05180);
  }

  return result;
}

uint64_t sub_1D6196D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupLayoutBindingContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D6196D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6196E00@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, a1 + 1, *a2, a2 + 1);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D6196E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CD0];
  }

  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v8 = sub_1D5B69D90(a2, a3);
  if ((v9 & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v10 = *(*(*(a1 + 56) + 8 * v8) + 120);
  if (!*(v10 + 16))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v11 = sub_1D5B69D90(a4, a5);
  if (v12)
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  return v13;
}

uint64_t sub_1D6196F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1D5B69D90(a2, a3);
  if ((v9 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = *(*(*(a1 + 56) + 8 * v8) + 128);
  if (!*(v10 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1D5B69D90(a4, a5);
  if (v12)
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  return v13;
}

unint64_t sub_1D6197008(uint64_t a1)
{
  result = sub_1D6197030();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6197030()
{
  result = qword_1EC884928;
  if (!qword_1EC884928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884928);
  }

  return result;
}

unint64_t sub_1D6197084(void *a1)
{
  a1[1] = sub_1D61970BC();
  a1[2] = sub_1D6197110();
  result = sub_1D6197164();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61970BC()
{
  result = qword_1EC884930;
  if (!qword_1EC884930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884930);
  }

  return result;
}

unint64_t sub_1D6197110()
{
  result = qword_1EC884938;
  if (!qword_1EC884938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884938);
  }

  return result;
}

unint64_t sub_1D6197164()
{
  result = qword_1EC884940[0];
  if (!qword_1EC884940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC884940);
  }

  return result;
}

uint64_t _s3URLOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s3URLOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SharingIntent.onPerformBlock.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SharingIntent.init(activityProvider:onPerformBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_1D6197388(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for DebugNewsroomWrapper(319, v2, *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      sub_1D604FD34();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D6197430(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v20 = *((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

_BYTE *sub_1D6197584(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((v12 + v11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v23 = ((v12 + (&result[v10] & ~v9)) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = a2 - 1;
        }

        *v23 = v24;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

uint64_t sub_1D619778C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v27 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v31 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebugNewsroomWrapper.DynamicKey(255, v8, v9, v10);
  swift_getWitnessTable();
  v32 = sub_1D726435C();
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v11);
  v13 = &v25 - v12;
  v30 = a3;
  v15 = type metadata accessor for DebugNewsroomWrapper(0, a2, a3, v14);
  v26 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v37;
  sub_1D7264B0C();
  if (!v19)
  {
    v25 = v18;
    v37 = v15;
    v20 = v29;
    v33 = (*(v30 + 24))(a2, v30);
    v34 = v21;
    v35 = 0;
    v36 = 1;
    v22 = v31;
    sub_1D726431C();

    (*(v20 + 8))(v13, v32);
    v23 = v25;
    (*(v27 + 32))(v25, v22, a2);
    (*(v26 + 32))(v28, v23, v37);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6197AC4(void *a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for DebugNewsroomWrapper.DynamicKey(255, v6, v7, a5);
  swift_getWitnessTable();
  v8 = sub_1D726446C();
  v14[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v14[2] = (*(v7 + 24))(v6, v7);
  v14[3] = v12;
  v14[4] = 0;
  v15 = 1;
  sub_1D726443C();

  return (*(v14[0] + 8))(v11, v8);
}

void sub_1D6197CC4(uint64_t a1@<X8>)
{
  sub_1D6197AB8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4 & 1;
}

uint64_t sub_1D6197D0C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D6197C78();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4 & 1;
  return result;
}

uint64_t sub_1D6197D48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6197D9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D6197E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D6197E7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D6197EC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6197F74()
{
  *(swift_allocObject() + 16) = 0x7FFFFFFFFFFFFFFFLL;
  sub_1D5B77AA4();
  swift_allocObject();
  result = sub_1D725BE0C();
  qword_1EC884AC8 = result;
  return result;
}

uint64_t FeedRebuildPolicy.init(groupLimit:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_1D5B77AA4();
  swift_allocObject();
  result = sub_1D725BE0C();
  *a2 = result;
  return result;
}

double static FeedRebuildPolicy.default.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EC87D530 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EC884AC8;

  return result;
}

uint64_t _s8NewsFeed23FormatGroupNodeMaskPathO2eeoiySbAC_ACtFZ_0(__int128 *a1, int8x16_t *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v28 = a1[2];
  v29 = v2;
  v4 = a1[1];
  v26 = *a1;
  v27 = v4;
  v5 = a2[3];
  v6 = a2[1];
  v33 = a2[2];
  v34 = v5;
  v7 = a2[1];
  v31 = *a2;
  v32 = v7;
  v8 = a1[3];
  v36[2] = v28;
  v36[3] = v8;
  v36[0] = v26;
  v36[1] = v3;
  v38 = v31;
  v41 = a2[3];
  v40 = v33;
  v30 = *(a1 + 64);
  v35 = a2[4].i8[0];
  v37 = *(a1 + 64);
  v42 = a2[4].i8[0];
  v39 = v6;
  v9 = v26;
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      if (v35 == 2)
      {
        v21 = v26;
        v22 = v27;
        v23 = *(a1 + 17);
        *v24 = *(a1 + 33);
        *&v24[15] = a1[3];
        v11 = a2[1];
        v17 = *a2;
        v18 = v11;
        v12 = a2[3];
        v19 = a2[2];
        v20 = v12;
        sub_1D619916C(&v31, v25);
        sub_1D619916C(&v26, v25);
        sub_1D619916C(&v26, v25);
        sub_1D619916C(&v31, v25);
        v10 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(&v21, &v17);
        goto LABEL_10;
      }
    }

    else if (v35 == 3)
    {
      v15 = vorrq_s8(vorrq_s8(v31, v33), vorrq_s8(v32, v34));
      if (!*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))
      {
        sub_1D61991F4(v36, sub_1D6199254);
        v14 = 1;
        return v14 & 1;
      }
    }

LABEL_14:
    sub_1D619916C(&v26, v25);
    sub_1D619916C(&v31, v25);
    sub_1D61991F4(v36, sub_1D6199254);
    v14 = 0;
    return v14 & 1;
  }

  if (v30)
  {
    if (v35 == 1)
    {
      v13 = v31.i64[0];
      sub_1D619916C(&v31, v25);
      sub_1D619916C(&v26, v25);
      sub_1D619916C(&v26, v25);
      sub_1D619916C(&v31, v25);
      v10 = sub_1D634F4A4(v9, v13);
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v35)
  {
    goto LABEL_14;
  }

  v21 = v26;
  v22 = v27;
  v17 = v31;
  v18.i8[0] = v32.i8[0];
  sub_1D619916C(&v31, v25);
  sub_1D619916C(&v26, v25);
  sub_1D619916C(&v26, v25);
  sub_1D619916C(&v31, v25);
  v10 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v21, &v17);
LABEL_10:
  v14 = v10;
  sub_1D61991F4(v36, sub_1D6199254);
  sub_1D61992B0(&v31);
  sub_1D61992B0(&v26);
  return v14 & 1;
}

unint64_t sub_1D61983E0(uint64_t a1)
{
  result = sub_1D6198408();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6198408()
{
  result = qword_1EC884AD0;
  if (!qword_1EC884AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884AD0);
  }

  return result;
}

unint64_t sub_1D619845C(void *a1)
{
  a1[1] = sub_1D6198494();
  a1[2] = sub_1D61984E8();
  result = sub_1D619853C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6198494()
{
  result = qword_1EDF273F8;
  if (!qword_1EDF273F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF273F8);
  }

  return result;
}

unint64_t sub_1D61984E8()
{
  result = qword_1EDF0D4D8;
  if (!qword_1EDF0D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D4D8);
  }

  return result;
}

unint64_t sub_1D619853C()
{
  result = qword_1EC884AD8;
  if (!qword_1EC884AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884AD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatGroupNodeMaskPathO(uint64_t a1)
{
  if ((*(a1 + 64) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

void *sub_1D61985BC(__int128 *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 64);
  if (v7 <= 1)
  {
    v15 = MEMORY[0x1E69E6F90];
    if (*(a2 + 64))
    {
      sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7273AE0;
      sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v15);
      sub_1D5EA74B8(0);
      v18 = (*(*(v49 - 8) + 80) + 32) & ~*(*(v49 - 8) + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D7273AE0;
      sub_1D5B561B4(0, &qword_1EC8803C0, sub_1D5E4F38C, v15);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1D7273AE0;
      v51 = a1[7];
      v71 = a1[6];
      v72 = v51;
      v73 = a1[8];
      v74 = *(a1 + 18);
      v52 = a1[3];
      v67 = a1[2];
      v68 = v52;
      v53 = a1[5];
      v69 = a1[4];
      v70 = v53;
      v54 = a1[1];
      v65 = *a1;
      v66 = v54;
      *&v63 = v5;
      v75 = v5;
      v76 = v4;
      v77 = v6;
      v78 = *(a2 + 17);
      *v79 = *(a2 + 33);
      *&v79[15] = *(a2 + 3);
      v80 = 1;
      sub_1D619916C(&v75, v62);
      sub_1D6BDF7B0(&v65, &v63);
      v56 = v55;

      *(v50 + 56) = &type metadata for FormatInspection;
      *(v50 + 64) = &off_1F51E3FD0;
      *(v50 + 32) = v56;
      v57 = sub_1D5F62BFC(v50);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v50 + 32));
      swift_deallocClassInstance();
      v27 = sub_1D7073500(v57);

      v28 = 0x50207265697A6542;
      v29 = 0xEB00000000687461;
    }

    else
    {
      sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7273AE0;
      sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v15);
      sub_1D5EA74B8(0);
      v18 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D7273AE0;
      sub_1D5B561B4(0, &qword_1EC8803C0, sub_1D5E4F38C, v15);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D7273AE0;
      v21 = a1[7];
      v71 = a1[6];
      v72 = v21;
      v73 = a1[8];
      v74 = *(a1 + 18);
      v22 = a1[3];
      v67 = a1[2];
      v68 = v22;
      v23 = a1[5];
      v69 = a1[4];
      v70 = v23;
      v24 = a1[1];
      v65 = *a1;
      v66 = v24;
      *&v63 = v5;
      *(&v63 + 1) = v4;
      v64[0] = v6;
      v75 = v5;
      v76 = v4;
      v77 = v6;
      v78 = *(a2 + 17);
      *v79 = *(a2 + 33);
      *&v79[15] = *(a2 + 3);
      v80 = 0;
      sub_1D619916C(&v75, v62);
      v25 = sub_1D6D9893C(&v65, &v63);
      sub_1D5ED348C(v63, *(&v63 + 1), v64[0]);
      *(v20 + 56) = &type metadata for FormatInspection;
      *(v20 + 64) = &off_1F51E3FD0;
      *(v20 + 32) = v25;
      v26 = sub_1D5F62BFC(v20);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v20 + 32));
      swift_deallocClassInstance();
      v27 = sub_1D7073500(v26);

      v28 = 0x522072656E726F43;
      v29 = 0xED00007375696461;
    }

    v41 = (v19 + v18);
    v42 = v27;
    goto LABEL_12;
  }

  if (v7 == 2)
  {
    v30 = MEMORY[0x1E69E6F90];
    sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v30);
    sub_1D5EA74B8(0);
    v18 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D7273AE0;
    sub_1D5B561B4(0, &qword_1EC8803C0, sub_1D5E4F38C, v30);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D7273AE0;
    v33 = a1[7];
    v71 = a1[6];
    v72 = v33;
    v73 = a1[8];
    v74 = *(a1 + 18);
    v34 = a1[3];
    v67 = a1[2];
    v68 = v34;
    v35 = a1[5];
    v69 = a1[4];
    v70 = v35;
    v36 = a1[1];
    v65 = *a1;
    v66 = v36;
    *&v64[1] = *(a2 + 17);
    *&v64[17] = *(a2 + 33);
    v37 = *&v64[17];
    *&v64[32] = *(a2 + 3);
    *&v63 = v5;
    *(&v63 + 1) = v4;
    v64[0] = v6;
    v75 = v5;
    v76 = v4;
    v77 = v6;
    v78 = *&v64[1];
    *v79 = v37;
    *&v79[15] = *&v64[32];
    v80 = 2;
    sub_1D619916C(&v75, v62);
    v38 = sub_1D6BB7CE4(&v65, &v63);
    v62[0] = v63;
    v62[1] = *v64;
    v62[2] = *&v64[16];
    v62[3] = *&v64[32];
    sub_1D61991F4(v62, sub_1D61991A4);
    *(v32 + 56) = &type metadata for FormatInspection;
    *(v32 + 64) = &off_1F51E3FD0;
    *(v32 + 32) = v38;
    v39 = sub_1D5F62BFC(v32);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v32 + 32));
    swift_deallocClassInstance();
    v40 = sub_1D7073500(v39);

    v28 = 0x746E656964617247;
    v41 = (v19 + v18);
    v42 = v40;
    v29 = 0xE800000000000000;
LABEL_12:
    sub_1D711AD20(1701869908, 0xE400000000000000, v42, v28, v29, v41);
    v58 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v58 - 8) + 56))(v19 + v18, 0, 1, v58);
    sub_1D6795150(1752457552, 0xE400000000000000, 0, 0, v19, &v65);
    swift_setDeallocating();
    sub_1D61991F4(v19 + v18, sub_1D5EA74B8);
    swift_deallocClassInstance();
    *(v16 + 56) = &type metadata for FormatInspectionGroup;
    *(v16 + 64) = &off_1F518B2C0;
    v59 = swift_allocObject();
    *(v16 + 32) = v59;
    v60 = v66;
    *(v59 + 16) = v65;
    *(v59 + 32) = v60;
    *(v59 + 48) = v67;
    v61 = sub_1D7073500(v16);
    swift_setDeallocating();
    sub_1D61991F4(v16 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    return v61;
  }

  v8 = MEMORY[0x1E69E6F90];
  if (v7 == 3)
  {
    sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7273AE0;
    sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v8);
    sub_1D5EA74B8(0);
    v11 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    v13 = (v12 + v11);
    v14 = 1818326607;
  }

  else
  {
    sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7273AE0;
    sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v8);
    sub_1D5EA74B8(0);
    v11 = (*(*(v43 - 8) + 80) + 32) & ~*(*(v43 - 8) + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    v13 = (v12 + v11);
    v14 = 1701736270;
  }

  sub_1D711F844(1701869908, 0xE400000000000000, v14, 0xE400000000000000, v13);
  v44 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v44 - 8) + 56))(v12 + v11, 0, 1, v44);
  sub_1D6795150(1752457552, 0xE400000000000000, 0, 0, v12, &v65);
  swift_setDeallocating();
  sub_1D61991F4(v12 + v11, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v9 + 56) = &type metadata for FormatInspectionGroup;
  *(v9 + 64) = &off_1F518B2C0;
  v45 = swift_allocObject();
  *(v9 + 32) = v45;
  v46 = v66;
  *(v45 + 16) = v65;
  *(v45 + 32) = v46;
  *(v45 + 48) = v67;
  v47 = sub_1D7073500(v9);
  swift_setDeallocating();
  sub_1D61991F4(v9 + 32, sub_1D5E4F358);
  swift_deallocClassInstance();
  return v47;
}

void sub_1D61991A4()
{
  if (!qword_1EC890C30)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890C30);
    }
  }
}

uint64_t sub_1D61991F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6199254()
{
  if (!qword_1EC884AE0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC884AE0);
    }
  }
}

uint64_t sub_1D61992E0(uint64_t a1)
{
  sub_1D6044204(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v59, v6);
  v57 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v60 = &v57 - v10;
  v11 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v57 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v57 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v57 - v33;
  v35 = *v1;
  v36 = a1 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
  v37 = *(type metadata accessor for PuzzleStatistic(0) + 20);
  if (v35 <= 1)
  {
    if (!v35)
    {
      sub_1D619A9AC(v36 + v37, v34, type metadata accessor for PuzzleStatisticCategory);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 2) < 2)
      {
        sub_1D619AA14(v34, type metadata accessor for PuzzleStatisticCategory);
        v39 = -1.0;
LABEL_27:
        v43 = v39 >= 0.0;
        return v43 & 1;
      }

      if (EnumCaseMultiPayload)
      {
        v54 = v60;
        sub_1D619A8F8(v34, v60, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v39 = PuzzleStatisticValue.primaryValue.getter();
        v48 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
        v49 = v54;
      }

      else
      {
        sub_1D619A8F8(v34, v14, type metadata accessor for PuzzleStatisticValue);
        v39 = PuzzleStatisticValue.primaryValue.getter();
        v48 = type metadata accessor for PuzzleStatisticValue;
        v49 = v14;
      }

LABEL_26:
      sub_1D619AA14(v49, v48);
      goto LABEL_27;
    }

    sub_1D619A9AC(v36 + v37, v30, type metadata accessor for PuzzleStatisticCategory);
    v42 = swift_getEnumCaseMultiPayload();
    if ((v42 - 2) < 2 || !v42)
    {
      v41 = v30;
      goto LABEL_12;
    }

    v51 = v30;
    v50 = v60;
    sub_1D619A8F8(v51, v60, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
LABEL_22:
    v39 = PuzzleStatisticValue.primaryValue.getter();
    v48 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
    v49 = v50;
    goto LABEL_26;
  }

  if (v35 != 2)
  {
    sub_1D619A9AC(v36 + v37, v22, type metadata accessor for PuzzleStatisticCategory);
    v44 = swift_getEnumCaseMultiPayload();
    sub_1D619AA14(v22, type metadata accessor for PuzzleStatisticCategory);
    if (v44 != 2)
    {
      v43 = 0;
      return v43 & 1;
    }

    sub_1D619A9AC(v36 + v37, v18, type metadata accessor for PuzzleStatisticCategory);
    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 1)
    {
      if (v45 != 2)
      {
        v41 = v18;
        goto LABEL_12;
      }

      v52 = v58;
      sub_1D619A8F8(v18, v58, sub_1D6044204);
      v53 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
      v43 = (*(*(v53 - 8) + 48))(v52, 1, v53) != 1;
      v46 = sub_1D6044204;
      v47 = v52;
    }

    else if (v45)
    {
      v56 = v57;
      sub_1D619A8F8(v18, v57, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      if (PuzzleStatisticValue.hasValue.getter() & 1) != 0 || (PuzzleStatisticValue.hasValue.getter())
      {
        v43 = 1;
      }

      else
      {
        v43 = PuzzleStatisticValue.hasValue.getter();
      }

      v46 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      v47 = v56;
    }

    else
    {
      sub_1D619A8F8(v18, v14, type metadata accessor for PuzzleStatisticValue);
      v43 = PuzzleStatisticValue.hasValue.getter();
      v46 = type metadata accessor for PuzzleStatisticValue;
      v47 = v14;
    }

    sub_1D619AA14(v47, v46);
    return v43 & 1;
  }

  sub_1D619A9AC(v36 + v37, v26, type metadata accessor for PuzzleStatisticCategory);
  v40 = swift_getEnumCaseMultiPayload();
  if ((v40 - 2) >= 2 && v40)
  {
    v50 = v60;
    sub_1D619A8F8(v26, v60, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    goto LABEL_22;
  }

  v41 = v26;
LABEL_12:
  sub_1D619AA14(v41, type metadata accessor for PuzzleStatisticCategory);
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1D6199974()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6199A54(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6199B20(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6199BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D619A960(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6199C2C(unint64_t *a1@<X8>)
{
  v2 = 0xEF65756C61567972;
  v3 = 0x616D697250736168;
  v4 = 0x80000001D73BC510;
  v5 = 0x656461654C736168;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xEE006472616F6272;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001D73BC4F0;
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

uint64_t FormatPuzzleStatisticBinding.Bool.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6199E14()
{
  result = qword_1EC884AE8;
  if (!qword_1EC884AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884AE8);
  }

  return result;
}

unint64_t sub_1D6199E68(uint64_t a1)
{
  result = sub_1D6199E90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6199E90()
{
  result = qword_1EC884AF0;
  if (!qword_1EC884AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884AF0);
  }

  return result;
}

unint64_t sub_1D6199EE4(void *a1)
{
  a1[1] = sub_1D6199F1C();
  a1[2] = sub_1D6199F70();
  result = sub_1D6199E14();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6199F1C()
{
  result = qword_1EC884AF8;
  if (!qword_1EC884AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884AF8);
  }

  return result;
}

unint64_t sub_1D6199F70()
{
  result = qword_1EC884B00;
  if (!qword_1EC884B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B00);
  }

  return result;
}

unint64_t sub_1D619A018()
{
  result = qword_1EC884B08;
  if (!qword_1EC884B08)
  {
    sub_1D619A070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B08);
  }

  return result;
}

void sub_1D619A070()
{
  if (!qword_1EC884B10)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884B10);
    }
  }
}

unint64_t sub_1D619A0C4()
{
  result = qword_1EC884B18;
  if (!qword_1EC884B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B18);
  }

  return result;
}

unint64_t sub_1D619A118()
{
  result = qword_1EC884B20;
  if (!qword_1EC884B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B20);
  }

  return result;
}

uint64_t sub_1D619A16C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v66 = a3;
  v65 = a2;
  v62 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v62, v4);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v64, v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v61 - v18;
  v20 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v61 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v61 - v34;
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v36 = 0x80000001D73CCF10;
      sub_1D619A9AC(v65, v27, type metadata accessor for FeedPuzzleStatistic);
      v41 = *(v20 + 32);
      v42 = type metadata accessor for PuzzleStatistic(0);
      sub_1D619A9AC(&v27[v41 + *(v42 + 20)], v11, type metadata accessor for PuzzleStatisticCategory);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 2) >= 2 && EnumCaseMultiPayload)
      {
        v44 = 0xD000000000000012;
        v51 = v63;
        sub_1D619A8F8(v11, v63, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v52 = PuzzleStatisticValue.primaryValue.getter();
        sub_1D619AA14(v51, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        sub_1D619AA14(v27, type metadata accessor for FeedPuzzleStatistic);
        v45 = v52 >= 0.0;
      }

      else
      {
        v44 = 0xD000000000000012;
        sub_1D619AA14(v27, type metadata accessor for FeedPuzzleStatistic);
        sub_1D619AA14(v11, type metadata accessor for PuzzleStatisticCategory);
        v45 = 0;
      }
    }

    else
    {
      sub_1D619A9AC(v65, v23, type metadata accessor for FeedPuzzleStatistic);
      v67 = 3;
      v45 = sub_1D61992E0(v23);
      sub_1D619AA14(v23, type metadata accessor for FeedPuzzleStatistic);
      v36 = 0xEF6472616F627265;
      v44 = 0x6461654C20736148;
    }
  }

  else if (*a1)
  {
    v36 = 0x80000001D73CCF30;
    sub_1D619A9AC(v65, v31, type metadata accessor for FeedPuzzleStatistic);
    v46 = *(v20 + 32);
    v47 = type metadata accessor for PuzzleStatistic(0);
    sub_1D619A9AC(&v31[v46 + *(v47 + 20)], v15, type metadata accessor for PuzzleStatisticCategory);
    v48 = swift_getEnumCaseMultiPayload();
    if ((v48 - 2) >= 2 && v48)
    {
      v53 = v63;
      sub_1D619A8F8(v15, v63, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      v54 = PuzzleStatisticValue.primaryValue.getter();
      sub_1D619AA14(v53, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      sub_1D619AA14(v31, type metadata accessor for FeedPuzzleStatistic);
      v45 = v54 >= 0.0;
    }

    else
    {
      sub_1D619AA14(v31, type metadata accessor for FeedPuzzleStatistic);
      sub_1D619AA14(v15, type metadata accessor for PuzzleStatisticCategory);
      v45 = 0;
    }

    v44 = 0xD000000000000013;
  }

  else
  {
    v36 = 0x80000001D73CCF50;
    sub_1D619A9AC(v65, &v61 - v34, type metadata accessor for FeedPuzzleStatistic);
    v37 = *(v20 + 32);
    v38 = type metadata accessor for PuzzleStatistic(0);
    sub_1D619A9AC(&v35[v37 + *(v38 + 20)], v19, type metadata accessor for PuzzleStatisticCategory);
    v39 = swift_getEnumCaseMultiPayload();
    if ((v39 - 2) >= 2)
    {
      if (v39)
      {
        v49 = v63;
        sub_1D619A8F8(v19, v63, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v40 = PuzzleStatisticValue.primaryValue.getter();
        v50 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      }

      else
      {
        v49 = v61;
        sub_1D619A8F8(v19, v61, type metadata accessor for PuzzleStatisticValue);
        v40 = PuzzleStatisticValue.primaryValue.getter();
        v50 = type metadata accessor for PuzzleStatisticValue;
      }

      sub_1D619AA14(v49, v50);
      sub_1D619AA14(v35, type metadata accessor for FeedPuzzleStatistic);
    }

    else
    {
      sub_1D619AA14(v35, type metadata accessor for FeedPuzzleStatistic);
      sub_1D619AA14(v19, type metadata accessor for PuzzleStatisticCategory);
      v40 = -1.0;
    }

    v45 = v40 >= 0.0;
    v44 = 0xD000000000000011;
  }

  v55 = type metadata accessor for FormatInspectionItem(0);
  v56 = *(v55 + 24);
  v57 = v66;
  *(v66 + v56) = v45 & 1;
  v58 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v58 - 8) + 56))(v57 + v56, 0, 1, v58);
  *v57 = v44;
  v57[1] = v36;
  v57[2] = 0;
  v57[3] = 0;
  v59 = v57 + *(v55 + 28);
  *v59 = 0;
  *(v59 + 1) = 0;
  v59[16] = -1;
  return (*(*(v55 - 8) + 56))(v57, 0, 1, v55);
}

uint64_t sub_1D619A8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D619A960(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D619A9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D619AA14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D619AA74()
{
  v1 = sub_1D7258AAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[16];
  v9 = *(v0 + 3);
  v20 = *(v0 + 1);
  v21 = v9;
  v10 = v0[32];
  v11 = v0[48];
  v12 = *(v0 + 7);
  v22 = *(v0 + 5);
  v23 = v12;
  v13 = *(v0 + 9);
  LODWORD(v12) = v0[80];
  v26 = v0[64];
  v27 = v12;
  v14 = *(v0 + 11);
  v24 = v13;
  v25 = v14;
  v15 = *(v0 + 13);
  LODWORD(v14) = v0[112];
  v28 = v0[96];
  v29 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v16 setNumberStyle_];
  sub_1D7258A4C();
  v17 = sub_1D72589DC();
  (*(v2 + 8))(v5, v1);
  [v16 setLocale_];

  if (v7 > 3)
  {
    if (v7 > 5)
    {
      if (v7 != 6)
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_12:
        if ((v10 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_13:
        if ((v11 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_14:
        if (v26)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v7 = 6;
    }

    else if (v7 == 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }
  }

  else if (v7 > 1)
  {
    if (v7 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  else if (v7)
  {
    v7 = 1;
  }

  [v16 setRoundingMode_];
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_28:
  [v16 setMinimumIntegerDigits_];
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_29:
  [v16 setMaximumIntegerDigits_];
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_30:
  [v16 setMinimumFractionDigits_];
  if ((v26 & 1) == 0)
  {
LABEL_15:
    [v16 setMaximumFractionDigits_];
  }

LABEL_16:
  if (v27)
  {
    if (v28)
    {
      goto LABEL_18;
    }

LABEL_22:
    [v16 setMaximumSignificantDigits_];
    [v16 setUsesSignificantDigits_];
    if (v29)
    {
      return v16;
    }

    goto LABEL_19;
  }

  [v16 setMinimumSignificantDigits_];
  [v16 setUsesSignificantDigits_];
  if ((v28 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v29 & 1) == 0)
  {
LABEL_19:
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v16 setMultiplier_];
  }

  return v16;
}

BOOL _s8NewsFeed012FormatNumberC0V2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 1);
  v7 = a1[16];
  v8 = *(a1 + 3);
  v9 = a1[32];
  v10 = *(a1 + 5);
  v11 = a1[48];
  v12 = *(a1 + 7);
  v13 = a1[64];
  v14 = *(a1 + 9);
  v15 = a1[80];
  v16 = *(a1 + 11);
  v17 = a1[96];
  v18 = *(a1 + 13);
  v19 = a1[112];
  v20 = *a2;
  v21 = a2[1];
  v84 = *(a2 + 1);
  v85 = a2[16];
  v22 = *(a2 + 3);
  v23 = a2[32];
  v24 = *(a2 + 5);
  v25 = a2[48];
  v26 = *(a2 + 7);
  v27 = a2[64];
  v28 = *(a2 + 9);
  v29 = a2[80];
  v30 = *(a2 + 11);
  v31 = a2[96];
  v32 = *(a2 + 13);
  v33 = a2[112];
  if (v4 == 9)
  {
    if (v20 != 9)
    {
      return 0;
    }
  }

  else
  {
    if (v20 == 9)
    {
      return 0;
    }

    v66 = v12;
    v68 = *(a2 + 11);
    v64 = a2[96];
    v61 = v14;
    v59 = a2[112];
    v58 = v17;
    v57 = v16;
    v80 = v19;
    v82 = a2[80];
    v34 = v13;
    v35 = v10;
    v76 = *(a2 + 7);
    v78 = *(a2 + 9);
    v56 = v5;
    v36 = v11;
    v37 = a2[64];
    v38 = v8;
    v39 = v9;
    v74 = a2[48];
    v40 = v6;
    v72 = *(a2 + 5);
    v41 = v7;
    v70 = a2[32];
    v42 = sub_1D6DE6074(v4, v20);
    v23 = v70;
    v7 = v41;
    v24 = v72;
    v6 = v40;
    v25 = v74;
    v9 = v39;
    v26 = v76;
    v28 = v78;
    v8 = v38;
    v27 = v37;
    v11 = v36;
    v5 = v56;
    v10 = v35;
    v19 = v80;
    v29 = v82;
    v13 = v34;
    v16 = v57;
    v17 = v58;
    v33 = v59;
    v14 = v61;
    v31 = v64;
    v12 = v66;
    v30 = v68;
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 == 7)
  {
    if (v21 != 7)
    {
      return 0;
    }
  }

  else
  {
    if (v21 == 7)
    {
      return 0;
    }

    v43 = v5;
    v44 = v21;
    v81 = v19;
    v83 = v29;
    v45 = v13;
    v46 = v10;
    v77 = v26;
    v79 = v28;
    v69 = v11;
    v67 = v27;
    v65 = v8;
    v63 = v9;
    v75 = v25;
    v62 = v6;
    v73 = v24;
    v60 = v7;
    v71 = v23;
    v47 = sub_1D6DE5E7C(v43, v44);
    v23 = v71;
    v7 = v60;
    v24 = v73;
    v6 = v62;
    v25 = v75;
    v9 = v63;
    v26 = v77;
    v28 = v79;
    v8 = v65;
    v27 = v67;
    v11 = v69;
    v10 = v46;
    v19 = v81;
    v29 = v83;
    v13 = v45;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v85)
    {
      return 0;
    }
  }

  else
  {
    v48 = v85;
    if (v6 != v84)
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v22)
    {
      v49 = v23;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v24)
    {
      v50 = v25;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (v12 == v26)
    {
      v51 = v27;
    }

    else
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  if (v15)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == v28)
    {
      v52 = v29;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  if (v17)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == v30)
    {
      v53 = v31;
    }

    else
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  if ((v19 & 1) == 0)
  {
    if (v18 == v32)
    {
      v55 = v33;
    }

    else
    {
      v55 = 1;
    }

    return (v55 & 1) == 0;
  }

  return (v33 & 1) != 0;
}

unint64_t sub_1D619B0E0(uint64_t a1)
{
  result = sub_1D619B108();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D619B108()
{
  result = qword_1EC884B28;
  if (!qword_1EC884B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B28);
  }

  return result;
}

unint64_t sub_1D619B15C(void *a1)
{
  a1[1] = sub_1D619B194();
  a1[2] = sub_1D619B1E8();
  result = sub_1D619B23C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D619B194()
{
  result = qword_1EDF166E0;
  if (!qword_1EDF166E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166E0);
  }

  return result;
}

unint64_t sub_1D619B1E8()
{
  result = qword_1EDF166E8;
  if (!qword_1EDF166E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166E8);
  }

  return result;
}

unint64_t sub_1D619B23C()
{
  result = qword_1EC884B30;
  if (!qword_1EC884B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B30);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D619B2BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 113))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 1);
  if (v3 <= 7)
  {
    v4 = 7;
  }

  else
  {
    v4 = *(a1 + 1);
  }

  v5 = v4 - 8;
  if (v3 < 7)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1D619B310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 7;
    }
  }

  return result;
}

void static FormatSizeEquation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1D633A310(*a1, *a2);
  if (v4)
  {

    sub_1D633A310(v2, v3);
  }
}

unint64_t sub_1D619B3F8(uint64_t a1)
{
  result = sub_1D619B420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D619B420()
{
  result = qword_1EC884B38;
  if (!qword_1EC884B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B38);
  }

  return result;
}

unint64_t sub_1D619B474(void *a1)
{
  a1[1] = sub_1D619B4AC();
  a1[2] = sub_1D619B500();
  result = sub_1D619B554();
  a1[3] = result;
  return result;
}

unint64_t sub_1D619B4AC()
{
  result = qword_1EC884B40;
  if (!qword_1EC884B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B40);
  }

  return result;
}

unint64_t sub_1D619B500()
{
  result = qword_1EC884B48;
  if (!qword_1EC884B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B48);
  }

  return result;
}

unint64_t sub_1D619B554()
{
  result = qword_1EC884B50;
  if (!qword_1EC884B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B50);
  }

  return result;
}

void sub_1D619B5D8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1D633A310(*a1, *a2);
  if (v4)
  {

    sub_1D633A310(v2, v3);
  }
}

id sub_1D619B644()
{
  v1 = OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___bindingTreeViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___bindingTreeViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___bindingTreeViewController);
  }

  else
  {
    v4 = v0;
    sub_1D619B6F0();
    type metadata accessor for DebugFormatBindingTree(0);
    sub_1D619BE50(v5);
    sub_1D7260F8C();
    sub_1D619BEA8(0);
    v7 = objc_allocWithZone(v6);
    v8 = sub_1D726126C();
    v9 = *(v0 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_1D619B6F0()
{
  sub_1D619BF58(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___model;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___model))
  {
    v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___model);
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController_editor);
    type metadata accessor for DebugFormatBindingTree(0);
    v8 = swift_allocObject();
    v12 = OBJC_IVAR____TtC8NewsFeed22DebugFormatBindingTree__workspace;
    sub_1D60CF378(v27);
    v23 = v27[10];
    v24 = v27[11];
    v25 = v27[12];
    v26 = v28;
    v19 = v27[6];
    v20 = v27[7];
    v21 = v27[8];
    v22 = v27[9];
    v15 = v27[2];
    v16 = v27[3];
    v17 = v27[4];
    v18 = v27[5];
    v13 = v27[0];
    v14 = v27[1];
    sub_1D61957D4();
    sub_1D726009C();
    (*(v3 + 32))(v8 + v12, v6, v2);
    *(v8 + 16) = v9;

    sub_1D725B33C();

    sub_1D725B2EC();

    *(v0 + v7) = v8;
  }

  return v8;
}

id sub_1D619B9A4()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = sub_1D619B644();
  [v0 addChildViewController_];

  result = [v0 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___bindingTreeViewController;
  result = [*&v0[OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___bindingTreeViewController] view];
  if (result)
  {
    v7 = result;
    [v5 addSubview_];

    return [*&v0[v6] didMoveToParentViewController_];
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1D619BDE4()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  return v1;
}

unint64_t sub_1D619BE50(__n128 a1)
{
  result = qword_1EC880C48;
  if (!qword_1EC880C48)
  {
    type metadata accessor for DebugFormatBindingTree(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C48);
  }

  return result;
}

void sub_1D619BEA8(uint64_t a1)
{
  if (!qword_1EC884B78)
  {
    sub_1D619BF04();
    v1 = sub_1D726127C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884B78);
    }
  }
}

unint64_t sub_1D619BF04()
{
  result = qword_1EC884B80;
  if (!qword_1EC884B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B80);
  }

  return result;
}

void sub_1D619BF58(uint64_t a1)
{
  if (!qword_1EC884B88)
  {
    sub_1D61957D4();
    v1 = sub_1D72600EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884B88);
    }
  }
}

__n128 FormatServiceHistory.__allocating_init(issueReadingHistory:readingHistory:recipeHistory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  result = *a3;
  v8 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v8;
  *(v6 + 64) = *(a3 + 32);
  return result;
}

uint64_t FormatServiceHistory.init(issueReadingHistory:readingHistory:recipeHistory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *(a3 + 16);
  *(v3 + 32) = *a3;
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a3 + 32);
  return v3;
}

uint64_t sub_1D619C048(uint64_t a1, uint64_t a2)
{
  sub_1D619C0C8(0, &unk_1EDF3A8C0, sub_1D619C11C);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D619C0C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D619C11C()
{
  result = qword_1EDF3A8D0;
  if (!qword_1EDF3A8D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3A8D0);
  }

  return result;
}

uint64_t sub_1D619C180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D619C0C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D619C204@<X0>(uint64_t *a1@<X0>, SEL *a2@<X1>, SEL *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_1D619C0C8(0, &qword_1EC884B90, MEMORY[0x1E69B4F18]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v39 - v13;
  sub_1D619C0C8(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v39 - v21;
  if (!*(a1 + 16))
  {
    v27 = *(v5 + 24);
    v28 = sub_1D726203C();
    v29 = [v27 *a2];

    if (v29)
    {
      sub_1D72588BC();

      v30 = sub_1D725891C();
      (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
    }

    else
    {
      v36 = sub_1D725891C();
      (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
    }

    v35 = v22;
    return sub_1D5DF42F8(v35, a5);
  }

  if (*(a1 + 16) == 1)
  {
    v23 = *(v5 + 16);
    v24 = sub_1D726203C();
    v25 = [v23 *a3];

    if (v25)
    {
      sub_1D72588BC();

      v26 = sub_1D725891C();
      (*(*(v26 - 8) + 56))(v18, 0, 1, v26);
    }

    else
    {
      v34 = sub_1D725891C();
      (*(*(v34 - 8) + 56))(v18, 1, 1, v34);
    }

    v35 = v18;
    return sub_1D5DF42F8(v35, a5);
  }

  sub_1D619C048(v5 + 32, &v39);
  if (v40)
  {
    sub_1D5B63F14(&v39, v41);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    sub_1D7261C1C();
    v31 = sub_1D7261C0C();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v14, 1, v31) == 1)
    {
      sub_1D619C180(v14, &qword_1EC884B90, MEMORY[0x1E69B4F18]);
      v33 = sub_1D725891C();
      (*(*(v33 - 8) + 56))(a5, 1, 1, v33);
    }

    else
    {
      a4();
      (*(v32 + 8))(v14, v31);
    }

    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_1D619C180(&v39, &unk_1EDF3A8C0, sub_1D619C11C);
    v38 = sub_1D725891C();
    return (*(*(v38 - 8) + 56))(a5, 1, 1, v38);
  }
}

uint64_t FormatServiceHistory.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D619C180(v0 + 32, &unk_1EDF3A8C0, sub_1D619C11C);
  return v0;
}

uint64_t FormatServiceHistory.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D619C180(v0 + 32, &unk_1EDF3A8C0, sub_1D619C11C);

  return swift_deallocClassInstance();
}

uint64_t FormatIssueCoverNodeRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

double sub_1D619C8A4(uint64_t a1, id a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a4[1];
  v44[0] = *a4;
  v44[1] = v12;
  v45[0] = a4[2];
  *(v45 + 9) = *(a4 + 41);
  v13 = *(a1 + 128);
  v14 = *(a1 + 136);
  [a2 setIsAccessibilityElement_];
  [a2 setAccessibilityElementsHidden_];
  if (v14 > 0xFD)
  {
    goto LABEL_7;
  }

  if ((v14 & 0x80) != 0)
  {
    if (!(v13 | v14 & 0x7F))
    {
      goto LABEL_7;
    }

    v15 = &selRef_setAccessibilityElementsHidden_;
  }

  else
  {
    v15 = &selRef_setIsAccessibilityElement_;
  }

  [a2 *v15];
LABEL_7:
  [a2 setUserInteractionEnabled_];
  v16 = *(a1 + 144);
  if (v16)
  {
    v17 = *(v16 + 177);
  }

  else
  {
    v17 = 0;
  }

  [a2 setAccessibilityIgnoresInvertColors_];
  v18 = v7[5];
  v19 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v18);
  v20 = a4[1];
  v39 = *a4;
  v40 = v20;
  v41[0] = a4[2];
  *(v41 + 9) = *(a4 + 41);
  v21 = *(a1 + 168);
  v35 = *(a1 + 152);
  v36 = v21;
  v22 = *(a1 + 200);
  v37 = *(a1 + 184);
  v38 = v22;
  sub_1D619CB80(v44, v42);
  v23 = sub_1D5F8EABC();
  sub_1D71DD160(&v34);
  IssueCoverViewRendererType.render(_:on:with:traits:coverViewStyle:)(&v39, a2, &v35, v23, &v34, v18, v19);

  v42[0] = v39;
  v42[1] = v40;
  v43[0] = v41[0];
  *(v43 + 9) = *(v41 + 9);
  sub_1D619CBDC(v42);
  if (v16)
  {
    v25 = *(v16 + 64);
    v24 = *(v16 + 72);
    v26 = *(v16 + 80);
    v27 = *(v16 + 88);

    sub_1D5ED34B0(v24, v26, v27);
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v25 = 0;
    v27 = -2;
  }

  v28 = [a2 layer];
  *&v35 = v24;
  *(&v35 + 1) = v26;
  LOBYTE(v36) = v27;
  sub_1D6D111F4(v28, a5, v25, &v35, a6, a7);

  sub_1D5ED348C(v24, v26, v27);
  if (v16)
  {
  }

  else
  {
    v29 = 0;
  }

  *&v35 = v29;
  sub_1D613DC18(a2, &v35, a3);

  return result;
}

uint64_t FormatSupplementary.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatSupplementary.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FormatSupplementary.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatSupplementary.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void FormatSupplementary.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void FormatSupplementary.init(identifier:name:description:children:style:styles:selectors:kind:options:types:accessibilityRole:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char *a15)
{
  v19 = *a12;
  v20 = *a15;
  *a9 = a1;
  *(a9 + 8) = a2;

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = v19;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = v20;
}

uint64_t FormatSupplementary.Kind.collectionViewSupplementaryKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D725EF8C();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69D8470];
  if (!v3)
  {
    v6 = MEMORY[0x1E69D8478];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

NewsFeed::FormatSupplementary::Kind_optional __swiftcall FormatSupplementary.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

uint64_t FormatSupplementary.Kind.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265746F6F66;
  }

  else
  {
    return 0x726564616568;
  }
}

uint64_t sub_1D619D11C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7265746F6F66;
  }

  else
  {
    v2 = 0x726564616568;
  }

  if (*a2)
  {
    v3 = 0x7265746F6F66;
  }

  else
  {
    v3 = 0x726564616568;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D619D19C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D619D20C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D619D260(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D619D2CC(uint64_t *a1@<X8>)
{
  v2 = 0x726564616568;
  if (*v1)
  {
    v2 = 0x7265746F6F66;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t _s8NewsFeed19FormatSupplementaryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v29 = a1[8];
  v27 = a1[9];
  v25 = *(a1 + 80);
  v23 = a1[11];
  v19 = *(a1 + 104);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v30 = *(a2 + 56);
  v31 = a1[7];
  v28 = *(a2 + 64);
  v26 = *(a2 + 72);
  v24 = *(a2 + 80);
  v21 = a1[12];
  v22 = *(a2 + 88);
  v20 = *(a2 + 96);
  v18 = *(a2 + 104);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (!v9 || (v3 != v10 || v6 != v9) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_1D633E44C(v5, v11))
  {
    if (v31)
    {
      if (!v30)
      {
        return 0;
      }

      v12 = _s8NewsFeed28FormatSupplementaryNodeStyleC2eeoiySbAC_ACtFZ_0(v31, v30);

      if (!v12)
      {
        return 0;
      }
    }

    else if (v30)
    {
      return 0;
    }

    if ((sub_1D633E5BC(v29, v28) & 1) == 0 || (sub_1D5BFC390(v27, v26) & 1) == 0)
    {
      return 0;
    }

    if (v25)
    {
      v13 = 0x7265746F6F66;
    }

    else
    {
      v13 = 0x726564616568;
    }

    if (v24)
    {
      v14 = 0x7265746F6F66;
    }

    else
    {
      v14 = 0x726564616568;
    }

    if (v13 == v14)
    {
      swift_bridgeObjectRelease_n();
LABEL_35:
      if ((sub_1D633BCCC(v23, v22) & 1) == 0)
      {
        return 0;
      }

      sub_1D63491BC(v21, v20);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

      if (v19 == 7)
      {
        if (v18 != 7)
        {
          return 0;
        }
      }

      else
      {
        v33 = v19;
        if (v18 == 7)
        {
          return 0;
        }

        v32 = v18;
        if (!_s8NewsFeed23FormatAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v33, &v32))
        {
          return 0;
        }
      }

      return 1;
    }

    v15 = sub_1D72646CC();
    swift_bridgeObjectRelease_n();
    if (v15)
    {
      goto LABEL_35;
    }
  }

  return 0;
}

unint64_t sub_1D619D5CC()
{
  result = qword_1EC884B98;
  if (!qword_1EC884B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B98);
  }

  return result;
}

unint64_t sub_1D619D620(uint64_t a1)
{
  *(a1 + 8) = sub_1D619D650();
  result = sub_1D5CE7658();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D619D650()
{
  result = qword_1EC884BA0;
  if (!qword_1EC884BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BA0);
  }

  return result;
}

unint64_t sub_1D619D6A4(uint64_t a1)
{
  result = sub_1D619D6CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D619D6CC()
{
  result = qword_1EC884BA8;
  if (!qword_1EC884BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BA8);
  }

  return result;
}

unint64_t sub_1D619D760()
{
  result = qword_1EDF0F898;
  if (!qword_1EDF0F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F898);
  }

  return result;
}

unint64_t sub_1D619D7B4(uint64_t a1)
{
  result = sub_1D5B4BADC();
  *(a1 + 8) = result;
  return result;
}

uint64_t FormatBracketDataVisualization.tagIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatBracketDataVisualization.query.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

double FormatBracketDataVisualization.query.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

double FormatBracketDataVisualization.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatBracketDataVisualization.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;

  return result;
}

void *FormatBracketDataVisualization.__allocating_init(tagIdentifier:query:selectors:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  swift_beginAccess();
  v12[4] = a3;
  v12[5] = a4;
  swift_beginAccess();
  v12[6] = a5;
  swift_beginAccess();
  v12[7] = a6;
  return v12;
}

void *FormatBracketDataVisualization.init(tagIdentifier:query:selectors:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  swift_beginAccess();
  v6[4] = a3;
  v6[5] = a4;
  swift_beginAccess();
  v6[6] = a5;
  swift_beginAccess();
  v6[7] = a6;
  return v6;
}

uint64_t sub_1D619DC08()
{
  v1 = 0x746E656449676174;
  v2 = 0x726F7463656C6573;
  if (*v0 != 2)
  {
    v2 = 0x69747265706F7270;
  }

  if (*v0)
  {
    v1 = 0x7972657571;
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

uint64_t sub_1D619DC94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D619EA48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D619DCBC(uint64_t a1)
{
  v2 = sub_1D5E1C284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D619DCF8(uint64_t a1)
{
  v2 = sub_1D5E1C284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *FormatBracketDataVisualization.deinit()
{

  return v0;
}

uint64_t FormatBracketDataVisualization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void FormatBracketDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D619E760(0, &qword_1EC87F988, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C284();
  sub_1D7264B5C();
  v18 = 0;
  sub_1D72643FC();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    swift_beginAccess();
    v11 = v3[4];
    v12 = v3[5];

    sub_1D5EAEE98(v11, v12, 1);

    swift_beginAccess();
    if (*(v3[6] + 16))
    {

      sub_1D5E067C0(v13, v10, 2);
    }

    swift_beginAccess();
    v14 = v3[7];
    if (*(v14 + 16))
    {
      v17 = 3;
      v16 = v14;
      sub_1D619E6EC();
      sub_1D5E4C584();
      sub_1D5E4C5D4();

      sub_1D72647EC();
    }

    else
    {
    }

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t FormatBracketDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatBracketDataVisualization.init(from:)(a1);
  return v2;
}

void *FormatBracketDataVisualization.init(from:)(void *a1)
{
  v49 = *v1;
  v50 = v2;
  sub_1D5E18934(0);
  v45 = v4;
  v48 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v8 = v7;
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D619E760(0, &qword_1EC884BB0, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v47 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C284();
  v17 = v50;
  v18 = v1;
  sub_1D7264B0C();
  if (v17)
  {
    swift_deallocPartialClassInstance();
    v38 = a1;
  }

  else
  {
    v43 = v11;
    v19 = v47;
    v20 = v48;
    v50 = a1;
    LOBYTE(v51) = 0;
    v1[2] = sub_1D72642BC();
    v1[3] = v21;
    v42 = v1;
    v54 = 1;
    if (sub_1D726434C())
    {
      v53 = 1;
      sub_1D726431C();
      v22 = v51;
      v23 = v52;
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = v42;
    v42[4] = v22;
    v24[5] = v23;
    LOBYTE(v51) = 2;
    v25 = v16;
    v26 = sub_1D726434C();
    v27 = v43;
    if (v26)
    {
      v54 = 2;
      sub_1D619E7C4(&qword_1EDF3BE00, 255, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
      v28 = v8;
      sub_1D726431C();
      v29 = v13;
      v30 = v20;
      v31 = v27;
      v32 = v25;
      v33 = v29;
      v34 = sub_1D725A74C();
      (*(v44 + 8))(v31, v28);
    }

    else
    {
      v30 = v20;
      v32 = v25;
      v33 = v13;
      v34 = MEMORY[0x1E69E7CD0];
    }

    v42[6] = v34;
    LOBYTE(v51) = 3;
    v35 = sub_1D726434C();
    v36 = v46;
    if (v35)
    {
      v54 = 3;
      sub_1D619E7C4(&qword_1EDF3BD70, 255, sub_1D5E18934, MEMORY[0x1E69D64C8]);
      v37 = v45;
      sub_1D726431C();
      v40 = sub_1D725A74C();
      (*(v30 + 8))(v36, v37);
      (*(v19 + 8))(v32, v33);
    }

    else
    {
      (*(v19 + 8))(v32, v33);
      v40 = MEMORY[0x1E69E7CC0];
    }

    v38 = v50;
    v18 = v42;
    v42[7] = v40;
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return v18;
}

void *sub_1D619E664@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatBracketDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D619E6EC()
{
  result = qword_1EC87F998;
  if (!qword_1EC87F998)
  {
    sub_1D619E760(255, &qword_1EC87F988, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F998);
  }

  return result;
}

void sub_1D619E760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E1C284();
    v7 = a3(a1, &type metadata for FormatBracketDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D619E7C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D619E80C(void *a1, uint64_t a2)
{
  a1[1] = sub_1D619E7C4(&qword_1EC884BB8, a2, type metadata accessor for FormatBracketDataVisualization, &protocol conformance descriptor for FormatBracketDataVisualization);
  a1[2] = sub_1D619E7C4(&qword_1EC884BC0, v3, type metadata accessor for FormatBracketDataVisualization, &protocol conformance descriptor for FormatBracketDataVisualization);
  result = sub_1D619E7C4(&qword_1EC884BC8, v4, type metadata accessor for FormatBracketDataVisualization, &protocol conformance descriptor for FormatBracketDataVisualization);
  a1[3] = result;
  return result;
}

unint64_t sub_1D619E944()
{
  result = qword_1EC884BD0;
  if (!qword_1EC884BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BD0);
  }

  return result;
}

unint64_t sub_1D619E99C()
{
  result = qword_1EC884BD8;
  if (!qword_1EC884BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BD8);
  }

  return result;
}

unint64_t sub_1D619E9F4()
{
  result = qword_1EC884BE0;
  if (!qword_1EC884BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BE0);
  }

  return result;
}

uint64_t sub_1D619EA48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656449676174 && a2 == 0xED00007265696669;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id TagFeedHeadlineRequest.fetch.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D619EBD4(v2, v3, v4);
}

id sub_1D619EBD4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return a1;
  }
}

id TagFeedHeadlineRequest.tag.getter()
{
  if (*(v0 + 16) == 1)
  {

    return swift_unknownObjectRetain();
  }

  else
  {
    v2 = [*v0 backingTag];

    return v2;
  }
}

__n128 TagFeedHeadlineRequest.init(fetch:appConfig:dateRange:maxFetchCount:freeFeedRange:paidFetchRange:filterOptions:previousHeadlines:purpose:log:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10)
{
  v10 = a1[1].n128_u8[0];
  result = *a1;
  *a9 = *a1;
  a9[1].n128_u8[0] = v10;
  a9[1].n128_u64[1] = a2;
  a9[2].n128_u64[0] = a3;
  a9[2].n128_u64[1] = a4;
  a9[3].n128_u64[0] = a5;
  a9[5].n128_u64[0] = a7;
  a9[5].n128_u64[1] = a8;
  a9[3].n128_u64[1] = a6;
  a9[4] = a10;
  return result;
}

uint64_t TagFeedHeadlineRequest.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 88);
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x3D6761747BLL, 0xE500000000000000);
  if (v2 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v1 = [v1 backingTag];
  }

  v5 = [v1 identifier];
  swift_unknownObjectRelease();
  v6 = sub_1D726207C();
  v8 = v7;

  MEMORY[0x1DA6F9910](v6, v8);

  MEMORY[0x1DA6F9910](0x756F4378616D202CLL, 0xEB000000003D746ELL);
  v9 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v9);

  MEMORY[0x1DA6F9910](0x615265746164202CLL, 0xEC0000003D65676ELL);
  v10 = [v3 description];
  v11 = sub_1D726207C();
  v13 = v12;

  MEMORY[0x1DA6F9910](v11, v13);

  MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73CD150);
  if (v4 >> 62)
  {
    sub_1D7263BFC();
  }

  v14 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v14);

  MEMORY[0x1DA6F9910](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D619EF04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D619EF4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D619EFB4(uint64_t a1, uint64_t a2)
{
  sub_1D725A76C();
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    v9 = v8;
  }

  else
  {
    swift_endAccess();
    v10 = sub_1D726203C();
    v8 = [objc_opt_self() bundleWithIdentifier_];

    if (v8)
    {
      swift_beginAccess();
      v11 = v8;

      sub_1D6D601E4(v8, a1, a2);
      swift_endAccess();
    }
  }

  sub_1D725A77C();
  return v8;
}

uint64_t FormatBundleImage.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatBundleImage.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatBundleImage.size.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1D5E433CC(v2, v3, v4);
}

void sub_1D619F180(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v13 = v1[4];
  v14 = v1[5];
  v8 = *(v1 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;

  sub_1D6C4D24C(v9 | 0x9000000000000000);

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      return;
    }

    sub_1D5E433E0(v13, v14, 2u);
    sub_1D6273544(a1, v13);
    if (!v2)
    {
      sub_1D6273544(a1, v14);
    }

    v10 = v13;
    v11 = v14;
    v12 = 2;
  }

  else if (v8)
  {
    sub_1D5E433E0(v13, v14, 1u);
    sub_1D6273544(a1, v13);
    v10 = v13;
    v11 = v14;
    v12 = 1;
  }

  else
  {
    sub_1D5E433E0(v13, v14, 0);
    sub_1D6273544(a1, v13);
    v10 = v13;
    v11 = v14;
    v12 = 0;
  }

  sub_1D5E4342C(v10, v11, v12);
}

uint64_t sub_1D619F310()
{
  v0 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  type metadata accessor for FormatBundleCache();
  v2 = swift_allocObject();
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  result = sub_1D725A7AC();
  v4 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = result;
  *(v2 + 24) = v4;
  qword_1EDFFCC00 = v2;
  return result;
}

uint64_t sub_1D619F3CC()
{

  return swift_deallocClassInstance();
}

BOOL _s8NewsFeed17FormatBundleImageV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6 == 255)
  {
    sub_1D5E433CC(v3, v5, 0xFFu);
    if (v11 == 255)
    {
      sub_1D5E433CC(v10, v9, 0xFFu);
      sub_1D5E4342C(v3, v5, 0xFFu);
      return 1;
    }

    sub_1D5E433CC(v10, v9, v11);
  }

  else
  {
    v17 = v3;
    v18 = v5;
    v19 = v6;
    if (v11 != 255)
    {
      v14 = v10;
      v15 = v9;
      v16 = v11;
      sub_1D5E433CC(v3, v5, v6);
      sub_1D5E433CC(v10, v9, v11);
      sub_1D5E433CC(v3, v5, v6);
      v12 = _s8NewsFeed21FormatBundleImageSizeO2eeoiySbAC_ACtFZ_0(&v17, &v14);
      sub_1D5E43440(v14, v15, v16);
      sub_1D5E43440(v17, v18, v19);
      sub_1D5E4342C(v3, v5, v6);
      return v12;
    }

    sub_1D5E433CC(v3, v5, v6);
    sub_1D5E433CC(v10, v9, 0xFFu);
    sub_1D5E433CC(v3, v5, v6);
    sub_1D5E43440(v3, v5, v6);
  }

  sub_1D5E4342C(v3, v5, v6);
  sub_1D5E4342C(v10, v9, v11);
  return 0;
}

unint64_t sub_1D619F620(uint64_t a1)
{
  result = sub_1D619F648();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D619F648()
{
  result = qword_1EC884BE8;
  if (!qword_1EC884BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BE8);
  }

  return result;
}

unint64_t sub_1D619F69C(void *a1)
{
  a1[1] = sub_1D5CCF640();
  a1[2] = sub_1D619F6D4();
  result = sub_1D619F728();
  a1[3] = result;
  return result;
}

unint64_t sub_1D619F6D4()
{
  result = qword_1EDF10CE8;
  if (!qword_1EDF10CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10CE8);
  }

  return result;
}

unint64_t sub_1D619F728()
{
  result = qword_1EC884BF0;
  if (!qword_1EC884BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BF0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed21FormatBundleImageSizeOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t FeedContext.bundleSession.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedContext(0) + 20);

  return sub_1D5B8866C(v3, a1);
}

uint64_t FeedContext.selectors.getter()
{
  type metadata accessor for FeedContext(0);
}

uint64_t FeedContext.segmentSetIds.getter()
{
  type metadata accessor for FeedContext(0);
}

uint64_t FeedContext.platform.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedContext(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D5B7CD94(v4, v5);
}

void *FeedContext.timesOfDayConfiguration.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedContext(0) + 56));
  v2 = v1;
  return v1;
}

uint64_t FeedContext.feedEditionConfig.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedContext(0) + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t FeedContext.init(subscription:bundleSession:displayFreeBadges:displayPremiumBadges:debugForcePremiumBadging:segmentSetIds:platform:allowsNewsProxyAudioCommands:timesOfDayConfiguration:userInfo:selectors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, char a8@<W7>, void *a9@<X8>, void *a10, void *a11, uint64_t a12)
{
  v33 = a7[1];
  v34 = *a7;
  *a9 = a1;
  v15 = type metadata accessor for FeedContext(0);
  sub_1D5B8866C(a2, a9 + v15[5]);
  v16 = a1;
  if (objc_getAssociatedObject(v16, (a1 + 1)))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v17 = v37;
      v18 = [v37 integerValue];
      if (v18 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1D5EBD03C(&v40);
  }

  v17 = 0;
  v18 = 0;
LABEL_10:
  if (objc_getAssociatedObject(v16, ~v18))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v19 = v37;
      v20 = [v19 integerValue];

      v21 = v20 - 70;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1D5EBD03C(&v40);
  }

LABEL_17:

  v21 = -70;
LABEL_18:
  *(a9 + v15[6]) = (v21 ^ v18) & 1;
  *(a9 + v15[7]) = a3 & 1;
  *(a9 + v15[8]) = a4 & 1;
  *(a9 + v15[9]) = a5 & 1;
  LOBYTE(v40) = 0;
  v22 = sub_1D5B8630C(v16, a2, a6, a10, &v40, a11, a12);

  *(a9 + v15[10]) = v22;
  *(a9 + v15[11]) = a6;
  v23 = (a9 + v15[12]);
  *v23 = v34;
  v23[1] = v33;
  *(a9 + v15[13]) = a8 & 1;
  *(a9 + v15[14]) = a10;
  v24 = qword_1EDF38CD8;
  v25 = a10;
  if (v24 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = qword_1EDF38CE0;
  v26 = unk_1EDF38CE8;

  __swift_destroy_boxed_opaque_existential_1(a11);
  result = sub_1D5BFC618(a2, &qword_1EDF33290, type metadata accessor for BundleSession);
  v29 = (a9 + v15[15]);
  *v29 = v27;
  v29[1] = v26;
  return result;
}

__n128 FeedContext.init(subscription:bundleSession:displayFreeBadges:displayPremiumBadges:debugForcePremiumBadging:segmentSetIds:platform:allowsNewsProxyAudioCommands:timesOfDayConfiguration:feedEditionConfig:feedMode:userInfo:selectors:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, __n128 *a11, char *a12, void *a13, uint64_t a14)
{
  v31 = a7[1];
  v32 = *a7;
  v33 = *a11;
  v27 = *a12;
  *a9 = a1;
  v17 = type metadata accessor for FeedContext(0);
  sub_1D5B8866C(a2, a9 + v17[5]);
  v18 = a1;
  if (objc_getAssociatedObject(v18, (a1 + 1)))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    sub_1D5EBD03C(&v39);
    goto LABEL_9;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v19 = v36;
  v20 = [v36 integerValue];
  if (v20 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v18, ~v20))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    sub_1D5EBD03C(&v39);
    goto LABEL_17;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v23 = -99;
    goto LABEL_18;
  }

  v21 = v36;
  v22 = [v21 integerValue];

  v23 = v22 - 99;
LABEL_18:
  *(a9 + v17[6]) = ((v23 ^ v20) & 1) == 0;
  *(a9 + v17[7]) = a3 & 1;
  *(a9 + v17[8]) = a4 & 1;
  *(a9 + v17[9]) = a5 & 1;
  LOBYTE(v39) = v27;
  v24 = sub_1D5B8630C(v18, a2, a6, a10, &v39, a13, a14);

  __swift_destroy_boxed_opaque_existential_1(a13);
  sub_1D5BFC618(a2, &qword_1EDF33290, type metadata accessor for BundleSession);
  *(a9 + v17[10]) = v24;
  *(a9 + v17[11]) = a6;
  v25 = (a9 + v17[12]);
  *v25 = v32;
  v25[1] = v31;
  *(a9 + v17[13]) = a8 & 1;
  *(a9 + v17[14]) = a10;
  result = v33;
  *(a9 + v17[15]) = v33;
  return result;
}

uint64_t FeedContext.premiumBadge(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = type metadata accessor for FeedContext(0);
  if (*(v2 + *(result + 36)))
  {
    v6 = 1;
  }

  else
  {
    v7 = [a1 isPaid];
    v8 = *v2;
    v9 = [objc_msgSend(a1 sourceChannel)];
    swift_unknownObjectRelease();
    if (!v9)
    {
      sub_1D726207C();
      v9 = sub_1D726203C();
    }

    v10 = [v8 containsTagID_];

    result = [v8 isSubscribed];
    if (v10)
    {
      v6 = (v7 | result) & 1;
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v6;
  return result;
}

uint64_t FeedContext.premiumBadge(forIssue:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = type metadata accessor for FeedContext(0);
  if (*(v2 + *(result + 36)) & 1) != 0 || (v7 = result, result = [a1 isPaid], result) && (*(v2 + *(v7 + 32)))
  {
    v6 = 1;
  }

  else
  {
    result = [a1 isPaid];
    if ((result & 1) != 0 || (*(v2 + *(v7 + 28)) & 1) == 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }
  }

  *a2 = v6;
  return result;
}

unint64_t sub_1D61A0208()
{
  result = qword_1EC884BF8;
  if (!qword_1EC884BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BF8);
  }

  return result;
}

uint64_t sub_1D61A025C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D61A02CC(void *a1)
{
  v3 = v1;
  sub_1D61A55C4(0, &qword_1EC884CB0, sub_1D61A5570, &type metadata for A12_V8.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61A5570();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D61A562C(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D61A0514(uint64_t a1)
{
  v2 = sub_1D61A5570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61A0550(uint64_t a1)
{
  v2 = sub_1D61A5570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D61A058C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D61A52D0(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D61A05EC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D61A4F54();

  return sub_1D725A24C();
}

uint64_t sub_1D61A0668@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D61A55C4(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D61A0724(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v119 = a2;
  v136 = a1;
  v108 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v120 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v123 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v118 = &v107 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v124 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v121 = &v107 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for GroupLayoutContext(0);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v23);
  v117 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v107 - v27;
  v113 = &v107 - v27;
  v122 = type metadata accessor for GroupLayoutBindingContext(0);
  v29 = *(v122 - 1);
  MEMORY[0x1EEE9AC00](v122, v30);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v112 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v136, v32, type metadata accessor for GroupLayoutBindingContext);
  v114 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v119, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v111 = sub_1D725893C();
  v110 = v35;
  (*(v19 + 8))(v22, v18);
  v134 = &type metadata for A12_V8;
  v36 = sub_1D5ECE8C8();
  v135 = v36;
  LOBYTE(v132) = v33;
  *(&v132 + 1) = v34;
  v133 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v125[0] = sub_1D7264C5C();
  v125[1] = v39;
  v130 = 95;
  v131 = 0xE100000000000000;
  v128 = 45;
  v129 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v117;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v110;
  *v44 = v111;
  v44[1] = v45;
  sub_1D5B68374(&v132, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v122);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v113, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v115 + 56);
  v115 = v37;
  v48(v37 + v47, 0, 1, v116);
  __swift_destroy_boxed_opaque_existential_1(&v132);
  v134 = &type metadata for A12_V8;
  v135 = v36;
  LOBYTE(v132) = v112;
  v49 = v38;
  *(&v132 + 1) = v38;
  v133 = v5;
  sub_1D5BE3ED8(v119, v43, v114);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v119 = v50;
  inited = swift_initStackObject();
  v52 = MEMORY[0x1E69E7CC0];
  v116 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v53 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v54 = sub_1D5C0F8FC(0, 1, 1, v52);
  v56 = *(v54 + 16);
  v55 = *(v54 + 24);
  v57 = (v56 + 1);
  if (v56 >= v55 >> 1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    *(v54 + 16) = v57;
    v58 = v54 + 16 * v56;
    *(v58 + 32) = sub_1D63106DC;
    *(v58 + 40) = 0;
    *v53 = v54;
    swift_endAccess();
    v56 = v122[14];
    v59 = v136;
    v60 = *&v136[v56];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v57 = sub_1D5C14D80(v63), , v57))
    {
      v114 = v56;
      v52 = *(v57 + 2);
      if (v52)
      {
        v43 = 0;
        v56 = MEMORY[0x1E69E7CC0];
        v53 = v120;
        v54 = v121;
        while (1)
        {
          v55 = *(v57 + 2);
          if (v43 >= v55)
          {
            break;
          }

          v64 = (*(v53 + 80) + 32) & ~*(v53 + 80);
          v42 = *(v53 + 72);
          sub_1D5BE3ED8(&v57[v64 + v42 * v43], v54, type metadata accessor for FeedHeadline);
          if ((*(v54 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v54, v124, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v125[0] = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v56 + 16) + 1, 1);
              v53 = v120;
              v56 = v125[0];
            }

            v37 = *(v56 + 16);
            v66 = *(v56 + 24);
            if (v37 >= v66 >> 1)
            {
              sub_1D5C0F91C((v66 > 1), v37 + 1, 1);
              v53 = v120;
              v56 = v125[0];
            }

            *(v56 + 16) = v37 + 1;
            sub_1D5BDA904(v124, v56 + v64 + v37 * v42, type metadata accessor for FeedHeadline);
            v54 = v121;
          }

          else
          {
            sub_1D5BE780C(v54, type metadata accessor for FeedHeadline);
          }

          if (v52 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_68;
      }

      v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v59 = v136;
      if ((*v136 & 1) == 0)
      {

        sub_1D62F071C(v56);
        v71 = v70;

        v56 = v71;
      }

      v43 = v117;
      v52 = MEMORY[0x1E69E7CC0];
      v72 = *&v59[v122[18]];
      v73 = *&v59[v122[19]];
      if (__OFSUB__(v72, v73))
      {
        __break(1u);
        goto LABEL_73;
      }

      v74 = sub_1D5C0FAD4(v56, v72 - v73);
      v42 = sub_1D5C11E10(&unk_1F5112198, v74, v57);

      if (v42)
      {
      }

      else
      {
        v42 = sub_1D5C11E10(&unk_1F5112198, v56, v57);

        if (!v42)
        {
          v125[0] = &unk_1F5112198;
          v4 = v109;
          sub_1D5E239F4(v125);
          if (v4)
          {
            goto LABEL_77;
          }

          if (!*(v125[0] + 2))
          {
            goto LABEL_75;
          }

          v103 = *(v125[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v104, "FeedHeadline");
          v104[13] = 0;
          *(v104 + 7) = -5120;
          *(v104 + 2) = 0;
          *(v104 + 3) = 0;
          *(v104 + 4) = 4;
          *(v104 + 5) = v103;
          *(v104 + 6) = 0;
          *(v104 + 7) = 0;
          v104[64] = 0;
          swift_willThrow();
          goto LABEL_66;
        }
      }

      strcpy(v125, "FeedHeadline");
      BYTE5(v125[1]) = 0;
      HIWORD(v125[1]) = -5120;
      v126 = 0;
      v127 = 0;

      v76 = sub_1D5C107C4(v75);

      sub_1D5BDACA8(v125, v76);
      swift_setDeallocating();

      v56 = v114;
    }

    else
    {
      if (qword_1F51121B8)
      {
        v125[0] = &unk_1F5112198;
        v4 = v109;
        sub_1D5E239F4(v125);
        if (v4)
        {
          goto LABEL_77;
        }

        v67 = *(v125[0] + 2);
        if (v67)
        {
          v68 = *(v125[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v69, "FeedHeadline");
          v69[13] = 0;
          *(v69 + 7) = -5120;
          *(v69 + 2) = 0;
          *(v69 + 3) = 0;
          *(v69 + 4) = 4;
          *(v69 + 5) = v68;
          *(v69 + 6) = 0;
          *(v69 + 7) = 0;
          v69[64] = 0;
          swift_willThrow();
LABEL_48:

          sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
          __swift_destroy_boxed_opaque_existential_1(&v132);
          return;
        }

        __break(1u);
LABEL_71:
        v57 = sub_1D5C0F8FC((v67 > 1), v37, 1, v57);
        goto LABEL_30;
      }

      v42 = MEMORY[0x1E69E7CC0];
    }

    v77 = swift_initStackObject();
    v124 = v77;
    *(v77 + 16) = v52;
    v60 = (v77 + 16);
    swift_beginAccess();
    v57 = sub_1D5C0F8FC(0, 1, 1, v52);
    v54 = *(v57 + 2);
    v67 = *(v57 + 3);
    v37 = v54 + 1;
    if (v54 >= v67 >> 1)
    {
      goto LABEL_71;
    }

LABEL_30:
    *(v57 + 2) = v37;
    v78 = &v57[16 * v54];
    *(v78 + 4) = sub_1D63106DC;
    *(v78 + 5) = 0;
    *v60 = v57;
    swift_endAccess();
    if (!*(*&v59[v56] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v79 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v80);

    if (!v37)
    {
      break;
    }

    v121 = v42;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v57 = MEMORY[0x1E69E7CC0];
LABEL_51:
      if ((*v59 & 1) == 0)
      {

        sub_1D62F071C(v57);
        v89 = v88;

        v57 = v89;
      }

      v42 = v121;
      v90 = *&v59[v122[18]];
      v91 = *&v59[v122[19]];
      if (__OFSUB__(v90, v91))
      {
        goto LABEL_74;
      }

      v92 = sub_1D5C0FAD4(v57, v90 - v91);
      v93 = sub_1D5C11E10(&unk_1F51121C0, v92, v37);

      if (v93)
      {

        strcpy(v125, "FeedHeadline");
        BYTE5(v125[1]) = 0;
        HIWORD(v125[1]) = -5120;
        v126 = 0;
        v127 = 0;

        v95 = sub_1D5C107C4(v94);

        sub_1D5BDACA8(v125, v95);
        swift_setDeallocating();

        v87 = v93;
LABEL_58:
        v43 = v117;
        goto LABEL_59;
      }

      v96 = sub_1D5C11E10(&unk_1F51121C0, v57, v37);

      if (v96)
      {
        strcpy(v125, "FeedHeadline");
        BYTE5(v125[1]) = 0;
        HIWORD(v125[1]) = -5120;
        v126 = 0;
        v127 = 0;

        v98 = sub_1D5C107C4(v97);

        sub_1D5BDACA8(v125, v98);
        swift_setDeallocating();

        v87 = v96;
        goto LABEL_58;
      }

      v125[0] = &unk_1F51121C0;
      v4 = v109;
      sub_1D5E239F4(v125);
      if (v4)
      {
        goto LABEL_77;
      }

      v43 = v117;
      if (!*(v125[0] + 2))
      {
        goto LABEL_76;
      }

      v105 = *(v125[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v106, "FeedHeadline");
      v106[13] = 0;
      *(v106 + 7) = -5120;
      *(v106 + 2) = 0;
      *(v106 + 3) = 0;
      *(v106 + 4) = 0;
      *(v106 + 5) = v105;
      *(v106 + 6) = 0;
      *(v106 + 7) = 0;
      v106[64] = 0;
      swift_willThrow();
LABEL_66:
      swift_setDeallocating();
      goto LABEL_48;
    }

    v42 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v53 = v120;
    while (1)
    {
      v55 = *(v37 + 16);
      if (v42 >= v55)
      {
        break;
      }

      v81 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v52 = *(v53 + 72);
      v82 = v118;
      sub_1D5BE3ED8(v37 + v81 + v52 * v42, v118, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v82, v123, type metadata accessor for FeedHeadline);
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v125[0] = v57;
      if ((v83 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v57 + 2) + 1, 1);
        v53 = v120;
        v57 = v125[0];
      }

      v54 = *(v57 + 2);
      v84 = *(v57 + 3);
      v56 = v54 + 1;
      if (v54 >= v84 >> 1)
      {
        sub_1D5C0F91C((v84 > 1), v54 + 1, 1);
        v53 = v120;
        v57 = v125[0];
      }

      ++v42;
      *(v57 + 2) = v56;
      sub_1D5BDA904(v123, &v57[v81 + v54 * v52], type metadata accessor for FeedHeadline);
      v59 = v136;
      if (v43 == v42)
      {
        goto LABEL_51;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    v54 = sub_1D5C0F8FC((v55 > 1), v57, 1, v54);
  }

  if (!qword_1F51121E0 || !qword_1F51121E8 || !qword_1F51121F0)
  {

    v87 = MEMORY[0x1E69E7CC0];
LABEL_59:
    v125[0] = v42;
    sub_1D5C122E4(v87);
    v99 = v125[0];
    v100 = type metadata accessor for A12_V8.Bound(0);
    v101 = v108;
    v108[3] = v100;
    v101[4] = sub_1D61A562C(&qword_1EC884C10, type metadata accessor for A12_V8.Bound, &unk_1D72AAF0C);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
    *boxed_opaque_existential_1 = v115;
    sub_1D5B63F14(&v132, (boxed_opaque_existential_1 + 1));
    sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v100 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v100 + 28)) = v99;
    return;
  }

  v125[0] = &unk_1F51121C0;
  v4 = v109;
  sub_1D5E239F4(v125);
  if (!v4)
  {

    if (*(v125[0] + 2))
    {
      v85 = *(v125[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v86, "FeedHeadline");
      v86[13] = 0;
      *(v86 + 7) = -5120;
      *(v86 + 2) = 0;
      *(v86 + 3) = 0;
      *(v86 + 4) = 0;
      *(v86 + 5) = v85;
      *(v86 + 6) = 0;
      *(v86 + 7) = 0;
      v86[64] = 0;
      swift_willThrow();
      goto LABEL_48;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

LABEL_77:

  __break(1u);
}

void sub_1D61A1968(_BYTE *a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  *&v42 = sub_1D725A36C();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V8.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v49);
  sub_1D5B68374(v12 + 56, v48);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v49, v15 + 16);
  sub_1D5B63F14(v48, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v47[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v47, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  __swift_destroy_boxed_opaque_existential_1((v15 + 56));
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v48);
  sub_1D5B68374(v16 + 56, v47);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v48, v18 + 16);
  sub_1D5B63F14(v47, v18 + 56);
  *(v18 + 96) = v17;
  v46[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v46, v49);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v49, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v49[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v49[0];
  v43 = v2;
  v45[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D61A4EF0, v45);

  v23 = *(v22 + 16);
  if (v23)
  {
    v37 = (2 * v23) | 1;
    if (v23 >= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = *(v22 + 16);
    }

    v39 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    sub_1D5EC2DC4(v22, v22 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v38, v37);
    v24 = v40;
  }

  else
  {

    v24 = v22;
  }

  *&v49[0] = v24;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D60DF67C(&qword_1EC880610, MEMORY[0x1E69E6340]);
  sub_1D7262C1C();

  v25 = *MEMORY[0x1E69D7130];
  v26 = sub_1D7259D1C();
  (*(*(v26 - 8) + 104))(v6, v25, v26);
  v27 = (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v42);
  MEMORY[0x1EEE9AC00](v27, v28);
  sub_1D61A4FFC(0, &qword_1EC884C30, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v29 = v50;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D60DF67C(&qword_1EDF1B248, MEMORY[0x1E69E6328]);
  v30 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v41 = v49[1];
  v42 = v49[0];
  *&v49[0] = v22;
  *&v48[0] = v29;
  MEMORY[0x1EEE9AC00](v30, v31);

  v32 = sub_1D725C00C();

  v33 = v44;
  *v44 = 0;
  v34 = v42;
  *(v33 + 24) = v41;
  *(v33 + 8) = v34;
  *&v49[0] = v32;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v35 = sub_1D72623BC();

  v36 = MEMORY[0x1E69E7CC0];
  *(v33 + 5) = v35;
  *(v33 + 6) = v36;
}

uint64_t sub_1D61A1FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D61A2094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16[-v10];
  v19 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D61A4FFC(0, &qword_1EC884C50, MEMORY[0x1E69D7150]);
  sub_1D61A4FB8(&qword_1EC884C58, &qword_1EC884C50, v13, MEMORY[0x1E69D7158], v14);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D61A2284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v71 = a2;
  v59 = sub_1D61A4F00;
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v57 - v8);
  v75 = a1;
  v10 = a1;
  v58 = a1;
  v11 = sub_1D725994C();
  v62 = v11;
  v12 = swift_allocBox();
  v68 = *MEMORY[0x1E69D6F50];
  v13 = *(v11 - 8);
  v14 = *(v13 + 104);
  v66 = v13 + 104;
  v67 = v14;
  v14(v15);
  *v9 = v12;
  v65 = *MEMORY[0x1E69D73C0];
  v16 = *(v6 + 104);
  v16(v9);
  v17 = v6 + 104;
  v18 = v16;
  v19 = MEMORY[0x1E69D6F38];
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  v21 = v20;
  v69 = sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v19, MEMORY[0x1E69D6F40], v22);
  v23 = v21;
  sub_1D7259A9C();
  v24 = *(v6 + 8);
  v64 = v6 + 8;
  v24(v9, v5);
  v25 = v24;
  v75 = v10;
  sub_1D60DF7C0(0);
  v27 = v26;
  v28 = swift_allocBox();
  v30 = v29;
  v31 = *(v27 + 48);
  *v29 = 7;
  v32 = *MEMORY[0x1E69D7348];
  v33 = sub_1D725A34C();
  (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
  *v9 = v28;
  (v18)(v9, *MEMORY[0x1E69D73E0], v5);
  v74 = v71;
  v63 = v23;
  sub_1D72599EC();
  v72 = v25;
  v25(v9, v5);
  v34 = v58;
  v75 = v58;
  v35 = v62;
  v36 = swift_allocBox();
  v67(v37, v68, v35);
  *v9 = v36;
  (v18)(v9, v65, v5);
  sub_1D7259A9C();
  v25(v9, v5);
  v38 = v34;
  v75 = v34;
  v39 = *MEMORY[0x1E69D74A8];
  v61 = v17;
  v60 = v18;
  (v18)(v9, v39, v5);
  sub_1D61A5088(0);
  sub_1D61A55C4(0, &qword_1EC884C78, v59, &type metadata for A12_V8.Layout, MEMORY[0x1E69D70D8]);
  v41 = v40;
  v42 = *(v40 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1D7273AE0;
  v45 = v41;
  v46 = v72;
  (*(v42 + 104))(v44 + v43, *MEMORY[0x1E69D7098], v45);
  v73 = v71;
  sub_1D72599EC();

  result = v46(v9, v5);
  v48 = *(v70 + 16);
  if (v48)
  {
    v49 = (v70 + 32);
    LODWORD(v59) = *MEMORY[0x1E69D7460];
    do
    {
      v50 = *v49++;
      v70 = v50;
      v71 = v48;
      v75 = v38;
      v51 = swift_allocBox();
      v67(v52, v68, v35);
      *v9 = v51;
      v53 = v60;
      (v60)(v9, v65, v5);

      sub_1D7259A9C();
      v72(v9, v5);
      v75 = v38;
      v54 = (v53)(v9, v59, v5);
      MEMORY[0x1EEE9AC00](v54, v55);
      v56 = v72;
      sub_1D72599EC();

      v35 = v62;
      result = v56(v9, v5);
      v48 = v71 - 1;
    }

    while (v71 != 1);
  }

  return result;
}

uint64_t sub_1D61A2970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadlineViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v28 - v17;
  v28[1] = a1;
  swift_getKeyPath();
  result = (*(v15 + 104))(v18, *MEMORY[0x1E69D7460], v14);
  if (*(a2 + 16))
  {
    sub_1D5BE3ED8(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for HeadlineViewLayout.Context);
    v28[0] = v14;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v23 + 56))(&v7[v20], 0, 1, v22);
    v24 = *MEMORY[0x1E69DDC70];
    *v7 = 1;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v24;
    v25 = v24;
    sub_1D61F750C(v12, v7);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE780C(v12, type metadata accessor for HeadlineViewLayout.Context);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
    sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v26, MEMORY[0x1E69D6F40], v27);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v15 + 8))(v18, v28[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D61A2D4C(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = a1;
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v20 - v8);
  v27 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 4;
  *v9 = v10;
  v23 = *MEMORY[0x1E69D7490];
  v11 = *(v6 + 104);
  v11(v9);
  v20 = v11;
  v26 = a2;
  v12 = MEMORY[0x1E69D6F38];
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v12, MEMORY[0x1E69D6F40], v13);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v15 = v22;
  v27 = v22;
  v16 = swift_allocObject();
  *(v16 + 16) = 4;
  *v9 = v16;
  (v11)(v9, v23, v5);
  v17 = v21;
  v25 = v21;
  sub_1D7259A2C();
  v14(v9, v5);
  v27 = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = 4;
  *v9 = v18;
  (v20)(v9, v23, v5);
  v24 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D61A308C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v42 - v24;
  v49 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v42 = KeyPath;
  v43 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v42 - 4) = v19;
  *(&v42 - 3) = v14;
  v41 = v10;
  (*(v44 + 104))(v46, *MEMORY[0x1E69D7378], v45, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v47 + 8))(v10, v48);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v38, MEMORY[0x1E69D6F40], v39);
  v41 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v43);
}

uint64_t sub_1D61A3660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v42 - v24;
  v49 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v42 = KeyPath;
  v43 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v42 - 4) = v19;
  *(&v42 - 3) = v14;
  v41 = v10;
  (*(v44 + 104))(v46, *MEMORY[0x1E69D7378], v45, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v47 + 8))(v10, v48);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v38, MEMORY[0x1E69D6F40], v39);
  v41 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v43);
}

uint64_t sub_1D61A3C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v42 - v24;
  v49 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 4uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v42 = KeyPath;
  v43 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 3 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v42 - 4) = v19;
  *(&v42 - 3) = v14;
  v41 = v10;
  (*(v44 + 104))(v46, *MEMORY[0x1E69D7378], v45, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v47 + 8))(v10, v48);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v38, MEMORY[0x1E69D6F40], v39);
  v41 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v43);
}

uint64_t sub_1D61A420C(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v18 - v8);
  v22 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v21 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v13, MEMORY[0x1E69D6F40], v14);
  sub_1D7259A2C();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v22 = v19;
  v16 = swift_allocObject();
  *(v16 + 16) = 6;
  *v9 = v16;
  v12(v9, v11, v5);
  v20 = v18;
  sub_1D7259A2C();
  return (v15)(v9, v5);
}

uint64_t sub_1D61A44B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v31 - v12);
  v34 = a1;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16))
  {
    v16 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = v4[5];
    v19 = *MEMORY[0x1E69D7348];
    v20 = sub_1D725A34C();
    v21 = *(v20 - 8);
    v32 = v9;
    v22 = v21;
    (*(v21 + 104))(&v7[v18], v19, v20);
    (*(v22 + 56))(&v7[v18], 0, 1, v20);
    v23 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v23;
    v24 = *MEMORY[0x1E69DDCE0];
    v25 = *(MEMORY[0x1E69DDCE0] + 8);
    v26 = *(MEMORY[0x1E69DDCE0] + 16);
    v27 = *(MEMORY[0x1E69DDCE0] + 24);
    v28 = v23;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(a2 + v17, v7, v24, v25, v26, v27);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v29 = MEMORY[0x1E69D6F38];
    sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
    sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v29, MEMORY[0x1E69D6F40], v30);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D61A4860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v33 - v12);
  v35 = a1;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = 0x4060E00000000000;
  *v13 = v15;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v17 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = a2 + *(v17 + 72);
    v33[1] = KeyPath;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    v34 = v9;
    v24 = v23;
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v24 + 56))(&v7[v20], 0, 1, v22);
    v25 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v25;
    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    v30 = v25;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v19 + v18, v7, v26, v27, v28, v29);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v31 = MEMORY[0x1E69D6F38];
    sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
    sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v31, MEMORY[0x1E69D6F40], v32);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v34);
  }

  return result;
}

uint64_t sub_1D61A4C38@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V8.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D61A4D4C(uint64_t a1)
{
  *(a1 + 8) = sub_1D61A4D7C();
  result = sub_1D61A4DD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D61A4D7C()
{
  result = qword_1EC884C00;
  if (!qword_1EC884C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C00);
  }

  return result;
}

unint64_t sub_1D61A4DD0()
{
  result = qword_1EC884C08;
  if (!qword_1EC884C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C08);
  }

  return result;
}

uint64_t type metadata accessor for A12_V8.Bound(uint64_t a1)
{
  result = qword_1EC884C18;
  if (!qword_1EC884C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D61A4E98(uint64_t a1)
{
  result = sub_1D61A562C(&qword_1EC884C28, type metadata accessor for A12_V8.Bound, &unk_1D72AAEE4);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61A4F00()
{
  result = qword_1EC884C38;
  if (!qword_1EC884C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C38);
  }

  return result;
}

unint64_t sub_1D61A4F54()
{
  result = qword_1EC884C40;
  if (!qword_1EC884C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C40);
  }

  return result;
}

uint64_t sub_1D61A4FB8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_1D61A4FFC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D61A4FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V8.Layout;
    v8[1] = &type metadata for A12_V8.Layout.Attributes;
    v8[2] = sub_1D61A4F00();
    v8[3] = sub_1D61A4F54();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D61A5088(uint64_t a1)
{
  if (!qword_1EC884C70)
  {
    sub_1D61A55C4(255, &qword_1EC884C78, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884C70);
    }
  }
}

unint64_t sub_1D61A5174()
{
  result = qword_1EC884C80;
  if (!qword_1EC884C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C80);
  }

  return result;
}

unint64_t sub_1D61A51CC()
{
  result = qword_1EC884C88;
  if (!qword_1EC884C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C88);
  }

  return result;
}

unint64_t sub_1D61A5224()
{
  result = qword_1EC884C90;
  if (!qword_1EC884C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C90);
  }

  return result;
}

unint64_t sub_1D61A527C()
{
  result = qword_1EC884C98;
  if (!qword_1EC884C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C98);
  }

  return result;
}

uint64_t sub_1D61A52D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D61A55C4(0, &qword_1EC884CA0, sub_1D61A5570, &type metadata for A12_V8.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61A5570();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D61A562C(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D61A5570()
{
  result = qword_1EC884CA8;
  if (!qword_1EC884CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CA8);
  }

  return result;
}

void sub_1D61A55C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D61A562C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D61A5688()
{
  result = qword_1EC884CB8;
  if (!qword_1EC884CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CB8);
  }

  return result;
}

unint64_t sub_1D61A56E0()
{
  result = qword_1EC884CC0;
  if (!qword_1EC884CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CC0);
  }

  return result;
}

unint64_t sub_1D61A5738()
{
  result = qword_1EC884CC8;
  if (!qword_1EC884CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CC8);
  }

  return result;
}

uint64_t sub_1D61A578C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1D7264C5C();
  *a4 = result;
  a4[1] = v8;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

uint64_t sub_1D61A57CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1D7264C5C();
  v12 = v11;
  result = (*(*(a4 - 8) + 8))(a1, a4);
  *a5 = v10;
  a5[1] = v12;
  a5[2] = a2;
  a5[3] = a3;
  return result;
}

uint64_t static GroupLayoutBindingKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D72646CC(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1D72646CC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t GroupLayoutBindingKey.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1D72621EC();
  if (!v2)
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();

  return sub_1D72621EC();
}

uint64_t GroupLayoutBindingKey.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (v1)
  {
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D61A5A08()
{
  v1 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (v1)
  {
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D61A5A94(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1D72621EC();
  if (!v2)
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();

  return sub_1D72621EC();
}

uint64_t sub_1D61A5B10(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (v2)
  {
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t GroupLayoutBindingKey.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](v1, v2);
    MEMORY[0x1DA6F9910](0x3D656D616E202CLL, 0xE700000000000000);
    v5 = v4;
    v6 = v3;
  }

  else
  {
    v5 = *v0;
    v6 = v0[1];
  }

  MEMORY[0x1DA6F9910](v5, v6);
  MEMORY[0x1DA6F9910](125, 0xE100000000000000);
  return 0x3D657079747BLL;
}

uint64_t FormatPackageDirection.description.getter()
{
  if (*v0 == 4)
  {
    return 0x6C61636974726576;
  }

  MEMORY[0x1DA6F9910](0x746E6F7A69726F68, 0xEB000000002D6C61);
  sub_1D7263F9C();
  return 0;
}

uint64_t FormatPackageDirection.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v33 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    v12 = sub_1D72646FC();
    v26 = v12;
    v27 = v13;
    v28 = v12 == 0x746E6F7A69726F68 && v13 == 0xEA00000000006C61;
    if (v28 || (sub_1D72646CC() & 1) != 0)
    {

      v29 = 2;
    }

    else
    {
      if ((v26 != 0x6C61636974726576 || v27 != 0xE800000000000000) && (sub_1D72646CC() & 1) == 0)
      {
        v11 = a2;
        sub_1D5E2D970();
        v3 = swift_allocError();
        *v31 = v26;
        v31[1] = v27;
        v31[2] = 0;
        v31[3] = 0;
        v31[4] = 0x7000000000000000;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(&v34);
        goto LABEL_4;
      }

      v29 = 4;
    }

    __swift_destroy_boxed_opaque_existential_1(&v34);
    goto LABEL_24;
  }

  v11 = a2;
LABEL_4:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  a2 = v11;
  v16 = v7;
  v17 = v33;
  if (v15)
  {
    v18 = sub_1D726433C();
    v19 = (v18 + 40);
    v20 = *(v18 + 16) + 1;
    while (--v20)
    {
      v21 = v19 + 2;
      v22 = *v19;
      v19 += 2;
      if (v22 >= 4)
      {
        v23 = *(v21 - 3);

        sub_1D5E2D970();
        v24 = swift_allocError();
        *v25 = v23;
        *(v25 + 8) = v22;
        *(v25 + 16) = &unk_1F51121F8;
        *(v25 + 24) = xmmword_1D72874E0;
        swift_willThrow();

        (*(v16 + 8))(v10, v17);
        sub_1D61E4FBC(a1, v24);
        swift_willThrow();

        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }
  }

  sub_1D61A6FD4();
  v34 = 0uLL;
  sub_1D726431C();
  if (v36)
  {
    (*(v16 + 8))(v10, v17);

    v29 = 4;
  }

  else
  {
    v34 = xmmword_1D7279980;
    sub_1D61A7028();
    sub_1D726427C();
    (*(v16 + 8))(v10, v17);

    if (v36 == 4)
    {
      v29 = 2;
    }

    else
    {
      v29 = v36;
    }
  }

LABEL_24:
  *a2 = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPackageDirection.encode(to:)(void *a1)
{
  sub_1D5D30DC4(0);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v67 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v65 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v68 = v62 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = v62 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v64 = v62 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v62 - v20;
  LODWORD(v70) = *v1;
  v23 = a1[3];
  v22 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCCE8);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v28 = v26 + 16;
  v27(v21, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v29 = v71;
  sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v23, v22);
  if (v29)
  {
    v30 = type metadata accessor for FormatVersionRequirement;
    v31 = v21;
    return sub_1D5D2CF28(v31, v30);
  }

  v62[1] = v28;
  sub_1D5D2CF28(v21, type metadata accessor for FormatVersionRequirement);
  v33 = v69;
  v34 = v69[3];
  *&v71 = v69[4];
  __swift_project_boxed_opaque_existential_1(v69, v34);
  if (v70 == 4)
  {
    v36 = v65;
    v27(v65, v25, v24);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v36, sub_1D5B4AA6C, 0, v34, v71);
    sub_1D5D2CF28(v36, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    sub_1D7264B3C();
    v74 = 1;
  }

  else
  {
    if (v70 != 2)
    {
      sub_1D5C30408();
      v37 = v67;
      sub_1D71B5B30(&type metadata for FormatCodingKeys, v38, v34, &type metadata for FormatVersions.CrystalGlow, v71, &off_1F51F6B38, v67);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v24, qword_1EDFFCE68);
      v40 = v66;
      v27(v66, v39, v24);
      swift_storeEnumTagMultiPayload();
      sub_1D641DA48(0, v40);
      sub_1D5D2CF28(v40, type metadata accessor for FormatVersionRequirement);
      v27(v68, v39, v24);
      swift_storeEnumTagMultiPayload();
      v74 = v70;
      v71 = xmmword_1D7279980;
      v72 = xmmword_1D7279980;
      v41 = v63;
      v42 = (v37 + *(v63 + 44));
      v44 = *v42;
      v43 = v42[1];
      v45 = swift_allocObject();
      v70 = v62;
      *(v45 + 16) = v71;
      *(v45 + 32) = v44;
      *(v45 + 40) = v43;
      MEMORY[0x1EEE9AC00](v45, v46);
      v62[-4] = sub_1D5B4AA6C;
      v62[-3] = 0;
      v62[-2] = sub_1D61A739C;
      v62[-1] = v47;
      v48 = swift_allocObject();
      *(v48 + 16) = v71;
      *(v48 + 32) = v44;
      *(v48 + 40) = v43;
      sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
      v50 = v49;
      sub_1D5D30E44();
      swift_retain_n();
      v69 = v50;
      v51 = sub_1D72647CC();
      v52 = swift_allocObject();
      *(v52 + 16) = v51;
      *(v52 + 24) = v71;
      v53 = (v37 + *(v41 + 36));
      v54 = v53[3];
      v55 = v53[4];
      v56 = __swift_project_boxed_opaque_existential_1(v53, v54);
      MEMORY[0x1EEE9AC00](v56, v57);
      v62[-2] = sub_1D61A70E0;
      v62[-1] = v52;
      MEMORY[0x1EEE9AC00](v58, v59);
      v62[-4] = sub_1D60565EC;
      v62[-3] = &v62[-6];
      v60 = v68;
      v62[-2] = sub_1D61A70D0;
      v62[-1] = v48;
      sub_1D5D2BC70(v60, sub_1D60566B0, v61, sub_1D60565EC, &v62[-6], v54, v55);

      sub_1D61A70EC();
      sub_1D72647EC();
      sub_1D5D2CF28(v60, type metadata accessor for FormatVersionRequirement);

      v30 = sub_1D5D30DC4;
      v31 = v37;
      return sub_1D5D2CF28(v31, v30);
    }

    v35 = v64;
    v27(v64, v25, v24);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v35, sub_1D5B4AA6C, 0, v34, v71);
    sub_1D5D2CF28(v35, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    sub_1D7264B3C();
    v74 = 0;
  }

  __swift_mutable_project_boxed_opaque_existential_1(&v72, v73);
  sub_1D61A707C();
  sub_1D726476C();
  return __swift_destroy_boxed_opaque_existential_1(&v72);
}

uint64_t sub_1D61A6A8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61636974726576;
  }

  else
  {
    v3 = 0x746E6F7A69726F68;
  }

  if (v2)
  {
    v4 = 0xEA00000000006C61;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61636974726576;
  }

  else
  {
    v5 = 0x746E6F7A69726F68;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D61A6B38()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D61A6BC0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D61A6C34(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D61A6CB8(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

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

void sub_1D61A6D18(uint64_t *a1@<X8>)
{
  v2 = 0x746E6F7A69726F68;
  if (*v1)
  {
    v2 = 0x6C61636974726576;
  }

  v3 = 0xEA00000000006C61;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL static FormatPackageDirection.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_1D61A6E48()
{
  if (*v0 == 4)
  {
    return 0x6C61636974726576;
  }

  MEMORY[0x1DA6F9910](0x746E6F7A69726F68, 0xEB000000002D6C61);
  sub_1D7263F9C();
  return 0;
}

uint64_t sub_1D61A6F40(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1D5D290FC(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatCodingKeys;
  *(inited + 64) = sub_1D5C30408();
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  sub_1D5C30618(v3, v4);

  sub_1D5D291B8(inited);
  return a1;
}

unint64_t sub_1D61A6FD4()
{
  result = qword_1EDF0DA80;
  if (!qword_1EDF0DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA80);
  }

  return result;
}

unint64_t sub_1D61A7028()
{
  result = qword_1EDF081A8;
  if (!qword_1EDF081A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF081A8);
  }

  return result;
}

unint64_t sub_1D61A707C()
{
  result = qword_1EDF0DA90;
  if (!qword_1EDF0DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA90);
  }

  return result;
}

unint64_t sub_1D61A70EC()
{
  result = qword_1EDF081B0;
  if (!qword_1EDF081B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF081B0);
  }

  return result;
}

unint64_t sub_1D61A7140(void *a1)
{
  a1[1] = sub_1D5C2B7DC();
  a1[2] = sub_1D61A7178();
  result = sub_1D61A71CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61A7178()
{
  result = qword_1EDF0DA78;
  if (!qword_1EDF0DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA78);
  }

  return result;
}

unint64_t sub_1D61A71CC()
{
  result = qword_1EC884CD0;
  if (!qword_1EC884CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatPackageDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D61A72BC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D61A72D0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_1D61A72F4()
{
  result = qword_1EC884CD8;
  if (!qword_1EC884CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CD8);
  }

  return result;
}

unint64_t sub_1D61A7348()
{
  result = qword_1EDF0DA88;
  if (!qword_1EDF0DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA88);
  }

  return result;
}

uint64_t sub_1D61A73A0()
{
  v1 = *(v0 + 48);
  type metadata accessor for FormatVariableCollection();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for FormatOptionCollection();
  swift_allocObject();
  v3 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v2);
  type metadata accessor for FormatContextLayoutOptions();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  *(result + 32) = 0x3FF0000000000000;
  *(result + 40) = v3;
  v5 = MEMORY[0x1E69E7CD0];
  *(result + 48) = 0;
  *(result + 56) = v5;
  return result;
}

uint64_t sub_1D61A7448()
{
  type metadata accessor for FormatLayoutError(0);
  sub_1D5D285FC();
  swift_allocError();
  *v0 = 0xD00000000000005DLL;
  v0[1] = 0x80000001D73C3880;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D61A74C8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FormatOption(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D61A754C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D61A7594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D61A7618(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v49[6] = *(a1 + 96);
  v49[7] = v3;
  v49[8] = *(a1 + 128);
  v50 = *(a1 + 144);
  v4 = *(a1 + 48);
  v49[2] = *(a1 + 32);
  v49[3] = v4;
  v5 = *(a1 + 80);
  v49[4] = *(a1 + 64);
  v49[5] = v5;
  v6 = *(a1 + 16);
  v49[0] = *a1;
  v49[1] = v6;
  sub_1D5B56150(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279960;
  v37 = a2;
  sub_1D5ECF488(sub_1D61A79E4, v36, &unk_1F50F7668);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v8, v39);

  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v9 = swift_allocObject();
  *(inited + 32) = v9;
  *(v9 + 48) = v40;
  v10 = v39[1];
  *(v9 + 16) = v39[0];
  *(v9 + 32) = v10;
  v35 = a2;
  sub_1D5ECF488(sub_1D61A7A04, v34, &unk_1F50F39C8);
  sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v11, v41);

  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v12 = swift_allocObject();
  *(inited + 72) = v12;
  *(v12 + 48) = v42;
  v13 = v41[1];
  *(v12 + 16) = v41[0];
  *(v12 + 32) = v13;
  v32 = a2;
  v33 = v49;
  v14 = sub_1D5FBCF3C(sub_1D61A7A24, v31, &unk_1F50F76C0);
  sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v14, v43);

  *(inited + 136) = &type metadata for FormatInspectionGroup;
  *(inited + 144) = &off_1F518B2C0;
  v15 = swift_allocObject();
  *(inited + 112) = v15;
  *(v15 + 48) = v44;
  v16 = v43[1];
  *(v15 + 16) = v43[0];
  *(v15 + 32) = v16;
  v30 = a2;
  sub_1D7199984(sub_1D61A7A40, v29, &unk_1F50F7690);
  v18 = sub_1D5F62998(v17);

  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v18, v45);

  *(inited + 176) = &type metadata for FormatInspectionGroup;
  *(inited + 184) = &off_1F518B2C0;
  v19 = swift_allocObject();
  *(inited + 152) = v19;
  *(v19 + 48) = v46;
  v20 = v45[1];
  *(v19 + 16) = v45[0];
  *(v19 + 32) = v20;
  v28[2] = a2;
  sub_1D7199984(sub_1D61A7A5C, v28, &unk_1F50F76E8);
  v22 = sub_1D5F62998(v21);

  sub_1D6795150(0x6D69542065746144, 0xE900000000000065, 0, 0, v22, v47);

  *(inited + 216) = &type metadata for FormatInspectionGroup;
  *(inited + 224) = &off_1F518B2C0;
  v23 = swift_allocObject();
  *(inited + 192) = v23;
  *(v23 + 48) = v48;
  v24 = v47[1];
  *(v23 + 16) = v47[0];
  *(v23 + 32) = v24;
  v38 = inited;

  sub_1D6986168(v25);
  v26 = sub_1D7073500(v38);

  return v26;
}

uint64_t FeedNativeAdInsertion.nativeAd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D7260E3C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FeedNativeAdInsertion.sectionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedNativeAdInsertion(0) + 20));

  return v1;
}

uint64_t type metadata accessor for FeedNativeAdInsertion(uint64_t a1)
{
  result = qword_1EDF374E8;
  if (!qword_1EDF374E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeedNativeAdInsertion.replacing(sectionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D7260E3C();
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  v8 = (a3 + *(type metadata accessor for FeedNativeAdInsertion(0) + 20));
  *v8 = a1;
  v8[1] = a2;
}

uint64_t FeedNativeAdManager.PlacementPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FeedNativeAdManager.__allocating_init(nativeAdService:placementPolicy:)(__int128 *a1, _BYTE *a2)
{
  v4 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = swift_allocObject();
  LOBYTE(a2) = *a2;
  *(v6 + 64) = MEMORY[0x1E69E7CC0];
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v7 = sub_1D725A7AC();
  v8 = MEMORY[0x1E69E7CD0];
  *(v6 + 72) = v7;
  *(v6 + 80) = v8;
  *(v6 + 88) = 0;
  sub_1D5B63F14(a1, v6 + 16);
  *(v6 + 56) = a2;
  return v6;
}

uint64_t FeedNativeAdManager.init(nativeAdService:placementPolicy:)(__int128 *a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = *a2;
  *(v3 + 64) = MEMORY[0x1E69E7CC0];
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v9 = sub_1D725A7AC();
  v10 = MEMORY[0x1E69E7CD0];
  *(v3 + 72) = v9;
  *(v3 + 80) = v10;
  *(v3 + 88) = 0;
  sub_1D5B63F14(a1, v3 + 16);
  *(v3 + 56) = v8;
  return v3;
}

Swift::Bool __swiftcall FeedNativeAdManager.shouldFetchNativeAd(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 80);

  v5 = sub_1D5BE240C(countAndFlagsBits, object, v4);

  result = *(v1 + 56);
  if (result || *(v1 + 88))
  {
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  else if ((v5 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t FeedNativeAdManager.fetchNativeAd(for:sectionIdentifier:group:build:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  sub_1D725A76C();
  swift_beginAccess();
  v11 = *(v7 + 80);

  v12 = sub_1D5BE240C(a3, a4, v11);

  if (*(v8 + 56))
  {
    if ((v12 & 1) == 0)
    {
LABEL_3:
      swift_beginAccess();

      sub_1D5B860D0(&v21, a3, a4);
      swift_endAccess();

      *(v8 + 88) = 1;
      sub_1D725A77C();
      swift_allocObject();
      v13 = swift_weakInit();
      MEMORY[0x1EEE9AC00](v13, v14);
      sub_1D7260E3C();
      sub_1D725BDCC();

      sub_1D5B5DA7C();
      v15 = sub_1D726308C();
      v16 = swift_allocObject();
      v16[2] = a3;
      v16[3] = a4;
      v16[4] = a5;
      type metadata accessor for FeedNativeAdInsertion(0);

      v17 = a5;
      v18 = sub_1D725BAAC();

      return v18;
    }
  }

  else if (!((*(v8 + 88) != 0) | v12 & 1))
  {
    goto LABEL_3;
  }

  sub_1D725A77C();
  sub_1D61A81E8();
  swift_allocError();
  sub_1D61A9340(0, &qword_1EDF3B9A8, type metadata accessor for FeedNativeAdInsertion, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

unint64_t sub_1D61A81E8()
{
  result = qword_1EDF38048;
  if (!qword_1EDF38048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF38048);
  }

  return result;
}

uint64_t sub_1D61A823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong[5];
    v11 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v10);
    v12 = (*(v11 + 8))(a2, a3, a4, a5, v10, v11);
  }

  else
  {
    v12 = sub_1D725AA6C();
    sub_1D5C3CFB4(&unk_1EC896020, MEMORY[0x1E69D64B0], MEMORY[0x1E69D64B8]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x1E69D64A0], v12);
    swift_willThrow();
  }

  return v12;
}

double sub_1D61A83A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1D7260E3C();
  (*(*(v10 - 8) + 16))(a5, a1, v10);
  v11 = (a5 + *(type metadata accessor for FeedNativeAdInsertion(0) + 20));
  *v11 = a2;
  v11[1] = a3;

  return sub_1D61A8464(a5, a4);
}

double sub_1D61A8464(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v24 = a2;
  v2 = sub_1D7261ABC();
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D7261B2C();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedNativeAdInsertion(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  sub_1D5B5DA7C();
  v14 = sub_1D726308C();
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1D61A9214(v21, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_1D61A9278(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_1D61A92DC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_29;
  v18 = _Block_copy(aBlock);

  sub_1D7261AEC();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D5C3CFB4(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D61A9340(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D5F5D72C();
  sub_1D7263B6C();
  sub_1D726302C();
  _Block_release(v18);

  (*(v23 + 8))(v5, v2);
  (*(v6 + 8))(v9, v22);

  return result;
}

Swift::Void __swiftcall FeedNativeAdManager.nativeAdInsertionDidComplete(success:)(Swift::Bool success)
{
  sub_1D725A76C();
  if (success)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 88) = v3;
  sub_1D725A77C();
}

double sub_1D61A8854(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = *(v5 + 64);
    v15 = MEMORY[0x1E69E7CC0];
    if (v6 >> 62)
    {
      goto LABEL_21;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v7)
    {
      v14 = a2;
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6FB460](v8, v6);
          a2 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v9 = v15;
            a2 = v14;
            goto LABEL_18;
          }
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v7 = sub_1D7263BFC();
            goto LABEL_4;
          }

          a2 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_15;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
        }

        else
        {
        }

        ++v8;
        if (a2 == v7)
        {
          goto LABEL_16;
        }
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_18:

    *(v5 + 64) = v9;

    v11 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v10, v12);
    v13[2] = a2;

    sub_1D6DBDDD8(sub_1D61A93A4, v13, v11);
  }

  return result;
}

void *FeedNativeAdManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t FeedNativeAdManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D61A8B30(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  sub_1D725A76C();
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 88) = v4;
  return sub_1D725A77C();
}

uint64_t sub_1D61A8B7C()
{

  sub_1D5B87E10(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t DisabledFeedNativeAdManager.fetchNativeAd(for:sectionIdentifier:group:build:)()
{
  sub_1D61A8EC4();
  swift_allocError();
  sub_1D61A9340(0, &qword_1EDF3B9A8, type metadata accessor for FeedNativeAdInsertion, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

uint64_t DisabledFeedNativeAdManager.onFetch(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DisposableObserver();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v3 + 16) = nullsub_1;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakAssign();
  a1[3] = v2;
  result = sub_1D5C3CFB4(qword_1EDF2E610, type metadata accessor for DisposableObserver, &unk_1D72AB8E4);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1D61A8D44()
{
  sub_1D61A8EC4();
  swift_allocError();
  sub_1D61A9340(0, &qword_1EDF3B9A8, type metadata accessor for FeedNativeAdInsertion, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

uint64_t sub_1D61A8DD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DisposableObserver();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v3 + 16) = nullsub_1;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakAssign();
  a1[3] = v2;
  result = sub_1D5C3CFB4(qword_1EDF2E610, type metadata accessor for DisposableObserver, &unk_1D72AB8E4);
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1D61A8EC4()
{
  result = qword_1EC884CE0;
  if (!qword_1EC884CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CE0);
  }

  return result;
}

unint64_t sub_1D61A8F1C()
{
  result = qword_1EC884CE8;
  if (!qword_1EC884CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CE8);
  }

  return result;
}

uint64_t sub_1D61A8FDC(uint64_t a1)
{
  result = sub_1D7260E3C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D61A9110()
{
  result = qword_1EC884CF0;
  if (!qword_1EC884CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CF0);
  }

  return result;
}

unint64_t sub_1D61A9168()
{
  result = qword_1EC884CF8;
  if (!qword_1EC884CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CF8);
  }

  return result;
}

unint64_t sub_1D61A91C0()
{
  result = qword_1EC884D00;
  if (!qword_1EC884D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884D00);
  }

  return result;
}

uint64_t sub_1D61A9214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedNativeAdInsertion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61A9278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedNativeAdInsertion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1D61A92DC()
{
  v1 = *(type metadata accessor for FeedNativeAdInsertion(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D61A8854(v2, v3);
}

void sub_1D61A9340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D61A93A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(*a1 + 16);

  v3(v2);
}

uint64_t sub_1D61A9490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v38 = MEMORY[0x1E697C780];
  v39 = a3;
  v37 = MEMORY[0x1E69E6720];
  sub_1D61AB614(0, &qword_1EC884D08, MEMORY[0x1E697C780], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34 - v6;
  v8 = sub_1D7260FEC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A9A04(0, v11);
  v15 = v14;
  v16 = *(v14 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A9CBC(0, v18);
  v36 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = v35;
  sub_1D61AC220(0, &qword_1EC884D18, sub_1D61A9AC8, sub_1D5F260A0, MEMORY[0x1E697E830]);
  sub_1D61A9B9C(v26);
  sub_1D726168C();
  sub_1D7260FDC();
  v27 = sub_1D61ABEB4(&qword_1EC884D40, sub_1D61A9A04, MEMORY[0x1E697CD20]);
  sub_1D726183C();
  (*(v9 + 8))(v13, v8);
  (*(v16 + 8))(v20, v15);
  sub_1D72613DC();
  v28 = sub_1D72613EC();
  (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
  v29 = sub_1D72615FC();
  v42 = v15;
  v43 = v8;
  v44 = v27;
  v45 = MEMORY[0x1E697C0D8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v29;
  v32 = v36;
  MEMORY[0x1DA6F8EA0](v7, v31, v36, OpaqueTypeConformance2);
  sub_1D61AC074(v7, &qword_1EC884D08, v38, v37);
  return (*(v22 + 8))(v25, v32);
}

void sub_1D61A98A0(void *a2@<X1>, uint64_t a3@<X8>)
{

  v5 = a2;
  sub_1D72618EC();
  v8 = v5;
  sub_1D713197C(v5);
  sub_1D7260EDC();
  sub_1D61A9B48();
  sub_1D72617DC();

  sub_1D726185C();
  v6 = sub_1D726199C();
  sub_1D61AC220(0, &qword_1EC884D18, sub_1D61A9AC8, sub_1D5F260A0, MEMORY[0x1E697E830]);
  *(a3 + *(v7 + 36)) = v6;
}

void sub_1D61A9A04(uint64_t a1, __n128 a2)
{
  if (!qword_1EC884D10)
  {
    sub_1D61AC220(255, &qword_1EC884D18, sub_1D61A9AC8, sub_1D5F260A0, MEMORY[0x1E697E830]);
    sub_1D61A9B9C(v2);
    v3 = sub_1D726169C();
    if (!v4)
    {
      atomic_store(v3, &qword_1EC884D10);
    }
  }
}

void sub_1D61A9AC8(uint64_t a1)
{
  if (!qword_1EC884D20)
  {
    sub_1D61A9B48();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC884D20);
    }
  }
}

unint64_t sub_1D61A9B48()
{
  result = qword_1EC884D28;
  if (!qword_1EC884D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884D28);
  }

  return result;
}

unint64_t sub_1D61A9B9C(__n128 a1)
{
  result = qword_1EC884D30;
  if (!qword_1EC884D30)
  {
    sub_1D61AC220(255, &qword_1EC884D18, sub_1D61A9AC8, sub_1D5F260A0, MEMORY[0x1E697E830]);
    sub_1D61A9B48();
    swift_getOpaqueTypeConformance2();
    sub_1D61ABEB4(&qword_1EC8811A8, sub_1D5F260A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884D30);
  }

  return result;
}

void sub_1D61A9CBC(uint64_t a1, __n128 a2)
{
  if (!qword_1EC884D38)
  {
    sub_1D61A9A04(255, a2);
    sub_1D7260FEC();
    sub_1D61ABEB4(&qword_1EC884D40, sub_1D61A9A04, MEMORY[0x1E697CD20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC884D38);
    }
  }
}

void *sub_1D61A9DC4@<X0>(void *a1@<X8>, __n128 a2@<Q0>)
{
  sub_1D61AB3F8(0, a2);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61AC220(0, &qword_1EC884DD0, sub_1D61AB484, sub_1D61AB3F8, MEMORY[0x1E697F948]);
  v46 = v10;
  *&v12 = MEMORY[0x1EEE9AC00](v10, v11).n128_u64[0];
  v45 = v40 - v13;
  v14 = *(v2 + 8);
  v15 = [v14 subviews];
  sub_1D5E2B010();
  v16 = sub_1D726267C();

  if (v16 >> 62)
  {
    v17 = sub_1D7263BFC();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17)
  {
    *v67 = *(v2 + 24);
    v48[0] = *(v2 + 24);
    v18 = MEMORY[0x1E6981790];
    sub_1D61ABBE0(0, &qword_1EC884DD8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    v44 = a1;
    sub_1D726191C();
    v42 = *(&v70 + 1);
    v43 = v70;
    v41 = v71;
    *&v48[0] = *(v2 + 16);
    v19 = swift_allocObject();
    v40[1] = v40;
    v20 = *(v2 + 16);
    *(v19 + 16) = *v2;
    *(v19 + 32) = v20;
    *(v19 + 48) = *(v2 + 32);
    MEMORY[0x1EEE9AC00](v19, v21);

    v22 = v14;
    sub_1D61ABC30(v48, &v70, &qword_1EC884DE0, &type metadata for FormatInspection, MEMORY[0x1E69E6720]);
    sub_1D61ABC30(v67, &v70, &qword_1EC884DD8, MEMORY[0x1E69E6370], v18);
    sub_1D61AB484(0, v23);
    sub_1D61AB834(0);
    sub_1D61ABA78(v24);
    sub_1D61ABB58();
    sub_1D7260FFC();
    (*(v6 + 16))(v45, v9, v5);
    swift_storeEnumTagMultiPayload();
    sub_1D61ABEB4(&qword_1EC884DE8, sub_1D61AB3F8, MEMORY[0x1E697C158]);
    sub_1D726135C();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v26 = *(v2 + 16);
    if (v26)
    {
      v44 = a1;
      v27 = *v2;
      v67[0] = 0;

      sub_1D72618EC();
      v28 = v70;
      v43 = *(&v70 + 1);

      v29 = sub_1D72611CC();
      LOBYTE(v48[0]) = 1;
      sub_1D61AACB8(v2, v14, &v70);
      v55 = v74;
      v56 = v75;
      v57 = v76;
      v58 = v77;
      v51 = v70;
      v52 = v71;
      v53 = v72;
      v54 = v73;
      v59 = v70;
      v60 = v71;
      v61 = v72;
      v62 = v73;
      v63 = v74;
      v64 = v75;
      v65 = v76;
      v66 = v77;
      sub_1D61ABCA0(&v51, v67);
      sub_1D61AC074(&v59, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
      *(&v47[4] + 7) = v55;
      *(&v47[5] + 7) = v56;
      *(&v47[6] + 7) = v57;
      *(&v47[7] + 7) = v58;
      *(v47 + 7) = v51;
      *(&v47[1] + 7) = v52;
      *(&v47[2] + 7) = v53;
      *(&v47[3] + 7) = v54;
      *&v67[49] = v47[0];
      *&v67[65] = v47[1];
      *&v67[81] = v47[2];
      *&v67[160] = *(&v47[6] + 15);
      *&v67[145] = v47[6];
      *&v67[129] = v47[5];
      *&v67[113] = v47[4];
      *v67 = v27;
      strcpy(&v67[8], "Accessibility");
      *&v67[22] = -4864;
      *&v67[24] = v26;
      *&v67[32] = v29;
      *&v67[40] = 0;
      v67[48] = v48[0];
      *&v67[97] = v47[3];
      LOBYTE(v68) = v28;
      *(&v68 + 1) = v43;
      sub_1D61ABD40(v67);
    }

    else
    {
      v30 = sub_1D72611CC();
      LOBYTE(v48[0]) = 1;
      sub_1D61AACB8(v2, v14, &v70);
      v55 = v74;
      v56 = v75;
      v57 = v76;
      v58 = v77;
      v51 = v70;
      v52 = v71;
      v53 = v72;
      v54 = v73;
      v59 = v70;
      v60 = v71;
      v61 = v72;
      v62 = v73;
      v63 = v74;
      v64 = v75;
      v65 = v76;
      v66 = v77;
      sub_1D61ABCA0(&v51, v67);
      sub_1D61AC074(&v59, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
      *(&v50[4] + 7) = v55;
      *(&v50[5] + 7) = v56;
      *(&v50[6] + 7) = v57;
      *(&v50[7] + 7) = v58;
      *(v50 + 7) = v51;
      *(&v50[1] + 7) = v52;
      *(&v50[2] + 7) = v53;
      *(&v50[3] + 7) = v54;
      *&v67[17] = v50[0];
      *&v67[33] = v50[1];
      *&v67[49] = v50[2];
      *&v67[128] = *(&v50[6] + 15);
      *&v67[113] = v50[6];
      *&v67[97] = v50[5];
      *&v67[81] = v50[4];
      *v67 = v30;
      *&v67[8] = 0;
      v67[16] = v48[0];
      *&v67[65] = v50[3];
      sub_1D61ABD34(v67);
    }

    v48[10] = *&v67[160];
    v48[11] = v68;
    v49 = v69;
    v48[6] = *&v67[96];
    v48[7] = *&v67[112];
    v48[8] = *&v67[128];
    v48[9] = *&v67[144];
    v48[2] = *&v67[32];
    v48[3] = *&v67[48];
    v48[4] = *&v67[64];
    v48[5] = *&v67[80];
    v48[0] = *v67;
    v48[1] = *&v67[16];
    sub_1D61AB4CC(0);
    sub_1D61AB560(0);
    sub_1D61ABEB4(&qword_1EC884DC0, sub_1D61AB4CC, &unk_1D731F2D0);
    sub_1D61ABEB4(&qword_1EC884D88, sub_1D61AB560, MEMORY[0x1E69817F8]);
    sub_1D726135C();
    v31 = v81;
    v32 = v45;
    *(v45 + 10) = v80;
    *(v32 + 11) = v31;
    v32[192] = v82;
    v33 = v77;
    *(v32 + 6) = v76;
    *(v32 + 7) = v33;
    v34 = v79;
    *(v32 + 8) = v78;
    *(v32 + 9) = v34;
    v35 = v73;
    *(v32 + 2) = v72;
    *(v32 + 3) = v35;
    v36 = v75;
    *(v32 + 4) = v74;
    *(v32 + 5) = v36;
    v37 = v71;
    *v32 = v70;
    *(v32 + 1) = v37;
    swift_storeEnumTagMultiPayload();
    sub_1D61AB484(0, v38);
    sub_1D61ABA78(v39);
    sub_1D61ABEB4(&qword_1EC884DE8, sub_1D61AB3F8, MEMORY[0x1E697C158]);
    return sub_1D726135C();
  }
}

uint64_t sub_1D61AA630(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = [v2 subviews];
  sub_1D5E2B010();
  v4 = sub_1D726267C();

  v11 = v4;
  swift_getKeyPath();
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D61AC0D0;
  *(v7 + 24) = v5;

  v8 = v2;
  sub_1D61ABC30(&v13, v10, &qword_1EC884DE0, &type metadata for FormatInspection, MEMORY[0x1E69E6720]);
  sub_1D61ABC30(&v12, v10, &qword_1EC884DD8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1D61AB8C0(0);
  sub_1D61AB9E4();
  sub_1D61A9B48();
  return sub_1D72619DC();
}

id sub_1D61AA7EC@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;

  sub_1D72618EC();
  v8 = a1;
  v6 = sub_1D713197C(a1);
  *a3 = v5;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;

  return v8;
}

__n128 sub_1D61AA88C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  if (v4)
  {
    v5 = *a1;
    LOBYTE(v38) = 0;

    sub_1D72618EC();
    v7 = v48;
    v8 = *(&v48 + 1);
    v9 = a1[1];

    v10 = sub_1D72611CC();
    sub_1D61AACB8(a1, v9, &v48);
    v26 = v52;
    v27 = v53;
    v28 = v54;
    v29 = v55;
    v22 = v48;
    v23 = v49;
    v24 = v50;
    v25 = v51;
    v30 = v48;
    v31 = v49;
    v32 = v50;
    v33 = v51;
    v34 = v52;
    v35 = v53;
    v36 = v54;
    v37 = v55;
    sub_1D61ABCA0(&v22, &v38);
    sub_1D61AC074(&v30, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
    *&v20[71] = v26;
    *&v20[87] = v27;
    *&v20[103] = v28;
    *&v20[119] = v29;
    *&v20[7] = v22;
    *&v20[23] = v23;
    *&v20[39] = v24;
    *&v20[55] = v25;
    v40 = *v20;
    v41 = *&v20[16];
    v42 = *&v20[32];
    *&v45[15] = *&v20[111];
    *v45 = *&v20[96];
    *&v44[16] = *&v20[80];
    *v44 = *&v20[64];
    *&v38 = v5;
    *(&v38 + 1) = 0x6269737365636341;
    *v39 = 0xED00007974696C69;
    *&v39[8] = v4;
    *&v39[16] = v10;
    v39[32] = 1;
    v43 = *&v20[48];
    v46 = v7;
    v47 = v8;
    sub_1D61ABD40(&v38);
  }

  else
  {
    v11 = a1[1];
    v13 = sub_1D72611CC();
    sub_1D61AACB8(a1, v11, &v48);
    v26 = v52;
    v27 = v53;
    v28 = v54;
    v29 = v55;
    v22 = v48;
    v23 = v49;
    v24 = v50;
    v25 = v51;
    v30 = v48;
    v31 = v49;
    v32 = v50;
    v33 = v51;
    v34 = v52;
    v35 = v53;
    v36 = v54;
    v37 = v55;
    sub_1D61ABCA0(&v22, &v38);
    sub_1D61AC074(&v30, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
    *&v21[71] = v26;
    *&v21[87] = v27;
    *&v21[103] = v28;
    *&v21[119] = v29;
    *&v21[7] = v22;
    *&v21[23] = v23;
    *&v21[39] = v24;
    *&v21[55] = v25;
    *&v39[1] = *v21;
    *&v39[17] = *&v21[16];
    v40 = *&v21[32];
    *&v44[15] = *&v21[111];
    *v44 = *&v21[96];
    v43 = *&v21[80];
    v42 = *&v21[64];
    v38 = v13;
    v39[0] = 1;
    v41 = *&v21[48];
    sub_1D61ABD34(&v38);
  }

  sub_1D61AB4CC(0);
  sub_1D61AB560(0);
  sub_1D61ABEB4(&qword_1EC884DC0, sub_1D61AB4CC, &unk_1D731F2D0);
  sub_1D61ABEB4(&qword_1EC884D88, sub_1D61AB560, MEMORY[0x1E69817F8]);
  sub_1D726135C();
  v14 = v59;
  *(a2 + 160) = v58;
  *(a2 + 176) = v14;
  *(a2 + 192) = v60;
  v15 = v55;
  *(a2 + 96) = v54;
  *(a2 + 112) = v15;
  v16 = v57;
  *(a2 + 128) = v56;
  *(a2 + 144) = v16;
  v17 = v51;
  *(a2 + 32) = v50;
  *(a2 + 48) = v17;
  v18 = v53;
  *(a2 + 64) = v52;
  *(a2 + 80) = v18;
  result = v49;
  *a2 = v48;
  *(a2 + 16) = result;
  return result;
}

double sub_1D61AACB8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = sub_1D726184C();
    *&v19 = swift_getKeyPath();
    *(&v19 + 1) = v5;
    *v20 = 0;
    v20[8] = 0;
  }

  else
  {
    v6 = sub_1D72618CC();
    v7 = sub_1D726188C();
    *&v19 = v6;
    *(&v19 + 1) = swift_getKeyPath();
    *v20 = v7;
    v20[8] = 1;
  }

  sub_1D61AB770(0, &qword_1EC87E060, &type metadata for DebugFormatLayoutAXBadge);
  sub_1D61AB770(0, &qword_1EC87E040, MEMORY[0x1E6981748]);
  sub_1D61ABDA0();
  sub_1D61ABEFC();
  sub_1D726135C();
  v8 = v21;
  v9 = v22;
  v10 = *v23;
  v11 = v23[8];
  sub_1D61ABFBC(v21, v22, *v23, v23[8]);
  v12 = sub_1D726125C();
  LOBYTE(v21) = 1;
  sub_1D61AAF60(a2, v17);
  *&v16[55] = v18;
  *&v16[39] = v17[2];
  *&v16[23] = v17[1];
  *&v16[7] = v17[0];
  v13 = v21;
  v19 = v12;
  v20[0] = v21;
  *&v20[1] = *v16;
  *&v20[64] = *(&v18 + 1);
  *&v20[49] = *&v16[48];
  *&v20[33] = *&v16[32];
  *&v20[17] = *&v16[16];
  sub_1D61ABFBC(v8, v9, v10, v11);
  sub_1D5F261C8(&v19, &v21);
  sub_1D61AC010(v8, v9, v10, v11);
  *&v15[23] = *v20;
  *&v15[39] = *&v20[16];
  *&v15[87] = *&v20[64];
  *&v15[71] = *&v20[48];
  *&v15[55] = *&v20[32];
  *&v15[7] = v19;
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 57) = *&v15[32];
  *(a3 + 73) = *&v15[48];
  *(a3 + 89) = *&v15[64];
  *(a3 + 104) = *&v15[79];
  *(a3 + 25) = *v15;
  *(a3 + 41) = *&v15[16];
  v21 = v12;
  v22 = 0;
  v23[0] = v13;
  *&v23[1] = *v16;
  *&v26[15] = *&v16[63];
  *v26 = *&v16[48];
  v25 = *&v16[32];
  v24 = *&v16[16];
  sub_1D5F2622C(&v21);
  return sub_1D61AC010(v8, v9, v10, v11);
}

double sub_1D61AAF60@<D0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v65 = a1;
  v66 = a2;
  v2 = MEMORY[0x1E6980E30];
  v3 = MEMORY[0x1E69E6720];
  v58 = MEMORY[0x1E69E6720];
  v59 = MEMORY[0x1E6980E30];
  sub_1D61AB614(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v56 - v6;
  swift_getObjectType();
  v68 = sub_1D7264C5C();
  v69 = v8;
  v61 = sub_1D5BF4D9C();
  v9 = sub_1D726171C();
  v11 = v10;
  v13 = v12;
  v57 = sub_1D726163C();
  v14 = *(v57 - 8);
  v56 = *(v14 + 56);
  v60 = v14 + 56;
  v56(v7, 1, 1, v57);
  sub_1D726167C();
  sub_1D61AC074(v7, &qword_1EC881178, v2, v3);
  v15 = sub_1D72616DC();
  v17 = v16;
  LOBYTE(v3) = v18;

  sub_1D5F26348(v9, v11, v13 & 1);

  v19 = sub_1D72616AC();
  v21 = v20;
  v23 = v22;
  sub_1D5F26348(v15, v17, v3 & 1);

  sub_1D726187C();
  v24 = sub_1D72616BC();
  v63 = v25;
  v64 = v24;
  v27 = v26;
  v62 = v28;

  sub_1D5F26348(v19, v21, v23 & 1);

  v29 = [v65 description];
  v30 = sub_1D726207C();
  v32 = v31;

  v68 = v30;
  v69 = v32;
  v33 = sub_1D726171C();
  v35 = v34;
  LOBYTE(v32) = v36;
  v56(v7, 1, 1, v57);
  sub_1D726167C();
  sub_1D61AC074(v7, &qword_1EC881178, v59, v58);
  v37 = sub_1D72616DC();
  v39 = v38;
  LOBYTE(v17) = v40;

  sub_1D5F26348(v33, v35, v32 & 1);

  v41 = sub_1D72616AC();
  v43 = v42;
  LOBYTE(v32) = v44;
  sub_1D5F26348(v37, v39, v17 & 1);

  sub_1D726188C();
  v45 = sub_1D72616BC();
  v47 = v46;
  LOBYTE(v37) = v48;
  v50 = v49;

  sub_1D5F26348(v41, v43, v32 & 1);

  v51 = v62 & 1;
  v67 = v62 & 1;
  LOBYTE(v68) = v62 & 1;
  v70 = v37 & 1;
  v52 = v66;
  v53 = v63;
  v54 = v64;
  *v66 = v64;
  v52[1] = v27;
  *(v52 + 16) = v51;
  v52[3] = v53;
  v52[4] = v45;
  v52[5] = v47;
  *(v52 + 48) = v37 & 1;
  v52[7] = v50;
  sub_1D5F26358(v54, v27, v51);

  sub_1D5F26358(v45, v47, v37 & 1);

  sub_1D5F26348(v45, v47, v37 & 1);

  sub_1D5F26348(v54, v27, v67);

  return result;
}

void sub_1D61AB3F8(uint64_t a1, __n128 a2)
{
  if (!qword_1EC884D48)
  {
    sub_1D61AB484(255, a2);
    sub_1D61AB834(255);
    sub_1D61ABA78(v2);
    sub_1D61ABB58();
    v3 = sub_1D726100C();
    if (!v4)
    {
      atomic_store(v3, &qword_1EC884D48);
    }
  }
}

void sub_1D61AB4CC(uint64_t a1)
{
  if (!qword_1EC884D58)
  {
    sub_1D61AB560(255);
    v3 = v2;
    v4 = sub_1D61ABEB4(&qword_1EC884D88, sub_1D61AB560, MEMORY[0x1E69817F8]);
    v6 = type metadata accessor for DebugFormatInspectorPopoverView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC884D58);
    }
  }
}