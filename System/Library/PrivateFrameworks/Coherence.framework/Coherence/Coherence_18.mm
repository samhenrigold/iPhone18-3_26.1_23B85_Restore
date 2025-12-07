void sub_1ADF6652C(uint64_t a1)
{
  v2 = sub_1AE23C0EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1AE23C12C();
  v6 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v67);
  v72 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v9 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v58 - v12;
  v13 = a1;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v68 = v9;
  if (v14)
  {
    v64 = v6;
    v69 = v3;
    v16 = sub_1AE1940C8(v14, 0);
    sub_1AE03A354(&v80, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v14, v13);
    v70 = v17;
    v18 = v80;

    sub_1ADDDCE74(v18);
    if (v70 != v14)
    {
      goto LABEL_26;
    }

    v9 = v68;
    v3 = v69;
    v15 = MEMORY[0x1E69E7CC0];
    v6 = v64;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v80 = v16;
  sub_1ADF68B84(&v80);
  v16 = v80;
  v19 = v80[2];
  if (!v19)
  {
LABEL_22:

    return;
  }

  v79 = v15;
  sub_1ADE0B11C(0, v19, 0);
  v20 = 0;
  v64 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v21 = v79;
  v63 = (v6 + 32);
  v59 = (v3 + 8);
  v58 = (v6 + 8);
  v62 = xmmword_1AE241900;
  v61 = v16;
  v60 = v19;
  while (v20 < v16[2])
  {
    v69 = v21;
    v70 = v20;
    v22 = v71;
    sub_1ADDCEE40(&v64[*(v9 + 72) * v20], v71, &qword_1EB5BA2A0, &unk_1AE242200);
    v23 = v65;
    sub_1ADDCEE40(v22, v65, &qword_1EB5BA2A0, &unk_1AE242200);
    v24 = *(v66 + 48);
    v25 = v72;
    sub_1ADDDE540(v23, v72, type metadata accessor for Replica);
    (*v63)(v73, v23 + v24, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
    v26 = swift_allocObject();
    *(v26 + 16) = v62;
    sub_1AE23BFCC();
    v27 = MEMORY[0x1E69E7508];
    *(v26 + 56) = MEMORY[0x1E69E7508];
    v28 = MEMORY[0x1E69E7558];
    *(v26 + 64) = MEMORY[0x1E69E7558];
    *(v26 + 32) = v29;
    sub_1AE23BFCC();
    *(v26 + 96) = v27;
    *(v26 + 104) = v28;
    *(v26 + 72) = v30;
    v80 = sub_1AE23CD3C();
    v81 = v31;
    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    v77 = *(v25 + *(v67 + 20));
    v32 = sub_1AE23DD9C();
    v16 = v33;
    MEMORY[0x1B26FB670](v32);

    v77 = v80;
    v78 = v81;
    MEMORY[0x1B26FB670](40, 0xE100000000000000);
    sub_1AE23C10C();
    sub_1ADDDF604(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    v34 = sub_1AE23D43C();
    if (v34)
    {
      v35 = v34;
      v76 = MEMORY[0x1E69E7CC0];
      sub_1ADE0B11C(0, v34 & ~(v34 >> 63), 0);
      v36 = v76;
      sub_1AE23D41C();
      if (v35 < 0)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v37 = sub_1AE23D51C();
        v39 = *v38;
        v40 = v38[1];
        v37(&v80, 0);
        v41 = __OFSUB__(v40, 1);
        v16 = (v40 - 1);
        if (v41)
        {
          break;
        }

        if (v39 == v16)
        {
          v80 = v39;
          v42 = sub_1AE23DD9C();
          v44 = v43;
        }

        else
        {
          v75 = v39;
          v80 = sub_1AE23DD9C();
          v81 = v45;
          MEMORY[0x1B26FB670](45, 0xE100000000000000);
          v75 = v16;
          v46 = sub_1AE23DD9C();
          MEMORY[0x1B26FB670](v46);

          v42 = v80;
          v44 = v81;
        }

        v76 = v36;
        v48 = *(v36 + 16);
        v47 = *(v36 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1ADE0B11C((v47 > 1), v48 + 1, 1);
          v36 = v76;
        }

        *(v36 + 16) = v48 + 1;
        v49 = v36 + 16 * v48;
        *(v49 + 32) = v42;
        *(v49 + 40) = v44;
        sub_1AE23D47C();
        if (!--v35)
        {
          (*v59)(v5, v2);
          goto LABEL_19;
        }
      }

      __break(1u);
      break;
    }

    (*v59)(v5, v2);
    v36 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v80 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADF7370C(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30);
    v50 = sub_1AE23CBFC();
    v52 = v51;

    MEMORY[0x1B26FB670](v50, v52);

    MEMORY[0x1B26FB670](41, 0xE100000000000000);
    v53 = v77;
    v54 = v78;
    (*v58)(v73, v74);
    sub_1ADDE4FF8(v72, type metadata accessor for Replica);
    sub_1ADDCEDE0(v71, &qword_1EB5BA2A0, &unk_1AE242200);
    v21 = v69;
    v79 = v69;
    v56 = *(v69 + 16);
    v55 = *(v69 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_1ADE0B11C((v55 > 1), v56 + 1, 1);
      v21 = v79;
    }

    v20 = v70 + 1;
    *(v21 + 16) = v56 + 1;
    v57 = v21 + 16 * v56;
    *(v57 + 32) = v53;
    *(v57 + 40) = v54;
    v9 = v68;
    v16 = v61;
    if (v20 == v60)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);

  __break(1u);
}

uint64_t sub_1ADF66DD8()
{
  v1 = *v0;
  sub_1AE23E31C();
  sub_1ADF76AA0(v3, v1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF66E28(uint64_t a1)
{
  v2 = *v1;
  sub_1AE23E31C();
  sub_1ADF76AA0(v4, v2);
  return sub_1AE23E34C();
}

uint64_t CRVersion.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Replica(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = sub_1AE23BFEC();
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  *&v8[*(v6 + 28)] = 0;
  if (*(v9 + 16) && (v11 = sub_1ADDD8A6C(v8), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v9 + 56);
    v15 = sub_1AE23C12C();
    v16 = *(v15 - 8);
    (*(v16 + 16))(a2, v14 + *(v16 + 72) * v13, v15);
    sub_1ADDE4FF8(v8, type metadata accessor for Replica);
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  else
  {
    sub_1ADDE4FF8(v8, type metadata accessor for Replica);
    v18 = sub_1AE23C12C();
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t sub_1ADF67078(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a1;
  v6 = sub_1AE23C12C();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = type metadata accessor for Replica(0);
  v48 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v24 = sub_1AE23BFEC();
  (*(*(v24 - 8) + 16))(v23, a3, v24);
  *&v23[*(v16 + 20)] = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1ADDDE3A0(v23, v20, type metadata accessor for Replica);
  v26 = a2;
  v56 = *a2;
  v27 = v56;
  v29 = sub_1ADDD8A6C(v20);
  v30 = v27[2];
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v28;
  v33 = v27[3];
  v52 = v26;
  if (v33 >= v32)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v37 = v54;
      v36 = v55;
      if (v28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v38 = 1;
      goto LABEL_12;
    }

LABEL_10:
    sub_1ADDFB81C();
    v37 = v54;
    v36 = v55;
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_1ADDDDED0(v32, isUniquelyReferenced_nonNull_native);
  v34 = sub_1ADDD8A6C(v20);
  if ((v3 & 1) != (v35 & 1))
  {
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

  v29 = v34;
  v37 = v54;
  v36 = v55;
  if ((v3 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  (*(v37 + 32))(v15, v56[7] + *(v37 + 72) * v29, v36);
  v38 = 0;
LABEL_12:
  (*(v37 + 56))(v15, v38, 1, v36);
  sub_1ADDCEDE0(v15, &qword_1EB5BB780, &qword_1AE24CD18);
  sub_1ADDCEE40(v53, v15, &qword_1EB5BB780, &qword_1AE24CD18);
  sub_1ADDD2198(v15, v12, &qword_1EB5BB780, &qword_1AE24CD18);
  if ((*(v37 + 48))(v12, 1, v36) == 1)
  {
    sub_1ADDCEDE0(v12, &qword_1EB5BB780, &qword_1AE24CD18);
    if (v3)
    {
      v39 = v56;
      sub_1ADDE4FF8(v56[6] + *(v48 + 72) * v29, type metadata accessor for Replica);
      sub_1ADDF9CEC(v29, v39);
    }
  }

  else
  {
    v54 = v29;
    v40 = *(v37 + 32);
    v41 = v37;
    v42 = v51;
    v40(v51, v12, v36);
    v43 = v56;
    if (v3)
    {
      v40((v56[7] + *(v41 + 72) * v54), v42, v36);
    }

    else
    {
      v44 = v49;
      sub_1ADDDE3A0(v20, v49, type metadata accessor for Replica);
      v45 = v50;
      v40(v50, v42, v36);
      sub_1ADDDE678(v54, v44, v45, v43);
    }
  }

  sub_1ADDE4FF8(v20, type metadata accessor for Replica);
  result = sub_1ADDE4FF8(v23, type metadata accessor for Replica);
  *v52 = v56;
  return result;
}

void (*CRVersion.subscript.modify(uint64_t *a1, uint64_t a2))(void *a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for Replica(0);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v7 - 8) + 64));
  }

  v9 = v8;
  v6[4] = v8;
  v10 = sub_1AE23BFEC();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  *(v9 + *(v7 + 20)) = 0;
  v6[5] = sub_1ADF5EEE8(v6, v9);
  return sub_1ADDFDDC8;
}

uint64_t CRVersion.subscript.setter(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v5 = sub_1AE23C12C();
  v50 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Replica(0);
  v45 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v23 = sub_1AE23BFEC();
  v49 = *(v23 - 8);
  v24 = *(v49 + 16);
  v51 = a2;
  v24(v22, a2, v23);
  *&v22[*(v15 + 20)] = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1ADDDE3A0(v22, v19, type metadata accessor for Replica);
  v52 = v2;
  v26 = *v2;
  v54 = v26;
  v28 = sub_1ADDD8A6C(v19);
  v29 = v26[2];
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v27;
  if (v26[3] >= v31)
  {
    v15 = v50;
    if (isUniquelyReferenced_nonNull_native)
    {
      v50 = v28;
      if (v27)
      {
        goto LABEL_8;
      }

LABEL_11:
      v34 = 1;
      goto LABEL_12;
    }

LABEL_10:
    v35 = v28;
    sub_1ADDFB81C();
    v28 = v35;
    v50 = v35;
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_1ADDDDED0(v31, isUniquelyReferenced_nonNull_native);
  v32 = sub_1ADDD8A6C(v19);
  if ((v3 & 1) != (v33 & 1))
  {
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

  v28 = v32;
  v15 = v50;
  v50 = v32;
  if ((v3 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  (*(v15 + 32))(v14, v54[7] + *(v15 + 72) * v28, v5);
  v34 = 0;
LABEL_12:
  (*(v15 + 56))(v14, v34, 1, v5);
  sub_1ADDCEDE0(v14, &qword_1EB5BB780, &qword_1AE24CD18);
  sub_1ADDCEE40(v53, v14, &qword_1EB5BB780, &qword_1AE24CD18);
  sub_1ADDD2198(v14, v11, &qword_1EB5BB780, &qword_1AE24CD18);
  if ((*(v15 + 48))(v11, 1, v5) == 1)
  {
    sub_1ADDCEDE0(v11, &qword_1EB5BB780, &qword_1AE24CD18);
    if (v3)
    {
      v36 = v54;
      v37 = v50;
      sub_1ADDE4FF8(v54[6] + *(v45 + 72) * v50, type metadata accessor for Replica);
      sub_1ADDF9CEC(v37, v36);
    }
  }

  else
  {
    v45 = v23;
    v38 = *(v15 + 32);
    v39 = v15;
    v40 = v48;
    v38(v48, v11, v5);
    v41 = v54;
    if (v3)
    {
      v38((v54[7] + *(v39 + 72) * v50), v40, v5);
    }

    else
    {
      v42 = v46;
      sub_1ADDDE3A0(v19, v46, type metadata accessor for Replica);
      v43 = v47;
      v38(v47, v40, v5);
      sub_1ADDDE678(v50, v42, v43, v41);
    }

    v23 = v45;
  }

  (*(v49 + 8))(v51, v23);
  sub_1ADDCEDE0(v53, &qword_1EB5BB780, &qword_1AE24CD18);
  sub_1ADDE4FF8(v19, type metadata accessor for Replica);
  result = sub_1ADDE4FF8(v22, type metadata accessor for Replica);
  *v52 = v54;
  return result;
}

double CRVersion.finalizeTimestamps(_:)(uint64_t a1)
{
  if (*(*(v1 + 8) + 16))
  {
    v2 = v1;
    if (qword_1ED96B308 != -1)
    {
      v4 = a1;
      swift_once();
      a1 = v4;
    }

    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    result = *&v5;
    *v2 = v5;
  }

  return result;
}

double CRVersion.finalized(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  if (*(v4 + 16))
  {
    if (qword_1ED96B308 != -1)
    {
      v6 = a1;
      swift_once();
      a1 = v6;
    }

    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    result = *&v7;
    *a2 = v7;
  }

  else
  {
    *a2 = *v2;
    *(a2 + 8) = v4;
  }

  return result;
}

void static CRVersion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1ADF64C74(a1[1], a2[1]);
  if (v4)
  {

    sub_1ADF64C74(v2, v3);
  }
}

uint64_t CRVersion.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB788, &qword_1AE24CD20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AE241900;
  sub_1ADF6652C(v1);
  *(v3 + 32) = v4;
  sub_1ADF6652C(v2);
  *(v3 + 40) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB790, &unk_1AE251E40);
  sub_1ADF73650();
  v6 = sub_1AE23CBFC();
  v8 = v7;

  MEMORY[0x1B26FB670](v6, v8);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);

  return 91;
}

void CRVersion.init(from:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = 0xD00000000000001BLL;
  v7 = swift_bridgeObjectRelease_n();
  v10 = *(a1 + 72);
  if (!v10)
  {
    v12 = "Not decoding a CRDT.";
    v6 = 0xD000000000000017;
LABEL_7:
    v15 = v12 | 0x8000000000000000;
    sub_1ADE42E40(v7, v8, v9);
    swift_allocError();
    *v16 = v6;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    swift_willThrow();

    return;
  }

  v11 = *(v10 + 16);
  v12 = "Invalid UUID index.";
  if ((~v11 & 0xF000000000000007) == 0 || ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 6)
  {
    goto LABEL_7;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v14 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

  sub_1ADDD6748(v13, v14, a1, &v17);
  if (!v3)
  {
    *a2 = v17;
  }
}

double CRVersion.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADE71C08(a1, a2, a3);
  if (!v3)
  {
    v6 = *(v4 + 16);

    sub_1ADDF5C7C(v6);
    v8 = v7;
    v10 = v9;
    swift_beginAccess();
    sub_1AE1B6DB0(v8, v10);
    swift_endAccess();
  }

  return result;
}

void CRVersion.hash(into:)(uint64_t a1, __n128 a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1ADF76AA0(a1, v4);

  sub_1ADF76AA0(a1, v5);
}

uint64_t CRVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AE23E31C();
  sub_1ADF76AA0(v4, v1);
  sub_1ADF76AA0(v4, v2);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF6829C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AE23E31C();
  sub_1ADF76AA0(v4, v1);
  sub_1ADF76AA0(v4, v2);
  return sub_1AE23E34C();
}

void sub_1ADF682F0(uint64_t a1, __n128 a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1ADF76AA0(a1, v4);

  sub_1ADF76AA0(a1, v5);
}

uint64_t sub_1ADF68330(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1AE23E31C();
  sub_1ADF76AA0(v5, v2);
  sub_1ADF76AA0(v5, v3);
  return sub_1AE23E34C();
}

void sub_1ADF6839C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1ADF64C74(a1[1], a2[1]);
  if (v4)
  {

    sub_1ADF64C74(v2, v3);
  }
}

double sub_1ADF68408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADE71C08(a1, a2, a3);
  if (!v3)
  {
    v6 = *(v4 + 16);

    sub_1ADDF5C7C(v6);
    v8 = v7;
    v10 = v9;
    swift_beginAccess();
    sub_1AE1B6DB0(v8, v10);
    swift_endAccess();
  }

  return result;
}

void sub_1ADF684B4(uint64_t a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  MEMORY[0x1EEE9AC00](v29);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - v5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v30 = a1;

  v11 = 0;
  v12 = 0;
  v27 = v6;
  v13 = v28;
  if (v9)
  {
    while (1)
    {
      v31 = v12;
      v14 = v11;
LABEL_9:
      v15 = __clz(__rbit64(v9)) | (v14 << 6);
      v16 = v30;
      v17 = *(v30 + 48);
      v18 = type metadata accessor for Replica(0);
      sub_1ADDDE3A0(v17 + *(*(v18 - 8) + 72) * v15, v13, type metadata accessor for Replica);
      v19 = *(v16 + 56);
      v20 = sub_1AE23C12C();
      v21 = *(v20 - 8);
      v22 = v19 + *(v21 + 72) * v15;
      v23 = v29;
      (*(v21 + 16))(v13 + *(v29 + 48), v22, v20);
      sub_1ADDCEE40(v13, v3, &qword_1EB5BA2A0, &unk_1AE242200);
      v24 = *(v23 + 48);
      v25 = sub_1AE23C04C();
      sub_1ADDCEDE0(v13, &qword_1EB5BA2A0, &unk_1AE242200);
      (*(v21 + 8))(&v3[v24], v20);
      v12 = v31 + v25;
      if (__OFADD__(v31, v25))
      {
        break;
      }

      v9 &= v9 - 1;
      sub_1ADDE4FF8(v3, type metadata accessor for Replica);
      v11 = v14;
      v6 = v27;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v14 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v14);
      ++v11;
      if (v9)
      {
        v31 = v12;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t CRVersion.count.getter()
{
  v1 = v0[1];
  sub_1ADF684B4(*v0);
  v3 = v2;
  sub_1ADF684B4(v1);
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t CRVersion.replicaCount.getter()
{
  v1 = *(*v0 + 16);
  v2 = *(v0[1] + 16);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

void CRVersion.isDisjoint(with:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *v1;
  v4 = v1[1];
  sub_1ADF63098(*a1, v3);
  if (v5)
  {

    sub_1ADF63098(v2, v4);
  }
}

uint64_t CRVersion.isSuperset(of:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();
  if (*(v5 + 16) && *(v13 + 16))
  {

    sub_1ADDF8898(v6, 0, v13);
    if (!*(v3 + 16))
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!*(v3 + 16))
    {
      goto LABEL_10;
    }
  }

  if (*(v13 + 16))
  {

    sub_1ADDF8898(v7, 0, v13);

    goto LABEL_11;
  }

LABEL_10:

LABEL_11:
  sub_1ADF637A8(v3, v5);
  if (v8)
  {

    v9 = 0;
  }

  else
  {
    sub_1ADF637A8(v2, v4);
    v11 = v10;

    v9 = v11 ^ 1;
  }

  return v9 & 1;
}

uint64_t CRVersion.isStrictSuperset(of:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();
  if (*(v3 + 16) && *(v12 + 16))
  {

    sub_1ADDF8898(v6, 0, v12);
    if (!*(v5 + 16))
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!*(v5 + 16))
    {
      goto LABEL_10;
    }
  }

  if (*(v12 + 16))
  {

    sub_1ADDF8898(v7, 0, v12);

    goto LABEL_11;
  }

LABEL_10:

LABEL_11:
  sub_1ADF637A8(v5, v3);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    sub_1ADF637A8(v4, v2);
    v9 = v10;
  }

  return v9 & 1;
}

void sub_1ADF68B84(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1ADF7AFCC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1ADF73788(v5);
  *a1 = v3;
}

void sub_1ADF68C38(uint64_t *a1)
{
  v2 = *(type metadata accessor for Replica(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1ADF7B01C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1ADF738CC(v5);
  *a1 = v3;
}

void sub_1ADF68CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1AE23BDDC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9EA0, &qword_1AE240EE0);
  v39 = v4;
  v10 = sub_1AE23DCCC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1ADE42D60(*(v9 + 56) + 8 * v23, v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_1ADE42CF8(*(v9 + 56) + 8 * v23, v44);
      }

      sub_1ADDDF604(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v26 = sub_1AE23CBBC();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
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
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      sub_1ADE42D60(v44, *(v11 + 56) + 8 * v19);
      ++*(v11 + 16);
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v35;
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

void sub_1ADF690CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
  v35 = v4;
  v6 = sub_1AE23DCCC();
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
      }

      sub_1AE23E31C();
      sub_1AE23CDAC();
      v25 = sub_1AE23E34C();
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

void sub_1ADF6936C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB820, &qword_1AE24CF10);
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v21 = *(*(v5 + 56) + 8 * v20);
      v31 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_1ADDD86D8(v31, *(*(v5 + 48) + 16 * v20 + 8));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v22 = sub_1AE23E34C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v31;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1ADF69618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7E8, &qword_1AE24CEE8);
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v21 = *(*(v5 + 56) + 8 * v20);
      v31 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_1ADDD86D8(v31, *(*(v5 + 48) + 16 * v20 + 8));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v22 = sub_1AE23E34C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v31;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1ADF698B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C8, &qword_1AE24CED0);
  v37 = v4;
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 16 * v21);
      v23 = (*(v5 + 56) + 24 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v38 = v22;
      if ((v37 & 1) == 0)
      {
        sub_1ADDD86D8(v22, *(&v22 + 1));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v27 = sub_1AE23E34C();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v38;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v38;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1ADF69B9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA080, &qword_1AE241860);
  v35 = v4;
  v6 = sub_1AE23DCCC();
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
      }

      sub_1AE23E31C();
      sub_1AE23CDAC();
      v25 = sub_1AE23E34C();
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

void sub_1ADF69E44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Timestamp(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB850, &qword_1AE24CF20);
  v37 = v4;
  v8 = sub_1AE23DCCC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        sub_1ADDDE540(v24, v38, type metadata accessor for Timestamp);
      }

      else
      {
        sub_1ADDDE3A0(v24, v38, type metadata accessor for Timestamp);
      }

      sub_1AE23E31C();
      (*(*v22 + 88))(v39);
      v25 = sub_1AE23E34C();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      sub_1ADDDE540(v38, *(v9 + 56) + v23 * v17, type metadata accessor for Timestamp);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1ADF6A1CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB828, &unk_1AE25AA30);
  v31 = v4;
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1AE23E31C();
      (*(*v20 + 88))(v32);
      v22 = sub_1AE23E34C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1ADF6A484(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v34 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB838, &qword_1AE25AA40);
  v37 = v4;
  v8 = sub_1AE23DCCC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        sub_1ADDD2198(v24, v38, &qword_1EB5BB830, &unk_1AE25AA50);
      }

      else
      {
        sub_1ADDCEE40(v24, v38, &qword_1EB5BB830, &unk_1AE25AA50);
      }

      sub_1AE23E31C();
      (*(*v22 + 88))(v39);
      v25 = sub_1AE23E34C();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      sub_1ADDD2198(v38, *(v9 + 56) + v23 * v17, &qword_1EB5BB830, &unk_1AE25AA50);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1ADF6A810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v39 - v6;
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB848, &qword_1AE24CF18);
  v44 = v4;
  v11 = sub_1AE23DCCC();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1ADDD2198(v27 + v28 * v24, v48, &qword_1EB5BB830, &unk_1AE25AA50);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1ADDCEE40(v29 + v28 * v24, v48, &qword_1EB5BB830, &unk_1AE25AA50);
      }

      sub_1ADDDF604(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v30 = sub_1AE23CBBC();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_1ADDD2198(v48, *(v12 + 56) + v28 * v20, &qword_1EB5BB830, &unk_1AE25AA50);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1ADF6ACAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB840, &qword_1AE25AA60);
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_1AE23E31C();
      (*(*v20 + 88))(v31);
      v21 = sub_1AE23E34C();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1ADF6AF70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA088, &qword_1AE241868);
  v36 = v4;
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = *(*(v5 + 48) + v22);
      v24 = (*(v5 + 56) + v22);
      v26 = *v24;
      v25 = v24[1];
      v37 = v23;
      if ((v36 & 1) == 0)
      {
        sub_1ADDD86D8(v23, *(&v23 + 1));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v27 = sub_1AE23E34C();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v37;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v37;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = 16 * v15;
      *(*(v7 + 48) + v17) = v16;
      v18 = (*(v7 + 56) + v17);
      *v18 = v26;
      v18[1] = v25;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1ADF6B238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA068, &qword_1AE241848);
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 16 * v21);
      v23 = (*(v5 + 56) + 32 * v21);
      v33 = v23[1];
      v34 = *v23;
      v35 = v22;
      if ((v4 & 1) == 0)
      {
        sub_1ADDD86D8(v22, *(&v22 + 1));
        sub_1ADDD86D8(v34, *(&v34 + 1));
        sub_1ADDD86D8(v33, *(&v33 + 1));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v24 = sub_1AE23E34C();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v16 = v35;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v16 = v35;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v34;
      v17[1] = v33;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1ADF6B504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7F0, &qword_1AE24CEF0);
  v35 = v4;
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 16 * v21);
      v23 = (*(v5 + 56) + 3 * v21);
      v24 = *v23;
      v25 = v23[1];
      v36 = v23[2];
      v37 = v22;
      if ((v35 & 1) == 0)
      {
        sub_1ADDD86D8(v22, *(&v22 + 1));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v26 = sub_1AE23E34C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v16 = v37;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v16 = v37;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = (*(v7 + 56) + 3 * v15);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1ADF6B7D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7F8, &qword_1AE24CEF8);
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = *(*(v5 + 48) + v21);
      v32 = *(*(v5 + 56) + v21);
      v33 = v22;
      if ((v4 & 1) == 0)
      {
        sub_1ADDD86D8(v22, *(&v22 + 1));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v23 = sub_1AE23E34C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v16 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v16 = v33;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = 16 * v15;
      *(*(v7 + 48) + v17) = v16;
      *(*(v7 + 56) + v17) = v32;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1ADF6BAC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = v6;
  v8 = sub_1AE23DCCC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(*(v7 + 48) + 16 * v23);
      v25 = (*(v7 + 56) + 24 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v40 = v24;
      if ((v39 & 1) == 0)
      {
        sub_1ADDD86D8(v24, *(&v24 + 1));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v29 = sub_1AE23E34C();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v18 = v40;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v18 = v40;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 16 * v17) = v18;
      v19 = (*(v9 + 56) + 24 * v17);
      *v19 = v26;
      v19[1] = v27;
      v19[2] = v28;
      ++*(v9 + 16);
      v7 = v38;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v4;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1ADF6BDB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0F0, &qword_1AE2418C8);
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = *(*(v5 + 48) + v21);
      v32 = *(*(v5 + 56) + v21);
      v33 = v22;
      if ((v4 & 1) == 0)
      {
        sub_1ADDD86D8(v22, *(&v22 + 1));
        sub_1ADDD86D8(v32, *(&v32 + 1));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v23 = sub_1AE23E34C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v16 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v16 = v33;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = 16 * v15;
      *(*(v7 + 48) + v17) = v16;
      *(*(v7 + 56) + v17) = v32;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1ADF6C068(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9F8, &qword_1AE245688);
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v21 = *(*(v5 + 56) + 8 * v20);
      v31 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_1ADDD86D8(v31, *(*(v5 + 48) + 16 * v20 + 8));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v22 = sub_1AE23E34C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v31;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1ADF6C314(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA070, &qword_1AE241850);
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v21 = (*(v5 + 56) + 32 * v20);
      v33 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if (v4)
      {
        sub_1ADDEE390(v21, v34);
      }

      else
      {
        sub_1ADDE4E28(v21, v34);
        sub_1ADDD86D8(v33, v22);
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v23 = sub_1AE23E34C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v16 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v16 = v33;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      sub_1ADDEE390(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1ADF6C5C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0A8, &qword_1AE241888);
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_1AE23E30C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1ADF6C84C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0D0, &qword_1AE2418B0);
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 16 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v34 = *v23;
      v35 = v22;
      v24 = *(v23 + 16);
      if ((v4 & 1) == 0)
      {
        sub_1ADDD86D8(v22, *(&v22 + 1));
        swift_unknownObjectRetain();
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v25 = sub_1AE23E34C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v16 = v35;
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
      v16 = v35;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v34;
      *(v17 + 16) = v24;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1ADF6CB3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1AE23BDDC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v8;
  v14 = sub_1AE23DCCC();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v10;
    v45 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      sub_1ADDDF604(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v30 = sub_1AE23CBBC();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v47 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v13 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

void sub_1ADF6CF18(int64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for Replica(0);
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1AE23D8FC() + 1) & ~v8;
    v12 = *(v4 + 72);
    while (1)
    {
      v13 = v12 * v9;
      sub_1ADDDE3A0(*(a2 + 48) + v12 * v9, v6, type metadata accessor for Replica);
      sub_1AE23E31C();
      sub_1AE23BFAC();
      MEMORY[0x1B26FCBD0](*&v6[*(v19 + 20)]);
      v14 = sub_1AE23E34C();
      sub_1ADDE4FF8(v6, type metadata accessor for Replica);
      v15 = v14 & v10;
      if (a1 >= v11)
      {
        break;
      }

      if (v15 < v11)
      {
        goto LABEL_10;
      }

LABEL_11:
      if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v12 * a1 != v13)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      if (a1 < v9 || *(a2 + 56) + 24 * a1 >= *(a2 + 56) + 24 * v9 + 24)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a1 == v9)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      a1 = v9;
LABEL_5:
      v9 = (v9 + 1) & v10;
      if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v15 < v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (a1 < v15)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }
}

void sub_1ADF6D1C4(int64_t a1, uint64_t a2)
{
  v33 = sub_1AE23BDDC();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = sub_1AE23D8FC();
    v12 = v10;
    v32 = (v11 + 1) & v10;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v30 = a2 + 64;
    v31 = v14;
    v15 = *(v13 + 56);
    v29 = (v13 - 8);
    v34 = v12;
    v16 = v33;
    do
    {
      v17 = v15;
      v18 = v15 * v9;
      v19 = *(a2 + 48) + v15 * v9;
      v20 = v13;
      v31(v6, v19, v16);
      sub_1ADDDF604(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v21 = sub_1AE23CBBC();
      (*v29)(v6, v16);
      v22 = v34;
      v23 = v21 & v34;
      if (a1 >= v32)
      {
        if (v23 >= v32 && a1 >= v23)
        {
LABEL_15:
          v13 = v20;
          v15 = v17;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v7 = v30;
          if (a1 < v9 || *(a2 + 56) + 8 * a1 >= *(a2 + 56) + 8 * v9 + 8)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v9;
            v22 = v34;
          }

          else
          {
            v22 = v34;
            if (a1 != v9)
            {
              swift_arrayInitWithTakeBackToFront();
              v22 = v34;
              a1 = v9;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v32 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v13 = v20;
      v7 = v30;
      v15 = v17;
LABEL_4:
      v9 = (v9 + 1) & v22;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_1ADF6D4DC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v11, v12);
      sub_1AE23BECC();
      v13 = sub_1AE23E34C();
      sub_1ADDCC35C(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 24 * v3;
        v20 = (v18 + 24 * v6);
        if (v3 != v6 || v19 >= v20 + 24)
        {
          v9 = *v20;
          *(v19 + 16) = *(v20 + 2);
          *v19 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1ADF6D6A4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1AE23CD0C();
      sub_1AE23E31C();
      v11 = v10;
      sub_1AE23CDAC();
      v12 = sub_1AE23E34C();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_1ADF6D86C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      sub_1AE23E31C();

      sub_1AE23CDAC();
      v9 = sub_1AE23E34C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1ADF6DA1C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v10, v11);
      sub_1AE23BECC();
      v12 = sub_1AE23E34C();
      sub_1ADDCC35C(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1ADF6DBD4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v12, v13);
      sub_1AE23BECC();
      v14 = sub_1AE23E34C();
      sub_1ADDCC35C(v12, v13);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 48 * v3);
        v21 = (v19 + 48 * v6);
        if (v3 != v6 || v20 >= v21 + 3)
        {
          v9 = *v21;
          v10 = v21[2];
          v20[1] = v21[1];
          v20[2] = v10;
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

void sub_1ADF6DD9C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v11, v12);
      sub_1AE23BECC();
      v13 = sub_1AE23E34C();
      sub_1ADDCC35C(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1ADF6DF54(int64_t a1, uint64_t a2)
{
  v38 = sub_1AE23BFEC();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1AE23D8FC();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1ADDDF604(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = sub_1AE23CBBC();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_1ADF6E274(int64_t a1, uint64_t a2)
{
  v38 = sub_1AE23BDDC();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1AE23D8FC();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1ADDDF604(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v22 = sub_1AE23CBBC();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_1ADF6E598(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AE23BDDC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1ADE42D60(a3, a4[7] + 8 * a1);
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

unint64_t sub_1ADF6E65C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

unint64_t sub_1ADF6E6B0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1ADF6E700(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1ADF6E75C(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 3 * result;
  *v6 = a4;
  *(v6 + 2) = BYTE2(a4) & 1;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

_OWORD *sub_1ADF6E7BC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1ADDEE390(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1ADF6E828(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_1ADF6E86C()
{
  v1 = v0;
  v2 = type metadata accessor for Replica(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA038, &qword_1AE241818);
  v6 = *v0;
  v7 = sub_1AE23DCBC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_1ADDDE3A0(*(v6 + 48) + v22, v5, type metadata accessor for Replica);
        v21 *= 24;
        sub_1ADDE56CC(*(v6 + 56) + v21, v24);
        sub_1ADDDE540(v5, *(v8 + 48) + v22, type metadata accessor for Replica);
        sub_1ADDE5634(v24, *(v8 + 56) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1ADF6EACC()
{
  v1 = v0;
  v29 = sub_1AE23BDDC();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9EA0, &qword_1AE240EE0);
  v3 = *v0;
  v4 = sub_1AE23DCBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 8;
        sub_1ADE42CF8(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        sub_1ADE42D60(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1ADF6ED64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF6EECC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB820, &qword_1AE24CF10);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1ADDD86D8(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF6F03C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA060, &qword_1AE241840);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1ADDD86D8(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF6F1AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA090, &qword_1AE241870);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1ADDD86D8(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF6F314()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7E8, &qword_1AE24CEE8);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1ADDD86D8(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF6F47C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C8, &qword_1AE24CED0);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v17 *= 24;
        v19 = (*(v2 + 56) + v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = *(*(v2 + 48) + v18);
        *(*(v4 + 48) + v18) = v23;
        v24 = (*(v4 + 56) + v17);
        *v24 = v20;
        v24[1] = v21;
        v24[2] = v22;
        sub_1ADDD86D8(v23, *(&v23 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF6F61C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA080, &qword_1AE241860);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF6F78C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7B8, &qword_1AE24CEC8);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF6F8FC()
{
  v1 = v0;
  v2 = type metadata accessor for Timestamp(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB850, &qword_1AE24CF20);
  v5 = *v0;
  v6 = sub_1AE23DCBC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1ADDDE3A0(*(v5 + 56) + v22, v4, type metadata accessor for Timestamp);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_1ADDDE540(v4, *(v7 + 56) + v22, type metadata accessor for Timestamp);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1ADF6FB38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB828, &unk_1AE25AA30);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF6FC9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v24 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB838, &qword_1AE25AA40);
  v4 = *v0;
  v5 = sub_1AE23DCBC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    v13 = *(v4 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = v27;
        v22 = *(v28 + 72) * v19;
        sub_1ADDCEE40(*(v4 + 56) + v22, v27, &qword_1EB5BB830, &unk_1AE25AA50);
        v23 = v29;
        *(*(v29 + 48) + 8 * v19) = v20;
        sub_1ADDD2198(v21, *(v23 + 56) + v22, &qword_1EB5BB830, &unk_1AE25AA50);
      }

      while (v14);
    }

    v17 = v9;
    v6 = v29;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1ADF6FEF0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - v3;
  v34 = sub_1AE23BFEC();
  v38 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB848, &qword_1AE24CF18);
  v5 = *v0;
  v6 = sub_1AE23DCBC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v38 + 32;
    v32 = v38 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v38;
        v23 = *(v38 + 72) * v21;
        v24 = v34;
        (*(v38 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1ADDCEE40(*(v5 + 56) + v26, v35, &qword_1EB5BB830, &unk_1AE25AA50);
        v27 = v37;
        (*(v22 + 32))(*(v37 + 48) + v23, v17, v24);
        sub_1ADDD2198(v25, *(v27 + 56) + v26, &qword_1EB5BB830, &unk_1AE25AA50);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        v7 = v37;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1ADF7021C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB840, &qword_1AE25AA60);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF703A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA088, &qword_1AE241868);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 56) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v21;
        v22 = (*(v4 + 56) + v17);
        *v22 = v20;
        v22[1] = v19;
        sub_1ADDD86D8(v21, *(&v21 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF70518()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA068, &qword_1AE241848);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v17 *= 32;
        v19 = (*(v2 + 56) + v17);
        v20 = *(*(v2 + 48) + v18);
        v23 = *v19;
        v21 = *v19;
        v24 = v19[1];
        *(*(v4 + 48) + v18) = v20;
        v22 = (*(v4 + 56) + v17);
        *v22 = v21;
        v22[1] = v24;
        sub_1ADDD86D8(v20, *(&v20 + 1));
        sub_1ADDD86D8(v23, *(&v23 + 1));
        sub_1ADDD86D8(v24, *(&v24 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF706B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7E0, &qword_1AE24CEE0);
  v26 = v0;
  v1 = *v0;
  v2 = sub_1AE23DCBC();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v16 *= 48;
        v18 = *(v1 + 56) + v16;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *(v18 + 40);
        v23 = *(*(v1 + 48) + v17);
        v24 = *v18;
        *(*(v3 + 48) + v17) = v23;
        v25 = *(v3 + 56) + v16;
        *v25 = v24;
        *(v25 + 16) = v19;
        *(v25 + 24) = v20;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        sub_1ADDD86D8(v23, *(&v23 + 1));
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v26 = v3;
  }
}

void sub_1ADF70888()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7F0, &qword_1AE24CEF0);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v17 *= 3;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 2);
        v21 = *(*(v2 + 48) + v18);
        *(*(v4 + 48) + v18) = v21;
        v22 = *(v4 + 56) + v17;
        *v22 = v20;
        *(v22 + 2) = v19;
        sub_1ADDD86D8(v21, *(&v21 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF70A04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7F8, &qword_1AE24CEF8);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        sub_1ADDD86D8(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF70BB8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1AE23DCBC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v19 *= 24;
        v21 = (*(v4 + 56) + v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = *(*(v4 + 48) + v20);
        *(*(v6 + 48) + v20) = v25;
        v26 = (*(v6 + 56) + v19);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;
        sub_1ADDD86D8(v25, *(&v25 + 1));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1ADF70D5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0F0, &qword_1AE2418C8);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        sub_1ADDD86D8(v18, *(&v18 + 1));
        sub_1ADDD86D8(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF70EE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9F8, &qword_1AE245688);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1ADDD86D8(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF71050()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA070, &qword_1AE241850);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_1ADDE4E28(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        sub_1ADDEE390(v25, (*(v4 + 56) + v22));
        sub_1ADDD86D8(v20, v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_1ADF711F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0A8, &qword_1AE241888);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF71368(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_1AE23BFEC();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_1AE23DCBC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + 8 * v23);
        (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        v17 = v38;
      }

      while (v38);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

void sub_1ADF715D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0D0, &qword_1AE2418B0);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v17 *= 24;
        v19 = *(v2 + 56) + v17;
        v20 = *(v19 + 16);
        v21 = *(*(v2 + 48) + v18);
        v22 = *v19;
        *(*(v4 + 48) + v18) = v21;
        v23 = *(v4 + 56) + v17;
        *v23 = v22;
        *(v23 + 16) = v20;
        sub_1ADDD86D8(v21, *(&v21 + 1));
        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1ADF71798(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_1AE23BDDC();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_1AE23DCBC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

void sub_1ADF71A24(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_1AE23BDDC();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_1AE23DCBC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

uint64_t (*sub_1ADF71C9C(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for Replica(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1ADDDE3A0(a2, v9, type metadata accessor for Replica);
  v6[9] = sub_1ADDFDB68(v6);
  v6[10] = sub_1ADF72220(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_1ADDFDE38;
}

void (*sub_1ADF71D98(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1ADDFDB68(v7);
  v7[9] = sub_1ADF727D0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1ADF771DC;
}

void (*sub_1ADF71E44(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1ADDFDB68(v7);
  v7[9] = sub_1ADF72A80(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1ADF771DC;
}

void (*sub_1ADF71EF0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1AE23BDDC();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1ADF73760(v6);
  v6[12] = sub_1ADF72E10(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1ADF7202C;
}

void sub_1ADF7202C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1ADF720C4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1ADDFDB68(v7);
  v7[9] = sub_1ADF730E4(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1ADF72170;
}

void (*sub_1ADF72174(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1ADDFDB68(v7);
  v7[9] = sub_1ADF733B4(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1ADF771DC;
}

void (*sub_1ADF72220(void *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = *(type metadata accessor for Replica(0) - 8);
  v9[2] = v10;
  if (v7)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v9[3] = v11;
  v12 = sub_1AE23C12C();
  v9[4] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v9[5] = v13;
  v15 = *(v13 + 64);
  if (v7)
  {
    v9[6] = swift_coroFrameAlloc();
    v9[7] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v9[6] = malloc(*(v13 + 64));
    v9[7] = malloc(v15);
    v16 = malloc(v15);
  }

  v9[8] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18) - 8) + 64);
  if (v7)
  {
    v9[9] = swift_coroFrameAlloc();
    v9[10] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v9[9] = malloc(v17);
    v9[10] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v9[11] = v18;
  v20 = *v4;
  v22 = sub_1ADDD8A6C(a2);
  *(v9 + 104) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a3 & 1) != 0)
    {
LABEL_19:
      v9[12] = v22;
      if (v26)
      {
LABEL_20:
        (*(v14 + 32))(v19, *(*v4 + 56) + *(v14 + 72) * v22, v12);
        v28 = 0;
LABEL_24:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_1ADF72548;
      }

LABEL_23:
      v28 = 1;
      goto LABEL_24;
    }

    if (v27 >= v25 && (a3 & 1) == 0)
    {
      sub_1ADDFB81C();
      goto LABEL_19;
    }

    sub_1ADDDDED0(v25, a3 & 1);
    v29 = sub_1ADDD8A6C(a2);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v9[12] = v29;
      if (v26)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void sub_1ADF72548(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 40) + 48);
  v5 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(v2 + 72);
    sub_1ADDCEE40(v5, v6, &qword_1EB5BB780, &qword_1AE24CD18);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 104);
    v9 = *(v2 + 72);
    if (v7 != 1)
    {
      v10 = *(v2 + 8);
      v11 = *(*(v2 + 40) + 32);
      v11(*(v2 + 56), *(v2 + 72), *(v2 + 32));
      v12 = *v10;
      v13 = *(v2 + 96);
      v14 = *(v2 + 56);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v15 = *(v2 + 48);
        v17 = *(v2 + 24);
        v16 = *(v2 + 32);
        sub_1ADDDE3A0(*v2, v17, type metadata accessor for Replica);
        v11(v15, v14, v16);
        sub_1ADDDE678(v13, v17, v15, v12);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *(v2 + 80);
    sub_1ADDCEE40(v5, v18, &qword_1EB5BB780, &qword_1AE24CD18);
    v19 = (*v4)(v18, 1, v3);
    v8 = *(v2 + 104);
    v9 = *(v2 + 80);
    if (v19 != 1)
    {
      v22 = *(v2 + 8);
      v11 = *(*(v2 + 40) + 32);
      v11(*(v2 + 64), *(v2 + 80), *(v2 + 32));
      v12 = *v22;
      v13 = *(v2 + 96);
      v14 = *(v2 + 64);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11(v12[7] + *(*(v2 + 40) + 72) * v13, v14, *(v2 + 32));
      goto LABEL_10;
    }
  }

  sub_1ADDCEDE0(v9, &qword_1EB5BB780, &qword_1AE24CD18);
  if (v8)
  {
    v20 = *(v2 + 96);
    v21 = **(v2 + 8);
    sub_1ADDE4FF8(*(v21 + 48) + *(*(v2 + 16) + 72) * v20, type metadata accessor for Replica);
    sub_1ADDF9CEC(v20, v21);
  }

LABEL_10:
  v23 = *(v2 + 80);
  v24 = *(v2 + 88);
  v26 = *(v2 + 64);
  v25 = *(v2 + 72);
  v28 = *(v2 + 48);
  v27 = *(v2 + 56);
  v29 = *(v2 + 24);
  sub_1ADDCEDE0(v24, &qword_1EB5BB780, &qword_1AE24CD18);
  free(v24);
  free(v23);
  free(v25);
  free(v26);
  free(v27);
  free(v28);
  free(v29);

  free(v2);
}

void (*sub_1ADF727D0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_1ADDDE7CC(a2, a3);
  *(v11 + 48) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1ADF703A0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1ADF6AF70(v18, a4 & 1);
    v13 = sub_1ADDDE7CC(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v23 = (*(*v5 + 56) + 16 * v13);
    v24 = *v23;
    v25 = v23[1];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *v11 = v24;
  v11[1] = v25;
  return sub_1ADF72930;
}

void sub_1ADF72930(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  LOBYTE(v5) = *(*a1 + 48);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v2[5];
    v7 = *v2[4];
    if ((*a1)[6])
    {
      goto LABEL_9;
    }

    v8 = &v7[v6 >> 6];
    v9 = v8[8] | (1 << v6);
    v10 = v7[6];
    v11 = 16 * v6;
    v12 = *(v2 + 1);
    v8[8] = v9;
    *(v10 + v11) = v12;
    v5 = (v7[7] + v11);
    *v5 = v4;
    v5[1] = v3;
    v13 = v7[2];
    v14 = __OFADD__(v13, 1);
    v3 = v13 + 1;
    if (!v14)
    {
LABEL_13:
      v25 = v2[2];
      v26 = v2[3];
      v7[2] = v3;
      sub_1ADDD86D8(v25, v26);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v5)
    {
      v16 = v2[5];
      v17 = *v2[4];
      sub_1ADF77110(*(v17 + 48) + 16 * v16);
      sub_1ADF6DA1C(v16, v17);
    }

    goto LABEL_14;
  }

  v6 = v2[5];
  v7 = *v2[4];
  if ((v5 & 1) == 0)
  {
    v18 = &v7[v6 >> 6];
    v19 = v18[8] | (1 << v6);
    v20 = v7[6];
    v21 = 16 * v6;
    v22 = *(v2 + 1);
    v18[8] = v19;
    *(v20 + v21) = v22;
    v23 = (v7[7] + v21);
    *v23 = v4;
    v23[1] = v3;
    v24 = v7[2];
    v14 = __OFADD__(v24, 1);
    v3 = v24 + 1;
    if (v14)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  v15 = (v7[7] + 16 * v6);
  *v15 = v4;
  v15[1] = v3;
LABEL_14:

  free(v2);
}

void (*sub_1ADF72A80(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[7] = a3;
  v10[8] = v4;
  v10[6] = a2;
  v12 = *v4;
  v13 = sub_1ADDDE7CC(a2, a3);
  *(v11 + 80) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1ADF706B8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1ADE17954(v18, a4 & 1);
    v13 = sub_1ADDDE7CC(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[9] = v13;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  if (v19)
  {
    v26 = (*(*v5 + 56) + 48 * v13);
    v23 = *v26;
    v24 = v26[1];
    v25 = v26[2];
  }

  *v11 = v23;
  *(v11 + 1) = v24;
  *(v11 + 2) = v25;
  return sub_1ADF72BEC;
}

void sub_1ADF72BEC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v9) = *(v2 + 80);
  if (a2)
  {
    if (!v6)
    {
      if (v2[10])
      {
        v19 = v2[9];
        v20 = *v2[8];
        v21 = v3;
        v22 = v2[1];
        v23 = v2[3];
        sub_1ADECDAB4(*(v20 + 48) + 16 * v19);
        sub_1ADF6DBD4(v19, v20);
        v5 = v23;
        v4 = v22;
        v3 = v21;
      }

      goto LABEL_16;
    }

    v10 = v2[9];
    v11 = *v2[8];
    if (v2[10])
    {
      goto LABEL_9;
    }

    v12 = v11[6];
    v13 = *(v2 + 3);
    v11[(v10 >> 6) + 8] |= 1 << v10;
    *(v12 + 16 * v10) = v13;
    v9 = v11[7];
    v14 = (v9 + 48 * v10);
    *v14 = v3;
    v14[1] = v4;
    v14[2] = v6;
    v14[3] = v5;
    v14[4] = v7;
    v14[5] = v8;
    v15 = v11[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
LABEL_15:
      v33 = v3;
      v34 = v4;
      v35 = v5;
      v36 = v2[6];
      v37 = v2[7];
      v11[2] = v17;
      sub_1ADDD86D8(v36, v37);
      v3 = v33;
      v4 = v34;
      v5 = v35;
      goto LABEL_16;
    }

    __break(1u);
  }

  if (!v6)
  {
    if (v9)
    {
      v24 = v2[9];
      v25 = *v2[8];
      v26 = v3;
      v27 = v4;
      v28 = v5;
      sub_1ADECDAB4(*(v25 + 48) + 16 * v24);
      sub_1ADF6DBD4(v24, v25);
      v5 = v28;
      v4 = v27;
      v3 = v26;
    }

    goto LABEL_16;
  }

  v10 = v2[9];
  v11 = *v2[8];
  if ((v9 & 1) == 0)
  {
    v29 = v11[6];
    v30 = *(v2 + 3);
    v11[(v10 >> 6) + 8] |= 1 << v10;
    *(v29 + 16 * v10) = v30;
    v31 = (v11[7] + 48 * v10);
    *v31 = v3;
    v31[1] = v4;
    v31[2] = v6;
    v31[3] = v5;
    v31[4] = v7;
    v31[5] = v8;
    v32 = v11[2];
    v16 = __OFADD__(v32, 1);
    v17 = v32 + 1;
    if (v16)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

LABEL_9:
  v18 = (v11[7] + 48 * v10);
  *v18 = v3;
  v18[1] = v4;
  v18[2] = v6;
  v18[3] = v5;
  v18[4] = v7;
  v18[5] = v8;
LABEL_16:
  v38 = *v2;
  v39 = v2[1];
  v41 = v2[2];
  v40 = v2[3];
  v42 = v2[4];
  v43 = v2[5];
  sub_1ADDDDE40(v3, v4, v6, v5, v7, v8);
  sub_1ADDDC21C(v38, v39, v41, v40, v42, v43);

  free(v2);
}

void (*sub_1ADF72E10(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1AE23BDDC();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1ADDFF050(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1ADF71A24(&qword_1EB5BA0C8, &qword_1AE2418A8);
      v15 = v23;
      goto LABEL_14;
    }

    sub_1ADF6CB3C(v20, a3 & 1, &qword_1EB5BA0C8, &qword_1AE2418A8);
    v15 = sub_1ADDFF050(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_1ADF72FE4;
}

void sub_1ADF72FE4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_1ADDFF51C(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_1ADF6E274(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

void (*sub_1ADF730E4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[4] = a3;
  v10[5] = v4;
  v10[3] = a2;
  v12 = *v4;
  v13 = sub_1ADDDE7CC(a2, a3);
  *(v11 + 56) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1ADF715D8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1ADF6C84C(v18, a4 & 1);
    v13 = sub_1ADDDE7CC(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[6] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 24 * v13;
    v24 = *v23;
    v25 = *(v23 + 16);
  }

  else
  {
    v25 = 0;
    v24 = 0uLL;
  }

  *v11 = v24;
  v11[2] = v25;
  return sub_1ADF73250;
}

void sub_1ADF73250(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  LOBYTE(v6) = *(*a1 + 56);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v7 = v2[6];
    v8 = *v2[5];
    if ((*a1)[7])
    {
      goto LABEL_9;
    }

    v9 = v8[6];
    v10 = *(v2 + 3);
    v8[(v7 >> 6) + 8] |= 1 << v7;
    *(v9 + 16 * v7) = v10;
    v6 = v8[7];
    v11 = (v6 + 24 * v7);
    *v11 = v4;
    v11[1] = v3;
    v11[2] = v5;
    v12 = v8[2];
    v13 = __OFADD__(v12, 1);
    v5 = v12 + 1;
    if (!v13)
    {
LABEL_13:
      v21 = v2[3];
      v22 = v2[4];
      v8[2] = v5;
      sub_1ADDD86D8(v21, v22);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v6)
    {
      v15 = v2[6];
      v16 = *v2[5];
      sub_1ADF77110(*(v16 + 48) + 16 * v15);
      sub_1ADF6D4DC(v15, v16);
    }

    goto LABEL_14;
  }

  v7 = v2[6];
  v8 = *v2[5];
  if ((v6 & 1) == 0)
  {
    v17 = v8[6];
    v18 = *(v2 + 3);
    v8[(v7 >> 6) + 8] |= 1 << v7;
    *(v17 + 16 * v7) = v18;
    v19 = (v8[7] + 24 * v7);
    *v19 = v4;
    v19[1] = v3;
    v19[2] = v5;
    v20 = v8[2];
    v13 = __OFADD__(v20, 1);
    v5 = v20 + 1;
    if (v13)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  v14 = (v8[7] + 24 * v7);
  *v14 = v4;
  v14[1] = v3;
  v14[2] = v5;
LABEL_14:
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  free(v2);
}

void (*sub_1ADF733B4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1ADDD7A10(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1ADF6F61C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1ADF69B9C(v18, a4 & 1);
    v13 = sub_1ADDD7A10(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1ADF7350C;
}

void sub_1ADF7350C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_1ADF77164(*(v13 + 48) + 16 * v12);
      sub_1ADF6D86C(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

unint64_t sub_1ADF73650()
{
  result = qword_1EB5B8BB0;
  if (!qword_1EB5B8BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB790, &unk_1AE251E40);
    sub_1ADF7370C(&qword_1EB5B8C08, &qword_1EB5BB798, &qword_1AE24CD28);
    sub_1ADF7370C(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8BB0);
  }

  return result;
}

uint64_t sub_1ADF7370C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t (*sub_1ADF73760(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1ADDE578C;
}

void sub_1ADF73788(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1AE23DD7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v6 = sub_1AE23D06C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1ADF74138(v8, v9, a1, v4);
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
    sub_1ADF739F8(0, v2, 1, a1);
  }
}

void sub_1ADF738CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1AE23DD7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Replica(0);
        v6 = sub_1AE23D06C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Replica(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1ADF74E94(v8, v9, a1, v4);
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
    sub_1ADF73D98(0, v2, 1, a1);
  }
}

void sub_1ADF739F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - v14;
  v47 = a2;
  if (a3 != a2)
  {
    v16 = *(v13 + 72);
    v17 = *a4 + v16 * (a3 - 1);
    v18 = -v16;
    v19 = a1 - a3;
    v52 = *a4;
    v46 = v16;
    v20 = v52 + v16 * a3;
    do
    {
      v50 = v17;
      v51 = a3;
      v48 = v20;
      v49 = v19;
      v21 = v17;
      do
      {
        sub_1ADDCEE40(v20, v15, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEE40(v21, v11, &qword_1EB5BA2A0, &unk_1AE242200);
        v22 = *(type metadata accessor for Replica(0) + 20);
        v23 = *&v15[v22];
        v24 = *&v11[v22];
        if (v23 == v24)
        {
          v57 = sub_1AE23BFCC();
          LOWORD(v58) = v25;
          BYTE2(v58) = v26;
          BYTE3(v58) = v27;
          BYTE4(v58) = v28;
          BYTE5(v58) = v29;
          BYTE6(v58) = v30;
          HIBYTE(v58) = v31;
          v55 = sub_1AE23BFCC();
          LOWORD(v56) = v32;
          BYTE2(v56) = v33;
          BYTE3(v56) = v34;
          BYTE4(v56) = v35;
          BYTE5(v56) = v36;
          BYTE6(v56) = v37;
          HIBYTE(v56) = v38;
          v39 = bswap64(v57);
          v40 = bswap64(v55);
          if (v39 == v40 && (v39 = bswap64(v58), v40 = bswap64(v56), v39 == v40))
          {
            v41 = 0;
          }

          else
          {
            if (v39 < v40)
            {
              v42 = -1;
            }

            else
            {
              v42 = 1;
            }

            v41 = v42 >> 31;
          }
        }

        else
        {
          v41 = v23 < v24;
        }

        sub_1ADDCEDE0(v11, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEDE0(v15, &qword_1EB5BA2A0, &unk_1AE242200);
        if (!v41)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
        }

        v43 = v53;
        sub_1ADDD2198(v20, v53, &qword_1EB5BA2A0, &unk_1AE242200);
        swift_arrayInitWithTakeFrontToBack();
        sub_1ADDD2198(v43, v21, &qword_1EB5BA2A0, &unk_1AE242200);
        v21 += v18;
        v20 += v18;
      }

      while (!__CFADD__(v19++, 1));
      a3 = v51 + 1;
      v17 = v50 + v46;
      v19 = v49 - 1;
      v20 = v48 + v46;
    }

    while (v51 + 1 != v47);
  }
}

void sub_1ADF73D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v54 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v54);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  v48 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v53 = *a4;
    v47 = v17;
    v21 = v53 + v17 * a3;
    do
    {
      v51 = v18;
      v52 = a3;
      v49 = v21;
      v50 = v20;
      v22 = v20;
      v23 = v18;
      do
      {
        sub_1ADDDE3A0(v21, v16, type metadata accessor for Replica);
        sub_1ADDDE3A0(v23, v12, type metadata accessor for Replica);
        v24 = *(v54 + 20);
        v25 = *&v16[v24];
        v26 = *&v12[v24];
        if (v25 == v26)
        {
          v57 = sub_1AE23BFCC();
          LOWORD(v58) = v27;
          BYTE2(v58) = v28;
          BYTE3(v58) = v29;
          BYTE4(v58) = v30;
          BYTE5(v58) = v31;
          BYTE6(v58) = v32;
          HIBYTE(v58) = v33;
          v55 = sub_1AE23BFCC();
          LOWORD(v56) = v34;
          BYTE2(v56) = v35;
          BYTE3(v56) = v36;
          BYTE4(v56) = v37;
          BYTE5(v56) = v38;
          BYTE6(v56) = v39;
          HIBYTE(v56) = v40;
          v41 = bswap64(v57);
          v42 = bswap64(v55);
          if (v41 == v42 && (v41 = bswap64(v58), v42 = bswap64(v56), v41 == v42))
          {
            v43 = 0;
          }

          else
          {
            if (v41 < v42)
            {
              v44 = -1;
            }

            else
            {
              v44 = 1;
            }

            v43 = v44 >> 31;
          }
        }

        else
        {
          v43 = v25 < v26;
        }

        sub_1ADDE4FF8(v12, type metadata accessor for Replica);
        sub_1ADDE4FF8(v16, type metadata accessor for Replica);
        if (!v43)
        {
          break;
        }

        if (!v53)
        {
          __break(1u);
        }

        sub_1ADDDE540(v21, v9, type metadata accessor for Replica);
        swift_arrayInitWithTakeFrontToBack();
        sub_1ADDDE540(v9, v23, type metadata accessor for Replica);
        v23 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v52 + 1;
      v18 = v51 + v47;
      v20 = v50 - 1;
      v21 = v49 + v47;
    }

    while (v52 + 1 != v48);
  }
}

void sub_1ADF74138(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v164 = a1;
  v186 = *MEMORY[0x1E69E9840];
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v171 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v166 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v178 = &v158 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v158 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v158 - v15;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v169 = &v158 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v158 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v160 = &v158 - v24;
  v174 = a3;
  v25 = a3[1];
  if (v25 >= 1)
  {
    v159 = a4;
    v26 = 0;
    v27 = MEMORY[0x1E69E7CC0];
    v172 = v23;
    v180 = v16;
    while (1)
    {
      v28 = v26;
      v29 = v26 + 1;
      v165 = v26;
      if (v26 + 1 < v25)
      {
        v168 = v25;
        v30 = *v174;
        v31 = *(v171 + 72);
        v177 = v26 + 1;
        v32 = v160;
        sub_1ADDCEE40(v30 + v31 * v29, v160, &qword_1EB5BA2A0, &unk_1AE242200);
        v173 = v31;
        v33 = v30 + v31 * v28;
        v34 = v161;
        sub_1ADDCEE40(v33, v161, &qword_1EB5BA2A0, &unk_1AE242200);
        v167 = type metadata accessor for Replica(0);
        v35 = *(v167 + 20);
        v36 = *(v32 + v35);
        v37 = *(v34 + v35);
        v163 = v5;
        if (v36 == v37)
        {
          v38 = sub_1ADF5EB00(v32);
          v34 = v161;
          LODWORD(v170) = v38;
        }

        else
        {
          LODWORD(v170) = v36 < v37;
        }

        v162 = v27;
        sub_1ADDCEDE0(v34, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEDE0(v32, &qword_1EB5BA2A0, &unk_1AE242200);
        v39 = v165 + 2;
        v40 = v173 * (v165 + 2);
        v41 = v30 + v40;
        v42 = v177;
        v43 = v173 * v177;
        v44 = v30 + v173 * v177;
        v45 = v169;
        do
        {
          v27 = v39;
          v47 = v42;
          v5 = v43;
          v48 = v40;
          if (v39 >= v168)
          {
            break;
          }

          v176 = v42;
          v177 = v40;
          v175 = v39;
          sub_1ADDCEE40(v41, v45, &qword_1EB5BA2A0, &unk_1AE242200);
          v49 = v172;
          sub_1ADDCEE40(v44, v172, &qword_1EB5BA2A0, &unk_1AE242200);
          v50 = *(v167 + 20);
          v51 = *(v45 + v50);
          v52 = *(v49 + v50);
          if (v51 == v52)
          {
            v183 = sub_1AE23BFCC();
            LOWORD(v184) = v53;
            BYTE2(v184) = v54;
            BYTE3(v184) = v55;
            BYTE4(v184) = v56;
            BYTE5(v184) = v57;
            BYTE6(v184) = v58;
            HIBYTE(v184) = v59;
            v181 = sub_1AE23BFCC();
            LOWORD(v182) = v60;
            BYTE2(v182) = v61;
            BYTE3(v182) = v62;
            BYTE4(v182) = v63;
            BYTE5(v182) = v64;
            BYTE6(v182) = v65;
            HIBYTE(v182) = v66;
            v67 = bswap64(v183);
            v68 = bswap64(v181);
            if (v67 == v68 && (v67 = bswap64(v184), v68 = bswap64(v182), v67 == v68))
            {
              v49 = v172;
              v46 = 0;
            }

            else
            {
              v49 = v172;
              v69 = v67 < v68 ? -1 : 1;
              v46 = v69 >> 31;
            }
          }

          else
          {
            v46 = v51 < v52;
          }

          sub_1ADDCEDE0(v49, &qword_1EB5BA2A0, &unk_1AE242200);
          v45 = v169;
          sub_1ADDCEDE0(v169, &qword_1EB5BA2A0, &unk_1AE242200);
          v27 = v175;
          v47 = v176;
          v39 = v175 + 1;
          v41 += v173;
          v44 += v173;
          v42 = v176 + 1;
          v43 = v5 + v173;
          v48 = v177;
          v40 = v177 + v173;
        }

        while ((v170 & 1) == v46);
        if (v170)
        {
          v28 = v165;
          if (v27 < v165)
          {
            goto LABEL_143;
          }

          if (v165 < v27)
          {
            v70 = v165 * v173;
            v71 = v165;
            do
            {
              if (v71 != v47)
              {
                v176 = v47;
                v177 = v48;
                v73 = *v174;
                if (!*v174)
                {
                  goto LABEL_149;
                }

                sub_1ADDD2198(v73 + v70, v166, &qword_1EB5BA2A0, &unk_1AE242200);
                if (v70 < v5 || v73 + v70 >= v73 + v177)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v70 != v5)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1ADDD2198(v166, v73 + v5, &qword_1EB5BA2A0, &unk_1AE242200);
                v28 = v165;
                v47 = v176;
                v48 = v177;
              }

              ++v71;
              v5 -= v173;
              v48 -= v173;
              v70 += v173;
            }

            while (v71 < v47--);
          }

          v29 = v27;
          v5 = v163;
          v27 = v162;
        }

        else
        {
          v29 = v27;
          v5 = v163;
          v27 = v162;
          v28 = v165;
        }
      }

      v74 = v174[1];
      if (v29 < v74)
      {
        if (__OFSUB__(v29, v28))
        {
          goto LABEL_142;
        }

        if (v29 - v28 < v159)
        {
          v75 = v28 + v159;
          if (__OFADD__(v28, v159))
          {
            goto LABEL_144;
          }

          if (v75 >= v74)
          {
            v75 = v174[1];
          }

          if (v75 < v28)
          {
LABEL_145:
            __break(1u);
LABEL_146:
            v27 = sub_1ADF7ACAC(v27);
LABEL_116:
            v185 = v27;
            v153 = *(v27 + 16);
            if (v153 >= 2)
            {
              while (*v174)
              {
                v154 = *(v27 + 16 * v153);
                v155 = v27;
                v156 = *(v27 + 16 * (v153 - 1) + 32);
                v27 = *(v27 + 16 * (v153 - 1) + 40);
                sub_1ADF75BB4(*v174 + *(v171 + 72) * v154, *v174 + *(v171 + 72) * v156, *v174 + *(v171 + 72) * v27, v16);
                if (v5)
                {
                  goto LABEL_124;
                }

                if (v27 < v154)
                {
                  goto LABEL_139;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v155 = sub_1ADF7ACAC(v155);
                }

                if (v153 - 2 >= *(v155 + 2))
                {
                  goto LABEL_140;
                }

                v157 = &v155[16 * v153];
                *v157 = v154;
                *(v157 + 1) = v27;
                v185 = v155;
                sub_1ADF7AC20(v153 - 1);
                v27 = v185;
                v153 = *(v185 + 16);
                if (v153 <= 1)
                {
                  goto LABEL_124;
                }
              }

              goto LABEL_150;
            }

LABEL_124:

            return;
          }

          if (v29 != v75)
          {
            v162 = v27;
            v163 = v5;
            v76 = *v174;
            v77 = *(v171 + 72);
            v78 = *v174 + v77 * (v29 - 1);
            v79 = -v77;
            v80 = v28 - v29;
            v168 = v77;
            v81 = v76 + v29 * v77;
            v170 = v75;
            do
            {
              v176 = v78;
              v177 = v29;
              v173 = v81;
              v175 = v80;
              while (1)
              {
                sub_1ADDCEE40(v81, v16, &qword_1EB5BA2A0, &unk_1AE242200);
                sub_1ADDCEE40(v78, v13, &qword_1EB5BA2A0, &unk_1AE242200);
                v82 = *(type metadata accessor for Replica(0) + 20);
                v83 = *&v16[v82];
                v84 = *&v13[v82];
                if (v83 == v84)
                {
                  v183 = sub_1AE23BFCC();
                  LOWORD(v184) = v85;
                  BYTE2(v184) = v86;
                  BYTE3(v184) = v87;
                  BYTE4(v184) = v88;
                  BYTE5(v184) = v89;
                  BYTE6(v184) = v90;
                  HIBYTE(v184) = v91;
                  v181 = sub_1AE23BFCC();
                  LOWORD(v182) = v92;
                  BYTE2(v182) = v93;
                  BYTE3(v182) = v94;
                  BYTE4(v182) = v95;
                  BYTE5(v182) = v96;
                  BYTE6(v182) = v97;
                  HIBYTE(v182) = v98;
                  v99 = bswap64(v183);
                  v100 = bswap64(v181);
                  if (v99 == v100 && (v99 = bswap64(v184), v100 = bswap64(v182), v99 == v100))
                  {
                    v101 = 0;
                  }

                  else
                  {
                    v102 = v99 < v100 ? -1 : 1;
                    v101 = v102 >> 31;
                  }
                }

                else
                {
                  v101 = v83 < v84;
                }

                sub_1ADDCEDE0(v13, &qword_1EB5BA2A0, &unk_1AE242200);
                sub_1ADDCEDE0(v180, &qword_1EB5BA2A0, &unk_1AE242200);
                if (!v101)
                {
                  break;
                }

                if (!v76)
                {
                  __break(1u);
LABEL_148:
                  __break(1u);
LABEL_149:
                  __break(1u);
LABEL_150:
                  __break(1u);
LABEL_151:
                  __break(1u);
                }

                v103 = v178;
                sub_1ADDD2198(v81, v178, &qword_1EB5BA2A0, &unk_1AE242200);
                swift_arrayInitWithTakeFrontToBack();
                sub_1ADDD2198(v103, v78, &qword_1EB5BA2A0, &unk_1AE242200);
                v78 += v79;
                v81 += v79;
                v104 = __CFADD__(v80++, 1);
                v16 = v180;
                if (v104)
                {
                  goto LABEL_46;
                }
              }

              v16 = v180;
LABEL_46:
              v29 = v177 + 1;
              v78 = v176 + v168;
              v80 = v175 - 1;
              v81 = v173 + v168;
            }

            while (v177 + 1 != v170);
            v29 = v170;
            v5 = v163;
            v27 = v162;
            v28 = v165;
          }
        }
      }

      if (v29 < v28)
      {
        goto LABEL_141;
      }

      v177 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1ADE5522C(0, *(v27 + 16) + 1, 1, v27);
      }

      v106 = *(v27 + 16);
      v105 = *(v27 + 24);
      v107 = v106 + 1;
      v26 = v177;
      if (v106 >= v105 >> 1)
      {
        v152 = sub_1ADE5522C((v105 > 1), v106 + 1, 1, v27);
        v26 = v177;
        v27 = v152;
      }

      *(v27 + 16) = v107;
      v108 = v27 + 16 * v106;
      *(v108 + 32) = v28;
      *(v108 + 40) = v26;
      v176 = *v164;
      if (!v176)
      {
        goto LABEL_151;
      }

      if (v106)
      {
        while (1)
        {
          v109 = v107 - 1;
          if (v107 >= 4)
          {
            break;
          }

          if (v107 == 3)
          {
            v110 = *(v27 + 32);
            v111 = *(v27 + 40);
            v120 = __OFSUB__(v111, v110);
            v112 = v111 - v110;
            v113 = v120;
LABEL_83:
            if (v113)
            {
              goto LABEL_130;
            }

            v126 = (v27 + 16 * v107);
            v128 = *v126;
            v127 = v126[1];
            v129 = __OFSUB__(v127, v128);
            v130 = v127 - v128;
            v131 = v129;
            if (v129)
            {
              goto LABEL_133;
            }

            v132 = (v27 + 32 + 16 * v109);
            v134 = *v132;
            v133 = v132[1];
            v120 = __OFSUB__(v133, v134);
            v135 = v133 - v134;
            if (v120)
            {
              goto LABEL_136;
            }

            if (__OFADD__(v130, v135))
            {
              goto LABEL_137;
            }

            if (v130 + v135 >= v112)
            {
              if (v112 < v135)
              {
                v109 = v107 - 2;
              }

              goto LABEL_104;
            }

            goto LABEL_97;
          }

          v136 = (v27 + 16 * v107);
          v138 = *v136;
          v137 = v136[1];
          v120 = __OFSUB__(v137, v138);
          v130 = v137 - v138;
          v131 = v120;
LABEL_97:
          if (v131)
          {
            goto LABEL_132;
          }

          v139 = v27 + 16 * v109;
          v141 = *(v139 + 32);
          v140 = *(v139 + 40);
          v120 = __OFSUB__(v140, v141);
          v142 = v140 - v141;
          if (v120)
          {
            goto LABEL_135;
          }

          if (v142 < v130)
          {
            goto LABEL_3;
          }

LABEL_104:
          v147 = v109 - 1;
          if (v109 - 1 >= v107)
          {
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
LABEL_139:
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
            goto LABEL_145;
          }

          if (!*v174)
          {
            goto LABEL_148;
          }

          v148 = v27;
          v149 = *(v27 + 32 + 16 * v147);
          v150 = *(v27 + 32 + 16 * v109);
          v27 = *(v27 + 32 + 16 * v109 + 8);
          sub_1ADF75BB4(*v174 + *(v171 + 72) * v149, *v174 + *(v171 + 72) * v150, *v174 + *(v171 + 72) * v27, v176);
          if (v5)
          {
            goto LABEL_124;
          }

          if (v27 < v149)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v148 = sub_1ADF7ACAC(v148);
          }

          if (v147 >= *(v148 + 2))
          {
            goto LABEL_127;
          }

          v151 = &v148[16 * v147];
          *(v151 + 4) = v149;
          *(v151 + 5) = v27;
          v185 = v148;
          sub_1ADF7AC20(v109);
          v27 = v185;
          v107 = *(v185 + 16);
          v26 = v177;
          if (v107 <= 1)
          {
            goto LABEL_3;
          }
        }

        v114 = v27 + 32 + 16 * v107;
        v115 = *(v114 - 64);
        v116 = *(v114 - 56);
        v120 = __OFSUB__(v116, v115);
        v117 = v116 - v115;
        if (v120)
        {
          goto LABEL_128;
        }

        v119 = *(v114 - 48);
        v118 = *(v114 - 40);
        v120 = __OFSUB__(v118, v119);
        v112 = v118 - v119;
        v113 = v120;
        if (v120)
        {
          goto LABEL_129;
        }

        v121 = (v27 + 16 * v107);
        v123 = *v121;
        v122 = v121[1];
        v120 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v120)
        {
          goto LABEL_131;
        }

        v120 = __OFADD__(v112, v124);
        v125 = v112 + v124;
        if (v120)
        {
          goto LABEL_134;
        }

        if (v125 >= v117)
        {
          v143 = (v27 + 32 + 16 * v109);
          v145 = *v143;
          v144 = v143[1];
          v120 = __OFSUB__(v144, v145);
          v146 = v144 - v145;
          if (v120)
          {
            goto LABEL_138;
          }

          if (v112 < v146)
          {
            v109 = v107 - 2;
          }

          goto LABEL_104;
        }

        goto LABEL_83;
      }

LABEL_3:
      v25 = v174[1];
      if (v26 >= v25)
      {
        goto LABEL_114;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_114:
  v16 = *v164;
  if (*v164)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_116;
  }

  __break(1u);
}