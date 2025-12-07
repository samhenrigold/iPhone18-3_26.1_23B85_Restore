uint64_t sub_1D5D23EE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatContentSubgroup.ResolvedContainer.layout.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v7 = v0[2];
  v8 = v2;
  v9 = v0[4];
  v3 = v7;
  sub_1D5CE9930(v6, &v5);

  return v3 & 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t FormatResource.imageURL(in:)@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  sub_1D5B54CB8(0, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v30 - v8;
  v10 = a1[5];
  v31[4] = a1[4];
  v31[5] = v10;
  v31[6] = a1[6];
  v11 = a1[1];
  v31[0] = *a1;
  v31[1] = v11;
  v12 = a1[3];
  v31[2] = a1[2];
  v31[3] = v12;
  v13 = *v2;
  v14 = v2[1];
  v15 = v2[3];
  v33[2] = v2[2];
  v33[3] = v15;
  v33[0] = v13;
  v33[1] = v14;
  v16 = v2[4];
  v17 = v2[5];
  v18 = v2[6];
  *(v34 + 9) = *(v2 + 105);
  v33[5] = v17;
  v34[0] = v18;
  v33[4] = v16;
  if (sub_1D5D2423C(v33) == 1)
  {
    nullsub_1();
    v20 = *(v19 + 64);
    v21 = *(v19 + 96);
    v31[12] = *(v19 + 80);
    v31[13] = v21;
    v22 = *(v19 + 16);
    v31[7] = *v19;
    v23 = *(v19 + 32);
    v24 = *(v19 + 48);
    v31[8] = v22;
    v31[9] = v23;
    v32 = *(v19 + 112);
    v31[10] = v24;
    v31[11] = v20;
    sub_1D725A7EC();
    v25 = *(v30[1] + 24);

    v26 = sub_1D725A3AC();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    sub_1D5D25FB0(v31, v9, a2, v25);
    result = sub_1D5D28540(v9, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    if (v3)
    {
      return result;
    }

    v28 = 0;
  }

  else
  {
    nullsub_1();
    v28 = 1;
  }

  v29 = sub_1D72585BC();
  return (*(*(v29 - 8) + 56))(a2, v28, 1, v29);
}

uint64_t sub_1D5D2424C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FormatOption(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v28 = a2;
    v29 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v14, 0);
    v15 = v29;
    v16 = *(v5 + 80);
    v27 = v13;
    v17 = v13 + ((v16 + 32) & ~v16);
    v18 = *(v5 + 72);
    do
    {
      sub_1D5D2477C(v17, v8);
      v19 = swift_allocBox();
      sub_1D5D247E0(v8, v20);
      v29 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D5D24610((v21 > 1), v22 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v22 + 1;
      *(v15 + 8 * v22 + 32) = v19 | 0x4000000000000000;
      v17 += v18;
      --v14;
    }

    while (v14);

    a2 = v28;
  }

  type metadata accessor for FormatVariableCollection();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for FormatOptionCollection();
  swift_allocObject();
  v24 = sub_1D5D2488C(v15, v23);

  type metadata accessor for FormatContextLayoutOptions();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v11;
  *(result + 32) = 0x3FF0000000000000;
  *(result + 40) = v24;
  v26 = MEMORY[0x1E69E7CD0];
  *(result + 48) = 0;
  *(result + 56) = v26;
  *a2 = result;
  return result;
}

void *sub_1D5D244C8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1D5B5AB24(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1D5D24610(void *a1, int64_t a2, char a3)
{
  result = sub_1D5D244C8(a1, a2, a3, *v3, &unk_1EDF199B0, sub_1D5D24660, sub_1D5D24660);
  *v3 = result;
  return result;
}

void sub_1D5D24660(uint64_t a1)
{
  if (!qword_1EDF34158[0])
  {
    v2 = type metadata accessor for FormatOption(255);
    v3 = sub_1D5D24734(&unk_1EDF45930, 255, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
    v4 = sub_1D5D24734(&qword_1EDF45940, 255, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
    v5 = type metadata accessor for FormatMerge(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1EDF34158);
    }
  }
}

uint64_t sub_1D5D24734(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D5D2477C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D247E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D2488C(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v88 = type metadata accessor for FormatOption(0);
  MEMORY[0x1EEE9AC00](v88, v3);
  v87 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v95 = &v81 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v94 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v86 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v85 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v81 - v19);
  v21 = *(a1 + 16);
  if (!v21)
  {
    v23 = MEMORY[0x1E69E7CC8];
LABEL_36:
    result = v84;
    *(v84 + 16) = v83;
    *(result + 24) = v23;
    return result;
  }

  v22 = (a1 + 32);
  v23 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v25 = *v22;
    v97 = v22 + 1;
    sub_1D5D25108(v20);
    v26 = *v20;
    v27 = v20[1];

    sub_1D5D2572C(v20, type metadata accessor for FormatOption);
    if (!v23[2])
    {

LABEL_11:
      v98 = v25;
      type metadata accessor for FormatOptionElement();
      swift_allocObject();

      v33 = sub_1D5D257B0(&v98);
      goto LABEL_24;
    }

    v28 = sub_1D5B69D90(v26, v27);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_11;
    }

    v31 = (v25 >> 59) & 0x1E | (v25 >> 2) & 1;
    v32 = v31 > 0x12 ? 10 : qword_1D7377940[v31];
    v34 = *(v23[7] + 8 * v28);
    v35 = *(v34 + 16);
    v36 = (v35 >> 59) & 0x1E | (v35 >> 2) & 1;
    v96 = v34;
    if (v36 > 0x12 || qword_1D7377940[v36] >= v32)
    {
      v50 = v94;
      sub_1D5D25108(v94);
      v51 = *(v50 + 16);

      sub_1D5D2572C(v50, type metadata accessor for FormatOption);
      v52 = v95;
      sub_1D5D25108(v95);
      v53 = *(v52 + 16);

      sub_1D5D2572C(v52, type metadata accessor for FormatOption);
      if (v53 >> 60 != 5 || (v51 & 0xF000000000000000) != 0x1000000000000000)
      {

        v98 = v25;
        type metadata accessor for FormatOptionElement();
        swift_allocObject();

        goto LABEL_23;
      }

      v54 = *((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v92 = *((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v93 = v54;
      v55 = *((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *((v51 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v90 = *((v51 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v91 = v55;
      v57 = v87;
      sub_1D5D25108(v87);
      v58 = v57[1];
      v89 = *v57;

      sub_1D5D2572C(v57, type metadata accessor for FormatOption);
      v59 = swift_allocObject();
      v60 = v91;
      *(v59 + 16) = v90;
      *(v59 + 24) = v56;
      v62 = v92;
      v61 = v93;
      *(v59 + 32) = v60;
      *(v59 + 40) = v62;
      *(v59 + 48) = v61;
      *v20 = v89;
      v20[1] = v58;
      v20[2] = v59 | 0x1000000000000000;
      v20[3] = 1;
      v63 = *(v88 + 28);
      v64 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v64 - 8) + 56))(v20 + v63, 1, 1, v64);
      sub_1D6F60ECC(v20, v25, &v98);

      sub_1D5D2572C(v20, type metadata accessor for FormatOption);
    }

    else
    {
      v37 = v85;
      sub_1D5D25108(v85);
      v38 = *(v37 + 16);
      v93 = v38 & 0xFFFFFFFFFFFFFFFLL;

      sub_1D5D2572C(v37, type metadata accessor for FormatOption);
      v39 = v86;
      sub_1D5D25108(v86);
      v40 = *(v39 + 16);

      sub_1D5D2572C(v39, type metadata accessor for FormatOption);
      if (v40 >> 60 != 5 || (v38 & 0xF000000000000000) != 0x1000000000000000)
      {

        goto LABEL_4;
      }

      v42 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v41 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v90 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v91 = v41;
      v43 = *(v93 + 24);
      v89 = *(v93 + 16);
      v44 = v87;
      sub_1D5D25108(v87);
      v45 = v44[1];
      v82 = *v44;

      v92 = type metadata accessor for FormatOption;
      sub_1D5D2572C(v44, type metadata accessor for FormatOption);
      v46 = swift_allocObject();
      v47 = v90;
      *(v46 + 16) = v89;
      *(v46 + 24) = v43;
      *(v46 + 32) = v47;
      *(v46 + 40) = v42;
      *(v46 + 48) = v91;
      *v20 = v82;
      v20[1] = v45;
      v20[2] = v46 | 0x1000000000000000;
      v20[3] = 1;
      v48 = *(v88 + 28);
      v49 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v49 - 8) + 56))(v20 + v48, 1, 1, v49);
      sub_1D6F60ECC(v20, v35, &v98);

      sub_1D5D2572C(v20, v92);
    }

    type metadata accessor for FormatOptionElement();
    swift_allocObject();
LABEL_23:
    v33 = sub_1D5D257B0(&v98);

LABEL_24:
    sub_1D5D25108(v20);
    v66 = *v20;
    v65 = v20[1];

    sub_1D5D2572C(v20, type metadata accessor for FormatOption);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v23;
    v68 = sub_1D5B69D90(v66, v65);
    v70 = v23[2];
    v71 = (v69 & 1) == 0;
    v72 = __OFADD__(v70, v71);
    v73 = v70 + v71;
    if (v72)
    {
      break;
    }

    v74 = v69;
    if (v23[3] < v73)
    {
      sub_1D5D25F98(v73, isUniquelyReferenced_nonNull_native);
      v68 = sub_1D5B69D90(v66, v65);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_39;
      }

LABEL_29:
      if (v74)
      {
        goto LABEL_3;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v79 = v68;
    sub_1D6D7D3D0();
    v68 = v79;
    if (v74)
    {
LABEL_3:
      v24 = v68;

      v23 = v98;
      *(v98[7] + 8 * v24) = v33;

LABEL_4:

      goto LABEL_5;
    }

LABEL_30:
    v23 = v98;
    v98[(v68 >> 6) + 8] |= 1 << v68;
    v76 = (v23[6] + 16 * v68);
    *v76 = v66;
    v76[1] = v65;
    *(v23[7] + 8 * v68) = v33;

    v77 = v23[2];
    v72 = __OFADD__(v77, 1);
    v78 = v77 + 1;
    if (v72)
    {
      goto LABEL_38;
    }

    v23[2] = v78;
LABEL_5:
    v22 = v97;
    if (!--v21)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D5D250C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D25108@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for FormatOption(0);
  v3 = swift_projectBox();
  return sub_1D5D25664(v3, a2, type metadata accessor for FormatOption);
}

uint64_t sub_1D5D251EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D25254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D252BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D25324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D2538C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D253F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D2545C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D254C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D2552C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D25594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D255FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D25664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D256CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2572C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D5D257B0(unint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatOption(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v27 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v27 - v14);
  v2[2] = *a1;
  sub_1D5D25108(&v27 - v14);
  v30 = v15[2];

  v17 = sub_1D5D25A0C(v16);
  v19 = v18;
  if (v18 >= 2)
  {
    v28 = 36;
    v29 = 0xE100000000000000;
    MEMORY[0x1DA6F9910](*v15, v15[1]);
    MEMORY[0x1DA6F9910](61, 0xE100000000000000);
    MEMORY[0x1DA6F9910](v17, v19);
    sub_1D5D25B88(v17, v19);
    v17 = v28;
    v19 = v29;
  }

  sub_1D5D25B9C(v15);
  v2[3] = v17;
  v2[4] = v19;
  sub_1D5D25108(v11);
  v30 = v11[2];
  v20 = sub_1D5D25BF8();
  if (v20 == 2)
  {
    v21 = 0;
    v22 = 0;
  }

  else if (v20 == 3 || (v20 & 1) == 0)
  {
    v21 = 0;
    v22 = 1;
  }

  else
  {
    v28 = 36;
    v29 = 0xE100000000000000;
    MEMORY[0x1DA6F9910](*v11, v11[1]);
    MEMORY[0x1DA6F9910](0x7974706D4573692ELL, 0xE800000000000000);
    v21 = v28;
    v22 = v29;
  }

  sub_1D5D25B9C(v11);
  v2[5] = v21;
  v2[6] = v22;
  v28 = 36;
  v29 = 0xE100000000000000;
  sub_1D5D25108(v7);

  v23 = *v7;
  v24 = v7[1];

  sub_1D5D25B9C(v7);
  MEMORY[0x1DA6F9910](v23, v24);

  MEMORY[0x1DA6F9910](0x7374736978652ELL, 0xE700000000000000);
  v25 = v29;
  v2[7] = v28;
  v2[8] = v25;
  return v2;
}

uint64_t sub_1D5D25A0C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 60;
  if (v3 <= 0xD)
  {
    if (((1 << v3) & 0x3EEC) != 0)
    {
      return 0;
    }

    if (v3 == 4)
    {
      if (!*(*((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) + 16))
      {
        sub_1D5E4049C();
        return sub_1D7263ADC();
      }

      return 0;
    }

    if (v3 == 8)
    {
      return sub_1D5D25A0C(a1);
    }
  }

  if (v3)
  {
    v5 = (v2 & 0xFFFFFFFFFFFFFFFLL);
    if (!*(v5[6] + 16))
    {
      v7 = v5[4];
      v6 = v5[5];
      v8 = v5[2];
      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6F9910](46, 0xE100000000000000);
      MEMORY[0x1DA6F9910](v7, v6);

      return v8;
    }

    return 0;
  }

  if (*(*(v2 + 24) + 16))
  {
    return 0;
  }

  if (*(v2 + 16))
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_1D5D25B88(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D5D25B9C(uint64_t a1)
{
  v2 = type metadata accessor for FormatOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D25BF8()
{
  v1 = *v0 >> 60;
  result = 3;
  if (((1 << v1) & 0x3EDF) == 0)
  {
    if (v1 == 5)
    {
      if (*(*((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x20) + 16))
      {
        return 2;
      }

      else
      {
        v3 = *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v4 = *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0xFFFFFFFFFFFFLL;
        if ((v3 & 0x2000000000000000) != 0)
        {
          v4 = HIBYTE(v3) & 0xF;
        }

        return v4 == 0;
      }
    }

    else
    {
      return sub_1D5D25BF8();
    }
  }

  return result;
}

void sub_1D5D25C90(uint64_t a1)
{
  if (!qword_1EDF1A448)
  {
    type metadata accessor for FormatOptionElement();
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A448);
    }
  }
}

uint64_t sub_1D5D25CF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v35 = v5;
  result = sub_1D726410C();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1D5D25FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v119 = a1;
  v117 = a3;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v112 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v114 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v116 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v113 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v115 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v111 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v111 - v35;
  sub_1D5B54CB8(0, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v111 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v111 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v58 = &v111 - v55;
  if (a4 >= 3.0)
  {
    sub_1D5D27018(a2, &v111 - v55, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v60 = sub_1D725A3AC();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v58, 1, v60) != 1)
    {
      sub_1D5D27018(v58, v52, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v67 = (*(v61 + 88))(v52, v60);
      if (v67 == *MEMORY[0x1E69D7380])
      {
        v68 = v118;
        v69 = v118[5];
        if ((~v69 & 0xF000000000000007) != 0)
        {
          v85 = v120;
          sub_1D5D27084(v119, v69, v36);
          if (!v85)
          {
            v86 = sub_1D72585BC();
            v87 = *(v86 - 8);
            (*(v87 + 56))(v36, 0, 1, v86);
            (*(v87 + 32))(v117, v36, v86);
          }
        }

        else
        {
          v70 = sub_1D72585BC();
          v71 = *(v70 - 8);
          (*(v71 + 56))(v36, 1, 1, v70);
          sub_1D5D27084(v119, v68[2], v117);
          if ((*(v71 + 48))(v36, 1, v70) != 1)
          {
            sub_1D5D28540(v36, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7388])
      {
        v81 = v118;
        v82 = v118[11];
        if ((~v82 & 0xF000000000000007) != 0)
        {
          v101 = v120;
          sub_1D5D27084(v119, v82, v32);
          if (!v101)
          {
            v102 = sub_1D72585BC();
            v103 = *(v102 - 8);
            (*(v103 + 56))(v32, 0, 1, v102);
            (*(v103 + 32))(v117, v32, v102);
          }
        }

        else
        {
          v83 = sub_1D72585BC();
          v84 = *(v83 - 8);
          (*(v84 + 56))(v32, 1, 1, v83);
          sub_1D5D27084(v119, v81[2], v117);
          if ((*(v84 + 48))(v32, 1, v83) != 1)
          {
            sub_1D5D28540(v32, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7390])
      {
        v94 = v118;
        v95 = v118[14];
        if ((~v95 & 0xF000000000000007) != 0)
        {
          v105 = v120;
          sub_1D5D27084(v119, v95, v28);
          if (!v105)
          {
            v106 = sub_1D72585BC();
            v107 = *(v106 - 8);
            (*(v107 + 56))(v28, 0, 1, v106);
            (*(v107 + 32))(v117, v28, v106);
          }
        }

        else
        {
          v96 = sub_1D72585BC();
          v97 = *(v96 - 8);
          (*(v97 + 56))(v28, 1, 1, v96);
          sub_1D5D27084(v119, v94[2], v117);
          if ((*(v97 + 48))(v28, 1, v96) != 1)
          {
            sub_1D5D28540(v28, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      (*(v61 + 8))(v52, v60);
    }

    v62 = v118[2];
    goto LABEL_9;
  }

  if (a4 >= 2.0)
  {
    v63 = a2;
    v64 = v57;
    sub_1D5D27018(v63, v57, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v65 = sub_1D725A3AC();
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v64, 1, v65) != 1)
    {
      v58 = v64;
      sub_1D5D27018(v64, v46, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v75 = (*(v66 + 88))(v46, v65);
      v76 = v118;
      if (v75 == *MEMORY[0x1E69D7380])
      {
        v77 = v118[4];
        if ((~v77 & 0xF000000000000007) != 0)
        {
          v98 = v120;
          sub_1D5D27084(v119, v77, v24);
          if (!v98)
          {
            v99 = sub_1D72585BC();
            v100 = *(v99 - 8);
            (*(v100 + 56))(v24, 0, 1, v99);
            (*(v100 + 32))(v117, v24, v99);
          }

          return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
        }

        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        (*(v79 + 56))(v24, 1, 1, v78);
        v80 = v76[1];
        goto LABEL_57;
      }

      if (v75 == *MEMORY[0x1E69D7388])
      {
        v90 = v118[10];
        if ((~v90 & 0xF000000000000007) != 0)
        {
          v104 = v115;
          goto LABEL_64;
        }

        v91 = sub_1D72585BC();
        v92 = *(v91 - 8);
        v93 = v115;
        (*(v92 + 56))(v115, 1, 1, v91);
      }

      else
      {
        if (v75 != *MEMORY[0x1E69D7390])
        {
          (*(v66 + 8))(v46, v65);
          v62 = v76[1];
          goto LABEL_9;
        }

        v90 = v118[13];
        if ((~v90 & 0xF000000000000007) != 0)
        {
          v104 = v113;
          goto LABEL_64;
        }

        v91 = sub_1D72585BC();
        v92 = *(v91 - 8);
        v93 = v113;
        (*(v92 + 56))(v113, 1, 1, v91);
      }

      sub_1D5D27084(v119, v76[1], v117);
      if ((*(v92 + 48))(v93, 1, v91) != 1)
      {
        sub_1D5D28540(v93, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v64;
    v62 = v118[1];
  }

  else
  {
    if (a4 < 1.0)
    {
      return sub_1D5D25FB0(v119, a2, v117, 3.0);
    }

    v72 = v56;
    sub_1D5D27018(a2, v56, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v73 = sub_1D725A3AC();
    v74 = *(v73 - 8);
    if ((*(v74 + 48))(v72, 1, v73) == 1)
    {
      sub_1D5D27084(v119, *v118, v117);
      v58 = v72;
      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v72;
    sub_1D5D27018(v72, v40, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v88 = (*(v74 + 88))(v40, v73);
    v89 = v118;
    if (v88 == *MEMORY[0x1E69D7380])
    {
      v90 = v118[3];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v116;
        (*(v79 + 56))(v116, 1, 1, v78);
LABEL_56:
        v80 = *v89;
LABEL_57:
        sub_1D5D27084(v119, v80, v117);
        if ((*(v79 + 48))(v24, 1, v78) != 1)
        {
          sub_1D5D28540(v24, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      v104 = v116;
      goto LABEL_64;
    }

    if (v88 == *MEMORY[0x1E69D7388])
    {
      v90 = v118[9];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v114;
        (*(v79 + 56))(v114, 1, 1, v78);
        goto LABEL_56;
      }

      v104 = v114;
LABEL_64:
      v108 = v120;
      sub_1D5D27084(v119, v90, v104);
      if (!v108)
      {
        v109 = sub_1D72585BC();
        v110 = *(v109 - 8);
        (*(v110 + 56))(v104, 0, 1, v109);
        (*(v110 + 32))(v117, v104, v109);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    if (v88 == *MEMORY[0x1E69D7390])
    {
      v90 = v118[12];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v112;
        (*(v79 + 56))(v112, 1, 1, v78);
        goto LABEL_56;
      }

      v104 = v112;
      goto LABEL_64;
    }

    (*(v74 + 8))(v40, v73);
    v62 = *v89;
  }

LABEL_9:
  sub_1D5D27084(v119, v62, v117);
  return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
}

uint64_t sub_1D5D27018(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B54CB8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D5D27084(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for FormatAbsoluteURL(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v23 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v24 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v27 = *(v23 + 40);
      sub_1D5D27950(v24, v25, v26, v27);
      sub_1D5D2737C(a1, v24, v25, v26, v27, a3);
      sub_1D5D28C84(v24, v25, v26, v27);
    }

    else
    {
      v30 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D6D50BD4(a1, v30, v31, a3);
    }
  }

  else if (v20)
  {
    v33 = a3;
    v28 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v34 = *(a1 + 9);

    sub_1D722B410(v10);
    sub_1D725849C();
    v29 = *(v7 + 8);
    v29(v10, v6);
    sub_1D6B79734(v28, MEMORY[0x1E69E7CC0], v33);

    v29(v14, v6);
  }

  else
  {
    v21 = v17;
    v22 = swift_projectBox();
    sub_1D5D287F4(v22, v19, type metadata accessor for FormatAbsoluteURL);
    sub_1D6B79734(*&v19[*(v21 + 20)], MEMORY[0x1E69E7CC0], a3);
    sub_1D5D28B04(v19, type metadata accessor for FormatAbsoluteURL);
  }
}

uint64_t sub_1D5D2737C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, char *a6@<X8>)
{
  v51 = a2;
  v46 = a4;
  v52 = a3;
  v49 = a6;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v46 - v10;
  v12 = sub_1D72585BC();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v63, v16);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v46 - v21;
  v23 = type metadata accessor for FormatOption(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  if (a5 > 2u)
  {
    if (a5 == 4)
    {
      v27 = v50;
      result = sub_1D6D4F6F4();
      if (v27)
      {
        return result;
      }

      v30 = v47;
      v29 = v48;
      if ((*(v47 + 48))(v11, 1, v48) != 1)
      {
        v45 = *(v30 + 32);
        v45(v15, v11, v29);
        return (v45)(v49, v15, v29);
      }

      sub_1D5D28540(v11, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5D285FC();
      swift_allocError();
      *v31 = 0xD00000000000001FLL;
      v31[1] = 0x80000001D73F1D40;
      goto LABEL_9;
    }

LABEL_8:
    sub_1D5D285FC();
    swift_allocError();
    *v32 = 0xD00000000000006ELL;
    v32[1] = 0x80000001D73C3790;
LABEL_9:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (a5)
  {
    goto LABEL_8;
  }

  v48 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1[5];
  v58 = a1[4];
  v59 = v33;
  v60 = a1[6];
  v34 = a1[1];
  v54 = *a1;
  v55 = v34;
  v35 = a1[3];
  v56 = a1[2];
  v57 = v35;
  v36 = off_1F51B1B98[0];
  v37 = v52;

  v38 = v51;
  v36(v51, v37, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1D5D28540(v22, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v39 = v52;
    *v18 = v38;
    v18[1] = v39;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    swift_allocError();
    sub_1D5D287F4(v18, v40, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    return sub_1D5D28B04(v18, type metadata accessor for FormatLayoutError);
  }

  else
  {
    v41 = v38;
    v42 = v52;

    v43 = v48;
    sub_1D5D247E0(v22, v48);
    v62[4] = v58;
    v62[5] = v59;
    v62[6] = v60;
    v62[0] = v54;
    v62[1] = v55;
    v62[2] = v56;
    v62[3] = v57;

    v44 = v50;
    sub_1D6B74D28(v62, &v53);
    if (!v44)
    {

      v61[3] = v57;
      v61[4] = v58;
      v61[5] = v59;
      v61[6] = v60;
      v61[0] = v54;
      v61[1] = v55;
      v61[2] = v56;
      sub_1D6B7EB54(v53, v41, v42, v46, v61, v49);
    }

    sub_1D5D28B04(v43, type metadata accessor for FormatOption);
  }
}

void sub_1D5D27950(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }
}

uint64_t sub_1D5D27998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D725A7EC();

  FormatOptionCollection.subscript.getter(a1, a2, a3);
}

uint64_t FormatOptionCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5D27F28(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FormatOption(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27FE0(a1, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D5D283C4(v10, &qword_1EDF337F0, type metadata accessor for FormatOption);
    swift_beginAccess();
    if (*(*(v3 + 24) + 16) && (sub_1D5B69D90(a1, a2), (v16 & 1) != 0))
    {
      swift_endAccess();
      sub_1D5D25108(a3);
      v17 = 0;
    }

    else
    {
      swift_endAccess();
      v17 = 1;
    }
  }

  else
  {
    sub_1D5D5E67C(v10, v15, type metadata accessor for FormatOption);
    sub_1D5D5E67C(v15, a3, type metadata accessor for FormatOption);
    v17 = 0;
  }

  return (*(v12 + 56))(a3, v17, 1, v11);
}

void sub_1D5D27C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5D27CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1D5D27D10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1D5D27D64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5D27DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1D5D27E1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5D27E80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1D5D27ED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1D5D27F28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1D5D27F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5D27FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (*(*(v3 + 16) + 16) && (sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    swift_endAccess();
    sub_1D5D25108(a3);
    v8 = 0;
  }

  else
  {
    swift_endAccess();
    v8 = 1;
  }

  v9 = type metadata accessor for FormatOption(0);
  return (*(*(v9 - 8) + 56))(a3, v8, 1, v9);
}

uint64_t sub_1D5D280B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5D27C58(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D28188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D281E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D282A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D5D28308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5D27CBC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D28364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D283C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5D27F28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D28420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D284E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B54CB8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D2859C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D5D285FC()
{
  result = qword_1EDF2F560;
  if (!qword_1EDF2F560)
  {
    type metadata accessor for FormatLayoutError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F560);
  }

  return result;
}

uint64_t sub_1D5D28654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D286BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D28724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D2878C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D287F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D2885C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D288C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D289E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28A44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28AA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28B04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5D28C84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }
}

uint64_t FormatContextLayoutOptions.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatOptionCollection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatVariableCollection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5D28D8C()
{

  sub_1D5D25B88(v0[3], v0[4]);
  sub_1D5D25B88(v0[5], v0[6]);

  return swift_deallocClassInstance();
}

uint64_t TraversalOnlyEncoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TraversalOnlyEncoder.KeyedContainer(0, a2, a3, a4);

  swift_getWitnessTable();
  return sub_1D726447C();
}

uint64_t sub_1D5D28E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5D28ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[3] = &type metadata for TraversalOnlyEncoder;
  v10[4] = sub_1D5D28FD4();
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);

  sub_1D5D29028(a2, v7, v8, v10);

  sub_1D7261E6C();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t sub_1D5D28FD4()
{
  result = qword_1EDF0E7A0;
  if (!qword_1EDF0E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E7A0);
  }

  return result;
}

void *sub_1D5D29028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *v4;
  v10 = v4[1];
  sub_1D5D290FC(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);

  result = sub_1D5D291B8(inited);
  *a4 = v9;
  a4[1] = v10;
  return result;
}

void sub_1D5D290FC(uint64_t a1)
{
  if (!qword_1EDF01CF0)
  {
    sub_1D5D29154();
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF01CF0);
    }
  }
}

unint64_t sub_1D5D29154()
{
  result = qword_1EDF01CC8;
  if (!qword_1EDF01CC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF01CC8);
  }

  return result;
}

uint64_t FormatFeedGroup.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5C26F68(0, &qword_1EDF02978, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C26FCC();
  sub_1D7264B5C();
  v11 = type metadata accessor for FormatFeedGroup(0);
  LOBYTE(v15) = 0;
  type metadata accessor for FormatContent.Resolved(0);
  sub_1D5C270D0(&qword_1EDF11E50, type metadata accessor for FormatContent.Resolved, &protocol conformance descriptor for FormatContent.Resolved);
  sub_1D726443C();
  if (!v2)
  {
    v15 = *(v3 + v11[6]);
    v14 = 1;
    sub_1D5B49CBC(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158]);
    sub_1D6A341A0();
    sub_1D726443C();
    LOBYTE(v15) = *(v3 + v11[7]);
    v14 = 2;
    sub_1D675C5E0();
    sub_1D726443C();
    LOBYTE(v15) = *(v3 + v11[8]);
    v14 = 3;
    sub_1D726443C();
    LOBYTE(v15) = 4;
    sub_1D726441C();
    LOBYTE(v15) = 5;
    sub_1D726441C();
    LOBYTE(v15) = 11;
    sub_1D726441C();
    LOBYTE(v15) = 6;
    sub_1D72643AC();
    LOBYTE(v15) = 7;
    sub_1D72643AC();
    LOBYTE(v15) = 8;
    sub_1D72643AC();
    LOBYTE(v15) = 9;
    sub_1D72643AC();
    LOBYTE(v15) = *(v3 + v11[16]);
    v14 = 10;
    sub_1D5BA4CF0();
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t FormatContent.Resolved.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D5B5AB24(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v56 = v53 - v5;
  sub_1D5B5AB24(0, &qword_1EDF43A28, sub_1D5C28BC0, v2);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v57 = v53 - v8;
  sub_1D5C28B8C(0);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5AB24(0, &qword_1EDF17608, sub_1D5C28BF4, v2);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v60 = v53 - v14;
  sub_1D5B5D160(0);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v62 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28CC4(0);
  v63 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v64 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28CF8(0);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28DE4(0, &qword_1EDF027F0, sub_1D5C28E4C, &_s8ResolvedV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = v53 - v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C28E4C();
  sub_1D7264B5C();
  v32 = v65;
  LOBYTE(v68) = 0;
  v33 = v27;
  sub_1D72643FC();
  if (v32)
  {
    v34 = *(v28 + 8);
  }

  else
  {
    v53[3] = v22;
    v54 = v25;
    v65 = v28;
    v55 = type metadata accessor for FormatContent.Resolved(0);
    LOBYTE(v68) = 1;
    sub_1D725891C();
    sub_1D5B85F48(&qword_1EDF45B18, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    v36 = v66;
    sub_1D726443C();
    v37 = v55;
    v68 = *(v36 + v55[6]);
    v67 = 2;
    sub_1D5B5A7F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v39 = v38;
    v40 = sub_1D5B9976C(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v68 = *(v36 + v37[7]);
    v67 = 3;
    sub_1D726443C();
    v53[1] = v40;
    v53[2] = v39;
    v68 = *(v36 + v37[8]);
    v67 = 4;
    sub_1D5B5ABEC(0);
    sub_1D5C29188(&qword_1EDF04DA8, sub_1D5B5ABEC, sub_1D5D2A668, MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v68 = *(v36 + v55[9]);
    v67 = 5;
    sub_1D5B5A7F0(0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
    sub_1D5C7F1C4(&qword_1EDF04E18, sub_1D69A52B0, MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v68 = *(v36 + v55[11]);
    v67 = 6;
    sub_1D5B5AD98(0);
    sub_1D5C29188(&qword_1EDF050B0, sub_1D5B5AD98, sub_1D6924C08, MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v68 = *(v36 + v55[12]);
    v67 = 7;
    sub_1D5B5AE40(0, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    sub_1D5CB5E08(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D726443C();
    v41 = v55;
    v42 = swift_unknownObjectRetain();
    v43 = v54;
    sub_1D67A8C48(v42, v54);
    LOBYTE(v68) = 8;
    sub_1D5C29188(&unk_1EDF17790, sub_1D5C28CF8, sub_1D69A5304, MEMORY[0x1E69E7C70]);
    sub_1D726443C();
    sub_1D5CEB140(v43, sub_1D5C28CF8);
    v44 = *(v36 + v41[14]);
    v45 = v44;
    v46 = v64;
    sub_1D698AFD8(v44, v64);
    LOBYTE(v68) = 9;
    sub_1D5C29188(&qword_1EDF17640, sub_1D5C28CC4, sub_1D69A5338, MEMORY[0x1E69E7C70]);
    sub_1D726443C();
    sub_1D5CEB140(v46, sub_1D5C28CC4);
    v47 = swift_unknownObjectRetain();
    sub_1D6B42B58(v47, v62);
    LOBYTE(v68) = 13;
    sub_1D5C29188(&unk_1EDF17700, sub_1D5B5D160, sub_1D69A536C, MEMORY[0x1E69E7C70]);
    sub_1D726443C();
    sub_1D5CEB140(v62, sub_1D5B5D160);
    LOBYTE(v68) = 14;
    sub_1D5B5AFCC(0);
    sub_1D5C29188(&qword_1EDF11A90, sub_1D5B5AFCC, sub_1D69A53A0, MEMORY[0x1E69E7C70]);
    sub_1D726443C();
    v48 = *(v66 + v55[17]);
    v49 = v48;
    sub_1D698B268(v48, v60);
    LOBYTE(v68) = 16;
    sub_1D5C28BF4(0);
    sub_1D5B85F48(&qword_1EDF17630, sub_1D5C28BF4, MEMORY[0x1E69D6C10]);
    sub_1D72643BC();
    sub_1D5CEB4C8(v60, &qword_1EDF17608, sub_1D5C28BF4, MEMORY[0x1E69E6720], sub_1D5B5AB24);
    v68 = *(v66 + v55[20]);
    v67 = 11;
    sub_1D726443C();
    v50 = *(v66 + v55[18]);
    v51 = v50;
    sub_1D698B554(v50, v59);
    LOBYTE(v68) = 10;
    sub_1D5C29188(&qword_1EDF177D8, sub_1D5C28B8C, sub_1D69A53D4, MEMORY[0x1E69E7C70]);
    sub_1D726443C();
    sub_1D5CEB140(v59, sub_1D5C28B8C);
    LOBYTE(v68) = *(v66 + v55[19]);
    v67 = 12;
    sub_1D5B5A7F0(0, &qword_1EDF428F8, &type metadata for FeedSubscriptionPaidAccess, MEMORY[0x1E69E6720]);
    sub_1D69A5408();
    sub_1D726443C();
    v52 = v56;
    sub_1D6997468(v66 + v55[21], v56, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5B5AB24);
    Reference<A>.init(value:)(v52, v57);
    LOBYTE(v68) = 15;
    sub_1D5C28BC0(0);
    sub_1D5B85F48(&qword_1EDF17870, sub_1D5C28BC0, MEMORY[0x1E69D6C10]);
    sub_1D72643BC();
    sub_1D5CEB4C8(v57, &qword_1EDF43A28, sub_1D5C28BC0, MEMORY[0x1E69E6720], sub_1D5B5AB24);
    v34 = *(v65 + 8);
  }

  return v34(v31, v33);
}

uint64_t sub_1D5D2A4FC@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  a1[3] = &type metadata for TraversalOnlyEncoder.SingleValueContainer;
  a1[4] = sub_1D5D2A55C();
  *a1 = v4;
  a1[1] = v3;
}

unint64_t sub_1D5D2A55C()
{
  result = qword_1EDF0E7A8;
  if (!qword_1EDF0E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E7A8);
  }

  return result;
}

uint64_t sub_1D5D2A5B0@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  a1[3] = &type metadata for TraversalOnlyEncoder.UnkeyedContainer;
  a1[4] = sub_1D5D2A614();
  *a1 = v4;
  a1[1] = v3;
  a1[2] = 0;
}

unint64_t sub_1D5D2A614()
{
  result = qword_1EDF0E7B0[0];
  if (!qword_1EDF0E7B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0E7B0);
  }

  return result;
}

uint64_t sub_1D5D2A69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    v3[2] = v4 + 1;
    v13[3] = &type metadata for TraversalOnlyEncoder;
    v13[4] = sub_1D5D28FD4();
    sub_1D5D290FC(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;

    v8 = sub_1D72644BC();
    v10 = v9;
    *(inited + 56) = &type metadata for TraversalOnlyEncoder.AnyCodingKey;
    *(inited + 64) = sub_1D5D2A838();
    v11 = swift_allocObject();
    *(inited + 32) = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v11 + 32) = v4;
    *(v11 + 40) = 0;
    v13[6] = v6;
    sub_1D5D291B8(inited);
    v13[0] = v6;
    v13[1] = v5;
    sub_1D7261E6C();
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return result;
}

uint64_t sub_1D5D2A7E8()
{

  return swift_deallocObject();
}

unint64_t sub_1D5D2A838()
{
  result = qword_1EDF0E848;
  if (!qword_1EDF0E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E848);
  }

  return result;
}

unint64_t sub_1D5D2A890()
{
  result = qword_1EDF0E838;
  if (!qword_1EDF0E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E838);
  }

  return result;
}

unint64_t sub_1D5D2A8E8()
{
  result = qword_1EDF0E840;
  if (!qword_1EDF0E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E840);
  }

  return result;
}

uint64_t FormatPackageInventory.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5C2B0C4(0, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v53 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C2B194();
  sub_1D7264B5C();
  v63 = 0;
  v10 = v55;
  sub_1D72643FC();
  if (v10)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v55 = v6;
  v63 = 1;
  sub_1D725BD1C();
  sub_1D5B4B9F8(&qword_1EDF178C0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B40]);
  sub_1D726443C();
  v63 = *(v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  v62 = 2;
  sub_1D5D2B3EC();
  sub_1D726443C();
  v12 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13 != 4)
  {
    v62 = 3;
    v61 = v13;
    sub_1D6E780B8();
    sub_1D61A7178();
    sub_1D72647EC();
  }

  v14 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];

  sub_1D5D2D2E8(v15, v16, v17, v9, 6);

  v18 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items);
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];

  sub_1D5D2D428(v19, v20, v9, 7);

  v21 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets);
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];

  sub_1D5D2D58C(v22, v23, v9, 8);

  v24 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries);
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];

  sub_1D5D2D5C0(v25, v26, v9, 9);

  v27 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];

  sub_1D5D2D5F4(v28, v29, v9, 10);

  v30 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots);
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];

  sub_1D5D4B69C(v31, v32, v9, 11);

  v33 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
  swift_beginAccess();
  v34 = *v33;
  v35 = v33[1];

  sub_1D5D4B6D0(v34, v35, v9, 12);

  swift_beginAccess();
  v54 = v2;

  sub_1D5D4B704(v36, v9, 13);

  v37 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
  v38 = v54;
  swift_beginAccess();
  v39 = *(v38 + v37);
  if (*(v39 + 16))
  {
    v59 = 14;
    v60 = v39;
    sub_1D6E780B8();
    sub_1D5B5AD98(0);
    sub_1D5C4D8F0(&qword_1EDF050B0, sub_1D5B5AD98, sub_1D6924C08, MEMORY[0x1E69E6300]);

    sub_1D72647EC();
  }

  v40 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
  v41 = v54;
  swift_beginAccess();
  if (*(*(v41 + v40) + 16))
  {

    sub_1D5E07710(v42, v9, 15);
  }

  v43 = (v54 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations);
  swift_beginAccess();
  v44 = *v43;
  v45 = v43[1];

  sub_1D6A3D1F4(v44, v45, v9, 16);

  v46 = *(v54 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem + 8);
  v57 = *(v54 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
  v58 = v46;
  LOBYTE(v56) = 17;
  sub_1D5D5FDA4(v57, v46);
  sub_1D668F320();
  sub_1D72643BC();
  sub_1D5C5D428(v57, v58);
  v47 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
  v48 = v54;
  swift_beginAccess();
  v49 = *(v48 + v47);
  if (*(v49 + 16))
  {
    v64 = 18;
    v56 = v49;
    sub_1D6E780B8();
    sub_1D6E78148(0);
    sub_1D5C4D8F0(&qword_1EDF04F58, sub_1D6E78148, sub_1D5C2AF58, MEMORY[0x1E69E6300]);

    sub_1D72647EC();
  }

  v50 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
  v51 = v54;
  swift_beginAccess();
  if (*(*(v51 + v50) + 16))
  {

    sub_1D5E07710(v52, v9, 19);
  }

  v64 = 20;
  type metadata accessor for FormatCompilerOptions(0);
  sub_1D5B4B9F8(&qword_1EDF0E3A0, type metadata accessor for FormatCompilerOptions, &protocol conformance descriptor for FormatCompilerOptions);
  sub_1D726443C();
  return (*(v55 + 8))(v9, v5);
}

unint64_t sub_1D5D2B3EC()
{
  result = qword_1EDF10BD0;
  if (!qword_1EDF10BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10BD0);
  }

  return result;
}

uint64_t FormatPackageRole.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v52 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v51 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v53 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v50 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v49 = &v46 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v48 = &v46 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v46 - v26;
  v55 = *v1;
  v28 = a1[3];
  v29 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(*(v30 - 8) + 16);
  v32(v27, v31, v30);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v33 = v58;
  sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v28, v29);
  if (v33)
  {
    return sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  }

  v35 = v32;
  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v36 = v56;
  v37 = v56[3];
  v58 = v56[4];
  v47 = v37;
  __swift_project_boxed_opaque_existential_1(v56, v37);
  if (v55 <= 2)
  {
    if (v55)
    {
      if (v55 == 1)
      {
        v40 = v49;
        v32(v49, v31, v30);
      }

      else
      {
        v40 = v50;
        v32(v50, v31, v30);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v40, sub_1D5B4AA6C, 0, v47, v58);
      sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v42 = v48;
      v32(v48, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v42, sub_1D5B4AA6C, 0, v47, v58);
      sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
    }
  }

  else
  {
    if (v55 > 4)
    {
      if (v55 == 5)
      {
        v41 = v52;
        v35(v52, v31, v30);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v41, sub_1D5B4AA6C, 0, v47, v58);
        sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        if (qword_1EDF31E98 != -1)
        {
          swift_once();
        }

        v44 = __swift_project_value_buffer(v30, qword_1EDFFCD00);
        v45 = v54;
        v35(v54, v44, v30);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v45, sub_1D5B4AA6C, 0, v47, v58);
        sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
      }
    }

    else if (v55 == 3)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v38 = __swift_project_value_buffer(v30, qword_1EDFFCD98);
      v39 = v53;
      v35(v53, v38, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v39, sub_1D5B4AA6C, 0, v47, v58);
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v43 = v51;
      v35(v51, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v43, sub_1D5B4AA6C, 0, v47, v58);
      sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
    }

    v36 = v56;
  }

  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v57, v57[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1D5D2BC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a1;
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - v17;
  v19 = sub_1D7264B4C();
  Dictionary<>.formatCodingVersionInfo.getter(v19, v18);
  v20 = type metadata accessor for FormatVersionInfo(0);
  v21 = (*(*(v20 - 8) + 48))(v18, 1, v20);
  if (v21 || (MEMORY[0x1EEE9AC00](v21, v22), *(&v28 - 2) = a2, *(&v28 - 1) = a3, MEMORY[0x1EEE9AC00](v23, v24), v25 = v29, *(&v28 - 2) = a4, *(&v28 - 1) = v25, sub_1D6020CA0(v30, sub_1D6026DEC, v26, sub_1D6026DE8, (&v28 - 4)), v7))
  {
    sub_1D5D2C7C0(v18, v14, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    Dictionary<>.formatCodingVersionInfo.setter(v14, v19);

    return sub_1D5D2CCD8(v18, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
  }

  else
  {
    Dictionary<>.formatCodingVersionInfo.setter(v18, v19);
  }
}

uint64_t sub_1D5D2BEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  v9 = a5;
  v6[2] = a2;
  v6[3] = a3;
  return sub_1D5D2BC70(a1, sub_1D6026258, v7, sub_1D6026DE8, v6, a4, a5);
}

void sub_1D5D2BF68(uint64_t a1)
{
  type metadata accessor for FormatVersioningMode(319);
  if (v1 <= 0x3F)
  {
    sub_1D5C2ECB0(319, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D5C2ECB0(319, &qword_1EDF04D28, type metadata accessor for FormatDeprecationWarning, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5D2C064(uint64_t a1)
{
  sub_1D5D2C0E8(319, &qword_1EDF178D0);
  if (v1 <= 0x3F)
  {
    sub_1D5D2C0E8(319, &qword_1EDF178C8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D5D2C0E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D725BD1C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D5D2C150(uint64_t a1)
{
  sub_1D725BD1C();
  if (v1 <= 0x3F)
  {
    sub_1D5B58244(319, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D5C2ECB0(319, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Dictionary<>.formatCodingVersionInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2ECB0(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = sub_1D7263FCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7263FBC();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    if (*(a1 + 16) && (v14 = sub_1D5B7C598(v12), (v15 & 1) != 0))
    {
      sub_1D5B76B10(*(a1 + 56) + 32 * v14, v22);
      (*(v9 + 8))(v12, v8);
      sub_1D5C2ECB0(0, &qword_1EC8824D8, type metadata accessor for FormatVersionInfo, type metadata accessor for Box);
      if (swift_dynamicCast())
      {
        v16 = v21;
        v17 = *(*v21 + 88);
        swift_beginAccess();
        sub_1D6026904(v16 + v17, a2, type metadata accessor for FormatVersionInfo);

        v18 = 0;
LABEL_8:
        v19 = type metadata accessor for FormatVersionInfo(0);
        return (*(*(v19 - 8) + 56))(a2, v18, 1, v19);
      }
    }

    else
    {
      (*(v9 + 8))(v12, v8);
    }

    v18 = 1;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1D5D2C538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatVersioningMode(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1D5C2ECB0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1D5D2C684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatVersioningMode(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1D5C2ECB0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D5D2C7C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C2ECB0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5D2C840(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C2ED68(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t Dictionary<>.formatCodingVersionInfo.setter(char *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v29 - v7;
  v9 = type metadata accessor for FormatVersionInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2ECB0(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30], v4);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v29 - v16;
  v18 = sub_1D7263FCC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7263FBC();
  result = (*(v19 + 48))(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v19 + 32))(v22, v17, v18);
  if (*(a2 + 16) && (v24 = sub_1D5B7C598(v22), (v25 & 1) != 0))
  {
    sub_1D5B76B10(*(a2 + 56) + 32 * v24, v30);
    (*(v19 + 8))(v22, v18);
    sub_1D5C2ECB0(0, &qword_1EC8824D8, type metadata accessor for FormatVersionInfo, type metadata accessor for Box);
    if (swift_dynamicCast())
    {
      v26 = v29[1];
      sub_1D60246E0(a1, v8);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        sub_1D60269C0(v8, v13, type metadata accessor for FormatVersionInfo);
        v28 = *(*v26 + 88);
        swift_beginAccess();
        sub_1D6024774(v13, v26 + v28);
        swift_endAccess();
      }

      v27 = v8;
      return sub_1D5D2CCD8(v27, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    }
  }

  else
  {
    (*(v19 + 8))(v22, v18);
  }

  v27 = a1;
  return sub_1D5D2CCD8(v27, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
}

uint64_t sub_1D5D2CCD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C2ECB0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D2CD48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CDA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CE08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CE68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CEC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CF28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CF88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CFE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D0A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D2E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(result + 16))
  {
    sub_1D5D2D628(0, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D2D690(&qword_1EDF02638, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys);
    sub_1D6A40524();

    sub_1D72647EC();
  }

  return result;
}

uint64_t sub_1D5D2D45C(uint64_t result, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  if (*(result + 16))
  {
    sub_1D5D2D628(0, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys, MEMORY[0x1E69E6F58]);
    v7 = sub_1D5D2D690(&qword_1EDF02638, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys);
    a5(v7, v8);

    sub_1D72647EC();
  }

  return result;
}

void sub_1D5D2D628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D5D2D690(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D2D628(255, a2, a3, a4, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5D2D6F4()
{
  result = qword_1EDF24880;
  if (!qword_1EDF24880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24880);
  }

  return result;
}

uint64_t FormatNodeStyleCollection.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D5C2C988(0);
  sub_1D5C2CB2C(&qword_1EDF050D0, &qword_1EDF12400, &protocol conformance descriptor for FormatObject<A>, MEMORY[0x1E69E6300]);
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1D5D2D870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v4 = v3[1];
  v7[3] = &type metadata for TraversalOnlyEncoder;
  v7[4] = sub_1D5D28FD4();
  v7[0] = v5;
  v7[1] = v4;

  sub_1D7261E6C();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t FormatObject.encode(to:)(void *a1, uint64_t a2)
{
  v27 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v27, v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v30 = &v27 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v29 = (&v27 - v11);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v31 = a2;
  v32 = v12;
  type metadata accessor for FormatObject.CodingKeys(255, v12, v13, v14);
  swift_getWitnessTable();
  v15 = sub_1D726446C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v27 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v35 = 0;
  v20 = v33;
  sub_1D726443C();
  if (!v20)
  {
    v33 = v16;
    v22 = v28;
    v21 = v29;
    v23 = v31;
    sub_1D5D39FE4(v31, v29);
    v24 = v30;
    static FormatCodingMetadataStrategy.defaultValue.getter(v30);
    v25 = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(v21, v24);
    sub_1D5D3A908(v24);
    sub_1D5D3A908(v21);
    if ((v25 & 1) == 0)
    {
      sub_1D5D39FE4(v23, v22);
      v34 = 1;
      sub_1D5C3548C(&qword_1EDF11B70, &protocol conformance descriptor for FormatMetadata);
      sub_1D726443C();
      sub_1D5D3A908(v22);
    }

    v16 = v33;
  }

  return (*(v16 + 8))(v19, v15);
}

uint64_t FormatStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v115 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v119 = &v114 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v121 = &v114 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v118 = &v114 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v114 - v17;
  sub_1D5D2EC68(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = v1[1];
  v26 = v1[7];
  v120 = v1[6];
  v117 = v26;
  v116 = v1[8];
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D5C2E730(0);
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EDF24CC8, sub_1D5C2E730, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatStyle, v30, v32, v27, &type metadata for FormatStyle, v30, &type metadata for FormatVersions.JazzkonC, v28, v23, v31, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v123 = v33;
  v124 = v34;
  v126 = v35 + 16;
  v127 = v36;
  (v36)(v18);
  v125 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v135 = v24;
  v136 = v25;
  v133 = 0uLL;
  v134 = 0;
  v37 = &v23[*(v20 + 44)];
  *&v130 = v18;
  v38 = *v37;
  v39 = *(v37 + 1);
  v137 = 0;
  v40 = swift_allocObject();
  *&v131 = &v114;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v137;
  *(v40 + 40) = v38;
  *(v40 + 48) = v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  *(&v114 - 4) = sub_1D5B4AA6C;
  *(&v114 - 3) = 0;
  v112 = sub_1D6708BAC;
  v113 = v42;
  v137 = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v137;
  v122 = v38;
  *(v43 + 40) = v38;
  *(v43 + 48) = v39;
  sub_1D5D2ECFC(0);
  v45 = v44;
  v46 = sub_1D5B58B84(&qword_1EDF02BA8, sub_1D5D2ECFC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v128 = v46;
  v129 = v45;
  v47 = sub_1D72647CC();
  v137 = 0;
  v48 = v23;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v47;
  *(v49 + 40) = v137;
  v50 = &v48[*(v20 + 36)];
  v51 = *(v50 + 3);
  v52 = *(v50 + 4);
  v53 = __swift_project_boxed_opaque_existential_1(v50, v51);
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  *(&v114 - 4) = sub_1D615B4A4;
  *(&v114 - 3) = (&v114 - 6);
  v112 = sub_1D6708BAC;
  v113 = v43;
  v57 = v130;
  v58 = v132;
  sub_1D5D2BC70(v130, sub_1D615B49C, v59, sub_1D615B4A4, (&v114 - 6), v51, v52);
  if (v58)
  {
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

    v60 = v48;
  }

  else
  {
    *&v132 = v50;
    v114 = v39;

    sub_1D72647EC();
    v60 = v48;
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

    v61 = v118;
    v62 = v123;
    v63 = v124;
    v64 = v127;
    v127(v118, v124, v123);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
    v64(v61, v63, v62);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
    v65 = v121;
    v64(v121, v63, v62);
    swift_storeEnumTagMultiPayload();
    if (*(v120 + 16))
    {
      LOBYTE(v133) = 0;
      v66 = swift_allocObject();
      v131 = xmmword_1D72BAA60;
      *(v66 + 16) = xmmword_1D72BAA60;
      *(v66 + 32) = v133;
      *(v66 + 40) = v122;
      *(v66 + 48) = v114;

      v67 = v65;
      v68 = sub_1D72647CC();
      LOBYTE(v133) = 0;
      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      *(v69 + 24) = v131;
      *(v69 + 40) = v133;
      v70 = *(v132 + 24);
      v71 = *(v132 + 32);
      v72 = __swift_project_boxed_opaque_existential_1(v132, v70);
      MEMORY[0x1EEE9AC00](v72, v73);
      MEMORY[0x1EEE9AC00](v74, v75);
      *(&v114 - 4) = sub_1D5B4AA6C;
      *(&v114 - 3) = 0;
      v112 = sub_1D66C09A0;
      v113 = v66;
      v77 = sub_1D5D2F7A4(v67, sub_1D615B49C, v76, sub_1D615B4A4, (&v114 - 6), v70, v71);
      v78 = v119;
      v82 = v77;

      if (v82)
      {
        v133 = v131;
        v134 = 0;
        v135 = v120;
        sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
        sub_1D5D2FA60();
        sub_1D72647EC();
        v81 = v132;
        *&v131 = 0;

        sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
        v80 = v122;
        v62 = v123;
        v79 = v114;
        v63 = v124;
      }

      else
      {
        *&v131 = 0;
        sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);

        v80 = v122;
        v62 = v123;
        v79 = v114;
        v63 = v124;
        v81 = v132;
      }
    }

    else
    {
      *&v131 = 0;
      sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
      v78 = v119;
      v79 = v114;
      v80 = v122;
      v81 = v132;
    }

    v127(v78, v63, v62);
    swift_storeEnumTagMultiPayload();
    if (*(v117 + 16))
    {
      LOBYTE(v133) = 0;
      v83 = swift_allocObject();
      v130 = xmmword_1D72BAA70;
      *(v83 + 16) = xmmword_1D72BAA70;
      *(v83 + 32) = v133;
      *(v83 + 40) = v80;
      *(v83 + 48) = v79;

      v84 = sub_1D72647CC();
      LOBYTE(v133) = 0;
      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      *(v85 + 24) = v130;
      *(v85 + 40) = v133;
      v86 = v81[3];
      v87 = v81[4];
      v88 = __swift_project_boxed_opaque_existential_1(v81, v86);
      MEMORY[0x1EEE9AC00](v88, v89);
      MEMORY[0x1EEE9AC00](v90, v91);
      *(&v114 - 4) = sub_1D5B4AA6C;
      *(&v114 - 3) = 0;
      v112 = sub_1D6708BAC;
      v113 = v83;
      v92 = v131;
      v94 = sub_1D5D2F7A4(v78, sub_1D615B49C, v93, sub_1D615B4A4, (&v114 - 6), v86, v87);
      v95 = v92;
      if (v92)
      {
        sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v60, sub_1D5D2EC68);
      }

      v96 = v94;

      if (v96)
      {
        v133 = v130;
        v134 = 0;
        v135 = v117;
        sub_1D5C34D84(0, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
        sub_1D6659404();
        sub_1D72647EC();
        v81 = v132;

        sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
        v80 = v122;
        v62 = v123;
        v79 = v114;
      }

      else
      {
        sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

        v80 = v122;
        v62 = v123;
        v79 = v114;
        v81 = v132;
      }
    }

    else
    {
      sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
      v95 = v131;
    }

    v97 = v115;
    v127(v115, v124, v62);
    swift_storeEnumTagMultiPayload();
    if (*(v116 + 16))
    {
      LOBYTE(v133) = 0;
      v98 = swift_allocObject();
      v132 = xmmword_1D72BAA80;
      *(v98 + 16) = xmmword_1D72BAA80;
      *(v98 + 32) = v133;
      *(v98 + 40) = v80;
      *(v98 + 48) = v79;

      v99 = sub_1D72647CC();
      LOBYTE(v133) = 0;
      v100 = v95;
      v101 = swift_allocObject();
      *(v101 + 16) = v99;
      *(v101 + 24) = v132;
      *(v101 + 40) = v133;
      v102 = v81[3];
      v103 = v81[4];
      v104 = __swift_project_boxed_opaque_existential_1(v81, v102);
      MEMORY[0x1EEE9AC00](v104, v105);
      MEMORY[0x1EEE9AC00](v106, v107);
      *(&v114 - 4) = sub_1D5B4AA6C;
      *(&v114 - 3) = 0;
      v112 = sub_1D6708BAC;
      v113 = v98;
      v109 = sub_1D5D2F7A4(v97, sub_1D615B49C, v108, sub_1D615B4A4, (&v114 - 6), v102, v103);
      if (v100)
      {
        sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v60, sub_1D5D2EC68);
      }

      v111 = v109;

      if ((v111 & 1) == 0)
      {
        sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v60, sub_1D5D2EC68);
      }

      v133 = v132;
      v134 = 0;
      v135 = v116;
      sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      sub_1D60AD304();
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v60, sub_1D5D2EC68);
}

void sub_1D5D2EC68(uint64_t a1)
{
  if (!qword_1EDF088E0)
  {
    sub_1D5D2ECFC(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02BA8, sub_1D5D2ECFC, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF088E0);
    }
  }
}

void sub_1D5D2ECFC(uint64_t a1)
{
  if (!qword_1EDF02BA0)
  {
    sub_1D5C2E730(255);
    sub_1D5B58B84(&qword_1EDF24CC8, sub_1D5C2E730, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02BA0);
    }
  }
}

uint64_t sub_1D5D2EDA8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1D5B49474(319, &qword_1EDF01CD0, MEMORY[0x1E69E7768]);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FormatVersionRequirement(319);
      if (v4 <= 0x3F)
      {
        result = sub_1D5B5D9E0();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5D2EE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v32 = a5;
  v33 = a1;
  v30 = a3;
  v34 = a9;
  v16 = *(a7 - 8);
  v31 = a11;
  MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D726446C();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v30 - v21;
  sub_1D7264B5C();
  v35[3] = a4;
  v35[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v11, a4);
  (*(v16 + 16))(v18, v30, a7);
  v24 = swift_allocObject();
  v26 = v32;
  v25 = v33;
  v24[2] = a4;
  v24[3] = v26;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  v24[7] = a10;
  v27 = v31;
  v24[8] = v31;
  v24[9] = v25;
  WitnessTable = swift_getWitnessTable();
  return sub_1D5D2F0A4(v22, v35, v18, sub_1D71B6A38, v24, v19, a7, WitnessTable, v34, v27);
}

uint64_t sub_1D5D2F0A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = *(a6 - 8);
  (*(v18 + 16))(a9, a1, a6);
  v20 = type metadata accessor for VersionedKeyedEncodingContainer(0, a6, a8, v19);
  sub_1D5B68374(a2, a9 + *(v20 + 36));
  sub_1D5D2F20C(a3, a7, a10);
  (*(*(a7 - 8) + 8))(a3, a7);
  __swift_destroy_boxed_opaque_existential_1(a2);
  result = (*(v18 + 8))(a1, a6);
  v22 = (a9 + *(v20 + 44));
  *v22 = a4;
  v22[1] = a5;
  return result;
}

uint64_t sub_1D5D2F20C(void x0_0, uint64_t a1, uint64_t a2)
{
  sub_1D5D2F260(a1, a2);
  type metadata accessor for FormatVersionRequirement.Value(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D5D2F294()
{
  sub_1D5D2F2BC();
}

uint64_t sub_1D5D2F2C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_5Tm(void (*a1)(void, void, void))
{

  a1(*(v1 + 24), *(v1 + 32), *(v1 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{

  if (*(v0 + 32) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_1()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v16[0] = *(v0 + 16);
  v16[1] = v2;
  v3 = *(v0 + 64);
  v16[2] = *(v0 + 48);
  v16[3] = v3;
  v17 = v1;
  inserted = type metadata accessor for FeedNativeAdInsertBlueprintModifier(0, v16);
  v5 = *(*(inserted - 1) + 80);
  v6 = (v0 + ((v5 + 88) & ~v5));
  __swift_destroy_boxed_opaque_existential_1(v6);
  v7 = v6 + inserted[23];
  v8 = sub_1D7260E3C();
  (*(*(v8 - 8) + 8))(v7, v8);
  type metadata accessor for FeedNativeAdInsertion(0);

  v9 = (v6 + inserted[24]);

  v10 = type metadata accessor for FeedContext(0);
  v11 = v9 + v10[5];
  v12 = type metadata accessor for BundleSession(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = *(v12 + 20);
    v14 = sub_1D725891C();
    (*(*(v14 - 8) + 8))(&v11[v13], v14);
  }

  if (*(v9 + v10[12] + 8) - 1 >= 3)
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v6 + inserted[25]));
  __swift_destroy_boxed_opaque_existential_1((v6 + inserted[26]));

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_2()
{
  v1 = sub_1D7258DBC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_3()
{
  v1 = sub_1D725EECC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D2F7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a5;
  v33 = a1;
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v31 - v17;
  v19 = sub_1D7264B4C();
  Dictionary<>.formatCodingVersionInfo.getter(v19, v18);
  v20 = type metadata accessor for FormatVersionInfo(0);
  v21 = (*(*(v20 - 8) + 48))(v18, 1, v20);
  if (v21)
  {
    sub_1D5D2C7C0(v18, v14, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    Dictionary<>.formatCodingVersionInfo.setter(v14, v19);

    sub_1D5D2CCD8(v18, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    LOBYTE(v23) = 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21, v22);
    *(&v31 - 2) = a2;
    *(&v31 - 1) = a3;
    v26 = MEMORY[0x1EEE9AC00](v24, v25);
    v27 = v32;
    *(&v31 - 2) = a4;
    *(&v31 - 1) = v27;
    v29 = sub_1D6021F3C(v33, sub_1D6026DEC, v28, sub_1D6026DE8, (&v31 - 4), v26);
    if (v7)
    {
      v23 = &qword_1EDF2EC70;
      sub_1D5D2C7C0(v18, v14, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
      Dictionary<>.formatCodingVersionInfo.setter(v14, v19);

      sub_1D5D2CCD8(v18, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    }

    else
    {
      LOBYTE(v23) = v29;
      Dictionary<>.formatCodingVersionInfo.setter(v18, v19);
    }
  }

  return v23 & 1;
}

unint64_t sub_1D5D2FA60()
{
  result = qword_1EDF04FF8;
  if (!qword_1EDF04FF8)
  {
    sub_1D5C34D84(255, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
    sub_1D5C2E6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04FF8);
  }

  return result;
}

uint64_t FormatNodeStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v161 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v160 = &v144 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v159 = &v144 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v158 = &v144 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v157 = &v144 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v156 = &v144 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v155 = &v144 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v154 = &v144 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v152 = &v144 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v151 = &v144 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v150 = &v144 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v149 = &v144 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v148 = &v144 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v153 = &v144 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v147 = &v144 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v146 = &v144 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v145 = &v144 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v144 - v56;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v61 = &v144 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *v1;
  v144 = *(v1 + 16);
  v162 = v62;
  v63 = *(v1 + 32);
  v64 = *(v1 + 40);
  v66 = *(v1 + 48);
  v65 = *(v1 + 56);
  v67 = a1[3];
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v67);
  v69 = sub_1D5C30408();
  v169 = v61;
  sub_1D5D2EE70(&type metadata for FormatNodeStyle, &type metadata for FormatCodingKeys, v70, v67, &type metadata for FormatNodeStyle, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v68, v61, v69, &off_1F51F6C78);
  switch(v66 >> 59)
  {
    case 1uLL:
      v116 = v162;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD30);
      v78 = v145;
      (*(*(v117 - 8) + 16))(v145, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      sub_1D5D30EB8(1, v116, v78);
      goto LABEL_53;
    case 2uLL:
      v100 = v162;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v101 = sub_1D725BD1C();
      v102 = __swift_project_value_buffer(v101, qword_1EDFFCD30);
      v103 = v146;
      (*(*(v101 - 8) + 16))(v146, v102, v101);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v104 = v100;
      v74 = v169;
      sub_1D63B83AC(2, v104, v103);
      v75 = v103;
      break;
    case 3uLL:
      v109 = v162;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v110 = sub_1D725BD1C();
      v111 = __swift_project_value_buffer(v110, qword_1EDFFCD30);
      v78 = v147;
      (*(*(v110 - 8) + 16))(v147, v111, v110);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      sub_1D63B8578(3, v109, v78);
      goto LABEL_53;
    case 4uLL:
      v88 = v162;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v89 = sub_1D725BD1C();
      v90 = __swift_project_value_buffer(v89, qword_1EDFFCD30);
      v78 = v153;
      (*(*(v89 - 8) + 16))(v153, v90, v89);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v91 = v163;
      sub_1D63B8744(4, v88, v78);
      if (!v91)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 5uLL:
      v123 = v162;
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v124 = sub_1D725BD1C();
      v125 = __swift_project_value_buffer(v124, qword_1EDFFCD18);
      v78 = v148;
      (*(*(v124 - 8) + 16))(v148, v125, v124);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v126 = v163;
      sub_1D63B8910(5, v123, v78);
      if (v126)
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    case 6uLL:
      v132 = v162;
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v133 = sub_1D725BD1C();
      v134 = __swift_project_value_buffer(v133, qword_1EDFFCD18);
      v78 = v149;
      (*(*(v133 - 8) + 16))(v149, v134, v133);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v135 = v163;
      sub_1D63B8ADC(6, v132, v78);
      if (!v135)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 7uLL:
      v112 = v162;
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v113 = sub_1D725BD1C();
      v114 = __swift_project_value_buffer(v113, qword_1EDFFCDC8);
      v78 = v150;
      (*(*(v113 - 8) + 16))(v150, v114, v113);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v115 = v163;
      sub_1D63B8CA8(7, v112, v78);
      if (!v115)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 8uLL:
      v140 = v162;
      if (qword_1EDF31EF0 != -1)
      {
        swift_once();
      }

      v141 = sub_1D725BD1C();
      v142 = __swift_project_value_buffer(v141, qword_1EDFFCDB0);
      v78 = v151;
      (*(*(v141 - 8) + 16))(v151, v142, v141);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v143 = v163;
      sub_1D63B8E74(8, v140, v78);
      if (!v143)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 9uLL:
      v96 = v162;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCD98);
      v78 = v152;
      (*(*(v97 - 8) + 16))(v152, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v99 = v163;
      sub_1D63B9040(9, v96, v78);
      if (!v99)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xAuLL:
      v136 = v162;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v137 = sub_1D725BD1C();
      v138 = __swift_project_value_buffer(v137, qword_1EDFFCD50);
      v78 = v154;
      (*(*(v137 - 8) + 16))(v154, v138, v137);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v139 = v163;
      sub_1D63B920C(10, v136, v78);
      if (!v139)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xBuLL:
      v84 = v162;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD50);
      v78 = v155;
      (*(*(v85 - 8) + 16))(v155, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v87 = v163;
      sub_1D63B93D8(11, v84, v78);
      if (!v87)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xCuLL:
      v92 = v162;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD50);
      v78 = v156;
      (*(*(v93 - 8) + 16))(v156, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v95 = v163;
      sub_1D63B95A4(12, v92, v78);
      if (!v95)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xDuLL:
      v127 = v162;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v128 = sub_1D725BD1C();
      v129 = __swift_project_value_buffer(v128, qword_1EDFFCD50);
      v78 = v157;
      (*(*(v128 - 8) + 16))(v157, v129, v128);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v130 = v163;
      sub_1D63B9770(13, v127, v78);
      if (!v130)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xEuLL:
      v80 = v162;
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCD00);
      v78 = v158;
      (*(*(v81 - 8) + 16))(v158, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v83 = v163;
      sub_1D63B993C(14, v80, v78);
      if (!v83)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xFuLL:
      v105 = v162;
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v106 = sub_1D725BD1C();
      v107 = __swift_project_value_buffer(v106, qword_1EDFFCD00);
      v78 = v159;
      (*(*(v106 - 8) + 16))(v159, v107, v106);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v108 = v163;
      sub_1D63B9B08(15, v105, v78);
      if (!v108)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0x10uLL:
      v164[0] = v162;
      v164[1] = v144;
      v165 = v63;
      v166 = v64;
      v167 = v66 & 0x7FFFFFFFFFFFFFFLL;
      v168 = v65;
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EDFFCE98);
      v78 = v160;
      (*(*(v76 - 8) + 16))(v160, v77, v76);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v79 = v163;
      sub_1D63B9CD4(16, v164, v78);
      if (v79)
      {
        goto LABEL_53;
      }

LABEL_57:
      v75 = v78;
      break;
    case 0x11uLL:
      v119 = v162;
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v120 = sub_1D725BD1C();
      v121 = __swift_project_value_buffer(v120, qword_1EDFFCE80);
      v78 = v161;
      (*(*(v120 - 8) + 16))(v161, v121, v120);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v122 = v163;
      sub_1D63B9E74(17, v119, v78);
      if (v122)
      {
LABEL_53:
        v75 = v78;
      }

      else
      {
        v75 = v78;
      }

      break;
    default:
      v71 = v162;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCD30);
      (*(*(v72 - 8) + 16))(v57, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      sub_1D5D45D90(0, v71, v57);
      v75 = v57;
      break;
  }

  sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v74, sub_1D5D30DC4);
}

void sub_1D5D30DC4(uint64_t a1)
{
  if (!qword_1EDF087C0)
  {
    sub_1D5C2FF94(255, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
    v3 = v2;
    v4 = sub_1D5D30E44();
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF087C0);
    }
  }
}

unint64_t sub_1D5D30E44()
{
  result = qword_1EDF02778;
  if (!qword_1EDF02778)
  {
    sub_1D5C2FF94(255, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02778);
  }

  return result;
}

uint64_t sub_1D5D30EB8(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091E0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D312F0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatTextNodeStyle();
    sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle, &protocol conformance descriptor for FormatTextNodeStyle);
    sub_1D72647EC();
  }
}

uint64_t sub_1D5D31088(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5D30DC4(0);
  v11 = v10;
  v12 = (v5 + *(v10 + 44));
  v14 = *v12;
  v13 = v12[1];
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v15[5] = v13;

  sub_1D5C30618(a2, a3);
  sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  sub_1D5D30E44();
  v16 = sub_1D72647CC();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v18 = (v5 + *(v11 + 36));
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v29 = sub_1D66F12A4;
  v30 = v17;
  v24 = a4;
  v25 = a5;
  v26 = sub_1D61A70D4;
  v27 = v15;
  sub_1D5C30618(a2, a3);
  LOBYTE(v19) = sub_1D5D2F7A4(a1, sub_1D615B49C, v28, sub_1D615B4A4, v23, v19, v20);

  return v19 & 1;
}

uint64_t sub_1D5D31260()
{
  if (*(v0 + 24) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D312A8()
{

  if (*(v0 + 32) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D5D312F0()
{
  result = qword_1EDF11860;
  if (!qword_1EDF11860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11860);
  }

  return result;
}

uint64_t sub_1D5D31394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5D313C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D5D313C0(char a1)
{
  result = 2003134838;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 1835365481;
      break;
    case 4:
      result = 0x6465626D45626577;
      break;
    case 5:
      result = 0x6D6F74737563;
      break;
    case 6:
      result = 0x656D656C70707573;
      break;
    case 7:
      result = 1633905005;
      break;
    case 8:
      result = 0x4D6465726579616CLL;
      break;
    case 9:
      result = 0x6F65646976;
      break;
    case 10:
      result = 0x766F436575737369;
      break;
    case 11:
      result = 0x70756F7267;
      break;
    case 12:
      result = 1802723693;
      break;
    case 13:
      result = 0x6F6974616D696E61;
      break;
    case 14:
      result = 0x616C506F65646976;
      break;
    case 15:
      result = 0x73736572676F7270;
      break;
    case 16:
      result = 0x6D45656C7A7A7570;
      break;
    case 17:
      result = 0x65726F736E6F7073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FormatTextNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v460 = &v432 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v435 = &v432 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v436 = &v432 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v437 = &v432 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v438 = &v432 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v439 = &v432 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v440 = &v432 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v444 = &v432 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v443 = &v432 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v445 = &v432 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v446 = &v432 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v447 = &v432 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v448 = &v432 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v449 = &v432 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v459 = (&v432 - v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v432 - v52;
  sub_1D5D35454(0);
  v461 = v54;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v432 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v58);
  sub_1D5C31AE8(0);
  v61 = v60;
  v62 = sub_1D5B58B84(&qword_1EDF25458, sub_1D5C31AE8, &unk_1D7321584);
  v458 = v57;
  sub_1D5D2EE70(v4, v61, v63, v58, v4, v61, &type metadata for FormatVersions.JazzkonC, v59, v57, v62, &off_1F51F6C78);
  swift_beginAccess();
  v456 = v2;
  v65 = v2[2];
  v64 = v2[3];
  v66 = qword_1EDF31EB0;

  if (v66 != -1)
  {
    swift_once();
  }

  v67 = sub_1D725BD1C();
  v68 = __swift_project_value_buffer(v67, qword_1EDFFCD30);
  v69 = *(v67 - 8);
  v70 = *(v69 + 16);
  v71 = v69 + 16;
  v457 = v68;
  v70(v53);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v73 = v460;
  sub_1D725892C();
  v74 = sub_1D725895C();
  v75 = (*(*(v74 - 8) + 48))(v73, 1, v74);
  v452 = v70;
  v453 = v67;
  v454 = v72;
  v455 = v71;
  if (v75 != 1)
  {
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v73, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_8;
  }

  v450 = v65;
  sub_1D5D35558(v73, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v76 = v461;
  v77 = v458;
  v78 = &v458[*(v461 + 11)];
  v80 = *v78;
  v79 = *(v78 + 1);
  v81 = v53;
  LOBYTE(v492) = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  *(v82 + 24) = 0;
  *(v82 + 32) = v492;
  *(v82 + 40) = v80;
  *(v82 + 48) = v79;
  sub_1D5D353C0(0);
  v84 = v83;
  sub_1D5B58B84(&qword_1EDF03498, sub_1D5D353C0, MEMORY[0x1E69E6F60]);

  v451 = v84;
  v85 = sub_1D72647CC();
  LOBYTE(v492) = 0;
  v86 = swift_allocObject();
  *(v86 + 24) = 0;
  *(v86 + 32) = 0;
  *(v86 + 16) = v85;
  *(v86 + 40) = v492;
  v87 = (v77 + *(v76 + 9));
  v88 = v87[3];
  v89 = v87[4];
  v90 = __swift_project_boxed_opaque_existential_1(v87, v88);
  *&v460 = &v432;
  MEMORY[0x1EEE9AC00](v90, v91);
  MEMORY[0x1EEE9AC00](v92, v93);
  *(&v432 - 4) = sub_1D5B4AA6C;
  *(&v432 - 3) = 0;
  v430 = sub_1D66C8FFC;
  v431 = v82;
  v94 = v462;
  v96 = sub_1D5D2F7A4(v81, sub_1D615B49C, v95, sub_1D615B4A4, (&v432 - 6), v88, v89);
  v462 = v94;
  if (v94)
  {
    sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

    v97 = v77;
    return sub_1D5D2CFE8(v97, sub_1D5D35454);
  }

  v125 = v96;

  if ((v125 & 1) == 0)
  {
    sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

    v70 = v452;
    v67 = v453;
    goto LABEL_8;
  }

  v492 = 0uLL;
  LOBYTE(v493) = 0;
  *&v479 = v450;
  *(&v479 + 1) = v64;
  v126 = v458;
  v127 = v462;
  sub_1D72647EC();

  sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);
  v70 = v452;
  v67 = v453;
  if (!v127)
  {
    v462 = 0;
LABEL_8:
    v99 = v456[4];
    v100 = v456[5];
    (v70)(v459, v457, v67);
    swift_storeEnumTagMultiPayload();
    *&v479 = v99;
    *(&v479 + 1) = v100;
    v460 = xmmword_1D728CF30;
    v492 = xmmword_1D728CF30;
    LOBYTE(v493) = 0;
    v101 = v458;
    v102 = &v458[*(v461 + 11)];
    v104 = *v102;
    v103 = *(v102 + 1);
    LOBYTE(v464) = 0;
    v105 = swift_allocObject();
    v451 = &v432;
    *(v105 + 16) = v460;
    *(v105 + 32) = v464;
    *(v105 + 40) = v104;
    *(v105 + 48) = v103;
    MEMORY[0x1EEE9AC00](v105, v106);
    v450 = &v432 - 6;
    *(&v432 - 4) = sub_1D5B4AA6C;
    *(&v432 - 3) = 0;
    v430 = sub_1D6708BFC;
    v431 = v107;
    LOBYTE(v464) = 0;
    v108 = swift_allocObject();
    *(v108 + 16) = v460;
    *(v108 + 32) = v464;
    v434 = v104;
    *(v108 + 40) = v104;
    *(v108 + 48) = v103;
    sub_1D5D353C0(0);
    v110 = v109;
    v111 = sub_1D5B58B84(&qword_1EDF03498, sub_1D5D353C0, MEMORY[0x1E69E6F60]);
    v433 = v103;
    swift_retain_n();
    v441 = v111;
    v442 = v110;
    v112 = sub_1D72647CC();
    LOBYTE(v464) = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = v112;
    *(v113 + 24) = v460;
    *(v113 + 40) = v464;
    v114 = (v101 + *(v461 + 9));
    v115 = v114[3];
    v116 = v114[4];
    v117 = __swift_project_boxed_opaque_existential_1(v114, v115);
    MEMORY[0x1EEE9AC00](v117, v118);
    MEMORY[0x1EEE9AC00](v119, v120);
    v121 = v450;
    *(&v432 - 4) = sub_1D615B4A4;
    *(&v432 - 3) = v121;
    v430 = sub_1D6708BFC;
    v431 = v108;
    v122 = v459;
    v123 = v462;
    sub_1D5D2BC70(v459, sub_1D615B49C, v124, sub_1D615B4A4, (&v432 - 6), v115, v116);
    if (v123)
    {
      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

      v97 = v101;
      return sub_1D5D2CFE8(v97, sub_1D5D35454);
    }

    v461 = v114;

    sub_1D72647EC();
    v462 = 0;
    sub_1D5D2CFE8(v459, type metadata accessor for FormatVersionRequirement);

    v128 = v456;
    swift_beginAccess();
    v129 = v128[6];
    v130 = v449;
    v131 = v457;
    v132 = v452;
    v133 = v453;
    (v452)(v449, v457, v453);
    swift_storeEnumTagMultiPayload();
    if (*(v129 + 16))
    {
      LOBYTE(v492) = 0;
      v134 = swift_allocObject();
      v460 = xmmword_1D7297410;
      *(v134 + 16) = xmmword_1D7297410;
      *(v134 + 32) = v492;
      v135 = v130;
      v136 = v434;
      *(v134 + 40) = v434;
      *(v134 + 48) = v433;

      v137 = sub_1D72647CC();
      LOBYTE(v492) = 0;
      v138 = swift_allocObject();
      *(v138 + 16) = v137;
      *(v138 + 24) = v460;
      *(v138 + 40) = v492;
      v140 = v461[3];
      v139 = v461[4];
      v141 = __swift_project_boxed_opaque_existential_1(v461, v140);
      v459 = &v432;
      MEMORY[0x1EEE9AC00](v141, v142);
      MEMORY[0x1EEE9AC00](v143, v144);
      *(&v432 - 4) = sub_1D5B4AA6C;
      *(&v432 - 3) = 0;
      v430 = sub_1D6708BFC;
      v431 = v134;
      v145 = v462;
      v147 = sub_1D5D2F7A4(v135, sub_1D615B49C, v146, sub_1D615B4A4, (&v432 - 6), v140, v139);
      if (v145)
      {
        sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);

LABEL_18:

LABEL_19:
        v97 = v458;
        return sub_1D5D2CFE8(v97, sub_1D5D35454);
      }

      v149 = v147;
      v148 = v136;

      if (v149)
      {
        v492 = v460;
        LOBYTE(v493) = 0;
        *&v479 = v129;
        sub_1D5C34D84(0, &qword_1EDF04F00, &type metadata for FormatTextNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D5D3AD58();
        sub_1D72647EC();
        v128 = v456;
        v132 = v452;
        v133 = v453;
        v462 = 0;

        sub_1D5D2CFE8(v449, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v462 = 0;
        sub_1D5D2CFE8(v449, type metadata accessor for FormatVersionRequirement);

        v128 = v456;
        v132 = v452;
        v133 = v453;
      }

      v131 = v457;
    }

    else
    {
      sub_1D5D2CFE8(v130, type metadata accessor for FormatVersionRequirement);
      v148 = v434;
    }

    v150 = v128[7];
    v132(v448, v131, v133);
    swift_storeEnumTagMultiPayload();
    v460 = xmmword_1D72BAA60;
    v527 = xmmword_1D72BAA60;
    v528 = 0;
    LOBYTE(v492) = 0;
    v151 = swift_allocObject();
    v153 = v151;
    *(v151 + 16) = v460;
    *(v151 + 32) = v492;
    *(v151 + 40) = v148;
    v154 = v148;
    v155 = v433;
    *(v151 + 48) = v433;
    if ((~v150 & 0xF000000000000007) != 0)
    {
      v459 = &v432;
      v526 = v150;
      MEMORY[0x1EEE9AC00](v151, v152);
      *(&v432 - 4) = sub_1D5B4AA6C;
      *(&v432 - 3) = 0;
      v430 = sub_1D6708BFC;
      v431 = v153;
      LOBYTE(v492) = 0;
      v167 = swift_allocObject();
      *(v167 + 16) = v460;
      *(v167 + 32) = v492;
      *(v167 + 40) = v154;
      *(v167 + 48) = v155;
      swift_retain_n();
      sub_1D5D04BD4(v150);
      v168 = sub_1D72647CC();
      LOBYTE(v492) = 0;
      v169 = swift_allocObject();
      *(v169 + 16) = v168;
      *(v169 + 24) = v460;
      *(v169 + 40) = v492;
      v170 = v461[3];
      v171 = v461[4];
      v172 = __swift_project_boxed_opaque_existential_1(v461, v170);
      MEMORY[0x1EEE9AC00](v172, v173);
      MEMORY[0x1EEE9AC00](v174, v175);
      *(&v432 - 4) = sub_1D615B4A4;
      *(&v432 - 3) = (&v432 - 6);
      v430 = sub_1D6708BFC;
      v431 = v167;
      v176 = v448;
      v177 = v462;
      v179 = sub_1D5D2F7A4(v448, sub_1D615B49C, v178, sub_1D615B4A4, (&v432 - 6), v170, v171);
      if (v177)
      {

        v180 = v458;

        v181 = v176;
LABEL_33:
        sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);
LABEL_34:
        v97 = v180;
        return sub_1D5D2CFE8(v97, sub_1D5D35454);
      }

      v196 = v179;

      if (v196)
      {
        sub_1D5B57BA4();
        sub_1D72647EC();
        v128 = v456;
        v132 = v452;
        v133 = v453;
        v462 = 0;
        v157 = v434;
        v197 = v447;

        v156 = v433;
        v158 = v197;
LABEL_29:
        sub_1D5D2CFE8(v448, type metadata accessor for FormatVersionRequirement);
        v159 = *(v128 + 9);
        v521 = *(v128 + 8);
        v522 = v159;
        v160 = *(v128 + 11);
        v523 = *(v128 + 10);
        v524 = v160;
        v161 = *(v128 + 5);
        v517 = *(v128 + 4);
        v518 = v161;
        v162 = *(v128 + 7);
        v519 = *(v128 + 6);
        v520 = v162;
        v163 = v457;
        v132(v158, v457, v133);
        swift_storeEnumTagMultiPayload();
        v460 = xmmword_1D72BAA70;
        v464 = xmmword_1D72BAA70;
        LOBYTE(v465) = 0;
        LOBYTE(v492) = 0;
        v164 = swift_allocObject();
        *(v164 + 16) = v460;
        *(v164 + 32) = v492;
        *(v164 + 40) = v157;
        *(v164 + 48) = v156;
        v525[4] = v521;
        v525[5] = v522;
        v525[6] = v523;
        v525[7] = v524;
        v525[0] = v517;
        v525[1] = v518;
        v525[2] = v519;
        v525[3] = v520;
        v165 = sub_1D5CFD0B8(v525);
        if (v165 == 1)
        {
        }

        else
        {
          v459 = &v432;
          v496 = v521;
          v497 = v522;
          v498 = v523;
          v499 = v524;
          v492 = v517;
          v493 = v518;
          v494 = v519;
          v495 = v520;
          MEMORY[0x1EEE9AC00](v165, v166);
          *(&v432 - 4) = sub_1D5B4AA6C;
          *(&v432 - 3) = 0;
          v430 = sub_1D6708BFC;
          v431 = v164;
          LOBYTE(v479) = 0;
          v182 = swift_allocObject();
          *(v182 + 16) = v460;
          *(v182 + 32) = v479;
          *(v182 + 40) = v157;
          *(v182 + 48) = v156;
          swift_retain_n();
          sub_1D5D355B8(&v517, &v479, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
          v183 = sub_1D72647CC();
          LOBYTE(v479) = 0;
          v184 = swift_allocObject();
          *(v184 + 16) = v183;
          *(v184 + 24) = v460;
          *(v184 + 40) = v479;
          v185 = v461[3];
          v186 = v461[4];
          v187 = __swift_project_boxed_opaque_existential_1(v461, v185);
          MEMORY[0x1EEE9AC00](v187, v188);
          MEMORY[0x1EEE9AC00](v189, v190);
          *(&v432 - 4) = sub_1D615B4A4;
          *(&v432 - 3) = (&v432 - 6);
          v430 = sub_1D6708BFC;
          v431 = v182;
          v191 = v447;
          v192 = v462;
          v194 = sub_1D5D2F7A4(v447, sub_1D615B49C, v193, sub_1D615B4A4, (&v432 - 6), v185, v186);
          if (v192)
          {

            v483 = v496;
            v484 = v497;
            v485 = v498;
            v486 = v499;
            v479 = v492;
            v480 = v493;
            v481 = v494;
            v482 = v495;
            sub_1D5CFD368(&v479);
            v195 = v458;
            sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
            v97 = v195;
            return sub_1D5D2CFE8(v97, sub_1D5D35454);
          }

          v198 = v194;

          if (v198)
          {
            sub_1D5D35694();
            sub_1D72647EC();
            v128 = v456;
            v132 = v452;
            v133 = v453;
            v462 = 0;

            v483 = v496;
            v484 = v497;
            v485 = v498;
            v486 = v499;
            v479 = v492;
            v480 = v493;
            v481 = v494;
            v482 = v495;
            sub_1D5CFD368(&v479);
          }

          else
          {
            v462 = 0;

            v483 = v496;
            v484 = v497;
            v485 = v498;
            v486 = v499;
            v479 = v492;
            v480 = v493;
            v481 = v494;
            v482 = v495;
            sub_1D5CFD368(&v479);
            v128 = v456;
            v132 = v452;
            v133 = v453;
          }

          v156 = v433;
          v163 = v457;
        }

        sub_1D5D2CFE8(v447, type metadata accessor for FormatVersionRequirement);
        v199 = v128[24];
        v132(v446, v163, v133);
        swift_storeEnumTagMultiPayload();
        v460 = xmmword_1D72BAA80;
        v515 = xmmword_1D72BAA80;
        v516 = 0;
        LOBYTE(v492) = 0;
        v200 = swift_allocObject();
        v202 = v200;
        *(v200 + 16) = v460;
        *(v200 + 32) = v492;
        v203 = v434;
        *(v200 + 40) = v434;
        *(v200 + 48) = v156;
        if (v199)
        {
          v459 = &v432;
          v514 = v199;
          MEMORY[0x1EEE9AC00](v200, v201);
          *(&v432 - 4) = sub_1D5B4AA6C;
          *(&v432 - 3) = 0;
          v430 = sub_1D6708BFC;
          v431 = v202;
          LOBYTE(v492) = 0;
          v204 = swift_allocObject();
          *(v204 + 16) = v460;
          *(v204 + 32) = v492;
          *(v204 + 40) = v203;
          *(v204 + 48) = v156;
          swift_retain_n();

          v205 = sub_1D72647CC();
          LOBYTE(v492) = 0;
          v206 = swift_allocObject();
          *(v206 + 16) = v205;
          *(v206 + 24) = v460;
          *(v206 + 40) = v492;
          v207 = v461[3];
          v208 = v461[4];
          v209 = __swift_project_boxed_opaque_existential_1(v461, v207);
          MEMORY[0x1EEE9AC00](v209, v210);
          MEMORY[0x1EEE9AC00](v211, v212);
          *(&v432 - 4) = sub_1D615B4A4;
          *(&v432 - 3) = (&v432 - 6);
          v430 = sub_1D6708BFC;
          v431 = v204;
          v213 = v446;
          v214 = v462;
          v216 = sub_1D5D2F7A4(v446, sub_1D615B49C, v215, sub_1D615B4A4, (&v432 - 6), v207, v208);
          v462 = v214;
          if (v214)
          {

            v217 = v458;
LABEL_47:
            v218 = v213;
LABEL_60:
            sub_1D5D2CFE8(v218, type metadata accessor for FormatVersionRequirement);
            v97 = v217;
            return sub_1D5D2CFE8(v97, sub_1D5D35454);
          }

          v219 = v216;

          if (v219)
          {
            sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
            sub_1D66612AC();
            v217 = v458;
            v220 = v462;
            sub_1D72647EC();
            v132 = v452;
            v462 = v220;
            if (v220)
            {

              goto LABEL_47;
            }

            v272 = v457;

            sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);
            v221 = v272;
            v156 = v433;
LABEL_54:
            v222 = v456;
            v223 = *(v456 + 31);
            v510 = *(v456 + 29);
            v511 = v223;
            v513 = *(v456 + 280);
            v224 = *(v456 + 27);
            v508 = *(v456 + 25);
            v509 = v224;
            v512 = *(v456 + 33);
            v225 = v221;
            (v132)(v445);
            swift_storeEnumTagMultiPayload();
            v460 = xmmword_1D72BAA90;
            v464 = xmmword_1D72BAA90;
            LOBYTE(v465) = 0;
            LOBYTE(v492) = 0;
            v226 = swift_allocObject();
            v228 = v226;
            *(v226 + 16) = v460;
            *(v226 + 32) = v492;
            v229 = v434;
            *(v226 + 40) = v434;
            *(v226 + 48) = v156;
            if (v513 == 254)
            {

              v230 = v156;
              v231 = v453;
            }

            else
            {
              v459 = &v432;
              v494 = v510;
              v495 = v511;
              v496 = v512;
              LOBYTE(v497) = v513;
              v492 = v508;
              v493 = v509;
              MEMORY[0x1EEE9AC00](v226, v227);
              *(&v432 - 4) = sub_1D5B4AA6C;
              *(&v432 - 3) = 0;
              v430 = sub_1D6708BFC;
              v431 = v228;
              LOBYTE(v479) = 0;
              v249 = swift_allocObject();
              *(v249 + 16) = v460;
              *(v249 + 32) = v479;
              *(v249 + 40) = v229;
              *(v249 + 48) = v156;
              swift_retain_n();
              sub_1D5D355B8(&v508, &v479, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
              v250 = sub_1D72647CC();
              LOBYTE(v479) = 0;
              v251 = swift_allocObject();
              *(v251 + 16) = v250;
              *(v251 + 24) = v460;
              *(v251 + 40) = v479;
              v252 = v461[3];
              v253 = v461[4];
              v254 = __swift_project_boxed_opaque_existential_1(v461, v252);
              MEMORY[0x1EEE9AC00](v254, v255);
              MEMORY[0x1EEE9AC00](v256, v257);
              *(&v432 - 4) = sub_1D615B4A4;
              *(&v432 - 3) = (&v432 - 6);
              v430 = sub_1D6708BFC;
              v431 = v249;
              v258 = v445;
              v259 = v462;
              v261 = sub_1D5D2F7A4(v445, sub_1D615B49C, v260, sub_1D615B4A4, (&v432 - 6), v252, v253);
              if (v259)
              {

                v481 = v494;
                v482 = v495;
                v483 = v496;
                LOBYTE(v484) = v497;
                v479 = v492;
                v480 = v493;
                sub_1D601144C(&v479);
                v262 = v458;
                sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);
                v97 = v262;
                return sub_1D5D2CFE8(v97, sub_1D5D35454);
              }

              v266 = v261;

              if (v266)
              {
                sub_1D6661204();
                sub_1D72647EC();
                v222 = v456;
                v267 = v453;
                v229 = v434;
                v462 = 0;

                v481 = v494;
                v482 = v495;
                v483 = v496;
                LOBYTE(v484) = v497;
                v479 = v492;
                v480 = v493;
                sub_1D601144C(&v479);
                v231 = v267;
                v230 = v433;
                v225 = v457;
              }

              else
              {
                v462 = 0;

                v481 = v494;
                v482 = v495;
                v483 = v496;
                LOBYTE(v484) = v497;
                v479 = v492;
                v480 = v493;
                sub_1D601144C(&v479);
                v225 = v457;
                v222 = v456;
                v231 = v453;
                v230 = v433;
                v229 = v434;
              }
            }

            sub_1D5D2CFE8(v445, type metadata accessor for FormatVersionRequirement);
            v232 = v222[36];
            v233 = v443;
            (v452)(v443, v225, v231);
            swift_storeEnumTagMultiPayload();
            v460 = xmmword_1D72BAAA0;
            v506 = xmmword_1D72BAAA0;
            v507 = 0;
            LOBYTE(v492) = 0;
            v234 = swift_allocObject();
            v236 = v234;
            *(v234 + 16) = v460;
            *(v234 + 32) = v492;
            *(v234 + 40) = v229;
            *(v234 + 48) = v230;
            if (v232)
            {
              v459 = &v432;
              v505 = v232;
              MEMORY[0x1EEE9AC00](v234, v235);
              *(&v432 - 4) = sub_1D5B4AA6C;
              *(&v432 - 3) = 0;
              v430 = sub_1D6708BFC;
              v431 = v236;
              LOBYTE(v492) = 0;
              v237 = swift_allocObject();
              *(v237 + 16) = v460;
              *(v237 + 32) = v492;
              *(v237 + 40) = v229;
              *(v237 + 48) = v230;
              swift_retain_n();

              v238 = sub_1D72647CC();
              LOBYTE(v492) = 0;
              v239 = swift_allocObject();
              *(v239 + 16) = v238;
              *(v239 + 24) = v460;
              *(v239 + 40) = v492;
              v240 = v461[3];
              v241 = v461[4];
              v242 = __swift_project_boxed_opaque_existential_1(v461, v240);
              MEMORY[0x1EEE9AC00](v242, v243);
              MEMORY[0x1EEE9AC00](v244, v245);
              *(&v432 - 4) = sub_1D615B4A4;
              *(&v432 - 3) = (&v432 - 6);
              v430 = sub_1D6708BFC;
              v431 = v237;
              v246 = v462;
              v248 = sub_1D5D2F7A4(v233, sub_1D615B49C, v247, sub_1D615B4A4, (&v432 - 6), v240, v241);
              v462 = v246;
              if (v246)
              {

                v217 = v458;
LABEL_59:
                v218 = v233;
                goto LABEL_60;
              }

              v268 = v248;

              v269 = v444;
              if (v268)
              {
                sub_1D5C34D84(0, &qword_1EDF1B060, &type metadata for FormatTextNodeTransform, MEMORY[0x1E69E62F8]);
                sub_1D5D436D8();
                v217 = v458;
                v270 = v462;
                sub_1D72647EC();
                v271 = v453;
                v462 = v270;
                v229 = v434;
                if (v270)
                {

                  v233 = v443;
                  goto LABEL_59;
                }

                v273 = v457;

                sub_1D5D2CFE8(v443, type metadata accessor for FormatVersionRequirement);
                v264 = v273;
                v265 = v271;
                v230 = v433;
              }

              else
              {

                sub_1D5D2CFE8(v233, type metadata accessor for FormatVersionRequirement);
                v265 = v453;
                v230 = v433;
                v229 = v434;
                v264 = v457;
              }

              v263 = v269;
            }

            else
            {

              sub_1D5D2CFE8(v233, type metadata accessor for FormatVersionRequirement);

              v263 = v444;
              v264 = v225;
              v265 = v231;
            }

            v274 = v456;
            v275 = *(v456 + 59);
            v489 = *(v456 + 57);
            v490 = v275;
            v491 = *(v456 + 244);
            v276 = *(v456 + 51);
            v485 = *(v456 + 49);
            v486 = v276;
            v277 = *(v456 + 55);
            v487 = *(v456 + 53);
            v488 = v277;
            v278 = *(v456 + 43);
            v481 = *(v456 + 41);
            v482 = v278;
            v279 = *(v456 + 47);
            v483 = *(v456 + 45);
            v484 = v279;
            v280 = *(v456 + 39);
            v479 = *(v456 + 37);
            v480 = v280;
            v281 = v264;
            v282 = v265;
            v452(v263);
            swift_storeEnumTagMultiPayload();
            v460 = xmmword_1D72BAAB0;
            v477 = xmmword_1D72BAAB0;
            v478 = 0;
            LOBYTE(v464) = 0;
            v283 = swift_allocObject();
            *(v283 + 16) = v460;
            *(v283 + 32) = v464;
            *(v283 + 40) = v229;
            *(v283 + 48) = v230;
            v502 = v489;
            v503 = v490;
            v504 = v491;
            v498 = v485;
            v499 = v486;
            v500 = v487;
            v501 = v488;
            v494 = v481;
            v495 = v482;
            v496 = v483;
            v497 = v484;
            v492 = v479;
            v493 = v480;
            v284 = sub_1D5D39FB4(&v492);
            if (v284 == 1)
            {

              v286 = v230;
              v287 = v282;
            }

            else
            {
              v459 = &v432;
              v476 = v491;
              v474 = v489;
              v475 = v490;
              v470 = v485;
              v471 = v486;
              v472 = v487;
              v473 = v488;
              v466 = v481;
              v467 = v482;
              v468 = v483;
              v469 = v484;
              v464 = v479;
              v465 = v480;
              MEMORY[0x1EEE9AC00](v284, v285);
              *(&v432 - 4) = sub_1D5B4AA6C;
              *(&v432 - 3) = 0;
              v430 = sub_1D6708BFC;
              v431 = v283;
              v463 = 0;
              v288 = swift_allocObject();
              *(v288 + 16) = v460;
              *(v288 + 32) = v463;
              *(v288 + 40) = v229;
              *(v288 + 48) = v230;
              swift_retain_n();
              v289 = sub_1D72647CC();
              v463 = 0;
              v290 = swift_allocObject();
              *(v290 + 16) = v289;
              *(v290 + 24) = v460;
              *(v290 + 40) = v463;
              v291 = v461[3];
              v292 = v461[4];
              v293 = __swift_project_boxed_opaque_existential_1(v461, v291);
              MEMORY[0x1EEE9AC00](v293, v294);
              MEMORY[0x1EEE9AC00](v295, v296);
              *(&v432 - 4) = sub_1D615B4A4;
              *(&v432 - 3) = (&v432 - 6);
              v297 = v444;
              v430 = sub_1D6708BFC;
              v431 = v288;
              v298 = v462;
              v300 = sub_1D5D2F7A4(v444, sub_1D615B49C, v299, sub_1D615B4A4, (&v432 - 6), v291, v292);
              if (v298)
              {
                goto LABEL_83;
              }

              v301 = v300;

              if (v301)
              {
                sub_1D5F0FAA4();
                sub_1D72647EC();
              }

              v462 = 0;
              v274 = v456;
              v281 = v457;
              v287 = v453;
              v286 = v433;
            }

            sub_1D5D2CFE8(v444, type metadata accessor for FormatVersionRequirement);

            v302 = v274[62];
            v303 = *(v274 + 504);
            v297 = v440;
            (v452)(v440, v281, v287);
            swift_storeEnumTagMultiPayload();
            v460 = xmmword_1D72BAAC0;
            v464 = xmmword_1D72BAAC0;
            LOBYTE(v465) = 0;
            LOBYTE(v477) = 0;
            v304 = swift_allocObject();
            v306 = v304;
            *(v304 + 16) = v460;
            *(v304 + 32) = v477;
            v307 = v434;
            *(v304 + 40) = v434;
            *(v304 + 48) = v286;
            if (v303)
            {

              goto LABEL_87;
            }

            v459 = &v432;
            *&v477 = v302;
            MEMORY[0x1EEE9AC00](v304, v305);
            *(&v432 - 4) = sub_1D5B4AA6C;
            *(&v432 - 3) = 0;
            v430 = sub_1D6708BFC;
            v431 = v306;
            v463 = 0;
            v308 = swift_allocObject();
            *(v308 + 16) = v460;
            *(v308 + 32) = v463;
            *(v308 + 40) = v307;
            *(v308 + 48) = v286;
            swift_retain_n();
            v309 = sub_1D72647CC();
            v463 = 0;
            v310 = swift_allocObject();
            *(v310 + 16) = v309;
            *(v310 + 24) = v460;
            *(v310 + 40) = v463;
            v311 = v461[3];
            v312 = v461[4];
            v313 = __swift_project_boxed_opaque_existential_1(v461, v311);
            MEMORY[0x1EEE9AC00](v313, v314);
            MEMORY[0x1EEE9AC00](v315, v316);
            *(&v432 - 4) = sub_1D615B4A4;
            *(&v432 - 3) = (&v432 - 6);
            v430 = sub_1D6708BFC;
            v431 = v308;
            v317 = v462;
            v319 = sub_1D5D2F7A4(v297, sub_1D615B49C, v318, sub_1D615B4A4, (&v432 - 6), v311, v312);
            if (!v317)
            {
              v320 = v319;

              if (v320)
              {
                sub_1D5B578C4();
                sub_1D72647EC();
              }

              v462 = 0;
              v274 = v456;
              v287 = v453;
              v307 = v434;
LABEL_87:
              sub_1D5D2CFE8(v440, type metadata accessor for FormatVersionRequirement);

              v321 = v274[64];
              if (qword_1EDF31EA8 != -1)
              {
                swift_once();
              }

              v322 = __swift_project_value_buffer(v287, qword_1EDFFCD18);
              v323 = v439;
              (v452)(v439, v322, v287);
              swift_storeEnumTagMultiPayload();
              v460 = xmmword_1D72BAAD0;
              v464 = xmmword_1D72BAAD0;
              LOBYTE(v465) = 0;
              LOBYTE(v477) = 0;
              v324 = swift_allocObject();
              v326 = v324;
              *(v324 + 16) = v460;
              *(v324 + 32) = v477;
              v327 = v433;
              *(v324 + 40) = v307;
              *(v324 + 48) = v327;
              if (v321)
              {
                v459 = &v432;
                *&v477 = v321;
                MEMORY[0x1EEE9AC00](v324, v325);
                *(&v432 - 4) = sub_1D5B4AA6C;
                *(&v432 - 3) = 0;
                v430 = sub_1D6708BFC;
                v431 = v326;
                v463 = 0;
                v328 = swift_allocObject();
                *(v328 + 16) = v460;
                *(v328 + 32) = v463;
                *(v328 + 40) = v307;
                *(v328 + 48) = v327;
                swift_retain_n();

                v329 = sub_1D72647CC();
                v463 = 0;
                v330 = swift_allocObject();
                *(v330 + 16) = v329;
                *(v330 + 24) = v460;
                *(v330 + 40) = v463;
                v331 = v461[3];
                v332 = v461[4];
                v333 = __swift_project_boxed_opaque_existential_1(v461, v331);
                MEMORY[0x1EEE9AC00](v333, v334);
                MEMORY[0x1EEE9AC00](v335, v336);
                *(&v432 - 4) = sub_1D615B4A4;
                *(&v432 - 3) = (&v432 - 6);
                v430 = sub_1D6708BFC;
                v431 = v328;
                v337 = v462;
                v339 = sub_1D5D2F7A4(v323, sub_1D615B49C, v338, sub_1D615B4A4, (&v432 - 6), v331, v332);
                if (v337)
                {

                  v180 = v458;

                  v181 = v323;
                  goto LABEL_33;
                }

                v340 = v339;

                if (v340)
                {
                  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
                  sub_1D66582DC();
                  sub_1D72647EC();
                }

                v462 = 0;

                sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);
                v274 = v456;
                v287 = v453;
                v307 = v434;
              }

              else
              {

                sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);
              }

              v341 = v438;
              v342 = v274[65];
              v343 = v274[66];
              if (qword_1EDF31EE8 != -1)
              {
                swift_once();
              }

              v344 = __swift_project_value_buffer(v287, qword_1EDFFCD98);
              (v452)(v341, v344, v287);
              swift_storeEnumTagMultiPayload();
              v460 = xmmword_1D72BAAE0;
              v464 = xmmword_1D72BAAE0;
              LOBYTE(v465) = 0;
              LOBYTE(v477) = 0;
              v345 = swift_allocObject();
              v347 = v345;
              *(v345 + 16) = v460;
              *(v345 + 32) = v477;
              v348 = v433;
              *(v345 + 40) = v307;
              *(v345 + 48) = v348;
              if (v342 == 9)
              {
              }

              else
              {
                LOBYTE(v477) = v342;
                *(&v477 + 1) = v343;
                MEMORY[0x1EEE9AC00](v345, v346);
                *(&v432 - 4) = sub_1D5B4AA6C;
                *(&v432 - 3) = 0;
                v430 = sub_1D6708BFC;
                v431 = v347;
                v463 = 0;
                v349 = swift_allocObject();
                *(v349 + 16) = v460;
                *(v349 + 32) = v463;
                *(v349 + 40) = v307;
                *(v349 + 48) = v348;
                swift_retain_n();
                sub_1D62B5D18(v342, v343);
                v350 = sub_1D72647CC();
                v463 = 0;
                v351 = swift_allocObject();
                *(v351 + 16) = v350;
                *(v351 + 24) = v460;
                *(v351 + 40) = v463;
                v352 = v461[3];
                v353 = v461[4];
                v354 = __swift_project_boxed_opaque_existential_1(v461, v352);
                MEMORY[0x1EEE9AC00](v354, v355);
                MEMORY[0x1EEE9AC00](v356, v357);
                *(&v432 - 4) = sub_1D615B4A4;
                *(&v432 - 3) = (&v432 - 6);
                v341 = v438;
                v430 = sub_1D6708BFC;
                v431 = v349;
                v358 = v462;
                v360 = sub_1D5D2F7A4(v438, sub_1D615B49C, v359, sub_1D615B4A4, (&v432 - 6), v352, v353);
                if (v358)
                {
                  goto LABEL_109;
                }

                v361 = v360;

                if (v361)
                {
                  sub_1D66C908C();
                  sub_1D72647EC();
                }

                v462 = 0;

                sub_1D5C84FF4(*(&v477 + 1));
                v287 = v453;
              }

              v362 = v452;
              sub_1D5D2CFE8(v341, type metadata accessor for FormatVersionRequirement);
              v363 = v456[67];
              v364 = v456[68];
              v365 = v434;
              if (qword_1EDF31ED0 != -1)
              {
                swift_once();
              }

              v366 = __swift_project_value_buffer(v287, qword_1EDFFCD50);
              v367 = v362;
              v362(v437, v366, v287);
              swift_storeEnumTagMultiPayload();
              v460 = xmmword_1D72BAAF0;
              v464 = xmmword_1D72BAAF0;
              LOBYTE(v465) = 0;
              LOBYTE(v477) = 0;
              v368 = swift_allocObject();
              v370 = v368;
              *(v368 + 16) = v460;
              *(v368 + 32) = v477;
              v371 = v433;
              *(v368 + 40) = v365;
              *(v368 + 48) = v371;
              if (v363 == 9)
              {
                v372 = v287;

                goto LABEL_117;
              }

              LOBYTE(v477) = v363;
              *(&v477 + 1) = v364;
              MEMORY[0x1EEE9AC00](v368, v369);
              *(&v432 - 4) = sub_1D5B4AA6C;
              *(&v432 - 3) = 0;
              v430 = sub_1D6708BFC;
              v431 = v370;
              v463 = 0;
              v373 = swift_allocObject();
              *(v373 + 16) = v460;
              *(v373 + 32) = v463;
              *(v373 + 40) = v365;
              *(v373 + 48) = v371;
              swift_retain_n();
              sub_1D62B5D18(v363, v364);
              v374 = sub_1D72647CC();
              v463 = 0;
              v375 = swift_allocObject();
              *(v375 + 16) = v374;
              *(v375 + 24) = v460;
              *(v375 + 40) = v463;
              v376 = v461[3];
              v377 = v461[4];
              v378 = __swift_project_boxed_opaque_existential_1(v461, v376);
              MEMORY[0x1EEE9AC00](v378, v379);
              MEMORY[0x1EEE9AC00](v380, v381);
              *(&v432 - 4) = sub_1D615B4A4;
              *(&v432 - 3) = (&v432 - 6);
              v430 = sub_1D6708BFC;
              v431 = v373;
              v341 = v437;
              v382 = v462;
              v384 = sub_1D5D2F7A4(v437, sub_1D615B49C, v383, sub_1D615B4A4, (&v432 - 6), v376, v377);
              if (!v382)
              {
                v462 = 0;
                v385 = v384;

                if (v385)
                {
                  sub_1D66C908C();
                  v386 = v462;
                  sub_1D72647EC();
                  if (v386)
                  {

                    v341 = v437;
                    goto LABEL_110;
                  }

                  sub_1D5C84FF4(*(&v477 + 1));
                  v462 = 0;
                }

                else
                {

                  sub_1D5C84FF4(*(&v477 + 1));
                }

                v367 = v452;
                v372 = v453;
LABEL_117:
                sub_1D5D2CFE8(v437, type metadata accessor for FormatVersionRequirement);
                v387 = *(v456 + 552);
                v388 = v435;
                v389 = v436;
                v390 = v434;
                if (qword_1EDF31F08 != -1)
                {
                  swift_once();
                }

                v391 = __swift_project_value_buffer(v372, qword_1EDFFCDE0);
                v367(v389, v391, v372);
                swift_storeEnumTagMultiPayload();
                v460 = xmmword_1D7282A80;
                v464 = xmmword_1D7282A80;
                LOBYTE(v465) = 0;
                LOBYTE(v477) = 0;
                v392 = swift_allocObject();
                v394 = v392;
                *(v392 + 16) = v460;
                *(v392 + 32) = v477;
                v395 = v433;
                *(v392 + 40) = v390;
                *(v392 + 48) = v395;
                if (v387 == 2)
                {
                }

                else
                {
                  v459 = &v432;
                  LOBYTE(v477) = v387 & 1;
                  MEMORY[0x1EEE9AC00](v392, v393);
                  *(&v432 - 4) = sub_1D5B4AA6C;
                  *(&v432 - 3) = 0;
                  v430 = sub_1D6708BFC;
                  v431 = v394;
                  v463 = 0;
                  v396 = swift_allocObject();
                  *(v396 + 16) = v460;
                  *(v396 + 32) = v463;
                  *(v396 + 40) = v390;
                  *(v396 + 48) = v395;
                  swift_retain_n();
                  v397 = sub_1D72647CC();
                  v463 = 0;
                  v398 = swift_allocObject();
                  *(v398 + 16) = v397;
                  *(v398 + 24) = v460;
                  *(v398 + 40) = v463;
                  v399 = v461[3];
                  v400 = v461[4];
                  v401 = __swift_project_boxed_opaque_existential_1(v461, v399);
                  MEMORY[0x1EEE9AC00](v401, v402);
                  MEMORY[0x1EEE9AC00](v403, v404);
                  *(&v432 - 4) = sub_1D615B4A4;
                  *(&v432 - 3) = (&v432 - 6);
                  v430 = sub_1D6708BFC;
                  v431 = v396;
                  v405 = v462;
                  v407 = sub_1D5D2F7A4(v389, sub_1D615B49C, v406, sub_1D615B4A4, (&v432 - 6), v399, v400);
                  if (v405)
                  {
                    sub_1D5D2CFE8(v389, type metadata accessor for FormatVersionRequirement);

                    goto LABEL_18;
                  }

                  v408 = v407;

                  if (v408)
                  {
                    sub_1D72647EC();
                  }

                  v462 = 0;
                  v388 = v435;
                  v367 = v452;
                  v372 = v453;
                }

                sub_1D5D2CFE8(v436, type metadata accessor for FormatVersionRequirement);

                v409 = v456[70];
                v410 = v434;
                if (qword_1EDF31E80 != -1)
                {
                  swift_once();
                }

                v411 = __swift_project_value_buffer(v372, qword_1EDFFCCA8);
                v367(v388, v411, v372);
                swift_storeEnumTagMultiPayload();
                v460 = xmmword_1D72BAB00;
                v464 = xmmword_1D72BAB00;
                LOBYTE(v465) = 0;
                LOBYTE(v477) = 0;
                v412 = swift_allocObject();
                v414 = v412;
                *(v412 + 16) = v460;
                *(v412 + 32) = v477;
                v415 = v433;
                *(v412 + 40) = v410;
                *(v412 + 48) = v415;
                if (v409)
                {
                  v459 = &v432;
                  *&v477 = v409;
                  MEMORY[0x1EEE9AC00](v412, v413);
                  *(&v432 - 4) = sub_1D5B4AA6C;
                  *(&v432 - 3) = 0;
                  v430 = sub_1D6708BFC;
                  v431 = v414;
                  v463 = 0;
                  v416 = v388;
                  v417 = swift_allocObject();
                  *(v417 + 16) = v460;
                  *(v417 + 32) = v463;
                  *(v417 + 40) = v410;
                  *(v417 + 48) = v415;
                  swift_retain_n();

                  v418 = sub_1D72647CC();
                  v463 = 0;
                  v419 = swift_allocObject();
                  *(v419 + 16) = v418;
                  *(v419 + 24) = v460;
                  *(v419 + 40) = v463;
                  v420 = v461[3];
                  v421 = v461[4];
                  v422 = __swift_project_boxed_opaque_existential_1(v461, v420);
                  MEMORY[0x1EEE9AC00](v422, v423);
                  MEMORY[0x1EEE9AC00](v424, v425);
                  *(&v432 - 4) = sub_1D615B4A4;
                  *(&v432 - 3) = (&v432 - 6);
                  v430 = sub_1D6708BFC;
                  v431 = v417;
                  v426 = v462;
                  v428 = sub_1D5D2F7A4(v416, sub_1D615B49C, v427, sub_1D615B4A4, (&v432 - 6), v420, v421);
                  if (v426)
                  {
                  }

                  else
                  {
                    v429 = v428;

                    if (v429)
                    {
                      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
                      sub_1D66582DC();
                      sub_1D72647EC();
                    }
                  }

                  sub_1D5D2CFE8(v435, type metadata accessor for FormatVersionRequirement);
                }

                else
                {

                  sub_1D5D2CFE8(v388, type metadata accessor for FormatVersionRequirement);
                }

                goto LABEL_19;
              }

LABEL_109:

LABEL_110:
              sub_1D5C84FF4(*(&v477 + 1));
              sub_1D5D2CFE8(v341, type metadata accessor for FormatVersionRequirement);
              goto LABEL_19;
            }

LABEL_83:
            sub_1D5D2CFE8(v297, type metadata accessor for FormatVersionRequirement);

            v180 = v458;
            goto LABEL_34;
          }

          sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);
          v132 = v452;
          v156 = v433;
        }

        else
        {

          sub_1D5D2CFE8(v446, type metadata accessor for FormatVersionRequirement);
        }

        v221 = v457;
        goto LABEL_54;
      }

      v462 = 0;

      v128 = v456;
      v132 = v452;
      v133 = v453;
      v156 = v433;
      v157 = v434;
    }

    else
    {

      v156 = v155;
      v157 = v154;
    }

    v158 = v447;
    goto LABEL_29;
  }

  return sub_1D5D2CFE8(v126, sub_1D5D35454);
}

void sub_1D5D353C0(uint64_t a1)
{
  if (!qword_1EDF03490)
  {
    sub_1D5C31AE8(255);
    sub_1D5B58B84(&qword_1EDF25458, sub_1D5C31AE8, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03490);
    }
  }
}

void sub_1D5D35454(uint64_t a1)
{
  if (!qword_1EDF08D58)
  {
    sub_1D5D353C0(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03498, sub_1D5D353C0, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08D58);
    }
  }
}

uint64_t sub_1D5D354E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D610A360(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D35558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5D355B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D5D3562C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D5D35694()
{
  result = qword_1EDF12A70;
  if (!qword_1EDF12A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A70);
  }

  return result;
}

uint64_t FormatFill.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v59 = v60 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v60 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v60 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v25 = sub_1D5C30408();
  v63 = v22;
  sub_1D5D2EE70(&type metadata for FormatFill, &type metadata for FormatCodingKeys, v26, v24, &type metadata for FormatFill, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v23, v22, v25, &off_1F51F6C78);
  v27 = v2[5];
  v62[4] = v2[4];
  v62[5] = v27;
  v28 = v2[7];
  v62[6] = v2[6];
  v62[7] = v28;
  v29 = v2[1];
  v62[0] = *v2;
  v62[1] = v29;
  v30 = v2[3];
  v62[2] = v2[2];
  v62[3] = v30;
  v31 = sub_1D5CFD35C(v62);
  v32 = sub_1D5CFD34C(v62);
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v39 = *(v32 + 80);
      v61[4] = *(v32 + 64);
      v61[5] = v39;
      v40 = *(v32 + 112);
      v61[6] = *(v32 + 96);
      v61[7] = v40;
      v41 = *(v32 + 16);
      v61[0] = *v32;
      v61[1] = v41;
      v42 = *(v32 + 48);
      v61[2] = *(v32 + 32);
      v61[3] = v42;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v43 = sub_1D725BD1C();
      v44 = __swift_project_value_buffer(v43, qword_1EDFFCCE8);
      v45 = v59;
      (*(*(v43 - 8) + 16))(v59, v44, v43);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v63;
      sub_1D63C43D0(2, v61, v45);
      v38 = v45;
    }

    else
    {
      v50 = *v32;
      sub_1D5B58478(0);
      v52 = *(v51 + 48);
      v53 = &v7[*(v51 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v54 = sub_1D725BD1C();
      v55 = __swift_project_value_buffer(v54, qword_1EDFFCD30);
      v56 = *(*(v54 - 8) + 16);
      v56(v7, v55, v54);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v57 = __swift_project_value_buffer(v54, qword_1EDFFCE68);
      v56(&v7[v52], v57, v54);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v53 = 0;
      *(v53 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v37 = v63;
      sub_1D5D44D6C(3, v50, v7);
      v38 = v7;
    }
  }

  else if (v31)
  {
    v46 = *(v32 + 16);
    v60[0] = *v32;
    v60[1] = v46;
    v47 = *(v32 + 48);
    v60[2] = *(v32 + 32);
    v60[3] = v47;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v48 = sub_1D725BD1C();
    v49 = __swift_project_value_buffer(v48, qword_1EDFFCD30);
    (*(*(v48 - 8) + 16))(v14, v49, v48);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v37 = v63;
    sub_1D63C4230(1, v60, v14);
    v38 = v14;
  }

  else
  {
    v33 = *v32;
    v34 = *(v32 + 8);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D725BD1C();
    v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
    (*(*(v35 - 8) + 16))(v18, v36, v35);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v37 = v63;
    sub_1D5D35CF4(0, v33, v34, v18);
    v38 = v18;
  }

  sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v37, sub_1D5D30DC4);
}

uint64_t sub_1D5D35CF4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709230;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D35E8C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5D35FB4();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D35E8C()
{
  result = qword_1EDF12A78;
  if (!qword_1EDF12A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A78);
  }

  return result;
}

void sub_1D5D35F30(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x64696C6F73;
  v4 = 0xEE00746E65696461;
  v5 = 0x72476C6169646172;
  if (*v1 != 2)
  {
    v5 = 0x656E696873;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x746E656964617267;
    v2 = 0xE800000000000000;
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

unint64_t sub_1D5D35FB4()
{
  result = qword_1EDF11818;
  if (!qword_1EDF11818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11818);
  }

  return result;
}

uint64_t FormatSolidFill.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v84 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v78 - v10;
  sub_1D5D36A00(0);
  v85 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v86 = v1[1];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C32ACC(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24B78, sub_1D5C32ACC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSolidFill, v20, v22, v17, &type metadata for FormatSolidFill, v20, &type metadata for FormatVersions.JazzkonC, v18, v15, v21, &off_1F51F6C78);
  v23 = qword_1EDF31EB0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v28 = v26 + 16;
  v27(v11, v25, v24);
  *&v83 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v29 = swift_allocObject();
  *(v29 + 16) = 21;
  *(v29 + 24) = 0x3FF0000000000000;
  *(v29 + 32) = 0;
  *&v87 = v29 | 0x1000000000000000;
  v89 = v16;
  v30 = static FormatColor.== infix(_:_:)(&v87, &v89);

  if (v30)
  {

    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
    v31 = v84;
    v27(v84, v25, v24);
  }

  else
  {
    v80 = v25;
    v81 = v28;
    v79 = v27;
    v82 = v3;
    v36 = v85;
    v37 = &v15[*(v85 + 11)];
    v39 = *v37;
    v38 = *(v37 + 1);
    LOBYTE(v87) = 0;
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = v87;
    *(v40 + 40) = v39;
    *(v40 + 48) = v38;
    sub_1D5D3696C(0);
    v42 = v41;
    v43 = sub_1D5B58B84(&qword_1EDF02A28, sub_1D5D3696C, MEMORY[0x1E69E6F60]);

    v78[0] = v43;
    v78[1] = v42;
    v44 = sub_1D72647CC();
    LOBYTE(v87) = 0;
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    *(v45 + 32) = 0;
    *(v45 + 16) = v44;
    *(v45 + 40) = v87;
    v46 = &v15[*(v36 + 9)];
    v47 = *(v46 + 3);
    v48 = *(v46 + 4);
    v49 = __swift_project_boxed_opaque_existential_1(v46, v47);
    MEMORY[0x1EEE9AC00](v49, v50);
    MEMORY[0x1EEE9AC00](v51, v52);
    v78[-4] = sub_1D5B4AA6C;
    v78[-3] = 0;
    v76 = sub_1D66B9B08;
    v77 = v40;
    v53 = v82;
    v55 = sub_1D5D2F7A4(v11, sub_1D615B49C, v54, sub_1D615B4A4, &v78[-6], v47, v48);
    if (v53)
    {

      sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v15, sub_1D5D36A00);
    }

    v74 = v55;

    if (v74)
    {
      v87 = 0uLL;
      v88 = 0;
      v89 = v16;
      sub_1D5B55CBC();
      sub_1D72647EC();
      v3 = 0;

      sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
      v3 = 0;
    }

    v31 = v84;
    v79(v84, v80, v24);
  }

  swift_storeEnumTagMultiPayload();
  v32 = swift_allocObject();
  *(v32 + 16) = 2;
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *&v87 = v32 | 0x1000000000000000;
  v89 = v86;

  v33 = static FormatColor.== infix(_:_:)(&v87, &v89);

  v34 = v85;
  if ((v33 & 1) == 0)
  {
    v57 = &v15[*(v85 + 11)];
    v59 = *v57;
    v58 = *(v57 + 1);
    LOBYTE(v87) = 0;
    v60 = swift_allocObject();
    v83 = xmmword_1D728CF30;
    *(v60 + 16) = xmmword_1D728CF30;
    *(v60 + 32) = v87;
    *(v60 + 40) = v59;
    *(v60 + 48) = v58;
    sub_1D5D3696C(0);
    v62 = v61;
    sub_1D5B58B84(&qword_1EDF02A28, sub_1D5D3696C, MEMORY[0x1E69E6F60]);

    v82 = v62;
    v63 = sub_1D72647CC();
    LOBYTE(v87) = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v83;
    *(v64 + 40) = v87;
    v65 = &v15[*(v34 + 9)];
    v66 = *(v65 + 3);
    v67 = *(v65 + 4);
    v68 = __swift_project_boxed_opaque_existential_1(v65, v66);
    v85 = v78;
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    v78[-4] = sub_1D5B4AA6C;
    v78[-3] = 0;
    v76 = sub_1D6708B80;
    v77 = v60;
    v73 = sub_1D5D2F7A4(v31, sub_1D615B49C, v72, sub_1D615B4A4, &v78[-6], v66, v67);
    if (v3)
    {

      v35 = v31;
      goto LABEL_14;
    }

    v75 = v73;

    if (v75)
    {
      v87 = v83;
      v88 = 0;
      v89 = v86;
      sub_1D5B55CBC();
      sub_1D72647EC();

      v35 = v84;
      goto LABEL_14;
    }

    v31 = v84;
  }

  v35 = v31;
LABEL_14:
  sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D36A00);
}

void sub_1D5D3696C(uint64_t a1)
{
  if (!qword_1EDF02A20)
  {
    sub_1D5C32ACC(255);
    sub_1D5B58B84(&qword_1EDF24B78, sub_1D5C32ACC, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02A20);
    }
  }
}

void sub_1D5D36A00(uint64_t a1)
{
  if (!qword_1EDF08820)
  {
    sub_1D5D3696C(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02A28, sub_1D5D3696C, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08820);
    }
  }
}

uint64_t static FormatColor.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 60;
  if (v4 > 5)
  {
    if (v4 <= 8)
    {
      if (v4 == 6)
      {
        if (v3 >> 60 == 6)
        {
          v33 = v2 & 0xFFFFFFFFFFFFFFFLL;
          v34 = *(v33 + 48);
          v35 = *(v33 + 40);
          v36 = *(v33 + 32);
          v37 = v3 & 0xFFFFFFFFFFFFFFFLL;
          v38 = *(v37 + 32);
          v39 = *(v37 + 40);
          v40 = *(v37 + 48);
          v73 = *(v33 + 16);
          v74 = v36;
          v75 = v35;
          LOBYTE(v76) = v34;
          v69 = *(v37 + 16);
          v70 = v38;
          v71 = v39;
          LOBYTE(v72) = v40;
          return _s8NewsFeed15FormatRGBAColorV2eeoiySbAC_ACtFZ_0(&v73, &v69);
        }

        return 0;
      }

      if (v4 == 7)
      {
        if (v3 >> 60 == 7)
        {
          v12 = v2 & 0xFFFFFFFFFFFFFFFLL;
          v13 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v14 = *(v12 + 32);
          v15 = v3 & 0xFFFFFFFFFFFFFFFLL;
          v16 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v17 = *(v15 + 40);
          v73 = *(v12 + 16);
          v74 = v14;
          LOBYTE(v75) = v13;
          v69 = *(v15 + 16);
          v70 = v16;
          LOBYTE(v71) = v17;

          v18 = _s8NewsFeed18FormatColorBindingO2eeoiySbAC_ACtFZ_0(&v73, &v69);
LABEL_45:

          return v18;
        }

        return 0;
      }

      if (v3 >> 60 != 8)
      {
        return 0;
      }

      v54 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v56 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v55 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *&v73 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *(&v73 + 1) = v54;
      *&v69 = v56;
      *(&v69 + 1) = v55;

      if (static FormatColor.== infix(_:_:)(&v73, &v69))
      {

        v57 = sub_1D6360E9C(v54, v55);

        swift_bridgeObjectRelease_n();
        return (v57 & 1) != 0;
      }

      goto LABEL_65;
    }

    if (v4 == 9)
    {
      if (v3 >> 60 != 9)
      {
        return 0;
      }

      v44 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v45 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v46 = *(v44 + 40);
      v47 = *(v44 + 32);
      v48 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v49 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v50 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v51 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v52 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v73 = *(v44 + 16);
      v74 = v47;
      LOBYTE(v75) = v46;
      v76 = v45;
      *&v69 = v48;
      *(&v69 + 1) = v49;
      v70 = v50;
      LOBYTE(v71) = v51;
      v72 = v52;

      sub_1D5F58038(v48, v49, v50, v51);

      if (_s8NewsFeed18FormatColorBindingO2eeoiySbAC_ACtFZ_0(&v73, &v69))
      {
        v53 = static FormatColor.== infix(_:_:)(&v76, &v72);
        sub_1D5F57FEC(v48, v49, v50, v51);

        return (v53 & 1) != 0;
      }

      sub_1D5F57FEC(v48, v49, v50, v51);

      goto LABEL_66;
    }

    if (v4 == 10)
    {
      if (v3 >> 60 != 10)
      {
        return 0;
      }

      v24 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v26 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v25 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v28 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v29 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      *&v73 = *(v24 + 16);
      *(&v73 + 1) = v26;
      v74 = v25;
      *&v69 = v28;
      *(&v69 + 1) = v27;
      v70 = v29;
      v78[0] = v73;
      v77[0] = v28;

      swift_retain_n();

      v30 = static FormatColor.== infix(_:_:)(v78, v77);

      if (v30 & 1) != 0 && (sub_1D6344A00(v26, v27))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v3 >> 60 != 11)
      {
        return 0;
      }

      v60 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v62 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v61 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v64 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v63 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v65 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      *&v73 = *(v60 + 16);
      *(&v73 + 1) = v62;
      v74 = v61;
      *&v69 = v64;
      *(&v69 + 1) = v63;
      v70 = v65;
      v78[0] = v73;
      v78[1] = v62;
      v77[0] = v64;
      v77[1] = v63;

      if (static FormatColor.== infix(_:_:)(v78, v77))
      {

        v66 = sub_1D6360E9C(v62, v63);

        if (v66)
        {
LABEL_58:
          v67 = static FormatColor.== infix(_:_:)(&v74, &v70);

          return (v67 & 1) != 0;
        }
      }
    }

LABEL_65:

    goto LABEL_66;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v3 >> 60 != 3)
      {
        return 0;
      }

      v41 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v42 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v73 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *&v69 = v41;
      *(&v69 + 1) = v42;

      if (static FormatColor.== infix(_:_:)(&v73, &v69))
      {
        v43 = static FormatColor.== infix(_:_:)(&v73 + 1, &v69 + 1);

        return (v43 & 1) != 0;
      }
    }

    else
    {
      if (v4 != 4)
      {
        if (v3 >> 60 != 5)
        {
          return 0;
        }

        v58 = v2 & 0xFFFFFFFFFFFFFFFLL;
        v59 = v3 & 0xFFFFFFFFFFFFFFFLL;
        if (*(v58 + 16) != *(v59 + 16))
        {
          return 0;
        }

        if (*(v58 + 32))
        {
          if ((*(v59 + 32) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (*(v58 + 24) == *(v59 + 24))
          {
            v68 = *(v59 + 32);
          }

          else
          {
            v68 = 1;
          }

          if (v68)
          {
            return 0;
          }
        }

        return 1;
      }

      if (v3 >> 60 != 4)
      {
        return 0;
      }

      v19 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v21 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *&v73 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *&v69 = v21;

      v22 = static FormatColor.== infix(_:_:)(&v73, &v69);

      if (v22)
      {
        v23 = sub_1D6344A00(v19, v20);

        return (v23 & 1) != 0;
      }
    }

LABEL_66:

    return 0;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 60 == 1)
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v6 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v7 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v9 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v10 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        v11 = FormatSystemColor.rawValue.getter;
LABEL_44:
        v18 = sub_1D5D39A5C(v10, v6, v5, v9, v7, v8, v11);
        goto LABEL_45;
      }
    }

    else if (v3 >> 60 == 2)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v6 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v7 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v9 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v11 = FormatFixedColor.rawValue.getter;
      goto LABEL_44;
    }

    return 0;
  }

  if (v3 >> 60)
  {
    return 0;
  }

  if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
  {
    return 1;
  }

  return sub_1D72646CC();
}

uint64_t FormatColor.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v137 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v136 = &v130 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v138 = &v130 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v135 = &v130 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v134 = &v130 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v132 = &v130 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v131 = &v130 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v133 = &v130 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v130 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v130 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v130 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v130 - v42;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v130 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *v2;
  v50 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v50);
  v51 = sub_1D5C30408();
  v139 = v47;
  sub_1D5D2EE70(&type metadata for FormatColor, &type metadata for FormatCodingKeys, v52, v50, &type metadata for FormatColor, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v49, v47, v51, &off_1F51F6C78);
  v53 = v48 >> 60;
  if ((v48 >> 60) > 5)
  {
    if (v53 > 8)
    {
      v63 = v139;
      if (v53 == 9)
      {
        v100 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v143[0] = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v143[1] = v100;
        v144 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        sub_1D5D355B8(v143, v140, &qword_1EC8854B0, sub_1D62B5080, &type metadata for FormatColorBinding, sub_1D667DF1C);
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v101 = sub_1D725BD1C();
        v102 = __swift_project_value_buffer(v101, qword_1EDFFCD18);
        v31 = v138;
        (*(*(v101 - 8) + 16))(v138, v102, v101);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63BD708(9, v143, v31);
        sub_1D66615F8(v143, &qword_1EC8854B0, sub_1D62B5080, &type metadata for FormatColorBinding, sub_1D667DF1C);
        goto LABEL_52;
      }

      if (v53 == 10)
      {
        v77 = v48 & 0xFFFFFFFFFFFFFFFLL;
        v78 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v79 = *(v77 + 24);
        v80 = *(v77 + 32);
        v81 = qword_1EDF31ED0;

        if (v81 != -1)
        {
          swift_once();
        }

        v82 = sub_1D725BD1C();
        v83 = __swift_project_value_buffer(v82, qword_1EDFFCD50);
        v31 = v136;
        (*(*(v82 - 8) + 16))(v136, v83, v82);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63BD8D4(10, v78, v79, v80, v31);
      }

      else
      {
        v122 = v48 & 0xFFFFFFFFFFFFFFFLL;
        v123 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v124 = *(v122 + 24);
        v125 = *(v122 + 32);
        v126 = qword_1EDF31ED0;

        if (v126 != -1)
        {
          swift_once();
        }

        v127 = sub_1D725BD1C();
        v128 = __swift_project_value_buffer(v127, qword_1EDFFCD50);
        v31 = v137;
        (*(*(v127 - 8) + 16))(v137, v128, v127);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63BDA98(11, v123, v124, v125, v31);
      }
    }

    else
    {
      v63 = v139;
      if (v53 == 6)
      {
        v91 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v141[0] = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v141[1] = v91;
        v142 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v92 = sub_1D725BD1C();
        v93 = __swift_project_value_buffer(v92, qword_1EDFFCD30);
        v31 = v132;
        (*(*(v92 - 8) + 16))(v132, v93, v92);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63BD1F8(6, v141, v31);
        goto LABEL_52;
      }

      if (v53 == 7)
      {
        v64 = v48 & 0xFFFFFFFFFFFFFFFLL;
        v65 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v66 = *(v64 + 24);
        v67 = *(v64 + 32);
        v68 = *(v64 + 40);
        sub_1D5F58038(v65, v66, v67, v68);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v69 = sub_1D725BD1C();
        v70 = __swift_project_value_buffer(v69, qword_1EDFFCD30);
        v31 = v134;
        (*(*(v69 - 8) + 16))(v134, v70, v69);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63BD398(7, v65, v66, v67, v68, v31);
        sub_1D5F57FEC(v65, v66, v67, v68);
        goto LABEL_52;
      }

      v110 = v48 & 0xFFFFFFFFFFFFFFFLL;
      v111 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v112 = *(v110 + 24);
      v113 = qword_1EDF31ED0;

      if (v113 != -1)
      {
        swift_once();
      }

      v114 = sub_1D725BD1C();
      v115 = __swift_project_value_buffer(v114, qword_1EDFFCD50);
      v31 = v135;
      (*(*(v114 - 8) + 16))(v135, v115, v114);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BD534(8, v111, v112, v31);
    }

    goto LABEL_50;
  }

  if (v53 > 2)
  {
    v63 = v139;
    if (v53 == 3)
    {
      v94 = v48 & 0xFFFFFFFFFFFFFFFLL;
      v95 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v96 = *(v94 + 24);
      v97 = qword_1EDF31EB0;

      if (v97 != -1)
      {
        swift_once();
      }

      v98 = sub_1D725BD1C();
      v99 = __swift_project_value_buffer(v98, qword_1EDFFCD30);
      (*(*(v98 - 8) + 16))(v31, v99, v98);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BCCF0(3, v95, v96, v31);

      goto LABEL_51;
    }

    if (v53 != 4)
    {
      v116 = v48 & 0xFFFFFFFFFFFFFFFLL;
      v117 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v118 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v119 = *(v116 + 32);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v120 = sub_1D725BD1C();
      v121 = __swift_project_value_buffer(v120, qword_1EDFFCD30);
      v31 = v131;
      (*(*(v120 - 8) + 16))(v131, v121, v120);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BD058(5, v118, v119, v31, v117);
      goto LABEL_52;
    }

    v71 = v48 & 0xFFFFFFFFFFFFFFFLL;
    v72 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v73 = *(v71 + 24);
    v74 = qword_1EDF31EB0;

    if (v74 != -1)
    {
      swift_once();
    }

    v75 = sub_1D725BD1C();
    v76 = __swift_project_value_buffer(v75, qword_1EDFFCD30);
    v31 = v133;
    (*(*(v75 - 8) + 16))(v133, v76, v75);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63BCEC4(4, v72, v73, v31);
LABEL_50:

LABEL_51:

LABEL_52:
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    v90 = v63;
    return sub_1D5D2CFE8(v90, sub_1D5D30DC4);
  }

  if (v53)
  {
    if (v53 == 1)
    {
      v54 = v48 & 0xFFFFFFFFFFFFFFFLL;
      v55 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *(v54 + 24);
      v57 = *(v54 + 32);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
      (*(*(v58 - 8) + 16))(v39, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v55;
      v61 = v139;
      sub_1D5D415DC(1, v60, v56, v57, v39);
      v62 = v39;
    }

    else
    {
      v103 = v48 & 0xFFFFFFFFFFFFFFFLL;
      v104 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v105 = *(v103 + 24);
      v106 = *(v103 + 32);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCD30);
      (*(*(v107 - 8) + 16))(v35, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v104;
      v61 = v139;
      sub_1D63BCB10(2, v109, v105, v106, v35);
      v62 = v35;
    }

    sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
    v90 = v61;
  }

  else
  {
    v85 = *(v48 + 16);
    v84 = *(v48 + 24);
    v86 = qword_1EDF31EB0;

    if (v86 != -1)
    {
      swift_once();
    }

    v87 = sub_1D725BD1C();
    v88 = __swift_project_value_buffer(v87, qword_1EDFFCD30);
    (*(*(v87 - 8) + 16))(v43, v88, v87);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v89 = v139;
    sub_1D5D38124(0, v85, v84, v43);

    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
    v90 = v89;
  }

  return sub_1D5D2CFE8(v90, sub_1D5D30DC4);
}

uint64_t sub_1D5D38124(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D670925C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D382F0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
    sub_1D5D38540();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D382F0()
{
  result = qword_1EDF12980;
  if (!qword_1EDF12980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12980);
  }

  return result;
}

uint64_t sub_1D5D38394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5D383C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D5D383C0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x646E756F626E75;
    v7 = 0x7365636F72706E75;
    if (a1 != 10)
    {
      v7 = 0x7463656C65736E75;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 1633838962;
    v9 = 0x676E69646E6962;
    if (a1 != 7)
    {
      v9 = 0x726F7463656C6573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 7890280;
    v2 = 0x65746E4972657375;
    v3 = 0x65737365636F7270;
    if (a1 != 4)
    {
      v3 = 0x6C61637379617267;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6D6574737973;
    if (a1 != 1)
    {
      v4 = 0x6465786966;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D5D38540()
{
  result = qword_1EDF12710;
  if (!qword_1EDF12710)
  {
    sub_1D5C34074(255, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12710);
  }

  return result;
}

uint64_t FormatValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v30 = *(a2 + 24);
  v31 = v8;
  v10 = _s10CodingKeysOMa_10(255, v8, v30, v9);
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v33 = v10;
  v34 = WitnessTable;
  v35 = v12;
  v36 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer(255, &v33);
  v15 = swift_getWitnessTable();
  v16 = sub_1D726446C();
  v17 = swift_getWitnessTable();
  v19 = type metadata accessor for VersionedKeyedEncodingContainer(0, v16, v17, v18);
  v29 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v29 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D5D2EE70(a2, v14, v25, v23, a2, v14, &type metadata for FormatVersions.JazzkonC, v24, v22, v15, &off_1F51F6C78);
  v33 = 0;
  v34 = 0;
  LOBYTE(v35) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  (*(*(v26 - 8) + 16))(v7, v27, v26);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D38930(v32, &v33, v7, sub_1D5B4AA6C, 0, v19, v31, *(v30 + 16));
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return (*(v29 + 8))(v22, v19);
}

uint64_t sub_1D5D38930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a3;
  v33 = a6;
  v45 = a8;
  v34 = a4;
  v35 = a5;
  v31[1] = a1;
  v10 = *(a6 + 16);
  v38 = *(a6 + 24);
  v39 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v18 = v31 - v17;
  v19 = (v8 + *(a6 + 44));
  v20 = v19[1];
  v32 = *v19;
  v21 = a2;
  (*(v13 + 16))(v18, a2, AssociatedTypeWitness, v16);
  v22 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v31[2] = v10;
  v26 = v38;
  v25 = v39;
  *(v24 + 2) = v10;
  *(v24 + 3) = v25;
  v27 = v45;
  *(v24 + 4) = v26;
  *(v24 + 5) = v27;
  (*(v13 + 32))(&v24[v22], v18, AssociatedTypeWitness);
  v28 = &v24[v23];
  *v28 = v32;
  *(v28 + 1) = v20;
  v41 = v34;
  v42 = v35;
  v43 = sub_1D71B6A80;
  v44 = v24;

  v29 = v37;
  sub_1D5D38B54(v36, v21, sub_1D71B6A7C, v40, v33);
  if (!v29)
  {
    sub_1D72647EC();
  }
}

uint64_t sub_1D5D38B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v43 = a3;
  v44 = a4;
  v39 = a2;
  v8 = *(a5 + 16);
  v7 = *(a5 + 24);
  v42 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v40 = *(v10 + 64);
  v11 = v40;
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &AssociatedTypeWitness - v14;
  v16 = (v5 + *(a5 + 44));
  v17 = v16[1];
  v34 = *v16;
  v18 = *(v10 + 16);
  v37 = v10 + 16;
  v38 = v18;
  (v18)(v15, a2, v13);
  v19 = *(v10 + 80);
  v20 = (v19 + 32) & ~v19;
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  *(v22 + 24) = v7;
  v35 = *(v10 + 32);
  v36 = v10 + 32;
  v23 = v22 + v20;
  v24 = v22;
  v41 = v22;
  v25 = AssociatedTypeWitness;
  v35(v23, v15, AssociatedTypeWitness);
  v26 = (v24 + v21);
  *v26 = v34;
  v26[1] = v17;

  v27 = sub_1D72647CC();
  v38(v15, v39, v25);
  v28 = swift_allocObject();
  v28[2] = v8;
  v28[3] = v7;
  v28[4] = v27;
  v35(v28 + ((v19 + 40) & ~v19), v15, v25);
  v29 = (v54 + *(v42 + 36));
  v30 = v29[3];
  v31 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v52 = sub_1D71B6A78;
  v53 = v28;
  v47 = v43;
  v48 = v44;
  v49 = sub_1D71B6A74;
  v50 = v41;
  sub_1D5D2BC70(v45, sub_1D71B6A90, v51, sub_1D71B6A7C, v46, v30, v31);
}

uint64_t objectdestroy_2Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for FeedCursorTrackerSnapshot(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v4 + v6, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = type metadata accessor for FeedPuzzleStatistic(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*(v2 + 32) >= 0x12uLL)
  {
  }

  v3 = v2 + *(v1 + 32);
  swift_unknownObjectRelease();
  v4 = v3 + *(type metadata accessor for PuzzleStatistic(0) + 20);
  type metadata accessor for PuzzleStatisticCategory(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v28 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
      if (!(*(*(v28 - 8) + 48))(v4, 1, v28))
      {
        v29 = sub_1D725891C();
        (*(*(v29 - 8) + 8))(v4, v29);
        v30 = type metadata accessor for PuzzleLeaderboardEntry(0);

        v31 = v4 + *(v30 + 24);

        v32 = *(v31 + 40);
        if (v32 >> 60 != 15)
        {
          sub_1D5B952F8(*(v31 + 32), v32);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v18 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
      v19 = *(v18 + 28);
      v20 = type metadata accessor for PuzzleStreak(0);
      v21 = *(*(v20 - 8) + 48);
      if (!v21(v4 + v19, 1, v20))
      {
        v22 = sub_1D7257ADC();
        (*(*(v22 - 8) + 8))(v4 + v19, v22);
      }

      v23 = *(v18 + 32);
      if (!v21(v4 + v23, 1, v20))
      {
        v24 = sub_1D7257ADC();
        (*(*(v24 - 8) + 8))(v4 + v23, v24);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for PuzzleStatisticValue(0);
      v6 = swift_getEnumCaseMultiPayload();
      if (v6 == 6 || v6 == 5)
      {
        v7 = type metadata accessor for PuzzleStreak(0);
        if (!(*(*(v7 - 8) + 48))(v4, 1, v7))
        {
          v8 = sub_1D7257ADC();
          (*(*(v8 - 8) + 8))(v4, v8);
        }
      }

      v9 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
      v10 = *(v9 + 20);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 == 6 || v11 == 5)
      {
        v12 = type metadata accessor for PuzzleStreak(0);
        if (!(*(*(v12 - 8) + 48))(v4 + v10, 1, v12))
        {
          v13 = sub_1D7257ADC();
          (*(*(v13 - 8) + 8))(v4 + v10, v13);
        }
      }

      v14 = *(v9 + 24);
      v15 = swift_getEnumCaseMultiPayload();
      if (v15 == 6 || v15 == 5)
      {
        v16 = type metadata accessor for PuzzleStreak(0);
        if (!(*(*(v16 - 8) + 48))(v4 + v14, 1, v16))
        {
          v17 = sub_1D7257ADC();
          (*(*(v17 - 8) + 8))(v4 + v14, v17);
        }
      }
    }
  }

  else
  {
    type metadata accessor for PuzzleStatisticValue(0);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 == 6 || v25 == 5)
    {
      v26 = type metadata accessor for PuzzleStreak(0);
      if (!(*(*(v26 - 8) + 48))(v4, 1, v26))
      {
        v27 = sub_1D7257ADC();
        (*(*(v27 - 8) + 8))(v4, v27);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_3()
{

  sub_1D6A8CEDC(v0[4], v0[5], v0[6], v0[7]);

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_5()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_6()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm_0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 48) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5D39884(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4(0);
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6704364;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67042BC();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D6089CC4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D5D39A20()
{

  return swift_deallocObject();
}

BOOL sub_1D5D39A5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(void))
{
  v12 = a7();
  v14 = v13;
  if (v12 == a7() && v14 == v15)
  {

    if (a3)
    {
      return (a6 & 1) != 0;
    }

    return (a6 & 1) == 0 && *&a2 == *&a5;
  }

  v17 = sub_1D72646CC();

  result = 0;
  if ((v17 & 1) == 0)
  {
    return result;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && *&a2 == *&a5;
  }

  return (a6 & 1) != 0;
}

unint64_t FormatSystemColor.rawValue.getter()
{
  result = 0x6574696877;
  switch(*v0)
  {
    case 1:
      result = 0x6B63616C62;
      break;
    case 2:
      result = 0x7261656C63;
      break;
    case 3:
      result = 6579570;
      break;
    case 4:
      result = 0x6E65657267;
      break;
    case 5:
      result = 1702194274;
      break;
    case 6:
      result = 0x65676E61726FLL;
      break;
    case 7:
      result = 0x776F6C6C6579;
      break;
    case 8:
      result = 1802398064;
      break;
    case 9:
      result = 0x656C70727570;
      break;
    case 0xA:
      result = 1953393005;
      break;
    case 0xB:
      result = 1818322292;
      break;
    case 0xC:
      result = 1851881827;
      break;
    case 0xD:
      result = 0x6F6769646E69;
      break;
    case 0xE:
      result = 0x6E776F7262;
      break;
    case 0xF:
      result = 2036429415;
      break;
    case 0x10:
      result = 0x3279617267;
      break;
    case 0x11:
      result = 0x3379617267;
      break;
    case 0x12:
      result = 0x3479617267;
      break;
    case 0x13:
      result = 0x3579617267;
      break;
    case 0x14:
      result = 0x3679617267;
      break;
    case 0x15:
      result = 0x6C6562616CLL;
      break;
    case 0x16:
    case 0x24:
      result = 0x7261646E6F636573;
      break;
    case 0x17:
    case 0x25:
      result = 0x7972616974726574;
      break;
    case 0x18:
    case 0x26:
      result = 0x616E726574617571;
      break;
    case 0x19:
      result = 1802398060;
      break;
    case 0x1A:
      result = 0x6C6F686563616C70;
      break;
    case 0x1B:
      result = 0x6F74617261706573;
      break;
    case 0x1C:
      result = 0x655365757161706FLL;
      break;
    case 0x1D:
      result = 0x756F72676B636162;
      break;
    case 0x1E:
      result = 0xD000000000000013;
      break;
    case 0x1F:
      result = 0xD000000000000012;
      break;
    case 0x20:
      result = 0xD000000000000011;
      break;
    case 0x21:
      result = 0xD00000000000001ALL;
      break;
    case 0x22:
      result = 0xD000000000000019;
      break;
    case 0x23:
      result = 1819044198;
      break;
    case 0x27:
      result = 0xD000000000000016;
      break;
    case 0x28:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5D39FB4(uint64_t a1)
{
  v1 = *(a1 + 193);
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5D39FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2BD20(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D3A074(v2 + *(a1 + 36), v8);
  return sub_1D5C35728(v8, a2);
}

uint64_t sub_1D5D3A074(uint64_t a1, uint64_t a2)
{
  sub_1D5B5C688(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static FormatCodingMetadataStrategy.defaultValue.getter@<X0>(char *a1@<X8>)
{
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - v8;
  v10 = sub_1D725BD1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v24 - v17;
  sub_1D725BD3C();
  v19 = *(v11 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    sub_1D725BCDC();
    if (v19(v9, 1, v10) != 1)
    {
      sub_1D5BFC6D4(v9, sub_1D5B5C268);
    }
  }

  else
  {
    (*(v11 + 32))(v18, v9, v10);
  }

  sub_1D725BD3C();
  if (v19(v5, 1, v10) == 1)
  {
    sub_1D725BCCC();
    if (v19(v5, 1, v10) != 1)
    {
      sub_1D5BFC6D4(v5, sub_1D5B5C268);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v5, v10);
  }

  v20 = type metadata accessor for FormatMetadata(0);
  sub_1D725BD3C();
  *a1 = 0;
  *(a1 + 1) = 0;
  v21 = *(v11 + 32);
  v21(&a1[v20[5]], v18, v10);
  result = (v21)(&a1[v20[6]], v14, v10);
  v23 = MEMORY[0x1E69E7CD0];
  *&a1[v20[8]] = MEMORY[0x1E69E7CD0];
  *&a1[v20[9]] = v23;
  *&a1[v20[10]] = v23;
  *&a1[v20[11]] = v23;
  return result;
}

uint64_t _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D725BD1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D3A7E0(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v19 = a2[1];
  if (v18)
  {
    if (!v19 || (*a1 != *a2 || v18 != v19) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v19)
  {
    goto LABEL_21;
  }

  v20 = type metadata accessor for FormatMetadata(0);
  if ((sub_1D725BCBC() & 1) == 0 || (sub_1D725BCBC() & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = v20[7];
  v22 = *(v14 + 48);
  sub_1D5D3A874(a1 + v21, v17);
  v29 = v22;
  sub_1D5D3A874(a2 + v21, &v17[v22]);
  v23 = *(v5 + 48);
  if (v23(v17, 1, v4) != 1)
  {
    sub_1D5D3A874(v17, v12);
    if (v23(&v17[v29], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_15;
    }

    (*(v5 + 32))(v8, &v17[v29], v4);
    sub_1D70BE520(&qword_1EDF178B8, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
    v24 = sub_1D7261FBC();
    v25 = *(v5 + 8);
    v25(v8, v4);
    v25(v12, v4);
    sub_1D5BFC674(v17, sub_1D5B5C268);
    if (v24)
    {
      goto LABEL_17;
    }

LABEL_21:
    v26 = 0;
    return v26 & 1;
  }

  if (v23(&v17[v29], 1, v4) != 1)
  {
LABEL_15:
    sub_1D5BFC674(v17, sub_1D5D3A7E0);
    goto LABEL_21;
  }

  sub_1D5BFC674(v17, sub_1D5B5C268);
LABEL_17:
  if ((sub_1D5C15FFC(*(a1 + v20[8]), *(a2 + v20[8])) & 1) == 0 || (sub_1D5C15FFC(*(a1 + v20[9]), *(a2 + v20[9])) & 1) == 0 || (sub_1D5D3A964(*(a1 + v20[10]), *(a2 + v20[10])) & 1) == 0)
  {
    goto LABEL_21;
  }

  v26 = sub_1D5D3A964(*(a1 + v20[11]), *(a2 + v20[11]));
  return v26 & 1;
}

void sub_1D5D3A7E0(uint64_t a1)
{
  if (!qword_1EDF178B0)
  {
    sub_1D5B5BD94(255, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF178B0);
    }
  }
}

uint64_t sub_1D5D3A874(uint64_t a1, uint64_t a2)
{
  sub_1D5B5BD94(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D3A908(uint64_t a1)
{
  v2 = type metadata accessor for FormatMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D3A964(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v30 = result + 56;
  v31 = result;
  v29 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_13:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v14 = *v13;
    v15 = v13[1];
    sub_1D7264A0C();
    switch(v15)
    {
      case 1:
        MEMORY[0x1DA6FC0B0](1);
        break;
      case 2:
        MEMORY[0x1DA6FC0B0](2);
        break;
      case 3:
        MEMORY[0x1DA6FC0B0](3);
        break;
      default:
        MEMORY[0x1DA6FC0B0](0);
        sub_1D7264A2C();
        if (v15)
        {

          sub_1D72621EC();
        }

        break;
    }

    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_58:
      sub_1D5C39250(v14, v15);
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      switch(v22)
      {
        case 1:
          if (v15 == 1)
          {
            v27 = *v20;
            v28 = 1;
            goto LABEL_53;
          }

          sub_1D5B7CD94(v14, v15);
          v23 = 1;
          goto LABEL_34;
        case 2:
          if (v15 == 2)
          {
            v27 = *v20;
            v28 = 2;
            goto LABEL_53;
          }

          sub_1D5B7CD94(v14, v15);
          v23 = 2;
          goto LABEL_34;
        case 3:
          if (v15 == 3)
          {
            v27 = *v20;
            v28 = 3;
            goto LABEL_53;
          }

          sub_1D5B7CD94(v14, v15);
          v23 = 3;
          goto LABEL_34;
      }

      if ((v15 - 1) < 3)
      {
        sub_1D5B7CD94(v14, v15);
        sub_1D5B7CD94(v21, v22);
        v23 = v22;
LABEL_34:
        v24 = v15;
LABEL_35:
        sub_1D5C39250(v21, v23);
LABEL_36:
        sub_1D5C39250(v14, v24);
        goto LABEL_37;
      }

      if (!v22)
      {
        sub_1D5B7CD94(v14, v15);
        sub_1D5B7CD94(v21, 0);
        sub_1D5B7CD94(v14, v15);
        sub_1D5B7CD94(v21, 0);
        sub_1D5C39250(v21, 0);
        sub_1D5C39250(v14, v15);
        v24 = v15;
        if (!v15)
        {
          goto LABEL_54;
        }

        goto LABEL_36;
      }

      if (!v15)
      {
        sub_1D5B7CD94(v14, 0);
        sub_1D5B7CD94(v14, 0);
        sub_1D5B7CD94(v21, v22);
        v23 = v22;
        v24 = 0;
        goto LABEL_35;
      }

      if (v21 == v14 && v22 == v15)
      {
        break;
      }

      v26 = sub_1D72646CC();
      sub_1D5B7CD94(v14, v15);
      sub_1D5B7CD94(v21, v22);
      sub_1D5C39250(v21, v22);
      sub_1D5C39250(v14, v15);
      if (v26)
      {
        goto LABEL_54;
      }

LABEL_37:
      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v27 = v14;
    v28 = v15;
LABEL_53:
    sub_1D5C39250(v27, v28);
LABEL_54:
    sub_1D5C39250(v14, v15);
    v4 = v30;
    result = v31;
    v8 = v29;
    v7 = v32;
  }

  while (v32);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5D3AD58()
{
  result = qword_1EDF04EF8;
  if (!qword_1EDF04EF8)
  {
    sub_1D5C34D84(255, &qword_1EDF04F00, &type metadata for FormatTextNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D5C31A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04EF8);
  }

  return result;
}

uint64_t FormatTextNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v366 = &v357 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v365 = &v357 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v367 = &v357 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v370 = &v357 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v372 = &v357 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v374 = &v357 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v373 = &v357 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v375 = &v357 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v378 = &v357 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v377 = &v357 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v380 = &v357 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v383 = &v357 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v357 - v41;
  sub_1D5D3E578(0);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v357 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v1 + 8);
  *&v393 = *v1;
  v381 = *(v1 + 16);
  v49 = *(v1 + 104);
  v439 = *(v1 + 88);
  v440 = v49;
  v50 = *(v1 + 136);
  v441 = *(v1 + 120);
  v442 = v50;
  v51 = *(v1 + 40);
  v435 = *(v1 + 24);
  v436 = v51;
  v52 = *(v1 + 72);
  v437 = *(v1 + 56);
  v438 = v52;
  v379 = *(v1 + 152);
  v448 = *(v1 + 240);
  v53 = *(v1 + 224);
  v446 = *(v1 + 208);
  v447 = v53;
  v54 = *(v1 + 192);
  v444 = *(v1 + 176);
  v445 = v54;
  v443 = *(v1 + 160);
  v376 = *(v1 + 248);
  v55 = *(v1 + 256);
  v56 = *(v1 + 272);
  v57 = *(v1 + 304);
  v451 = *(v1 + 288);
  v452 = v57;
  v449 = v55;
  v450 = v56;
  v58 = *(v1 + 320);
  v59 = *(v1 + 336);
  v60 = *(v1 + 400);
  v457 = *(v1 + 384);
  v61 = *(v1 + 368);
  v455 = *(v1 + 352);
  v456 = v61;
  v453 = v58;
  v454 = v59;
  v62 = *(v1 + 416);
  v63 = *(v1 + 432);
  v461 = *(v1 + 448);
  v460 = v63;
  v459 = v62;
  v458 = v60;
  v64 = *(v1 + 456);
  v371 = *(v1 + 464);
  v65 = *(v1 + 472);
  v368 = *(v1 + 480);
  v369 = v65;
  v66 = *(v1 + 496);
  v363 = *(v1 + 488);
  v364 = v66;
  v67 = *(v1 + 504);
  v362 = *(v1 + 512);
  v360 = *(v1 + 520);
  v361 = v67;
  v68 = a1[3];
  v69 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v68);
  sub_1D5C3592C(0);
  v71 = v70;
  v72 = sub_1D5B58B84(&qword_1EDF25448, sub_1D5C3592C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextNodeStyle.Selector, v71, v73, v68, &type metadata for FormatTextNodeStyle.Selector, v71, &type metadata for FormatVersions.JazzkonC, v69, v47, v72, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v74 = sub_1D725BD1C();
  v75 = __swift_project_value_buffer(v74, qword_1EDFFCD30);
  v76 = *(v74 - 8);
  v77 = *(v76 + 16);
  v387 = v74;
  v388 = v75;
  v384 = v77;
  v385 = v76 + 16;
  (v77)(v42);
  v389 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v397 = v393;
  *(&v397 + 1) = v48;
  v412 = 0uLL;
  LOBYTE(v413) = 0;
  v78 = &v47[*(v44 + 44)];
  v80 = *v78;
  v79 = *(v78 + 1);
  LOBYTE(v431[0]) = 0;
  v81 = swift_allocObject();
  *&v393 = &v357;
  *(v81 + 16) = 0;
  *(v81 + 24) = 0;
  *(v81 + 32) = v431[0];
  *(v81 + 40) = v80;
  *(v81 + 48) = v79;
  MEMORY[0x1EEE9AC00](v81, v82);
  v392 = &v357 - 6;
  *(&v357 - 4) = sub_1D5B4AA6C;
  *(&v357 - 3) = 0;
  v355 = sub_1D6708C00;
  v356 = v83;
  LOBYTE(v431[0]) = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  *(v84 + 32) = v431[0];
  v386 = v80;
  *(v84 + 40) = v80;
  *(v84 + 48) = v79;
  sub_1D5D3E4E4(0);
  v86 = v85;
  v87 = sub_1D5B58B84(&qword_1EDF03488, sub_1D5D3E4E4, MEMORY[0x1E69E6F60]);
  v382 = v79;
  swift_retain_n();
  v390 = v86;
  v391 = v87;
  v88 = sub_1D72647CC();
  LOBYTE(v431[0]) = 0;
  v89 = swift_allocObject();
  *(v89 + 24) = 0;
  *(v89 + 32) = 0;
  *(v89 + 16) = v88;
  *(v89 + 40) = v431[0];
  v90 = *(v44 + 36);
  v91 = v42;
  v395 = v47;
  v92 = &v47[v90];
  v93 = *&v47[v90 + 24];
  v94 = *&v47[v90 + 32];
  v95 = __swift_project_boxed_opaque_existential_1(&v47[v90], v93);
  MEMORY[0x1EEE9AC00](v95, v96);
  MEMORY[0x1EEE9AC00](v97, v98);
  v99 = v392;
  *(&v357 - 4) = sub_1D615B4A4;
  *(&v357 - 3) = v99;
  v355 = sub_1D6708C00;
  v356 = v84;
  v100 = v394;
  sub_1D5D2BC70(v91, sub_1D615B49C, v101, sub_1D615B4A4, (&v357 - 6), v93, v94);
  if (v100)
  {
    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

    v102 = v395;
LABEL_6:
    v103 = v102;
    return sub_1D5D2CFE8(v103, sub_1D5D3E578);
  }

  v394 = v92;

  sub_1D5D3E60C();
  v102 = v395;
  sub_1D72647EC();
  sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

  v105 = v383;
  v384(v383, v388, v387);
  swift_storeEnumTagMultiPayload();
  v393 = xmmword_1D728CF30;
  v433 = xmmword_1D728CF30;
  v434 = 0;
  LOBYTE(v412) = 0;
  v106 = swift_allocObject();
  v108 = v106;
  *(v106 + 16) = v393;
  *(v106 + 32) = v412;
  v109 = v386;
  v110 = v381;
  v111 = v382;
  *(v106 + 40) = v386;
  *(v106 + 48) = v111;
  v392 = 0;
  if ((~v110 & 0xF000000000000007) == 0)
  {

    goto LABEL_10;
  }

  v359 = &v357;
  v432 = v110;
  MEMORY[0x1EEE9AC00](v106, v107);
  v141 = v111;
  v358 = &v357 - 6;
  *(&v357 - 4) = sub_1D5B4AA6C;
  *(&v357 - 3) = 0;
  v355 = sub_1D6708C00;
  v356 = v108;
  LOBYTE(v412) = 0;
  v143 = v142;
  v144 = swift_allocObject();
  *(v144 + 16) = v393;
  *(v144 + 32) = v412;
  *(v144 + 40) = v386;
  *(v144 + 48) = v141;
  swift_retain_n();
  sub_1D5D04BD4(v143);
  v145 = sub_1D72647CC();
  LOBYTE(v412) = 0;
  v146 = swift_allocObject();
  *(v146 + 16) = v145;
  *(v146 + 24) = v393;
  *(v146 + 40) = v412;
  v147 = *(v394 + 3);
  v148 = *(v394 + 4);
  v149 = __swift_project_boxed_opaque_existential_1(v394, v147);
  MEMORY[0x1EEE9AC00](v149, v150);
  MEMORY[0x1EEE9AC00](v151, v152);
  v153 = v358;
  *(&v357 - 4) = sub_1D615B4A4;
  *(&v357 - 3) = v153;
  v355 = sub_1D6708C00;
  v356 = v144;
  v154 = v392;
  v156 = sub_1D5D2F7A4(v105, sub_1D615B49C, v155, sub_1D615B4A4, (&v357 - 6), v147, v148);
  if (!v154)
  {
    v172 = v156;

    if (v172)
    {
      sub_1D5B57BA4();
      v102 = v395;
      sub_1D72647EC();
      v105 = v383;
      v392 = 0;

      v111 = v382;
    }

    else
    {
      v392 = 0;

      v102 = v395;
      v111 = v382;
      v105 = v383;
    }

    v109 = v386;
LABEL_10:
    sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);
    v112 = v380;
    v113 = v384;
    v384(v380, v388, v387);
    swift_storeEnumTagMultiPayload();
    v393 = xmmword_1D7297410;
    v429 = xmmword_1D7297410;
    v430 = 0;
    LOBYTE(v412) = 0;
    v114 = swift_allocObject();
    *(v114 + 16) = v393;
    *(v114 + 32) = v412;
    *(v114 + 40) = v109;
    *(v114 + 48) = v111;
    v431[4] = v439;
    v431[5] = v440;
    v431[6] = v441;
    v431[7] = v442;
    v431[0] = v435;
    v431[1] = v436;
    v431[2] = v437;
    v431[3] = v438;
    v115 = sub_1D5CFD0B8(v431);
    if (v115 == 1)
    {
      v117 = v109;
      v118 = v111;
      v119 = v113;
      v120 = v117;

      v121 = v112;
      v123 = v387;
      v122 = v388;
    }

    else
    {
      v383 = &v357;
      v416 = v439;
      v417 = v440;
      v418 = v441;
      v419 = v442;
      v412 = v435;
      v413 = v436;
      v414 = v437;
      v415 = v438;
      MEMORY[0x1EEE9AC00](v115, v116);
      v381 = &v357 - 6;
      *(&v357 - 4) = sub_1D5B4AA6C;
      *(&v357 - 3) = 0;
      v355 = sub_1D6708C00;
      v356 = v114;
      LOBYTE(v397) = 0;
      v159 = swift_allocObject();
      *(v159 + 16) = v393;
      *(v159 + 32) = v397;
      *(v159 + 40) = v109;
      *(v159 + 48) = v111;
      swift_retain_n();
      sub_1D5D355B8(&v435, &v397, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v160 = sub_1D72647CC();
      LOBYTE(v397) = 0;
      v161 = swift_allocObject();
      *(v161 + 16) = v160;
      *(v161 + 24) = v393;
      *(v161 + 40) = v397;
      v162 = *(v394 + 3);
      v163 = *(v394 + 4);
      v164 = __swift_project_boxed_opaque_existential_1(v394, v162);
      MEMORY[0x1EEE9AC00](v164, v165);
      MEMORY[0x1EEE9AC00](v166, v167);
      v168 = v381;
      *(&v357 - 4) = sub_1D615B4A4;
      *(&v357 - 3) = v168;
      v355 = sub_1D6708C00;
      v356 = v159;
      v169 = v392;
      v171 = sub_1D5D2F7A4(v112, sub_1D615B49C, v170, sub_1D615B4A4, (&v357 - 6), v162, v163);
      if (v169)
      {

        v401 = v416;
        v402 = v417;
        v403 = v418;
        v404 = v419;
        v397 = v412;
        v398 = v413;
        v399 = v414;
        v400 = v415;
        sub_1D5CFD368(&v397);
        sub_1D5D2CFE8(v380, type metadata accessor for FormatVersionRequirement);
        goto LABEL_6;
      }

      v176 = v171;

      if (v176)
      {
        sub_1D5D35694();
        sub_1D72647EC();
        v120 = v386;
        v122 = v388;
        v392 = 0;

        v401 = v416;
        v402 = v417;
        v403 = v418;
        v404 = v419;
        v397 = v412;
        v398 = v413;
        v399 = v414;
        v400 = v415;
        sub_1D5CFD368(&v397);
        v118 = v382;
        v123 = v387;
        v119 = v384;
      }

      else
      {
        v392 = 0;

        v401 = v416;
        v402 = v417;
        v403 = v418;
        v404 = v419;
        v397 = v412;
        v398 = v413;
        v399 = v414;
        v400 = v415;
        sub_1D5CFD368(&v397);
        v118 = v382;
        v120 = v386;
        v123 = v387;
        v119 = v384;
        v122 = v388;
      }

      v121 = v380;
    }

    sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
    v124 = v377;
    v119(v377, v122, v123);
    swift_storeEnumTagMultiPayload();
    v393 = xmmword_1D72BAA60;
    v429 = xmmword_1D72BAA60;
    v430 = 0;
    LOBYTE(v412) = 0;
    v125 = swift_allocObject();
    v127 = v125;
    *(v125 + 16) = v393;
    *(v125 + 32) = v412;
    *(v125 + 40) = v120;
    *(v125 + 48) = v118;
    if (v379)
    {
      v383 = &v357;
      v428 = v379;
      MEMORY[0x1EEE9AC00](v125, v126);
      *(&v357 - 4) = sub_1D5B4AA6C;
      *(&v357 - 3) = 0;
      v355 = sub_1D6708C00;
      v356 = v127;
      LOBYTE(v412) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = v393;
      *(v128 + 32) = v412;
      *(v128 + 40) = v120;
      *(v128 + 48) = v118;
      swift_retain_n();

      v129 = sub_1D72647CC();
      LOBYTE(v412) = 0;
      v130 = swift_allocObject();
      *(v130 + 16) = v129;
      *(v130 + 24) = v393;
      *(v130 + 40) = v412;
      v131 = *(v394 + 3);
      v132 = *(v394 + 4);
      v133 = __swift_project_boxed_opaque_existential_1(v394, v131);
      MEMORY[0x1EEE9AC00](v133, v134);
      MEMORY[0x1EEE9AC00](v135, v136);
      *(&v357 - 4) = sub_1D615B4A4;
      *(&v357 - 3) = (&v357 - 6);
      v355 = sub_1D6708C00;
      v356 = v128;
      v137 = v392;
      v139 = sub_1D5D2F7A4(v124, sub_1D615B49C, v138, sub_1D615B4A4, (&v357 - 6), v131, v132);
      if (v137)
      {

        v140 = v395;
        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
LABEL_63:
        v103 = v140;
        return sub_1D5D2CFE8(v103, sub_1D5D3E578);
      }

      v177 = v139;

      v173 = v378;
      if (v177)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v174 = v386;
        v392 = 0;

        sub_1D5D2CFE8(v377, type metadata accessor for FormatVersionRequirement);
        v118 = v382;
      }

      else
      {
        v392 = 0;

        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
        v118 = v382;
        v174 = v386;
      }

      v123 = v387;
      v175 = v384;
      v384(v173, v388, v387);
    }

    else
    {

      sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);

      v173 = v378;
      v174 = v120;
      v175 = v119;
      v119(v378, v388, v123);
    }

    swift_storeEnumTagMultiPayload();
    v393 = xmmword_1D72BAA70;
    v426 = xmmword_1D72BAA70;
    v427 = 0;
    LOBYTE(v412) = 0;
    v178 = swift_allocObject();
    v180 = v178;
    *(v178 + 16) = v393;
    *(v178 + 32) = v412;
    *(v178 + 40) = v174;
    *(v178 + 48) = v118;
    if (v448 == 254)
    {

      v181 = v118;
    }

    else
    {
      v383 = &v357;
      v414 = v445;
      v415 = v446;
      v416 = v447;
      LOBYTE(v417) = v448;
      v412 = v443;
      v413 = v444;
      MEMORY[0x1EEE9AC00](v178, v179);
      *(&v357 - 4) = sub_1D5B4AA6C;
      *(&v357 - 3) = 0;
      v355 = sub_1D6708C00;
      v356 = v180;
      LOBYTE(v397) = 0;
      v182 = swift_allocObject();
      *(v182 + 16) = v393;
      *(v182 + 32) = v397;
      *(v182 + 40) = v174;
      *(v182 + 48) = v118;
      swift_retain_n();
      sub_1D5D355B8(&v443, &v397, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v183 = sub_1D72647CC();
      LOBYTE(v397) = 0;
      v184 = swift_allocObject();
      *(v184 + 16) = v183;
      *(v184 + 24) = v393;
      *(v184 + 40) = v397;
      v185 = *(v394 + 3);
      v186 = *(v394 + 4);
      v187 = __swift_project_boxed_opaque_existential_1(v394, v185);
      MEMORY[0x1EEE9AC00](v187, v188);
      MEMORY[0x1EEE9AC00](v189, v190);
      *(&v357 - 4) = sub_1D615B4A4;
      *(&v357 - 3) = (&v357 - 6);
      v355 = sub_1D6708C00;
      v356 = v182;
      v191 = v392;
      sub_1D5D2F7A4(v173, sub_1D615B49C, v192, sub_1D615B4A4, (&v357 - 6), v185, v186);
      if (v191)
      {

        v399 = v414;
        v400 = v415;
        v401 = v416;
        LOBYTE(v402) = v417;
        v397 = v412;
        v398 = v413;
        sub_1D601144C(&v397);
        v140 = v395;
        sub_1D5D2CFE8(v378, type metadata accessor for FormatVersionRequirement);
        goto LABEL_63;
      }

      sub_1D6661204();
      sub_1D72647EC();
      v392 = 0;

      v399 = v414;
      v400 = v415;
      v401 = v416;
      LOBYTE(v402) = v417;
      v397 = v412;
      v398 = v413;
      sub_1D601144C(&v397);
      v181 = v382;
      v123 = v387;
      v175 = v384;
    }

    sub_1D5D2CFE8(v378, type metadata accessor for FormatVersionRequirement);
    v193 = v375;
    v175(v375, v388, v123);
    swift_storeEnumTagMultiPayload();
    v393 = xmmword_1D72BAA80;
    v426 = xmmword_1D72BAA80;
    v427 = 0;
    LOBYTE(v412) = 0;
    v194 = swift_allocObject();
    v196 = v194;
    *(v194 + 16) = v393;
    *(v194 + 32) = v412;
    v197 = v386;
    *(v194 + 40) = v386;
    *(v194 + 48) = v181;
    if (v376)
    {
      v383 = &v357;
      v425 = v376;
      MEMORY[0x1EEE9AC00](v194, v195);
      *(&v357 - 4) = sub_1D5B4AA6C;
      *(&v357 - 3) = 0;
      v355 = sub_1D6708C00;
      v356 = v196;
      LOBYTE(v412) = 0;
      v198 = swift_allocObject();
      *(v198 + 16) = v393;
      *(v198 + 32) = v412;
      *(v198 + 40) = v197;
      *(v198 + 48) = v181;
      swift_retain_n();

      v199 = sub_1D72647CC();
      LOBYTE(v412) = 0;
      v200 = swift_allocObject();
      *(v200 + 16) = v199;
      *(v200 + 24) = v393;
      *(v200 + 40) = v412;
      v201 = *(v394 + 3);
      v202 = *(v394 + 4);
      v203 = __swift_project_boxed_opaque_existential_1(v394, v201);
      MEMORY[0x1EEE9AC00](v203, v204);
      MEMORY[0x1EEE9AC00](v205, v206);
      *(&v357 - 4) = sub_1D615B4A4;
      *(&v357 - 3) = (&v357 - 6);
      v355 = sub_1D6708C00;
      v356 = v198;
      v207 = v392;
      v209 = sub_1D5D2F7A4(v193, sub_1D615B49C, v208, sub_1D615B4A4, (&v357 - 6), v201, v202);
      if (v207)
      {

        v140 = v395;
LABEL_40:
        sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
        goto LABEL_63;
      }

      v210 = v209;

      if (v210)
      {
        sub_1D5C34D84(0, &qword_1EDF1B060, &type metadata for FormatTextNodeTransform, MEMORY[0x1E69E62F8]);
        sub_1D5D436D8();
        sub_1D72647EC();
        v392 = 0;

        sub_1D5D2CFE8(v375, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v392 = 0;

        sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
      }

      v181 = v382;
      v123 = v387;
      v175 = v384;
    }

    else
    {

      sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
    }

    v211 = v373;
    v175(v373, v388, v123);
    swift_storeEnumTagMultiPayload();
    v393 = xmmword_1D72BAA90;
    v410 = xmmword_1D72BAA90;
    v411 = 0;
    LOBYTE(v397) = 0;
    v212 = swift_allocObject();
    *(v212 + 16) = v393;
    *(v212 + 32) = v397;
    v213 = v386;
    *(v212 + 40) = v386;
    *(v212 + 48) = v181;
    v422 = v459;
    v423 = v460;
    v424 = v461;
    v418 = v455;
    v419 = v456;
    v420 = v457;
    v421 = v458;
    v414 = v451;
    v415 = v452;
    v416 = v453;
    v417 = v454;
    v412 = v449;
    v413 = v450;
    v214 = sub_1D5D39FB4(&v412);
    if (v214 == 1)
    {

      v216 = v211;
    }

    else
    {
      v383 = &v357;
      v409 = v461;
      v407 = v459;
      v408 = v460;
      v403 = v455;
      v404 = v456;
      v405 = v457;
      v406 = v458;
      v399 = v451;
      v400 = v452;
      v401 = v453;
      v402 = v454;
      v397 = v449;
      v398 = v450;
      MEMORY[0x1EEE9AC00](v214, v215);
      *(&v357 - 4) = sub_1D5B4AA6C;
      *(&v357 - 3) = 0;
      v355 = sub_1D6708C00;
      v356 = v212;
      v396 = 0;
      v217 = swift_allocObject();
      *(v217 + 16) = v393;
      *(v217 + 32) = v396;
      *(v217 + 40) = v213;
      *(v217 + 48) = v181;
      swift_retain_n();
      v218 = sub_1D72647CC();
      v396 = 0;
      v219 = swift_allocObject();
      *(v219 + 16) = v218;
      *(v219 + 24) = v393;
      *(v219 + 40) = v396;
      v220 = *(v394 + 3);
      v221 = *(v394 + 4);
      v222 = __swift_project_boxed_opaque_existential_1(v394, v220);
      MEMORY[0x1EEE9AC00](v222, v223);
      MEMORY[0x1EEE9AC00](v224, v225);
      *(&v357 - 4) = sub_1D615B4A4;
      *(&v357 - 3) = (&v357 - 6);
      v355 = sub_1D6708C00;
      v356 = v217;
      v226 = v392;
      v228 = sub_1D5D2F7A4(v211, sub_1D615B49C, v227, sub_1D615B4A4, (&v357 - 6), v220, v221);
      if (v226)
      {
        sub_1D5D2CFE8(v211, type metadata accessor for FormatVersionRequirement);

        goto LABEL_62;
      }

      v229 = v228;

      if (v229)
      {
        sub_1D5F0FAA4();
        sub_1D72647EC();
      }

      v392 = 0;
      v181 = v382;
      v123 = v387;
      v175 = v384;
      v216 = v373;
    }

    sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);

    v175(v374, v388, v123);
    swift_storeEnumTagMultiPayload();
    v393 = xmmword_1D72BAAA0;
    v397 = xmmword_1D72BAAA0;
    LOBYTE(v398) = 0;
    LOBYTE(v410) = 0;
    v230 = swift_allocObject();
    v232 = v230;
    *(v230 + 16) = v393;
    *(v230 + 32) = v410;
    v233 = v386;
    *(v230 + 40) = v386;
    *(v230 + 48) = v181;
    if (v371)
    {
      v234 = v181;

      v235 = v392;
      v236 = v374;
      v237 = v233;
      goto LABEL_55;
    }

    v388 = &v357;
    *&v410 = v64;
    MEMORY[0x1EEE9AC00](v230, v231);
    *(&v357 - 4) = sub_1D5B4AA6C;
    *(&v357 - 3) = 0;
    v355 = sub_1D6708C00;
    v356 = v232;
    v396 = 0;
    v257 = swift_allocObject();
    *(v257 + 16) = v393;
    *(v257 + 32) = v396;
    *(v257 + 40) = v233;
    *(v257 + 48) = v181;
    swift_retain_n();
    v258 = sub_1D72647CC();
    v396 = 0;
    v259 = swift_allocObject();
    *(v259 + 16) = v258;
    *(v259 + 24) = v393;
    *(v259 + 40) = v396;
    v260 = *(v394 + 3);
    v261 = *(v394 + 4);
    v262 = __swift_project_boxed_opaque_existential_1(v394, v260);
    MEMORY[0x1EEE9AC00](v262, v263);
    MEMORY[0x1EEE9AC00](v264, v265);
    *(&v357 - 4) = sub_1D615B4A4;
    *(&v357 - 3) = (&v357 - 6);
    v355 = sub_1D6708C00;
    v356 = v257;
    v266 = v392;
    sub_1D5D2F7A4(v374, sub_1D615B49C, v267, sub_1D615B4A4, (&v357 - 6), v260, v261);
    v235 = v266;
    if (!v266)
    {

      sub_1D5B578C4();
      sub_1D72647EC();
      v234 = v382;
      v237 = v386;
      v236 = v374;
LABEL_55:
      sub_1D5D2CFE8(v236, type metadata accessor for FormatVersionRequirement);

      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v238 = v387;
      v239 = __swift_project_value_buffer(v387, qword_1EDFFCD18);
      v384(v372, v239, v238);
      swift_storeEnumTagMultiPayload();
      v393 = xmmword_1D72BAAB0;
      v397 = xmmword_1D72BAAB0;
      LOBYTE(v398) = 0;
      LOBYTE(v410) = 0;
      v241 = swift_allocObject();
      *(v241 + 16) = v393;
      *(v241 + 32) = v410;
      *(v241 + 40) = v237;
      *(v241 + 48) = v234;
      if (v369)
      {
        v388 = &v357;
        *&v410 = v369;
        MEMORY[0x1EEE9AC00](v234, v240);
        v243 = v242;
        v392 = v235;
        *(&v357 - 4) = sub_1D5B4AA6C;
        *(&v357 - 3) = 0;
        v355 = sub_1D6708C00;
        v356 = v241;
        v396 = 0;
        v244 = swift_allocObject();
        *(v244 + 16) = v393;
        *(v244 + 32) = v396;
        *(v244 + 40) = v237;
        *(v244 + 48) = v243;
        swift_retain_n();

        v245 = sub_1D72647CC();
        v396 = 0;
        v246 = swift_allocObject();
        *(v246 + 16) = v245;
        *(v246 + 24) = v393;
        *(v246 + 40) = v396;
        v247 = *(v394 + 3);
        v248 = *(v394 + 4);
        v249 = __swift_project_boxed_opaque_existential_1(v394, v247);
        MEMORY[0x1EEE9AC00](v249, v250);
        MEMORY[0x1EEE9AC00](v251, v252);
        *(&v357 - 4) = sub_1D615B4A4;
        *(&v357 - 3) = (&v357 - 6);
        v355 = sub_1D6708C00;
        v356 = v244;
        v253 = v392;
        sub_1D5D2F7A4(v372, sub_1D615B49C, v254, sub_1D615B4A4, (&v357 - 6), v247, v248);
        v235 = v253;
        if (v253)
        {

          v255 = v395;
          v256 = v372;

          sub_1D5D2CFE8(v256, type metadata accessor for FormatVersionRequirement);
          v103 = v255;
          return sub_1D5D2CFE8(v103, sub_1D5D3E578);
        }

        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();

        sub_1D5D2CFE8(v372, type metadata accessor for FormatVersionRequirement);
        v234 = v382;
        v237 = v386;
      }

      else
      {

        sub_1D5D2CFE8(v372, type metadata accessor for FormatVersionRequirement);
      }

      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v268 = v387;
      v269 = __swift_project_value_buffer(v387, qword_1EDFFCD98);
      v270 = v370;
      v384(v370, v269, v268);
      swift_storeEnumTagMultiPayload();
      v393 = xmmword_1D72BAAC0;
      v397 = xmmword_1D72BAAC0;
      LOBYTE(v398) = 0;
      LOBYTE(v410) = 0;
      v271 = swift_allocObject();
      v273 = v271;
      *(v271 + 16) = v393;
      *(v271 + 32) = v410;
      *(v271 + 40) = v237;
      *(v271 + 48) = v234;
      if (v368 == 9)
      {

        v274 = v366;
        v275 = v367;
      }

      else
      {
        v388 = &v357;
        LOBYTE(v410) = v368;
        v276 = v363;
        *(&v410 + 1) = v363;
        MEMORY[0x1EEE9AC00](v271, v272);
        v392 = v235;
        *(&v357 - 4) = sub_1D5B4AA6C;
        *(&v357 - 3) = 0;
        v355 = sub_1D6708C00;
        v356 = v273;
        v396 = 0;
        v278 = v277;
        v279 = swift_allocObject();
        *(v279 + 16) = v393;
        *(v279 + 32) = v396;
        *(v279 + 40) = v386;
        *(v279 + 48) = v234;
        swift_retain_n();
        sub_1D62B5D18(v278, v276);
        v280 = sub_1D72647CC();
        v396 = 0;
        v281 = swift_allocObject();
        *(v281 + 16) = v280;
        *(v281 + 24) = v393;
        *(v281 + 40) = v396;
        v282 = *(v394 + 3);
        v283 = *(v394 + 4);
        v284 = __swift_project_boxed_opaque_existential_1(v394, v282);
        MEMORY[0x1EEE9AC00](v284, v285);
        MEMORY[0x1EEE9AC00](v286, v287);
        *(&v357 - 4) = sub_1D615B4A4;
        *(&v357 - 3) = (&v357 - 6);
        v355 = sub_1D6708C00;
        v356 = v279;
        v288 = v392;
        sub_1D5D2F7A4(v270, sub_1D615B49C, v289, sub_1D615B4A4, (&v357 - 6), v282, v283);
        v235 = v288;
        if (v288)
        {

          v140 = v395;
          v290 = v370;
          sub_1D5C84FF4(*(&v410 + 1));
          sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);
          goto LABEL_63;
        }

        sub_1D66C908C();
        sub_1D72647EC();

        sub_1D5C84FF4(*(&v410 + 1));
        v274 = v366;
        v237 = v386;
        v275 = v367;
      }

      sub_1D5D2CFE8(v370, type metadata accessor for FormatVersionRequirement);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v291 = v387;
      v292 = __swift_project_value_buffer(v387, qword_1EDFFCD50);
      v384(v275, v292, v291);
      swift_storeEnumTagMultiPayload();
      v393 = xmmword_1D72BAAD0;
      v397 = xmmword_1D72BAAD0;
      LOBYTE(v398) = 0;
      LOBYTE(v410) = 0;
      v293 = swift_allocObject();
      v295 = v293;
      *(v293 + 16) = v393;
      *(v293 + 32) = v410;
      v296 = v382;
      *(v293 + 40) = v237;
      *(v293 + 48) = v296;
      if (v364 == 9)
      {
      }

      else
      {
        v388 = &v357;
        LOBYTE(v410) = v364;
        v297 = v361;
        *(&v410 + 1) = v361;
        MEMORY[0x1EEE9AC00](v293, v294);
        v392 = v235;
        *(&v357 - 4) = sub_1D5B4AA6C;
        *(&v357 - 3) = 0;
        v355 = sub_1D6708C00;
        v356 = v295;
        v396 = 0;
        v299 = v298;
        v300 = swift_allocObject();
        *(v300 + 16) = v393;
        *(v300 + 32) = v396;
        *(v300 + 40) = v237;
        *(v300 + 48) = v296;
        swift_retain_n();
        sub_1D62B5D18(v299, v297);
        v301 = sub_1D72647CC();
        v396 = 0;
        v302 = swift_allocObject();
        *(v302 + 16) = v301;
        *(v302 + 24) = v393;
        *(v302 + 40) = v396;
        v303 = *(v394 + 3);
        v304 = *(v394 + 4);
        v305 = __swift_project_boxed_opaque_existential_1(v394, v303);
        MEMORY[0x1EEE9AC00](v305, v306);
        MEMORY[0x1EEE9AC00](v307, v308);
        *(&v357 - 4) = sub_1D615B4A4;
        *(&v357 - 3) = (&v357 - 6);
        v355 = sub_1D6708C00;
        v356 = v300;
        v309 = v392;
        v311 = sub_1D5D2F7A4(v275, sub_1D615B49C, v310, sub_1D615B4A4, (&v357 - 6), v303, v304);
        v235 = v309;
        if (v309)
        {

          v140 = v395;
          v193 = v367;
          sub_1D5C84FF4(*(&v410 + 1));
          goto LABEL_40;
        }

        v312 = v311;

        if (v312)
        {
          sub_1D66C908C();
          sub_1D72647EC();
          v275 = v367;

          sub_1D5C84FF4(*(&v410 + 1));
          v274 = v366;
        }

        else
        {

          sub_1D5C84FF4(*(&v410 + 1));
          v274 = v366;
          v275 = v367;
        }
      }

      sub_1D5D2CFE8(v275, type metadata accessor for FormatVersionRequirement);
      v313 = v365;
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v314 = v387;
      v315 = __swift_project_value_buffer(v387, qword_1EDFFCDE0);
      v384(v313, v315, v314);
      swift_storeEnumTagMultiPayload();
      v393 = xmmword_1D72BAAE0;
      v397 = xmmword_1D72BAAE0;
      LOBYTE(v398) = 0;
      LOBYTE(v410) = 0;
      v316 = swift_allocObject();
      v318 = v316;
      *(v316 + 16) = v393;
      *(v316 + 32) = v410;
      v319 = v386;
      v320 = v382;
      *(v316 + 40) = v386;
      *(v316 + 48) = v320;
      if (v362 == 2)
      {
      }

      else
      {
        v388 = &v357;
        LOBYTE(v410) = v362 & 1;
        MEMORY[0x1EEE9AC00](v316, v317);
        v392 = v235;
        *(&v357 - 4) = sub_1D5B4AA6C;
        *(&v357 - 3) = 0;
        v355 = sub_1D6708C00;
        v356 = v318;
        v396 = 0;
        v321 = swift_allocObject();
        *(v321 + 16) = v393;
        *(v321 + 32) = v396;
        *(v321 + 40) = v319;
        *(v321 + 48) = v320;
        swift_retain_n();
        v322 = sub_1D72647CC();
        v396 = 0;
        v323 = swift_allocObject();
        *(v323 + 16) = v322;
        *(v323 + 24) = v393;
        *(v323 + 40) = v396;
        v324 = *(v394 + 3);
        v325 = *(v394 + 4);
        v326 = __swift_project_boxed_opaque_existential_1(v394, v324);
        MEMORY[0x1EEE9AC00](v326, v327);
        MEMORY[0x1EEE9AC00](v328, v329);
        *(&v357 - 4) = sub_1D615B4A4;
        *(&v357 - 3) = (&v357 - 6);
        v355 = sub_1D6708C00;
        v356 = v321;
        v330 = v392;
        v332 = sub_1D5D2F7A4(v313, sub_1D615B49C, v331, sub_1D615B4A4, (&v357 - 6), v324, v325);
        v235 = v330;
        if (v330)
        {
          sub_1D5D2CFE8(v313, type metadata accessor for FormatVersionRequirement);

LABEL_102:
          v103 = v395;
          return sub_1D5D2CFE8(v103, sub_1D5D3E578);
        }

        v333 = v332;

        if (v333)
        {
          sub_1D72647EC();
        }

        v274 = v366;
      }

      sub_1D5D2CFE8(v365, type metadata accessor for FormatVersionRequirement);

      v334 = v386;
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v335 = v387;
      v336 = __swift_project_value_buffer(v387, qword_1EDFFCCA8);
      v384(v274, v336, v335);
      swift_storeEnumTagMultiPayload();
      v393 = xmmword_1D72BAAF0;
      v397 = xmmword_1D72BAAF0;
      LOBYTE(v398) = 0;
      LOBYTE(v410) = 0;
      v337 = swift_allocObject();
      v339 = v337;
      *(v337 + 16) = v393;
      *(v337 + 32) = v410;
      v340 = v382;
      *(v337 + 40) = v334;
      *(v337 + 48) = v340;
      if (v360)
      {
        v389 = &v357;
        *&v410 = v360;
        MEMORY[0x1EEE9AC00](v337, v338);
        v341 = v274;
        v392 = v235;
        *(&v357 - 4) = sub_1D5B4AA6C;
        *(&v357 - 3) = 0;
        v355 = sub_1D6708C00;
        v356 = v339;
        v396 = 0;
        v342 = swift_allocObject();
        *(v342 + 16) = v393;
        *(v342 + 32) = v396;
        *(v342 + 40) = v334;
        *(v342 + 48) = v340;
        swift_retain_n();

        v343 = sub_1D72647CC();
        v396 = 0;
        v344 = swift_allocObject();
        *(v344 + 16) = v343;
        *(v344 + 24) = v393;
        *(v344 + 40) = v396;
        v345 = *(v394 + 3);
        v346 = *(v394 + 4);
        v347 = __swift_project_boxed_opaque_existential_1(v394, v345);
        MEMORY[0x1EEE9AC00](v347, v348);
        MEMORY[0x1EEE9AC00](v349, v350);
        *(&v357 - 4) = sub_1D615B4A4;
        *(&v357 - 3) = (&v357 - 6);
        v355 = sub_1D66C90E0;
        v356 = v342;
        v351 = v392;
        v353 = sub_1D5D2F7A4(v341, sub_1D615B49C, v352, sub_1D615B4A4, (&v357 - 6), v345, v346);
        if (v351)
        {
        }

        else
        {
          v354 = v353;

          if (v354)
          {
            sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
            sub_1D66582DC();
            sub_1D72647EC();
          }
        }

        sub_1D5D2CFE8(v366, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
      }

      goto LABEL_102;
    }

    sub_1D5D2CFE8(v374, type metadata accessor for FormatVersionRequirement);

LABEL_62:
    v140 = v395;
    goto LABEL_63;
  }

  v157 = v395;
  v158 = v383;

  sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v157, sub_1D5D3E578);
}

void sub_1D5D3E4E4(uint64_t a1)
{
  if (!qword_1EDF03480)
  {
    sub_1D5C3592C(255);
    sub_1D5B58B84(&qword_1EDF25448, sub_1D5C3592C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03480);
    }
  }
}

void sub_1D5D3E578(uint64_t a1)
{
  if (!qword_1EDF08D50)
  {
    sub_1D5D3E4E4(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03488, sub_1D5D3E4E4, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08D50);
    }
  }
}

unint64_t sub_1D5D3E60C()
{
  result = qword_1EDF11B58;
  if (!qword_1EDF11B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B58);
  }

  return result;
}

uint64_t FormatSelector.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27[-1] - v10;
  v12 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  v28 = v12;
  v29 = v13;
  v27[0] = 33;
  v27[1] = 0xE100000000000000;
  sub_1D5BF4D9C();
  if ((sub_1D7263ABC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = a1[3];
  v31 = a1[4];
  v26 = __swift_project_boxed_opaque_existential_1(a1, v14);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD50);
  (*(*(v15 - 8) + 16))(v11, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  v17 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v17, v18);
  *(&v26 - 2) = v12;
  *(&v26 - 1) = v13;
  sub_1D5D2BEC4(v11, sub_1D6EE4A60, (&v26 - 4), v14, v31);
  sub_1D6079974(v11);
  if (!v2)
  {
LABEL_5:
    v28 = v12;
    v29 = v13;
    strcpy(v27, "symbol.exists(");
    HIBYTE(v27[1]) = -18;
    if ((sub_1D7263ABC() & 1) == 0)
    {
      goto LABEL_9;
    }

    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCE38);
    (*(*(v21 - 8) + 16))(v7, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v23 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v23, v24);
    *(&v26 - 2) = v12;
    *(&v26 - 1) = v13;
    sub_1D5D2BEC4(v7, sub_1D6EE4868, (&v26 - 4), v19, v20);
    sub_1D6079974(v7);
    if (!v2)
    {
LABEL_9:
      __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);
      sub_1D726473C();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t FormatFont.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v58 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v56 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v56 - v19;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v2;
  v27 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v28 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatFont, &type metadata for FormatCodingKeys, v29, v27, &type metadata for FormatFont, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v26, v24, v28, &off_1F51F6C78);
  v30 = v25 >> 61;
  if ((v25 >> 61) <= 1)
  {
    if (v30)
    {
      v52 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v62[0] = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v62[1] = v52;
      v63 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D5D43E24(v62, v59);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCD30);
      (*(*(v53 - 8) + 16))(v16, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D5D43E80(1, v62, v16);
      sub_1D5D44D18(v62);
      v43 = v16;
    }

    else
    {
      v40 = *(v25 + 48);
      v60[1] = *(v25 + 32);
      v60[2] = v40;
      v60[3] = *(v25 + 64);
      v61 = *(v25 + 80);
      v60[0] = *(v25 + 16);
      sub_1D5D3F188(v60, v59);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
      (*(*(v41 - 8) + 16))(v20, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D5D3F1E4(0, v60, v20);
      sub_1D5D41588(v60);
      v43 = v20;
    }

    goto LABEL_22;
  }

  if (v30 == 2)
  {
    v44 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v64 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v65[0] = v44;
    *(v65 + 10) = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x2A);
    sub_1D665C0D4(&v64, v59);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v45 = sub_1D725BD1C();
    v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
    v47 = v56;
    (*(*(v45 - 8) + 16))(v56, v46, v45);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C3D1C(2, &v64, v47);
    sub_1D665C130(&v64);
    v43 = v47;
LABEL_22:
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
    v51 = v24;
    return sub_1D5D2CFE8(v51, sub_1D5D30DC4);
  }

  v31 = v30 == 3;
  v32 = v25 & 0x1FFFFFFFFFFFFFFFLL;
  if (v31)
  {
    v33 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v34 = *(v32 + 24);
    v35 = *(v32 + 32);
    v36 = *(v32 + 40);
    sub_1D5F58038(*(v32 + 16), v34, v35, v36);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
    v39 = v58;
    (*(*(v37 - 8) + 16))(v58, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C3EBC(3, v33, v34, v35, v36, v39);
    sub_1D5F57FEC(v33, v34, v35, v36);
  }

  else
  {
    v48 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v66[0] = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v66[1] = v48;
    v67 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    sub_1D6706BB4(v66, v59, sub_1D62B5154);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v49 = sub_1D725BD1C();
    v50 = __swift_project_value_buffer(v49, qword_1EDFFCD18);
    v39 = v57;
    (*(*(v49 - 8) + 16))(v57, v50, v49);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C4058(4, v66, v39);
    sub_1D5D2CFE8(v66, sub_1D62B5154);
  }

  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
  v51 = v24;
  return sub_1D5D2CFE8(v51, sub_1D5D30DC4);
}